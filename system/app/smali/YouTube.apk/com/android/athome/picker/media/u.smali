.class final Lcom/android/athome/picker/media/u;
.super Landroid/media/MediaRouter$VolumeCallback;
.source "SourceFile"


# instance fields
.field private a:Lcom/android/athome/picker/media/d;


# direct methods
.method constructor <init>(Lcom/android/athome/picker/media/d;)V
    .registers 2
    .parameter

    .prologue
    .line 327
    invoke-direct {p0}, Landroid/media/MediaRouter$VolumeCallback;-><init>()V

    .line 328
    iput-object p1, p0, Lcom/android/athome/picker/media/u;->a:Lcom/android/athome/picker/media/d;

    .line 329
    return-void
.end method


# virtual methods
.method public final onVolumeSetRequest(Landroid/media/MediaRouter$RouteInfo;I)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 338
    iget-object v0, p0, Lcom/android/athome/picker/media/u;->a:Lcom/android/athome/picker/media/d;

    invoke-virtual {v0, p1, p2}, Lcom/android/athome/picker/media/d;->b(Ljava/lang/Object;I)V

    .line 339
    return-void
.end method

.method public final onVolumeUpdateRequest(Landroid/media/MediaRouter$RouteInfo;I)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 333
    iget-object v0, p0, Lcom/android/athome/picker/media/u;->a:Lcom/android/athome/picker/media/d;

    invoke-virtual {v0, p1, p2}, Lcom/android/athome/picker/media/d;->a(Ljava/lang/Object;I)V

    .line 334
    return-void
.end method
