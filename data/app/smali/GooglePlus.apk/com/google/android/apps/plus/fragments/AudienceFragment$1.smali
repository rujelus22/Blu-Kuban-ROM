.class Lcom/google/android/apps/plus/fragments/AudienceFragment$1;
.super Ljava/lang/Object;
.source "AudienceFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/plus/fragments/AudienceFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/plus/fragments/AudienceFragment;


# direct methods
.method constructor <init>(Lcom/google/android/apps/plus/fragments/AudienceFragment;)V
    .registers 2
    .parameter

    .prologue
    .line 457
    iput-object p1, p0, Lcom/google/android/apps/plus/fragments/AudienceFragment$1;->this$0:Lcom/google/android/apps/plus/fragments/AudienceFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 460
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/AudienceFragment$1;->this$0:Lcom/google/android/apps/plus/fragments/AudienceFragment;

    #getter for: Lcom/google/android/apps/plus/fragments/AudienceFragment;->mShowSuggestedPeople:Z
    invoke-static {v0}, Lcom/google/android/apps/plus/fragments/AudienceFragment;->access$500(Lcom/google/android/apps/plus/fragments/AudienceFragment;)Z

    move-result v0

    if-eqz v0, :cond_31

    .line 461
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/AudienceFragment$1;->this$0:Lcom/google/android/apps/plus/fragments/AudienceFragment;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/fragments/AudienceFragment;->getSuggestedPeople()V

    .line 462
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/AudienceFragment$1;->this$0:Lcom/google/android/apps/plus/fragments/AudienceFragment;

    #getter for: Lcom/google/android/apps/plus/fragments/AudienceFragment;->mSuggestedPeopleAdapter:Lcom/google/android/apps/plus/fragments/AudienceFragment$SuggestedPeopleAdpater;
    invoke-static {v0}, Lcom/google/android/apps/plus/fragments/AudienceFragment;->access$600(Lcom/google/android/apps/plus/fragments/AudienceFragment;)Lcom/google/android/apps/plus/fragments/AudienceFragment$SuggestedPeopleAdpater;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/apps/plus/fragments/AudienceFragment$SuggestedPeopleAdpater;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2c

    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/AudienceFragment$1;->this$0:Lcom/google/android/apps/plus/fragments/AudienceFragment;

    #getter for: Lcom/google/android/apps/plus/fragments/AudienceFragment;->mListHeader:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/google/android/apps/plus/fragments/AudienceFragment;->access$700(Lcom/google/android/apps/plus/fragments/AudienceFragment;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_2c

    .line 463
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/AudienceFragment$1;->this$0:Lcom/google/android/apps/plus/fragments/AudienceFragment;

    #getter for: Lcom/google/android/apps/plus/fragments/AudienceFragment;->mListHeader:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/google/android/apps/plus/fragments/AudienceFragment;->access$700(Lcom/google/android/apps/plus/fragments/AudienceFragment;)Landroid/widget/TextView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 465
    :cond_2c
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/AudienceFragment$1;->this$0:Lcom/google/android/apps/plus/fragments/AudienceFragment;

    #calls: Lcom/google/android/apps/plus/fragments/AudienceFragment;->updateSuggestedPeopleDisplay()V
    invoke-static {v0}, Lcom/google/android/apps/plus/fragments/AudienceFragment;->access$800(Lcom/google/android/apps/plus/fragments/AudienceFragment;)V

    .line 468
    :cond_31
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/AudienceFragment$1;->this$0:Lcom/google/android/apps/plus/fragments/AudienceFragment;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/fragments/AudienceFragment;->onAudienceChanged()V

    .line 469
    return-void
.end method
