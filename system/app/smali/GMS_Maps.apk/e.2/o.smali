.class final Le/o;
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
.method public a(Ljava/io/DataInput;)Le/n;
    .registers 7

    const/4 v0, 0x0

    :try_start_1
    invoke-static {}, Le/p;->values()[Le/p;

    move-result-object v1

    invoke-interface {p1}, Ljava/io/DataInput;->readInt()I

    move-result v2

    aget-object v1, v1, v2
    :try_end_b
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_b} :catch_21

    sget-object v2, Le/p;->a:Le/p;

    if-ne v1, v2, :cond_17

    sget-object v0, Le/x;->g:Le/w;

    invoke-interface {v0, p1}, Le/w;->b(Ljava/io/DataInput;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/x;

    :cond_17
    new-instance v2, Le/n;

    invoke-interface {p1}, Ljava/io/DataInput;->readLong()J

    move-result-wide v3

    invoke-direct {v2, v0, v1, v3, v4}, Le/n;-><init>(Le/x;Le/p;J)V

    return-object v2

    :catch_21
    move-exception v0

    new-instance v0, Ljava/io/IOException;

    const-string v1, "invalid status"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public a(Le/n;Ljava/io/DataOutput;)V
    .registers 5

    iget-object v0, p1, Le/n;->d:Le/p;

    invoke-virtual {v0}, Le/p;->ordinal()I

    move-result v0

    invoke-interface {p2, v0}, Ljava/io/DataOutput;->writeInt(I)V

    iget-object v0, p1, Le/n;->d:Le/p;

    sget-object v1, Le/p;->a:Le/p;

    if-ne v0, v1, :cond_16

    sget-object v0, Le/x;->g:Le/w;

    iget-object v1, p1, Le/n;->c:Le/x;

    invoke-interface {v0, v1, p2}, Le/w;->a(Ljava/lang/Object;Ljava/io/DataOutput;)V

    :cond_16
    iget-wide v0, p1, Le/n;->e:J

    invoke-interface {p2, v0, v1}, Ljava/io/DataOutput;->writeLong(J)V

    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;Ljava/io/DataOutput;)V
    .registers 3

    check-cast p1, Le/n;

    invoke-virtual {p0, p1, p2}, Le/o;->a(Le/n;Ljava/io/DataOutput;)V

    return-void
.end method

.method public synthetic b(Ljava/io/DataInput;)Ljava/lang/Object;
    .registers 3

    invoke-virtual {p0, p1}, Le/o;->a(Ljava/io/DataInput;)Le/n;

    move-result-object v0

    return-object v0
.end method
