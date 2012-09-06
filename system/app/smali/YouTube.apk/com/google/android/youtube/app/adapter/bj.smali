.class public Lcom/google/android/youtube/app/adapter/bj;
.super Lcom/google/android/youtube/core/a/d;
.source "SourceFile"


# instance fields
.field protected final a:Landroid/content/res/Resources;

.field private final b:Landroid/view/LayoutInflater;

.field private final c:Lcom/google/android/youtube/app/ui/ToolbarHelper;

.field private final d:Lcom/google/android/youtube/app/ui/p;

.field private final e:Z


# direct methods
.method private constructor <init>(Landroid/content/Context;Lcom/google/android/youtube/app/ui/ToolbarHelper;Z)V
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 35
    invoke-direct {p0}, Lcom/google/android/youtube/core/a/d;-><init>()V

    .line 36
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/app/adapter/bj;->b:Landroid/view/LayoutInflater;

    .line 37
    iput-object v1, p0, Lcom/google/android/youtube/app/adapter/bj;->c:Lcom/google/android/youtube/app/ui/ToolbarHelper;

    .line 38
    iput-object v1, p0, Lcom/google/android/youtube/app/adapter/bj;->d:Lcom/google/android/youtube/app/ui/p;

    .line 39
    iput-boolean p3, p0, Lcom/google/android/youtube/app/adapter/bj;->e:Z

    .line 40
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/app/adapter/bj;->a:Landroid/content/res/Resources;

    .line 41
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/youtube/app/ui/p;Z)V
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/google/android/youtube/core/a/d;-><init>()V

    .line 45
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/app/adapter/bj;->b:Landroid/view/LayoutInflater;

    .line 46
    iput-object p2, p0, Lcom/google/android/youtube/app/adapter/bj;->d:Lcom/google/android/youtube/app/ui/p;

    .line 47
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/youtube/app/adapter/bj;->c:Lcom/google/android/youtube/app/ui/ToolbarHelper;

    .line 48
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/youtube/app/adapter/bj;->e:Z

    .line 49
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/app/adapter/bj;->a:Landroid/content/res/Resources;

    .line 50
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 53
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/youtube/app/adapter/bj;-><init>(Landroid/content/Context;Lcom/google/android/youtube/app/ui/ToolbarHelper;Z)V

    .line 54
    return-void
.end method


# virtual methods
.method protected final a(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 57
    if-nez p1, :cond_14

    .line 58
    iget-object v0, p0, Lcom/google/android/youtube/app/adapter/bj;->b:Landroid/view/LayoutInflater;

    const v1, 0x7f040082

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 59
    new-instance v0, Lcom/google/android/youtube/app/adapter/bk;

    invoke-direct {v0, p1}, Lcom/google/android/youtube/app/adapter/bk;-><init>(Landroid/view/View;)V

    .line 60
    invoke-virtual {p1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 62
    :cond_14
    return-object p1
.end method

.method protected final a(Lcom/google/android/youtube/core/model/Playlist;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 10
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 66
    invoke-virtual {p0, p2, p3}, Lcom/google/android/youtube/app/adapter/bj;->a(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 67
    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/app/adapter/bk;

    .line 69
    iget-object v1, v0, Lcom/google/android/youtube/app/adapter/bk;->a:Lcom/google/android/youtube/app/ui/StackButton;

    iget-object v3, p1, Lcom/google/android/youtube/core/model/Playlist;->title:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/google/android/youtube/app/ui/StackButton;->setText(Ljava/lang/String;)V

    .line 70
    iget-object v1, v0, Lcom/google/android/youtube/app/adapter/bk;->a:Lcom/google/android/youtube/app/ui/StackButton;

    invoke-virtual {v1}, Lcom/google/android/youtube/app/ui/StackButton;->a()V

    .line 72
    iget-boolean v1, p0, Lcom/google/android/youtube/app/adapter/bj;->e:Z

    if-eqz v1, :cond_58

    iget-object v1, p1, Lcom/google/android/youtube/core/model/Playlist;->hqThumbnailUri:Landroid/net/Uri;

    .line 73
    :goto_1e
    invoke-virtual {p0, v1}, Lcom/google/android/youtube/app/adapter/bj;->b(Landroid/net/Uri;)Z

    move-result v3

    if-eqz v3, :cond_5b

    .line 75
    iget-object v3, v0, Lcom/google/android/youtube/app/adapter/bk;->a:Lcom/google/android/youtube/app/ui/StackButton;

    invoke-virtual {p0, v1}, Lcom/google/android/youtube/app/adapter/bj;->d(Landroid/net/Uri;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/google/android/youtube/app/ui/StackButton;->setThumbnail(Landroid/graphics/Bitmap;)V

    .line 80
    :goto_2d
    iget-object v1, p0, Lcom/google/android/youtube/app/adapter/bj;->c:Lcom/google/android/youtube/app/ui/ToolbarHelper;

    if-eqz v1, :cond_42

    .line 81
    iget-object v1, v0, Lcom/google/android/youtube/app/adapter/bk;->b:Landroid/widget/ImageView;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 82
    iget-object v1, v0, Lcom/google/android/youtube/app/adapter/bk;->b:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 83
    iget-object v1, p0, Lcom/google/android/youtube/app/adapter/bj;->c:Lcom/google/android/youtube/app/ui/ToolbarHelper;

    iget-object v3, v0, Lcom/google/android/youtube/app/adapter/bk;->b:Landroid/widget/ImageView;

    invoke-virtual {v1, v3, p1}, Lcom/google/android/youtube/app/ui/ToolbarHelper;->a(Landroid/view/View;Ljava/lang/Object;)V

    .line 86
    :cond_42
    iget-object v0, v0, Lcom/google/android/youtube/app/adapter/bk;->a:Lcom/google/android/youtube/app/ui/StackButton;

    invoke-virtual {v0}, Lcom/google/android/youtube/app/ui/StackButton;->b()Landroid/view/View;

    move-result-object v0

    .line 87
    iget-object v1, p0, Lcom/google/android/youtube/app/adapter/bj;->d:Lcom/google/android/youtube/app/ui/p;

    if-eqz v1, :cond_61

    .line 88
    invoke-virtual {v0, v5}, Landroid/view/View;->setClickable(Z)V

    .line 89
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 90
    iget-object v1, p0, Lcom/google/android/youtube/app/adapter/bj;->d:Lcom/google/android/youtube/app/ui/p;

    invoke-virtual {v1, v0, p1}, Lcom/google/android/youtube/app/ui/p;->a(Landroid/view/View;Ljava/lang/Object;)V

    .line 96
    :goto_57
    return-object v2

    .line 72
    :cond_58
    iget-object v1, p1, Lcom/google/android/youtube/core/model/Playlist;->thumbnailUri:Landroid/net/Uri;

    goto :goto_1e

    .line 77
    :cond_5b
    iget-object v1, v0, Lcom/google/android/youtube/app/adapter/bk;->a:Lcom/google/android/youtube/app/ui/StackButton;

    invoke-virtual {v1}, Lcom/google/android/youtube/app/ui/StackButton;->setThumbnailMissing()V

    goto :goto_2d

    .line 92
    :cond_61
    invoke-virtual {v0, v4}, Landroid/view/View;->setClickable(Z)V

    .line 93
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_57
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 100
    invoke-virtual {p0, p1}, Lcom/google/android/youtube/app/adapter/bj;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/model/Playlist;

    invoke-virtual {p0, v0, p2, p3}, Lcom/google/android/youtube/app/adapter/bj;->a(Lcom/google/android/youtube/core/model/Playlist;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method
