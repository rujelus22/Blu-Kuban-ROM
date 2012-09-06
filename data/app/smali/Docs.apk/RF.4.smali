.class public final LRF;
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
    invoke-static {p0}, LRF;->bI(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic b(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter

    .prologue
    .line 24
    invoke-static {p0}, LRF;->bI(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a()V
    .registers 3

    .prologue
    .line 92
    const-class v0, LRE;

    new-instance v1, LRG;

    invoke-direct {v1, p0}, LRG;-><init>(LRF;)V

    invoke-virtual {p0, v0, v1}, LRF;->a(Ljava/lang/Class;Lany;)V

    .line 100
    new-instance v0, LRH;

    invoke-direct {v0, p0}, LRH;-><init>(LRF;)V

    invoke-virtual {p0, v0}, LRF;->a(LWY;)V

    .line 105
    const-class v0, LRE;

    invoke-static {v0}, Lant;->a(Ljava/lang/Class;)Lant;

    move-result-object v0

    new-instance v1, LRI;

    invoke-direct {v1, p0}, LRI;-><init>(LRF;)V

    invoke-virtual {p0, v0, v1}, LRF;->a(Lant;LWZ;)V

    .line 132
    return-void
.end method
