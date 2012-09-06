.class public Labd;
.super Ljava/lang/Object;
.source "SocialCommentView.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# instance fields
.field final synthetic a:Lcom/google/android/apps/docs/view/SocialCommentView;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/docs/view/SocialCommentView;)V
    .registers 2
    .parameter

    .prologue
    .line 78
    iput-object p1, p0, Labd;->a:Lcom/google/android/apps/docs/view/SocialCommentView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public declared-synchronized onFocusChange(Landroid/view/View;Z)V
    .registers 6
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 81
    monitor-enter p0

    :try_start_2
    iget-object v1, p0, Labd;->a:Lcom/google/android/apps/docs/view/SocialCommentView;

    invoke-virtual {v1}, Lcom/google/android/apps/docs/view/SocialCommentView;->isSelected()Z

    move-result v1

    if-nez v1, :cond_26

    iget-object v1, p0, Labd;->a:Lcom/google/android/apps/docs/view/SocialCommentView;

    invoke-virtual {v1}, Lcom/google/android/apps/docs/view/SocialCommentView;->hasFocus()Z

    move-result v1

    if-nez v1, :cond_26

    iget-object v1, p0, Labd;->a:Lcom/google/android/apps/docs/view/SocialCommentView;

    invoke-static {v1}, Lcom/google/android/apps/docs/view/SocialCommentView;->a(Lcom/google/android/apps/docs/view/SocialCommentView;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_5e

    :cond_26
    const/4 v1, 0x1

    .line 82
    :goto_27
    iget-object v2, p0, Labd;->a:Lcom/google/android/apps/docs/view/SocialCommentView;

    invoke-static {v2}, Lcom/google/android/apps/docs/view/SocialCommentView;->a(Lcom/google/android/apps/docs/view/SocialCommentView;)Landroid/view/View;

    move-result-object v2

    if-eqz v1, :cond_60

    :goto_2f
    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 84
    if-eqz v1, :cond_45

    iget-object v0, p0, Labd;->a:Lcom/google/android/apps/docs/view/SocialCommentView;

    invoke-static {v0}, Lcom/google/android/apps/docs/view/SocialCommentView;->a(Lcom/google/android/apps/docs/view/SocialCommentView;)Labh;

    move-result-object v0

    if-eqz v0, :cond_45

    .line 85
    iget-object v0, p0, Labd;->a:Lcom/google/android/apps/docs/view/SocialCommentView;

    invoke-static {v0}, Lcom/google/android/apps/docs/view/SocialCommentView;->a(Lcom/google/android/apps/docs/view/SocialCommentView;)Labh;

    move-result-object v0

    invoke-interface {v0}, Labh;->a()V

    .line 88
    :cond_45
    iget-object v0, p0, Labd;->a:Lcom/google/android/apps/docs/view/SocialCommentView;

    invoke-static {v0}, Lcom/google/android/apps/docs/view/SocialCommentView;->a(Lcom/google/android/apps/docs/view/SocialCommentView;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->requestLayout()V

    .line 89
    iget-object v0, p0, Labd;->a:Lcom/google/android/apps/docs/view/SocialCommentView;

    invoke-static {v0}, Lcom/google/android/apps/docs/view/SocialCommentView;->a(Lcom/google/android/apps/docs/view/SocialCommentView;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->invalidate()V

    .line 90
    iget-object v0, p0, Labd;->a:Lcom/google/android/apps/docs/view/SocialCommentView;

    invoke-static {v0}, Lcom/google/android/apps/docs/view/SocialCommentView;->a(Lcom/google/android/apps/docs/view/SocialCommentView;)V
    :try_end_5c
    .catchall {:try_start_2 .. :try_end_5c} :catchall_63

    .line 91
    monitor-exit p0

    return-void

    :cond_5e
    move v1, v0

    .line 81
    goto :goto_27

    .line 82
    :cond_60
    const/16 v0, 0x8

    goto :goto_2f

    .line 81
    :catchall_63
    move-exception v0

    monitor-exit p0

    throw v0
.end method
