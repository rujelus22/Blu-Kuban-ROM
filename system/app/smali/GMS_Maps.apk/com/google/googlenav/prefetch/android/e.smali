.class Lcom/google/googlenav/prefetch/android/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr/aF;


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/google/googlenav/prefetch/android/o;

.field final synthetic c:LaD/h;

.field final synthetic d:I

.field final synthetic e:Lcom/google/googlenav/prefetch/android/BasePrefetcherService;

.field private f:I

.field private g:I


# direct methods
.method constructor <init>(Lcom/google/googlenav/prefetch/android/BasePrefetcherService;ILcom/google/googlenav/prefetch/android/o;LaD/h;I)V
    .registers 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 656
    iput-object p1, p0, Lcom/google/googlenav/prefetch/android/e;->e:Lcom/google/googlenav/prefetch/android/BasePrefetcherService;

    iput p2, p0, Lcom/google/googlenav/prefetch/android/e;->a:I

    iput-object p3, p0, Lcom/google/googlenav/prefetch/android/e;->b:Lcom/google/googlenav/prefetch/android/o;

    iput-object p4, p0, Lcom/google/googlenav/prefetch/android/e;->c:LaD/h;

    iput p5, p0, Lcom/google/googlenav/prefetch/android/e;->d:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 657
    invoke-static {}, Lcom/google/googlenav/prefetch/android/BasePrefetcherService;->m()I

    move-result v0

    iput v0, p0, Lcom/google/googlenav/prefetch/android/e;->f:I

    .line 658
    iget v0, p0, Lcom/google/googlenav/prefetch/android/e;->a:I

    iput v0, p0, Lcom/google/googlenav/prefetch/android/e;->g:I

    return-void
.end method


# virtual methods
.method public a(Ln/am;ILn/al;)V
    .registers 7
    .parameter
    .parameter
    .parameter

    .prologue
    .line 664
    iget-object v0, p0, Lcom/google/googlenav/prefetch/android/e;->b:Lcom/google/googlenav/prefetch/android/o;

    invoke-virtual {v0}, Lcom/google/googlenav/prefetch/android/o;->d()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 691
    :cond_8
    :goto_8
    return-void

    .line 669
    :cond_9
    iget v0, p0, Lcom/google/googlenav/prefetch/android/e;->f:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/googlenav/prefetch/android/e;->f:I

    .line 670
    iget v0, p0, Lcom/google/googlenav/prefetch/android/e;->g:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/googlenav/prefetch/android/e;->g:I

    .line 674
    if-eqz p2, :cond_23

    const/4 v0, 0x2

    if-eq p2, v0, :cond_23

    .line 675
    iget-object v1, p0, Lcom/google/googlenav/prefetch/android/e;->c:LaD/h;

    const/4 v0, 0x1

    if-ne p2, v0, :cond_36

    const/4 v0, 0x5

    :goto_20
    invoke-interface {v1, v0}, LaD/h;->a(I)V

    .line 679
    :cond_23
    iget-object v0, p0, Lcom/google/googlenav/prefetch/android/e;->c:LaD/h;

    iget v1, p0, Lcom/google/googlenav/prefetch/android/e;->d:I

    iget v2, p0, Lcom/google/googlenav/prefetch/android/e;->g:I

    invoke-interface {v0, v1, v2}, LaD/h;->a(II)V

    .line 680
    iget v0, p0, Lcom/google/googlenav/prefetch/android/e;->g:I

    if-nez v0, :cond_38

    .line 681
    iget-object v0, p0, Lcom/google/googlenav/prefetch/android/e;->c:LaD/h;

    invoke-interface {v0}, LaD/h;->o()V

    goto :goto_8

    .line 675
    :cond_36
    const/4 v0, 0x6

    goto :goto_20

    .line 685
    :cond_38
    iget v0, p0, Lcom/google/googlenav/prefetch/android/e;->f:I

    if-nez v0, :cond_8

    .line 686
    invoke-static {}, Lcom/google/googlenav/prefetch/android/BasePrefetcherService;->m()I

    move-result v0

    iput v0, p0, Lcom/google/googlenav/prefetch/android/e;->f:I

    .line 687
    iget-object v0, p0, Lcom/google/googlenav/prefetch/android/e;->b:Lcom/google/googlenav/prefetch/android/o;

    invoke-virtual {v0}, Lcom/google/googlenav/prefetch/android/o;->b()V

    .line 688
    iget-object v0, p0, Lcom/google/googlenav/prefetch/android/e;->e:Lcom/google/googlenav/prefetch/android/BasePrefetcherService;

    iget-object v0, v0, Lcom/google/googlenav/prefetch/android/BasePrefetcherService;->b:Lr/aP;

    iget-object v1, p0, Lcom/google/googlenav/prefetch/android/e;->b:Lcom/google/googlenav/prefetch/android/o;

    sget-object v2, Lr/e;->c:Lr/e;

    invoke-virtual {v0, v1, v2, p0}, Lr/aP;->a(Ln/an;Lr/e;Lr/aF;)V

    goto :goto_8
.end method
