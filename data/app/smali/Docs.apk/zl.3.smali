.class public final Lzl;
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
    invoke-static {p0}, Lzl;->bI(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a()V
    .registers 3

    .prologue
    .line 79
    new-instance v0, Lzm;

    invoke-direct {v0, p0}, Lzm;-><init>(Lzl;)V

    invoke-virtual {p0, v0}, Lzl;->a(LWY;)V

    .line 84
    const-class v0, Lcom/google/android/apps/docs/editors/kix/collab/CollaboratorFragment;

    invoke-static {v0}, Lant;->a(Ljava/lang/Class;)Lant;

    move-result-object v0

    new-instance v1, Lzn;

    invoke-direct {v1, p0}, Lzn;-><init>(Lzl;)V

    invoke-virtual {p0, v0, v1}, Lzl;->a(Lant;LWZ;)V

    .line 111
    return-void
.end method
