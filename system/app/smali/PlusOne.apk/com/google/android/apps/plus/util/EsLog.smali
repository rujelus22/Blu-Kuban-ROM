.class public Lcom/google/android/apps/plus/util/EsLog;
.super Ljava/lang/Object;
.source "EsLog.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isLoggable(Ljava/lang/String;I)Z
    .registers 3
    .parameter "tag"
    .parameter "level"

    .prologue
    .line 26
    const/4 v0, 0x6

    if-ne p1, v0, :cond_b

    invoke-static {p0, p1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_b

    const/4 v0, 0x1

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method
