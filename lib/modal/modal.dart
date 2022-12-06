
class Car{
  String?image;
  String?name;
  String?title;
  String?day;
  String?subtitile;
  String?logo;
  String?logotitile;
  String?logooffer;
  Car({this.name, this.title, this.subtitile,this.image,this.day,this.logo,this.logotitile,this.logooffer});
}
List<Car> carlist=[
  Car(
    logo: 'https://www.logolynx.com/images/logolynx/2b/2b0521192a81abe4803a3f13c3b26f31.gif',
    logotitile: 'Hartiz',
    logooffer: '130 offers',

    image: 'images/landrover.png',
    name: 'Discovery',
    title: 'Land Rover',
    subtitile: 'Peer Weak',
    day: 'Weekly',
  ),
  Car(
    logo: 'https://logos-world.net/wp-content/uploads/2022/05/Avis-Symbol.png',
    logotitile: 'Avis',
    logooffer: '126 offers',
    image: 'images/alfaromero.png',
    name: 'C4',
    title: 'Alfa Romero',
    subtitile: 'Peer Month',
    day: 'Monthly',
  ),
  Car(
    logo: 'https://www.designyourway.net/blog/wp-content/uploads/2019/11/t1-1.jpg',
    logotitile: 'LmGini',
    logooffer: '100 offers',
    image: 'images/nissan.png',
    name: 'GTR',
    title: 'Nissan',
    subtitile: 'Peer Weak',
    day: 'Daily',
  ),
  Car(
    logo: 'https://i0.wp.com/www.downloadfonts.io/wp-content/uploads/2021/09/Ferrari-Logo-Font.jpg?fit=1200%2C691&ssl=1',
    logotitile: 'Ferari',
    logooffer: '130 offers',
    image: 'images/black.png',
    name: 'H4',
    title: 'Mercetis',
    subtitile: 'Two Weak',
    day: 'Weekly',
  ),
  Car(
    logo: 'data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAARsAAACyCAMAAABFl5uBAAAAkFBMVEX////jABviAADjABbtkZXjAA3sjZLjABXvlZnnaG7kJjLmZGrjHi3jABLiAAbump3yxMXyt7r21Nb9+vv76+z88/T55ebrgIXvo6flRE3siY743+D2z9HkO0XytbjwrK/zv8HmTFTjLjrpb3XmUlrrfIHnWWDkPEb20dPmUVnqdHrwoaTzwsTiFyjiDSHlMj7x5KStAAAKJUlEQVR4nO2ah5LiuhKGcQuPSTbRJA85DTAw7/92Vzmbmj17Ts3d2v6qNmALWfrVSTKNBoIgCIIgCIIgCIIgCIIgCIIgCIIgCIIgCIIgCIIgCIIgCIIgCIIgCIIgCIIgCIIgCIIgCIIgfxLjSVWNRtW0/OmB/D8x/tjMrg+wWB1a28lPD+vnGSz3VIwiTVOtjPrQ3vzN+my7VIK0oH8lu/asNV8P15v+2+3M5AIm0P7+d8ozWdL55wC92boSV6aH/W4tbw5aV3H7Ovi5If4Q0zY1lhS+5sYwNpCSHBamzeBA2+TQG/7A+H6O8Q3ShMB5ZF3bQsKAq92uT9tl0Hn/7SeONrPu9dx+G/6Wk37MT+frmWaK/y6Zrqk9JFnhzLgU0lBx5vbl8Zk1he440k25bNaytEc/nfEQn+csxu/t/mXrt7nX9UR2vbRWr7qJXnimWKzt5tWrkVjt7up5da4wPjIZSOJqfygS6j8FE8fV4cRaFxAJOxN4gbGPsgtKd0YGcNf3tqp55XZ9lpef+sp0xwenyCG31Hl/NZLogOPSVCl/Brh+MqHDh9Vmxv55c7/QyZiU0Ixok9RitKFhLLjZ01Kcxc185fT8LnsGbTZNyL1OCFxKv310JKbbpW4GUcMZABGjcS/Tr0FbPsUT9S4DUfcfadOONcpgK28rV3YHy5eDXjypC7tYL6mW7pvamFb5ohEyoJlHdOxeB0KE/baoSFvnVp93mSdw/gfanK3xpGlm7m9kJ3PRgNhrtZHXCnVh7/RC1P+JMv7vaTO0WvlOTBnRxH3lZuz6FO1crVxBUtdCOmws+VEalqONhqjBevFGWw2tlHaH7l63TOBTzVusle2zypbUGi0K08vx0O2Z+CWnaMUb0zIILSvLLYuZL01JzaNoEDY+ktrZdAlEGRIzHPs7B/44+GBed7dvNMrZm6S54lMmq6a6MuOxYK6T30XE8nKuI6qyrEopoaPHTFxJj/LzSfdy/hCLoqOPNLdqqZ7begppjnokOk9VjnEF0XiVssUQISmzXecr00JOwQqBjVJ6Ou3qSWKWKGhzW0wP7lXtdNqDGsbLdPhVUnS9bymxPkAZ5afupLyoRp4tN3p8laAfjvEkVoWEQ2JQP2ZBaKz63X3IG/SKSdJPokuc8k0mGXaFFodZp0abrtDGG+hRZijXf09++CViuGpFrvKRykh7mZRmaveiJAa7fjXatMIxyiC2EpblTwXkMAdq6aDX5w+kYchUNbdCrP94qAsTEYbpY321X2oziuYgnbfJQ36Ww8n2kU8mgvoiyDiV776pjfRvWM+KSH80GcvxDK3gmRw2ozkQI+MGsq/JdnkBXZjAUfVOkl/Q5pC6zqLQdjtwvk2HzT48pBUp973IWO1VXcz3xQ3HnOq1keYHasncwdKZqe+Mch2YCCvBE9KZLfv3+73fnJ1zVruaWisDGc5YLRKrj+u0UYMPtlB3b3SyyCEsPqrlVeFPR5/gmTJ+eEVpnTYf5pk9qb5V/7M4DSrCUK+3S3BWTKijLbcAzWCvjY+WZMXt29oMvBhr4c9XFjR0EcZ+uaNu+WajDSf7+pY2yjbfTTFrxWu2IpZWk4MpNmpJoWMFi1uREK9mfKFNUw5hW9fcSnuy9IBSBmqTktp+U8M+C9a/VhtlmsT6vxUfbvQphdO+/4Bgm+Ja0sHJMKxChujxQEwbJUDkVGLuy6ZsYCFtzZTgSoDIQ6NBtUabvnwid0CZDKz4sMsS4ufgqr9gbhTowsrK5+nTa83s208Xtg6uNsoWIs2lu1nHIXIbKDcV1gJEHccMx7ExRo02qk7gCyWPqnKzAg8rMdqMNmwBwC67813/M2IfG1UEBMS0EaMkz0hzmSrsGTwt/7aPkOQ0rmEnKru7JUJcm0/ZzcLu1DLpnnS3CLS82VTvn9vhcDsYTaBmC8+D2C9rE8v6EW2s7aJjJP+ONldpw/LMZ+kH+GsWN3A+AFg7n+LacPv6tk9dfsWnaNDVnu3EXa8StJl/26d0LSQ/V97nximNh3s+AGuY4+CUQrHIfyUWt+tj8d2PxQ1TESZgn2LSnV6twioWO3OKaiPtpNDnQavMNTkeLfyDWQEtu0z9MIGaCo+NvqYwjmnTj5m8QCUKp6Rdy9TqBqhbLBkJVAXtXIxqo8xkM5IsRa/5RTZghqQ/uOwza1rsLOcj1or5t5HeIabNe5ANFGPfpO0ZeFtomYzC8xblGJl7nBrTZq1NUqEPSirra3GnOubOfsrfo0i4S8Vfx7zcMwSdteR8vRo7qo0+NA3edMjtmtc+ps2qtojTS82WwD9GEFDDtffhkYE0RHLJerGv12gjNzxBjtHT9XSOatPYyZDuG6yOp248i2jjHmq5aNNN6wyHhgYzUOrG0XTG8k5NAotro7ODF+QWYrbBYVBcG3Wg4sdAGW1Sz2Uj2tzC2tZoow5dWMDIY9mQFoo6O9BQ7J+JcJjVea9KDPGzra4clKtoV03WL7vj2jS+pEe44fiizs28tQ61GQfRxjpYNgt0LfwUKZhaJzN9qGsSz8divlFtzLtSc45Qyi1TkgblXI022iWsg7VpR8nuu1qojTq0Ju8Di61aIX32yb1q3QgAs4zslCf0nPEzS2pP/eq0sRLEY8ND2HSpT8HDQqlGG7Whp7dWW36huoHceOUPv3GojUr13oLLOGbGPGXHEpHqhRYc0rr4SUZoHvvUOm8KqdFGnZPzA8bHbgHW25OwTKjTxrzkolvgzu5iUjAJRxpoo9+Res6nz1r1Go24OIFdcEWYeTIDJsFijDtMmvixFqdOG/kGR0wkt1JpEGwaL7Rp7OK9ZJHEEmgjj0ryYCevtDHPq5hRB1t4fvIIxyGvPIIztip7bTUvtGFvvpKANFom1Wuj47dDkUXKMF8bXTAE8UC9k7H235Mes5Gd5+18g5ELk/dXY06nR+pjDR97rTaNT/DnZb/lt3mhDc2SfiKu+eGLr02rtnbUr0HsEHOgc029iLw2E/Csb8oSCzzr3toJugWhhD8nYIxnAOZFOH0yiSQDBhDeSVSbRuke4abQiZ/qP3LeidYmzUWvkWXriVvF0b44yNh0vxy7zvWDnd1xOaM+mL/0J8bh0aE8aiJS2e+wPUzBj+vP23gjOgTWR+d5r7k9eUtML926nyF+9XgnSuDPhHfaSSJOPH+Ke4Ub0JvU0DO4WAFRG45tNuwHV1SZ3Wuj+Q6Tbf90uy3nv/fruOmwxXrZRM+Q/jXKJTXRHEhTT3vhF5rjNfupVAGL3/+135/GeP6AIqNlx3LAIyOv7nR+r+ZHAPb7vMPv28wfyWhGJ8/c99Furd8/WIgvmtX2fuIvH+if4zqWCv4Wqv7R/YGRer0J+9nn3yyMZLptHRbWLvXrTKMd6mIzLieTSYmaIAiCIAiCIAiCIAiCIAiCIAiCIAiCIAiCIAiCIAiCIAiCIAiCIAiCIAiCIAiCIAiCIAiCIAjy4/wPQwSIABdLotoAAAAASUVORK5CYII=',
    logotitile: 'Toyota',
    logooffer: '135 offers',
    image: 'images/yellow.jpg',
    name: 'S5',
    title: 'Lambargini',
    subtitile: 'Per years',
    day: 'Yearly',
  ),
  Car(
    logo: 'https://i.pinimg.com/originals/3a/b6/11/3ab611a02b059c65833f6c058fdfbade.jpg',
    logotitile: 'Camero',
    logooffer: '156 offers',
    image: 'images/toyota.png',
    name: 'Special',
    title: 'Toyota',
    subtitile: 'Per Month',
    day: 'Montly',
  ),
  Car(
      logo: 'https://www.pngitem.com/pimgs/m/511-5111440_audi-logo-png-transparent-audi-logo-png-png.png',
      logotitile: 'Oddy',
      logooffer: '170 offers',
    image: 'images/white car.jpg',
    name: 'Super',
    title: 'White Gini',
    subtitile: 'Per Year',
    day: 'Yearly'
  ),
  Car(
    logo: 'https://i.ytimg.com/vi/rvJr5UntXPM/maxresdefault.jpg',
    logotitile: 'Luxury',
    logooffer: '169 offers',
    image: 'images/camero.png',
    name: 'Discovery',
    title: 'Camero',
    subtitile: 'Per Day',
    day: 'Daily',
  ),
];