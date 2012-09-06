.class public LGS;
.super Ljava/lang/Object;
.source "CommentStreamThreadFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/google/android/apps/docs/fragment/CommentStreamThreadFragment;

.field final synthetic a:Lna;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/docs/fragment/CommentStreamThreadFragment;Lna;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 321
    iput-object p1, p0, LGS;->a:Lcom/google/android/apps/docs/fragment/CommentStreamThreadFragment;

    iput-object p2, p0, LGS;->a:Lna;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .parameter

    .prologue
    .line 324
    iget-object v0, p0, LGS;->a:Lcom/google/android/apps/docs/fragment/CommentStreamThreadFragment;

    invoke-static {v0}, Lcom/google/android/apps/docs/fragment/CommentStreamThreadFragment;->d(Lcom/google/android/apps/docs/fragment/CommentStreamThreadFragment;)Lck;

    move-result-object v0

    iget-object v1, p0, LGS;->a:Lcom/google/android/apps/docs/fragment/CommentStreamThreadFragment;

    invoke-virtual {v1}, Lcom/google/android/apps/docs/fragment/CommentStreamThreadFragment;->a()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-interface {v0, v1}, Lck;->a(Landroid/content/Context;)V

    .line 326
    new-instance v1, LGT;

    invoke-direct {v1, p0}, LGT;-><init>(LGS;)V

    .line 347
    iget-object v0, p0, LGS;->a:Lcom/google/android/apps/docs/fragment/CommentStreamThreadFragment;

    invoke-static {v0}, Lcom/google/android/apps/docs/fragment/CommentStreamThreadFragment;->a(Lcom/google/android/apps/docs/fragment/CommentStreamThreadFragment;)Lfd;

    move-result-object v0

    invoke-virtual {v0}, Lfd;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LdY;

    invoke-interface {v0, p1, v1}, LdY;->a(Landroid/view/View;Landroid/view/View$OnClickListener;)V

    .line 348
    return-void
.end method
