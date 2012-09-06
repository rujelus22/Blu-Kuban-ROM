.class public LGU;
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
    .line 409
    iput-object p1, p0, LGU;->a:Lcom/google/android/apps/docs/fragment/CommentStreamThreadFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .parameter

    .prologue
    .line 412
    iget-object v0, p0, LGU;->a:Lcom/google/android/apps/docs/fragment/CommentStreamThreadFragment;

    invoke-static {v0}, Lcom/google/android/apps/docs/fragment/CommentStreamThreadFragment;->f(Lcom/google/android/apps/docs/fragment/CommentStreamThreadFragment;)Lck;

    move-result-object v0

    iget-object v1, p0, LGU;->a:Lcom/google/android/apps/docs/fragment/CommentStreamThreadFragment;

    invoke-virtual {v1}, Lcom/google/android/apps/docs/fragment/CommentStreamThreadFragment;->a()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-interface {v0, v1}, Lck;->a(Landroid/content/Context;)V

    .line 413
    iget-object v0, p0, LGU;->a:Lcom/google/android/apps/docs/fragment/CommentStreamThreadFragment;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/android/apps/docs/fragment/CommentStreamThreadFragment;->a(Lcom/google/android/apps/docs/fragment/CommentStreamThreadFragment;Z)Z

    .line 414
    iget-object v0, p0, LGU;->a:Lcom/google/android/apps/docs/fragment/CommentStreamThreadFragment;

    invoke-static {v0}, Lcom/google/android/apps/docs/fragment/CommentStreamThreadFragment;->a(Lcom/google/android/apps/docs/fragment/CommentStreamThreadFragment;)V

    .line 415
    return-void
.end method
