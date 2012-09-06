.class final Lcom/google/android/youtube/app/adapter/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/youtube/app/adapter/az;


# instance fields
.field final synthetic a:Lcom/google/android/youtube/app/adapter/n;

.field private final b:Landroid/view/View;

.field private final c:Landroid/widget/TextView;

.field private final d:Landroid/widget/TextView;

.field private final e:Landroid/widget/ImageView;

.field private final f:Lcom/google/android/youtube/app/adapter/i;

.field private g:Lcom/google/android/youtube/core/async/l;


# direct methods
.method private constructor <init>(Lcom/google/android/youtube/app/adapter/n;Landroid/view/View;)V
    .registers 9
    .parameter
    .parameter

    .prologue
    const v4, 0x7f08003a

    .line 53
    iput-object p1, p0, Lcom/google/android/youtube/app/adapter/o;->a:Lcom/google/android/youtube/app/adapter/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-object p2, p0, Lcom/google/android/youtube/app/adapter/o;->b:Landroid/view/View;

    .line 55
    const v0, 0x7f080044

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/youtube/app/adapter/o;->c:Landroid/widget/TextView;

    .line 56
    const v0, 0x7f080064

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/youtube/app/adapter/o;->d:Landroid/widget/TextView;

    .line 57
    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/google/android/youtube/app/adapter/o;->e:Landroid/widget/ImageView;

    .line 58
    new-instance v0, Lcom/google/android/youtube/app/adapter/p;

    invoke-static {p1}, Lcom/google/android/youtube/app/adapter/n;->a(Lcom/google/android/youtube/app/adapter/n;)Landroid/content/Context;

    move-result-object v2

    move-object v1, p0

    move-object v3, p2

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/google/android/youtube/app/adapter/p;-><init>(Lcom/google/android/youtube/app/adapter/o;Landroid/content/Context;Landroid/view/View;ILcom/google/android/youtube/app/adapter/n;)V

    iput-object v0, p0, Lcom/google/android/youtube/app/adapter/o;->f:Lcom/google/android/youtube/app/adapter/i;

    .line 67
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/youtube/app/adapter/n;Landroid/view/View;Landroid/view/ViewGroup;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 45
    invoke-direct {p0, p1, p2}, Lcom/google/android/youtube/app/adapter/o;-><init>(Lcom/google/android/youtube/app/adapter/n;Landroid/view/View;)V

    return-void
.end method

.method static synthetic a(Lcom/google/android/youtube/app/adapter/o;)Lcom/google/android/youtube/core/async/l;
    .registers 2
    .parameter

    .prologue
    .line 45
    iget-object v0, p0, Lcom/google/android/youtube/app/adapter/o;->g:Lcom/google/android/youtube/core/async/l;

    return-object v0
.end method

.method static synthetic b(Lcom/google/android/youtube/app/adapter/o;)Lcom/google/android/youtube/app/adapter/i;
    .registers 2
    .parameter

    .prologue
    .line 45
    iget-object v0, p0, Lcom/google/android/youtube/app/adapter/o;->f:Lcom/google/android/youtube/app/adapter/i;

    return-object v0
.end method


# virtual methods
.method public final synthetic a(ILjava/lang/Object;)Landroid/view/View;
    .registers 9
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x0

    .line 45
    check-cast p2, Lcom/google/android/youtube/core/model/Channel;

    iget-object v0, p0, Lcom/google/android/youtube/app/adapter/o;->c:Landroid/widget/TextView;

    iget-object v1, p2, Lcom/google/android/youtube/core/model/Channel;->author:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/google/android/youtube/app/adapter/o;->d:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/google/android/youtube/app/adapter/o;->a:Lcom/google/android/youtube/app/adapter/n;

    invoke-static {v1}, Lcom/google/android/youtube/app/adapter/n;->a(Lcom/google/android/youtube/app/adapter/n;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0b01a7

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    iget v4, p2, Lcom/google/android/youtube/core/model/Channel;->videoCount:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/google/android/youtube/app/adapter/o;->e:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    new-instance v0, Lcom/google/android/youtube/app/adapter/q;

    invoke-direct {v0, p0, p1, v5}, Lcom/google/android/youtube/app/adapter/q;-><init>(Lcom/google/android/youtube/app/adapter/o;IB)V

    iput-object v0, p0, Lcom/google/android/youtube/app/adapter/o;->g:Lcom/google/android/youtube/core/async/l;

    iget-object v0, p0, Lcom/google/android/youtube/app/adapter/o;->a:Lcom/google/android/youtube/app/adapter/n;

    invoke-static {v0}, Lcom/google/android/youtube/app/adapter/n;->d(Lcom/google/android/youtube/app/adapter/n;)Lcom/google/android/youtube/core/b/ae;

    move-result-object v0

    iget-object v1, p2, Lcom/google/android/youtube/core/model/Channel;->userProfileUri:Landroid/net/Uri;

    iget-object v2, p0, Lcom/google/android/youtube/app/adapter/o;->a:Lcom/google/android/youtube/app/adapter/n;

    invoke-static {v2}, Lcom/google/android/youtube/app/adapter/n;->c(Lcom/google/android/youtube/app/adapter/n;)Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/youtube/app/adapter/o;->g:Lcom/google/android/youtube/core/async/l;

    invoke-static {v2, v3}, Lcom/google/android/youtube/core/async/af;->a(Landroid/os/Handler;Lcom/google/android/youtube/core/async/l;)Lcom/google/android/youtube/core/async/af;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/google/android/youtube/core/b/ae;->c(Landroid/net/Uri;Lcom/google/android/youtube/core/async/l;)V

    iget-object v0, p0, Lcom/google/android/youtube/app/adapter/o;->b:Landroid/view/View;

    return-object v0
.end method
