.class public final Laqn;
.super Ljava/lang/Object;
.source "Elements.java"


# static fields
.field private static final a:Laqe;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Laqe",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 65
    new-instance v0, Laqo;

    invoke-direct {v0}, Laqo;-><init>()V

    sput-object v0, Laqn;->a:Laqe;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 126
    return-void
.end method

.method public static a(LanO;Ljava/lang/Iterable;)Ljava/util/List;
    .registers 5
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LanO;",
            "Ljava/lang/Iterable",
            "<+",
            "Lanz;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Laqm;",
            ">;"
        }
    .end annotation

    .prologue
    .line 101
    new-instance v1, Laqp;

    const/4 v0, 0x0

    invoke-direct {v1, p0, v0}, Laqp;-><init>(LanO;Laqo;)V

    .line 102
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lanz;

    .line 103
    invoke-virtual {v1, v0}, Laqp;->a(Lanz;)V

    goto :goto_a

    .line 105
    :cond_1a
    invoke-static {v1}, Laqp;->a(Laqp;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/Iterable;)Ljava/util/List;
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lanz;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Laqm;",
            ">;"
        }
    .end annotation

    .prologue
    .line 94
    sget-object v0, LanO;->b:LanO;

    invoke-static {v0, p0}, Laqn;->a(LanO;Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
