.class public Lcom/samsung/upnp/device/NT;
.super Ljava/lang/Object;
.source "NT.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 24
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final isPMRDevice(Ljava/lang/String;)Z
    .registers 2
    .parameter "value"

    .prologue
    .line 37
    if-nez p0, :cond_4

    .line 38
    const/4 v0, 0x0

    .line 39
    :goto_3
    return v0

    :cond_4
    const-string v0, "PersonalMessageReceiver"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    goto :goto_3
.end method
