.class LGT;
.super Ljava/lang/Object;
.source "CommentStreamThreadFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:LGS;


# direct methods
.method constructor <init>(LGS;)V
    .registers 2
    .parameter

    .prologue
    .line 326
    iput-object p1, p0, LGT;->a:LGS;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5
    .parameter

    .prologue
    .line 329
    iget-object v0, p0, LGT;->a:LGS;

    iget-object v0, v0, LGS;->a:Lcom/google/android/apps/docs/fragment/CommentStreamThreadFragment;

    invoke-static {v0}, Lcom/google/android/apps/docs/fragment/CommentStreamThreadFragment;->e(Lcom/google/android/apps/docs/fragment/CommentStreamThreadFragment;)Lck;

    move-result-object v0

    iget-object v1, p0, LGT;->a:LGS;

    iget-object v1, v1, LGS;->a:Lcom/google/android/apps/docs/fragment/CommentStreamThreadFragment;

    invoke-virtual {v1}, Lcom/google/android/apps/docs/fragment/CommentStreamThreadFragment;->a()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-interface {v0, v1}, Lck;->a(Landroid/content/Context;)V

    .line 330
    iget-object v0, p0, LGT;->a:LGS;

    iget-object v0, v0, LGS;->a:Lcom/google/android/apps/docs/fragment/CommentStreamThreadFragment;

    invoke-static {v0}, Lcom/google/android/apps/docs/fragment/CommentStreamThreadFragment;->a(Lcom/google/android/apps/docs/fragment/CommentStreamThreadFragment;)Lfd;

    move-result-object v0

    invoke-virtual {v0}, Lfd;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LdY;

    invoke-interface {v0}, LdY;->a()V

    .line 333
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, LcS;->quick_actions_edit:I

    if-ne v0, v1, :cond_51

    .line 335
    iget-object v0, p0, LGT;->a:LGS;

    iget-object v0, v0, LGS;->a:Lcom/google/android/apps/docs/fragment/CommentStreamThreadFragment;

    invoke-static {v0}, Lcom/google/android/apps/docs/fragment/CommentStreamThreadFragment;->a(Lcom/google/android/apps/docs/fragment/CommentStreamThreadFragment;)Lmz;

    move-result-object v0

    iget-object v1, p0, LGT;->a:LGS;

    iget-object v1, v1, LGS;->a:Lna;

    const-string v2, "TODO: fake comment text"

    invoke-interface {v0, v1, v2}, Lmz;->b(Lna;Ljava/lang/String;)Lmu;

    move-result-object v0

    move-object v1, v0

    .line 343
    :goto_3f
    iget-object v0, p0, LGT;->a:LGS;

    iget-object v0, v0, LGS;->a:Lcom/google/android/apps/docs/fragment/CommentStreamThreadFragment;

    invoke-static {v0}, Lcom/google/android/apps/docs/fragment/CommentStreamThreadFragment;->a(Lcom/google/android/apps/docs/fragment/CommentStreamThreadFragment;)Lfd;

    move-result-object v0

    invoke-virtual {v0}, Lfd;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LdY;

    invoke-interface {v0, v1}, LdY;->a(Lmu;)V

    .line 344
    return-void

    .line 336
    :cond_51
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, LcS;->quick_actions_delete:I

    if-ne v0, v1, :cond_6b

    .line 339
    iget-object v0, p0, LGT;->a:LGS;

    iget-object v0, v0, LGS;->a:Lcom/google/android/apps/docs/fragment/CommentStreamThreadFragment;

    invoke-static {v0}, Lcom/google/android/apps/docs/fragment/CommentStreamThreadFragment;->a(Lcom/google/android/apps/docs/fragment/CommentStreamThreadFragment;)Lmz;

    move-result-object v0

    iget-object v1, p0, LGT;->a:LGS;

    iget-object v1, v1, LGS;->a:Lna;

    invoke-interface {v0, v1}, Lmz;->b(Lna;)Lmu;

    move-result-object v0

    move-object v1, v0

    goto :goto_3f

    .line 341
    :cond_6b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown quick actions ID: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
