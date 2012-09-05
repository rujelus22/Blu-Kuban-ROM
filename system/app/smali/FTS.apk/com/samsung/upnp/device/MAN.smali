.class public Lcom/samsung/upnp/device/MAN;
.super Ljava/lang/Object;
.source "MAN.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 24
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final isDiscover(Ljava/lang/String;)Z
    .registers 2
    .parameter "value"

    .prologue
    .line 30
    if-nez p0, :cond_4

    .line 31
    const/4 v0, 0x0

    .line 34
    :goto_3
    return v0

    .line 32
    :cond_4
    const-string v0, "ssdp:discover"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 33
    const/4 v0, 0x1

    goto :goto_3

    .line 34
    :cond_e
    const-string v0, "\"ssdp:discover\""

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_3
.end method
