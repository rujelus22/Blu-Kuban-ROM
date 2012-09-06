.class public final LabK;
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
    invoke-static {p0}, LabK;->bI(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic b(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter

    .prologue
    .line 24
    invoke-static {p0}, LabK;->bI(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic c(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter

    .prologue
    .line 24
    invoke-static {p0}, LabK;->bI(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic d(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter

    .prologue
    .line 24
    invoke-static {p0}, LabK;->bI(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a()V
    .registers 3

    .prologue
    .line 104
    const-class v0, Lcom/google/android/apps/docs/widget/WidgetConfigureActivity;

    new-instance v1, LabL;

    invoke-direct {v1, p0}, LabL;-><init>(LabK;)V

    invoke-virtual {p0, v0, v1}, LabK;->a(Ljava/lang/Class;Lany;)V

    .line 112
    new-instance v0, LabM;

    invoke-direct {v0, p0}, LabM;-><init>(LabK;)V

    invoke-virtual {p0, v0}, LabK;->a(LWY;)V

    .line 117
    const-class v0, LabQ;

    invoke-static {v0}, Lant;->a(Ljava/lang/Class;)Lant;

    move-result-object v0

    new-instance v1, LabN;

    invoke-direct {v1, p0}, LabN;-><init>(LabK;)V

    invoke-virtual {p0, v0, v1}, LabK;->a(Lant;LWZ;)V

    .line 144
    return-void
.end method
