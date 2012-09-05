.class public Lcom/sec/android/socialhub/util/SelectCheckBoxDeleteLayout;
.super Landroid/widget/LinearLayout;
.source "SelectCheckBoxDeleteLayout.java"

# interfaces
.implements Landroid/widget/Checkable;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 23
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 24
    return-void
.end method

.method private findCheckBox()Landroid/widget/CheckBox;
    .registers 3

    .prologue
    .line 58
    const v1, 0x7f0b0069

    invoke-virtual {p0, v1}, Lcom/sec/android/socialhub/util/SelectCheckBoxDeleteLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 59
    .local v0, check:Landroid/view/View;
    if-eqz v0, :cond_10

    instance-of v1, v0, Landroid/widget/CheckBox;

    if-eqz v1, :cond_10

    .line 61
    check-cast v0, Landroid/widget/CheckBox;

    .line 63
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
    .line 28
    invoke-direct {p0}, Lcom/sec/android/socialhub/util/SelectCheckBoxDeleteLayout;->findCheckBox()Landroid/widget/CheckBox;

    move-result-object v0

    .line 29
    .local v0, check:Landroid/widget/CheckBox;
    if-eqz v0, :cond_b

    .line 31
    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    .line 33
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
    .line 38
    invoke-direct {p0}, Lcom/sec/android/socialhub/util/SelectCheckBoxDeleteLayout;->findCheckBox()Landroid/widget/CheckBox;

    move-result-object v0

    .line 39
    .local v0, check:Landroid/widget/CheckBox;
    if-eqz v0, :cond_9

    .line 41
    invoke-virtual {v0, p1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 43
    :cond_9
    return-void
.end method

.method public toggle()V
    .registers 2

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/sec/android/socialhub/util/SelectCheckBoxDeleteLayout;->findCheckBox()Landroid/widget/CheckBox;

    move-result-object v0

    .line 49
    .local v0, check:Landroid/widget/CheckBox;
    if-eqz v0, :cond_9

    .line 51
    invoke-virtual {v0}, Landroid/widget/CheckBox;->toggle()V

    .line 54
    :cond_9
    return-void
.end method
