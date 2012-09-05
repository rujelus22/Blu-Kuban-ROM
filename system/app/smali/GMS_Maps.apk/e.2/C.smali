.class final Le/C;
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
.method public a(Ljava/io/DataInput;)Ljava/lang/String;
    .registers 3

    invoke-interface {p1}, Ljava/io/DataInput;->readUTF()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic a(Ljava/lang/Object;Ljava/io/DataOutput;)V
    .registers 3

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Le/C;->a(Ljava/lang/String;Ljava/io/DataOutput;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/io/DataOutput;)V
    .registers 3

    invoke-interface {p2, p1}, Ljava/io/DataOutput;->writeUTF(Ljava/lang/String;)V

    return-void
.end method

.method public synthetic b(Ljava/io/DataInput;)Ljava/lang/Object;
    .registers 3

    invoke-virtual {p0, p1}, Le/C;->a(Ljava/io/DataInput;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
