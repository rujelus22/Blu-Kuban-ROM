.class public Lorg/columba/ristretto/message/MimeType;
.super Ljava/lang/Object;
.source "MimeType.java"


# instance fields
.field private subtype:Ljava/lang/String;

.field private type:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    .line 64
    const-string v0, "text"

    const-string v1, "plain"

    invoke-direct {p0, v0, v1}, Lorg/columba/ristretto/message/MimeType;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .parameter "type"
    .parameter "subtype"

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object p1, p0, Lorg/columba/ristretto/message/MimeType;->type:Ljava/lang/String;

    .line 57
    iput-object p2, p0, Lorg/columba/ristretto/message/MimeType;->subtype:Ljava/lang/String;

    .line 58
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6
    .parameter "arg0"

    .prologue
    .line 99
    const/4 v1, 0x1

    .local v1, result:Z
    move-object v0, p1

    .line 100
    check-cast v0, Lorg/columba/ristretto/message/MimeType;

    .line 101
    .local v0, arg:Lorg/columba/ristretto/message/MimeType;
    iget-object v2, p0, Lorg/columba/ristretto/message/MimeType;->type:Ljava/lang/String;

    if-eqz v2, :cond_11

    .line 102
    iget-object v2, p0, Lorg/columba/ristretto/message/MimeType;->type:Ljava/lang/String;

    iget-object v3, v0, Lorg/columba/ristretto/message/MimeType;->type:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    and-int/2addr v1, v2

    .line 104
    :cond_11
    iget-object v2, p0, Lorg/columba/ristretto/message/MimeType;->subtype:Ljava/lang/String;

    if-eqz v2, :cond_1e

    .line 105
    iget-object v2, p0, Lorg/columba/ristretto/message/MimeType;->subtype:Ljava/lang/String;

    iget-object v3, v0, Lorg/columba/ristretto/message/MimeType;->subtype:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    and-int/2addr v1, v2

    .line 107
    :cond_1e
    return v1
.end method

.method public getSubtype()Ljava/lang/String;
    .registers 2

    .prologue
    .line 71
    iget-object v0, p0, Lorg/columba/ristretto/message/MimeType;->subtype:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .registers 2

    .prologue
    .line 78
    iget-object v0, p0, Lorg/columba/ristretto/message/MimeType;->type:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .registers 2

    .prologue
    .line 121
    invoke-virtual {p0}, Lorg/columba/ristretto/message/MimeType;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public setSubtype(Ljava/lang/String;)V
    .registers 2
    .parameter "string"

    .prologue
    .line 85
    iput-object p1, p0, Lorg/columba/ristretto/message/MimeType;->subtype:Ljava/lang/String;

    .line 86
    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .registers 2
    .parameter "string"

    .prologue
    .line 92
    iput-object p1, p0, Lorg/columba/ristretto/message/MimeType;->type:Ljava/lang/String;

    .line 93
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 114
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v1, p0, Lorg/columba/ristretto/message/MimeType;->type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const/16 v1, 0x2f

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lorg/columba/ristretto/message/MimeType;->subtype:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
