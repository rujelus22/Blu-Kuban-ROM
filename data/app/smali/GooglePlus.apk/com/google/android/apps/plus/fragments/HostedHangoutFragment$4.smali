.class Lcom/google/android/apps/plus/fragments/HostedHangoutFragment$4;
.super Ljava/lang/Object;
.source "HostedHangoutFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/plus/fragments/HostedHangoutFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/plus/fragments/HostedHangoutFragment;


# direct methods
.method constructor <init>(Lcom/google/android/apps/plus/fragments/HostedHangoutFragment;)V
    .registers 2
    .parameter

    .prologue
    .line 593
    iput-object p1, p0, Lcom/google/android/apps/plus/fragments/HostedHangoutFragment$4;->this$0:Lcom/google/android/apps/plus/fragments/HostedHangoutFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 596
    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/HostedHangoutFragment$4;->this$0:Lcom/google/android/apps/plus/fragments/HostedHangoutFragment;

    #getter for: Lcom/google/android/apps/plus/fragments/HostedHangoutFragment;->mShowSuggestedPeople:Z
    invoke-static {v2}, Lcom/google/android/apps/plus/fragments/HostedHangoutFragment;->access$700(Lcom/google/android/apps/plus/fragments/HostedHangoutFragment;)Z

    move-result v2

    if-eqz v2, :cond_33

    .line 597
    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/HostedHangoutFragment$4;->this$0:Lcom/google/android/apps/plus/fragments/HostedHangoutFragment;

    invoke-virtual {v2}, Lcom/google/android/apps/plus/fragments/HostedHangoutFragment;->getSuggestedPeople()V

    .line 598
    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/HostedHangoutFragment$4;->this$0:Lcom/google/android/apps/plus/fragments/HostedHangoutFragment;

    #getter for: Lcom/google/android/apps/plus/fragments/HostedHangoutFragment;->mSuggestedPeopleAdapter:Lcom/google/android/apps/plus/fragments/HostedHangoutFragment$SuggestedPeopleAdpater;
    invoke-static {v2}, Lcom/google/android/apps/plus/fragments/HostedHangoutFragment;->access$800(Lcom/google/android/apps/plus/fragments/HostedHangoutFragment;)Lcom/google/android/apps/plus/fragments/HostedHangoutFragment$SuggestedPeopleAdpater;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/apps/plus/fragments/HostedHangoutFragment$SuggestedPeopleAdpater;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2e

    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/HostedHangoutFragment$4;->this$0:Lcom/google/android/apps/plus/fragments/HostedHangoutFragment;

    #getter for: Lcom/google/android/apps/plus/fragments/HostedHangoutFragment;->mListHeader:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/google/android/apps/plus/fragments/HostedHangoutFragment;->access$900(Lcom/google/android/apps/plus/fragments/HostedHangoutFragment;)Landroid/widget/TextView;

    move-result-object v2

    if-eqz v2, :cond_2e

    .line 599
    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/HostedHangoutFragment$4;->this$0:Lcom/google/android/apps/plus/fragments/HostedHangoutFragment;

    #getter for: Lcom/google/android/apps/plus/fragments/HostedHangoutFragment;->mListHeader:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/google/android/apps/plus/fragments/HostedHangoutFragment;->access$900(Lcom/google/android/apps/plus/fragments/HostedHangoutFragment;)Landroid/widget/TextView;

    move-result-object v2

    const/16 v5, 0x8

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 602
    :cond_2e
    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/HostedHangoutFragment$4;->this$0:Lcom/google/android/apps/plus/fragments/HostedHangoutFragment;

    #calls: Lcom/google/android/apps/plus/fragments/HostedHangoutFragment;->updateSuggestedPeopleDisplay()V
    invoke-static {v2}, Lcom/google/android/apps/plus/fragments/HostedHangoutFragment;->access$1000(Lcom/google/android/apps/plus/fragments/HostedHangoutFragment;)V

    .line 605
    :cond_33
    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/HostedHangoutFragment$4;->this$0:Lcom/google/android/apps/plus/fragments/HostedHangoutFragment;

    const/16 v5, 0xa

    invoke-virtual {v2, v5}, Lcom/google/android/apps/plus/fragments/HostedHangoutFragment;->audienceSizeIsGreaterThan(I)Z

    move-result v1

    .line 606
    .local v1, overcapacity:Z
    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/HostedHangoutFragment$4;->this$0:Lcom/google/android/apps/plus/fragments/HostedHangoutFragment;

    invoke-virtual {v2}, Lcom/google/android/apps/plus/fragments/HostedHangoutFragment;->isAudienceEmpty()Z

    move-result v0

    .line 608
    .local v0, audienceEmpty:Z
    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/HostedHangoutFragment$4;->this$0:Lcom/google/android/apps/plus/fragments/HostedHangoutFragment;

    #getter for: Lcom/google/android/apps/plus/fragments/HostedHangoutFragment;->mToggleHangoutRingButton:Landroid/widget/ImageButton;
    invoke-static {v2}, Lcom/google/android/apps/plus/fragments/HostedHangoutFragment;->access$1100(Lcom/google/android/apps/plus/fragments/HostedHangoutFragment;)Landroid/widget/ImageButton;

    move-result-object v5

    if-nez v0, :cond_7a

    move v2, v3

    :goto_4a
    invoke-virtual {v5, v2}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 610
    if-nez v0, :cond_51

    if-eqz v1, :cond_7c

    .line 611
    :cond_51
    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/HostedHangoutFragment$4;->this$0:Lcom/google/android/apps/plus/fragments/HostedHangoutFragment;

    #calls: Lcom/google/android/apps/plus/fragments/HostedHangoutFragment;->disableHangoutRing(ZZ)V
    invoke-static {v2, v4, v4}, Lcom/google/android/apps/plus/fragments/HostedHangoutFragment;->access$1200(Lcom/google/android/apps/plus/fragments/HostedHangoutFragment;ZZ)V

    .line 617
    :cond_56
    :goto_56
    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/HostedHangoutFragment$4;->this$0:Lcom/google/android/apps/plus/fragments/HostedHangoutFragment;

    #setter for: Lcom/google/android/apps/plus/fragments/HostedHangoutFragment;->mPreviouslyAudienceEmpty:Z
    invoke-static {v2, v0}, Lcom/google/android/apps/plus/fragments/HostedHangoutFragment;->access$1302(Lcom/google/android/apps/plus/fragments/HostedHangoutFragment;Z)Z

    .line 618
    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/HostedHangoutFragment$4;->this$0:Lcom/google/android/apps/plus/fragments/HostedHangoutFragment;

    #setter for: Lcom/google/android/apps/plus/fragments/HostedHangoutFragment;->mPreviouslyOvercapacity:Z
    invoke-static {v2, v1}, Lcom/google/android/apps/plus/fragments/HostedHangoutFragment;->access$1402(Lcom/google/android/apps/plus/fragments/HostedHangoutFragment;Z)Z

    .line 620
    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/HostedHangoutFragment$4;->this$0:Lcom/google/android/apps/plus/fragments/HostedHangoutFragment;

    #getter for: Lcom/google/android/apps/plus/fragments/HostedHangoutFragment;->mStartHangoutButton:Landroid/widget/Button;
    invoke-static {v2}, Lcom/google/android/apps/plus/fragments/HostedHangoutFragment;->access$1600(Lcom/google/android/apps/plus/fragments/HostedHangoutFragment;)Landroid/widget/Button;

    move-result-object v2

    if-eqz v2, :cond_79

    .line 621
    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/HostedHangoutFragment$4;->this$0:Lcom/google/android/apps/plus/fragments/HostedHangoutFragment;

    #getter for: Lcom/google/android/apps/plus/fragments/HostedHangoutFragment;->mStartHangoutButton:Landroid/widget/Button;
    invoke-static {v2}, Lcom/google/android/apps/plus/fragments/HostedHangoutFragment;->access$1600(Lcom/google/android/apps/plus/fragments/HostedHangoutFragment;)Landroid/widget/Button;

    move-result-object v2

    iget-object v5, p0, Lcom/google/android/apps/plus/fragments/HostedHangoutFragment$4;->this$0:Lcom/google/android/apps/plus/fragments/HostedHangoutFragment;

    invoke-virtual {v5}, Lcom/google/android/apps/plus/fragments/HostedHangoutFragment;->isAudienceEmpty()Z

    move-result v5

    if-nez v5, :cond_9a

    :goto_76
    invoke-virtual {v2, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 623
    :cond_79
    return-void

    :cond_7a
    move v2, v4

    .line 608
    goto :goto_4a

    .line 612
    :cond_7c
    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/HostedHangoutFragment$4;->this$0:Lcom/google/android/apps/plus/fragments/HostedHangoutFragment;

    #getter for: Lcom/google/android/apps/plus/fragments/HostedHangoutFragment;->mPreviouslyAudienceEmpty:Z
    invoke-static {v2}, Lcom/google/android/apps/plus/fragments/HostedHangoutFragment;->access$1300(Lcom/google/android/apps/plus/fragments/HostedHangoutFragment;)Z

    move-result v2

    if-nez v2, :cond_8c

    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/HostedHangoutFragment$4;->this$0:Lcom/google/android/apps/plus/fragments/HostedHangoutFragment;

    #getter for: Lcom/google/android/apps/plus/fragments/HostedHangoutFragment;->mPreviouslyOvercapacity:Z
    invoke-static {v2}, Lcom/google/android/apps/plus/fragments/HostedHangoutFragment;->access$1400(Lcom/google/android/apps/plus/fragments/HostedHangoutFragment;)Z

    move-result v2

    if-eqz v2, :cond_56

    :cond_8c
    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/HostedHangoutFragment$4;->this$0:Lcom/google/android/apps/plus/fragments/HostedHangoutFragment;

    #getter for: Lcom/google/android/apps/plus/fragments/HostedHangoutFragment;->mRingBeforeDisable:Z
    invoke-static {v2}, Lcom/google/android/apps/plus/fragments/HostedHangoutFragment;->access$600(Lcom/google/android/apps/plus/fragments/HostedHangoutFragment;)Z

    move-result v2

    if-nez v2, :cond_56

    .line 614
    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/HostedHangoutFragment$4;->this$0:Lcom/google/android/apps/plus/fragments/HostedHangoutFragment;

    #calls: Lcom/google/android/apps/plus/fragments/HostedHangoutFragment;->enableHangoutRing(Z)V
    invoke-static {v2, v4}, Lcom/google/android/apps/plus/fragments/HostedHangoutFragment;->access$1500(Lcom/google/android/apps/plus/fragments/HostedHangoutFragment;Z)V

    goto :goto_56

    :cond_9a
    move v3, v4

    .line 621
    goto :goto_76
.end method
