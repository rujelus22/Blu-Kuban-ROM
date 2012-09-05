.class public Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment$ItemView;
.super Landroid/widget/LinearLayout;
.source "InteractionRecentFragment.java"

# interfaces
.implements Landroid/widget/Checkable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;
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
    .line 437
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 438
    return-void
.end method

.method private findCheckBox()Landroid/widget/CheckBox;
    .registers 3

    .prologue
    .line 466
    const v1, 0x7f0d004b

    invoke-virtual {p0, v1}, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment$ItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 467
    .local v0, check:Landroid/view/View;
    if-eqz v0, :cond_10

    instance-of v1, v0, Landroid/widget/CheckBox;

    if-eqz v1, :cond_10

    .line 468
    check-cast v0, Landroid/widget/CheckBox;

    .line 470
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
    .line 442
    invoke-direct {p0}, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment$ItemView;->findCheckBox()Landroid/widget/CheckBox;

    move-result-object v0

    .line 443
    .local v0, check:Landroid/widget/CheckBox;
    if-eqz v0, :cond_b

    .line 444
    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    .line 446
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
    .line 451
    invoke-direct {p0}, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment$ItemView;->findCheckBox()Landroid/widget/CheckBox;

    move-result-object v0

    .line 452
    .local v0, check:Landroid/widget/CheckBox;
    if-eqz v0, :cond_9

    .line 453
    invoke-virtual {v0, p1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 455
    :cond_9
    return-void
.end method

.method public toggle()V
    .registers 2

    .prologue
    .line 459
    invoke-direct {p0}, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment$ItemView;->findCheckBox()Landroid/widget/CheckBox;

    move-result-object v0

    .line 460
    .local v0, check:Landroid/widget/CheckBox;
    if-eqz v0, :cond_9

    .line 461
    invoke-virtual {v0}, Landroid/widget/CheckBox;->toggle()V

    .line 463
    :cond_9
    return-void
.end method
