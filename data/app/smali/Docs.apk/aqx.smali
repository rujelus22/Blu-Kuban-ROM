.class Laqx;
.super Laqv;
.source "InjectionPoint.java"


# instance fields
.field final a:Ljava/lang/reflect/Method;

.field c:Z


# direct methods
.method constructor <init>(LanP;Ljava/lang/reflect/Method;Ljava/lang/annotation/Annotation;)V
    .registers 4
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LanP",
            "<*>;",
            "Ljava/lang/reflect/Method;",
            "Ljava/lang/annotation/Annotation;",
            ")V"
        }
    .end annotation

    .prologue
    .line 463
    invoke-direct {p0, p1, p3}, Laqv;-><init>(LanP;Ljava/lang/annotation/Annotation;)V

    .line 464
    iput-object p2, p0, Laqx;->a:Ljava/lang/reflect/Method;

    .line 465
    return-void
.end method


# virtual methods
.method a()Laqt;
    .registers 5

    .prologue
    .line 469
    new-instance v0, Laqt;

    iget-object v1, p0, Laqx;->a:LanP;

    iget-object v2, p0, Laqx;->a:Ljava/lang/reflect/Method;

    iget-boolean v3, p0, Laqx;->a:Z

    invoke-direct {v0, v1, v2, v3}, Laqt;-><init>(LanP;Ljava/lang/reflect/Method;Z)V

    return-object v0
.end method

.method public a()Z
    .registers 2

    .prologue
    .line 473
    iget-object v0, p0, Laqx;->a:Ljava/lang/reflect/Method;

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isFinal(I)Z

    move-result v0

    return v0
.end method
