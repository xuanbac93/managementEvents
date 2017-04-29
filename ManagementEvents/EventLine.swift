//
//  EventLine.swift
//  ManagementEvents
//
//  Created by XuanBac on 4/28/17.
//  Copyright © 2017 XuanBac. All rights reserved.
//

import Foundation
import UIKit

class EventLine
{
    var day: String         //các ngày trong tuần
    var events: [Event]     //các sự kiện trong ngày
    
    init(daysOfWeek: String, includeEvents: [Event])
    {
        day = daysOfWeek
        events = includeEvents
    }
    
    class func eventLines() -> [EventLine]
    {
        return [self.Monday(), self.Tuesday(), self.Wednesday(), self.Thusday(), self.Friday(), self.Saturday(), self.Sunday()]
    }
    
    private class func Monday() -> EventLine
    {
        var events = [Event]()
        
        events.append(Event(titled: "12:00 Ky Thuat So", description: "len truong hoc Ky thuat so, sap kiem tra"))
        events.append(Event(titled: "17:00 Di da banh", description: "duong 17"))
        
        return EventLine(daysOfWeek: "Monday", includeEvents: events)
        //các sự kiện cho ngày Thứ Hai
    }
    
    private class func Tuesday() -> EventLine
    {
        var events = [Event]()
        
        events.append(Event(titled: "15:00 Ky thuat dien", description: "Kiem tra !!"))

        return EventLine(daysOfWeek: "Tuesday", includeEvents: events)
        //các sự kiện cho ngày Thứ Ba
    }
    
    private class func Wednesday() -> EventLine
    {
        var events = [Event]()
        
        events.append(Event(titled: "12:00 CDTN1", description: "Len truong hoc iOS"))
        events.append(Event(titled: "18:00 Cafe'", description: "Coffee with hommie"))
        
        return EventLine(daysOfWeek: "Wednesday", includeEvents: events)
        //các sự kiện cho ngày Thứ Tư
    }
    
    private class func Thusday() -> EventLine
    {
        var events = [Event]()
        
        events.append(Event(titled: "12:00 DAMI", description: "lam nhom KPDL"))
        events.append(Event(titled: "17:00 Rut tien, di sua xe", description: "thay Ac-qui"))
        
        return EventLine(daysOfWeek: "Thusday", includeEvents: events)
        //các sự kiện cho ngày Thứ Năm
    }
    
    private class func Friday() -> EventLine
    {
        var events = [Event]()
        
        events.append(Event(titled: "Lab Unix", description: "LAB 4"))
        
        return EventLine(daysOfWeek: "Friday", includeEvents: events)
        //các sự kiện cho ngày Thứ Sáu
    }
    
    private class func Saturday() -> EventLine
    {
        var events = [Event]()
        
        events.append(Event(titled: "CDTN1 quay video", description: "Manageent Events"))
        events.append(Event(titled: "on KTS", description: "Chuong 3~7"))
        
        return EventLine(daysOfWeek: "Saturday", includeEvents: events)
        //các sự kiện cho ngày Thứ Bảy
    }
    
    private class func Sunday() -> EventLine
    {
        var events = [Event]()
        
        events.append(Event(titled: "10:00 ve que", description: "nho mang theo ao mua"))
        events.append(Event(titled: "18:00 di coi da banhhhhhhh !!!!!", description: "MUTD - SWAN"))
        
        return EventLine(daysOfWeek: "Sunday", includeEvents: events)
        //các sự kiện cho ngày Chủ Nhật
    }
}
