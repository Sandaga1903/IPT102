using SandagaClass.Interface;

namespace SandagaClass.Model
{
    public  class Flower : IFlower
    {
        public string Name { get; set; }
        public string Address { get; set; }
        public string Type { get; set; }
    }
}
