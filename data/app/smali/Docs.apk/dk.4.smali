.class public final Ldk;
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
    invoke-static {p0}, Ldk;->bI(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic b(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter

    .prologue
    .line 24
    invoke-static {p0}, Ldk;->bI(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic c(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter

    .prologue
    .line 24
    invoke-static {p0}, Ldk;->bI(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a()V
    .registers 3

    .prologue
    .line 128
    new-instance v0, Ldl;

    invoke-direct {v0, p0}, Ldl;-><init>(Ldk;)V

    invoke-virtual {p0, v0}, Ldk;->a(LWY;)V

    .line 133
    const-class v0, Ldg;

    invoke-static {v0}, Lant;->a(Ljava/lang/Class;)Lant;

    move-result-object v0

    new-instance v1, Ldm;

    invoke-direct {v1, p0}, Ldm;-><init>(Ldk;)V

    invoke-virtual {p0, v0, v1}, Ldk;->a(Lant;LWZ;)V

    .line 160
    const-class v0, Ldi;

    invoke-static {v0}, Lant;->a(Ljava/lang/Class;)Lant;

    move-result-object v0

    new-instance v1, Ldn;

    invoke-direct {v1, p0}, Ldn;-><init>(Ldk;)V

    invoke-virtual {p0, v0, v1}, Ldk;->a(Lant;LWZ;)V

    .line 187
    return-void
.end method
