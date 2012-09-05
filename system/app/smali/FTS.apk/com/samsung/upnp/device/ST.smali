.class public Lcom/samsung/upnp/device/ST;
.super Ljava/lang/Object;
.source "ST.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 24
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final isAllDevice(Ljava/lang/String;)Z
    .registers 2
    .parameter "value"

    .prologue
    .line 36
    if-nez p0, :cond_4

    .line 37
    const/4 v0, 0x0

    .line 40
    :goto_3
    return v0

    .line 38
    :cond_4
    const-string v0, "ssdp:all"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 39
    const/4 v0, 0x1

    goto :goto_3

    .line 40
    :cond_e
    const-string v0, "\"ssdp:all\""

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_3
.end method

.method public static final isPMRDevice(Ljava/lang/String;)Z
    .registers 2
    .parameter "value"

    .prologue
    .line 53
    if-nez p0, :cond_4

    .line 54
    const/4 v0, 0x0

    .line 57
    :goto_3
    return v0

    .line 55
    :cond_4
    const-string v0, "urn:samsung.com:device:PersonalMessageReceiver:1"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 56
    const/4 v0, 0x1

    goto :goto_3

    .line 57
    :cond_e
    const-string v0, "\"urn:samsung.com:device:PersonalMessageReceiver:1\""

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_3
.end method

.method public static final isRootDevice(Ljava/lang/String;)Z
    .registers 2
    .parameter "value"

    .prologue
    .line 45
    if-nez p0, :cond_4

    .line 46
    const/4 v0, 0x0

    .line 49
    :goto_3
    return v0

    .line 47
    :cond_4
    const-string v0, "upnp:rootdevice"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 48
    const/4 v0, 0x1

    goto :goto_3

    .line 49
    :cond_e
    const-string v0, "\"upnp:rootdevice\""

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_3
.end method

.method public static final isURNDevice(Ljava/lang/String;)Z
    .registers 2
    .parameter "value"

    .prologue
    .line 71
    if-nez p0, :cond_4

    .line 72
    const/4 v0, 0x0

    .line 75
    :goto_3
    return v0

    .line 73
    :cond_4
    const-string v0, "urn:"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 74
    const/4 v0, 0x1

    goto :goto_3

    .line 75
    :cond_e
    const-string v0, "\"urn:"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    goto :goto_3
.end method

.method public static final isURNService(Ljava/lang/String;)Z
    .registers 2
    .parameter "value"

    .prologue
    .line 80
    if-nez p0, :cond_4

    .line 81
    const/4 v0, 0x0

    .line 84
    :goto_3
    return v0

    .line 82
    :cond_4
    const-string v0, "urn:"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 83
    const/4 v0, 0x1

    goto :goto_3

    .line 84
    :cond_e
    const-string v0, "\"urn:"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    goto :goto_3
.end method

.method public static final isUUIDDevice(Ljava/lang/String;)Z
    .registers 2
    .parameter "value"

    .prologue
    .line 62
    if-nez p0, :cond_4

    .line 63
    const/4 v0, 0x0

    .line 66
    :goto_3
    return v0

    .line 64
    :cond_4
    const-string v0, "uuid"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 65
    const/4 v0, 0x1

    goto :goto_3

    .line 66
    :cond_e
    const-string v0, "\"uuid"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    goto :goto_3
.end method
