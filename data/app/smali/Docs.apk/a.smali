.class public final La;
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
    invoke-static {p0}, La;->bI(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic b(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter

    .prologue
    .line 24
    invoke-static {p0}, La;->bI(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a()V
    .registers 3

    .prologue
    .line 120
    new-instance v0, Lb;

    invoke-direct {v0, p0}, Lb;-><init>(La;)V

    invoke-virtual {p0, v0}, La;->a(LWY;)V

    .line 125
    const-class v0, Landroid/app/Application;

    invoke-static {v0}, Lant;->a(Ljava/lang/Class;)Lant;

    move-result-object v0

    new-instance v1, Lc;

    invoke-direct {v1, p0}, Lc;-><init>(La;)V

    invoke-virtual {p0, v0, v1}, La;->a(Lant;LWZ;)V

    .line 152
    const-class v0, Landroid/app/NotificationManager;

    invoke-static {v0}, Lant;->a(Ljava/lang/Class;)Lant;

    move-result-object v0

    new-instance v1, Ld;

    invoke-direct {v1, p0}, Ld;-><init>(La;)V

    invoke-virtual {p0, v0, v1}, La;->a(Lant;LWZ;)V

    .line 179
    return-void
.end method
