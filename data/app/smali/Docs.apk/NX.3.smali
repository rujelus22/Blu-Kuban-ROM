.class public final LNX;
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
    invoke-static {p0}, LNX;->bI(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic b(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter

    .prologue
    .line 24
    invoke-static {p0}, LNX;->bI(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic c(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter

    .prologue
    .line 24
    invoke-static {p0}, LNX;->bI(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic d(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter

    .prologue
    .line 24
    invoke-static {p0}, LNX;->bI(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic e(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter

    .prologue
    .line 24
    invoke-static {p0}, LNX;->bI(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic f(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter

    .prologue
    .line 24
    invoke-static {p0}, LNX;->bI(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a()V
    .registers 3

    .prologue
    .line 156
    const-class v0, Lcom/google/android/apps/docs/receivers/NetworkChangeReceiver;

    new-instance v1, LNY;

    invoke-direct {v1, p0}, LNY;-><init>(LNX;)V

    invoke-virtual {p0, v0, v1}, LNX;->a(Ljava/lang/Class;Lany;)V

    .line 164
    const-class v0, Lcom/google/android/apps/docs/receivers/AccountChangeReceiver;

    new-instance v1, LNZ;

    invoke-direct {v1, p0}, LNZ;-><init>(LNX;)V

    invoke-virtual {p0, v0, v1}, LNX;->a(Ljava/lang/Class;Lany;)V

    .line 172
    new-instance v0, LOa;

    invoke-direct {v0, p0}, LOa;-><init>(LNX;)V

    invoke-virtual {p0, v0}, LNX;->a(LWY;)V

    .line 177
    const-class v0, LNW;

    invoke-static {v0}, Lant;->a(Ljava/lang/Class;)Lant;

    move-result-object v0

    new-instance v1, LOb;

    invoke-direct {v1, p0}, LOb;-><init>(LNX;)V

    invoke-virtual {p0, v0, v1}, LNX;->a(Lant;LWZ;)V

    .line 204
    const-class v0, LOh;

    invoke-static {v0}, Lant;->a(Ljava/lang/Class;)Lant;

    move-result-object v0

    new-instance v1, LOc;

    invoke-direct {v1, p0}, LOc;-><init>(LNX;)V

    invoke-virtual {p0, v0, v1}, LNX;->a(Lant;LWZ;)V

    .line 231
    return-void
.end method
