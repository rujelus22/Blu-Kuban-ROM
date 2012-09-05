.class final Lc/o;
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
.method public a(Ljava/io/DataInput;)Lc/b;
    .registers 3

    sget-object v0, Le/H;->k:Le/w;

    invoke-static {p1, v0}, Lc/b;->a(Ljava/io/DataInput;Le/w;)Lc/b;

    move-result-object v0

    return-object v0
.end method

.method public a(Lc/b;Ljava/io/DataOutput;)V
    .registers 4

    sget-object v0, Le/H;->k:Le/w;

    invoke-static {p1, p2, v0}, Lc/b;->a(Lc/b;Ljava/io/DataOutput;Le/w;)V

    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;Ljava/io/DataOutput;)V
    .registers 3

    check-cast p1, Lc/b;

    invoke-virtual {p0, p1, p2}, Lc/o;->a(Lc/b;Ljava/io/DataOutput;)V

    return-void
.end method

.method public synthetic b(Ljava/io/DataInput;)Ljava/lang/Object;
    .registers 3

    invoke-virtual {p0, p1}, Lc/o;->a(Ljava/io/DataInput;)Lc/b;

    move-result-object v0

    return-object v0
.end method
