.class public final Ljq;
.super Ljava/lang/Object;
.source "a"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable",
        "<",
        "Ljp;",
        ">;"
    }
.end annotation


# instance fields
.field a:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljx;",
            "Ljp;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/reflect/Method;)Ljp;
    .registers 4
    .parameter

    .prologue
    .line 64
    iget-object v0, p0, Ljq;->a:Ljava/util/LinkedHashMap;

    if-nez v0, :cond_6

    .line 65
    const/4 v0, 0x0

    .line 67
    :goto_5
    return-object v0

    :cond_6
    iget-object v0, p0, Ljq;->a:Ljava/util/LinkedHashMap;

    new-instance v1, Ljx;

    invoke-direct {v1, p1}, Ljx;-><init>(Ljava/lang/reflect/Method;)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljp;

    move-object v0, p0

    goto :goto_5
.end method

.method public final a(Ljp;)V
    .registers 5
    .parameter

    .prologue
    .line 23
    iget-object v0, p0, Ljq;->a:Ljava/util/LinkedHashMap;

    if-nez v0, :cond_b

    .line 24
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Ljq;->a:Ljava/util/LinkedHashMap;

    .line 26
    :cond_b
    iget-object v0, p0, Ljq;->a:Ljava/util/LinkedHashMap;

    new-instance v1, Ljx;

    iget-object v2, p1, Ljp;->a:Ljava/lang/reflect/Method;

    invoke-direct {v1, v2}, Ljx;-><init>(Ljava/lang/reflect/Method;)V

    invoke-virtual {v0, v1, p1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    return-void
.end method

.method public final iterator()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Ljp;",
            ">;"
        }
    .end annotation

    .prologue
    .line 78
    iget-object v0, p0, Ljq;->a:Ljava/util/LinkedHashMap;

    if-eqz v0, :cond_f

    .line 79
    iget-object v0, p0, Ljq;->a:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 82
    :goto_e
    return-object v0

    .line 81
    :cond_f
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 82
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    goto :goto_e
.end method
