.class Lcom/google/android/apps/plus/fragments/MessageListFragment$5;
.super Ljava/lang/Object;
.source "MessageListFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/plus/fragments/MessageListFragment;->messageLoadSucceeded()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/plus/fragments/MessageListFragment;


# direct methods
.method constructor <init>(Lcom/google/android/apps/plus/fragments/MessageListFragment;)V
    .registers 2
    .parameter

    .prologue
    .line 456
    iput-object p1, p0, Lcom/google/android/apps/plus/fragments/MessageListFragment$5;->this$0:Lcom/google/android/apps/plus/fragments/MessageListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 459
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/MessageListFragment$5;->this$0:Lcom/google/android/apps/plus/fragments/MessageListFragment;

    const/4 v1, 0x0

    #setter for: Lcom/google/android/apps/plus/fragments/MessageListFragment;->mLoadingOlderEvents:Z
    invoke-static {v0, v1}, Lcom/google/android/apps/plus/fragments/MessageListFragment;->access$1202(Lcom/google/android/apps/plus/fragments/MessageListFragment;Z)Z

    .line 460
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/MessageListFragment$5;->this$0:Lcom/google/android/apps/plus/fragments/MessageListFragment;

    #calls: Lcom/google/android/apps/plus/fragments/MessageListFragment;->updateHeaderVisibility()V
    invoke-static {v0}, Lcom/google/android/apps/plus/fragments/MessageListFragment;->access$1300(Lcom/google/android/apps/plus/fragments/MessageListFragment;)V

    .line 461
    return-void
.end method
