.class public LGQ;
.super Ljava/lang/Object;
.source "CommentStreamThreadFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/google/android/apps/docs/fragment/CommentStreamThreadFragment;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/docs/fragment/CommentStreamThreadFragment;)V
    .registers 2
    .parameter

    .prologue
    .line 181
    iput-object p1, p0, LGQ;->a:Lcom/google/android/apps/docs/fragment/CommentStreamThreadFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6
    .parameter

    .prologue
    .line 184
    iget-object v0, p0, LGQ;->a:Lcom/google/android/apps/docs/fragment/CommentStreamThreadFragment;

    invoke-static {v0}, Lcom/google/android/apps/docs/fragment/CommentStreamThreadFragment;->c(Lcom/google/android/apps/docs/fragment/CommentStreamThreadFragment;)Lck;

    move-result-object v0

    iget-object v1, p0, LGQ;->a:Lcom/google/android/apps/docs/fragment/CommentStreamThreadFragment;

    invoke-virtual {v1}, Lcom/google/android/apps/docs/fragment/CommentStreamThreadFragment;->a()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-interface {v0, v1}, Lck;->a(Landroid/content/Context;)V

    .line 185
    iget-object v0, p0, LGQ;->a:Lcom/google/android/apps/docs/fragment/CommentStreamThreadFragment;

    invoke-static {v0}, Lcom/google/android/apps/docs/fragment/CommentStreamThreadFragment;->a(Lcom/google/android/apps/docs/fragment/CommentStreamThreadFragment;)LkR;

    move-result-object v0

    invoke-virtual {v0}, LkR;->i()Ljava/lang/String;

    .line 186
    new-instance v0, LeN;

    iget-object v1, p0, LGQ;->a:Lcom/google/android/apps/docs/fragment/CommentStreamThreadFragment;

    invoke-virtual {v1}, Lcom/google/android/apps/docs/fragment/CommentStreamThreadFragment;->a()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, LGQ;->a:Lcom/google/android/apps/docs/fragment/CommentStreamThreadFragment;

    invoke-static {v2}, Lcom/google/android/apps/docs/fragment/CommentStreamThreadFragment;->a(Lcom/google/android/apps/docs/fragment/CommentStreamThreadFragment;)Lld;

    move-result-object v2

    sget-object v3, LeD;->a:LeD;

    invoke-direct {v0, v1, v2, v3}, LeN;-><init>(Landroid/content/Context;Lld;LeD;)V

    invoke-virtual {v0}, LeN;->a()Landroid/content/Intent;

    move-result-object v0

    .line 188
    iget-object v1, p0, LGQ;->a:Lcom/google/android/apps/docs/fragment/CommentStreamThreadFragment;

    invoke-virtual {v1, v0}, Lcom/google/android/apps/docs/fragment/CommentStreamThreadFragment;->a(Landroid/content/Intent;)V

    .line 190
    return-void
.end method
