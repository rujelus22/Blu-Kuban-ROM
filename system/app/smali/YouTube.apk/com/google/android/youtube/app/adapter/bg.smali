.class public final Lcom/google/android/youtube/app/adapter/bg;
.super Lcom/google/android/youtube/core/a/a;
.source "SourceFile"


# instance fields
.field private final a:Landroid/view/LayoutInflater;

.field private b:Ljava/util/List;

.field private c:Lcom/google/android/youtube/app/remote/ap;


# direct methods
.method private constructor <init>(Landroid/app/Activity;)V
    .registers 3
    .parameter

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/google/android/youtube/core/a/a;-><init>()V

    .line 41
    const-string v0, "activity can not be null"

    invoke-static {p1, v0}, Lcom/google/android/ytremote/util/b;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    invoke-virtual {p1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/app/adapter/bg;->a:Landroid/view/LayoutInflater;

    .line 44
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/app/adapter/bg;->b:Ljava/util/List;

    .line 45
    return-void
.end method

.method public static a(Landroid/app/Activity;)Lcom/google/android/youtube/app/adapter/bg;
    .registers 2
    .parameter

    .prologue
    .line 33
    new-instance v0, Lcom/google/android/youtube/app/adapter/bg;

    invoke-direct {v0, p0}, Lcom/google/android/youtube/app/adapter/bg;-><init>(Landroid/app/Activity;)V

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/google/android/youtube/app/remote/ap;)V
    .registers 2
    .parameter

    .prologue
    .line 99
    iput-object p1, p0, Lcom/google/android/youtube/app/adapter/bg;->c:Lcom/google/android/youtube/app/remote/ap;

    .line 100
    return-void
.end method

.method public final a(Ljava/util/List;)V
    .registers 2
    .parameter

    .prologue
    .line 95
    iput-object p1, p0, Lcom/google/android/youtube/app/adapter/bg;->b:Ljava/util/List;

    .line 96
    return-void
.end method

.method public final getCount()I
    .registers 2

    .prologue
    .line 49
    iget-object v0, p0, Lcom/google/android/youtube/app/adapter/bg;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public final synthetic getItem(I)Ljava/lang/Object;
    .registers 4
    .parameter

    .prologue
    .line 26
    if-lez p1, :cond_15

    iget-object v0, p0, Lcom/google/android/youtube/app/adapter/bg;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gt p1, v0, :cond_15

    iget-object v0, p0, Lcom/google/android/youtube/app/adapter/bg;->b:Ljava/util/List;

    add-int/lit8 v1, p1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/app/remote/ap;

    :goto_14
    return-object v0

    :cond_15
    const/4 v0, 0x0

    goto :goto_14
.end method

.method public final getItemId(I)J
    .registers 4
    .parameter

    .prologue
    .line 62
    int-to-long v0, p1

    return-wide v0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 10
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x0

    .line 68
    if-nez p2, :cond_3f

    .line 69
    iget-object v0, p0, Lcom/google/android/youtube/app/adapter/bg;->a:Landroid/view/LayoutInflater;

    const v1, 0x7f04007d

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 70
    new-instance v0, Lcom/google/android/youtube/app/adapter/bh;

    invoke-direct {v0, p0, p2}, Lcom/google/android/youtube/app/adapter/bh;-><init>(Lcom/google/android/youtube/app/adapter/bg;Landroid/view/View;)V

    .line 71
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object v1, v0

    .line 76
    :goto_16
    iget-object v0, v1, Lcom/google/android/youtube/app/adapter/bh;->b:Landroid/widget/TextView;

    if-eqz v0, :cond_3e

    iget-object v0, v1, Lcom/google/android/youtube/app/adapter/bh;->a:Landroid/widget/ImageView;

    if-eqz v0, :cond_3e

    iget-object v0, v1, Lcom/google/android/youtube/app/adapter/bh;->c:Landroid/widget/ImageView;

    if-eqz v0, :cond_3e

    .line 78
    if-nez p1, :cond_49

    .line 79
    iget-object v0, v1, Lcom/google/android/youtube/app/adapter/bh;->b:Landroid/widget/TextView;

    const v4, 0x7f0b0210

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(I)V

    .line 80
    iget-object v0, v1, Lcom/google/android/youtube/app/adapter/bh;->a:Landroid/widget/ImageView;

    const v4, 0x7f020073

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 81
    iget-object v1, v1, Lcom/google/android/youtube/app/adapter/bh;->c:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/google/android/youtube/app/adapter/bg;->c:Lcom/google/android/youtube/app/remote/ap;

    if-nez v0, :cond_47

    move v0, v2

    :goto_3b
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 91
    :cond_3e
    :goto_3e
    return-object p2

    .line 73
    :cond_3f
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/app/adapter/bh;

    move-object v1, v0

    goto :goto_16

    :cond_47
    move v0, v3

    .line 81
    goto :goto_3b

    .line 82
    :cond_49
    iget-object v0, p0, Lcom/google/android/youtube/app/adapter/bg;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gt p1, v0, :cond_3e

    .line 83
    iget-object v0, p0, Lcom/google/android/youtube/app/adapter/bg;->b:Ljava/util/List;

    add-int/lit8 v4, p1, -0x1

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/app/remote/ap;

    .line 84
    iget-object v4, v1, Lcom/google/android/youtube/app/adapter/bh;->b:Landroid/widget/TextView;

    invoke-interface {v0}, Lcom/google/android/youtube/app/remote/ap;->a()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 85
    iget-object v4, v1, Lcom/google/android/youtube/app/adapter/bh;->a:Landroid/widget/ImageView;

    const v5, 0x7f0200f1

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 86
    iget-object v1, v1, Lcom/google/android/youtube/app/adapter/bh;->c:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/google/android/youtube/app/adapter/bg;->c:Lcom/google/android/youtube/app/remote/ap;

    invoke-virtual {v0, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7a

    :goto_76
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_3e

    :cond_7a
    move v2, v3

    goto :goto_76
.end method
