.class public Lzd;
.super Ljava/lang/Object;
.source "SectionChildFactory.java"

# interfaces
.implements LyO;


# annotations
.annotation runtime LanN;
.end annotation


# instance fields
.field private a:LvI;

.field private final a:Lxp;

.field private final a:LyX;

.field private final a:Z


# direct methods
.method public constructor <init>(LyX;Lxp;LeZ;)V
    .registers 5
    .parameter
    .parameter
    .parameter
    .annotation runtime Lanr;
    .end annotation

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const/4 v0, 0x0

    iput-object v0, p0, Lzd;->a:LvI;

    .line 43
    iput-object p1, p0, Lzd;->a:LyX;

    .line 44
    iput-object p2, p0, Lzd;->a:Lxp;

    .line 45
    sget-object v0, LeV;->t:LeV;

    invoke-interface {p3, v0}, LeZ;->a(LeV;)Z

    move-result v0

    iput-boolean v0, p0, Lzd;->a:Z

    .line 47
    return-void
.end method

.method static synthetic a(Lzd;)LvI;
    .registers 2
    .parameter

    .prologue
    .line 31
    iget-object v0, p0, Lzd;->a:LvI;

    return-object v0
.end method

.method static synthetic a(Lzd;)Lxp;
    .registers 2
    .parameter

    .prologue
    .line 31
    iget-object v0, p0, Lzd;->a:Lxp;

    return-object v0
.end method

.method private a(ILyg;LwH;)LyP;
    .registers 10
    .parameter
    .parameter
    .parameter

    .prologue
    .line 51
    new-instance v0, Lze;

    const-class v3, Lzx;

    move-object v1, p0

    move v2, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lze;-><init>(Lzd;ILjava/lang/Class;Lyg;LwH;)V

    return-object v0
.end method

.method static synthetic a(Lzd;)LyX;
    .registers 2
    .parameter

    .prologue
    .line 31
    iget-object v0, p0, Lzd;->a:LyX;

    return-object v0
.end method

.method static synthetic a(Lzd;)Z
    .registers 2
    .parameter

    .prologue
    .line 31
    iget-boolean v0, p0, Lzd;->a:Z

    return v0
.end method

.method private b(ILyg;LwH;)LyP;
    .registers 10
    .parameter
    .parameter
    .parameter

    .prologue
    .line 62
    new-instance v0, Lzf;

    const-class v3, LzC;

    move-object v1, p0

    move v2, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lzf;-><init>(Lzd;ILjava/lang/Class;Lyg;LwH;)V

    return-object v0
.end method

.method private c(ILyg;LwH;)LyP;
    .registers 10
    .parameter
    .parameter
    .parameter

    .prologue
    .line 80
    new-instance v0, Lzg;

    const-class v3, Lzp;

    move-object v1, p0

    move v2, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lzg;-><init>(Lzd;ILjava/lang/Class;Lyg;LwH;)V

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
    .line 96
    invoke-interface {p3, p1, p1}, Lyg;->a(II)LvB;

    move-result-object v0

    .line 97
    invoke-interface {v0}, LvB;->a()I

    move-result v1

    .line 98
    invoke-interface {v0}, LvB;->b()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 99
    invoke-static {v1}, LwT;->a(I)LwT;

    move-result-object v1

    .line 101
    sget-object v2, LwT;->f:LwT;

    if-ne v1, v2, :cond_1f

    .line 102
    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 103
    invoke-direct {p0, v0, p3, p4}, Lzd;->c(ILyg;LwH;)LyP;

    move-result-object v0

    .line 109
    :goto_1e
    return-object v0

    .line 104
    :cond_1f
    sget-object v2, LwT;->c:LwT;

    if-ne v1, v2, :cond_2c

    .line 105
    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 106
    invoke-direct {p0, v0, p3, p4}, Lzd;->b(ILyg;LwH;)LyP;

    move-result-object v0

    goto :goto_1e

    .line 108
    :cond_2c
    invoke-interface {p3, p1}, Lyg;->a(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 109
    invoke-direct {p0, v0, p3, p4}, Lzd;->a(ILyg;LwH;)LyP;

    move-result-object v0

    goto :goto_1e
.end method

.method public a(LvI;)V
    .registers 2
    .parameter

    .prologue
    .line 117
    iput-object p1, p0, Lzd;->a:LvI;

    .line 118
    return-void
.end method
