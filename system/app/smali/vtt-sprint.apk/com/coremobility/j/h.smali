.class public Lcom/coremobility/j/h;
.super Ljava/lang/Object;


# instance fields
.field private a:J

.field public b:I

.field public c:I

.field private d:J

.field private e:I

.field private f:Lcom/coremobility/j/i;

.field private g:I

.field private h:Z


# direct methods
.method public constructor <init>(ILcom/coremobility/j/i;II)V
    .registers 8

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/coremobility/j/h;->b:I

    iput v2, p0, Lcom/coremobility/j/h;->c:I

    invoke-static {}, Lcom/coremobility/g/m;->c()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/coremobility/j/h;->a:J

    iget-wide v0, p0, Lcom/coremobility/j/h;->a:J

    iput-wide v0, p0, Lcom/coremobility/j/h;->d:J

    iput p4, p0, Lcom/coremobility/j/h;->g:I

    iput p3, p0, Lcom/coremobility/j/h;->e:I

    iput-object p2, p0, Lcom/coremobility/j/h;->f:Lcom/coremobility/j/i;

    iput-boolean v2, p0, Lcom/coremobility/j/h;->h:Z

    return-void
.end method

.method public constructor <init>(ILcom/coremobility/j/i;Z)V
    .registers 7

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/coremobility/j/h;->b:I

    iput v2, p0, Lcom/coremobility/j/h;->c:I

    invoke-static {}, Lcom/coremobility/g/m;->c()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/coremobility/j/h;->a:J

    iget-wide v0, p0, Lcom/coremobility/j/h;->a:J

    iput-wide v0, p0, Lcom/coremobility/j/h;->d:J

    iput v2, p0, Lcom/coremobility/j/h;->g:I

    iput v2, p0, Lcom/coremobility/j/h;->e:I

    iput-object p2, p0, Lcom/coremobility/j/h;->f:Lcom/coremobility/j/i;

    iput-boolean p3, p0, Lcom/coremobility/j/h;->h:Z

    return-void
.end method

.method private b(I)I
    .registers 4

    iget-object v0, p0, Lcom/coremobility/j/h;->f:Lcom/coremobility/j/i;

    iget v0, v0, Lcom/coremobility/j/i;->b:I

    if-ge p1, v0, :cond_13

    const/4 v0, 0x1

    :goto_7
    invoke-static {v0}, Lcom/coremobility/integration/c/a;->a(Z)V

    iget-object v0, p0, Lcom/coremobility/j/h;->f:Lcom/coremobility/j/i;

    iget-object v0, v0, Lcom/coremobility/j/i;->a:[I

    mul-int/lit8 v1, p1, 0x2

    aget v0, v0, v1

    return v0

    :cond_13
    const/4 v0, 0x0

    goto :goto_7
.end method

.method private c(I)I
    .registers 4

    iget-object v0, p0, Lcom/coremobility/j/h;->f:Lcom/coremobility/j/i;

    iget v0, v0, Lcom/coremobility/j/i;->b:I

    if-ge p1, v0, :cond_15

    const/4 v0, 0x1

    :goto_7
    invoke-static {v0}, Lcom/coremobility/integration/c/a;->a(Z)V

    iget-object v0, p0, Lcom/coremobility/j/h;->f:Lcom/coremobility/j/i;

    iget-object v0, v0, Lcom/coremobility/j/i;->a:[I

    mul-int/lit8 v1, p1, 0x2

    add-int/lit8 v1, v1, 0x1

    aget v0, v0, v1

    return v0

    :cond_15
    const/4 v0, 0x0

    goto :goto_7
.end method

.method private f()I
    .registers 4

    const/4 v0, 0x0

    move v1, v0

    :goto_2
    iget-object v2, p0, Lcom/coremobility/j/h;->f:Lcom/coremobility/j/i;

    iget v2, v2, Lcom/coremobility/j/i;->b:I

    if-ge v0, v2, :cond_20

    invoke-direct {p0, v0}, Lcom/coremobility/j/h;->b(I)I

    move-result v2

    if-gez v2, :cond_13

    invoke-direct {p0, v0}, Lcom/coremobility/j/h;->c(I)I

    move-result v0

    :goto_12
    return v0

    :cond_13
    add-int/2addr v1, v2

    iget v2, p0, Lcom/coremobility/j/h;->c:I

    if-ge v2, v1, :cond_1d

    invoke-direct {p0, v0}, Lcom/coremobility/j/h;->c(I)I

    move-result v0

    goto :goto_12

    :cond_1d
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_20
    const/4 v0, -0x1

    goto :goto_12
.end method


# virtual methods
.method public a()I
    .registers 2

    iget v0, p0, Lcom/coremobility/j/h;->b:I

    return v0
.end method

.method public final a(I)V
    .registers 4

    iput p1, p0, Lcom/coremobility/j/h;->b:I

    invoke-static {}, Lcom/coremobility/g/m;->c()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/coremobility/j/h;->d:J

    return-void
.end method

.method public final a(Lcom/coremobility/j/j;)V
    .registers 5

    invoke-direct {p0}, Lcom/coremobility/j/h;->f()I

    move-result v0

    invoke-static {}, Lcom/coremobility/g/m;->c()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/coremobility/j/h;->d:J

    iget v1, p0, Lcom/coremobility/j/h;->c:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/coremobility/j/h;->c:I

    iget v1, p0, Lcom/coremobility/j/h;->e:I

    if-eqz v1, :cond_1d

    invoke-direct {p0}, Lcom/coremobility/j/h;->f()I

    move-result v1

    if-gez v1, :cond_1d

    const/4 v1, -0x1

    iput v1, p0, Lcom/coremobility/j/h;->e:I

    :cond_1d
    invoke-virtual {p1, v0}, Lcom/coremobility/j/j;->a(I)V

    return-void
.end method

.method public final b()Z
    .registers 2

    iget-boolean v0, p0, Lcom/coremobility/j/h;->h:Z

    if-eqz v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return v0

    :cond_6
    invoke-virtual {p0}, Lcom/coremobility/j/h;->c()Z

    move-result v0

    goto :goto_5
.end method

.method public final c()Z
    .registers 6

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/coremobility/j/h;->b(I)I

    move-result v2

    invoke-direct {p0, v0}, Lcom/coremobility/j/h;->c(I)I

    move-result v3

    if-gtz v3, :cond_19

    iget v3, p0, Lcom/coremobility/j/h;->c:I

    add-int/lit8 v4, v2, 0x1

    if-eq v3, v4, :cond_19

    iget v3, p0, Lcom/coremobility/j/h;->c:I

    if-ne v3, v1, :cond_1a

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1a

    :cond_19
    move v0, v1

    :cond_1a
    return v0
.end method

.method public final d()I
    .registers 2

    iget v0, p0, Lcom/coremobility/j/h;->e:I

    return v0
.end method

.method public final e()I
    .registers 2

    iget v0, p0, Lcom/coremobility/j/h;->g:I

    return v0
.end method
