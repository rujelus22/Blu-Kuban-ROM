.class public final LzO;
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
    invoke-static {p0}, LzO;->bI(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic b(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter

    .prologue
    .line 24
    invoke-static {p0}, LzO;->bI(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic c(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter

    .prologue
    .line 24
    invoke-static {p0}, LzO;->bI(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic d(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter

    .prologue
    .line 24
    invoke-static {p0}, LzO;->bI(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic e(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter

    .prologue
    .line 24
    invoke-static {p0}, LzO;->bI(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a()V
    .registers 3

    .prologue
    .line 149
    const-class v0, LzW;

    new-instance v1, LzP;

    invoke-direct {v1, p0}, LzP;-><init>(LzO;)V

    invoke-virtual {p0, v0, v1}, LzO;->a(Ljava/lang/Class;Lany;)V

    .line 157
    new-instance v0, LzQ;

    invoke-direct {v0, p0}, LzQ;-><init>(LzO;)V

    invoke-virtual {p0, v0}, LzO;->a(LWY;)V

    .line 162
    const-class v0, LzH;

    invoke-static {v0}, Lant;->a(Ljava/lang/Class;)Lant;

    move-result-object v0

    new-instance v1, LzR;

    invoke-direct {v1, p0}, LzR;-><init>(LzO;)V

    invoke-virtual {p0, v0, v1}, LzO;->a(Lant;LWZ;)V

    .line 189
    const-class v0, LzW;

    invoke-static {v0}, Lant;->a(Ljava/lang/Class;)Lant;

    move-result-object v0

    new-instance v1, LzS;

    invoke-direct {v1, p0}, LzS;-><init>(LzO;)V

    invoke-virtual {p0, v0, v1}, LzO;->a(Lant;LWZ;)V

    .line 216
    return-void
.end method
