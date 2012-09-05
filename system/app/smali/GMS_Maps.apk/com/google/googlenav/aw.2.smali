.class public Lcom/google/googlenav/aw;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lah/f;

.field private final b:Lcom/google/googlenav/ui/bG;

.field private final c:Ljava/lang/String;

.field private d:Z

.field private e:Lam/b;


# direct methods
.method public constructor <init>(Lah/f;Ljava/lang/String;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/googlenav/aw;->a:Lah/f;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/googlenav/aw;->b:Lcom/google/googlenav/ui/bG;

    iput-object p2, p0, Lcom/google/googlenav/aw;->c:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lam/b;)V
    .registers 6

    const/4 v0, 0x0

    const/4 v3, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/googlenav/aw;->a:Lah/f;

    iput-object p1, p0, Lcom/google/googlenav/aw;->e:Lam/b;

    iput-object v0, p0, Lcom/google/googlenav/aw;->c:Ljava/lang/String;

    new-instance v0, Lcom/google/googlenav/ui/bG;

    invoke-virtual {p1, v3}, Lam/b;->i(I)Ljava/lang/String;

    move-result-object v1

    sget v2, Lcom/google/googlenav/ui/bw;->by:I

    invoke-direct {v0, v1, v2}, Lcom/google/googlenav/ui/bG;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/google/googlenav/aw;->b:Lcom/google/googlenav/ui/bG;

    iput-boolean v3, p0, Lcom/google/googlenav/aw;->d:Z

    return-void
.end method


# virtual methods
.method public a()Lah/f;
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/aw;->a:Lah/f;

    return-object v0
.end method

.method public a(I)Lam/b;
    .registers 8

    const/4 v5, 0x1

    new-instance v1, Lam/b;

    sget-object v0, LbD/hE;->c:Lam/e;

    invoke-direct {v1, v0}, Lam/b;-><init>(Lam/e;)V

    iget-object v0, p0, Lcom/google/googlenav/aw;->c:Ljava/lang/String;

    if-nez v0, :cond_2a

    invoke-virtual {p0}, Lcom/google/googlenav/aw;->a()Lah/f;

    move-result-object v0

    check-cast v0, Lai/f;

    invoke-virtual {v0}, Lai/f;->h()Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v4, 0x55

    invoke-virtual {v0, v3, v4, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-virtual {v1, v5, v0}, Lam/b;->b(I[B)V

    :goto_29
    return-object v1

    :cond_2a
    iget-object v0, p0, Lcom/google/googlenav/aw;->c:Ljava/lang/String;

    invoke-static {v0}, Lbf/a;->a(Ljava/lang/String;)I

    move-result v0

    iget-object v2, p0, Lcom/google/googlenav/aw;->c:Ljava/lang/String;

    invoke-static {v2, v0, p1}, Lbf/a;->a(Ljava/lang/String;II)[B

    move-result-object v0

    invoke-virtual {v1, v5, v0}, Lam/b;->b(I[B)V

    goto :goto_29
.end method

.method public a(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/google/googlenav/aw;->d:Z

    return-void
.end method

.method public b()Lcom/google/googlenav/ui/bG;
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/aw;->b:Lcom/google/googlenav/ui/bG;

    return-object v0
.end method

.method public c()Lam/b;
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/aw;->e:Lam/b;

    return-object v0
.end method

.method public d()Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/googlenav/aw;->d:Z

    return v0
.end method

.method public e()Lam/b;
    .registers 2

    const v0, 0x124f80

    invoke-virtual {p0, v0}, Lcom/google/googlenav/aw;->a(I)Lam/b;

    move-result-object v0

    return-object v0
.end method
