.class public Lcom/google/android/apps/googlevoice/udp/UdpUtils;
.super Ljava/lang/Object;
.source "UdpUtils.java"


# static fields
.field private static final CALL_ID_PATTERN:Ljava/util/regex/Pattern;

.field private static final CONTACT_PATTERN:Ljava/util/regex/Pattern;

.field private static final PATTERNS:[Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 72
    const-string v0, "Contact: <sip:[^>]+@([0-9.:]+)>"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/googlevoice/udp/UdpUtils;->CONTACT_PATTERN:Ljava/util/regex/Pattern;

    .line 73
    const-string v0, "Call-ID: ([^ \r\n]+)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/googlevoice/udp/UdpUtils;->CALL_ID_PATTERN:Ljava/util/regex/Pattern;

    .line 74
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/util/regex/Pattern;

    const/4 v1, 0x0

    sget-object v2, Lcom/google/android/apps/googlevoice/udp/UdpUtils;->CONTACT_PATTERN:Ljava/util/regex/Pattern;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/google/android/apps/googlevoice/udp/UdpUtils;->CALL_ID_PATTERN:Ljava/util/regex/Pattern;

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/apps/googlevoice/udp/UdpUtils;->PATTERNS:[Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFourNullByteDatagramPacket()Ljava/net/DatagramPacket;
    .registers 4

    .prologue
    .line 58
    const/4 v1, 0x4

    new-array v0, v1, [B

    fill-array-data v0, :array_e

    .line 59
    .local v0, data:[B
    new-instance v1, Ljava/net/DatagramPacket;

    array-length v2, v0

    invoke-direct {v1, v0, v2}, Ljava/net/DatagramPacket;-><init>([BI)V

    return-object v1

    .line 58
    nop

    :array_e
    .array-data 0x1
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method public createPacket(Ljava/lang/String;Lcom/google/android/apps/googlevoice/udp/AddressPair;)Ljava/net/DatagramPacket;
    .registers 4
    .parameter "content"
    .parameter "destination"

    .prologue
    .line 69
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/google/android/apps/googlevoice/udp/UdpUtils;->createPacket([BLcom/google/android/apps/googlevoice/udp/AddressPair;)Ljava/net/DatagramPacket;

    move-result-object v0

    return-object v0
.end method

.method public createPacket([BLcom/google/android/apps/googlevoice/udp/AddressPair;)Ljava/net/DatagramPacket;
    .registers 5
    .parameter "content"
    .parameter "destination"

    .prologue
    .line 63
    new-instance v0, Ljava/net/DatagramPacket;

    array-length v1, p1

    invoke-direct {v0, p1, v1}, Ljava/net/DatagramPacket;-><init>([BI)V

    .line 64
    .local v0, packet:Ljava/net/DatagramPacket;
    invoke-virtual {p2, v0}, Lcom/google/android/apps/googlevoice/udp/AddressPair;->addressThisPacket(Ljava/net/DatagramPacket;)V

    .line 65
    return-object v0
.end method

.method public getAsUtf8String(Ljava/net/DatagramPacket;)Ljava/lang/String;
    .registers 8
    .parameter "packet"

    .prologue
    .line 22
    :try_start_0
    new-instance v1, Ljava/lang/String;

    invoke-virtual {p1}, Ljava/net/DatagramPacket;->getData()[B

    move-result-object v2

    invoke-virtual {p1}, Ljava/net/DatagramPacket;->getOffset()I

    move-result v3

    invoke-virtual {p1}, Ljava/net/DatagramPacket;->getLength()I

    move-result v4

    const-string v5, "UTF-8"

    invoke-direct {v1, v2, v3, v4, v5}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_13
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_13} :catch_14

    return-object v1

    .line 23
    :catch_14
    move-exception v0

    .line 24
    .local v0, e:Ljava/io/UnsupportedEncodingException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Impossible - all JVMs are required to support UTF-8"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getSipPacketSummaryLine(Ljava/lang/String;)Ljava/lang/String;
    .registers 12
    .parameter "contents"

    .prologue
    .line 80
    const-string v8, "\r\n"

    invoke-virtual {p1, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 81
    .local v5, parts:[Ljava/lang/String;
    array-length v8, v5

    const/4 v9, 0x2

    if-ge v8, v9, :cond_d

    .line 82
    const-string v8, "[doesn\'t look like a sip packet]"

    .line 102
    :goto_c
    return-object v8

    .line 84
    :cond_d
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 85
    .local v7, stringBuilder:Ljava/lang/StringBuilder;
    const-string v8, "\r\n"

    invoke-virtual {p1, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    aget-object v8, v8, v9

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    const-string v8, " ["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    const/4 v1, 0x0

    .line 88
    .local v1, foundOne:Z
    sget-object v0, Lcom/google/android/apps/googlevoice/udp/UdpUtils;->PATTERNS:[Ljava/util/regex/Pattern;

    .local v0, arr$:[Ljava/util/regex/Pattern;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_28
    if-ge v2, v3, :cond_49

    aget-object v6, v0, v2

    .line 89
    .local v6, pattern:Ljava/util/regex/Pattern;
    invoke-virtual {v6, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    .line 90
    .local v4, matcher:Ljava/util/regex/Matcher;
    if-eqz v1, :cond_37

    .line 91
    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    :cond_37
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->find()Z

    move-result v8

    if-eqz v8, :cond_46

    .line 94
    const/4 v8, 0x1

    invoke-virtual {v4, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    const/4 v1, 0x1

    .line 88
    :cond_46
    add-int/lit8 v2, v2, 0x1

    goto :goto_28

    .line 98
    .end local v4           #matcher:Ljava/util/regex/Matcher;
    .end local v6           #pattern:Ljava/util/regex/Pattern;
    :cond_49
    if-nez v1, :cond_50

    .line 99
    const-string v8, "couldn\'t get contact or call-id"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    :cond_50
    const-string v8, "]"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto :goto_c
.end method

.method public packetsContainSameData(Ljava/net/DatagramPacket;Ljava/net/DatagramPacket;)Z
    .registers 11
    .parameter "packet1"
    .parameter "packet2"

    .prologue
    const/4 v5, 0x0

    .line 41
    invoke-virtual {p1}, Ljava/net/DatagramPacket;->getLength()I

    move-result v2

    .line 42
    .local v2, length:I
    invoke-virtual {p2}, Ljava/net/DatagramPacket;->getLength()I

    move-result v6

    if-eq v2, v6, :cond_c

    .line 54
    :cond_b
    :goto_b
    return v5

    .line 45
    :cond_c
    invoke-virtual {p1}, Ljava/net/DatagramPacket;->getData()[B

    move-result-object v3

    .line 46
    .local v3, packet1Data:[B
    invoke-virtual {p2}, Ljava/net/DatagramPacket;->getData()[B

    move-result-object v4

    .line 49
    .local v4, packet2Data:[B
    invoke-virtual {p1}, Ljava/net/DatagramPacket;->getOffset()I

    move-result v0

    .local v0, i:I
    invoke-virtual {p2}, Ljava/net/DatagramPacket;->getOffset()I

    move-result v1

    .local v1, j:I
    :goto_1c
    if-ge v0, v2, :cond_29

    .line 50
    aget-byte v6, v3, v0

    aget-byte v7, v4, v1

    if-ne v6, v7, :cond_b

    .line 49
    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1c

    .line 54
    :cond_29
    const/4 v5, 0x1

    goto :goto_b
.end method

.method public setAsUtf8String(Ljava/net/DatagramPacket;Ljava/lang/String;)V
    .registers 6
    .parameter "packet"
    .parameter "string"

    .prologue
    .line 34
    :try_start_0
    const-string v1, "UTF-8"

    invoke-virtual {p2, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/net/DatagramPacket;->setData([B)V
    :try_end_9
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_9} :catch_a

    .line 38
    return-void

    .line 35
    :catch_a
    move-exception v0

    .line 36
    .local v0, e:Ljava/io/UnsupportedEncodingException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Impossible - all JVMs are required to support UTF-8"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
