.class final Le/y;
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
.method public a(Ljava/io/DataInput;)Le/x;
    .registers 4

    new-instance v0, Le/z;

    invoke-direct {v0}, Le/z;-><init>()V

    invoke-interface {p1}, Ljava/io/DataInput;->readInt()I

    move-result v1

    iput v1, v0, Le/z;->a:I

    invoke-interface {p1}, Ljava/io/DataInput;->readInt()I

    move-result v1

    iput v1, v0, Le/z;->b:I

    invoke-interface {p1}, Ljava/io/DataInput;->readInt()I

    move-result v1

    iput v1, v0, Le/z;->c:I

    invoke-interface {p1}, Ljava/io/DataInput;->readInt()I

    move-result v1

    iput v1, v0, Le/z;->d:I

    invoke-virtual {v0}, Le/z;->a()Le/x;

    move-result-object v0

    return-object v0
.end method

.method public a(Le/x;Ljava/io/DataOutput;)V
    .registers 4

    iget v0, p1, Le/x;->a:I

    invoke-interface {p2, v0}, Ljava/io/DataOutput;->writeInt(I)V

    iget v0, p1, Le/x;->b:I

    invoke-interface {p2, v0}, Ljava/io/DataOutput;->writeInt(I)V

    iget v0, p1, Le/x;->c:I

    invoke-interface {p2, v0}, Ljava/io/DataOutput;->writeInt(I)V

    iget v0, p1, Le/x;->d:I

    invoke-interface {p2, v0}, Ljava/io/DataOutput;->writeInt(I)V

    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;Ljava/io/DataOutput;)V
    .registers 3

    check-cast p1, Le/x;

    invoke-virtual {p0, p1, p2}, Le/y;->a(Le/x;Ljava/io/DataOutput;)V

    return-void
.end method

.method public synthetic b(Ljava/io/DataInput;)Ljava/lang/Object;
    .registers 3

    invoke-virtual {p0, p1}, Le/y;->a(Ljava/io/DataInput;)Le/x;

    move-result-object v0

    return-object v0
.end method
