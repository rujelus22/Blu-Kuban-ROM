.class public abstract Lorg/codehaus/jackson/JsonStreamContext;
.super Ljava/lang/Object;
.source "JsonStreamContext.java"


# instance fields
.field protected _index:I

.field protected _type:I


# direct methods
.method public constructor <init>(I)V
    .registers 3
    .parameter "type"

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput p1, p0, Lorg/codehaus/jackson/JsonStreamContext;->_type:I

    .line 56
    const/4 v0, -0x1

    iput v0, p0, Lorg/codehaus/jackson/JsonStreamContext;->_index:I

    .line 57
    return-void
.end method


# virtual methods
.method public final getCurrentIndex()I
    .registers 2

    .prologue
    .line 108
    iget v0, p0, Lorg/codehaus/jackson/JsonStreamContext;->_index:I

    if-gez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return v0

    :cond_6
    iget v0, p0, Lorg/codehaus/jackson/JsonStreamContext;->_index:I

    goto :goto_5
.end method

.method public final getEntryCount()I
    .registers 2

    .prologue
    .line 100
    iget v0, p0, Lorg/codehaus/jackson/JsonStreamContext;->_index:I

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public final getTypeDesc()Ljava/lang/String;
    .registers 2

    .prologue
    .line 87
    iget v0, p0, Lorg/codehaus/jackson/JsonStreamContext;->_type:I

    packed-switch v0, :pswitch_data_12

    .line 92
    const-string v0, "?"

    :goto_7
    return-object v0

    .line 88
    :pswitch_8
    const-string v0, "ROOT"

    goto :goto_7

    .line 89
    :pswitch_b
    const-string v0, "ARRAY"

    goto :goto_7

    .line 90
    :pswitch_e
    const-string v0, "OBJECT"

    goto :goto_7

    .line 87
    nop

    :pswitch_data_12
    .packed-switch 0x0
        :pswitch_8
        :pswitch_b
        :pswitch_e
    .end packed-switch
.end method

.method public final inArray()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 71
    iget v1, p0, Lorg/codehaus/jackson/JsonStreamContext;->_type:I

    if-ne v1, v0, :cond_6

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public final inObject()Z
    .registers 3

    .prologue
    .line 84
    iget v0, p0, Lorg/codehaus/jackson/JsonStreamContext;->_type:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public final inRoot()Z
    .registers 2

    .prologue
    .line 78
    iget v0, p0, Lorg/codehaus/jackson/JsonStreamContext;->_type:I

    if-nez v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method
