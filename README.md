# McStatus.cs
Web-API for [mcstatus.io](https://mcstatus.io) an online tool to retrieve current status of any Java Edition or Bedrock Edition Minecraft server

## Example
```cs
using System;
using MinecraftStatusApi;

namespace Application
{
    internal class Program
    {
        static async Task Main()
        {
            var api = new McStatusApi();
            string javaStatus = await api.GetJavaServerStatus("mc.hypixel.net");
            Console.WriteLine(javaStatus);
        }
    }
}
```
