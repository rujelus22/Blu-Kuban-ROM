.class final enum LXE;
.super LXD;
.source "Clocks.java"


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 19
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, LXD;-><init>(Ljava/lang/String;ILXE;)V

    return-void
.end method


# virtual methods
.method public a()J
    .registers 3

    .prologue
    .line 22
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    return-wide v0
.end method
