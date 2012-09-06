.class public LGN;
.super Ljava/lang/Object;
.source "CommentStreamThreadFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/android/apps/docs/fragment/CommentStreamThreadFragment;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/docs/fragment/CommentStreamThreadFragment;)V
    .registers 2
    .parameter

    .prologue
    .line 108
    iput-object p1, p0, LGN;->a:Lcom/google/android/apps/docs/fragment/CommentStreamThreadFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 111
    iget-object v0, p0, LGN;->a:Lcom/google/android/apps/docs/fragment/CommentStreamThreadFragment;

    invoke-static {v0}, Lcom/google/android/apps/docs/fragment/CommentStreamThreadFragment;->a(Lcom/google/android/apps/docs/fragment/CommentStreamThreadFragment;)Lmz;

    move-result-object v0

    invoke-interface {v0}, Lmz;->a()Ljava/util/SortedSet;

    move-result-object v0

    .line 112
    iget-object v1, p0, LGN;->a:Lcom/google/android/apps/docs/fragment/CommentStreamThreadFragment;

    invoke-virtual {v1}, Lcom/google/android/apps/docs/fragment/CommentStreamThreadFragment;->a()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "discussionId"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 113
    iget-object v2, p0, LGN;->a:Lcom/google/android/apps/docs/fragment/CommentStreamThreadFragment;

    invoke-static {v1, v0}, LmO;->a(Ljava/lang/String;Ljava/util/SortedSet;)Lna;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/google/android/apps/docs/fragment/CommentStreamThreadFragment;->a(Lcom/google/android/apps/docs/fragment/CommentStreamThreadFragment;Lna;)Lna;

    .line 114
    iget-object v0, p0, LGN;->a:Lcom/google/android/apps/docs/fragment/CommentStreamThreadFragment;

    invoke-static {v0}, Lcom/google/android/apps/docs/fragment/CommentStreamThreadFragment;->a(Lcom/google/android/apps/docs/fragment/CommentStreamThreadFragment;)Lna;

    move-result-object v0

    if-nez v0, :cond_4d

    .line 115
    const-string v0, "CommentStreamThreadFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Couldn\'t find thread for display: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, LZA;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    iget-object v0, p0, LGN;->a:Lcom/google/android/apps/docs/fragment/CommentStreamThreadFragment;

    invoke-virtual {v0}, Lcom/google/android/apps/docs/fragment/CommentStreamThreadFragment;->a()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->a()Lx;

    move-result-object v0

    invoke-virtual {v0}, Lx;->a()V

    .line 124
    :goto_4c
    return-void

    .line 123
    :cond_4d
    iget-object v0, p0, LGN;->a:Lcom/google/android/apps/docs/fragment/CommentStreamThreadFragment;

    invoke-static {v0}, Lcom/google/android/apps/docs/fragment/CommentStreamThreadFragment;->a(Lcom/google/android/apps/docs/fragment/CommentStreamThreadFragment;)V

    goto :goto_4c
.end method
