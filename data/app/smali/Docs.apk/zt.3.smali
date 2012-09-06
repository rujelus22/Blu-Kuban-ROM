.class public Lzt;
.super LzB;
.source "Image.java"


# instance fields
.field private a:LBb;

.field private final a:LwH;

.field private a:LyD;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LyD",
            "<",
            "LBb;",
            ">;"
        }
    .end annotation
.end field

.field private final a:Lyg;


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
    .line 41
    invoke-direct {p0, p1, p2}, LzB;-><init>(LBH;LBV;)V

    .line 42
    iput-object p3, p0, Lzt;->a:Lyg;

    .line 43
    iput-object p4, p0, Lzt;->a:LwH;

    .line 45
    iget-object v0, p0, Lzt;->a:LBV;

    invoke-virtual {v0}, LBV;->a()LBW;

    move-result-object v0

    const-string v1, "Image"

    invoke-virtual {v0, v1}, LBW;->a(Ljava/lang/CharSequence;)LBW;

    .line 46
    return-void
.end method


# virtual methods
.method public a(IILjava/util/List;)V
    .registers 6
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List",
            "<",
            "LFt;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 85
    iget-object v0, p0, Lzt;->a:LBV;

    invoke-virtual {v0}, LBV;->c()I

    move-result v0

    if-gt p1, v0, :cond_1e

    iget-object v0, p0, Lzt;->a:LBV;

    invoke-virtual {v0}, LBV;->c()I

    move-result v0

    if-lt p2, v0, :cond_1e

    .line 86
    iget-object v0, p0, Lzt;->a:LBH;

    invoke-virtual {v0}, LBH;->c()I

    move-result v0

    .line 87
    new-instance v1, LFt;

    invoke-direct {v1, v0, v0}, LFt;-><init>(II)V

    invoke-interface {p3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 89
    :cond_1e
    return-void
.end method

.method public a(Lye;)V
    .registers 5
    .parameter

    .prologue
    .line 50
    invoke-super {p0, p1}, LzB;->a(Lye;)V

    .line 52
    iget-object v0, p0, Lzt;->a:LyD;

    iget-object v1, p0, Lzt;->a:LBV;

    invoke-interface {v0, v1}, LyD;->a(Landroid/text/Spannable;)V

    .line 53
    iget-object v0, p0, Lzt;->a:LBV;

    invoke-virtual {v0}, LBV;->a()LBW;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Lzt;->a:LBV;

    invoke-virtual {v2}, LBV;->a()LBW;

    move-result-object v2

    invoke-virtual {v2}, LBW;->length()I

    move-result v2

    invoke-virtual {v0, v1, v2}, LBW;->a(II)LBW;

    .line 54
    return-void
.end method

.method protected b()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 58
    iget-object v0, p0, Lzt;->a:Lyg;

    iget-object v1, p0, Lzt;->a:LBH;

    invoke-virtual {v1}, LBH;->c()I

    move-result v1

    invoke-interface {v0, v1}, Lyg;->a(I)[LvD;

    move-result-object v0

    .line 59
    array-length v1, v0

    if-nez v1, :cond_18

    .line 60
    const-string v0, "Image"

    const-string v1, "Image element did not find image at location in model."

    invoke-static {v0, v1}, LZA;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    :goto_17
    return-void

    .line 63
    :cond_18
    array-length v1, v0

    const/4 v2, 0x1

    if-le v1, v2, :cond_23

    .line 64
    const-string v1, "Image"

    const-string v2, "Image element found more than one image at location in model."

    invoke-static {v1, v2}, LZA;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    :cond_23
    iget-object v1, p0, Lzt;->a:LwH;

    invoke-interface {v1}, LwH;->a()LzH;

    move-result-object v1

    .line 67
    new-instance v2, LBb;

    aget-object v0, v0, v4

    iget-object v3, p0, Lzt;->a:LwH;

    invoke-direct {v2, v1, v0, v3}, LBb;-><init>(LzH;LvD;LwH;)V

    .line 68
    iget-object v0, p0, Lzt;->a:LBb;

    invoke-virtual {v2, v0}, LBb;->a(LBj;)Z

    move-result v0

    if-nez v0, :cond_4f

    .line 69
    iput-object v2, p0, Lzt;->a:LBb;

    .line 70
    iget-object v0, p0, Lzt;->a:LyD;

    if-eqz v0, :cond_47

    .line 72
    iget-object v0, p0, Lzt;->a:LyD;

    iget-object v1, p0, Lzt;->a:LBV;

    invoke-interface {v0, v1}, LyD;->a(Landroid/text/Spannable;)V

    .line 74
    :cond_47
    iget-object v0, p0, Lzt;->a:LBb;

    invoke-virtual {v0}, LBb;->a()LyD;

    move-result-object v0

    iput-object v0, p0, Lzt;->a:LyD;

    .line 77
    :cond_4f
    iget-object v0, p0, Lzt;->a:LyD;

    iget-object v1, p0, Lzt;->a:LBV;

    iget-object v2, p0, Lzt;->a:LBV;

    invoke-virtual {v2}, LBV;->length()I

    move-result v2

    iget-object v3, p0, Lzt;->a:LwH;

    invoke-interface {v3}, LwH;->a()Landroid/content/Context;

    move-result-object v3

    invoke-interface {v0, v1, v4, v2, v3}, LyD;->a(Landroid/text/Spannable;IILandroid/content/Context;)V

    goto :goto_17
.end method
