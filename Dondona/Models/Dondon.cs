﻿using MongoDB.Bson;
using MongoDB.Bson.Serialization.Attributes;
using System;

namespace Dondona.Models
{
    public class Dondon
    {
        
        public int Id { get; set; }
        public string Name { get; set; }
        public string Role { get; set; }
        public string Gender { get; set; }
        public string Weapon { get; set; }
        public int Age { get; set; }
    }
}