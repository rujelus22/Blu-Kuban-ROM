.class public LzC;
.super LzB;
.source "UnsupportedElement.java"


# static fields
.field private static final a:LBo;


# instance fields
.field protected final a:LwH;

.field private a:LyD;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LyD",
            "<",
            "LBo;",
            ">;"
        }
    .end annotation
.end field

.field protected final a:Lyg;

.field private b:LBo;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    .line 32
    new-instance v0, LBo;

    sget v1, Luo;->uneditable_item:I

    sget v2, Lus;->uneditable_item:I

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, LBo;-><init>(IIZ)V

    sput-object v0, LzC;->a:LBo;

    return-void
.end method

.method public constructor <init>(LBH;LBV;Lyg;LwH;)V
    .registers 5
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
    .line 45
    invoke-direct {p0, p1, p2}, LzB;-><init>(LBH;LBV;)V

    .line 46
    iput-object p3, p0, LzC;->a:Lyg;

    .line 47
    iput-object p4, p0, LzC;->a:LwH;

    .line 48
    return-void
.end method


# virtual methods
.method protected a()LBo;
    .registers 3

    .prologue
    .line 97
    iget-object v0, p0, LzC;->a:LBH;

    invoke-virtual {v0}, LBH;->c()I

    move-result v0

    .line 98
    iget-object v1, p0, LzC;->a:Lyg;

    invoke-interface {v1, v0, v0}, Lyg;->a(II)LvB;

    move-result-object v0

    .line 99
    invoke-interface {v0}, LvB;->a()I

    move-result v0

    invoke-static {v0}, LwT;->a(I)LwT;

    move-result-object v0

    .line 100
    if-eqz v0, :cond_1b

    invoke-virtual {v0}, LwT;->a()LBo;

    move-result-object v0

    :goto_1a
    return-object v0

    :cond_1b
    sget-object v0, LzC;->a:LBo;

    goto :goto_1a
.end method

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
    .line 89
    iget-object v0, p0, LzC;->a:LBV;

    invoke-virtual {v0}, LBV;->c()I

    move-result v0

    .line 90
    iget-object v1, p0, LzC;->b:LBo;

    if-eqz v1, :cond_24

    iget-object v1, p0, LzC;->b:LBo;

    invoke-virtual {v1}, LBo;->a()Z

    move-result v1

    if-eqz v1, :cond_24

    if-gt p1, v0, :cond_24

    if-lt p2, v0, :cond_24

    .line 91
    iget-object v0, p0, LzC;->a:LBH;

    invoke-virtual {v0}, LBH;->c()I

    move-result v0

    .line 92
    new-instance v1, LFt;

    invoke-direct {v1, v0, v0}, LFt;-><init>(II)V

    invoke-interface {p3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 94
    :cond_24
    return-void
.end method

.method public a(Lye;)V
    .registers 5
    .parameter

    .prologue
    .line 52
    invoke-super {p0, p1}, LzB;->a(Lye;)V

    .line 54
    iget-object v0, p0, LzC;->a:LyD;

    iget-object v1, p0, LzC;->a:LBV;

    invoke-interface {v0, v1}, LyD;->a(Landroid/text/Spannable;)V

    .line 55
    iget-object v0, p0, LzC;->a:LBV;

    invoke-virtual {v0}, LBV;->a()LBW;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, LzC;->a:LBV;

    invoke-virtual {v2}, LBV;->a()LBW;

    move-result-object v2

    invoke-virtual {v2}, LBW;->length()I

    move-result v2

    invoke-virtual {v0, v1, v2}, LBW;->a(II)LBW;

    .line 56
    return-void
.end method

.method protected b()V
    .registers 8

    .prologue
    const/4 v6, 0x0

    .line 60
    invoke-virtual {p0}, LzC;->a()LBo;

    move-result-object v0

    .line 61
    iget-object v1, p0, LzC;->a:LBV;

    invoke-virtual {v1}, LBV;->a()LBW;

    move-result-object v1

    .line 62
    invoke-virtual {v1}, LBW;->length()I

    move-result v2

    iget-object v3, p0, LzC;->a:LwH;

    invoke-interface {v3}, LwH;->a()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v0}, LBo;->a()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "\n"

    const-string v5, " "

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v6, v2, v3}, LBW;->a(IILjava/lang/CharSequence;)LBW;

    .line 64
    if-eqz v0, :cond_5e

    iget-object v1, p0, LzC;->b:LBo;

    invoke-virtual {v0, v1}, LBo;->a(LBj;)Z

    move-result v1

    if-nez v1, :cond_5e

    .line 65
    iput-object v0, p0, LzC;->b:LBo;

    .line 66
    iget-object v0, p0, LzC;->a:LyD;

    if-eqz v0, :cond_3f

    .line 68
    iget-object v0, p0, LzC;->a:LyD;

    iget-object v1, p0, LzC;->a:LBV;

    invoke-interface {v0, v1}, LyD;->a(Landroid/text/Spannable;)V

    .line 70
    :cond_3f
    iget-object v0, p0, LzC;->b:LBo;

    invoke-virtual {v0}, LBo;->a()LyD;

    move-result-object v0

    iput-object v0, p0, LzC;->a:LyD;

    .line 72
    iget-object v0, p0, LzC;->a:LBV;

    invoke-virtual {v0}, LBV;->b()LBW;

    move-result-object v0

    .line 73
    iget-object v1, p0, LzC;->b:LBo;

    invoke-virtual {v1}, LBo;->a()Z

    move-result v1

    if-eqz v1, :cond_76

    .line 74
    invoke-virtual {v0}, LBW;->length()I

    move-result v1

    const-string v2, ""

    invoke-virtual {v0, v6, v1, v2}, LBW;->a(IILjava/lang/CharSequence;)LBW;

    .line 80
    :cond_5e
    :goto_5e
    iget-object v0, p0, LzC;->a:LwH;

    invoke-interface {v0}, LwH;->a()Landroid/content/Context;

    move-result-object v0

    .line 81
    iget-object v1, p0, LzC;->a:LyD;

    iget-object v2, p0, LzC;->a:LBV;

    iget-object v3, p0, LzC;->a:LBV;

    invoke-virtual {v3}, LBV;->a()LBW;

    move-result-object v3

    invoke-virtual {v3}, LBW;->length()I

    move-result v3

    invoke-interface {v1, v2, v6, v3, v0}, LyD;->a(Landroid/text/Spannable;IILandroid/content/Context;)V

    .line 82
    return-void

    .line 76
    :cond_76
    invoke-virtual {v0}, LBW;->length()I

    move-result v1

    const-string v2, "\n"

    invoke-virtual {v0, v6, v1, v2}, LBW;->a(IILjava/lang/CharSequence;)LBW;

    goto :goto_5e
.end method
