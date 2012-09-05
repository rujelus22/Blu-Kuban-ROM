.class public Lcom/sprint/dsa/diagnostics/DiagnosticGroups;
.super Ljava/lang/Object;
.source "DiagnosticGroups.java"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable",
        "<",
        "Lcom/sprint/dsa/diagnostics/DiagnosticGroup;",
        ">;"
    }
.end annotation


# instance fields
.field private mList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sprint/dsa/diagnostics/DiagnosticGroup;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sprint/dsa/diagnostics/DiagnosticGroups;->mList:Ljava/util/List;

    .line 14
    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/sprint/dsa/diagnostics/DiagnosticGroup;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 16
    .local p1, list:Ljava/util/List;,"Ljava/util/List<Lcom/sprint/dsa/diagnostics/DiagnosticGroup;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sprint/dsa/diagnostics/DiagnosticGroups;->mList:Ljava/util/List;

    .line 17
    iput-object p1, p0, Lcom/sprint/dsa/diagnostics/DiagnosticGroups;->mList:Ljava/util/List;

    .line 18
    return-void
.end method

.method public constructor <init>([Lcom/sprint/dsa/diagnostics/DiagnosticGroup;)V
    .registers 5
    .parameter "groups"

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/sprint/dsa/diagnostics/DiagnosticGroups;->mList:Ljava/util/List;

    .line 21
    const/4 v0, 0x0

    .local v0, i:I
    :goto_b
    array-length v1, p1

    if-lt v0, v1, :cond_f

    .line 24
    return-void

    .line 22
    :cond_f
    iget-object v1, p0, Lcom/sprint/dsa/diagnostics/DiagnosticGroups;->mList:Ljava/util/List;

    aget-object v2, p1, v0

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 21
    add-int/lit8 v0, v0, 0x1

    goto :goto_b
.end method


# virtual methods
.method public add(Lcom/sprint/dsa/diagnostics/DiagnosticGroup;)V
    .registers 3
    .parameter "group"

    .prologue
    .line 28
    iget-object v0, p0, Lcom/sprint/dsa/diagnostics/DiagnosticGroups;->mList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 29
    return-void
.end method

.method public get(I)Lcom/sprint/dsa/diagnostics/DiagnosticGroup;
    .registers 3
    .parameter "index"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/sprint/dsa/diagnostics/DiagnosticGroups;->mList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sprint/dsa/diagnostics/DiagnosticGroup;

    return-object v0
.end method

.method public get(Ljava/lang/String;)Lcom/sprint/dsa/diagnostics/DiagnosticGroup;
    .registers 5
    .parameter "key"

    .prologue
    .line 45
    iget-object v1, p0, Lcom/sprint/dsa/diagnostics/DiagnosticGroups;->mList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_e

    .line 51
    const/4 v0, 0x0

    :goto_d
    return-object v0

    .line 45
    :cond_e
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sprint/dsa/diagnostics/DiagnosticGroup;

    .line 46
    .local v0, group:Lcom/sprint/dsa/diagnostics/DiagnosticGroup;
    invoke-virtual {v0}, Lcom/sprint/dsa/diagnostics/DiagnosticGroup;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    goto :goto_d
.end method

.method public getCount()I
    .registers 2

    .prologue
    .line 37
    iget-object v0, p0, Lcom/sprint/dsa/diagnostics/DiagnosticGroups;->mList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Lcom/sprint/dsa/diagnostics/DiagnosticGroup;",
            ">;"
        }
    .end annotation

    .prologue
    .line 56
    iget-object v0, p0, Lcom/sprint/dsa/diagnostics/DiagnosticGroups;->mList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public list()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/sprint/dsa/diagnostics/DiagnosticGroup;",
            ">;"
        }
    .end annotation

    .prologue
    .line 33
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/sprint/dsa/diagnostics/DiagnosticGroups;->mList:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method
