.class public LZO;
.super Ljava/lang/Object;
.source "QuirksDetection.java"


# direct methods
.method public static a()Z
    .registers 2

    .prologue
    .line 24
    const-string v0, "GT-I9000"

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
