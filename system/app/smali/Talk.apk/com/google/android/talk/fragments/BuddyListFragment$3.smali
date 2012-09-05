.class Lcom/google/android/talk/fragments/BuddyListFragment$3;
.super Ljava/lang/Object;
.source "BuddyListFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/talk/fragments/BuddyListFragment;->onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field first:Z

.field final synthetic this$0:Lcom/google/android/talk/fragments/BuddyListFragment;


# direct methods
.method constructor <init>(Lcom/google/android/talk/fragments/BuddyListFragment;)V
    .registers 3
    .parameter

    .prologue
    .line 574
    iput-object p1, p0, Lcom/google/android/talk/fragments/BuddyListFragment$3;->this$0:Lcom/google/android/talk/fragments/BuddyListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 575
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/talk/fragments/BuddyListFragment$3;->first:Z

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 578
    iget-object v1, p0, Lcom/google/android/talk/fragments/BuddyListFragment$3;->this$0:Lcom/google/android/talk/fragments/BuddyListFragment;

    const-string v2, "onCreateLoader onFinishedLoading runnable"

    #calls: Lcom/google/android/talk/fragments/BuddyListFragment;->logv(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/google/android/talk/fragments/BuddyListFragment;->access$500(Lcom/google/android/talk/fragments/BuddyListFragment;Ljava/lang/String;)V

    .line 579
    iget-object v1, p0, Lcom/google/android/talk/fragments/BuddyListFragment$3;->this$0:Lcom/google/android/talk/fragments/BuddyListFragment;

    invoke-virtual {v1}, Lcom/google/android/talk/fragments/BuddyListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/google/android/talk/fragments/BuddyListFragment$BuddyListHost;

    .line 580
    .local v0, host:Lcom/google/android/talk/fragments/BuddyListFragment$BuddyListHost;
    if-eqz v0, :cond_15

    .line 581
    invoke-interface {v0}, Lcom/google/android/talk/fragments/BuddyListFragment$BuddyListHost;->finishedLoading()V

    .line 583
    :cond_15
    iget-boolean v1, p0, Lcom/google/android/talk/fragments/BuddyListFragment$3;->first:Z

    if-eqz v1, :cond_24

    .line 587
    iget-object v1, p0, Lcom/google/android/talk/fragments/BuddyListFragment$3;->this$0:Lcom/google/android/talk/fragments/BuddyListFragment;

    iget-object v2, p0, Lcom/google/android/talk/fragments/BuddyListFragment$3;->this$0:Lcom/google/android/talk/fragments/BuddyListFragment;

    iget-object v2, v2, Lcom/google/android/talk/fragments/BuddyListFragment;->mAccountInfo:Lcom/google/android/talk/TalkApp$AccountInfo;

    invoke-virtual {v1, v2}, Lcom/google/android/talk/fragments/BuddyListFragment;->switchAccounts(Lcom/google/android/talk/TalkApp$AccountInfo;)V

    .line 588
    iput-boolean v3, p0, Lcom/google/android/talk/fragments/BuddyListFragment$3;->first:Z

    .line 591
    :cond_24
    iget-object v1, p0, Lcom/google/android/talk/fragments/BuddyListFragment$3;->this$0:Lcom/google/android/talk/fragments/BuddyListFragment;

    #getter for: Lcom/google/android/talk/fragments/BuddyListFragment;->mCloseAllChatsMenuItem:Landroid/view/MenuItem;
    invoke-static {v1}, Lcom/google/android/talk/fragments/BuddyListFragment;->access$700(Lcom/google/android/talk/fragments/BuddyListFragment;)Landroid/view/MenuItem;

    move-result-object v1

    if-eqz v1, :cond_3b

    .line 592
    iget-object v1, p0, Lcom/google/android/talk/fragments/BuddyListFragment$3;->this$0:Lcom/google/android/talk/fragments/BuddyListFragment;

    iget-object v1, v1, Lcom/google/android/talk/fragments/BuddyListFragment;->mRosterListAdapter:Lcom/google/android/talk/IRosterListAdapter;

    if-nez v1, :cond_3c

    .line 593
    iget-object v1, p0, Lcom/google/android/talk/fragments/BuddyListFragment$3;->this$0:Lcom/google/android/talk/fragments/BuddyListFragment;

    #getter for: Lcom/google/android/talk/fragments/BuddyListFragment;->mCloseAllChatsMenuItem:Landroid/view/MenuItem;
    invoke-static {v1}, Lcom/google/android/talk/fragments/BuddyListFragment;->access$700(Lcom/google/android/talk/fragments/BuddyListFragment;)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 599
    :cond_3b
    :goto_3b
    return-void

    .line 595
    :cond_3c
    iget-object v1, p0, Lcom/google/android/talk/fragments/BuddyListFragment$3;->this$0:Lcom/google/android/talk/fragments/BuddyListFragment;

    #getter for: Lcom/google/android/talk/fragments/BuddyListFragment;->mCloseAllChatsMenuItem:Landroid/view/MenuItem;
    invoke-static {v1}, Lcom/google/android/talk/fragments/BuddyListFragment;->access$700(Lcom/google/android/talk/fragments/BuddyListFragment;)Landroid/view/MenuItem;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/talk/fragments/BuddyListFragment$3;->this$0:Lcom/google/android/talk/fragments/BuddyListFragment;

    iget-object v2, v2, Lcom/google/android/talk/fragments/BuddyListFragment;->mRosterListAdapter:Lcom/google/android/talk/IRosterListAdapter;

    invoke-interface {v2}, Lcom/google/android/talk/IRosterListAdapter;->hasActiveChats()Z

    move-result v2

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_3b
.end method
