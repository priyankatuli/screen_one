class ImageData{
  static List<Map<String,String>> data=[
    {
      'Name':'Sky',
      'Picture':'https://images.unsplash.com/photo-1529035669594-2eb2080f1585?q=80&w=1887&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
      'Header':'Sky- Calmness of Mind',
      'Description':'At daybreak, the sky awakens with a delicate blush, casting a soft light upon the world below. '
    },
    {
      'Name': 'Moon',
      'Picture': 'https://images.unsplash.com/photo-1527842891421-42eec6e703ea?q=80&w=1887&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
      'Header': 'Moon- Calmness of Dark',
      'Description': 'The moon, that celestial wanderer that graces our night skies, has captivated humanity for millennia with its serene beauty and mystique',
    },
    {
      'Name': 'Travel',
      'Picture': 'https://as2.ftcdn.net/v2/jpg/03/51/54/67/1000_F_351546786_QVhrjc7tNd76K9e6f09zYLzgO3FpoYW4.jpg',
      'Header': 'Travel-Try out a Version of Yourself',
      'Description': 'Travel, with its promise of adventure and discovery, has long been a cherished pursuit of humanity'
    },
    {
      'Name': 'Friends',
      'Picture': 'https://hips.hearstapps.com/clv.h-cdn.co/assets/18/02/4000x2229/gallery-1515470256-levi-guzman-268866.jpg?resize=1200:*',
      'Header': 'Friends-they are home away from home',
      'Description': 'Friends, the companions who journey alongside us through lifes ups and downs, are treasures to be cherished and celebrated',
    },
    {
      'Name': 'Roads',
      'Picture': 'https://s3-alpha-sig.figma.com/img/66de/e99e/0933ec15fe4accd01110c125b72a02b1?Expires=1715558400&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=NR05dxqKuhOGOKfUo7J-A0y2S5OZRM8-vnBY-OsmeXXxdIkoRtg1VMUf-VIN7xkB58nVjaidAnWzSleKZMHVdCgesLxt-rBQaGsD3spmv4lPYoCH6d1mHB1LcsIoQ7yBkOh5PciKuRRKGxY1qcyJv6qqt5aNm3S9MDfB8Era4gnh6rhSZqdgOaHMESVw296HG6ajazgjXl1nccjJce5KZZOJQrf8meQgfZfdfv3qxfCw5XtFnt93iwufAPiIV3mQfumv8IieDooLLRfhsiTMi2CSiIPwXeiGFWrb8bKzXFYwrJCwMmc0xFTDaN8V-bpGJQWOFqLN7Amc-wQMQvHFOw__',
      'Header': 'A Journey Through the World',
      'Description': 'Roads, the arteries of civilization, weave their way across landscapes, connecting distant destinations and shaping the way we move, live, and interact with the world around us'
    },
    {
      'Name': 'Cycling',
      'Picture': 'https://s3-alpha-sig.figma.com/img/b5c9/9297/2ab1f63e0688f30f6c974cf756072cea?Expires=1715558400&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=gHEgIc7met3LC-PE4XbPsvu133a2Z92LLdESMHUOZKa6voTd0VOH6r9jUO5jhG-nrWckP3w6WVFdHDA0dR8alD2Q~0ah8EozFCQPrTqfx8jEtCseSa7Va7uSdGZuLymp8k-4rTDNAJCW6oHejAED~s0P-S8U9Y593QMuszOVBU7qdfPgbQpX00GRzO7J6MEnVfXsfz7FvJYV3VloSO4VLaq1rWuVisxLg-QQM-hRQNkzEoZOs4qSH4okOsQYI849pNpu94yIcuaGaU5DXq21~9yFlzTw90eHvS7-kcPGSwGajeGKDnIwgcsbdDyP44Q~Spa24DStzm45dDt7BHLcbQ__',
      'Header': 'Cycling-Riding High',
      'Description': 'At its essence, cycling is a celebration of freedom and independence. With each turn of the pedal, cyclists embark on a journey of self-discovery, exploring new landscapes, pushing personal boundaries, and embracing the natural world around them'
    },
    {
      'Name': 'Flowers',
      'Picture': 'https://images.unsplash.com/photo-1523224042829-4731dd15a3bb?q=80&w=1888&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
      'Header': 'Flowers-Blooming Beauties',
      'Description': 'Flowers, those exquisite works of art crafted by natures gentle hand, serve as colorful ambassadors of the natural world, enchanting us with their delicate petals, captivating fragrances, and vibrant hues'
    },
    {
      'Name': 'Animals',
      'Picture': 'https://s3-alpha-sig.figma.com/img/ee2f/671b/ae1da53eba6aa80eef98a563c436f03e?Expires=1715558400&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=GujI7KFs21BNQSVkavJ5QvdXLztm-9NBd-02M1jkmf1Jyko0mEK-4k5dssu1hVJFsX2npKVBlJQbydn-1BEn7Oq9fBITeJfwbqBhNrUaNFedLDmlL1YiyAaAALyyBubAzyakQpMpVGea3eknAaeMg0TCNACyssEGjSxbwJDYZZW-qe1dwRXyZLAZe97JmBgvdZoLXrLMQcPtfs5r~UTU7iqyQ0z6zHVSE5dF565YW2JvQsQUtIfvLjk8kcTpPij95baIeP~18YXaO9JG8MEhuafHaQw9hJ22XMNDLVarHXA1F2XiS0VgsmLSiP30hVqCizGvKIJIc6I04ufV84VRtA__',
      'Header': 'Celebrating Earths Diversity',
      'Description': 'Animals, the magnificent inhabitants of our planet, grace the Earth with their boundless diversity, captivating beauty, and remarkable adaptations. '
    }
  ];
}