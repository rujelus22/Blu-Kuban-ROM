.class Lcom/android/athome/picker/media/MediaRouteButtonFallback$MediaRouteCallback;
.super Lcom/android/athome/picker/media/AbsMediaRouterCompat$SimpleCallback;
.source "MediaRouteButtonFallback.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/athome/picker/media/MediaRouteButtonFallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MediaRouteCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/athome/picker/media/MediaRouteButtonFallback;


# direct methods
.method private constructor <init>(Lcom/android/athome/picker/media/MediaRouteButtonFallback;)V
    .registers 2
    .parameter

    .prologue
    .line 363
    iput-object p1, p0, Lcom/android/athome/picker/media/MediaRouteButtonFallback$MediaRouteCallback;->this$0:Lcom/android/athome/picker/media/MediaRouteButtonFallback;

    invoke-direct {p0}, Lcom/android/athome/picker/media/AbsMediaRouterCompat$SimpleCallback;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/athome/picker/media/MediaRouteButtonFallback;Lcom/android/athome/picker/media/MediaRouteButtonFallback$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 363
    invoke-direct {p0, p1}, Lcom/android/athome/picker/media/MediaRouteButtonFallback$MediaRouteCallback;-><init>(Lcom/android/athome/picker/media/MediaRouteButtonFallback;)V

    return-void
.end method


# virtual methods
.method public onRouteAdded(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 4
    .parameter "router"
    .parameter "info"

    .prologue
    .line 376
    iget-object v0, p0, Lcom/android/athome/picker/media/MediaRouteButtonFallback$MediaRouteCallback;->this$0:Lcom/android/athome/picker/media/MediaRouteButtonFallback;

    invoke-virtual {v0}, Lcom/android/athome/picker/media/MediaRouteButtonFallback;->updateRouteCount()V

    .line 377
    return-void
.end method

.method public onRouteGrouped(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V
    .registers 6
    .parameter "router"
    .parameter "info"
    .parameter "group"
    .parameter "index"

    .prologue
    .line 387
    iget-object v0, p0, Lcom/android/athome/picker/media/MediaRouteButtonFallback$MediaRouteCallback;->this$0:Lcom/android/athome/picker/media/MediaRouteButtonFallback;

    invoke-virtual {v0}, Lcom/android/athome/picker/media/MediaRouteButtonFallback;->updateRouteCount()V

    .line 388
    return-void
.end method

.method public onRouteRemoved(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 4
    .parameter "router"
    .parameter "info"

    .prologue
    .line 381
    iget-object v0, p0, Lcom/android/athome/picker/media/MediaRouteButtonFallback$MediaRouteCallback;->this$0:Lcom/android/athome/picker/media/MediaRouteButtonFallback;

    invoke-virtual {v0}, Lcom/android/athome/picker/media/MediaRouteButtonFallback;->updateRouteCount()V

    .line 382
    return-void
.end method

.method public onRouteSelected(Ljava/lang/Object;ILjava/lang/Object;)V
    .registers 5
    .parameter "router"
    .parameter "type"
    .parameter "info"

    .prologue
    .line 366
    iget-object v0, p0, Lcom/android/athome/picker/media/MediaRouteButtonFallback$MediaRouteCallback;->this$0:Lcom/android/athome/picker/media/MediaRouteButtonFallback;

    invoke-virtual {v0}, Lcom/android/athome/picker/media/MediaRouteButtonFallback;->updateRemoteIndicator()V

    .line 367
    return-void
.end method

.method public onRouteUngrouped(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 5
    .parameter "router"
    .parameter "info"
    .parameter "group"

    .prologue
    .line 392
    iget-object v0, p0, Lcom/android/athome/picker/media/MediaRouteButtonFallback$MediaRouteCallback;->this$0:Lcom/android/athome/picker/media/MediaRouteButtonFallback;

    invoke-virtual {v0}, Lcom/android/athome/picker/media/MediaRouteButtonFallback;->updateRouteCount()V

    .line 393
    return-void
.end method

.method public onRouteUnselected(Ljava/lang/Object;ILjava/lang/Object;)V
    .registers 5
    .parameter "router"
    .parameter "type"
    .parameter "info"

    .prologue
    .line 371
    iget-object v0, p0, Lcom/android/athome/picker/media/MediaRouteButtonFallback$MediaRouteCallback;->this$0:Lcom/android/athome/picker/media/MediaRouteButtonFallback;

    invoke-virtual {v0}, Lcom/android/athome/picker/media/MediaRouteButtonFallback;->updateRemoteIndicator()V

    .line 372
    return-void
.end method
