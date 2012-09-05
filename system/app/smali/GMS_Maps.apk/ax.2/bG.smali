.class public Lax/bG;
.super Lat/a;


# instance fields
.field private final a:[B

.field private final b:Lcom/google/googlenav/android/ac;

.field private final c:Lax/bJ;

.field private d:Z


# direct methods
.method public constructor <init>([BLcom/google/googlenav/android/ac;Lax/bJ;)V
    .registers 4

    invoke-direct {p0}, Lat/a;-><init>()V

    iput-object p1, p0, Lax/bG;->a:[B

    iput-object p2, p0, Lax/bG;->b:Lcom/google/googlenav/android/ac;

    iput-object p3, p0, Lax/bG;->c:Lax/bJ;

    return-void
.end method

.method static synthetic a(Lax/bG;)[B
    .registers 2

    iget-object v0, p0, Lax/bG;->a:[B

    return-object v0
.end method

.method static synthetic b(Lax/bG;)Lax/bJ;
    .registers 2

    iget-object v0, p0, Lax/bG;->c:Lax/bJ;

    return-object v0
.end method


# virtual methods
.method public a()I
    .registers 2

    const/16 v0, 0x26

    return v0
.end method

.method public a(Ljava/io/DataOutput;)V
    .registers 6

    const/4 v3, 0x1

    new-instance v0, Lam/b;

    sget-object v1, LbD/bx;->i:Lam/e;

    invoke-direct {v0, v1}, Lam/b;-><init>(Lam/e;)V

    iget-object v1, p0, Lax/bG;->a:[B

    if-eqz v1, :cond_21

    iget-object v1, p0, Lax/bG;->a:[B

    array-length v1, v1

    if-lez v1, :cond_21

    new-instance v1, Lam/b;

    sget-object v2, LbD/bx;->h:Lam/e;

    invoke-direct {v1, v2}, Lam/b;-><init>(Lam/e;)V

    iget-object v2, p0, Lax/bG;->a:[B

    invoke-virtual {v1, v3, v2}, Lam/b;->b(I[B)V

    const/4 v2, 0x4

    invoke-virtual {v0, v2, v1}, Lam/b;->b(ILam/b;)V

    :cond_21
    iget-boolean v1, p0, Lax/bG;->d:Z

    if-eqz v1, :cond_29

    const/4 v1, 0x6

    invoke-virtual {v0, v1, v3}, Lam/b;->b(IZ)V

    :cond_29
    invoke-virtual {v0}, Lam/b;->d()I

    move-result v1

    invoke-interface {p1, v1}, Ljava/io/DataOutput;->writeInt(I)V

    check-cast p1, Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Lam/b;->b(Ljava/io/OutputStream;)V

    return-void
.end method

.method public a(Ljava/io/DataInput;)Z
    .registers 8

    const/4 v5, 0x0

    const/4 v3, -0x1

    const/4 v4, 0x1

    sget-object v0, LbD/bx;->j:Lam/e;

    invoke-static {v0, p1}, Lam/g;->a(Lam/e;Ljava/io/DataInput;)Lam/b;

    move-result-object v0

    invoke-static {v0, v4, v3}, Lam/g;->c(Lam/b;II)I

    move-result v1

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lam/b;->h(I)Lam/b;

    move-result-object v0

    invoke-static {v0, v4, v3}, Lam/g;->c(Lam/b;II)I

    move-result v0

    packed-switch v1, :pswitch_data_40

    if-nez v0, :cond_29

    iget-object v2, p0, Lax/bG;->b:Lcom/google/googlenav/android/ac;

    if-eqz v2, :cond_29

    iget-object v2, p0, Lax/bG;->b:Lcom/google/googlenav/android/ac;

    new-instance v3, Lax/bI;

    invoke-direct {v3, p0, v1}, Lax/bI;-><init>(Lax/bG;I)V

    invoke-virtual {v2, v3, v5}, Lcom/google/googlenav/android/ac;->a(Ljava/lang/Runnable;Z)V

    :cond_29
    invoke-static {}, Lcom/google/googlenav/login/g;->j()Lcom/google/googlenav/login/g;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/googlenav/login/g;->a(I)V

    :cond_30
    :goto_30
    return v4

    :pswitch_31
    iget-object v0, p0, Lax/bG;->b:Lcom/google/googlenav/android/ac;

    if-eqz v0, :cond_30

    iget-object v0, p0, Lax/bG;->b:Lcom/google/googlenav/android/ac;

    new-instance v1, Lax/bH;

    invoke-direct {v1, p0}, Lax/bH;-><init>(Lax/bG;)V

    invoke-virtual {v0, v1, v5}, Lcom/google/googlenav/android/ac;->a(Ljava/lang/Runnable;Z)V

    goto :goto_30

    :pswitch_data_40
    .packed-switch 0x0
        :pswitch_31
    .end packed-switch
.end method
