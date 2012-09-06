.class public final Lg;
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
    invoke-static {p0}, Lg;->bI(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a()V
    .registers 3

    .prologue
    .line 80
    new-instance v0, Lh;

    invoke-direct {v0, p0}, Lh;-><init>(Lg;)V

    invoke-virtual {p0, v0}, Lg;->a(LWY;)V

    .line 85
    const-class v0, Landroid/content/Context;

    invoke-static {v0}, Lant;->a(Ljava/lang/Class;)Lant;

    move-result-object v0

    new-instance v1, Li;

    invoke-direct {v1, p0}, Li;-><init>(Lg;)V

    invoke-virtual {p0, v0, v1}, Lg;->a(Lant;LWZ;)V

    .line 112
    return-void
.end method
