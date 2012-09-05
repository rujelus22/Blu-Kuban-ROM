.class public Lcom/google/googlenav/f;
.super Lat/a;


# instance fields
.field private final a:Lcom/google/googlenav/g;

.field private final b:Ljava/lang/String;

.field private c:Z

.field private d:Lam/b;

.field private e:Z


# direct methods
.method public constructor <init>(Lcom/google/googlenav/g;Ljava/lang/String;)V
    .registers 4

    invoke-direct {p0}, Lat/a;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/googlenav/f;->e:Z

    iput-object p1, p0, Lcom/google/googlenav/f;->a:Lcom/google/googlenav/g;

    iput-object p2, p0, Lcom/google/googlenav/f;->b:Ljava/lang/String;

    return-void
.end method

.method public static a(Lcom/google/googlenav/g;Ljava/lang/String;)Lcom/google/googlenav/f;
    .registers 4

    new-instance v0, Lcom/google/googlenav/f;

    invoke-direct {v0, p0, p1}, Lcom/google/googlenav/f;-><init>(Lcom/google/googlenav/g;Ljava/lang/String;)V

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/google/googlenav/f;->c:Z

    return-object v0
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    invoke-static {p0}, Las/b;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1a

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "http://maps.google.com/?cid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_19
    return-object v0

    :cond_1a
    const-string v0, ""

    goto :goto_19
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    invoke-static {p0}, Lcom/google/googlenav/f;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Las/b;->b(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3a

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "georestrict="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Las/b;->b(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3b

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "&"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_3a
    :goto_3a
    return-object v0

    :cond_3b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "http://maps.google.com/?"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_3a
.end method


# virtual methods
.method public a()I
    .registers 2

    const/16 v0, 0x50

    return v0
.end method

.method public a(Ljava/io/DataOutput;)V
    .registers 5

    const/4 v2, 0x1

    new-instance v0, Lam/b;

    sget-object v1, LbD/hu;->a:Lam/e;

    invoke-direct {v0, v1}, Lam/b;-><init>(Lam/e;)V

    iget-object v1, p0, Lcom/google/googlenav/f;->b:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Lam/b;->b(ILjava/lang/String;)V

    iget-boolean v1, p0, Lcom/google/googlenav/f;->c:Z

    if-eqz v1, :cond_21

    const/4 v1, 0x3

    invoke-virtual {v0, v1, v2}, Lam/b;->b(IZ)V

    const/4 v1, 0x4

    const/16 v2, 0x11

    invoke-virtual {v0, v1, v2}, Lam/b;->h(II)V

    :goto_1b
    check-cast p1, Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Lam/b;->a(Ljava/io/OutputStream;)V

    return-void

    :cond_21
    invoke-virtual {p0}, Lcom/google/googlenav/f;->a()I

    move-result v1

    iget-boolean v2, p0, Lcom/google/googlenav/f;->e:Z

    invoke-static {v1, v0, v2}, Lcom/google/googlenav/ag;->a(ILam/b;Z)V

    goto :goto_1b
.end method

.method public a(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/google/googlenav/f;->e:Z

    return-void
.end method

.method public a(Ljava/io/DataInput;)Z
    .registers 6

    const/4 v3, 0x0

    const/4 v2, 0x1

    sget-object v0, LbD/hu;->b:Lam/e;

    invoke-static {v0, p1}, Lam/g;->a(Lam/e;Ljava/io/DataInput;)Lam/b;

    move-result-object v0

    invoke-static {v0, v2}, Lam/g;->c(Lam/b;I)Lam/b;

    move-result-object v0

    if-nez v0, :cond_11

    iput-object v3, p0, Lcom/google/googlenav/f;->d:Lam/b;

    :goto_10
    return v2

    :cond_11
    invoke-static {v0, v2, v2}, Lam/g;->c(Lam/b;II)I

    move-result v1

    packed-switch v1, :pswitch_data_24

    iput-object v3, p0, Lcom/google/googlenav/f;->d:Lam/b;

    goto :goto_10

    :pswitch_1b
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lam/b;->h(I)Lam/b;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/f;->d:Lam/b;

    goto :goto_10

    :pswitch_data_24
    .packed-switch 0x0
        :pswitch_1b
    .end packed-switch
.end method

.method public b()V
    .registers 4

    iget-object v0, p0, Lcom/google/googlenav/f;->a:Lcom/google/googlenav/g;

    iget-object v1, p0, Lcom/google/googlenav/f;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/googlenav/f;->d:Lam/b;

    invoke-interface {v0, v1, v2}, Lcom/google/googlenav/g;->a(Ljava/lang/String;Lam/b;)V

    return-void
.end method

.method public g_()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public i_()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method
