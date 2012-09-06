.class Lcom/android/athome/picker/media/MediaRouterFallback$VolumeCallbackInfo;
.super Ljava/lang/Object;
.source "MediaRouterFallback.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/athome/picker/media/MediaRouterFallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "VolumeCallbackInfo"
.end annotation


# instance fields
.field public final route:Lcom/android/athome/picker/media/MediaRouterFallback$RouteInfo;

.field public final vcb:Lcom/android/athome/picker/media/AbsMediaRouterCompat$VolumeCallback;


# direct methods
.method public constructor <init>(Lcom/android/athome/picker/media/AbsMediaRouterCompat$VolumeCallback;Lcom/android/athome/picker/media/MediaRouterFallback$RouteInfo;)V
    .registers 3
    .parameter "vcb"
    .parameter "route"

    .prologue
    .line 1208
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1209
    iput-object p1, p0, Lcom/android/athome/picker/media/MediaRouterFallback$VolumeCallbackInfo;->vcb:Lcom/android/athome/picker/media/AbsMediaRouterCompat$VolumeCallback;

    .line 1210
    iput-object p2, p0, Lcom/android/athome/picker/media/MediaRouterFallback$VolumeCallbackInfo;->route:Lcom/android/athome/picker/media/MediaRouterFallback$RouteInfo;

    .line 1211
    return-void
.end method
