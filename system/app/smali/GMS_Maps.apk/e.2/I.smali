.class final Le/I;
.super Ljava/lang/Object;

# interfaces
.implements Le/w;


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/io/DataInput;)Le/H;
    .registers 9

    :try_start_0
    sget-object v1, Le/x;->g:Le/w;

    invoke-interface {v1, p1}, Le/w;->b(Ljava/io/DataInput;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Le/x;

    move-object v5, v0

    invoke-interface {p1}, Ljava/io/DataInput;->readInt()I

    move-result v6

    iget v1, v5, Le/x;->c:I

    const/4 v2, -0x2

    if-ne v1, v2, :cond_16

    sget-object v1, Le/H;->j:Le/H;

    :goto_15
    return-object v1

    :cond_16
    new-instance v1, Le/H;

    iget v2, v5, Le/x;->a:I

    iget v3, v5, Le/x;->b:I

    iget v4, v5, Le/x;->c:I

    iget v5, v5, Le/x;->d:I

    invoke-direct/range {v1 .. v6}, Le/H;-><init>(IIIII)V
    :try_end_23
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_23} :catch_24

    goto :goto_15

    :catch_24
    move-exception v1

    throw v1
.end method

.method public a(Le/H;Ljava/io/DataOutput;)V
    .registers 4

    :try_start_0
    sget-object v0, Le/x;->g:Le/w;

    invoke-interface {v0, p1, p2}, Le/w;->a(Ljava/lang/Object;Ljava/io/DataOutput;)V

    iget v0, p1, Le/H;->h:I

    invoke-interface {p2, v0}, Ljava/io/DataOutput;->writeInt(I)V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_a} :catch_b

    return-void

    :catch_b
    move-exception v0

    throw v0
.end method

.method public bridge synthetic a(Ljava/lang/Object;Ljava/io/DataOutput;)V
    .registers 3

    check-cast p1, Le/H;

    invoke-virtual {p0, p1, p2}, Le/I;->a(Le/H;Ljava/io/DataOutput;)V

    return-void
.end method

.method public synthetic b(Ljava/io/DataInput;)Ljava/lang/Object;
    .registers 3

    invoke-virtual {p0, p1}, Le/I;->a(Ljava/io/DataInput;)Le/H;

    move-result-object v0

    return-object v0
.end method
