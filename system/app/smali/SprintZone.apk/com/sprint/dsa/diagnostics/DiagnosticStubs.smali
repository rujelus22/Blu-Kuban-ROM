.class public Lcom/sprint/dsa/diagnostics/DiagnosticStubs;
.super Ljava/lang/Object;
.source "DiagnosticStubs.java"


# instance fields
.field public map:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/sprint/dsa/diagnostics/DiagnosticStub;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/sprint/dsa/diagnostics/DiagnosticStubs;->map:Ljava/util/Map;

    .line 8
    return-void
.end method


# virtual methods
.method public add(Lcom/sprint/dsa/diagnostics/DiagnosticStub;)V
    .registers 4
    .parameter "stub"

    .prologue
    .line 13
    iget-object v0, p0, Lcom/sprint/dsa/diagnostics/DiagnosticStubs;->map:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/sprint/dsa/diagnostics/DiagnosticStub;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    return-void
.end method

.method public getCount()I
    .registers 2

    .prologue
    .line 21
    iget-object v0, p0, Lcom/sprint/dsa/diagnostics/DiagnosticStubs;->map:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method

.method public list()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/sprint/dsa/diagnostics/DiagnosticStub;",
            ">;"
        }
    .end annotation

    .prologue
    .line 17
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/sprint/dsa/diagnostics/DiagnosticStubs;->map:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method
