.class public LyX;
.super Ljava/lang/Object;
.source "ParagraphChildFactory.java"

# interfaces
.implements LyO;


# annotations
.annotation runtime LanN;
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1
    .annotation runtime Lanr;
    .end annotation

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    return-void
.end method

.method private a(ILyg;LwH;)LyP;
    .registers 10
    .parameter
    .parameter
    .parameter

    .prologue
    .line 38
    new-instance v0, LyY;

    const-class v3, LzA;

    move-object v1, p0

    move v2, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, LyY;-><init>(LyX;ILjava/lang/Class;Lyg;LwH;)V

    return-object v0
.end method

.method private b(ILyg;LwH;)LyP;
    .registers 10
    .parameter
    .parameter
    .parameter

    .prologue
    .line 49
    new-instance v0, LyZ;

    const-class v3, Lzt;

    move-object v1, p0

    move v2, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, LyZ;-><init>(LyX;ILjava/lang/Class;Lyg;LwH;)V

    return-object v0
.end method

.method private c(ILyg;LwH;)LyP;
    .registers 10
    .parameter
    .parameter
    .parameter

    .prologue
    .line 61
    new-instance v0, Lza;

    const-class v3, Lzs;

    move-object v1, p0

    move v2, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lza;-><init>(LyX;ILjava/lang/Class;Lyg;LwH;)V

    return-object v0
.end method

.method private d(ILyg;LwH;)LyP;
    .registers 10
    .parameter
    .parameter
    .parameter

    .prologue
    .line 73
    new-instance v0, Lzb;

    const-class v3, Lzw;

    move-object v1, p0

    move v2, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lzb;-><init>(LyX;ILjava/lang/Class;Lyg;LwH;)V

    return-object v0
.end method

.method private e(ILyg;LwH;)LyP;
    .registers 10
    .parameter
    .parameter
    .parameter

    .prologue
    .line 84
    new-instance v0, Lzc;

    const-class v3, LzC;

    move-object v1, p0

    move v2, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lzc;-><init>(LyX;ILjava/lang/Class;Lyg;LwH;)V

    return-object v0
.end method


# virtual methods
.method public a(IILyg;LwH;)LyP;
    .registers 8
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 97
    add-int/lit8 v0, p2, -0x1

    invoke-interface {p3, p1, v0}, Lyg;->a(II)LvB;

    move-result-object v0

    .line 98
    invoke-interface {v0}, LvB;->a()I

    move-result v1

    .line 99
    invoke-interface {v0}, LvB;->b()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 100
    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 102
    invoke-static {v1}, LwT;->a(I)LwT;

    move-result-object v1

    .line 103
    sget-object v2, LwT;->a:LwT;

    if-ne v1, v2, :cond_21

    .line 104
    invoke-direct {p0, v0, p3, p4}, LyX;->a(ILyg;LwH;)LyP;

    move-result-object v0

    .line 113
    :goto_20
    return-object v0

    .line 106
    :cond_21
    sget-object v2, LwT;->e:LwT;

    if-ne v1, v2, :cond_31

    invoke-interface {p3, p1}, Lyg;->a(I)[LvD;

    move-result-object v2

    array-length v2, v2

    if-lez v2, :cond_31

    .line 107
    invoke-direct {p0, v0, p3, p4}, LyX;->b(ILyg;LwH;)LyP;

    move-result-object v0

    goto :goto_20

    .line 108
    :cond_31
    sget-object v2, LwT;->b:LwT;

    if-ne v1, v2, :cond_3a

    .line 109
    invoke-direct {p0, v0, p3, p4}, LyX;->c(ILyg;LwH;)LyP;

    move-result-object v0

    goto :goto_20

    .line 110
    :cond_3a
    sget-object v2, LwT;->g:LwT;

    if-ne v1, v2, :cond_43

    .line 111
    invoke-direct {p0, v0, p3, p4}, LyX;->d(ILyg;LwH;)LyP;

    move-result-object v0

    goto :goto_20

    .line 113
    :cond_43
    invoke-direct {p0, v0, p3, p4}, LyX;->e(ILyg;LwH;)LyP;

    move-result-object v0

    goto :goto_20
.end method
