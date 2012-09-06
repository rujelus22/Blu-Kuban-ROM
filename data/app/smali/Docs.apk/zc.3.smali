.class Lzc;
.super LyQ;
.source "ParagraphChildFactory.java"


# instance fields
.field final synthetic a:LwH;

.field final synthetic a:LyX;

.field final synthetic a:Lyg;


# direct methods
.method constructor <init>(LyX;ILjava/lang/Class;Lyg;LwH;)V
    .registers 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 84
    iput-object p1, p0, Lzc;->a:LyX;

    iput-object p4, p0, Lzc;->a:Lyg;

    iput-object p5, p0, Lzc;->a:LwH;

    invoke-direct {p0, p2, p3}, LyQ;-><init>(ILjava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public a(LBH;LBV;)Lzr;
    .registers 6
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
    .line 88
    const-string v0, "ParagraphChildFactory"

    const-string v1, "New unsupported"

    invoke-static {v0, v1}, LZA;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    new-instance v0, LzC;

    iget-object v1, p0, Lzc;->a:Lyg;

    iget-object v2, p0, Lzc;->a:LwH;

    invoke-direct {v0, p1, p2, v1, v2}, LzC;-><init>(LBH;LBV;Lyg;LwH;)V

    return-object v0
.end method
