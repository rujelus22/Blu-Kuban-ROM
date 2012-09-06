.class public Led;
.super Lpx;
.source "CommentStreamActivity.java"


# instance fields
.field final synthetic a:Lcom/google/android/apps/docs/app/CommentStreamActivity;


# direct methods
.method private constructor <init>(Lcom/google/android/apps/docs/app/CommentStreamActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 81
    iput-object p1, p0, Led;->a:Lcom/google/android/apps/docs/app/CommentStreamActivity;

    invoke-direct {p0}, Lpx;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/android/apps/docs/app/CommentStreamActivity;LdZ;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 81
    invoke-direct {p0, p1}, Led;-><init>(Lcom/google/android/apps/docs/app/CommentStreamActivity;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 99
    sget v0, LcU;->discussions_quick_actions:I

    invoke-virtual {p1, v0, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 100
    return-void
.end method

.method public a(Landroid/view/View;)V
    .registers 3
    .parameter

    .prologue
    .line 92
    iget-object v0, p0, Led;->a:Lcom/google/android/apps/docs/app/CommentStreamActivity;

    invoke-static {v0}, Lcom/google/android/apps/docs/app/CommentStreamActivity;->a(Lcom/google/android/apps/docs/app/CommentStreamActivity;)Landroid/view/View$OnClickListener;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 93
    iget-object v0, p0, Led;->a:Lcom/google/android/apps/docs/app/CommentStreamActivity;

    invoke-static {v0}, Lcom/google/android/apps/docs/app/CommentStreamActivity;->a(Lcom/google/android/apps/docs/app/CommentStreamActivity;)Landroid/view/View$OnClickListener;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 95
    :cond_11
    return-void
.end method

.method public a(Lpy;)V
    .registers 3
    .parameter

    .prologue
    .line 84
    iget-object v0, p0, Led;->a:Lcom/google/android/apps/docs/app/CommentStreamActivity;

    invoke-static {v0}, Lcom/google/android/apps/docs/app/CommentStreamActivity;->a(Lcom/google/android/apps/docs/app/CommentStreamActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1, v0}, Lpy;->a(Landroid/view/View;)V

    .line 85
    return-void
.end method

.method public a()Z
    .registers 2

    .prologue
    .line 104
    const/4 v0, 0x0

    return v0
.end method
