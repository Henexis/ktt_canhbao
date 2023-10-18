-------------------- Strez Tsunami --------------------
local QBCore = exports['qb-core']:GetCoreObject()

-------------------- Emails --------------------

-- Emergency Alert
RegisterNetEvent('strez:client:SendEmergencyEmail', function(text)
    Wait(math.random(7000, 13000))
    TriggerServerEvent('qs-smartphone:server:sendNewMail', {
        sender = "Khu Tự Trị",
        subject = "Báo Động",
        message = text,
        button = {}
    })
end)

-- Announcement Email
RegisterNetEvent('strez:client:SendAnnouncementEmail', function(text)
    Wait(math.random(7000, 13000))
    TriggerServerEvent('qs-smartphone:server:sendNewMail', {
        sender = "Khu Tự Trị",
        subject = "Thông báo",
        message = text,
        button = {}
    })
    Wait(500)
end)

-------------------- Manual Tsunami Email --------------------

-- Manual Warning Email
RegisterNetEvent('strez:client:TsunamiManual', function(text)
    TriggerEvent('InteractSound_CL:PlayOnOne', 'quandoi', 0.1)
    Wait(math.random(7000, 13000))
    TriggerServerEvent('qs-smartphone:server:sendNewMail', {
        sender = 'Khu Tự Trị',
        subject = 'Khẩn cấp',
        message = 'Cơ quan Thời tiết Khu Tự Trị đã đưa ra CẢNH BÁO SÓNG THẦN sẽ đến trong 15 phút nữa! Hãy bắt đầu về nhà hoặc nơi nào đó ở địa phương để trú ẩn...!',
        button = {}
    })
    Wait(math.random(30000, 60000))
    TriggerServerEvent('qb-weathersync:server:setWeather', 'THUNDER')
end)

-------------------- Auto Restart Tsunami Email --------------------

-- 30 Minutes Reminder
RegisterNetEvent('strez:client:SendMailTsunamiAuto30', function(text)
    TriggerServerEvent('qs-smartphone:server:sendNewMail', {
        sender = 'Trạm khí tượng',
        subject = 'Cảnh báo thời tiết',
        message = 'Thông tin các cơn bão kèm sóng thần có thể sẽ đến trong 30p nữa...',
        button = {}
    })
    Wait(5000)
    TriggerServerEvent('qb-weathersync:server:setWeather', 'CLEAR')
end)

-- 15 Minutes Reminder
RegisterNetEvent('strez:client:SendMailTsunamiAuto15', function(text)
    TriggerServerEvent('qs-smartphone:server:sendNewMail', {
        sender = 'Trạm khí tượng',
        subject = 'Cập nhật tin thời tiết',
        message = 'Mưa đã bắt đầu rơi... trong vài phút nữa các khu vực trên Khu Tự Trị sẽ có gió và lốc xoáy...',
        button = {}
    })
    Wait(5000)
    TriggerServerEvent('qb-weathersync:server:setWeather', 'RAIN')
end)


-- 5 Minutes Reminder
RegisterNetEvent('strez:client:SendMailTsunamiAuto5', function(text)
    TriggerEvent('InteractSound_CL:PlayOnOne', 'quandoi', 0.1)
    Wait(10000)
    TriggerServerEvent('qs-smartphone:server:sendNewMail', {
        sender = 'Trạm khí tượng',
        subject = 'Cảnh báo',
        message = 'Đây là bản cập nhật thời tiết khẩn cấp. Một cơn sóng thần được dự đoán sẽ ập đến trong vòng chưa đầy 5 phút nữa. Nếu đang ở khu vực ven biển, bạn cần phải hành động ngay lập tức để di chuyển lên vùng đất cao hơn và tìm kiếm sự an toàn. Vui lòng làm theo mọi cảnh báo, hướng dẫn và lệnh sơ tán chính thức do chính quyền địa phương ban hành. Tránh xa các bãi biển và khu vực trũng.',
        button = {}
    })
    Wait(5000)
    TriggerServerEvent('qb-weathersync:server:setWeather', 'THUNDER')
end)

-- 1 Minutes Reminder
RegisterNetEvent('strez:client:SendMailTsunamiAuto1', function(text)
    TriggerEvent('InteractSound_CL:PlayOnOne', 'quandoi', 0.1)
    Wait(10000)
    TriggerServerEvent('qs-smartphone:server:sendNewMail', {
        sender = 'Trạm khí tượng',
        subject = 'CẢNH BÁO NGHIÊM TRỌNG',
        message = 'Đây là bản cập nhật thời tiết khẩn cấp. Một cơn sóng thần sắp xảy ra. <br> <br> Nếu đang ở khu vực ven biển, bạn cần phải hành động ngay lập tức để di chuyển lên vùng đất cao hơn và tìm kiếm sự an toàn. Vui lòng làm theo mọi cảnh báo, hướng dẫn và lệnh sơ tán chính thức do chính quyền địa phương ban hành. Tránh xa các bãi biển và khu vực trũng.',
        button = {}
    })
    Wait(5000)
    TriggerServerEvent('qb-weathersync:server:toggleBlackout')
end)
