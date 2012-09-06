.class public abstract Lcom/android/athome/picker/media/AbsMediaRouterCompat$VolumeCallback;
.super Ljava/lang/Object;
.source "AbsMediaRouterCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/athome/picker/media/AbsMediaRouterCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "VolumeCallback"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 215
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract onVolumeSetRequest(Ljava/lang/Object;I)V
.end method

.method public abstract onVolumeUpdateRequest(Ljava/lang/Object;I)V
.end method
