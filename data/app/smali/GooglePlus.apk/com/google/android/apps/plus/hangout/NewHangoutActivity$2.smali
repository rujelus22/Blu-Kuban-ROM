.class Lcom/google/android/apps/plus/hangout/NewHangoutActivity$2;
.super Ljava/lang/Object;
.source "NewHangoutActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/plus/hangout/NewHangoutActivity;->onAttachFragment(Landroid/support/v4/app/Fragment;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/plus/hangout/NewHangoutActivity;


# direct methods
.method constructor <init>(Lcom/google/android/apps/plus/hangout/NewHangoutActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 154
    iput-object p1, p0, Lcom/google/android/apps/plus/hangout/NewHangoutActivity$2;->this$0:Lcom/google/android/apps/plus/hangout/NewHangoutActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .prologue
    const/4 v2, 0x0

    const/4 v4, 0x0

    .line 157
    iget-object v1, p0, Lcom/google/android/apps/plus/hangout/NewHangoutActivity$2;->this$0:Lcom/google/android/apps/plus/hangout/NewHangoutActivity;

    #getter for: Lcom/google/android/apps/plus/hangout/NewHangoutActivity;->mHangoutButton:Landroid/widget/Button;
    invoke-static {v1}, Lcom/google/android/apps/plus/hangout/NewHangoutActivity;->access$300(Lcom/google/android/apps/plus/hangout/NewHangoutActivity;)Landroid/widget/Button;

    move-result-object v1

    if-eqz v1, :cond_20

    .line 158
    iget-object v1, p0, Lcom/google/android/apps/plus/hangout/NewHangoutActivity$2;->this$0:Lcom/google/android/apps/plus/hangout/NewHangoutActivity;

    #getter for: Lcom/google/android/apps/plus/hangout/NewHangoutActivity;->mHangoutButton:Landroid/widget/Button;
    invoke-static {v1}, Lcom/google/android/apps/plus/hangout/NewHangoutActivity;->access$300(Lcom/google/android/apps/plus/hangout/NewHangoutActivity;)Landroid/widget/Button;

    move-result-object v3

    iget-object v1, p0, Lcom/google/android/apps/plus/hangout/NewHangoutActivity$2;->this$0:Lcom/google/android/apps/plus/hangout/NewHangoutActivity;

    #getter for: Lcom/google/android/apps/plus/hangout/NewHangoutActivity;->mAudienceFragment:Lcom/google/android/apps/plus/fragments/AudienceFragment;
    invoke-static {v1}, Lcom/google/android/apps/plus/hangout/NewHangoutActivity;->access$200(Lcom/google/android/apps/plus/hangout/NewHangoutActivity;)Lcom/google/android/apps/plus/fragments/AudienceFragment;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/apps/plus/fragments/AudienceFragment;->isAudienceEmpty()Z

    move-result v1

    if-nez v1, :cond_79

    const/4 v1, 0x1

    :goto_1d
    invoke-virtual {v3, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 161
    :cond_20
    iget-object v1, p0, Lcom/google/android/apps/plus/hangout/NewHangoutActivity$2;->this$0:Lcom/google/android/apps/plus/hangout/NewHangoutActivity;

    #getter for: Lcom/google/android/apps/plus/hangout/NewHangoutActivity;->mRingHangoutToggleWidget:Lcom/google/android/apps/plus/hangout/RingHangoutToggleWidget;
    invoke-static {v1}, Lcom/google/android/apps/plus/hangout/NewHangoutActivity;->access$100(Lcom/google/android/apps/plus/hangout/NewHangoutActivity;)Lcom/google/android/apps/plus/hangout/RingHangoutToggleWidget;

    move-result-object v1

    if-eqz v1, :cond_78

    iget-object v1, p0, Lcom/google/android/apps/plus/hangout/NewHangoutActivity$2;->this$0:Lcom/google/android/apps/plus/hangout/NewHangoutActivity;

    #getter for: Lcom/google/android/apps/plus/hangout/NewHangoutActivity;->mAudienceFragment:Lcom/google/android/apps/plus/fragments/AudienceFragment;
    invoke-static {v1}, Lcom/google/android/apps/plus/hangout/NewHangoutActivity;->access$200(Lcom/google/android/apps/plus/hangout/NewHangoutActivity;)Lcom/google/android/apps/plus/fragments/AudienceFragment;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/apps/plus/fragments/AudienceFragment;->isAudienceEmpty()Z

    move-result v1

    if-nez v1, :cond_78

    iget-object v1, p0, Lcom/google/android/apps/plus/hangout/NewHangoutActivity$2;->this$0:Lcom/google/android/apps/plus/hangout/NewHangoutActivity;

    #getter for: Lcom/google/android/apps/plus/hangout/NewHangoutActivity;->mRingHangoutToggleWidget:Lcom/google/android/apps/plus/hangout/RingHangoutToggleWidget;
    invoke-static {v1}, Lcom/google/android/apps/plus/hangout/NewHangoutActivity;->access$100(Lcom/google/android/apps/plus/hangout/NewHangoutActivity;)Lcom/google/android/apps/plus/hangout/RingHangoutToggleWidget;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/apps/plus/hangout/RingHangoutToggleWidget;->getVisibility()I

    move-result v1

    const/16 v3, 0x8

    if-ne v1, v3, :cond_78

    .line 163
    iget-object v1, p0, Lcom/google/android/apps/plus/hangout/NewHangoutActivity$2;->this$0:Lcom/google/android/apps/plus/hangout/NewHangoutActivity;

    #getter for: Lcom/google/android/apps/plus/hangout/NewHangoutActivity;->mRingHangoutToggleWidget:Lcom/google/android/apps/plus/hangout/RingHangoutToggleWidget;
    invoke-static {v1}, Lcom/google/android/apps/plus/hangout/NewHangoutActivity;->access$100(Lcom/google/android/apps/plus/hangout/NewHangoutActivity;)Lcom/google/android/apps/plus/hangout/RingHangoutToggleWidget;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/google/android/apps/plus/hangout/RingHangoutToggleWidget;->setVisibility(I)V

    .line 165
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    iget-object v1, p0, Lcom/google/android/apps/plus/hangout/NewHangoutActivity$2;->this$0:Lcom/google/android/apps/plus/hangout/NewHangoutActivity;

    invoke-virtual {v1}, Lcom/google/android/apps/plus/hangout/NewHangoutActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d0158

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    neg-float v1, v1

    invoke-direct {v0, v4, v4, v1, v4}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 168
    .local v0, slideAnimation:Landroid/view/animation/Animation;
    const-wide/16 v1, 0x96

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 170
    iget-object v1, p0, Lcom/google/android/apps/plus/hangout/NewHangoutActivity$2;->this$0:Lcom/google/android/apps/plus/hangout/NewHangoutActivity;

    #getter for: Lcom/google/android/apps/plus/hangout/NewHangoutActivity;->mRingHangoutToggleWidget:Lcom/google/android/apps/plus/hangout/RingHangoutToggleWidget;
    invoke-static {v1}, Lcom/google/android/apps/plus/hangout/NewHangoutActivity;->access$100(Lcom/google/android/apps/plus/hangout/NewHangoutActivity;)Lcom/google/android/apps/plus/hangout/RingHangoutToggleWidget;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/apps/plus/hangout/RingHangoutToggleWidget;->startAnimation(Landroid/view/animation/Animation;)V

    .line 171
    iget-object v1, p0, Lcom/google/android/apps/plus/hangout/NewHangoutActivity$2;->this$0:Lcom/google/android/apps/plus/hangout/NewHangoutActivity;

    const v2, 0x7f090066

    invoke-virtual {v1, v2}, Lcom/google/android/apps/plus/hangout/NewHangoutActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 173
    .end local v0           #slideAnimation:Landroid/view/animation/Animation;
    :cond_78
    return-void

    :cond_79
    move v1, v2

    .line 158
    goto :goto_1d
.end method
