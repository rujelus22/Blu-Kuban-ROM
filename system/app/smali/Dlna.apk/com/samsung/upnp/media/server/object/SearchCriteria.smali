.class public Lcom/samsung/upnp/media/server/object/SearchCriteria;
.super Ljava/lang/Object;
.source "SearchCriteria.java"


# instance fields
.field private logic:Ljava/lang/String;

.field private operation:Ljava/lang/String;

.field private property:Ljava/lang/String;

.field private result:Z

.field private value:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 62
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 64
    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/samsung/upnp/media/server/object/SearchCriteria;->setProperty(Ljava/lang/String;)V

    .line 65
    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/samsung/upnp/media/server/object/SearchCriteria;->setOperation(Ljava/lang/String;)V

    .line 66
    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/samsung/upnp/media/server/object/SearchCriteria;->setValue(Ljava/lang/String;)V

    .line 67
    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/samsung/upnp/media/server/object/SearchCriteria;->setLogic(Ljava/lang/String;)V

    .line 68
    return-void
.end method

.method public constructor <init>(Lcom/samsung/upnp/media/server/object/SearchCriteria;)V
    .registers 3
    .parameter "searchCri"

    .prologue
    .line 70
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 72
    invoke-virtual {p1}, Lcom/samsung/upnp/media/server/object/SearchCriteria;->getProperty()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/upnp/media/server/object/SearchCriteria;->setProperty(Ljava/lang/String;)V

    .line 73
    invoke-virtual {p1}, Lcom/samsung/upnp/media/server/object/SearchCriteria;->getOperation()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/upnp/media/server/object/SearchCriteria;->setOperation(Ljava/lang/String;)V

    .line 74
    invoke-virtual {p1}, Lcom/samsung/upnp/media/server/object/SearchCriteria;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/upnp/media/server/object/SearchCriteria;->setValue(Ljava/lang/String;)V

    .line 75
    invoke-virtual {p1}, Lcom/samsung/upnp/media/server/object/SearchCriteria;->getLogic()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/upnp/media/server/object/SearchCriteria;->setLogic(Ljava/lang/String;)V

    .line 76
    invoke-virtual {p1}, Lcom/samsung/upnp/media/server/object/SearchCriteria;->getResult()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/samsung/upnp/media/server/object/SearchCriteria;->setResult(Z)V

    .line 77
    return-void
.end method


# virtual methods
.method public getLogic()Ljava/lang/String;
    .registers 2

    .prologue
    .line 200
    iget-object v0, p0, Lcom/samsung/upnp/media/server/object/SearchCriteria;->logic:Ljava/lang/String;

    return-object v0
.end method

.method public getOperation()Ljava/lang/String;
    .registers 2

    .prologue
    .line 108
    iget-object v0, p0, Lcom/samsung/upnp/media/server/object/SearchCriteria;->operation:Ljava/lang/String;

    return-object v0
.end method

.method public getProperty()Ljava/lang/String;
    .registers 2

    .prologue
    .line 92
    iget-object v0, p0, Lcom/samsung/upnp/media/server/object/SearchCriteria;->property:Ljava/lang/String;

    return-object v0
.end method

.method public getResult()Z
    .registers 2

    .prologue
    .line 226
    iget-boolean v0, p0, Lcom/samsung/upnp/media/server/object/SearchCriteria;->result:Z

    return v0
.end method

.method public getValue()Ljava/lang/String;
    .registers 2

    .prologue
    .line 174
    iget-object v0, p0, Lcom/samsung/upnp/media/server/object/SearchCriteria;->value:Ljava/lang/String;

    return-object v0
.end method

.method public isContains()Z
    .registers 3

    .prologue
    .line 143
    iget-object v0, p0, Lcom/samsung/upnp/media/server/object/SearchCriteria;->operation:Ljava/lang/String;

    const-string v1, "contains"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public isDerivedFrom()Z
    .registers 3

    .prologue
    .line 153
    iget-object v0, p0, Lcom/samsung/upnp/media/server/object/SearchCriteria;->operation:Ljava/lang/String;

    const-string v1, "derivedfrom"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public isDoesNotContain()Z
    .registers 3

    .prologue
    .line 148
    iget-object v0, p0, Lcom/samsung/upnp/media/server/object/SearchCriteria;->operation:Ljava/lang/String;

    const-string v1, "doesNotContain"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public isEQ()Z
    .registers 3

    .prologue
    .line 113
    iget-object v0, p0, Lcom/samsung/upnp/media/server/object/SearchCriteria;->operation:Ljava/lang/String;

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public isExists()Z
    .registers 3

    .prologue
    .line 158
    iget-object v0, p0, Lcom/samsung/upnp/media/server/object/SearchCriteria;->operation:Ljava/lang/String;

    const-string v1, "exists"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public isFalseValue()Z
    .registers 3

    .prologue
    .line 184
    iget-object v0, p0, Lcom/samsung/upnp/media/server/object/SearchCriteria;->value:Ljava/lang/String;

    const-string v1, "false"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public isGE()Z
    .registers 3

    .prologue
    .line 138
    iget-object v0, p0, Lcom/samsung/upnp/media/server/object/SearchCriteria;->operation:Ljava/lang/String;

    const-string v1, ">="

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public isGT()Z
    .registers 3

    .prologue
    .line 133
    iget-object v0, p0, Lcom/samsung/upnp/media/server/object/SearchCriteria;->operation:Ljava/lang/String;

    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public isLE()Z
    .registers 3

    .prologue
    .line 128
    iget-object v0, p0, Lcom/samsung/upnp/media/server/object/SearchCriteria;->operation:Ljava/lang/String;

    const-string v1, "<="

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public isLT()Z
    .registers 3

    .prologue
    .line 123
    iget-object v0, p0, Lcom/samsung/upnp/media/server/object/SearchCriteria;->operation:Ljava/lang/String;

    const-string v1, "<"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public isLogicalAND()Z
    .registers 3

    .prologue
    .line 205
    iget-object v0, p0, Lcom/samsung/upnp/media/server/object/SearchCriteria;->logic:Ljava/lang/String;

    const-string v1, "and"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public isTrueValue()Z
    .registers 3

    .prologue
    .line 179
    iget-object v0, p0, Lcom/samsung/upnp/media/server/object/SearchCriteria;->value:Ljava/lang/String;

    const-string v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public setLogic(Ljava/lang/String;)V
    .registers 2
    .parameter "val"

    .prologue
    .line 195
    iput-object p1, p0, Lcom/samsung/upnp/media/server/object/SearchCriteria;->logic:Ljava/lang/String;

    .line 196
    return-void
.end method

.method public setOperation(Ljava/lang/String;)V
    .registers 2
    .parameter "val"

    .prologue
    .line 103
    iput-object p1, p0, Lcom/samsung/upnp/media/server/object/SearchCriteria;->operation:Ljava/lang/String;

    .line 104
    return-void
.end method

.method public setProperty(Ljava/lang/String;)V
    .registers 2
    .parameter "val"

    .prologue
    .line 87
    iput-object p1, p0, Lcom/samsung/upnp/media/server/object/SearchCriteria;->property:Ljava/lang/String;

    .line 88
    return-void
.end method

.method public setResult(Z)V
    .registers 2
    .parameter "value"

    .prologue
    .line 221
    iput-boolean p1, p0, Lcom/samsung/upnp/media/server/object/SearchCriteria;->result:Z

    .line 222
    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .registers 2
    .parameter "val"

    .prologue
    .line 169
    iput-object p1, p0, Lcom/samsung/upnp/media/server/object/SearchCriteria;->value:Ljava/lang/String;

    .line 170
    return-void
.end method
