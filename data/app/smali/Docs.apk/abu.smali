.class public final Labu;
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
    invoke-static {p0}, Labu;->bI(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic b(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter

    .prologue
    .line 24
    invoke-static {p0}, Labu;->bI(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic c(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter

    .prologue
    .line 24
    invoke-static {p0}, Labu;->bI(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic d(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter

    .prologue
    .line 24
    invoke-static {p0}, Labu;->bI(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic e(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter

    .prologue
    .line 24
    invoke-static {p0}, Labu;->bI(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic f(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter

    .prologue
    .line 24
    invoke-static {p0}, Labu;->bI(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a()V
    .registers 3

    .prologue
    .line 144
    new-instance v0, Labv;

    invoke-direct {v0, p0}, Labv;-><init>(Labu;)V

    invoke-virtual {p0, v0}, Labu;->a(LWY;)V

    .line 149
    const-class v0, LabB;

    invoke-static {v0}, Lant;->a(Ljava/lang/Class;)Lant;

    move-result-object v0

    new-instance v1, Labw;

    invoke-direct {v1, p0}, Labw;-><init>(Labu;)V

    invoke-virtual {p0, v0, v1}, Labu;->a(Lant;LWZ;)V

    .line 176
    const-class v0, Labt;

    invoke-static {v0}, Lant;->a(Ljava/lang/Class;)Lant;

    move-result-object v0

    new-instance v1, Labx;

    invoke-direct {v1, p0}, Labx;-><init>(Labu;)V

    invoke-virtual {p0, v0, v1}, Labu;->a(Lant;LWZ;)V

    .line 203
    return-void
.end method
