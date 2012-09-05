.class final Lorg/codehaus/jackson/impl/RootWContext;
.super Lorg/codehaus/jackson/impl/JsonWriteContext;
.source "JsonWriteContext.java"


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    .line 119
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lorg/codehaus/jackson/impl/JsonWriteContext;-><init>(ILorg/codehaus/jackson/impl/JsonWriteContext;)V

    .line 120
    return-void
.end method


# virtual methods
.method protected appendDesc(Ljava/lang/StringBuilder;)V
    .registers 3
    .parameter "sb"

    .prologue
    .line 138
    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    return-void
.end method

.method public writeFieldName(Ljava/lang/String;)I
    .registers 3
    .parameter "name"

    .prologue
    .line 126
    const/4 v0, 0x4

    return v0
.end method

.method public writeValue()I
    .registers 2

    .prologue
    .line 132
    iget v0, p0, Lorg/codehaus/jackson/impl/RootWContext;->_index:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/codehaus/jackson/impl/RootWContext;->_index:I

    .line 133
    iget v0, p0, Lorg/codehaus/jackson/impl/RootWContext;->_index:I

    if-nez v0, :cond_c

    const/4 v0, 0x0

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x3

    goto :goto_b
.end method
