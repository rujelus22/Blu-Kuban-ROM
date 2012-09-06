.class public final Lapq;
.super Ljava/lang/Object;
.source "PrivateElementsImpl.java"

# interfaces
.implements LaqG;


# instance fields
.field private a:LaiC;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LaiC",
            "<",
            "Lant",
            "<*>;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final a:Ljava/lang/Object;

.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Laqm;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "LaoH",
            "<*>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .registers 3
    .parameter

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    invoke-static {}, Lajk;->a()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lapq;->a:Ljava/util/List;

    .line 54
    invoke-static {}, Lajk;->a()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lapq;->b:Ljava/util/List;

    .line 64
    const-string v0, "source"

    invoke-static {p1, v0}, LafQ;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lapq;->a:Ljava/lang/Object;

    .line 65
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 68
    iget-object v0, p0, Lapq;->a:Ljava/lang/Object;

    return-object v0
.end method

.method public a()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Laqm;",
            ">;"
        }
    .end annotation

    .prologue
    .line 107
    iget-object v0, p0, Lapq;->a:Ljava/util/List;

    return-object v0
.end method

.method public a()Ljava/util/Set;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Lant",
            "<*>;>;"
        }
    .end annotation

    .prologue
    .line 90
    iget-object v0, p0, Lapq;->a:LaiC;

    if-nez v0, :cond_2f

    .line 91
    invoke-static {}, Lakz;->a()Ljava/util/LinkedHashMap;

    move-result-object v1

    .line 92
    iget-object v0, p0, Lapq;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_26

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LaoH;

    .line 93
    invoke-virtual {v0}, LaoH;->a()Lant;

    move-result-object v3

    invoke-virtual {v0}, LaoH;->a()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_e

    .line 95
    :cond_26
    invoke-static {v1}, LaiC;->a(Ljava/util/Map;)LaiC;

    move-result-object v0

    iput-object v0, p0, Lapq;->a:LaiC;

    .line 96
    const/4 v0, 0x0

    iput-object v0, p0, Lapq;->b:Ljava/util/List;

    .line 99
    :cond_2f
    iget-object v0, p0, Lapq;->a:LaiC;

    invoke-virtual {v0}, LaiC;->b()LaiE;

    move-result-object v0

    return-object v0
.end method

.method public a(LaoH;)V
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LaoH",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 111
    iget-object v0, p0, Lapq;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 112
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .prologue
    .line 135
    const-class v0, LaqG;

    invoke-static {v0}, LafL;->a(Ljava/lang/Class;)LafN;

    move-result-object v0

    const-string v1, "exposedKeys"

    invoke-virtual {p0}, Lapq;->a()Ljava/util/Set;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, LafN;->a(Ljava/lang/String;Ljava/lang/Object;)LafN;

    move-result-object v0

    const-string v1, "source"

    invoke-virtual {p0}, Lapq;->a()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, LafN;->a(Ljava/lang/String;Ljava/lang/Object;)LafN;

    move-result-object v0

    invoke-virtual {v0}, LafN;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
