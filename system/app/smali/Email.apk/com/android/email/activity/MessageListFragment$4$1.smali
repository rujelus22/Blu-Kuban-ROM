.class Lcom/android/email/activity/MessageListFragment$4$1;
.super Ljava/lang/Object;
.source "MessageListFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/activity/MessageListFragment$4;->onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/email/activity/MessageListFragment$4;

.field final synthetic val$searchInfo:Lcom/android/email/MessageListContext;


# direct methods
.method constructor <init>(Lcom/android/email/activity/MessageListFragment$4;Lcom/android/email/MessageListContext;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 1286
    iput-object p1, p0, Lcom/android/email/activity/MessageListFragment$4$1;->this$1:Lcom/android/email/activity/MessageListFragment$4;

    iput-object p2, p0, Lcom/android/email/activity/MessageListFragment$4$1;->val$searchInfo:Lcom/android/email/MessageListContext;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 1289
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment$4$1;->this$1:Lcom/android/email/activity/MessageListFragment$4;

    iget-object v0, v0, Lcom/android/email/activity/MessageListFragment$4;->this$0:Lcom/android/email/activity/MessageListFragment;

    #getter for: Lcom/android/email/activity/MessageListFragment;->mListContext:Lcom/android/email/MessageListContext;
    invoke-static {v0}, Lcom/android/email/activity/MessageListFragment;->access$700(Lcom/android/email/activity/MessageListFragment;)Lcom/android/email/MessageListContext;

    move-result-object v0

    iget-object v1, p0, Lcom/android/email/activity/MessageListFragment$4$1;->val$searchInfo:Lcom/android/email/MessageListContext;

    if-eq v0, v1, :cond_d

    .line 1298
    :cond_c
    :goto_c
    return-void

    .line 1293
    :cond_d
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment$4$1;->this$1:Lcom/android/email/activity/MessageListFragment$4;

    iget-object v0, v0, Lcom/android/email/activity/MessageListFragment$4;->this$0:Lcom/android/email/activity/MessageListFragment;

    #getter for: Lcom/android/email/activity/MessageListFragment;->mIsFirstLoad:Z
    invoke-static {v0}, Lcom/android/email/activity/MessageListFragment;->access$800(Lcom/android/email/activity/MessageListFragment;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 1297
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment$4$1;->this$1:Lcom/android/email/activity/MessageListFragment$4;

    iget-object v0, v0, Lcom/android/email/activity/MessageListFragment$4;->this$0:Lcom/android/email/activity/MessageListFragment;

    #calls: Lcom/android/email/activity/MessageListFragment;->onSearchLoadTimeout()V
    invoke-static {v0}, Lcom/android/email/activity/MessageListFragment;->access$900(Lcom/android/email/activity/MessageListFragment;)V

    goto :goto_c
.end method
