.class public LGJ;
.super Ljava/lang/Object;
.source "CommentStreamFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/android/apps/docs/fragment/CommentStreamFragment;

.field final synthetic a:Lmu;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/docs/fragment/CommentStreamFragment;Lmu;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 270
    iput-object p1, p0, LGJ;->a:Lcom/google/android/apps/docs/fragment/CommentStreamFragment;

    iput-object p2, p0, LGJ;->a:Lmu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 274
    :try_start_0
    iget-object v0, p0, LGJ;->a:Lmu;

    invoke-interface {v0}, Lmu;->a()Ljava/lang/Object;
    :try_end_5
    .catch LmM; {:try_start_0 .. :try_end_5} :catch_6

    .line 278
    :goto_5
    return-void

    .line 275
    :catch_6
    move-exception v0

    .line 276
    iget-object v0, p0, LGJ;->a:Lcom/google/android/apps/docs/fragment/CommentStreamFragment;

    invoke-virtual {v0}, Lcom/google/android/apps/docs/fragment/CommentStreamFragment;->a()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    sget v1, LcY;->comment_post_error:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_5
.end method
