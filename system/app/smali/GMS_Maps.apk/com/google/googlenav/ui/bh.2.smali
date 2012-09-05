.class public Lcom/google/googlenav/ui/bh;
.super Ljava/lang/Object;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Lcom/google/googlenav/ui/bg;

.field public final c:Z

.field public final d:Z

.field public final e:Lbb/E;

.field private f:Ljava/lang/Object;

.field private g:I

.field private h:I

.field private i:I

.field private j:I


# direct methods
.method private constructor <init>(Ljava/lang/String;Lcom/google/googlenav/ui/bg;ZZLbb/E;)V
    .registers 7

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/google/googlenav/ui/bh;->g:I

    iput v0, p0, Lcom/google/googlenav/ui/bh;->h:I

    iput v0, p0, Lcom/google/googlenav/ui/bh;->i:I

    iput v0, p0, Lcom/google/googlenav/ui/bh;->j:I

    iput-object p1, p0, Lcom/google/googlenav/ui/bh;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/googlenav/ui/bh;->b:Lcom/google/googlenav/ui/bg;

    iput-boolean p3, p0, Lcom/google/googlenav/ui/bh;->c:Z

    iput-boolean p4, p0, Lcom/google/googlenav/ui/bh;->d:Z

    iput-object p5, p0, Lcom/google/googlenav/ui/bh;->e:Lbb/E;

    return-void
.end method

.method public static a(Ljava/lang/String;Lcom/google/googlenav/ui/bg;)Lcom/google/googlenav/ui/bh;
    .registers 8

    const/4 v3, 0x0

    new-instance v0, Lcom/google/googlenav/ui/bh;

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    move v4, v3

    invoke-direct/range {v0 .. v5}, Lcom/google/googlenav/ui/bh;-><init>(Ljava/lang/String;Lcom/google/googlenav/ui/bg;ZZLbb/E;)V

    return-object v0
.end method

.method public static a(Ljava/lang/String;Lcom/google/googlenav/ui/bg;Z)Lcom/google/googlenav/ui/bh;
    .registers 9

    new-instance v0, Lcom/google/googlenav/ui/bh;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/google/googlenav/ui/bh;-><init>(Ljava/lang/String;Lcom/google/googlenav/ui/bg;ZZLbb/E;)V

    return-object v0
.end method

.method public static a(Ljava/lang/String;Lcom/google/googlenav/ui/bg;ZZLbb/a;)Lcom/google/googlenav/ui/bh;
    .registers 11

    new-instance v0, Lcom/google/googlenav/ui/bh;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/googlenav/ui/bh;-><init>(Ljava/lang/String;Lcom/google/googlenav/ui/bg;ZZLbb/E;)V

    return-object v0
.end method

.method public static b(Ljava/lang/String;Lcom/google/googlenav/ui/bg;)Lcom/google/googlenav/ui/bh;
    .registers 8

    new-instance v0, Lcom/google/googlenav/ui/bh;

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/google/googlenav/ui/bh;-><init>(Ljava/lang/String;Lcom/google/googlenav/ui/bg;ZZLbb/E;)V

    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/ui/bh;->f:Ljava/lang/Object;

    return-object v0
.end method

.method public a(IIII)V
    .registers 5

    iput p1, p0, Lcom/google/googlenav/ui/bh;->g:I

    iput p2, p0, Lcom/google/googlenav/ui/bh;->h:I

    iput p3, p0, Lcom/google/googlenav/ui/bh;->i:I

    iput p4, p0, Lcom/google/googlenav/ui/bh;->j:I

    return-void
.end method

.method public a(Ljava/lang/Object;)V
    .registers 2

    iput-object p1, p0, Lcom/google/googlenav/ui/bh;->f:Ljava/lang/Object;

    return-void
.end method

.method public b()Z
    .registers 2

    iget v0, p0, Lcom/google/googlenav/ui/bh;->g:I

    if-nez v0, :cond_10

    iget v0, p0, Lcom/google/googlenav/ui/bh;->h:I

    if-nez v0, :cond_10

    iget v0, p0, Lcom/google/googlenav/ui/bh;->i:I

    if-nez v0, :cond_10

    iget v0, p0, Lcom/google/googlenav/ui/bh;->j:I

    if-eqz v0, :cond_12

    :cond_10
    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method public c()I
    .registers 2

    iget v0, p0, Lcom/google/googlenav/ui/bh;->g:I

    return v0
.end method

.method public d()I
    .registers 2

    iget v0, p0, Lcom/google/googlenav/ui/bh;->i:I

    return v0
.end method

.method public e()I
    .registers 2

    iget v0, p0, Lcom/google/googlenav/ui/bh;->h:I

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p0, p1, :cond_6

    move v1, v0

    :cond_5
    :goto_5
    return v1

    :cond_6
    if-eqz p1, :cond_5

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-ne v2, v3, :cond_5

    check-cast p1, Lcom/google/googlenav/ui/bh;

    iget-boolean v2, p0, Lcom/google/googlenav/ui/bh;->c:Z

    iget-boolean v3, p1, Lcom/google/googlenav/ui/bh;->c:Z

    if-ne v2, v3, :cond_5

    iget-boolean v2, p0, Lcom/google/googlenav/ui/bh;->d:Z

    iget-boolean v3, p1, Lcom/google/googlenav/ui/bh;->d:Z

    if-ne v2, v3, :cond_5

    iget-object v2, p0, Lcom/google/googlenav/ui/bh;->a:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/googlenav/ui/bh;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/google/googlenav/ui/bh;->b:Lcom/google/googlenav/ui/bg;

    iget-object v3, p1, Lcom/google/googlenav/ui/bh;->b:Lcom/google/googlenav/ui/bg;

    if-ne v2, v3, :cond_32

    :goto_30
    move v1, v0

    goto :goto_5

    :cond_32
    move v0, v1

    goto :goto_30
.end method

.method public f()I
    .registers 2

    iget v0, p0, Lcom/google/googlenav/ui/bh;->j:I

    return v0
.end method

.method public hashCode()I
    .registers 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/google/googlenav/ui/bh;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v3, p0, Lcom/google/googlenav/ui/bh;->b:Lcom/google/googlenav/ui/bg;

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    add-int/2addr v0, v3

    mul-int/lit8 v3, v0, 0x1f

    iget-boolean v0, p0, Lcom/google/googlenav/ui/bh;->c:Z

    if-eqz v0, :cond_21

    move v0, v1

    :goto_18
    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v3, p0, Lcom/google/googlenav/ui/bh;->d:Z

    if-eqz v3, :cond_23

    :goto_1f
    add-int/2addr v0, v1

    return v0

    :cond_21
    move v0, v2

    goto :goto_18

    :cond_23
    move v1, v2

    goto :goto_1f
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/ui/bh;->a:Ljava/lang/String;

    return-object v0
.end method
