.class Lzg;
.super LyQ;
.source "SectionChildFactory.java"


# instance fields
.field final synthetic a:LwH;

.field final synthetic a:Lyg;

.field final synthetic a:Lzd;


# direct methods
.method constructor <init>(Lzd;ILjava/lang/Class;Lyg;LwH;)V
    .registers 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 80
    iput-object p1, p0, Lzg;->a:Lzd;

    iput-object p4, p0, Lzg;->a:Lyg;

    iput-object p5, p0, Lzg;->a:LwH;

    invoke-direct {p0, p2, p3}, LyQ;-><init>(ILjava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public a(LBH;LBV;)Lzr;
    .registers 9
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LBH",
            "<",
            "Lzr;",
            ">;",
            "LBV",
            "<",
            "Lzr;",
            ">;)",
            "Lzr;"
        }
    .end annotation

    .prologue
    .line 84
    const-string v0, "SectionChildFactory"

    const-string v1, "New autogen"

    invoke-static {v0, v1}, LZA;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    new-instance v0, Lzp;

    iget-object v3, p0, Lzg;->a:Lzd;

    iget-object v4, p0, Lzg;->a:Lyg;

    iget-object v5, p0, Lzg;->a:LwH;

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lzp;-><init>(LBH;LBV;LyO;Lyg;LwH;)V

    return-object v0
.end method
