.class public Landroid/net/wifi/WifiApWhiteList;
.super Ljava/lang/Object;
.source "WifiApWhiteList.java"


# static fields
.field public static final WL_ALREADY_IN_TABLE:I = 0x4

.field public static final WL_FAIL:I = 0x2

.field public static final WL_NOT_IN_TABLE:I = 0x5

.field public static final WL_NOT_MAC:I = 0x3

.field public static final WL_SUCCESS:I = 0x1

.field private static volatile uniqueInstance:Landroid/net/wifi/WifiApWhiteList;


# instance fields
.field private final BUFFER_SIZE:I

.field private final HOSTAPD_ACCEPT:Ljava/lang/String;

.field private mWhiteList:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 28
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 17
    const-string v0, "/data/misc/wifi/hostapd.accept"

    iput-object v0, p0, Landroid/net/wifi/WifiApWhiteList;->HOSTAPD_ACCEPT:Ljava/lang/String;

    .line 18
    const/16 v0, 0x40

    iput v0, p0, Landroid/net/wifi/WifiApWhiteList;->BUFFER_SIZE:I

    .line 29
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Landroid/net/wifi/WifiApWhiteList;->mWhiteList:Ljava/util/Vector;

    .line 30
    invoke-direct {p0}, Landroid/net/wifi/WifiApWhiteList;->createOrChangePermission()V

    .line 31
    invoke-direct {p0}, Landroid/net/wifi/WifiApWhiteList;->readWhiteListFile()V

    .line 32
    return-void
.end method

.method private createOrChangePermission()V
    .registers 7

    .prologue
    .line 42
    new-instance v2, Ljava/io/File;

    const-string v4, "/data/misc/wifi/hostapd.accept"

    invoke-direct {v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 44
    .local v2, file:Ljava/io/File;
    :try_start_7
    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z

    .line 45
    const/4 v4, 0x3

    new-array v0, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "/system/bin/sh"

    aput-object v5, v0, v4

    const/4 v4, 0x1

    const-string v5, "-c"

    aput-object v5, v0, v4

    const/4 v4, 0x2

    const-string v5, "/system/bin/chmod 665 /data/misc/wifi/hostapd.accept"

    aput-object v5, v0, v4

    .line 46
    .local v0, cmd:[Ljava/lang/String;
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/Runtime;->exec([Ljava/lang/String;)Ljava/lang/Process;
    :try_end_23
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_23} :catch_30

    move-result-object v3

    .line 48
    .local v3, p:Ljava/lang/Process;
    :try_start_24
    invoke-virtual {v3}, Ljava/lang/Process;->waitFor()I

    .line 49
    invoke-virtual {v3}, Ljava/lang/Process;->destroy()V
    :try_end_2a
    .catch Ljava/lang/InterruptedException; {:try_start_24 .. :try_end_2a} :catch_2b
    .catch Ljava/io/IOException; {:try_start_24 .. :try_end_2a} :catch_30

    .line 56
    .end local v0           #cmd:[Ljava/lang/String;
    .end local v3           #p:Ljava/lang/Process;
    :goto_2a
    return-void

    .line 50
    .restart local v0       #cmd:[Ljava/lang/String;
    .restart local v3       #p:Ljava/lang/Process;
    :catch_2b
    move-exception v1

    .line 51
    .local v1, e:Ljava/lang/InterruptedException;
    :try_start_2c
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_2f
    .catch Ljava/io/IOException; {:try_start_2c .. :try_end_2f} :catch_30

    goto :goto_2a

    .line 53
    .end local v0           #cmd:[Ljava/lang/String;
    .end local v1           #e:Ljava/lang/InterruptedException;
    .end local v3           #p:Ljava/lang/Process;
    :catch_30
    move-exception v1

    .line 54
    .local v1, e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2a
.end method

.method public static getInstance()Landroid/net/wifi/WifiApWhiteList;
    .registers 1

    .prologue
    .line 35
    sget-object v0, Landroid/net/wifi/WifiApWhiteList;->uniqueInstance:Landroid/net/wifi/WifiApWhiteList;

    if-nez v0, :cond_b

    .line 36
    new-instance v0, Landroid/net/wifi/WifiApWhiteList;

    invoke-direct {v0}, Landroid/net/wifi/WifiApWhiteList;-><init>()V

    sput-object v0, Landroid/net/wifi/WifiApWhiteList;->uniqueInstance:Landroid/net/wifi/WifiApWhiteList;

    .line 38
    :cond_b
    sget-object v0, Landroid/net/wifi/WifiApWhiteList;->uniqueInstance:Landroid/net/wifi/WifiApWhiteList;

    return-object v0
.end method

.method private isMacAddress(Ljava/lang/String;)Z
    .registers 5
    .parameter "macAddressCandidate"

    .prologue
    .line 134
    const-string v2, "[0-9a-fA-F]{2}[-:][0-9a-fA-F]{2}[-:][0-9a-fA-F]{2}[-:][0-9a-fA-F]{2}[-:][0 -9a-fA-F]{2}[-:][0-9a-fA-F]{2}"

    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 135
    .local v1, macPattern:Ljava/util/regex/Pattern;
    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 136
    .local v0, m:Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    return v2
.end method

.method private readWhiteListFile()V
    .registers 7

    .prologue
    .line 59
    iget-object v4, p0, Landroid/net/wifi/WifiApWhiteList;->mWhiteList:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->clear()V

    .line 61
    const/4 v0, 0x0

    .line 64
    .local v0, buf:Ljava/io/BufferedReader;
    :try_start_6
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/FileReader;

    const-string v5, "/data/misc/wifi/hostapd.accept"

    invoke-direct {v4, v5}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    const/16 v5, 0x40

    invoke-direct {v1, v4, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_14
    .catchall {:try_start_6 .. :try_end_14} :catchall_3d
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_14} :catch_4c

    .line 65
    .end local v0           #buf:Ljava/io/BufferedReader;
    .local v1, buf:Ljava/io/BufferedReader;
    :goto_14
    :try_start_14
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    .local v2, bufReadLine:Ljava/lang/String;
    if-eqz v2, :cond_2b

    .line 66
    iget-object v4, p0, Landroid/net/wifi/WifiApWhiteList;->mWhiteList:Ljava/util/Vector;

    invoke-virtual {v4, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z
    :try_end_1f
    .catchall {:try_start_14 .. :try_end_1f} :catchall_49
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_1f} :catch_20

    goto :goto_14

    .line 68
    .end local v2           #bufReadLine:Ljava/lang/String;
    :catch_20
    move-exception v3

    move-object v0, v1

    .line 69
    .end local v1           #buf:Ljava/io/BufferedReader;
    .restart local v0       #buf:Ljava/io/BufferedReader;
    .local v3, e:Ljava/io/IOException;
    :goto_22
    :try_start_22
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V
    :try_end_25
    .catchall {:try_start_22 .. :try_end_25} :catchall_3d

    .line 71
    if-eqz v0, :cond_2a

    .line 73
    :try_start_27
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_2a
    .catch Ljava/io/IOException; {:try_start_27 .. :try_end_2a} :catch_38

    .line 79
    .end local v3           #e:Ljava/io/IOException;
    :cond_2a
    :goto_2a
    return-void

    .line 71
    .end local v0           #buf:Ljava/io/BufferedReader;
    .restart local v1       #buf:Ljava/io/BufferedReader;
    .restart local v2       #bufReadLine:Ljava/lang/String;
    :cond_2b
    if-eqz v1, :cond_4e

    .line 73
    :try_start_2d
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_30
    .catch Ljava/io/IOException; {:try_start_2d .. :try_end_30} :catch_32

    move-object v0, v1

    .line 76
    .end local v1           #buf:Ljava/io/BufferedReader;
    .restart local v0       #buf:Ljava/io/BufferedReader;
    goto :goto_2a

    .line 74
    .end local v0           #buf:Ljava/io/BufferedReader;
    .restart local v1       #buf:Ljava/io/BufferedReader;
    :catch_32
    move-exception v3

    .line 75
    .restart local v3       #e:Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    move-object v0, v1

    .line 76
    .end local v1           #buf:Ljava/io/BufferedReader;
    .restart local v0       #buf:Ljava/io/BufferedReader;
    goto :goto_2a

    .line 74
    .end local v2           #bufReadLine:Ljava/lang/String;
    :catch_38
    move-exception v3

    .line 75
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2a

    .line 71
    .end local v3           #e:Ljava/io/IOException;
    :catchall_3d
    move-exception v4

    :goto_3e
    if-eqz v0, :cond_43

    .line 73
    :try_start_40
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_43
    .catch Ljava/io/IOException; {:try_start_40 .. :try_end_43} :catch_44

    .line 76
    :cond_43
    :goto_43
    throw v4

    .line 74
    :catch_44
    move-exception v3

    .line 75
    .restart local v3       #e:Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_43

    .line 71
    .end local v0           #buf:Ljava/io/BufferedReader;
    .end local v3           #e:Ljava/io/IOException;
    .restart local v1       #buf:Ljava/io/BufferedReader;
    :catchall_49
    move-exception v4

    move-object v0, v1

    .end local v1           #buf:Ljava/io/BufferedReader;
    .restart local v0       #buf:Ljava/io/BufferedReader;
    goto :goto_3e

    .line 68
    :catch_4c
    move-exception v3

    goto :goto_22

    .end local v0           #buf:Ljava/io/BufferedReader;
    .restart local v1       #buf:Ljava/io/BufferedReader;
    .restart local v2       #bufReadLine:Ljava/lang/String;
    :cond_4e
    move-object v0, v1

    .end local v1           #buf:Ljava/io/BufferedReader;
    .restart local v0       #buf:Ljava/io/BufferedReader;
    goto :goto_2a
.end method

.method private writeWhiteListFile()V
    .registers 6

    .prologue
    .line 83
    const/4 v1, 0x0

    .line 85
    .local v1, fw:Ljava/io/FileWriter;
    :try_start_1
    new-instance v2, Ljava/io/FileWriter;

    const-string v4, "/data/misc/wifi/hostapd.accept"

    invoke-direct {v2, v4}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_40
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_8} :catch_4f

    .line 86
    .end local v1           #fw:Ljava/io/FileWriter;
    .local v2, fw:Ljava/io/FileWriter;
    :try_start_8
    iget-object v4, p0, Landroid/net/wifi/WifiApWhiteList;->mWhiteList:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 87
    .local v3, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_e
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2e

    .line 88
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 89
    const-string v4, "\n"

    invoke-virtual {v2, v4}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V
    :try_end_22
    .catchall {:try_start_8 .. :try_end_22} :catchall_4c
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_22} :catch_23

    goto :goto_e

    .line 91
    .end local v3           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    :catch_23
    move-exception v0

    move-object v1, v2

    .line 92
    .end local v2           #fw:Ljava/io/FileWriter;
    .local v0, e:Ljava/io/IOException;
    .restart local v1       #fw:Ljava/io/FileWriter;
    :goto_25
    :try_start_25
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_28
    .catchall {:try_start_25 .. :try_end_28} :catchall_40

    .line 94
    if-eqz v1, :cond_2d

    .line 96
    :try_start_2a
    invoke-virtual {v1}, Ljava/io/FileWriter;->close()V
    :try_end_2d
    .catch Ljava/io/IOException; {:try_start_2a .. :try_end_2d} :catch_3b

    .line 103
    .end local v0           #e:Ljava/io/IOException;
    :cond_2d
    :goto_2d
    return-void

    .line 94
    .end local v1           #fw:Ljava/io/FileWriter;
    .restart local v2       #fw:Ljava/io/FileWriter;
    .restart local v3       #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_2e
    if-eqz v2, :cond_51

    .line 96
    :try_start_30
    invoke-virtual {v2}, Ljava/io/FileWriter;->close()V
    :try_end_33
    .catch Ljava/io/IOException; {:try_start_30 .. :try_end_33} :catch_35

    move-object v1, v2

    .line 99
    .end local v2           #fw:Ljava/io/FileWriter;
    .restart local v1       #fw:Ljava/io/FileWriter;
    goto :goto_2d

    .line 97
    .end local v1           #fw:Ljava/io/FileWriter;
    .restart local v2       #fw:Ljava/io/FileWriter;
    :catch_35
    move-exception v0

    .line 98
    .restart local v0       #e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    move-object v1, v2

    .line 99
    .end local v2           #fw:Ljava/io/FileWriter;
    .restart local v1       #fw:Ljava/io/FileWriter;
    goto :goto_2d

    .line 97
    .end local v3           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    :catch_3b
    move-exception v0

    .line 98
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2d

    .line 94
    .end local v0           #e:Ljava/io/IOException;
    :catchall_40
    move-exception v4

    :goto_41
    if-eqz v1, :cond_46

    .line 96
    :try_start_43
    invoke-virtual {v1}, Ljava/io/FileWriter;->close()V
    :try_end_46
    .catch Ljava/io/IOException; {:try_start_43 .. :try_end_46} :catch_47

    .line 99
    :cond_46
    :goto_46
    throw v4

    .line 97
    :catch_47
    move-exception v0

    .line 98
    .restart local v0       #e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_46

    .line 94
    .end local v0           #e:Ljava/io/IOException;
    .end local v1           #fw:Ljava/io/FileWriter;
    .restart local v2       #fw:Ljava/io/FileWriter;
    :catchall_4c
    move-exception v4

    move-object v1, v2

    .end local v2           #fw:Ljava/io/FileWriter;
    .restart local v1       #fw:Ljava/io/FileWriter;
    goto :goto_41

    .line 91
    :catch_4f
    move-exception v0

    goto :goto_25

    .end local v1           #fw:Ljava/io/FileWriter;
    .restart local v2       #fw:Ljava/io/FileWriter;
    .restart local v3       #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_51
    move-object v1, v2

    .end local v2           #fw:Ljava/io/FileWriter;
    .restart local v1       #fw:Ljava/io/FileWriter;
    goto :goto_2d
.end method


# virtual methods
.method public addWhiteList(Ljava/lang/String;)I
    .registers 3
    .parameter "mac"

    .prologue
    .line 106
    invoke-direct {p0, p1}, Landroid/net/wifi/WifiApWhiteList;->isMacAddress(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 107
    const/4 v0, 0x3

    .line 114
    :goto_7
    return v0

    .line 109
    :cond_8
    iget-object v0, p0, Landroid/net/wifi/WifiApWhiteList;->mWhiteList:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 110
    const/4 v0, 0x4

    goto :goto_7

    .line 112
    :cond_12
    iget-object v0, p0, Landroid/net/wifi/WifiApWhiteList;->mWhiteList:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 113
    invoke-direct {p0}, Landroid/net/wifi/WifiApWhiteList;->writeWhiteListFile()V

    .line 114
    const/4 v0, 0x1

    goto :goto_7
.end method

.method public getIterator()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 128
    iget-object v0, p0, Landroid/net/wifi/WifiApWhiteList;->mWhiteList:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 129
    const/4 v0, 0x0

    .line 130
    :goto_9
    return-object v0

    :cond_a
    iget-object v0, p0, Landroid/net/wifi/WifiApWhiteList;->mWhiteList:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v0

    goto :goto_9
.end method

.method public removeWhiteList(Ljava/lang/String;)I
    .registers 3
    .parameter "mac"

    .prologue
    .line 118
    iget-object v0, p0, Landroid/net/wifi/WifiApWhiteList;->mWhiteList:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 119
    const/4 v0, 0x5

    .line 123
    :goto_9
    return v0

    .line 121
    :cond_a
    iget-object v0, p0, Landroid/net/wifi/WifiApWhiteList;->mWhiteList:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    .line 122
    invoke-direct {p0}, Landroid/net/wifi/WifiApWhiteList;->writeWhiteListFile()V

    .line 123
    const/4 v0, 0x1

    goto :goto_9
.end method
