.class Lea;
.super Ljava/lang/Object;
.source "CommentStreamActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:LdZ;

.field final synthetic a:Lmu;


# direct methods
.method constructor <init>(LdZ;Lmu;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 120
    iput-object p1, p0, Lea;->a:LdZ;

    iput-object p2, p0, Lea;->a:Lmu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 124
    :try_start_0
    iget-object v0, p0, Lea;->a:Lmu;

    invoke-interface {v0}, Lmu;->a()Ljava/lang/Object;
    :try_end_5
    .catch LmM; {:try_start_0 .. :try_end_5} :catch_d

    .line 130
    :goto_5
    iget-object v0, p0, Lea;->a:LdZ;

    iget-object v0, v0, LdZ;->a:Lcom/google/android/apps/docs/app/CommentStreamActivity;

    invoke-static {v0}, Lcom/google/android/apps/docs/app/CommentStreamActivity;->a(Lcom/google/android/apps/docs/app/CommentStreamActivity;)V

    .line 131
    return-void

    .line 125
    :catch_d
    move-exception v0

    .line 127
    iget-object v0, p0, Lea;->a:LdZ;

    iget-object v0, v0, LdZ;->a:Lcom/google/android/apps/docs/app/CommentStreamActivity;

    sget v1, LcY;->comment_post_error:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_5
.end method
