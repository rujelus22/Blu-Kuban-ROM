.class public Lcom/samsung/upnp/UPnP;
.super Ljava/lang/Object;
.source "UPnP.java"


# static fields
.field private static BINDADDR:Ljava/net/InetAddress;

.field private static MULTIGROUPADDR:Ljava/net/InetAddress;

.field private static xmlParser:Lcom/samsung/xml/Parser;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 267
    const/16 v0, 0x9

    invoke-static {v0}, Lcom/samsung/upnp/UPnP;->setEnable(I)V

    .line 268
    const-string v0, "[FT]-Stack"

    const-string v1, "set Upnp Use Only IpV4 Addr"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    new-instance v0, Lcom/samsung/xml/parser/kXML2Parser;

    invoke-direct {v0}, Lcom/samsung/xml/parser/kXML2Parser;-><init>()V

    invoke-static {v0}, Lcom/samsung/upnp/UPnP;->setXMLParser(Lcom/samsung/xml/Parser;)V

    .line 290
    invoke-static {}, Lcom/samsung/upnp/UPnP;->initialinzeInetAddr()V

    .line 291
    invoke-static {}, Lcom/samsung/upnp/UPnP;->initialinzeInetBindAddr()V

    .line 43
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 43
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final createUUID()Ljava/lang/String;
    .registers 16

    .prologue
    const-wide/32 v14, 0xa000

    const v13, 0xffff

    const v12, 0xfff1

    const-wide/32 v10, 0xe000

    const/16 v9, 0x20

    .line 185
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 186
    .local v0, time1:J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    long-to-double v5, v5

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v7

    mul-double/2addr v5, v7

    double-to-long v2, v5

    .line 187
    .local v2, time2:J
    new-instance v5, Ljava/lang/StringBuilder;

    const-wide/32 v6, 0xffff

    and-long/2addr v6, v0

    long-to-int v6, v6

    invoke-static {v6}, Lcom/samsung/upnp/UPnP;->toUUID(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 188
    const-wide/32 v6, 0xfff0

    and-long/2addr v6, v0

    long-to-int v6, v6

    invoke-static {v6}, Lcom/samsung/upnp/UPnP;->toUUID(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 189
    const-string v6, "-"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    shr-long v6, v0, v9

    or-long/2addr v6, v14

    long-to-int v6, v6

    and-int/2addr v6, v13

    invoke-static {v6}, Lcom/samsung/upnp/UPnP;->toUUID(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "-"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 190
    shr-long v6, v0, v9

    or-long/2addr v6, v14

    long-to-int v6, v6

    and-int/2addr v6, v12

    invoke-static {v6}, Lcom/samsung/upnp/UPnP;->toUUID(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "-"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 191
    const-wide/32 v6, 0xffff

    and-long/2addr v6, v2

    long-to-int v6, v6

    invoke-static {v6}, Lcom/samsung/upnp/UPnP;->toUUID(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "-"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 192
    shr-long v6, v2, v9

    or-long/2addr v6, v10

    long-to-int v6, v6

    and-int/2addr v6, v12

    invoke-static {v6}, Lcom/samsung/upnp/UPnP;->toUUID(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 193
    shr-long v6, v2, v9

    or-long/2addr v6, v10

    long-to-int v6, v6

    const v7, 0xfff2

    and-int/2addr v6, v7

    invoke-static {v6}, Lcom/samsung/upnp/UPnP;->toUUID(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 194
    shr-long v6, v2, v9

    or-long/2addr v6, v10

    long-to-int v6, v6

    and-int/2addr v6, v13

    invoke-static {v6}, Lcom/samsung/upnp/UPnP;->toUUID(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 187
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 196
    .local v4, uuid:Ljava/lang/String;
    return-object v4
.end method

.method public static final getMultiGroupAddr()Ljava/net/InetAddress;
    .registers 1

    .prologue
    .line 242
    sget-object v0, Lcom/samsung/upnp/UPnP;->MULTIGROUPADDR:Ljava/net/InetAddress;

    return-object v0
.end method

.method public static final getServerName()Ljava/lang/String;
    .registers 4

    .prologue
    .line 57
    const-string v2, "os.name"

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 58
    .local v0, osName:Ljava/lang/String;
    const-string v2, "os.version"

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 59
    .local v1, osVer:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " UPnP/1.0 "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "Samsung DOA"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "1.5"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static final getXMLParser()Lcom/samsung/xml/Parser;
    .registers 1

    .prologue
    .line 213
    sget-object v0, Lcom/samsung/upnp/UPnP;->xmlParser:Lcom/samsung/xml/Parser;

    return-object v0
.end method

.method private static final initialinzeInetAddr()V
    .registers 2

    .prologue
    .line 227
    :try_start_0
    const-string v1, "239.255.255.177"

    invoke-static {v1}, Lcom/samsung/util/IPAddressUtil;->getIPAsByteArray(Ljava/lang/String;)[B

    move-result-object v1

    invoke-static {v1}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v1

    sput-object v1, Lcom/samsung/upnp/UPnP;->MULTIGROUPADDR:Ljava/net/InetAddress;
    :try_end_c
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_c} :catch_d

    .line 231
    .local v0, e:Ljava/net/UnknownHostException;
    :goto_c
    return-void

    .line 228
    .end local v0           #e:Ljava/net/UnknownHostException;
    :catch_d
    move-exception v0

    .line 229
    .restart local v0       #e:Ljava/net/UnknownHostException;
    invoke-virtual {v0}, Ljava/net/UnknownHostException;->printStackTrace()V

    goto :goto_c
.end method

.method private static final initialinzeInetBindAddr()V
    .registers 2

    .prologue
    .line 235
    const/4 v1, 0x0

    :try_start_1
    invoke-static {v1}, Lcom/samsung/net/HostInterface;->getHostAddress(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/util/IPAddressUtil;->getIPAsByteArray(Ljava/lang/String;)[B

    move-result-object v1

    invoke-static {v1}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v1

    sput-object v1, Lcom/samsung/upnp/UPnP;->BINDADDR:Ljava/net/InetAddress;
    :try_end_f
    .catch Ljava/net/UnknownHostException; {:try_start_1 .. :try_end_f} :catch_10

    .line 239
    .local v0, e:Ljava/net/UnknownHostException;
    :goto_f
    return-void

    .line 236
    .end local v0           #e:Ljava/net/UnknownHostException;
    :catch_10
    move-exception v0

    .line 237
    .restart local v0       #e:Ljava/net/UnknownHostException;
    invoke-virtual {v0}, Ljava/net/UnknownHostException;->printStackTrace()V

    goto :goto_f
.end method

.method public static final initialize()V
    .registers 0

    .prologue
    .line 298
    return-void
.end method

.method public static final setEnable(I)V
    .registers 2
    .parameter "value"

    .prologue
    const/4 v0, 0x1

    .line 84
    packed-switch p0, :pswitch_data_2c

    .line 126
    :goto_4
    :pswitch_4
    return-void

    .line 87
    :pswitch_5
    sput-boolean v0, Lcom/samsung/net/HostInterface;->USE_ONLY_IPV6_ADDR:Z

    goto :goto_4

    .line 92
    :pswitch_8
    sput-boolean v0, Lcom/samsung/net/HostInterface;->USE_ONLY_IPV4_ADDR:Z

    goto :goto_4

    .line 97
    :pswitch_b
    sput-boolean v0, Lcom/samsung/net/HostInterface;->USE_LOOPBACK_ADDR:Z

    goto :goto_4

    .line 102
    :pswitch_e
    const-string v0, "FF02::C"

    invoke-static {v0}, Lcom/samsung/upnp/ssdp/SSDP;->setIPv6Address(Ljava/lang/String;)V

    goto :goto_4

    .line 107
    :pswitch_14
    const-string v0, "FF03::C"

    invoke-static {v0}, Lcom/samsung/upnp/ssdp/SSDP;->setIPv6Address(Ljava/lang/String;)V

    goto :goto_4

    .line 112
    :pswitch_1a
    const-string v0, "FF04::C"

    invoke-static {v0}, Lcom/samsung/upnp/ssdp/SSDP;->setIPv6Address(Ljava/lang/String;)V

    goto :goto_4

    .line 117
    :pswitch_20
    const-string v0, "FF05::C"

    invoke-static {v0}, Lcom/samsung/upnp/ssdp/SSDP;->setIPv6Address(Ljava/lang/String;)V

    goto :goto_4

    .line 122
    :pswitch_26
    const-string v0, "FF0E::C"

    invoke-static {v0}, Lcom/samsung/upnp/ssdp/SSDP;->setIPv6Address(Ljava/lang/String;)V

    goto :goto_4

    .line 84
    :pswitch_data_2c
    .packed-switch 0x1
        :pswitch_5
        :pswitch_b
        :pswitch_e
        :pswitch_14
        :pswitch_1a
        :pswitch_20
        :pswitch_26
        :pswitch_4
        :pswitch_8
    .end packed-switch
.end method

.method public static final setXMLParser(Lcom/samsung/xml/Parser;)V
    .registers 1
    .parameter "parser"

    .prologue
    .line 207
    sput-object p0, Lcom/samsung/upnp/UPnP;->xmlParser:Lcom/samsung/xml/Parser;

    .line 208
    invoke-static {p0}, Lcom/samsung/soap/SOAP;->setXMLParser(Lcom/samsung/xml/Parser;)V

    .line 209
    return-void
.end method

.method private static final toUUID(I)Ljava/lang/String;
    .registers 7
    .parameter "seed"

    .prologue
    .line 174
    const v4, 0xffff

    and-int/2addr v4, p0

    const/16 v5, 0x10

    invoke-static {v4, v5}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v0

    .line 175
    .local v0, id:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    .line 176
    .local v1, idLen:I
    const-string v3, ""

    .line 177
    .local v3, uuid:Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, n:I
    :goto_11
    rsub-int/lit8 v4, v1, 0x4

    if-lt v2, v4, :cond_27

    .line 179
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 180
    return-object v3

    .line 178
    :cond_27
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "0"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 177
    add-int/lit8 v2, v2, 0x1

    goto :goto_11
.end method
