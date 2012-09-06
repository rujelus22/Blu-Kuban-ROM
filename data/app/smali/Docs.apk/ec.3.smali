.class public Lec;
.super Ljava/lang/Object;
.source "CommentStreamActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/android/apps/docs/app/CommentStreamActivity;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/docs/app/CommentStreamActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 222
    iput-object p1, p0, Lec;->a:Lcom/google/android/apps/docs/app/CommentStreamActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 225
    iget-object v0, p0, Lec;->a:Lcom/google/android/apps/docs/app/CommentStreamActivity;

    invoke-static {v0}, Lcom/google/android/apps/docs/app/CommentStreamActivity;->a(Lcom/google/android/apps/docs/app/CommentStreamActivity;)Lmz;

    move-result-object v0

    invoke-interface {v0}, Lmz;->a()Ljava/util/SortedSet;

    move-result-object v0

    .line 226
    if-nez v0, :cond_11

    .line 227
    iget-object v1, p0, Lec;->a:Lcom/google/android/apps/docs/app/CommentStreamActivity;

    invoke-static {v1}, Lcom/google/android/apps/docs/app/CommentStreamActivity;->b(Lcom/google/android/apps/docs/app/CommentStreamActivity;)V

    .line 230
    :cond_11
    iget-object v1, p0, Lec;->a:Lcom/google/android/apps/docs/app/CommentStreamActivity;

    invoke-static {v1}, Lcom/google/android/apps/docs/app/CommentStreamActivity;->a(Lcom/google/android/apps/docs/app/CommentStreamActivity;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v1

    if-nez v1, :cond_3f

    .line 231
    iget-object v1, p0, Lec;->a:Lcom/google/android/apps/docs/app/CommentStreamActivity;

    invoke-static {v1}, Lcom/google/android/apps/docs/app/CommentStreamActivity;->a(Lcom/google/android/apps/docs/app/CommentStreamActivity;)LkR;

    move-result-object v1

    invoke-virtual {v1}, LkR;->a()Lld;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/apps/docs/fragment/CommentStreamFragment;->a(Lld;)Landroid/support/v4/app/Fragment;

    move-result-object v1

    .line 232
    iget-object v2, p0, Lec;->a:Lcom/google/android/apps/docs/app/CommentStreamActivity;

    invoke-virtual {v2}, Lcom/google/android/apps/docs/app/CommentStreamActivity;->a()Lx;

    move-result-object v2

    invoke-virtual {v2}, Lx;->a()LH;

    move-result-object v2

    sget v3, LcS;->comments_activity_holder:I

    invoke-virtual {v2, v3, v1}, LH;->a(ILandroid/support/v4/app/Fragment;)LH;

    move-result-object v1

    invoke-virtual {v1}, LH;->a()I

    .line 236
    :cond_3f
    const-string v1, "CommentStreamActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "listener invoked: discussion="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, LZA;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    iget-object v0, p0, Lec;->a:Lcom/google/android/apps/docs/app/CommentStreamActivity;

    invoke-static {v0}, Lcom/google/android/apps/docs/app/CommentStreamActivity;->a(Lcom/google/android/apps/docs/app/CommentStreamActivity;)V

    .line 238
    return-void
.end method
