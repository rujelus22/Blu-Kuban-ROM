.class public Lcom/google/android/apps/googlevoice/udp/AddressPair;
.super Ljava/lang/Object;
.source "AddressPair.java"


# static fields
.field private static final IP_ADDRESS_PATTERN:Ljava/util/regex/Pattern;


# instance fields
.field private final address:Ljava/net/InetAddress;

.field private final port:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 19
    const-string v0, "[0-9]+\\.[0-9]+\\.[0-9]+\\.[0-9]+"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/googlevoice/udp/AddressPair;->IP_ADDRESS_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .registers 4
    .parameter "ipAddress"
    .parameter "port"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .prologue
    .line 34
    invoke-static {p1}, Lcom/google/android/apps/googlevoice/udp/AddressPair;->checkIpAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/google/android/apps/googlevoice/udp/AddressPair;-><init>(Ljava/net/InetAddress;I)V

    .line 35
    return-void
.end method

.method public constructor <init>(Ljava/net/InetAddress;I)V
    .registers 3
    .parameter "address"
    .parameter "port"

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/google/android/apps/googlevoice/udp/AddressPair;->address:Ljava/net/InetAddress;

    .line 30
    iput p2, p0, Lcom/google/android/apps/googlevoice/udp/AddressPair;->port:I

    .line 31
    return-void
.end method

.method private static checkIpAddress(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .parameter "ipAddress"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .prologue
    .line 41
    sget-object v0, Lcom/google/android/apps/googlevoice/udp/AddressPair;->IP_ADDRESS_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-nez v0, :cond_25

    .line 42
    new-instance v0, Ljava/net/UnknownHostException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not a valid ip address: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 44
    :cond_25
    return-object p0
.end method

.method public static createFromDatagramPacket(Ljava/net/DatagramPacket;)Lcom/google/android/apps/googlevoice/udp/AddressPair;
    .registers 4
    .parameter "packet"

    .prologue
    .line 25
    new-instance v0, Lcom/google/android/apps/googlevoice/udp/AddressPair;

    invoke-virtual {p0}, Ljava/net/DatagramPacket;->getAddress()Ljava/net/InetAddress;

    move-result-object v1

    invoke-virtual {p0}, Ljava/net/DatagramPacket;->getPort()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/google/android/apps/googlevoice/udp/AddressPair;-><init>(Ljava/net/InetAddress;I)V

    return-object v0
.end method


# virtual methods
.method public addressThisPacket(Ljava/net/DatagramPacket;)V
    .registers 3
    .parameter "testPacket"

    .prologue
    .line 91
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/udp/AddressPair;->address:Ljava/net/InetAddress;

    invoke-virtual {p1, v0}, Ljava/net/DatagramPacket;->setAddress(Ljava/net/InetAddress;)V

    .line 92
    iget v0, p0, Lcom/google/android/apps/googlevoice/udp/AddressPair;->port:I

    invoke-virtual {p1, v0}, Ljava/net/DatagramPacket;->setPort(I)V

    .line 93
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 7
    .parameter "obj"
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 67
    if-ne p0, p1, :cond_5

    .line 87
    :cond_4
    :goto_4
    return v1

    .line 70
    :cond_5
    if-nez p1, :cond_9

    move v1, v2

    .line 71
    goto :goto_4

    .line 73
    :cond_9
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_15

    move v1, v2

    .line 74
    goto :goto_4

    :cond_15
    move-object v0, p1

    .line 76
    check-cast v0, Lcom/google/android/apps/googlevoice/udp/AddressPair;

    .line 77
    .local v0, other:Lcom/google/android/apps/googlevoice/udp/AddressPair;
    iget-object v3, p0, Lcom/google/android/apps/googlevoice/udp/AddressPair;->address:Ljava/net/InetAddress;

    if-nez v3, :cond_22

    .line 78
    iget-object v3, v0, Lcom/google/android/apps/googlevoice/udp/AddressPair;->address:Ljava/net/InetAddress;

    if-eqz v3, :cond_2e

    move v1, v2

    .line 79
    goto :goto_4

    .line 81
    :cond_22
    iget-object v3, p0, Lcom/google/android/apps/googlevoice/udp/AddressPair;->address:Ljava/net/InetAddress;

    iget-object v4, v0, Lcom/google/android/apps/googlevoice/udp/AddressPair;->address:Ljava/net/InetAddress;

    invoke-virtual {v3, v4}, Ljava/net/InetAddress;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2e

    move v1, v2

    .line 82
    goto :goto_4

    .line 84
    :cond_2e
    iget v3, p0, Lcom/google/android/apps/googlevoice/udp/AddressPair;->port:I

    iget v4, v0, Lcom/google/android/apps/googlevoice/udp/AddressPair;->port:I

    if-eq v3, v4, :cond_4

    move v1, v2

    .line 85
    goto :goto_4
.end method

.method public getAddress()Ljava/net/InetAddress;
    .registers 2

    .prologue
    .line 48
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/udp/AddressPair;->address:Ljava/net/InetAddress;

    return-object v0
.end method

.method public getIpAddressAsString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 102
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/udp/AddressPair;->address:Ljava/net/InetAddress;

    invoke-virtual {v0}, Ljava/net/InetAddress;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getPort()I
    .registers 2

    .prologue
    .line 52
    iget v0, p0, Lcom/google/android/apps/googlevoice/udp/AddressPair;->port:I

    return v0
.end method

.method public hashCode()I
    .registers 3

    .prologue
    .line 62
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/udp/AddressPair;->address:Ljava/net/InetAddress;

    if-nez v0, :cond_d

    const/4 v0, 0x0

    :goto_5
    add-int/lit8 v0, v0, 0x1f

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/google/android/apps/googlevoice/udp/AddressPair;->port:I

    add-int/2addr v0, v1

    return v0

    :cond_d
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/udp/AddressPair;->address:Ljava/net/InetAddress;

    invoke-virtual {v0}, Ljava/net/InetAddress;->hashCode()I

    move-result v0

    goto :goto_5
.end method

.method public matchesAddressOf(Ljava/net/DatagramPacket;)Z
    .registers 4
    .parameter "testPacket"

    .prologue
    .line 96
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/udp/AddressPair;->address:Ljava/net/InetAddress;

    invoke-virtual {p1}, Ljava/net/DatagramPacket;->getAddress()Ljava/net/InetAddress;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/net/InetAddress;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    iget v0, p0, Lcom/google/android/apps/googlevoice/udp/AddressPair;->port:I

    invoke-virtual {p1}, Ljava/net/DatagramPacket;->getPort()I

    move-result v1

    if-ne v0, v1, :cond_16

    const/4 v0, 0x1

    :goto_15
    return v0

    :cond_16
    const/4 v0, 0x0

    goto :goto_15
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 57
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/google/android/apps/googlevoice/udp/AddressPair;->getIpAddressAsString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/apps/googlevoice/udp/AddressPair;->getPort()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
