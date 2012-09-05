.class Lcom/google/android/music/EmptyViewController$4;
.super Ljava/lang/Object;
.source "EmptyViewController.java"

# interfaces
.implements Landroid/content/SyncStatusObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/music/EmptyViewController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/music/EmptyViewController;


# direct methods
.method constructor <init>(Lcom/google/android/music/EmptyViewController;)V
    .registers 2
    .parameter

    .prologue
    .line 239
    iput-object p1, p0, Lcom/google/android/music/EmptyViewController$4;->this$0:Lcom/google/android/music/EmptyViewController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStatusChanged(I)V
    .registers 4
    .parameter "which"

    .prologue
    .line 241
    iget-object v1, p0, Lcom/google/android/music/EmptyViewController$4;->this$0:Lcom/google/android/music/EmptyViewController;

    #calls: Lcom/google/android/music/EmptyViewController;->isSyncActiveOrPending()Z
    invoke-static {v1}, Lcom/google/android/music/EmptyViewController;->access$300(Lcom/google/android/music/EmptyViewController;)Z

    move-result v0

    .line 242
    .local v0, syncActiveOrPending:Z
    iget-object v1, p0, Lcom/google/android/music/EmptyViewController$4;->this$0:Lcom/google/android/music/EmptyViewController;

    #getter for: Lcom/google/android/music/EmptyViewController;->mSyncPendingOrActive:Z
    invoke-static {v1}, Lcom/google/android/music/EmptyViewController;->access$400(Lcom/google/android/music/EmptyViewController;)Z

    move-result v1

    if-eq v0, v1, :cond_18

    .line 243
    iget-object v1, p0, Lcom/google/android/music/EmptyViewController$4;->this$0:Lcom/google/android/music/EmptyViewController;

    #setter for: Lcom/google/android/music/EmptyViewController;->mSyncPendingOrActive:Z
    invoke-static {v1, v0}, Lcom/google/android/music/EmptyViewController;->access$402(Lcom/google/android/music/EmptyViewController;Z)Z

    .line 244
    iget-object v1, p0, Lcom/google/android/music/EmptyViewController$4;->this$0:Lcom/google/android/music/EmptyViewController;

    #calls: Lcom/google/android/music/EmptyViewController;->onVariablesChanged()V
    invoke-static {v1}, Lcom/google/android/music/EmptyViewController;->access$200(Lcom/google/android/music/EmptyViewController;)V

    .line 246
    :cond_18
    return-void
.end method
