.class public LzD;
.super LzC;
.source "UnsupportedTableElement.java"


# instance fields
.field private a:LBk;

.field private final a:Lxp;


# direct methods
.method public constructor <init>(LBH;LBV;Lyg;LwH;Lxp;)V
    .registers 7
    .parameter
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
            "Lxp;",
            ")V"
        }
    .end annotation

    .prologue
    .line 35
    invoke-direct {p0, p1, p2, p3, p4}, LzC;-><init>(LBH;LBV;Lyg;LwH;)V

    .line 27
    const/4 v0, 0x0

    iput-object v0, p0, LzD;->a:LBk;

    .line 36
    iput-object p5, p0, LzD;->a:Lxp;

    .line 37
    return-void
.end method

.method static synthetic a(LzD;)Lxp;
    .registers 2
    .parameter

    .prologue
    .line 22
    iget-object v0, p0, LzD;->a:Lxp;

    return-object v0
.end method


# virtual methods
.method protected a()LBk;
    .registers 3

    .prologue
    .line 41
    iget-object v0, p0, LzD;->a:LBk;

    if-nez v0, :cond_10

    .line 42
    new-instance v0, LBk;

    new-instance v1, LzE;

    invoke-direct {v1, p0}, LzE;-><init>(LzD;)V

    invoke-direct {v0, v1}, LBk;-><init>(Landroid/view/View$OnClickListener;)V

    iput-object v0, p0, LzD;->a:LBk;

    .line 58
    :cond_10
    iget-object v0, p0, LzD;->a:LBk;

    return-object v0
.end method

.method protected bridge synthetic a()LBo;
    .registers 2

    .prologue
    .line 22
    invoke-virtual {p0}, LzD;->a()LBk;

    move-result-object v0

    return-object v0
.end method
