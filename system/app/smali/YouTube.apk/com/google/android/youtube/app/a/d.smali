.class public final Lcom/google/android/youtube/app/a/d;
.super Lcom/google/android/youtube/core/a/a;
.source "SourceFile"


# instance fields
.field private final a:Landroid/view/LayoutInflater;

.field private final b:Landroid/content/res/Resources;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/google/android/youtube/core/a/a;-><init>()V

    .line 26
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/app/a/d;->b:Landroid/content/res/Resources;

    .line 27
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/app/a/d;->a:Landroid/view/LayoutInflater;

    .line 28
    return-void
.end method


# virtual methods
.method public final areAllItemsEnabled()Z
    .registers 2

    .prologue
    .line 66
    const/4 v0, 0x0

    return v0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 8
    .parameter
    .parameter
    .parameter

    .prologue
    .line 32
    if-nez p2, :cond_37

    .line 33
    iget-object v0, p0, Lcom/google/android/youtube/app/a/d;->a:Landroid/view/LayoutInflater;

    const v1, 0x7f040011

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 34
    new-instance v0, Lcom/google/android/youtube/app/a/e;

    invoke-direct {v0, p2}, Lcom/google/android/youtube/app/a/e;-><init>(Landroid/view/View;)V

    .line 35
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object v1, v0

    .line 40
    :goto_15
    invoke-virtual {p0, p1}, Lcom/google/android/youtube/app/a/d;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/model/Comment;

    .line 41
    iget-object v2, v1, Lcom/google/android/youtube/app/a/e;->a:Landroid/widget/TextView;

    iget-object v3, v0, Lcom/google/android/youtube/core/model/Comment;->author:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 42
    iget-object v2, v0, Lcom/google/android/youtube/core/model/Comment;->publishedDate:Ljava/util/Date;

    iget-object v3, p0, Lcom/google/android/youtube/app/a/d;->b:Landroid/content/res/Resources;

    invoke-static {v2, v3}, Lcom/google/android/youtube/core/utils/r;->a(Ljava/util/Date;Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v2

    .line 43
    iget-object v3, v1, Lcom/google/android/youtube/app/a/e;->b:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 44
    iget-object v1, v1, Lcom/google/android/youtube/app/a/e;->c:Landroid/widget/TextView;

    iget-object v0, v0, Lcom/google/android/youtube/core/model/Comment;->content:Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 45
    return-object p2

    .line 38
    :cond_37
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/app/a/e;

    move-object v1, v0

    goto :goto_15
.end method

.method public final isEnabled(I)Z
    .registers 3
    .parameter

    .prologue
    .line 71
    const/4 v0, 0x0

    return v0
.end method
