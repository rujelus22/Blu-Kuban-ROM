.class Lcom/android/calendar/AllInOneActivity$1;
.super Ljava/lang/Object;
.source "AllInOneActivity.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/AllInOneActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/AllInOneActivity;


# direct methods
.method constructor <init>(Lcom/android/calendar/AllInOneActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 157
    iput-object p1, p0, Lcom/android/calendar/AllInOneActivity$1;->this$0:Lcom/android/calendar/AllInOneActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .registers 2
    .parameter "animation"

    .prologue
    .line 161
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 4
    .parameter "animation"

    .prologue
    .line 165
    iget-object v1, p0, Lcom/android/calendar/AllInOneActivity$1;->this$0:Lcom/android/calendar/AllInOneActivity;

    #getter for: Lcom/android/calendar/AllInOneActivity;->mShowSideViews:Z
    invoke-static {v1}, Lcom/android/calendar/AllInOneActivity;->access$000(Lcom/android/calendar/AllInOneActivity;)Z

    move-result v1

    if-eqz v1, :cond_25

    const/4 v0, 0x0

    .line 166
    .local v0, visibility:I
    :goto_9
    iget-object v1, p0, Lcom/android/calendar/AllInOneActivity$1;->this$0:Lcom/android/calendar/AllInOneActivity;

    #getter for: Lcom/android/calendar/AllInOneActivity;->mMiniMonth:Landroid/view/View;
    invoke-static {v1}, Lcom/android/calendar/AllInOneActivity;->access$100(Lcom/android/calendar/AllInOneActivity;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 167
    iget-object v1, p0, Lcom/android/calendar/AllInOneActivity$1;->this$0:Lcom/android/calendar/AllInOneActivity;

    #getter for: Lcom/android/calendar/AllInOneActivity;->mCalendarsList:Landroid/view/View;
    invoke-static {v1}, Lcom/android/calendar/AllInOneActivity;->access$200(Lcom/android/calendar/AllInOneActivity;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 168
    iget-object v1, p0, Lcom/android/calendar/AllInOneActivity$1;->this$0:Lcom/android/calendar/AllInOneActivity;

    #getter for: Lcom/android/calendar/AllInOneActivity;->mMiniMonthContainer:Landroid/view/View;
    invoke-static {v1}, Lcom/android/calendar/AllInOneActivity;->access$300(Lcom/android/calendar/AllInOneActivity;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 169
    return-void

    .line 165
    .end local v0           #visibility:I
    :cond_25
    const/16 v0, 0x8

    goto :goto_9
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .registers 2
    .parameter "animation"

    .prologue
    .line 173
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 2
    .parameter "animation"

    .prologue
    .line 177
    return-void
.end method
