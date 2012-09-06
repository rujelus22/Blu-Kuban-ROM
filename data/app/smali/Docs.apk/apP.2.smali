.class interface abstract LapP;
.super Ljava/lang/Object;
.source "State.java"


# static fields
.field public static final a:LapP;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 43
    new-instance v0, LapQ;

    invoke-direct {v0}, LapQ;-><init>()V

    sput-object v0, LapP;->a:LapP;

    return-void
.end method


# virtual methods
.method public abstract a(Ljava/lang/Class;)LanG;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/annotation/Annotation;",
            ">;)",
            "LanG;"
        }
    .end annotation
.end method

.method public abstract a(Lant;)Laoc;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lant",
            "<TT;>;)",
            "Laoc",
            "<TT;>;"
        }
    .end annotation
.end method

.method public abstract a()LapP;
.end method

.method public abstract a(Ljava/lang/String;LanP;Laoy;Ljava/lang/Object;)LaqT;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "LanP",
            "<*>;",
            "Laoy;",
            "Ljava/lang/Object;",
            ")",
            "LaqT;"
        }
    .end annotation
.end method

.method public abstract a()Ljava/lang/Object;
.end method

.method public abstract a()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Lant",
            "<*>;",
            "Lang",
            "<*>;>;"
        }
    .end annotation
.end method

.method public abstract a(Lant;)Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lant",
            "<*>;)",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end method

.method public abstract a(Lant;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lant",
            "<*>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation
.end method

.method public abstract a(Lant;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lant",
            "<*>;)Z"
        }
    .end annotation
.end method
