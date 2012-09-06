.class final Lcom/google/android/youtube/app/adapter/ai;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/youtube/app/adapter/az;


# instance fields
.field final synthetic a:Lcom/google/android/youtube/app/adapter/ah;

.field private final b:Landroid/view/View;

.field private final c:Landroid/widget/TextView;

.field private final d:Lcom/google/android/youtube/app/adapter/az;


# direct methods
.method private constructor <init>(Lcom/google/android/youtube/app/adapter/ah;Landroid/view/View;Landroid/view/ViewGroup;)V
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 52
    iput-object p1, p0, Lcom/google/android/youtube/app/adapter/ai;->a:Lcom/google/android/youtube/app/adapter/ah;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    const v0, 0x7f080054

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/app/adapter/ai;->b:Landroid/view/View;

    .line 54
    iget-object v0, p0, Lcom/google/android/youtube/app/adapter/ai;->b:Landroid/view/View;

    const v1, 0x7f080055

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/youtube/app/adapter/ai;->c:Landroid/widget/TextView;

    .line 55
    invoke-static {p1}, Lcom/google/android/youtube/app/adapter/ah;->a(Lcom/google/android/youtube/app/adapter/ah;)Lcom/google/android/youtube/app/adapter/bf;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/app/adapter/ai;->b:Landroid/view/View;

    invoke-interface {v0, v1, p3}, Lcom/google/android/youtube/app/adapter/bf;->a(Landroid/view/View;Landroid/view/ViewGroup;)Lcom/google/android/youtube/app/adapter/az;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/app/adapter/ai;->d:Lcom/google/android/youtube/app/adapter/az;

    .line 56
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/youtube/app/adapter/ah;Landroid/view/View;Landroid/view/ViewGroup;B)V
    .registers 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 46
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/youtube/app/adapter/ai;-><init>(Lcom/google/android/youtube/app/adapter/ah;Landroid/view/View;Landroid/view/ViewGroup;)V

    return-void
.end method


# virtual methods
.method public final synthetic a(ILjava/lang/Object;)Landroid/view/View;
    .registers 9
    .parameter
    .parameter

    .prologue
    .line 46
    check-cast p2, Lcom/google/android/youtube/core/model/Event;

    iget-object v0, p0, Lcom/google/android/youtube/app/adapter/ai;->c:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/google/android/youtube/app/adapter/ai;->a:Lcom/google/android/youtube/app/adapter/ah;

    invoke-static {v1}, Lcom/google/android/youtube/app/adapter/ah;->b(Lcom/google/android/youtube/app/adapter/ah;)Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p2, Lcom/google/android/youtube/core/model/Event;->action:Lcom/google/android/youtube/core/model/Event$Action;

    iget v2, v2, Lcom/google/android/youtube/core/model/Event$Action;->stringId:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p2, Lcom/google/android/youtube/core/model/Event;->subject:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/google/android/youtube/app/adapter/ai;->d:Lcom/google/android/youtube/app/adapter/az;

    iget-object v1, p2, Lcom/google/android/youtube/core/model/Event;->targetVideo:Lcom/google/android/youtube/core/model/Video;

    invoke-interface {v0, p1, v1}, Lcom/google/android/youtube/app/adapter/az;->a(ILjava/lang/Object;)Landroid/view/View;

    iget-object v0, p0, Lcom/google/android/youtube/app/adapter/ai;->a:Lcom/google/android/youtube/app/adapter/ah;

    invoke-static {v0}, Lcom/google/android/youtube/app/adapter/ah;->b(Lcom/google/android/youtube/app/adapter/ah;)Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0058

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iget-object v1, p0, Lcom/google/android/youtube/app/adapter/ai;->b:Landroid/view/View;

    iget-object v2, p0, Lcom/google/android/youtube/app/adapter/ai;->b:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    iget-object v3, p0, Lcom/google/android/youtube/app/adapter/ai;->b:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getPaddingRight()I

    move-result v3

    iget-object v4, p0, Lcom/google/android/youtube/app/adapter/ai;->b:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getPaddingBottom()I

    move-result v4

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/view/View;->setPadding(IIII)V

    iget-object v0, p0, Lcom/google/android/youtube/app/adapter/ai;->b:Landroid/view/View;

    return-object v0
.end method
