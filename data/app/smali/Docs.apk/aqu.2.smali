.class Laqu;
.super Laqv;
.source "InjectionPoint.java"


# instance fields
.field final a:Ljava/lang/reflect/Field;


# direct methods
.method constructor <init>(LanP;Ljava/lang/reflect/Field;Ljava/lang/annotation/Annotation;)V
    .registers 4
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LanP",
            "<*>;",
            "Ljava/lang/reflect/Field;",
            "Ljava/lang/annotation/Annotation;",
            ")V"
        }
    .end annotation

    .prologue
    .line 443
    invoke-direct {p0, p1, p3}, Laqv;-><init>(LanP;Ljava/lang/annotation/Annotation;)V

    .line 444
    iput-object p2, p0, Laqu;->a:Ljava/lang/reflect/Field;

    .line 445
    return-void
.end method


# virtual methods
.method a()Laqt;
    .registers 5

    .prologue
    .line 449
    new-instance v0, Laqt;

    iget-object v1, p0, Laqu;->a:LanP;

    iget-object v2, p0, Laqu;->a:Ljava/lang/reflect/Field;

    iget-boolean v3, p0, Laqu;->a:Z

    invoke-direct {v0, v1, v2, v3}, Laqt;-><init>(LanP;Ljava/lang/reflect/Field;Z)V

    return-object v0
.end method
