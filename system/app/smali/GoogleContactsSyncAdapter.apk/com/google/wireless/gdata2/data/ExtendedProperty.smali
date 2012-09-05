.class public Lcom/google/wireless/gdata2/data/ExtendedProperty;
.super Ljava/lang/Object;
.source "ExtendedProperty.java"


# instance fields
.field private name:Ljava/lang/String;

.field private value:Ljava/lang/String;

.field private xmlBlob:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .parameter "name"
    .parameter "value"
    .parameter "xmlBlob"

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/google/wireless/gdata2/data/ExtendedProperty;->name:Ljava/lang/String;

    .line 23
    iput-object p2, p0, Lcom/google/wireless/gdata2/data/ExtendedProperty;->value:Ljava/lang/String;

    .line 24
    iput-object p3, p0, Lcom/google/wireless/gdata2/data/ExtendedProperty;->xmlBlob:Ljava/lang/String;

    .line 25
    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 51
    iget-object v0, p0, Lcom/google/wireless/gdata2/data/ExtendedProperty;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .registers 2

    .prologue
    .line 67
    iget-object v0, p0, Lcom/google/wireless/gdata2/data/ExtendedProperty;->value:Ljava/lang/String;

    return-object v0
.end method

.method public getXmlBlob()Ljava/lang/String;
    .registers 2

    .prologue
    .line 34
    iget-object v0, p0, Lcom/google/wireless/gdata2/data/ExtendedProperty;->xmlBlob:Ljava/lang/String;

    return-object v0
.end method

.method public setName(Ljava/lang/String;)V
    .registers 2
    .parameter "name"

    .prologue
    .line 58
    iput-object p1, p0, Lcom/google/wireless/gdata2/data/ExtendedProperty;->name:Ljava/lang/String;

    .line 59
    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .registers 2
    .parameter "value"

    .prologue
    .line 76
    iput-object p1, p0, Lcom/google/wireless/gdata2/data/ExtendedProperty;->value:Ljava/lang/String;

    .line 77
    return-void
.end method

.method public setXmlBlob(Ljava/lang/String;)V
    .registers 2
    .parameter "xmlBlob"

    .prologue
    .line 43
    iput-object p1, p0, Lcom/google/wireless/gdata2/data/ExtendedProperty;->xmlBlob:Ljava/lang/String;

    .line 44
    return-void
.end method

.method public toString(Ljava/lang/StringBuffer;)V
    .registers 4
    .parameter "sb"

    .prologue
    .line 80
    const-string v0, "ExtendedProperty"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 81
    iget-object v0, p0, Lcom/google/wireless/gdata2/data/ExtendedProperty;->name:Ljava/lang/String;

    if-eqz v0, :cond_14

    const-string v0, " name:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lcom/google/wireless/gdata2/data/ExtendedProperty;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 82
    :cond_14
    iget-object v0, p0, Lcom/google/wireless/gdata2/data/ExtendedProperty;->value:Ljava/lang/String;

    if-eqz v0, :cond_23

    const-string v0, " value:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lcom/google/wireless/gdata2/data/ExtendedProperty;->value:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 83
    :cond_23
    iget-object v0, p0, Lcom/google/wireless/gdata2/data/ExtendedProperty;->xmlBlob:Ljava/lang/String;

    if-eqz v0, :cond_32

    const-string v0, " xmlBlob:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lcom/google/wireless/gdata2/data/ExtendedProperty;->xmlBlob:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 84
    :cond_32
    return-void
.end method

.method public validate()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/wireless/gdata2/parser/ParseException;
        }
    .end annotation

    .prologue
    .line 87
    iget-object v0, p0, Lcom/google/wireless/gdata2/data/ExtendedProperty;->name:Ljava/lang/String;

    if-nez v0, :cond_c

    .line 88
    new-instance v0, Lcom/google/wireless/gdata2/parser/ParseException;

    const-string v1, "name must not be null"

    invoke-direct {v0, v1}, Lcom/google/wireless/gdata2/parser/ParseException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 91
    :cond_c
    iget-object v0, p0, Lcom/google/wireless/gdata2/data/ExtendedProperty;->value:Ljava/lang/String;

    if-nez v0, :cond_14

    iget-object v0, p0, Lcom/google/wireless/gdata2/data/ExtendedProperty;->xmlBlob:Ljava/lang/String;

    if-eqz v0, :cond_1c

    :cond_14
    iget-object v0, p0, Lcom/google/wireless/gdata2/data/ExtendedProperty;->value:Ljava/lang/String;

    if-eqz v0, :cond_24

    iget-object v0, p0, Lcom/google/wireless/gdata2/data/ExtendedProperty;->xmlBlob:Ljava/lang/String;

    if-eqz v0, :cond_24

    .line 92
    :cond_1c
    new-instance v0, Lcom/google/wireless/gdata2/parser/ParseException;

    const-string v1, "exactly one of value and xmlBlob must be present"

    invoke-direct {v0, v1}, Lcom/google/wireless/gdata2/parser/ParseException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 94
    :cond_24
    return-void
.end method
