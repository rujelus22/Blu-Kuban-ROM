.class Lcom/google/android/music/athome/AtHomeStateController$3;
.super Ljava/lang/Object;
.source "AtHomeStateController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/music/athome/AtHomeStateController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/music/athome/AtHomeStateController;


# direct methods
.method constructor <init>(Lcom/google/android/music/athome/AtHomeStateController;)V
    .registers 2
    .parameter

    .prologue
    .line 231
    iput-object p1, p0, Lcom/google/android/music/athome/AtHomeStateController$3;->this$0:Lcom/google/android/music/athome/AtHomeStateController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 234
    iget-object v1, p0, Lcom/google/android/music/athome/AtHomeStateController$3;->this$0:Lcom/google/android/music/athome/AtHomeStateController;

    iget-object v2, p0, Lcom/google/android/music/athome/AtHomeStateController$3;->this$0:Lcom/google/android/music/athome/AtHomeStateController;

    #getter for: Lcom/google/android/music/athome/AtHomeStateController;->mSelectMediaRouteWhenAvailable:Ljava/lang/String;
    invoke-static {v2}, Lcom/google/android/music/athome/AtHomeStateController;->access$400(Lcom/google/android/music/athome/AtHomeStateController;)Ljava/lang/String;

    move-result-object v2

    #calls: Lcom/google/android/music/athome/AtHomeStateController;->findMediaRouteForGroupId(Ljava/lang/String;)Ljava/lang/Object;
    invoke-static {v1, v2}, Lcom/google/android/music/athome/AtHomeStateController;->access$800(Lcom/google/android/music/athome/AtHomeStateController;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 235
    .local v0, route:Ljava/lang/Object;
    if-eqz v0, :cond_1f

    .line 236
    iget-object v1, p0, Lcom/google/android/music/athome/AtHomeStateController$3;->this$0:Lcom/google/android/music/athome/AtHomeStateController;

    #getter for: Lcom/google/android/music/athome/AtHomeStateController;->mMediaRouter:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/android/music/athome/AtHomeStateController;->access$900(Lcom/google/android/music/athome/AtHomeStateController;)Ljava/lang/Object;

    move-result-object v1

    const/high16 v2, 0x80

    invoke-static {v1, v2, v0}, Lcom/android/athome/picker/media/MediaRouterCompat;->selectRoute(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 238
    iget-object v1, p0, Lcom/google/android/music/athome/AtHomeStateController$3;->this$0:Lcom/google/android/music/athome/AtHomeStateController;

    const/4 v2, 0x0

    #setter for: Lcom/google/android/music/athome/AtHomeStateController;->mSelectMediaRouteWhenAvailable:Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/google/android/music/athome/AtHomeStateController;->access$402(Lcom/google/android/music/athome/AtHomeStateController;Ljava/lang/String;)Ljava/lang/String;

    .line 240
    :cond_1f
    return-void
.end method
