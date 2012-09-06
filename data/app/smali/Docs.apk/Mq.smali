.class public final LMq;
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
    invoke-static {p0}, LMq;->bI(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic b(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter

    .prologue
    .line 24
    invoke-static {p0}, LMq;->bI(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic c(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter

    .prologue
    .line 24
    invoke-static {p0}, LMq;->bI(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic d(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter

    .prologue
    .line 24
    invoke-static {p0}, LMq;->bI(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a()V
    .registers 3

    .prologue
    .line 100
    const-class v0, Lcom/google/android/apps/docs/providers/DocListProvider;

    new-instance v1, LMr;

    invoke-direct {v1, p0}, LMr;-><init>(LMq;)V

    invoke-virtual {p0, v0, v1}, LMq;->a(Ljava/lang/Class;Lany;)V

    .line 108
    new-instance v0, LMs;

    invoke-direct {v0, p0}, LMs;-><init>(LMq;)V

    invoke-virtual {p0, v0}, LMq;->a(LWY;)V

    .line 113
    const-class v0, LMb;

    invoke-static {v0}, Lant;->a(Ljava/lang/Class;)Lant;

    move-result-object v0

    new-instance v1, LMt;

    invoke-direct {v1, p0}, LMt;-><init>(LMq;)V

    invoke-virtual {p0, v0, v1}, LMq;->a(Lant;LWZ;)V

    .line 140
    return-void
.end method
