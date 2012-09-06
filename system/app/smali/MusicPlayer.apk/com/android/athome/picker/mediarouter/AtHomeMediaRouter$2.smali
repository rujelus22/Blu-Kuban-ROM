.class Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter$2;
.super Lcom/android/athome/picker/media/AbsMediaRouterCompat$VolumeCallback;
.source "AtHomeMediaRouter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;


# direct methods
.method constructor <init>(Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;)V
    .registers 2
    .parameter

    .prologue
    .line 165
    iput-object p1, p0, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter$2;->this$0:Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;

    invoke-direct {p0}, Lcom/android/athome/picker/media/AbsMediaRouterCompat$VolumeCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onVolumeSetRequest(Ljava/lang/Object;I)V
    .registers 7
    .parameter "routeInfo"
    .parameter "volume"

    .prologue
    .line 184
    const-string v1, "AtHomeMediaRouter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onVolumeSetRequest: routeInfo("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") volume:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    iget-object v1, p0, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter$2;->this$0:Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;

    const/16 v2, 0xc8

    #calls: Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;->stopTgsVolumeUpdates(I)V
    invoke-static {v1, v2}, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;->access$500(Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;I)V

    .line 186
    invoke-static {p1}, Lcom/android/athome/picker/media/MediaRouterCompat$RouteInfo;->getCategory(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 187
    .local v0, category:Ljava/lang/Object;
    invoke-static {}, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;->access$200()Ljava/lang/Object;

    move-result-object v1

    if-eq v0, v1, :cond_39

    invoke-static {}, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;->access$300()Ljava/lang/Object;

    move-result-object v1

    if-ne v0, v1, :cond_41

    .line 189
    :cond_39
    invoke-static {p1, p2}, Lcom/android/athome/picker/media/MediaRouterCompat$UserRouteInfo;->setVolume(Ljava/lang/Object;I)V

    .line 190
    iget-object v1, p0, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter$2;->this$0:Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;

    #calls: Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;->setReceiverVolume(Ljava/lang/Object;I)V
    invoke-static {v1, p1, p2}, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;->access$400(Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;Ljava/lang/Object;I)V

    .line 192
    :cond_41
    return-void
.end method

.method public onVolumeUpdateRequest(Ljava/lang/Object;I)V
    .registers 9
    .parameter "routeInfo"
    .parameter "direction"

    .prologue
    .line 170
    invoke-static {p1}, Lcom/android/athome/picker/media/MediaRouterCompat$RouteInfo;->getVolume(Ljava/lang/Object;)I

    move-result v3

    mul-int/lit8 v4, p2, 0x64

    div-int/lit8 v4, v4, 0x21

    add-int v1, v3, v4

    .line 172
    .local v1, newVolume:I
    const-string v3, "AtHomeMediaRouter"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "OnVolumeUpdateRequest: routeInfo("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") steps:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    invoke-static {p1}, Lcom/android/athome/picker/media/MediaRouterCompat$RouteInfo;->getCategory(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 174
    .local v0, category:Ljava/lang/Object;
    invoke-static {}, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;->access$200()Ljava/lang/Object;

    move-result-object v3

    if-eq v0, v3, :cond_3c

    invoke-static {}, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;->access$300()Ljava/lang/Object;

    move-result-object v3

    if-ne v0, v3, :cond_4f

    .line 176
    :cond_3c
    const/4 v3, 0x0

    const/16 v4, 0x64

    invoke-static {v4, v1}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 177
    .local v2, volume:I
    invoke-static {p1, v2}, Lcom/android/athome/picker/media/MediaRouterCompat$UserRouteInfo;->setVolume(Ljava/lang/Object;I)V

    .line 178
    iget-object v3, p0, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter$2;->this$0:Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;

    #calls: Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;->setReceiverVolume(Ljava/lang/Object;I)V
    invoke-static {v3, p1, v2}, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;->access$400(Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;Ljava/lang/Object;I)V

    .line 180
    .end local v2           #volume:I
    :cond_4f
    return-void
.end method
