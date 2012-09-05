.class public Lcom/google/googlenav/ui/view/android/bm;
.super Lcom/google/googlenav/ui/view/android/bN;


# instance fields
.field private R:Lbb/c;

.field private final S:Lbd/aj;

.field private T:I


# direct methods
.method private constructor <init>(Lcom/google/googlenav/ui/view/android/bp;)V
    .registers 6

    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/view/android/bN;-><init>(Lcom/google/googlenav/ui/view/android/bO;)V

    invoke-static {p1}, Lcom/google/googlenav/ui/view/android/bp;->a(Lcom/google/googlenav/ui/view/android/bp;)Lbb/c;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ui/view/android/bm;->R:Lbb/c;

    invoke-static {p1}, Lcom/google/googlenav/ui/view/android/bp;->b(Lcom/google/googlenav/ui/view/android/bp;)I

    move-result v0

    iput v0, p0, Lcom/google/googlenav/ui/view/android/bm;->T:I

    iget v0, p0, Lcom/google/googlenav/ui/view/android/bm;->T:I

    if-gtz v0, :cond_2b

    const/16 v0, 0x364

    invoke-static {v0}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/google/googlenav/ui/bg;->aR:Lcom/google/googlenav/ui/bg;

    invoke-static {v0, v1}, Lcom/google/googlenav/ui/bh;->b(Ljava/lang/String;Lcom/google/googlenav/ui/bg;)Lcom/google/googlenav/ui/bh;

    move-result-object v0

    :goto_1f
    new-instance v1, Lbd/aj;

    iget v2, p0, Lcom/google/googlenav/ui/view/android/bm;->T:I

    iget-object v3, p0, Lcom/google/googlenav/ui/view/android/bm;->R:Lbb/c;

    invoke-direct {v1, v2, v0, v3}, Lbd/aj;-><init>(ILcom/google/googlenav/ui/bh;Lbb/c;)V

    iput-object v1, p0, Lcom/google/googlenav/ui/view/android/bm;->S:Lbd/aj;

    return-void

    :cond_2b
    const/16 v0, 0x334

    invoke-static {v0}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/google/googlenav/ui/bg;->aR:Lcom/google/googlenav/ui/bg;

    invoke-static {v0, v1}, Lcom/google/googlenav/ui/bh;->b(Ljava/lang/String;Lcom/google/googlenav/ui/bg;)Lcom/google/googlenav/ui/bh;

    move-result-object v0

    goto :goto_1f
.end method

.method synthetic constructor <init>(Lcom/google/googlenav/ui/view/android/bp;Lcom/google/googlenav/ui/view/android/bn;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/view/android/bm;-><init>(Lcom/google/googlenav/ui/view/android/bp;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)Lbd/aJ;
    .registers 4

    new-instance v0, Lcom/google/googlenav/ui/view/android/bo;

    invoke-direct {v0}, Lcom/google/googlenav/ui/view/android/bo;-><init>()V

    invoke-virtual {p0, v0, p1}, Lcom/google/googlenav/ui/view/android/bm;->a(Lcom/google/googlenav/ui/view/android/bP;Landroid/view/View;)V

    const v1, 0x7f0f01af

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, v0, Lcom/google/googlenav/ui/view/android/bo;->a:Landroid/view/View;

    return-object v0
.end method

.method public a(Lcom/google/googlenav/ui/p;Lbd/aJ;)V
    .registers 9

    invoke-super {p0, p1, p2}, Lcom/google/googlenav/ui/view/android/bN;->a(Lcom/google/googlenav/ui/p;Lbd/aJ;)V

    check-cast p2, Lcom/google/googlenav/ui/view/android/bo;

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bm;->S:Lbd/aj;

    iget-object v1, p2, Lcom/google/googlenav/ui/view/android/bo;->a:Landroid/view/View;

    invoke-virtual {v0, v1}, Lbd/aj;->a(Landroid/view/View;)V

    iget-object v0, p2, Lcom/google/googlenav/ui/view/android/bo;->a:Landroid/view/View;

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/bm;->R:Lbb/c;

    new-instance v2, Lbb/a;

    const/16 v3, 0x6a4

    iget v4, p0, Lcom/google/googlenav/ui/view/android/bm;->P:I

    const/4 v5, 0x0

    invoke-direct {v2, v3, v4, v5}, Lbb/a;-><init>(IILjava/lang/Object;)V

    invoke-static {v0, v1, v2}, Lcom/google/googlenav/ui/android/ao;->a(Landroid/view/View;Lbb/c;Lbb/E;)Lcom/google/googlenav/ui/android/ao;

    return-void
.end method

.method public b()I
    .registers 2

    const v0, 0x7f030071

    return v0
.end method
