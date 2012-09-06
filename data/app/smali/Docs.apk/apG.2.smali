.class public abstract LapG;
.super Ljava/lang/Object;
.source "Scoping.java"


# static fields
.field public static final a:LapG;

.field public static final b:LapG;

.field public static final c:LapG;

.field public static final d:LapG;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 43
    new-instance v0, LapH;

    invoke-direct {v0}, LapH;-><init>()V

    sput-object v0, LapG;->a:LapG;

    .line 61
    new-instance v0, LapI;

    invoke-direct {v0}, LapI;-><init>()V

    sput-object v0, LapG;->b:LapG;

    .line 79
    new-instance v0, LapJ;

    invoke-direct {v0}, LapJ;-><init>()V

    sput-object v0, LapG;->c:LapG;

    .line 97
    new-instance v0, LapK;

    invoke-direct {v0}, LapK;-><init>()V

    sput-object v0, LapG;->d:LapG;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 229
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(LapH;)V
    .registers 2
    .parameter

    .prologue
    .line 37
    invoke-direct {p0}, LapG;-><init>()V

    return-void
.end method

.method public static a(LanG;)LapG;
    .registers 2
    .parameter

    .prologue
    .line 141
    sget-object v0, LanI;->a:LanG;

    if-ne p0, v0, :cond_7

    .line 142
    sget-object v0, LapG;->c:LapG;

    .line 145
    :goto_6
    return-object v0

    :cond_7
    new-instance v0, LapM;

    invoke-direct {v0, p0}, LapM;-><init>(LanG;)V

    goto :goto_6
.end method

.method static a(LapG;LaoP;Laoy;)LapG;
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 252
    invoke-virtual {p0}, LapG;->a()Ljava/lang/Class;

    move-result-object v0

    .line 253
    if-nez v0, :cond_7

    .line 263
    :goto_6
    return-object p0

    .line 257
    :cond_7
    iget-object v1, p1, LaoP;->a:LapP;

    invoke-interface {v1, v0}, LapP;->a(Ljava/lang/Class;)LanG;

    move-result-object v1

    .line 258
    if-eqz v1, :cond_14

    .line 259
    invoke-static {v1}, LapG;->a(LanG;)LapG;

    move-result-object p0

    goto :goto_6

    .line 262
    :cond_14
    invoke-virtual {p2, v0}, Laoy;->b(Ljava/lang/Class;)Laoy;

    .line 263
    sget-object p0, LapG;->a:LapG;

    goto :goto_6
.end method

.method public static a(Ljava/lang/Class;)LapG;
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/annotation/Annotation;",
            ">;)",
            "LapG;"
        }
    .end annotation

    .prologue
    .line 116
    const-class v0, LanN;

    if-eq p0, v0, :cond_8

    const-class v0, LasW;

    if-ne p0, v0, :cond_b

    .line 118
    :cond_8
    sget-object v0, LapG;->b:LapG;

    .line 121
    :goto_a
    return-object v0

    :cond_b
    new-instance v0, LapL;

    invoke-direct {v0, p0}, LapL;-><init>(Ljava/lang/Class;)V

    goto :goto_a
.end method

.method static a(Lant;LaoP;Lapc;Ljava/lang/Object;LapG;)Lapc;
    .registers 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lant",
            "<TT;>;",
            "LaoP;",
            "Lapc",
            "<+TT;>;",
            "Ljava/lang/Object;",
            "LapG;",
            ")",
            "Lapc",
            "<+TT;>;"
        }
    .end annotation

    .prologue
    .line 235
    invoke-virtual {p4}, LapG;->b()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 243
    :goto_6
    return-object p2

    .line 239
    :cond_7
    invoke-virtual {p4}, LapG;->a()LanG;

    move-result-object v0

    .line 241
    new-instance v1, Lapz;

    invoke-direct {v1, p1, p2}, Lapz;-><init>(LaoP;Lapc;)V

    invoke-interface {v0, p0, v1}, LanG;->a(Lant;LanD;)LanD;

    move-result-object v0

    .line 243
    new-instance p2, Lapd;

    invoke-direct {p2, v0, p3}, Lapd;-><init>(LanD;Ljava/lang/Object;)V

    goto :goto_6
.end method


# virtual methods
.method public a()LanG;
    .registers 2

    .prologue
    .line 199
    const/4 v0, 0x0

    return-object v0
.end method

.method public a()Ljava/lang/Class;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/annotation/Annotation;",
            ">;"
        }
    .end annotation

    .prologue
    .line 206
    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract a(Laqd;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Laqd",
            "<TV;>;)TV;"
        }
    .end annotation
.end method

.method public a()Z
    .registers 2

    .prologue
    .line 169
    sget-object v0, LapG;->a:LapG;

    if-eq p0, v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public b()Z
    .registers 3

    .prologue
    .line 177
    invoke-virtual {p0}, LapG;->a()LanG;

    move-result-object v0

    sget-object v1, LanI;->b:LanG;

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 5
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 211
    instance-of v1, p1, LapG;

    if-eqz v1, :cond_24

    .line 212
    check-cast p1, LapG;

    .line 213
    invoke-virtual {p0}, LapG;->a()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, LapG;->a()Ljava/lang/Class;

    move-result-object v2

    invoke-static {v1, v2}, LafL;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_24

    invoke-virtual {p0}, LapG;->a()LanG;

    move-result-object v1

    invoke-virtual {p1}, LapG;->a()LanG;

    move-result-object v2

    invoke-static {v1, v2}, LafL;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_24

    const/4 v0, 0x1

    .line 216
    :cond_24
    return v0
.end method

.method public hashCode()I
    .registers 4

    .prologue
    .line 222
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-virtual {p0}, LapG;->a()Ljava/lang/Class;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    invoke-virtual {p0}, LapG;->a()LanG;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, LafL;->a([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
