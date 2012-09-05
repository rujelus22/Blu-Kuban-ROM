.class public Lax/m;
.super Lat/a;


# instance fields
.field private final a:I

.field private final b:I

.field private final c:Ljava/lang/String;

.field private final d:Ljava/lang/String;

.field private final e:Ljava/lang/String;

.field private final f:Lax/n;

.field private g:Z

.field private h:Lam/b;


# direct methods
.method public constructor <init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lax/n;)V
    .registers 7

    invoke-direct {p0}, Lat/a;-><init>()V

    iput p1, p0, Lax/m;->a:I

    iput p2, p0, Lax/m;->b:I

    iput-object p3, p0, Lax/m;->c:Ljava/lang/String;

    iput-object p4, p0, Lax/m;->d:Ljava/lang/String;

    iput-object p5, p0, Lax/m;->e:Ljava/lang/String;

    iput-object p6, p0, Lax/m;->f:Lax/n;

    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    const/16 v0, 0x74

    return v0
.end method

.method public a(Ljava/io/DataOutput;)V
    .registers 8

    const/4 v5, 0x2

    const/4 v4, 0x1

    new-instance v0, Lam/b;

    sget-object v1, LbD/fx;->c:Lam/e;

    invoke-direct {v0, v1}, Lam/b;-><init>(Lam/e;)V

    new-instance v1, Lam/b;

    sget-object v2, LbF/G;->a:Lam/e;

    invoke-direct {v1, v2}, Lam/b;-><init>(Lam/e;)V

    iget v2, p0, Lax/m;->a:I

    mul-int/lit8 v2, v2, 0xa

    iget v3, p0, Lax/m;->b:I

    mul-int/lit8 v3, v3, 0xa

    invoke-virtual {v1, v4, v2}, Lam/b;->h(II)V

    invoke-virtual {v1, v5, v3}, Lam/b;->h(II)V

    invoke-virtual {v0, v4, v1}, Lam/b;->b(ILam/b;)V

    iget-object v1, p0, Lax/m;->c:Ljava/lang/String;

    invoke-virtual {v0, v5, v1}, Lam/b;->b(ILjava/lang/String;)V

    iget-object v1, p0, Lax/m;->d:Ljava/lang/String;

    if-eqz v1, :cond_30

    const/4 v1, 0x3

    iget-object v2, p0, Lax/m;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lam/b;->b(ILjava/lang/String;)V

    :cond_30
    iget-object v1, p0, Lax/m;->e:Ljava/lang/String;

    if-eqz v1, :cond_3a

    const/4 v1, 0x4

    iget-object v2, p0, Lax/m;->e:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lam/b;->b(ILjava/lang/String;)V

    :cond_3a
    check-cast p1, Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Lam/b;->a(Ljava/io/OutputStream;)V

    return-void
.end method

.method public a(Ljava/io/DataInput;)Z
    .registers 6

    const/4 v3, 0x1

    sget-object v0, LbD/fx;->d:Lam/e;

    invoke-static {v0, p1}, Lam/g;->a(Lam/e;Ljava/io/DataInput;)Lam/b;

    move-result-object v0

    const/4 v1, -0x1

    invoke-static {v0, v3, v1}, Lam/g;->c(Lam/b;II)I

    move-result v1

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lam/b;->h(I)Lam/b;

    move-result-object v0

    iput-object v0, p0, Lax/m;->h:Lam/b;

    packed-switch v1, :pswitch_data_1a

    :goto_16
    return v3

    :pswitch_17
    iput-boolean v3, p0, Lax/m;->g:Z

    goto :goto_16

    :pswitch_data_1a
    .packed-switch 0x0
        :pswitch_17
    .end packed-switch
.end method

.method public b()V
    .registers 4

    iget-object v0, p0, Lax/m;->f:Lax/n;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lax/m;->f:Lax/n;

    iget-boolean v1, p0, Lax/m;->g:Z

    iget-object v2, p0, Lax/m;->h:Lam/b;

    invoke-interface {v0, v1, v2}, Lax/n;->a(ZLam/b;)V

    :cond_d
    return-void
.end method
