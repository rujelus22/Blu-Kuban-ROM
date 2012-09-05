.class public Lcom/samsung/upnp/device/NTS;
.super Ljava/lang/Object;
.source "NTS.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 25
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final isAlive(Ljava/lang/String;)Z
    .registers 2
    .parameter "ntsValue"

    .prologue
    .line 33
    if-nez p0, :cond_4

    .line 34
    const/4 v0, 0x0

    .line 35
    :goto_3
    return v0

    :cond_4
    const-string v0, "ssdp:alive"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    goto :goto_3
.end method

.method public static final isByeBye(Ljava/lang/String;)Z
    .registers 2
    .parameter "ntsValue"

    .prologue
    .line 40
    if-nez p0, :cond_4

    .line 41
    const/4 v0, 0x0

    .line 42
    :goto_3
    return v0

    :cond_4
    const-string v0, "ssdp:byebye"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    goto :goto_3
.end method

.method public static final isEvent(Ljava/lang/String;)Z
    .registers 2
    .parameter "ntsValue"

    .prologue
    .line 47
    if-nez p0, :cond_4

    .line 48
    const/4 v0, 0x0

    .line 49
    :goto_3
    return v0

    :cond_4
    const-string v0, "upnp:propchange"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    goto :goto_3
.end method
