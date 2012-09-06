.class public LdZ;
.super Ljava/lang/Object;
.source "CommentStreamActivity.java"

# interfaces
.implements LdY;


# instance fields
.field final synthetic a:Lcom/google/android/apps/docs/app/CommentStreamActivity;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/docs/app/CommentStreamActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 108
    iput-object p1, p0, LdZ;->a:Lcom/google/android/apps/docs/app/CommentStreamActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 146
    iget-object v0, p0, LdZ;->a:Lcom/google/android/apps/docs/app/CommentStreamActivity;

    invoke-static {v0, v1}, Lcom/google/android/apps/docs/app/CommentStreamActivity;->a(Lcom/google/android/apps/docs/app/CommentStreamActivity;Landroid/view/View;)Landroid/view/View;

    .line 147
    iget-object v0, p0, LdZ;->a:Lcom/google/android/apps/docs/app/CommentStreamActivity;

    invoke-static {v0, v1}, Lcom/google/android/apps/docs/app/CommentStreamActivity;->a(Lcom/google/android/apps/docs/app/CommentStreamActivity;Landroid/view/View$OnClickListener;)Landroid/view/View$OnClickListener;

    .line 148
    return-void
.end method

.method public a(Landroid/view/View;Landroid/view/View$OnClickListener;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 137
    invoke-static {p1}, LafQ;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    invoke-static {p2}, LafQ;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    iget-object v0, p0, LdZ;->a:Lcom/google/android/apps/docs/app/CommentStreamActivity;

    invoke-static {v0, p1}, Lcom/google/android/apps/docs/app/CommentStreamActivity;->a(Lcom/google/android/apps/docs/app/CommentStreamActivity;Landroid/view/View;)Landroid/view/View;

    .line 140
    iget-object v0, p0, LdZ;->a:Lcom/google/android/apps/docs/app/CommentStreamActivity;

    invoke-static {v0, p2}, Lcom/google/android/apps/docs/app/CommentStreamActivity;->a(Lcom/google/android/apps/docs/app/CommentStreamActivity;Landroid/view/View$OnClickListener;)Landroid/view/View$OnClickListener;

    .line 141
    iget-object v0, p0, LdZ;->a:Lcom/google/android/apps/docs/app/CommentStreamActivity;

    invoke-static {v0}, Lcom/google/android/apps/docs/app/CommentStreamActivity;->a(Lcom/google/android/apps/docs/app/CommentStreamActivity;)LpB;

    move-result-object v0

    invoke-interface {v0}, LpB;->a()V

    .line 142
    return-void
.end method

.method public a(Lmu;)V
    .registers 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmu",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 119
    iget-object v0, p0, LdZ;->a:Lcom/google/android/apps/docs/app/CommentStreamActivity;

    iget-object v1, p0, LdZ;->a:Lcom/google/android/apps/docs/app/CommentStreamActivity;

    sget v2, LcY;->comment_working:I

    invoke-virtual {v1, v2}, Lcom/google/android/apps/docs/app/CommentStreamActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/google/android/apps/docs/app/CommentStreamActivity;->a(Lcom/google/android/apps/docs/app/CommentStreamActivity;Ljava/lang/String;Landroid/content/DialogInterface$OnCancelListener;)V

    .line 120
    iget-object v0, p0, LdZ;->a:Lcom/google/android/apps/docs/app/CommentStreamActivity;

    iget-object v0, v0, Lcom/google/android/apps/docs/app/CommentStreamActivity;->b:Landroid/os/Handler;

    new-instance v1, Lea;

    invoke-direct {v1, p0, p1}, Lea;-><init>(LdZ;Lmu;)V

    invoke-interface {p1, v0, v1}, Lmu;->a(Landroid/os/Handler;Ljava/lang/Runnable;)V

    .line 133
    return-void
.end method

.method public a(Lna;)V
    .registers 5
    .parameter

    .prologue
    .line 111
    iget-object v0, p0, LdZ;->a:Lcom/google/android/apps/docs/app/CommentStreamActivity;

    invoke-static {v0}, Lcom/google/android/apps/docs/app/CommentStreamActivity;->a(Lcom/google/android/apps/docs/app/CommentStreamActivity;)LkR;

    move-result-object v0

    invoke-virtual {v0}, LkR;->a()Lld;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/android/apps/docs/fragment/CommentStreamThreadFragment;->a(Lld;Lna;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 112
    iget-object v1, p0, LdZ;->a:Lcom/google/android/apps/docs/app/CommentStreamActivity;

    invoke-virtual {v1}, Lcom/google/android/apps/docs/app/CommentStreamActivity;->a()Lx;

    move-result-object v1

    invoke-virtual {v1}, Lx;->a()LH;

    move-result-object v1

    const/16 v2, 0x1001

    invoke-virtual {v1, v2}, LH;->a(I)LH;

    move-result-object v1

    sget v2, LcS;->comments_activity_holder:I

    invoke-virtual {v1, v2, v0}, LH;->b(ILandroid/support/v4/app/Fragment;)LH;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, LH;->a(Ljava/lang/String;)LH;

    move-result-object v0

    invoke-virtual {v0}, LH;->a()I

    .line 115
    return-void
.end method

.method public a()Z
    .registers 2

    .prologue
    .line 152
    const/4 v0, 0x0

    return v0
.end method
