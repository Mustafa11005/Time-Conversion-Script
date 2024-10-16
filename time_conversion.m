%% Input

clear
clc

time = input("Please, Enter time in 24h format (HH:MM:SS) : ", 's');

%% Cleaning from spaces

time_cleaned = erase(time, " ");

%% Variables

flag_am = 0;
flag_pm = 0;
index_fcolon = find(time_cleaned == ':', 1, 'first');
index_ecolon = find(time_cleaned == ':', 1, 'last');
h = str2double(time_cleaned(1:(index_fcolon-1)));
m = str2double(time_cleaned((index_fcolon+1):(index_ecolon-1)));
s = str2double(time_cleaned((index_ecolon+1):length(time_cleaned)));
flag_error = 0;
s_conv = s;
m_conv = m;

%% Detection of am or pm 

    if((h >= 0 && h < 12) || h == 24)
        flag_am = 1;
    elseif(h >= 12 && h < 24)
        flag_pm = 1;
    end
    
%% 24h ---> 12h

if(h > 0 && h <= 12)
    h_conv = h;
elseif(h > 12 && h < 24)
    h_conv = h - 12;
elseif(h == 0 || h == 24)
    h_conv = 12;
else
    flag_error = 1;
end

%% Detecting error

if(m > 60 || s > 60 || m < 0 || s < 0)
    flag_error = 1;
elseif(isnan(m) || isnan(s))
    flag_error = 1;
end

%% Some extras

for i = 1:2
    if(m == 60)
        m_conv = 0;
        m = m_conv;
        if(h_conv >= 1 && h_conv < 12)
            h_conv = h_conv + 1;
            h = h_conv;
        elseif(h_conv == 12)
            h_conv = 1;
            h = h_conv;
        end
    elseif(s == 60)
        s_conv = 0;
        s = s_conv;
        if(m >= 0 && m < 60)
            m_conv = m + 1;
            m = m_conv;
        elseif(m == 60)
            m_conv = 1;
            m = m_conv;
            if(h_conv >= 1 && h_conv < 12)
                h_conv = h_conv + 1;
                h = h_conv;
            elseif(h_conv == 12)
                h_conv = 1;
                h = h_conv;
            end
        end    
    end
end


%% Final result

if(flag_error)
    
    disp("Input not valid ")
    
else
    if(flag_am)
        time_conv = [num2str(h_conv) ':' num2str(m_conv) ':' num2str(s_conv) ' ' 'AM'];
    elseif(flag_pm)
        time_conv = [num2str(h_conv) ':' num2str(m_conv) ':' num2str(s_conv) ' ' 'PM'];
    end
    disp("Your time in 12h format : ")
    disp(time_conv)
end

