.class public Lcom/samsung/upnp/ssdp/SSDP;
.super Ljava/lang/Object;
.source "SSDP.java"


# static fields
.field private static IPV6_ADDRESS:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 64
    const-string v0, "FF02::C"

    invoke-static {v0}, Lcom/samsung/upnp/ssdp/SSDP;->setIPv6Address(Ljava/lang/String;)V

    .line 26
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 26
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final getIPv6Address()Ljava/lang/String;
    .registers 1

    .prologue
    .line 51
    sget-object v0, Lcom/samsung/upnp/ssdp/SSDP;->IPV6_ADDRESS:Ljava/lang/String;

    return-object v0
.end method

.method public static final getLeaseTime(Ljava/lang/String;)I
    .registers 8
    .parameter "cacheCont"

    .prologue
    .line 73
    const/16 v3, 0x3d

    invoke-virtual {p0, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 74
    .local v0, equIdx:I
    const/4 v1, 0x0

    .line 76
    .local v1, mx:I
    :try_start_7
    new-instance v2, Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    add-int/lit8 v4, v0, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v6, v0, 0x1

    sub-int/2addr v5, v6

    invoke-direct {v2, v3, v4, v5}, Ljava/lang/String;-><init>([BII)V

    .line 77
    .local v2, mxStr:Ljava/lang/String;
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_1c} :catch_1e

    move-result v1

    .line 80
    .end local v2           #mxStr:Ljava/lang/String;
    :goto_1d
    return v1

    .line 79
    :catch_1e
    move-exception v3

    goto :goto_1d
.end method

.method public static final setIPv6Address(Ljava/lang/String;)V
    .registers 1
    .parameter "addr"

    .prologue
    .line 46
    sput-object p0, Lcom/samsung/upnp/ssdp/SSDP;->IPV6_ADDRESS:Ljava/lang/String;

    .line 47
    return-void
.end method
