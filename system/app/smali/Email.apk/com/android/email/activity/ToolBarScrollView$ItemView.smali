.class public Lcom/android/email/activity/ToolBarScrollView$ItemView;
.super Landroid/widget/RelativeLayout;
.source "ToolBarScrollView.java"

# interfaces
.implements Landroid/widget/Checkable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/ToolBarScrollView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ItemView"
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 524
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 525
    return-void
.end method

.method private findRadioButton()Landroid/widget/RadioButton;
    .registers 3

    .prologue
    .line 550
    const v1, 0x7f100150

    invoke-virtual {p0, v1}, Lcom/android/email/activity/ToolBarScrollView$ItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 551
    .local v0, check:Landroid/view/View;
    if-eqz v0, :cond_10

    instance-of v1, v0, Landroid/widget/RadioButton;

    if-eqz v1, :cond_10

    .line 552
    check-cast v0, Landroid/widget/RadioButton;

    .line 554
    .end local v0           #check:Landroid/view/View;
    :goto_f
    return-object v0

    .restart local v0       #check:Landroid/view/View;
    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method


# virtual methods
.method public isChecked()Z
    .registers 3

    .prologue
    .line 528
    invoke-direct {p0}, Lcom/android/email/activity/ToolBarScrollView$ItemView;->findRadioButton()Landroid/widget/RadioButton;

    move-result-object v0

    .line 529
    .local v0, check:Landroid/widget/RadioButton;
    if-eqz v0, :cond_b

    .line 530
    invoke-virtual {v0}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v1

    .line 532
    :goto_a
    return v1

    :cond_b
    const/4 v1, 0x0

    goto :goto_a
.end method

.method public setChecked(Z)V
    .registers 3
    .parameter "checked"

    .prologue
    .line 536
    invoke-direct {p0}, Lcom/android/email/activity/ToolBarScrollView$ItemView;->findRadioButton()Landroid/widget/RadioButton;

    move-result-object v0

    .line 537
    .local v0, check:Landroid/widget/RadioButton;
    if-eqz v0, :cond_9

    .line 538
    invoke-virtual {v0, p1}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 540
    :cond_9
    return-void
.end method

.method public toggle()V
    .registers 2

    .prologue
    .line 543
    invoke-direct {p0}, Lcom/android/email/activity/ToolBarScrollView$ItemView;->findRadioButton()Landroid/widget/RadioButton;

    move-result-object v0

    .line 544
    .local v0, check:Landroid/widget/RadioButton;
    if-eqz v0, :cond_9

    .line 545
    invoke-virtual {v0}, Landroid/widget/RadioButton;->toggle()V

    .line 547
    :cond_9
    return-void
.end method
