.class public final Lack;
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
    invoke-static {p0}, Lack;->bI(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a()V
    .registers 3

    .prologue
    .line 79
    new-instance v0, Lacl;

    invoke-direct {v0, p0}, Lacl;-><init>(Lack;)V

    invoke-virtual {p0, v0}, Lack;->a(LWY;)V

    .line 84
    const-class v0, Lacj;

    invoke-static {v0}, Lant;->a(Ljava/lang/Class;)Lant;

    move-result-object v0

    new-instance v1, Lacm;

    invoke-direct {v1, p0}, Lacm;-><init>(Lack;)V

    invoke-virtual {p0, v0, v1}, Lack;->a(Lant;LWZ;)V

    .line 111
    return-void
.end method
