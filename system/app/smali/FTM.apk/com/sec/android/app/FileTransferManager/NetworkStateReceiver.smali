.class public Lcom/sec/android/app/FileTransferManager/NetworkStateReceiver;
.super Landroid/content/BroadcastReceiver;
.source "NetworkStateReceiver.java"


# instance fields
.field private mConnectionMode:I

.field private mWaitStartServiceIntent:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 20
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 34
    iput v0, p0, Lcom/sec/android/app/FileTransferManager/NetworkStateReceiver;->mConnectionMode:I

    .line 35
    iput-boolean v0, p0, Lcom/sec/android/app/FileTransferManager/NetworkStateReceiver;->mWaitStartServiceIntent:Z

    return-void
.end method

.method public static changeIP(Ljava/lang/String;)Ljava/lang/String;
    .registers 10
    .parameter "ipstr"

    .prologue
    .line 249
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    const/4 v7, 0x5

    if-ge v6, v7, :cond_8

    .line 277
    .end local p0
    .local v0, check:Z
    :goto_7
    return-object p0

    .line 252
    .end local v0           #check:Z
    .restart local p0
    :cond_8
    const/4 v0, 0x1

    .line 254
    .restart local v0       #check:Z
    :try_start_9
    const-string v2, ""

    .line 255
    .local v2, result:Ljava/lang/String;
    :cond_b
    :goto_b
    if-eqz v0, :cond_55

    .line 257
    const-string v6, "."

    invoke-virtual {p0, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    .line 258
    .local v5, tmpPos:I
    const/4 v6, -0x1

    if-ne v5, v6, :cond_2e

    .line 259
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "0"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_7

    .line 261
    :cond_2e
    const/4 v6, 0x0

    invoke-virtual {p0, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 262
    .local v4, tmp:Ljava/lang/String;
    add-int/lit8 v6, v5, 0x1

    invoke-virtual {p0, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 264
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 265
    .local v3, sb:Ljava/lang/StringBuffer;
    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 266
    const/4 v6, 0x0

    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 267
    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 268
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    .line 270
    invoke-virtual {p0}, Ljava/lang/String;->length()I
    :try_end_4f
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_4f} :catch_57

    move-result v6

    const/4 v7, 0x1

    if-ge v6, v7, :cond_b

    .line 271
    const/4 v0, 0x0

    goto :goto_b

    .end local v3           #sb:Ljava/lang/StringBuffer;
    .end local v4           #tmp:Ljava/lang/String;
    .end local v5           #tmpPos:I
    :cond_55
    move-object p0, v2

    .line 273
    goto :goto_7

    .line 274
    .end local v2           #result:Ljava/lang/String;
    :catch_57
    move-exception v1

    .line 275
    .local v1, e:Ljava/lang/Exception;
    const-string v6, "[FT]-Server"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "NetworkStateReceiver :change IP Exception:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    const-string p0, ""

    goto :goto_7
.end method

.method public static getIPAddress(Landroid/content/Context;)Ljava/lang/String;
    .registers 13
    .parameter "context"

    .prologue
    .line 146
    const-string v11, "connectivity"

    invoke-virtual {p0, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/ConnectivityManager;

    .line 147
    .local v2, connManager:Landroid/net/ConnectivityManager;
    const-string v11, "wifi"

    invoke-virtual {p0, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/net/wifi/WifiManager;

    .line 149
    .local v10, wifiManager:Landroid/net/wifi/WifiManager;
    const/4 v11, 0x1

    invoke-virtual {v2, v11}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v5

    .line 150
    .local v5, info:Landroid/net/NetworkInfo;
    if-eqz v5, :cond_2a

    .line 152
    invoke-virtual {v10}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v9

    .line 153
    .local v9, wi:Landroid/net/wifi/WifiInfo;
    if-nez v9, :cond_25

    const/4 v1, 0x0

    .line 154
    .local v1, address:I
    :goto_1e
    if-eqz v1, :cond_2a

    .line 157
    invoke-static {v1}, Lcom/sec/android/app/FileTransferManager/NetworkStateReceiver;->getIpFromInt(I)Ljava/lang/String;

    move-result-object v11

    .line 234
    .end local v1           #address:I
    .end local v9           #wi:Landroid/net/wifi/WifiInfo;
    :goto_24
    return-object v11

    .line 153
    .restart local v9       #wi:Landroid/net/wifi/WifiInfo;
    :cond_25
    invoke-virtual {v9}, Landroid/net/wifi/WifiInfo;->getIpAddress()I

    move-result v1

    goto :goto_1e

    .line 161
    .end local v9           #wi:Landroid/net/wifi/WifiInfo;
    :cond_2a
    const/4 v0, 0x0

    .line 164
    .local v0, addr:Ljava/net/InetAddress;
    :try_start_2b
    const-string v11, "p2p-wlan0-0"

    invoke-static {v11}, Ljava/net/NetworkInterface;->getByName(Ljava/lang/String;)Ljava/net/NetworkInterface;

    move-result-object v6

    .line 165
    .local v6, interf:Ljava/net/NetworkInterface;
    invoke-virtual {v6}, Ljava/net/NetworkInterface;->getInetAddresses()Ljava/util/Enumeration;

    move-result-object v7

    .line 166
    .local v7, ips:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/net/InetAddress;>;"
    :cond_35
    invoke-interface {v7}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v11

    if-eqz v11, :cond_54

    .line 168
    invoke-interface {v7}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/net/InetAddress;

    .line 170
    .local v4, inetAddress:Ljava/net/InetAddress;
    invoke-virtual {v4}, Ljava/net/InetAddress;->toString()Ljava/lang/String;

    move-result-object v8

    .line 172
    .local v8, ips_string:Ljava/lang/String;
    const-string v11, "/fe80"

    invoke-virtual {v8, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_35

    .line 174
    invoke-virtual {v4}, Ljava/net/InetAddress;->isLoopbackAddress()Z
    :try_end_50
    .catch Ljava/net/SocketException; {:try_start_2b .. :try_end_50} :catch_5f

    move-result v11

    if-nez v11, :cond_35

    .line 176
    move-object v0, v4

    .line 228
    .end local v4           #inetAddress:Ljava/net/InetAddress;
    .end local v6           #interf:Ljava/net/NetworkInterface;
    .end local v7           #ips:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/net/InetAddress;>;"
    .end local v8           #ips_string:Ljava/lang/String;
    :cond_54
    :goto_54
    if-eqz v0, :cond_64

    .line 231
    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v11

    goto :goto_24

    .line 222
    :catch_5f
    move-exception v3

    .line 225
    .local v3, e:Ljava/net/SocketException;
    invoke-virtual {v3}, Ljava/net/SocketException;->printStackTrace()V

    goto :goto_54

    .line 234
    .end local v3           #e:Ljava/net/SocketException;
    :cond_64
    const/4 v11, 0x0

    goto :goto_24
.end method

.method private static getIpFromInt(I)Ljava/lang/String;
    .registers 4
    .parameter "input"

    .prologue
    .line 239
    if-nez p0, :cond_9

    .line 241
    const-string v1, "[FT]-Server"

    const-string v2, "NetworkStateReceiver :getIPFromInt : I can\'t get the IP"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    :cond_9
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    and-int/lit16 v2, p0, 0xff

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    shr-int/lit8 v2, p0, 0x8

    and-int/lit16 v2, v2, 0xff

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    shr-int/lit8 v2, p0, 0x10

    and-int/lit16 v2, v2, 0xff

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    shr-int/lit8 v2, p0, 0x18

    and-int/lit16 v2, v2, 0xff

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 244
    .local v0, result:Ljava/lang/String;
    return-object v0
.end method

.method private startChecker(Landroid/content/Context;)V
    .registers 4
    .parameter "context"

    .prologue
    .line 116
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.android.app.FileTransferServer.FTS_CHECKER"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 117
    return-void
.end method

.method private startServer(Landroid/content/Context;I)V
    .registers 9
    .parameter "context"
    .parameter "connectionMode"

    .prologue
    const/4 v5, 0x1

    .line 121
    invoke-static {p1}, Lcom/sec/android/app/FileTransferManager/NetworkStateReceiver;->getIPAddress(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 122
    .local v1, ipAddr:Ljava/lang/String;
    invoke-direct {p0, p1}, Lcom/sec/android/app/FileTransferManager/NetworkStateReceiver;->stopMediaMountChecker(Landroid/content/Context;)V

    .line 123
    if-eqz v1, :cond_1a

    const-string v2, "0.0.0.0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eq v2, v5, :cond_1a

    const-string v2, "127.0.0.0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-ne v2, v5, :cond_33

    .line 125
    :cond_1a
    const-string v2, "[FT]-Server"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "NetworkStateReceiver :can\'t start server  -- Ip is wrong :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    :goto_32
    return-void

    .line 129
    :cond_33
    iget-boolean v2, p0, Lcom/sec/android/app/FileTransferManager/NetworkStateReceiver;->mWaitStartServiceIntent:Z

    if-nez v2, :cond_6f

    .line 131
    const-string v2, "[FT]-Server"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "NetworkStateReceiver :startServer: hotspots=1. wifi =2. direct =3 :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v1}, Lcom/sec/android/app/FileTransferManager/NetworkStateReceiver;->changeIP(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.sec.android.app.FileTransferServer.FTS_SERVICE_START"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 133
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "MODE"

    invoke-virtual {v0, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 134
    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 135
    iput-boolean v5, p0, Lcom/sec/android/app/FileTransferManager/NetworkStateReceiver;->mWaitStartServiceIntent:Z

    goto :goto_32

    .line 139
    .end local v0           #intent:Landroid/content/Intent;
    :cond_6f
    const-string v2, "[FT]-Server"

    const-string v3, "NetworkStateReceiver : before intent can\'t start server"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_32
.end method

.method private stopChecker(Landroid/content/Context;)V
    .registers 4
    .parameter "context"

    .prologue
    .line 111
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.android.app.FileShareServer.CHECKER_STOP"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 112
    return-void
.end method

.method private stopMediaMountChecker(Landroid/content/Context;)V
    .registers 6
    .parameter "context"

    .prologue
    .line 103
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.sec.android.app.FileTransferServer.FTS_MEDIAMOUNT_CHECKER_FINISH"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_a} :catch_b

    .line 107
    :goto_a
    return-void

    .line 104
    :catch_b
    move-exception v0

    .line 105
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "[FT]-Server"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "NetworkStateReceiver :check StopMediaMountChecker  :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 10
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 42
    if-eqz p2, :cond_150

    :try_start_2
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_150

    .line 43
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 44
    .local v0, action:Ljava/lang/String;
    const-string v4, "[FT]-Server"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "NetworkStateReceiver :intent: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    const-string v4, "android.intent.action.FTS_SERVICE_START"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3b

    .line 47
    invoke-direct {p0, p1}, Lcom/sec/android/app/FileTransferManager/NetworkStateReceiver;->stopMediaMountChecker(Landroid/content/Context;)V

    .line 48
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/sec/android/app/FileTransferManager/NetworkStateReceiver;->mWaitStartServiceIntent:Z

    .line 99
    .end local v0           #action:Ljava/lang/String;
    :cond_3a
    :goto_3a
    return-void

    .line 49
    .restart local v0       #action:Ljava/lang/String;
    :cond_3b
    const-string v4, "com.sec.android.app.FileShareServer.SERVER_ALIVE"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_65

    .line 50
    invoke-direct {p0, p1}, Lcom/sec/android/app/FileTransferManager/NetworkStateReceiver;->stopMediaMountChecker(Landroid/content/Context;)V
    :try_end_4a
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_4a} :catch_4b

    goto :goto_3a

    .line 96
    .end local v0           #action:Ljava/lang/String;
    :catch_4b
    move-exception v2

    .line 97
    .local v2, e:Ljava/lang/Exception;
    const-string v4, "[FT]-Server"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "NetworkStateReceiver :Exception occurent : I will stop NetworkStateReceiver: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3a

    .line 51
    .end local v2           #e:Ljava/lang/Exception;
    .restart local v0       #action:Ljava/lang/String;
    :cond_65
    :try_start_65
    const-string v4, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a1

    .line 52
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "connectivity"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 53
    .local v1, connectivityManager:Landroid/net/ConnectivityManager;
    const/16 v4, 0xd

    invoke-virtual {v1, v4}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v3

    .line 54
    .local v3, netInfo:Landroid/net/NetworkInfo;
    sget-object v4, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/net/NetworkInfo$DetailedState;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3a

    .line 55
    const-string v4, "[FT]-Server"

    const-string v5, "NetworkStateReceiver : FTS_MEDIAMOUNT_CHECKER_START"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    new-instance v4, Landroid/content/Intent;

    const-string v5, "com.sec.android.app.FileTransferServer.FTS_MEDIAMOUNT_CHECKER_START"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v4}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_3a

    .line 58
    .end local v1           #connectivityManager:Landroid/net/ConnectivityManager;
    .end local v3           #netInfo:Landroid/net/NetworkInfo;
    :cond_a1
    const-string v4, "android.intent.action.FTS_SERVICE_FINISH"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_111

    .line 59
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v4

    const-string v5, "mounted"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_105

    .line 61
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "connectivity"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 62
    .restart local v1       #connectivityManager:Landroid/net/ConnectivityManager;
    const/16 v4, 0xd

    invoke-virtual {v1, v4}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v3

    .line 64
    .restart local v3       #netInfo:Landroid/net/NetworkInfo;
    const-string v4, "[FT]-Server"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "NetworkStateReceiver :MEDIA_MOUNTED && "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    sget-object v4, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/net/NetworkInfo$DetailedState;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_100

    .line 66
    const/4 v4, 0x3

    iput v4, p0, Lcom/sec/android/app/FileTransferManager/NetworkStateReceiver;->mConnectionMode:I

    .line 67
    invoke-direct {p0, p1}, Lcom/sec/android/app/FileTransferManager/NetworkStateReceiver;->startChecker(Landroid/content/Context;)V

    .line 68
    iget v4, p0, Lcom/sec/android/app/FileTransferManager/NetworkStateReceiver;->mConnectionMode:I

    invoke-direct {p0, p1, v4}, Lcom/sec/android/app/FileTransferManager/NetworkStateReceiver;->startServer(Landroid/content/Context;I)V

    goto/16 :goto_3a

    .line 70
    :cond_100
    invoke-direct {p0, p1}, Lcom/sec/android/app/FileTransferManager/NetworkStateReceiver;->stopChecker(Landroid/content/Context;)V

    goto/16 :goto_3a

    .line 74
    .end local v1           #connectivityManager:Landroid/net/ConnectivityManager;
    .end local v3           #netInfo:Landroid/net/NetworkInfo;
    :cond_105
    const-string v4, "[FT]-Server"

    const-string v5, "NetworkStateReceiver :!MEDIA_MOUNTED"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    invoke-direct {p0, p1}, Lcom/sec/android/app/FileTransferManager/NetworkStateReceiver;->stopChecker(Landroid/content/Context;)V

    goto/16 :goto_3a

    .line 81
    :cond_111
    const-string v4, "android.net.wifi.p2p.CONNECTION_STATE_CHANGE"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3a

    .line 84
    const-string v4, "networkInfo"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/net/NetworkInfo;

    .line 85
    .restart local v3       #netInfo:Landroid/net/NetworkInfo;
    const-string v4, "[FT]-Server"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "NetworkStateReceiver :status : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    invoke-virtual {v3}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v4

    if-eqz v4, :cond_3a

    .line 88
    const/4 v4, 0x3

    iput v4, p0, Lcom/sec/android/app/FileTransferManager/NetworkStateReceiver;->mConnectionMode:I

    .line 89
    invoke-direct {p0, p1}, Lcom/sec/android/app/FileTransferManager/NetworkStateReceiver;->startChecker(Landroid/content/Context;)V

    .line 90
    iget v4, p0, Lcom/sec/android/app/FileTransferManager/NetworkStateReceiver;->mConnectionMode:I

    invoke-direct {p0, p1, v4}, Lcom/sec/android/app/FileTransferManager/NetworkStateReceiver;->startServer(Landroid/content/Context;I)V

    goto/16 :goto_3a

    .line 94
    .end local v0           #action:Ljava/lang/String;
    .end local v3           #netInfo:Landroid/net/NetworkInfo;
    :cond_150
    const-string v4, "[FT]-Server"

    const-string v5, "NetworkStateReceiver :onReceived : null Intent!"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_157
    .catch Ljava/lang/Exception; {:try_start_65 .. :try_end_157} :catch_4b

    goto/16 :goto_3a
.end method
