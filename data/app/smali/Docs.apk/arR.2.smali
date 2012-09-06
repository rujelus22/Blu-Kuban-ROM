.class public final LarR;
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
    invoke-static {p0}, LarR;->bI(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic b(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter

    .prologue
    .line 24
    invoke-static {p0}, LarR;->bI(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic c(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter

    .prologue
    .line 24
    invoke-static {p0}, LarR;->bI(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a()V
    .registers 3

    .prologue
    .line 166
    new-instance v0, LarS;

    invoke-direct {v0, p0}, LarS;-><init>(LarR;)V

    invoke-virtual {p0, v0}, LarR;->a(LWY;)V

    .line 171
    const-class v0, LarP;

    const-string v1, "DocFeed"

    invoke-static {v1}, Laqc;->a(Ljava/lang/String;)Laqa;

    move-result-object v1

    invoke-static {v0, v1}, Lant;->a(Ljava/lang/Class;Ljava/lang/annotation/Annotation;)Lant;

    move-result-object v0

    new-instance v1, LarT;

    invoke-direct {v1, p0}, LarT;-><init>(LarR;)V

    invoke-virtual {p0, v0, v1}, LarR;->a(Lant;LWZ;)V

    .line 198
    const-class v0, LarP;

    const-string v1, "AclFeed"

    invoke-static {v1}, Laqc;->a(Ljava/lang/String;)Laqa;

    move-result-object v1

    invoke-static {v0, v1}, Lant;->a(Ljava/lang/Class;Ljava/lang/annotation/Annotation;)Lant;

    move-result-object v0

    new-instance v1, LarU;

    invoke-direct {v1, p0}, LarU;-><init>(LarR;)V

    invoke-virtual {p0, v0, v1}, LarR;->a(Lant;LWZ;)V

    .line 225
    const-class v0, LarP;

    const-string v1, "AccountMetadata"

    invoke-static {v1}, Laqc;->a(Ljava/lang/String;)Laqa;

    move-result-object v1

    invoke-static {v0, v1}, Lant;->a(Ljava/lang/Class;Ljava/lang/annotation/Annotation;)Lant;

    move-result-object v0

    new-instance v1, LarV;

    invoke-direct {v1, p0}, LarV;-><init>(LarR;)V

    invoke-virtual {p0, v0, v1}, LarR;->a(Lant;LWZ;)V

    .line 252
    return-void
.end method
