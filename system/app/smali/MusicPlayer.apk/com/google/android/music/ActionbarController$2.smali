.class Lcom/google/android/music/ActionbarController$2;
.super Lcom/android/athome/picker/media/AbsMediaRouterCompat$SimpleCallback;
.source "ActionbarController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/music/ActionbarController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/music/ActionbarController;


# direct methods
.method constructor <init>(Lcom/google/android/music/ActionbarController;)V
    .registers 2
    .parameter

    .prologue
    .line 158
    iput-object p1, p0, Lcom/google/android/music/ActionbarController$2;->this$0:Lcom/google/android/music/ActionbarController;

    invoke-direct {p0}, Lcom/android/athome/picker/media/AbsMediaRouterCompat$SimpleCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onRouteAdded(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 4
    .parameter "router"
    .parameter "routeInfo"

    .prologue
    .line 162
    iget-object v0, p0, Lcom/google/android/music/ActionbarController$2;->this$0:Lcom/google/android/music/ActionbarController;

    #calls: Lcom/google/android/music/ActionbarController;->refreshMultipleAudioRoutesAvailable()V
    invoke-static {v0}, Lcom/google/android/music/ActionbarController;->access$100(Lcom/google/android/music/ActionbarController;)V

    .line 163
    return-void
.end method

.method public onRouteGrouped(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V
    .registers 6
    .parameter "router"
    .parameter "info"
    .parameter "group"
    .parameter "index"

    .prologue
    .line 173
    iget-object v0, p0, Lcom/google/android/music/ActionbarController$2;->this$0:Lcom/google/android/music/ActionbarController;

    #calls: Lcom/google/android/music/ActionbarController;->refreshMultipleAudioRoutesAvailable()V
    invoke-static {v0}, Lcom/google/android/music/ActionbarController;->access$100(Lcom/google/android/music/ActionbarController;)V

    .line 174
    return-void
.end method

.method public onRouteRemoved(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 4
    .parameter "router"
    .parameter "routeInfo"

    .prologue
    .line 167
    iget-object v0, p0, Lcom/google/android/music/ActionbarController$2;->this$0:Lcom/google/android/music/ActionbarController;

    #calls: Lcom/google/android/music/ActionbarController;->refreshMultipleAudioRoutesAvailable()V
    invoke-static {v0}, Lcom/google/android/music/ActionbarController;->access$100(Lcom/google/android/music/ActionbarController;)V

    .line 168
    return-void
.end method

.method public onRouteUngrouped(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 5
    .parameter "router"
    .parameter "info"
    .parameter "group"

    .prologue
    .line 178
    iget-object v0, p0, Lcom/google/android/music/ActionbarController$2;->this$0:Lcom/google/android/music/ActionbarController;

    #calls: Lcom/google/android/music/ActionbarController;->refreshMultipleAudioRoutesAvailable()V
    invoke-static {v0}, Lcom/google/android/music/ActionbarController;->access$100(Lcom/google/android/music/ActionbarController;)V

    .line 179
    return-void
.end method
