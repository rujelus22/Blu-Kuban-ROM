.class public Labg;
.super Ljava/lang/Object;
.source "SocialCommentView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/google/android/apps/docs/view/SocialCommentView;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/docs/view/SocialCommentView;)V
    .registers 2
    .parameter

    .prologue
    .line 127
    iput-object p1, p0, Labg;->a:Lcom/google/android/apps/docs/view/SocialCommentView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5
    .parameter

    .prologue
    .line 130
    iget-object v0, p0, Labg;->a:Lcom/google/android/apps/docs/view/SocialCommentView;

    invoke-static {v0}, Lcom/google/android/apps/docs/view/SocialCommentView;->a(Lcom/google/android/apps/docs/view/SocialCommentView;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 131
    iget-object v1, p0, Labg;->a:Lcom/google/android/apps/docs/view/SocialCommentView;

    invoke-static {v1}, Lcom/google/android/apps/docs/view/SocialCommentView;->b(Lcom/google/android/apps/docs/view/SocialCommentView;)V

    .line 133
    iget-object v1, p0, Labg;->a:Lcom/google/android/apps/docs/view/SocialCommentView;

    invoke-static {v1}, Lcom/google/android/apps/docs/view/SocialCommentView;->a(Lcom/google/android/apps/docs/view/SocialCommentView;)Labh;

    move-result-object v1

    if-eqz v1, :cond_25

    .line 134
    iget-object v1, p0, Labg;->a:Lcom/google/android/apps/docs/view/SocialCommentView;

    invoke-static {v1}, Lcom/google/android/apps/docs/view/SocialCommentView;->a(Lcom/google/android/apps/docs/view/SocialCommentView;)Labh;

    move-result-object v1

    invoke-interface {v1, v0}, Labh;->a(Ljava/lang/CharSequence;)V

    .line 138
    :goto_24
    return-void

    .line 136
    :cond_25
    const-string v0, "SocialCommentView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Got submit without listener: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, LZA;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_24
.end method
