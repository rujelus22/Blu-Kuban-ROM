.class Lzb;
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
    .line 73
    iput-object p1, p0, Lzb;->a:LyX;

    iput-object p4, p0, Lzb;->a:Lyg;

    iput-object p5, p0, Lzb;->a:LwH;

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
    .line 77
    new-instance v0, Lzw;

    iget-object v1, p0, Lzb;->a:Lyg;

    iget-object v2, p0, Lzb;->a:LwH;

    invoke-direct {v0, p1, p2, v1, v2}, Lzw;-><init>(LBH;LBV;Lyg;LwH;)V

    return-object v0
.end method
