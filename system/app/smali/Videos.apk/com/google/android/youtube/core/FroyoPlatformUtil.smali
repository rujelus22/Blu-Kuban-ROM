.class public Lcom/google/android/youtube/core/FroyoPlatformUtil;
.super Ljava/lang/Object;
.source "FroyoPlatformUtil.java"

# interfaces
.implements Lcom/google/android/youtube/core/PlatformUtil;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isLargeHeapAvailable(Landroid/content/Context;)Z
    .registers 3
    .parameter "context"

    .prologue
    .line 40
    const/4 v0, 0x0

    return v0
.end method

.method public isTablet(Landroid/content/Context;)Z
    .registers 3
    .parameter "context"

    .prologue
    .line 16
    const/4 v0, 0x0

    return v0
.end method
