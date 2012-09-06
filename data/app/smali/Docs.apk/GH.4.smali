.class public LGH;
.super Ljava/lang/Object;
.source "CommentStreamFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/android/apps/docs/fragment/CommentStreamFragment;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/docs/fragment/CommentStreamFragment;)V
    .registers 2
    .parameter

    .prologue
    .line 158
    iput-object p1, p0, LGH;->a:Lcom/google/android/apps/docs/fragment/CommentStreamFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 161
    iget-object v0, p0, LGH;->a:Lcom/google/android/apps/docs/fragment/CommentStreamFragment;

    invoke-static {v0}, Lcom/google/android/apps/docs/fragment/CommentStreamFragment;->a(Lcom/google/android/apps/docs/fragment/CommentStreamFragment;)Lmz;

    move-result-object v0

    invoke-interface {v0}, Lmz;->a()Ljava/util/SortedSet;

    move-result-object v0

    .line 162
    const-string v1, "CommentStreamFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "listener invoked: discussion="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, LZA;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    if-nez v0, :cond_25

    .line 179
    :goto_24
    return-void

    .line 169
    :cond_25
    iget-object v1, p0, LGH;->a:Lcom/google/android/apps/docs/fragment/CommentStreamFragment;

    invoke-static {v1}, Lcom/google/android/apps/docs/fragment/CommentStreamFragment;->a(Lcom/google/android/apps/docs/fragment/CommentStreamFragment;)Landroid/widget/ArrayAdapter;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ArrayAdapter;->clear()V

    .line 170
    invoke-interface {v0}, Ljava/util/SortedSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_32
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_48

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lna;

    .line 171
    iget-object v2, p0, LGH;->a:Lcom/google/android/apps/docs/fragment/CommentStreamFragment;

    invoke-static {v2}, Lcom/google/android/apps/docs/fragment/CommentStreamFragment;->a(Lcom/google/android/apps/docs/fragment/CommentStreamFragment;)Landroid/widget/ArrayAdapter;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    goto :goto_32

    .line 174
    :cond_48
    iget-object v0, p0, LGH;->a:Lcom/google/android/apps/docs/fragment/CommentStreamFragment;

    invoke-static {v0}, Lcom/google/android/apps/docs/fragment/CommentStreamFragment;->a(Lcom/google/android/apps/docs/fragment/CommentStreamFragment;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    if-nez v0, :cond_72

    .line 175
    iget-object v0, p0, LGH;->a:Lcom/google/android/apps/docs/fragment/CommentStreamFragment;

    invoke-static {v0}, Lcom/google/android/apps/docs/fragment/CommentStreamFragment;->a(Lcom/google/android/apps/docs/fragment/CommentStreamFragment;)Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, LGH;->a:Lcom/google/android/apps/docs/fragment/CommentStreamFragment;

    invoke-static {v1}, Lcom/google/android/apps/docs/fragment/CommentStreamFragment;->a(Lcom/google/android/apps/docs/fragment/CommentStreamFragment;)Lcom/google/android/apps/docs/view/SocialCommentView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    .line 176
    iget-object v0, p0, LGH;->a:Lcom/google/android/apps/docs/fragment/CommentStreamFragment;

    invoke-static {v0}, Lcom/google/android/apps/docs/fragment/CommentStreamFragment;->a(Lcom/google/android/apps/docs/fragment/CommentStreamFragment;)Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, LGH;->a:Lcom/google/android/apps/docs/fragment/CommentStreamFragment;

    invoke-static {v1}, Lcom/google/android/apps/docs/fragment/CommentStreamFragment;->a(Lcom/google/android/apps/docs/fragment/CommentStreamFragment;)Landroid/widget/ArrayAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 178
    :cond_72
    iget-object v0, p0, LGH;->a:Lcom/google/android/apps/docs/fragment/CommentStreamFragment;

    invoke-static {v0}, Lcom/google/android/apps/docs/fragment/CommentStreamFragment;->a(Lcom/google/android/apps/docs/fragment/CommentStreamFragment;)Landroid/widget/ArrayAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    goto :goto_24
.end method
