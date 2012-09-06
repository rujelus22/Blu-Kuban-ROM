.class public Lzw;
.super LzB;
.source "LineBreak.java"


# direct methods
.method public constructor <init>(LBH;LBV;Lyg;LwH;)V
    .registers 7
    .parameter
    .parameter
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
            ">;",
            "Lyg;",
            "LwH;",
            ")V"
        }
    .end annotation

    .prologue
    .line 23
    invoke-direct {p0, p1, p2}, LzB;-><init>(LBH;LBV;)V

    .line 24
    iget-object v0, p0, Lzw;->a:LBV;

    invoke-virtual {v0}, LBV;->a()LBW;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, LBW;->a(Ljava/lang/CharSequence;)LBW;

    .line 25
    return-void
.end method


# virtual methods
.method protected b()V
    .registers 1

    .prologue
    .line 29
    return-void
.end method
