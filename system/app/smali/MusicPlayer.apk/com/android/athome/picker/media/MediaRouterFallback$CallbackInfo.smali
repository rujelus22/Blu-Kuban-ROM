.class Lcom/android/athome/picker/media/MediaRouterFallback$CallbackInfo;
.super Ljava/lang/Object;
.source "MediaRouterFallback.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/athome/picker/media/MediaRouterFallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "CallbackInfo"
.end annotation


# instance fields
.field public cb:Lcom/android/athome/picker/media/AbsMediaRouterCompat$Callback;

.field public type:I


# direct methods
.method public constructor <init>(Lcom/android/athome/picker/media/AbsMediaRouterCompat$Callback;I)V
    .registers 3
    .parameter "cb"
    .parameter "type"

    .prologue
    .line 1198
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1199
    iput-object p1, p0, Lcom/android/athome/picker/media/MediaRouterFallback$CallbackInfo;->cb:Lcom/android/athome/picker/media/AbsMediaRouterCompat$Callback;

    .line 1200
    iput p2, p0, Lcom/android/athome/picker/media/MediaRouterFallback$CallbackInfo;->type:I

    .line 1201
    return-void
.end method
