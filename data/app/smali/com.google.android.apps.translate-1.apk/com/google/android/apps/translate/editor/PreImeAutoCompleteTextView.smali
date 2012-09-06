.class public Lcom/google/android/apps/translate/editor/PreImeAutoCompleteTextView;
.super Landroid/widget/EditText;
.source "PreImeAutoCompleteTextView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/translate/editor/PreImeAutoCompleteTextView$OnKeyPreImeListener;
    }
.end annotation


# instance fields
.field private mKeyPreImeListener:Lcom/google/android/apps/translate/editor/PreImeAutoCompleteTextView$OnKeyPreImeListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 28
    invoke-direct {p0, p1, p2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 29
    return-void
.end method


# virtual methods
.method public onKeyPreIme(ILandroid/view/KeyEvent;)Z
    .registers 4
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/google/android/apps/translate/editor/PreImeAutoCompleteTextView;->mKeyPreImeListener:Lcom/google/android/apps/translate/editor/PreImeAutoCompleteTextView$OnKeyPreImeListener;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/google/android/apps/translate/editor/PreImeAutoCompleteTextView;->mKeyPreImeListener:Lcom/google/android/apps/translate/editor/PreImeAutoCompleteTextView$OnKeyPreImeListener;

    invoke-interface {v0, p1, p2}, Lcom/google/android/apps/translate/editor/PreImeAutoCompleteTextView$OnKeyPreImeListener;->onKeyPreIme(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 41
    const/4 v0, 0x1

    .line 43
    :goto_d
    return v0

    :cond_e
    invoke-super {p0, p1, p2}, Landroid/widget/EditText;->onKeyPreIme(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_d
.end method

.method public setKeyPreImeListener(Lcom/google/android/apps/translate/editor/PreImeAutoCompleteTextView$OnKeyPreImeListener;)V
    .registers 2
    .parameter "keyPreImeListener"

    .prologue
    .line 35
    iput-object p1, p0, Lcom/google/android/apps/translate/editor/PreImeAutoCompleteTextView;->mKeyPreImeListener:Lcom/google/android/apps/translate/editor/PreImeAutoCompleteTextView$OnKeyPreImeListener;

    .line 36
    return-void
.end method
