.class Lcom/google/android/music/ActionbarController$4;
.super Ljava/lang/Object;
.source "ActionbarController.java"

# interfaces
.implements Ljava/lang/Runnable;


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
    .line 299
    iput-object p1, p0, Lcom/google/android/music/ActionbarController$4;->this$0:Lcom/google/android/music/ActionbarController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 301
    iget-object v0, p0, Lcom/google/android/music/ActionbarController$4;->this$0:Lcom/google/android/music/ActionbarController;

    iget-object v1, p0, Lcom/google/android/music/ActionbarController$4;->this$0:Lcom/google/android/music/ActionbarController;

    #calls: Lcom/google/android/music/ActionbarController;->isSyncActiveOrPending()Z
    invoke-static {v1}, Lcom/google/android/music/ActionbarController;->access$300(Lcom/google/android/music/ActionbarController;)Z

    move-result v1

    #calls: Lcom/google/android/music/ActionbarController;->setSyncStatus(Z)V
    invoke-static {v0, v1}, Lcom/google/android/music/ActionbarController;->access$400(Lcom/google/android/music/ActionbarController;Z)V

    .line 302
    return-void
.end method
