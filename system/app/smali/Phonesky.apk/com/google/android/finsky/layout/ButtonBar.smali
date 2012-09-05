.class public Lcom/google/android/finsky/layout/ButtonBar;
.super Landroid/widget/LinearLayout;
.source "ButtonBar.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/finsky/layout/ButtonBar$ClickListener;
    }
.end annotation


# instance fields
.field private mClickListener:Lcom/google/android/finsky/layout/ButtonBar$ClickListener;

.field private mNegativeButton:Landroid/widget/Button;

.field private mPositiveButton:Landroid/widget/Button;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 33
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 34
    return-void
.end method


# virtual methods
.method public disablePositiveButton()V
    .registers 3

    .prologue
    .line 57
    iget-object v0, p0, Lcom/google/android/finsky/layout/ButtonBar;->mPositiveButton:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 58
    return-void
.end method

.method public enablePositiveButton()V
    .registers 3

    .prologue
    .line 53
    iget-object v0, p0, Lcom/google/android/finsky/layout/ButtonBar;->mPositiveButton:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 54
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 3
    .parameter "view"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/google/android/finsky/layout/ButtonBar;->mClickListener:Lcom/google/android/finsky/layout/ButtonBar$ClickListener;

    if-eqz v0, :cond_d

    .line 69
    iget-object v0, p0, Lcom/google/android/finsky/layout/ButtonBar;->mPositiveButton:Landroid/widget/Button;

    if-ne p1, v0, :cond_e

    .line 70
    iget-object v0, p0, Lcom/google/android/finsky/layout/ButtonBar;->mClickListener:Lcom/google/android/finsky/layout/ButtonBar$ClickListener;

    invoke-interface {v0}, Lcom/google/android/finsky/layout/ButtonBar$ClickListener;->onPositiveButtonClick()V

    .line 75
    :cond_d
    :goto_d
    return-void

    .line 71
    :cond_e
    iget-object v0, p0, Lcom/google/android/finsky/layout/ButtonBar;->mNegativeButton:Landroid/widget/Button;

    if-ne p1, v0, :cond_d

    .line 72
    iget-object v0, p0, Lcom/google/android/finsky/layout/ButtonBar;->mClickListener:Lcom/google/android/finsky/layout/ButtonBar$ClickListener;

    invoke-interface {v0}, Lcom/google/android/finsky/layout/ButtonBar$ClickListener;->onNegativeButtonClick()V

    goto :goto_d
.end method

.method protected onFinishInflate()V
    .registers 2

    .prologue
    .line 38
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 40
    const v0, 0x7f080038

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/ButtonBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/google/android/finsky/layout/ButtonBar;->mPositiveButton:Landroid/widget/Button;

    .line 41
    const v0, 0x7f080039

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/ButtonBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/google/android/finsky/layout/ButtonBar;->mNegativeButton:Landroid/widget/Button;

    .line 42
    return-void
.end method

.method public setClickListener(Lcom/google/android/finsky/layout/ButtonBar$ClickListener;)V
    .registers 3
    .parameter "listener"

    .prologue
    .line 61
    iput-object p1, p0, Lcom/google/android/finsky/layout/ButtonBar;->mClickListener:Lcom/google/android/finsky/layout/ButtonBar$ClickListener;

    .line 62
    iget-object v0, p0, Lcom/google/android/finsky/layout/ButtonBar;->mPositiveButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 63
    iget-object v0, p0, Lcom/google/android/finsky/layout/ButtonBar;->mNegativeButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 64
    return-void
.end method

.method public setNegativeButtonTitle(I)V
    .registers 3
    .parameter "titleResId"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/google/android/finsky/layout/ButtonBar;->mNegativeButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(I)V

    .line 50
    return-void
.end method

.method public setPositiveButtonTitle(I)V
    .registers 3
    .parameter "titleResId"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/google/android/finsky/layout/ButtonBar;->mPositiveButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(I)V

    .line 46
    return-void
.end method
