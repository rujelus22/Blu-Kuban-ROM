.class Lcom/google/android/music/ActionbarController$1;
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
    .line 148
    iput-object p1, p0, Lcom/google/android/music/ActionbarController$1;->this$0:Lcom/google/android/music/ActionbarController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 150
    invoke-static {}, Lcom/google/android/music/MusicUtils;->assertUiThread()V

    .line 151
    iget-object v0, p0, Lcom/google/android/music/ActionbarController$1;->this$0:Lcom/google/android/music/ActionbarController;

    #getter for: Lcom/google/android/music/ActionbarController;->mCurrentActionbarConfig:Lcom/google/android/music/activitymanagement/MusicFragment$ActionbarConfig;
    invoke-static {v0}, Lcom/google/android/music/ActionbarController;->access$000(Lcom/google/android/music/ActionbarController;)Lcom/google/android/music/activitymanagement/MusicFragment$ActionbarConfig;

    move-result-object v0

    if-eqz v0, :cond_16

    .line 152
    iget-object v0, p0, Lcom/google/android/music/ActionbarController$1;->this$0:Lcom/google/android/music/ActionbarController;

    iget-object v1, p0, Lcom/google/android/music/ActionbarController$1;->this$0:Lcom/google/android/music/ActionbarController;

    #getter for: Lcom/google/android/music/ActionbarController;->mCurrentActionbarConfig:Lcom/google/android/music/activitymanagement/MusicFragment$ActionbarConfig;
    invoke-static {v1}, Lcom/google/android/music/ActionbarController;->access$000(Lcom/google/android/music/ActionbarController;)Lcom/google/android/music/activitymanagement/MusicFragment$ActionbarConfig;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/music/ActionbarController;->updateViewVisibilities(Lcom/google/android/music/activitymanagement/MusicFragment$ActionbarConfig;)V

    .line 154
    :cond_16
    return-void
.end method
