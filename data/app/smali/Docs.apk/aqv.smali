.class abstract Laqv;
.super Ljava/lang/Object;
.source "InjectionPoint.java"


# instance fields
.field final a:LanP;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LanP",
            "<*>;"
        }
    .end annotation
.end field

.field a:Laqv;

.field final a:Z

.field b:Laqv;

.field final b:Z


# direct methods
.method constructor <init>(LanP;Ljava/lang/annotation/Annotation;)V
    .registers 6
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LanP",
            "<*>;",
            "Ljava/lang/annotation/Annotation;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 423
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 424
    iput-object p1, p0, Laqv;->a:LanP;

    .line 426
    invoke-interface {p2}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    move-result-object v0

    const-class v1, LasR;

    if-ne v0, v1, :cond_14

    .line 427
    iput-boolean v2, p0, Laqv;->a:Z

    .line 428
    const/4 v0, 0x1

    iput-boolean v0, p0, Laqv;->b:Z

    .line 434
    :goto_13
    return-void

    .line 432
    :cond_14
    iput-boolean v2, p0, Laqv;->b:Z

    .line 433
    check-cast p2, Lanr;

    invoke-interface {p2}, Lanr;->a()Z

    move-result v0

    iput-boolean v0, p0, Laqv;->a:Z

    goto :goto_13
.end method


# virtual methods
.method abstract a()Laqt;
.end method
