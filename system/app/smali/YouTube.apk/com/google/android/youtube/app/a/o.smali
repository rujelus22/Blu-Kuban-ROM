.class public final Lcom/google/android/youtube/app/a/o;
.super Lcom/google/android/youtube/core/a/a;
.source "SourceFile"


# instance fields
.field private final a:Landroid/app/Activity;

.field private final b:Landroid/view/LayoutInflater;

.field private c:Ljava/util/List;

.field private d:Lcom/google/android/a/e/c;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .registers 3
    .parameter

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/google/android/youtube/core/a/a;-><init>()V

    .line 32
    const-string v0, "activity can not be null"

    invoke-static {p1, v0}, Lcom/google/android/a/f/d;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    iput-object v0, p0, Lcom/google/android/youtube/app/a/o;->a:Landroid/app/Activity;

    .line 34
    invoke-virtual {p1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/app/a/o;->b:Landroid/view/LayoutInflater;

    .line 35
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/app/a/o;->c:Ljava/util/List;

    .line 36
    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/a/e/c;)V
    .registers 2
    .parameter

    .prologue
    .line 93
    iput-object p1, p0, Lcom/google/android/youtube/app/a/o;->d:Lcom/google/android/a/e/c;

    .line 94
    return-void
.end method

.method public final a(Ljava/util/List;)V
    .registers 2
    .parameter

    .prologue
    .line 89
    iput-object p1, p0, Lcom/google/android/youtube/app/a/o;->c:Ljava/util/List;

    .line 90
    return-void
.end method

.method public final getCount()I
    .registers 2

    .prologue
    .line 40
    iget-object v0, p0, Lcom/google/android/youtube/app/a/o;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x2

    return v0
.end method

.method public final synthetic getItem(I)Ljava/lang/Object;
    .registers 4
    .parameter

    .prologue
    .line 24
    if-lez p1, :cond_15

    iget-object v0, p0, Lcom/google/android/youtube/app/a/o;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gt p1, v0, :cond_15

    iget-object v0, p0, Lcom/google/android/youtube/app/a/o;->c:Ljava/util/List;

    add-int/lit8 v1, p1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/a/e/c;

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
    .line 53
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

    .line 58
    if-nez p2, :cond_3f

    .line 59
    iget-object v0, p0, Lcom/google/android/youtube/app/a/o;->b:Landroid/view/LayoutInflater;

    const v1, 0x7f040044

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 60
    new-instance v0, Lcom/google/android/youtube/app/a/p;

    invoke-direct {v0, p0, p2}, Lcom/google/android/youtube/app/a/p;-><init>(Lcom/google/android/youtube/app/a/o;Landroid/view/View;)V

    .line 61
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object v1, v0

    .line 66
    :goto_16
    iget-object v0, v1, Lcom/google/android/youtube/app/a/p;->b:Landroid/widget/TextView;

    if-eqz v0, :cond_3e

    iget-object v0, v1, Lcom/google/android/youtube/app/a/p;->a:Landroid/widget/ImageView;

    if-eqz v0, :cond_3e

    iget-object v0, v1, Lcom/google/android/youtube/app/a/p;->c:Landroid/widget/ImageView;

    if-eqz v0, :cond_3e

    .line 68
    if-nez p1, :cond_49

    .line 69
    iget-object v0, v1, Lcom/google/android/youtube/app/a/p;->b:Landroid/widget/TextView;

    const v4, 0x7f0a01b9

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(I)V

    .line 70
    iget-object v0, v1, Lcom/google/android/youtube/app/a/p;->a:Landroid/widget/ImageView;

    const v4, 0x7f02004a

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 71
    iget-object v1, v1, Lcom/google/android/youtube/app/a/p;->c:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/google/android/youtube/app/a/o;->d:Lcom/google/android/a/e/c;

    if-nez v0, :cond_47

    move v0, v2

    :goto_3b
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 85
    :cond_3e
    :goto_3e
    return-object p2

    .line 63
    :cond_3f
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/app/a/p;

    move-object v1, v0

    goto :goto_16

    :cond_47
    move v0, v3

    .line 71
    goto :goto_3b

    .line 72
    :cond_49
    iget-object v0, p0, Lcom/google/android/youtube/app/a/o;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gt p1, v0, :cond_7c

    .line 73
    iget-object v0, p0, Lcom/google/android/youtube/app/a/o;->c:Ljava/util/List;

    add-int/lit8 v4, p1, -0x1

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/a/e/c;

    .line 74
    iget-object v4, v1, Lcom/google/android/youtube/app/a/p;->b:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/google/android/a/e/c;->c()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 75
    iget-object v4, v1, Lcom/google/android/youtube/app/a/p;->a:Landroid/widget/ImageView;

    const v5, 0x7f0200a5

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 76
    iget-object v1, v1, Lcom/google/android/youtube/app/a/p;->c:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/google/android/youtube/app/a/o;->d:Lcom/google/android/a/e/c;

    invoke-virtual {v0, v4}, Lcom/google/android/a/e/c;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7a

    :goto_76
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_3e

    :cond_7a
    move v2, v3

    goto :goto_76

    .line 79
    :cond_7c
    iget-object v0, v1, Lcom/google/android/youtube/app/a/p;->b:Landroid/widget/TextView;

    const v2, 0x7f0a01b1

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 80
    iget-object v0, v1, Lcom/google/android/youtube/app/a/p;->a:Landroid/widget/ImageView;

    const v2, 0x7f020058

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 81
    iget-object v0, v1, Lcom/google/android/youtube/app/a/p;->c:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_3e
.end method
