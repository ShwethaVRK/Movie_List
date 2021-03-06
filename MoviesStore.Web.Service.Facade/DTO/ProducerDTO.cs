﻿using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace MoviesStore.Web.Service.Facade.DTO
{
    public class ProducerDTO
    {
        
        public int ProducerID { get; set; }
        public string Name { get; set; }
        public string Sex { get; set; }
        public DateTime? DOB { get; set; }
        public string Bio { get; set; }

        public List<MovieDTO> Movies { get; set; }
    }
}
