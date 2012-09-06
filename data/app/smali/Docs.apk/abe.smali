.class public Labe;
.super Ljava/lang/Object;
.source "SocialCommentView.java"

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field final synthetic a:Lcom/google/android/apps/docs/view/SocialCommentView;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/docs/view/SocialCommentView;)V
    .registers 2
    .parameter

    .prologue
    .line 94
    iput-object p1, p0, Labe;->a:Lcom/google/android/apps/docs/view/SocialCommentView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .registers 9
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 105
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_65

    move v0, v1

    .line 106
    :goto_d
    iget-object v3, p0, Labe;->a:Lcom/google/android/apps/docs/view/SocialCommentView;

    invoke-static {v3}, Lcom/google/android/apps/docs/view/SocialCommentView;->a(Lcom/google/android/apps/docs/view/SocialCommentView;)Landroid/widget/Button;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 108
    iget-object v0, p0, Labe;->a:Lcom/google/android/apps/docs/view/SocialCommentView;

    invoke-static {v0}, Lcom/google/android/apps/docs/view/SocialCommentView;->a(Lcom/google/android/apps/docs/view/SocialCommentView;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getLineCount()I

    move-result v0

    .line 109
    iget-object v3, p0, Labe;->a:Lcom/google/android/apps/docs/view/SocialCommentView;

    invoke-static {v3}, Lcom/google/android/apps/docs/view/SocialCommentView;->a(Lcom/google/android/apps/docs/view/SocialCommentView;)I

    move-result v3

    if-eq v3, v0, :cond_64

    .line 110
    const-string v3, "SocialCommentView"

    const-string v4, "Requesting layout for editor, prev=%d now=%d"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v6, p0, Labe;->a:Lcom/google/android/apps/docs/view/SocialCommentView;

    invoke-static {v6}, Lcom/google/android/apps/docs/view/SocialCommentView;->a(Lcom/google/android/apps/docs/view/SocialCommentView;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v5, v1

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, LZA;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    iget-object v1, p0, Labe;->a:Lcom/google/android/apps/docs/view/SocialCommentView;

    invoke-static {v1, v0}, Lcom/google/android/apps/docs/view/SocialCommentView;->a(Lcom/google/android/apps/docs/view/SocialCommentView;I)I

    .line 113
    iget-object v0, p0, Labe;->a:Lcom/google/android/apps/docs/view/SocialCommentView;

    invoke-static {v0}, Lcom/google/android/apps/docs/view/SocialCommentView;->a(Lcom/google/android/apps/docs/view/SocialCommentView;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->requestLayout()V

    .line 114
    iget-object v0, p0, Labe;->a:Lcom/google/android/apps/docs/view/SocialCommentView;

    invoke-static {v0}, Lcom/google/android/apps/docs/view/SocialCommentView;->a(Lcom/google/android/apps/docs/view/SocialCommentView;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->invalidate()V

    .line 115
    iget-object v0, p0, Labe;->a:Lcom/google/android/apps/docs/view/SocialCommentView;

    invoke-static {v0}, Lcom/google/android/apps/docs/view/SocialCommentView;->a(Lcom/google/android/apps/docs/view/SocialCommentView;)V

    .line 117
    :cond_64
    return-void

    :cond_65
    move v0, v2

    .line 105
    goto :goto_d
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 101
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 97
    return-void
.end method
