.class public final LFd;
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
    invoke-static {p0}, LFd;->bI(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a()V
    .registers 3

    .prologue
    .line 79
    new-instance v0, LFe;

    invoke-direct {v0, p0}, LFe;-><init>(LFd;)V

    invoke-virtual {p0, v0}, LFd;->a(LWY;)V

    .line 84
    const-class v0, LFu;

    invoke-static {v0}, Lant;->a(Ljava/lang/Class;)Lant;

    move-result-object v0

    new-instance v1, LFf;

    invoke-direct {v1, p0}, LFf;-><init>(LFd;)V

    invoke-virtual {p0, v0, v1}, LFd;->a(Lant;LWZ;)V

    .line 111
    return-void
.end method
