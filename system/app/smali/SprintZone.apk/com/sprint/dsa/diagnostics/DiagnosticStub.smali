.class public Lcom/sprint/dsa/diagnostics/DiagnosticStub;
.super Ljava/lang/Object;
.source "DiagnosticStub.java"


# instance fields
.field protected infoItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sprint/dsa/data/InfoItem;",
            ">;"
        }
    .end annotation
.end field

.field private mDesc:Ljava/lang/String;

.field public mGroupKey:Ljava/lang/String;

.field private mKey:Ljava/lang/String;

.field public mRank:I

.field private mTitle:Ljava/lang/String;

.field protected strings:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const/4 v0, 0x0

    iput v0, p0, Lcom/sprint/dsa/diagnostics/DiagnosticStub;->mRank:I

    .line 18
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sprint/dsa/diagnostics/DiagnosticStub;->infoItems:Ljava/util/List;

    .line 19
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sprint/dsa/diagnostics/DiagnosticStub;->strings:Ljava/util/Map;

    .line 22
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .parameter "key"
    .parameter "title"

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const/4 v0, 0x0

    iput v0, p0, Lcom/sprint/dsa/diagnostics/DiagnosticStub;->mRank:I

    .line 18
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sprint/dsa/diagnostics/DiagnosticStub;->infoItems:Ljava/util/List;

    .line 19
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sprint/dsa/diagnostics/DiagnosticStub;->strings:Ljava/util/Map;

    .line 25
    iput-object p1, p0, Lcom/sprint/dsa/diagnostics/DiagnosticStub;->mKey:Ljava/lang/String;

    .line 26
    iput-object p2, p0, Lcom/sprint/dsa/diagnostics/DiagnosticStub;->mTitle:Ljava/lang/String;

    .line 27
    return-void
.end method


# virtual methods
.method public addInfoItem(Lcom/sprint/dsa/data/InfoItem;)V
    .registers 3
    .parameter "info"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/sprint/dsa/diagnostics/DiagnosticStub;->infoItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 55
    iget-object v0, p0, Lcom/sprint/dsa/diagnostics/DiagnosticStub;->infoItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 57
    :cond_d
    return-void
.end method

.method public addInfoItems(Ljava/util/List;)V
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/sprint/dsa/data/InfoItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 60
    .local p1, infoItems:Ljava/util/List;,"Ljava/util/List<Lcom/sprint/dsa/data/InfoItem;>;"
    if-eqz p1, :cond_4

    .line 61
    iput-object p1, p0, Lcom/sprint/dsa/diagnostics/DiagnosticStub;->infoItems:Ljava/util/List;

    .line 63
    :cond_4
    return-void
.end method

.method public addString(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .parameter "name"
    .parameter "value"

    .prologue
    .line 87
    iget-object v0, p0, Lcom/sprint/dsa/diagnostics/DiagnosticStub;->strings:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    return-void
.end method

.method public varargs formatString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .registers 5
    .parameter "name"
    .parameter "args"

    .prologue
    .line 104
    const-string v1, ""

    invoke-virtual {p0, p1, v1}, Lcom/sprint/dsa/diagnostics/DiagnosticStub;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 105
    .local v0, value:Ljava/lang/String;
    invoke-static {v0, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getDescription()Ljava/lang/String;
    .registers 2

    .prologue
    .line 38
    iget-object v0, p0, Lcom/sprint/dsa/diagnostics/DiagnosticStub;->mDesc:Ljava/lang/String;

    return-object v0
.end method

.method public getInfoItems()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/sprint/dsa/data/InfoItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 66
    iget-object v0, p0, Lcom/sprint/dsa/diagnostics/DiagnosticStub;->infoItems:Ljava/util/List;

    return-object v0
.end method

.method public getInfoItemsCount()I
    .registers 2

    .prologue
    .line 70
    iget-object v0, p0, Lcom/sprint/dsa/diagnostics/DiagnosticStub;->infoItems:Ljava/util/List;

    if-eqz v0, :cond_b

    .line 71
    iget-object v0, p0, Lcom/sprint/dsa/diagnostics/DiagnosticStub;->infoItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 73
    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public getKey()Ljava/lang/String;
    .registers 2

    .prologue
    .line 30
    iget-object v0, p0, Lcom/sprint/dsa/diagnostics/DiagnosticStub;->mKey:Ljava/lang/String;

    return-object v0
.end method

.method public getString(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .parameter "name"

    .prologue
    .line 92
    const-string v0, ""

    invoke-virtual {p0, p1, v0}, Lcom/sprint/dsa/diagnostics/DiagnosticStub;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .parameter "name"
    .parameter "defaultValue"

    .prologue
    .line 96
    iget-object v0, p0, Lcom/sprint/dsa/diagnostics/DiagnosticStub;->strings:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 97
    iget-object v0, p0, Lcom/sprint/dsa/diagnostics/DiagnosticStub;->strings:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 99
    :goto_10
    return-object v0

    :cond_11
    move-object v0, p2

    goto :goto_10
.end method

.method public getStrings()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 109
    iget-object v0, p0, Lcom/sprint/dsa/diagnostics/DiagnosticStub;->strings:Ljava/util/Map;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .registers 2

    .prologue
    .line 34
    iget-object v0, p0, Lcom/sprint/dsa/diagnostics/DiagnosticStub;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method public setDescription(Ljava/lang/String;)V
    .registers 2
    .parameter "desc"

    .prologue
    .line 50
    iput-object p1, p0, Lcom/sprint/dsa/diagnostics/DiagnosticStub;->mDesc:Ljava/lang/String;

    .line 51
    return-void
.end method

.method public setKey(Ljava/lang/String;)V
    .registers 2
    .parameter "key"

    .prologue
    .line 42
    iput-object p1, p0, Lcom/sprint/dsa/diagnostics/DiagnosticStub;->mKey:Ljava/lang/String;

    .line 43
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .registers 2
    .parameter "title"

    .prologue
    .line 46
    iput-object p1, p0, Lcom/sprint/dsa/diagnostics/DiagnosticStub;->mTitle:Ljava/lang/String;

    .line 47
    return-void
.end method
