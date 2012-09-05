.class Lcom/google/googlenav/bf;
.super Lat/a;


# instance fields
.field private a:I

.field private b:J

.field private c:Ljava/lang/String;

.field private d:I

.field private e:Ljava/lang/String;

.field private f:I

.field private g:Lcom/google/googlenav/be;

.field private h:Z


# direct methods
.method private constructor <init>(Lcom/google/googlenav/ah;ILcom/google/googlenav/be;)V
    .registers 7

    const/4 v2, -0x1

    invoke-direct {p0}, Lat/a;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/googlenav/bf;->b:J

    iput v2, p0, Lcom/google/googlenav/bf;->d:I

    iput v2, p0, Lcom/google/googlenav/bf;->f:I

    invoke-virtual {p1}, Lcom/google/googlenav/ah;->bp()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/bf;->c:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/googlenav/ah;->Z()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/googlenav/bf;->b:J

    iput p2, p0, Lcom/google/googlenav/bf;->a:I

    iput-object p3, p0, Lcom/google/googlenav/bf;->g:Lcom/google/googlenav/be;

    return-void
.end method

.method public static a(Lcom/google/googlenav/ah;ILcom/google/googlenav/be;)Lcom/google/googlenav/bf;
    .registers 5

    new-instance v0, Lcom/google/googlenav/bf;

    const/4 v1, 0x3

    invoke-direct {v0, p0, v1, p2}, Lcom/google/googlenav/bf;-><init>(Lcom/google/googlenav/ah;ILcom/google/googlenav/be;)V

    iput p1, v0, Lcom/google/googlenav/bf;->f:I

    return-object v0
.end method

.method public static a(Lcom/google/googlenav/ah;Lcom/google/googlenav/be;)Lcom/google/googlenav/bf;
    .registers 4

    new-instance v0, Lcom/google/googlenav/bf;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, p1}, Lcom/google/googlenav/bf;-><init>(Lcom/google/googlenav/ah;ILcom/google/googlenav/be;)V

    return-object v0
.end method

.method public static b(Lcom/google/googlenav/ah;ILcom/google/googlenav/be;)Lcom/google/googlenav/bf;
    .registers 5

    new-instance v0, Lcom/google/googlenav/bf;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1, p2}, Lcom/google/googlenav/bf;-><init>(Lcom/google/googlenav/ah;ILcom/google/googlenav/be;)V

    iput p1, v0, Lcom/google/googlenav/bf;->d:I

    return-object v0
.end method

.method public static b(Lcom/google/googlenav/ah;Lcom/google/googlenav/be;)Lcom/google/googlenav/bf;
    .registers 4

    new-instance v0, Lcom/google/googlenav/bf;

    const/4 v1, 0x4

    invoke-direct {v0, p0, v1, p1}, Lcom/google/googlenav/bf;-><init>(Lcom/google/googlenav/ah;ILcom/google/googlenav/be;)V

    return-object v0
.end method

.method public static c(Lcom/google/googlenav/ah;Lcom/google/googlenav/be;)Lcom/google/googlenav/bf;
    .registers 4

    new-instance v0, Lcom/google/googlenav/bf;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1, p1}, Lcom/google/googlenav/bf;-><init>(Lcom/google/googlenav/ah;ILcom/google/googlenav/be;)V

    return-object v0
.end method


# virtual methods
.method public a()I
    .registers 2

    const/16 v0, 0x4e

    return v0
.end method

.method public a(Ljava/io/DataOutput;)V
    .registers 8

    const/4 v5, -0x1

    new-instance v0, Lam/b;

    sget-object v1, LbD/fr;->a:Lam/e;

    invoke-direct {v0, v1}, Lam/b;-><init>(Lam/e;)V

    const/4 v1, 0x1

    iget v2, p0, Lcom/google/googlenav/bf;->a:I

    invoke-virtual {v0, v1, v2}, Lam/b;->h(II)V

    iget-wide v1, p0, Lcom/google/googlenav/bf;->b:J

    const-wide/16 v3, -0x1

    cmp-long v1, v1, v3

    if-eqz v1, :cond_1c

    const/4 v1, 0x2

    iget-wide v2, p0, Lcom/google/googlenav/bf;->b:J

    invoke-virtual {v0, v1, v2, v3}, Lam/b;->b(IJ)V

    :cond_1c
    iget-object v1, p0, Lcom/google/googlenav/bf;->c:Ljava/lang/String;

    if-eqz v1, :cond_26

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/googlenav/bf;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lam/b;->b(ILjava/lang/String;)V

    :cond_26
    iget v1, p0, Lcom/google/googlenav/bf;->d:I

    if-eq v1, v5, :cond_30

    const/4 v1, 0x4

    iget v2, p0, Lcom/google/googlenav/bf;->d:I

    invoke-virtual {v0, v1, v2}, Lam/b;->h(II)V

    :cond_30
    iget-object v1, p0, Lcom/google/googlenav/bf;->e:Ljava/lang/String;

    if-eqz v1, :cond_3a

    const/4 v1, 0x5

    iget-object v2, p0, Lcom/google/googlenav/bf;->e:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lam/b;->b(ILjava/lang/String;)V

    :cond_3a
    iget v1, p0, Lcom/google/googlenav/bf;->f:I

    if-eq v1, v5, :cond_44

    const/4 v1, 0x6

    iget v2, p0, Lcom/google/googlenav/bf;->f:I

    invoke-virtual {v0, v1, v2}, Lam/b;->h(II)V

    :cond_44
    check-cast p1, Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Lam/b;->a(Ljava/io/OutputStream;)V

    return-void
.end method

.method public a(Ljava/io/DataInput;)Z
    .registers 7

    const/4 v4, -0x1

    const/4 v3, 0x1

    sget-object v0, LbD/fr;->b:Lam/e;

    invoke-static {v0, p1}, Lam/g;->a(Lam/e;Ljava/io/DataInput;)Lam/b;

    move-result-object v0

    invoke-static {v0, v3, v4}, Lam/g;->c(Lam/b;II)I

    move-result v1

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lam/b;->h(I)Lam/b;

    move-result-object v0

    invoke-static {v0, v3, v4}, Lam/g;->c(Lam/b;II)I

    move-result v0

    packed-switch v1, :pswitch_data_24

    invoke-static {}, Lcom/google/googlenav/login/g;->j()Lcom/google/googlenav/login/g;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/googlenav/login/g;->a(I)V

    :goto_1f
    return v3

    :pswitch_20
    iput-boolean v3, p0, Lcom/google/googlenav/bf;->h:Z

    goto :goto_1f

    nop

    :pswitch_data_24
    .packed-switch 0x0
        :pswitch_20
    .end packed-switch
.end method

.method public b()V
    .registers 2

    iget-boolean v0, p0, Lcom/google/googlenav/bf;->h:Z

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/google/googlenav/bf;->g:Lcom/google/googlenav/be;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/google/googlenav/bf;->g:Lcom/google/googlenav/be;

    invoke-interface {v0}, Lcom/google/googlenav/be;->a()V

    :cond_d
    return-void
.end method

.method public r()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method
