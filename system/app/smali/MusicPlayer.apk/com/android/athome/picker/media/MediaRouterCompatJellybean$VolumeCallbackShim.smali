.class Lcom/android/athome/picker/media/MediaRouterCompatJellybean$VolumeCallbackShim;
.super Landroid/media/MediaRouter$VolumeCallback;
.source "MediaRouterCompatJellybean.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/athome/picker/media/MediaRouterCompatJellybean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "VolumeCallbackShim"
.end annotation


# instance fields
.field private mAppCallback:Lcom/android/athome/picker/media/AbsMediaRouterCompat$VolumeCallback;


# direct methods
.method constructor <init>(Lcom/android/athome/picker/media/AbsMediaRouterCompat$VolumeCallback;)V
    .registers 2
    .parameter "cb"

    .prologue
    .line 327
    invoke-direct {p0}, Landroid/media/MediaRouter$VolumeCallback;-><init>()V

    .line 328
    iput-object p1, p0, Lcom/android/athome/picker/media/MediaRouterCompatJellybean$VolumeCallbackShim;->mAppCallback:Lcom/android/athome/picker/media/AbsMediaRouterCompat$VolumeCallback;

    .line 329
    return-void
.end method


# virtual methods
.method public onVolumeSetRequest(Landroid/media/MediaRouter$RouteInfo;I)V
    .registers 4
    .parameter "info"
    .parameter "volume"

    .prologue
    .line 338
    iget-object v0, p0, Lcom/android/athome/picker/media/MediaRouterCompatJellybean$VolumeCallbackShim;->mAppCallback:Lcom/android/athome/picker/media/AbsMediaRouterCompat$VolumeCallback;

    invoke-virtual {v0, p1, p2}, Lcom/android/athome/picker/media/AbsMediaRouterCompat$VolumeCallback;->onVolumeSetRequest(Ljava/lang/Object;I)V

    .line 339
    return-void
.end method

.method public onVolumeUpdateRequest(Landroid/media/MediaRouter$RouteInfo;I)V
    .registers 4
    .parameter "info"
    .parameter "direction"

    .prologue
    .line 333
    iget-object v0, p0, Lcom/android/athome/picker/media/MediaRouterCompatJellybean$VolumeCallbackShim;->mAppCallback:Lcom/android/athome/picker/media/AbsMediaRouterCompat$VolumeCallback;

    invoke-virtual {v0, p1, p2}, Lcom/android/athome/picker/media/AbsMediaRouterCompat$VolumeCallback;->onVolumeUpdateRequest(Ljava/lang/Object;I)V

    .line 334
    return-void
.end method
