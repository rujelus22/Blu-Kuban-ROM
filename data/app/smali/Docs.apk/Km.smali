.class public LKm;
.super Ljava/lang/Object;
.source "KixWebViewActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/android/apps/docs/kixwebview/KixWebViewActivity;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/docs/kixwebview/KixWebViewActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 825
    iput-object p1, p0, LKm;->a:Lcom/google/android/apps/docs/kixwebview/KixWebViewActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 828
    iget-object v0, p0, LKm;->a:Lcom/google/android/apps/docs/kixwebview/KixWebViewActivity;

    iget-object v0, v0, Lcom/google/android/apps/docs/kixwebview/KixWebViewActivity;->a:Lck;

    iget-object v1, p0, LKm;->a:Lcom/google/android/apps/docs/kixwebview/KixWebViewActivity;

    invoke-interface {v0, v1}, Lck;->a(Landroid/content/Context;)V

    .line 829
    iget-object v0, p0, LKm;->a:Lcom/google/android/apps/docs/kixwebview/KixWebViewActivity;

    invoke-virtual {v0}, Lcom/google/android/apps/docs/kixwebview/KixWebViewActivity;->a()Lx;

    move-result-object v1

    .line 831
    invoke-virtual {v1}, Lx;->a()I

    move-result v0

    if-lez v0, :cond_21

    .line 832
    invoke-virtual {v1}, Lx;->a()I

    move-result v0

    .line 833
    :goto_19
    if-lez v0, :cond_43

    .line 834
    invoke-virtual {v1}, Lx;->a()V

    .line 835
    add-int/lit8 v0, v0, -0x1

    goto :goto_19

    .line 838
    :cond_21
    iget-object v0, p0, LKm;->a:Lcom/google/android/apps/docs/kixwebview/KixWebViewActivity;

    invoke-static {v0}, Lcom/google/android/apps/docs/kixwebview/KixWebViewActivity;->a(Lcom/google/android/apps/docs/kixwebview/KixWebViewActivity;)Lld;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/apps/docs/fragment/CommentStreamFragment;->a(Lld;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 839
    invoke-virtual {v1}, Lx;->a()LH;

    move-result-object v1

    sget v2, LcS;->side_fragment_holder:I

    invoke-virtual {v1, v2, v0}, LH;->b(ILandroid/support/v4/app/Fragment;)LH;

    move-result-object v0

    const/16 v1, 0x1001

    invoke-virtual {v0, v1}, LH;->a(I)LH;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, LH;->a(Ljava/lang/String;)LH;

    move-result-object v0

    invoke-virtual {v0}, LH;->a()I

    .line 842
    :cond_43
    return-void
.end method
