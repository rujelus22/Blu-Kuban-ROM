.class public final LIm;
.super LWW;
.source "GellyInjectorStore.java"


# direct methods
.method public constructor <init>(LWI;)V
    .registers 2
    .parameter

    .prologue
    .line 26
    invoke-direct {p0, p1}, LWW;-><init>(LWI;)V

    .line 27
    return-void
.end method

.method static synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter

    .prologue
    .line 24
    invoke-static {p0}, LIm;->bI(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic b(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter

    .prologue
    .line 24
    invoke-static {p0}, LIm;->bI(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic c(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter

    .prologue
    .line 24
    invoke-static {p0}, LIm;->bI(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic d(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter

    .prologue
    .line 24
    invoke-static {p0}, LIm;->bI(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic e(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter

    .prologue
    .line 24
    invoke-static {p0}, LIm;->bI(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a()V
    .registers 3

    .prologue
    .line 178
    new-instance v0, LIn;

    invoke-direct {v0, p0}, LIn;-><init>(LIm;)V

    invoke-virtual {p0, v0}, LIm;->a(LWY;)V

    .line 183
    const-class v0, LIk;

    invoke-static {v0}, Lant;->a(Ljava/lang/Class;)Lant;

    move-result-object v0

    new-instance v1, LIo;

    invoke-direct {v1, p0}, LIo;-><init>(LIm;)V

    invoke-virtual {p0, v0, v1}, LIm;->a(Lant;LWZ;)V

    .line 210
    const-class v0, LIA;

    invoke-static {v0}, Lant;->a(Ljava/lang/Class;)Lant;

    move-result-object v0

    new-instance v1, LIp;

    invoke-direct {v1, p0}, LIp;-><init>(LIm;)V

    invoke-virtual {p0, v0, v1}, LIm;->a(Lant;LWZ;)V

    .line 237
    const-class v0, LIi;

    invoke-static {v0}, Lant;->a(Ljava/lang/Class;)Lant;

    move-result-object v0

    new-instance v1, LIq;

    invoke-direct {v1, p0}, LIq;-><init>(LIm;)V

    invoke-virtual {p0, v0, v1}, LIm;->a(Lant;LWZ;)V

    .line 264
    return-void
.end method
