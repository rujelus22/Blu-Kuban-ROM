.class final Lcom/google/android/youtube/app/adapter/bq;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/youtube/app/adapter/az;


# instance fields
.field final synthetic a:Lcom/google/android/youtube/app/adapter/bp;

.field private final b:Landroid/view/View;

.field private final c:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Lcom/google/android/youtube/app/adapter/bp;Landroid/view/View;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 34
    iput-object p1, p0, Lcom/google/android/youtube/app/adapter/bq;->a:Lcom/google/android/youtube/app/adapter/bp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const v0, 0x7f080104

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/app/adapter/bq;->b:Landroid/view/View;

    .line 36
    iget-object v0, p0, Lcom/google/android/youtube/app/adapter/bq;->b:Landroid/view/View;

    const v1, 0x7f080030

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/youtube/app/adapter/bq;->c:Landroid/widget/TextView;

    .line 37
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/youtube/app/adapter/bp;Landroid/view/View;Landroid/view/ViewGroup;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 29
    invoke-direct {p0, p1, p2}, Lcom/google/android/youtube/app/adapter/bq;-><init>(Lcom/google/android/youtube/app/adapter/bp;Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public final synthetic a(ILjava/lang/Object;)Landroid/view/View;
    .registers 8
    .parameter
    .parameter

    .prologue
    .line 29
    check-cast p2, Lcom/google/android/youtube/core/model/Video;

    iget-object v0, p0, Lcom/google/android/youtube/app/adapter/bq;->c:Landroid/widget/TextView;

    iget-object v1, p2, Lcom/google/android/youtube/core/model/Video;->owner:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/google/android/youtube/app/adapter/bq;->a:Lcom/google/android/youtube/app/adapter/bp;

    invoke-static {v0}, Lcom/google/android/youtube/app/adapter/bp;->a(Lcom/google/android/youtube/app/adapter/bp;)Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0058

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iget-object v1, p0, Lcom/google/android/youtube/app/adapter/bq;->b:Landroid/view/View;

    iget-object v2, p0, Lcom/google/android/youtube/app/adapter/bq;->b:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    iget-object v3, p0, Lcom/google/android/youtube/app/adapter/bq;->b:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getPaddingRight()I

    move-result v3

    iget-object v4, p0, Lcom/google/android/youtube/app/adapter/bq;->b:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getPaddingBottom()I

    move-result v4

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/view/View;->setPadding(IIII)V

    iget-object v0, p0, Lcom/google/android/youtube/app/adapter/bq;->b:Landroid/view/View;

    return-object v0
.end method
