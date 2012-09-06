.class public Lcom/google/googlenav/ui/r;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field a:[B

.field b:LS/f;

.field c:J

.field d:C


# direct methods
.method private constructor <init>([BJC)V
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 602
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 598
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/googlenav/ui/r;->b:LS/f;

    .line 603
    iput-char p4, p0, Lcom/google/googlenav/ui/r;->d:C

    .line 604
    iput-wide p2, p0, Lcom/google/googlenav/ui/r;->c:J

    .line 605
    iput-object p1, p0, Lcom/google/googlenav/ui/r;->a:[B

    .line 608
    return-void
.end method

.method synthetic constructor <init>([BJCLcom/google/googlenav/ui/q;)V
    .registers 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 596
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/googlenav/ui/r;-><init>([BJC)V

    return-void
.end method

.method static synthetic a(Lcom/google/googlenav/ui/r;)C
    .registers 2
    .parameter

    .prologue
    .line 596
    invoke-direct {p0}, Lcom/google/googlenav/ui/r;->c()C

    move-result v0

    return v0
.end method

.method private b()LS/f;
    .registers 5

    .prologue
    .line 613
    iget-object v0, p0, Lcom/google/googlenav/ui/r;->b:LS/f;

    if-nez v0, :cond_18

    .line 614
    invoke-static {}, Lcom/google/googlenav/common/Config;->a()Lcom/google/googlenav/common/Config;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/common/Config;->n()LS/h;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/ui/r;->a:[B

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/google/googlenav/ui/r;->a:[B

    array-length v3, v3

    invoke-interface {v0, v1, v2, v3}, LS/h;->a([BII)LS/f;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ui/r;->b:LS/f;

    .line 618
    :cond_18
    iget-object v0, p0, Lcom/google/googlenav/ui/r;->b:LS/f;

    return-object v0
.end method

.method static synthetic b(Lcom/google/googlenav/ui/r;)LS/f;
    .registers 2
    .parameter

    .prologue
    .line 596
    invoke-direct {p0}, Lcom/google/googlenav/ui/r;->b()LS/f;

    move-result-object v0

    return-object v0
.end method

.method private c()C
    .registers 2

    .prologue
    .line 622
    iget-char v0, p0, Lcom/google/googlenav/ui/r;->d:C

    return v0
.end method


# virtual methods
.method public a()I
    .registers 3

    .prologue
    .line 627
    iget-object v0, p0, Lcom/google/googlenav/ui/r;->a:[B

    array-length v0, v0

    .line 628
    iget-object v1, p0, Lcom/google/googlenav/ui/r;->b:LS/f;

    if-eqz v1, :cond_e

    .line 629
    iget-object v1, p0, Lcom/google/googlenav/ui/r;->b:LS/f;

    invoke-interface {v1}, LS/f;->g()I

    move-result v1

    add-int/2addr v0, v1

    .line 631
    :cond_e
    return v0
.end method
