.class public LwM;
.super Ljava/lang/Object;
.source "DocumentWalker.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final a:LBH;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LBH",
            "<",
            "Lzr;",
            ">;"
        }
    .end annotation
.end field

.field private final a:LBV;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LBV",
            "<",
            "Lzr;",
            ">;"
        }
    .end annotation
.end field

.field private final a:LwH;

.field private final a:Lyg;

.field private final a:Lyu;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lyu",
            "<",
            "LBe;",
            ">;"
        }
    .end annotation
.end field

.field private final a:Z

.field private final b:Lyu;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lyu",
            "<",
            "LBm;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lyu;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lyu",
            "<",
            "LAX;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(LBH;LBV;Lyg;LwH;)V
    .registers 6
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
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v0, Lyu;

    invoke-direct {v0}, Lyu;-><init>()V

    iput-object v0, p0, LwM;->a:Lyu;

    .line 45
    new-instance v0, Lyu;

    invoke-direct {v0}, Lyu;-><init>()V

    iput-object v0, p0, LwM;->b:Lyu;

    .line 46
    new-instance v0, Lyu;

    invoke-direct {v0}, Lyu;-><init>()V

    iput-object v0, p0, LwM;->c:Lyu;

    .line 53
    iput-object p3, p0, LwM;->a:Lyg;

    .line 54
    iput-object p4, p0, LwM;->a:LwH;

    .line 55
    iput-object p1, p0, LwM;->a:LBH;

    .line 56
    iput-object p2, p0, LwM;->a:LBV;

    .line 57
    invoke-interface {p4}, LwH;->a()Z

    move-result v0

    iput-boolean v0, p0, LwM;->a:Z

    .line 58
    return-void
.end method

.method static synthetic a(LwM;)LBV;
    .registers 2
    .parameter

    .prologue
    .line 35
    iget-object v0, p0, LwM;->a:LBV;

    return-object v0
.end method

.method private a(IILjava/util/Iterator;)Ljava/lang/Iterable;
    .registers 5
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/Iterator",
            "<",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/lang/Iterable",
            "<",
            "LFt;",
            ">;"
        }
    .end annotation

    .prologue
    .line 136
    new-instance v0, LwN;

    invoke-direct {v0, p0, p1, p3, p2}, LwN;-><init>(LwM;ILjava/util/Iterator;I)V

    return-object v0
.end method

.method private a(LwJ;II)Ljava/lang/Iterable;
    .registers 5
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LwJ;",
            "II)",
            "Ljava/lang/Iterable",
            "<",
            "LFt;",
            ">;"
        }
    .end annotation

    .prologue
    .line 110
    invoke-interface {p1, p2, p3}, LwJ;->a(II)Ljava/util/Iterator;

    move-result-object v0

    .line 111
    invoke-direct {p0, p2, p3, v0}, LwM;->a(IILjava/util/Iterator;)Ljava/lang/Iterable;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(LwM;)LwH;
    .registers 2
    .parameter

    .prologue
    .line 35
    iget-object v0, p0, LwM;->a:LwH;

    return-object v0
.end method

.method private a(IILBm;)V
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 61
    iget-object v0, p0, LwM;->b:Lyu;

    iget-object v1, p0, LwM;->a:LBH;

    invoke-virtual {v1}, LBH;->c()I

    move-result v1

    sub-int v1, p1, v1

    invoke-virtual {v0, v1, p2, p3}, Lyu;->a(IILBj;)V

    .line 62
    return-void
.end method

.method private a(IILwJ;)V
    .registers 7
    .parameter
    .parameter
    .parameter

    .prologue
    .line 92
    invoke-interface {p3, p1}, LwJ;->a(I)Lwm;

    move-result-object v0

    .line 93
    new-instance v1, LBe;

    if-eqz v0, :cond_1d

    invoke-interface {v0}, Lwm;->a()Ljava/lang/String;

    move-result-object v0

    :goto_c
    invoke-direct {v1, v0}, LBe;-><init>(Ljava/lang/String;)V

    .line 94
    iget-object v0, p0, LwM;->a:Lyu;

    iget-object v2, p0, LwM;->a:LBH;

    invoke-virtual {v2}, LBH;->c()I

    move-result v2

    sub-int v2, p1, v2

    invoke-virtual {v0, v2, p2, v1}, Lyu;->a(IILBj;)V

    .line 95
    return-void

    .line 93
    :cond_1d
    const/4 v0, 0x0

    goto :goto_c
.end method

.method private a(IILwJ;I)V
    .registers 11
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x1

    .line 77
    add-int v0, p1, p2

    if-ne v0, p4, :cond_30

    .line 78
    if-le p2, v5, :cond_17

    .line 79
    add-int/lit8 v0, p2, -0x1

    new-instance v1, LBm;

    invoke-interface {p3, p1}, LwJ;->a(I)Lwk;

    move-result-object v2

    iget-object v3, p0, LwM;->a:LwH;

    invoke-direct {v1, v2, v3}, LBm;-><init>(Lwk;LwH;)V

    invoke-direct {p0, p1, v0, v1}, LwM;->a(IILBm;)V

    .line 82
    :cond_17
    add-int v0, p1, p2

    add-int/lit8 v0, v0, -0x1

    new-instance v1, LBm;

    invoke-interface {p3, p1}, LwJ;->a(I)Lwk;

    move-result-object v2

    iget-object v3, p0, LwM;->a:LwH;

    iget-object v4, p0, LwM;->a:LwH;

    invoke-interface {v4}, LwH;->a()Landroid/text/Editable;

    move-result-object v4

    invoke-direct {v1, v2, v3, v5, v4}, LBm;-><init>(Lwk;LwH;ZLandroid/text/Editable;)V

    invoke-direct {p0, v0, v5, v1}, LwM;->a(IILBm;)V

    .line 89
    :goto_2f
    return-void

    .line 86
    :cond_30
    new-instance v0, LBm;

    invoke-interface {p3, p1}, LwJ;->a(I)Lwk;

    move-result-object v1

    iget-object v2, p0, LwM;->a:LwH;

    invoke-direct {v0, v1, v2}, LBm;-><init>(Lwk;LwH;)V

    invoke-direct {p0, p1, p2, v0}, LwM;->a(IILBm;)V

    goto :goto_2f
.end method

.method private a(Lyu;II)V
    .registers 6
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "LBj;",
            ">(",
            "Lyu",
            "<TT;>;II)V"
        }
    .end annotation

    .prologue
    .line 228
    iget-object v0, p0, LwM;->a:LBH;

    invoke-virtual {v0}, LBH;->c()I

    move-result v0

    sub-int v0, p2, v0

    .line 229
    new-instance v1, LwP;

    invoke-direct {v1, p0}, LwP;-><init>(LwM;)V

    invoke-virtual {p1, v0, p3, v1}, Lyu;->a(IILyz;)Z

    .line 241
    return-void
.end method

.method private b(LwJ;II)Ljava/lang/Iterable;
    .registers 5
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LwJ;",
            "II)",
            "Ljava/lang/Iterable",
            "<",
            "LFt;",
            ">;"
        }
    .end annotation

    .prologue
    .line 120
    invoke-interface {p1, p2, p3}, LwJ;->b(II)Ljava/util/Iterator;

    move-result-object v0

    .line 121
    invoke-direct {p0, p2, p3, v0}, LwM;->a(IILjava/util/Iterator;)Ljava/lang/Iterable;

    move-result-object v0

    return-object v0
.end method

.method private b(IILwJ;)V
    .registers 7
    .parameter
    .parameter
    .parameter

    .prologue
    .line 98
    invoke-interface {p3, p1}, LwJ;->a(I)Lvz;

    move-result-object v0

    .line 99
    if-eqz v0, :cond_1d

    invoke-interface {v0}, Lvz;->a()[Ljava/lang/String;

    move-result-object v0

    .line 100
    :goto_a
    new-instance v1, LAX;

    invoke-direct {v1, v0}, LAX;-><init>([Ljava/lang/String;)V

    .line 101
    iget-object v0, p0, LwM;->c:Lyu;

    iget-object v2, p0, LwM;->a:LBH;

    invoke-virtual {v2}, LBH;->c()I

    move-result v2

    sub-int v2, p1, v2

    invoke-virtual {v0, v2, p2, v1}, Lyu;->a(IILBj;)V

    .line 102
    return-void

    .line 99
    :cond_1d
    const/4 v0, 0x0

    goto :goto_a
.end method

.method private c(LwJ;II)Ljava/lang/Iterable;
    .registers 5
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LwJ;",
            "II)",
            "Ljava/lang/Iterable",
            "<",
            "LFt;",
            ">;"
        }
    .end annotation

    .prologue
    .line 130
    invoke-interface {p1, p2, p3}, LwJ;->c(II)Ljava/util/Iterator;

    move-result-object v0

    .line 131
    invoke-direct {p0, p2, p3, v0}, LwM;->a(IILjava/util/Iterator;)Ljava/lang/Iterable;

    move-result-object v0

    return-object v0
.end method

.method private c(IILwJ;)V
    .registers 10
    .parameter
    .parameter
    .parameter

    .prologue
    .line 187
    add-int v0, p1, p2

    add-int/lit8 v1, v0, -0x1

    .line 188
    iget-object v0, p0, LwM;->a:LBH;

    invoke-virtual {v0}, LBH;->d()I

    move-result v2

    .line 192
    invoke-direct {p0, p3, p1, v1}, LwM;->a(LwJ;II)Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_12
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2f

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LFt;

    .line 193
    invoke-virtual {v0}, LFt;->b()I

    move-result v4

    invoke-virtual {v0}, LFt;->a()I

    move-result v5

    sub-int/2addr v4, v5

    .line 194
    invoke-virtual {v0}, LFt;->a()I

    move-result v0

    invoke-direct {p0, v0, v4, p3, v2}, LwM;->a(IILwJ;I)V

    goto :goto_12

    .line 199
    :cond_2f
    invoke-direct {p0, p3, p1, v1}, LwM;->b(LwJ;II)Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_37
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_54

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LFt;

    .line 200
    invoke-virtual {v0}, LFt;->b()I

    move-result v3

    invoke-virtual {v0}, LFt;->a()I

    move-result v4

    sub-int/2addr v3, v4

    .line 201
    invoke-virtual {v0}, LFt;->a()I

    move-result v0

    invoke-direct {p0, v0, v3, p3}, LwM;->a(IILwJ;)V

    goto :goto_37

    .line 206
    :cond_54
    invoke-direct {p0, p3, p1, v1}, LwM;->c(LwJ;II)Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_5c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_79

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LFt;

    .line 207
    invoke-virtual {v0}, LFt;->b()I

    move-result v2

    invoke-virtual {v0}, LFt;->a()I

    move-result v3

    sub-int/2addr v2, v3

    .line 208
    invoke-virtual {v0}, LFt;->a()I

    move-result v0

    invoke-direct {p0, v0, v2, p3}, LwM;->b(IILwJ;)V

    goto :goto_5c

    .line 210
    :cond_79
    return-void
.end method

.method private d(II)V
    .registers 7
    .parameter
    .parameter

    .prologue
    .line 217
    iget-object v0, p0, LwM;->a:LBH;

    invoke-virtual {v0}, LBH;->c()I

    move-result v0

    .line 218
    iget-object v1, p0, LwM;->b:Lyu;

    sub-int v2, p1, v0

    iget-object v3, p0, LwM;->a:LBV;

    invoke-virtual {v1, v2, p2, v3}, Lyu;->a(IILandroid/text/Spannable;)V

    .line 219
    iget-object v1, p0, LwM;->a:Lyu;

    sub-int v2, p1, v0

    iget-object v3, p0, LwM;->a:LBV;

    invoke-virtual {v1, v2, p2, v3}, Lyu;->a(IILandroid/text/Spannable;)V

    .line 220
    iget-object v1, p0, LwM;->c:Lyu;

    sub-int v0, p1, v0

    iget-object v2, p0, LwM;->a:LBV;

    invoke-virtual {v1, v0, p2, v2}, Lyu;->a(IILandroid/text/Spannable;)V

    .line 221
    return-void
.end method

.method private e(II)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 248
    iget-object v0, p0, LwM;->a:Lyu;

    invoke-direct {p0, v0, p1, p2}, LwM;->a(Lyu;II)V

    .line 249
    iget-object v0, p0, LwM;->b:Lyu;

    invoke-direct {p0, v0, p1, p2}, LwM;->a(Lyu;II)V

    .line 251
    iget-boolean v0, p0, LwM;->a:Z

    if-eqz v0, :cond_13

    .line 252
    iget-object v0, p0, LwM;->c:Lyu;

    invoke-direct {p0, v0, p1, p2}, LwM;->a(Lyu;II)V

    .line 254
    :cond_13
    return-void
.end method


# virtual methods
.method public a(II)V
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 262
    if-ltz p2, :cond_2c

    const/4 v0, 0x1

    :goto_3
    invoke-static {v0}, LafQ;->a(Z)V

    .line 263
    iget-object v0, p0, LwM;->a:Lyg;

    invoke-interface {v0, p1, p2}, Lyg;->a(II)LwJ;

    move-result-object v0

    .line 264
    invoke-direct {p0, p1, p2, v0}, LwM;->c(IILwJ;)V

    .line 266
    add-int v1, p1, p2

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, p1, v1}, LwJ;->a(II)Ljava/lang/String;

    move-result-object v0

    .line 267
    iget-object v1, p0, LwM;->a:LBH;

    invoke-virtual {v1}, LBH;->c()I

    move-result v1

    sub-int v1, p1, v1

    .line 268
    iget-object v2, p0, LwM;->a:LBV;

    invoke-virtual {v2}, LBV;->a()LBW;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, LBW;->a(ILjava/lang/String;)LBW;

    .line 270
    invoke-direct {p0, p1, p2}, LwM;->e(II)V

    .line 271
    return-void

    .line 262
    :cond_2c
    const/4 v0, 0x0

    goto :goto_3
.end method

.method public a(IILAV;)Z
    .registers 7
    .parameter
    .parameter
    .parameter

    .prologue
    .line 313
    iget-object v0, p0, LwM;->a:LBV;

    invoke-virtual {v0}, LBV;->c()I

    move-result v0

    sub-int v0, p1, v0

    .line 314
    iget-object v1, p0, LwM;->b:Lyu;

    new-instance v2, LwQ;

    invoke-direct {v2, p0, v0, p2, p3}, LwQ;-><init>(LwM;IILAV;)V

    invoke-virtual {v1, v0, p2, v2}, Lyu;->a(IILyz;)Z

    move-result v0

    return v0
.end method

.method public b(II)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 278
    if-ltz p2, :cond_16

    const/4 v0, 0x1

    :goto_3
    invoke-static {v0}, LafQ;->a(Z)V

    .line 282
    invoke-direct {p0, p1, p2}, LwM;->d(II)V

    .line 283
    iget-object v0, p0, LwM;->a:Lyg;

    invoke-interface {v0, p1, p2}, Lyg;->a(II)LwJ;

    move-result-object v0

    .line 284
    invoke-direct {p0, p1, p2, v0}, LwM;->c(IILwJ;)V

    .line 286
    invoke-direct {p0, p1, p2}, LwM;->e(II)V

    .line 287
    return-void

    .line 278
    :cond_16
    const/4 v0, 0x0

    goto :goto_3
.end method

.method public c(II)V
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 294
    invoke-direct {p0, p1, p2}, LwM;->d(II)V

    .line 296
    iget-object v0, p0, LwM;->a:LBH;

    invoke-virtual {v0}, LBH;->c()I

    move-result v0

    sub-int v0, p1, v0

    .line 297
    iget-object v1, p0, LwM;->a:LBV;

    invoke-virtual {v1}, LBV;->a()LBW;

    move-result-object v1

    add-int v2, v0, p2

    invoke-virtual {v1, v0, v2}, LBW;->a(II)LBW;

    .line 299
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, LwM;->e(II)V

    .line 300
    return-void
.end method
