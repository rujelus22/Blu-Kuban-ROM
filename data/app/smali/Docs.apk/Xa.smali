.class public LXa;
.super Ljava/lang/Object;
.source "Bindings.java"


# static fields
.field private static final a:Laqh;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Laqh",
            "<",
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/annotation/Annotation;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final b:Laqh;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Laqh",
            "<",
            "LanG;",
            ">;"
        }
    .end annotation
.end field

.field private static final c:Laqh;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Laqh",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 19
    new-instance v0, LXb;

    invoke-direct {v0}, LXb;-><init>()V

    sput-object v0, LXa;->a:Laqh;

    .line 33
    new-instance v0, LXc;

    invoke-direct {v0}, LXc;-><init>()V

    sput-object v0, LXa;->b:Laqh;

    .line 52
    new-instance v0, LXd;

    invoke-direct {v0}, LXd;-><init>()V

    sput-object v0, LXa;->c:Laqh;

    return-void
.end method

.method public static a(Lang;)LanG;
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lang",
            "<*>;)",
            "LanG;"
        }
    .end annotation

    .prologue
    .line 74
    sget-object v0, LXa;->b:Laqh;

    invoke-interface {p0, v0}, Lang;->a(Laqd;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LanG;

    return-object v0
.end method

.method public static a(Lang;)Ljava/lang/Class;
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lang",
            "<*>;)",
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/annotation/Annotation;",
            ">;"
        }
    .end annotation

    .prologue
    .line 70
    sget-object v0, LXa;->a:Laqh;

    invoke-interface {p0, v0}, Lang;->a(Laqd;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    return-object v0
.end method
