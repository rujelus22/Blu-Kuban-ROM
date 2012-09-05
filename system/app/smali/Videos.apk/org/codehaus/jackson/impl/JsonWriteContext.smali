.class public Lorg/codehaus/jackson/impl/JsonWriteContext;
.super Lorg/codehaus/jackson/JsonStreamContext;
.source "JsonWriteContext.java"


# instance fields
.field protected _child:Lorg/codehaus/jackson/impl/JsonWriteContext;

.field protected _currentName:Ljava/lang/String;

.field protected final _parent:Lorg/codehaus/jackson/impl/JsonWriteContext;


# direct methods
.method protected constructor <init>(ILorg/codehaus/jackson/impl/JsonWriteContext;)V
    .registers 4
    .parameter "type"
    .parameter "parent"

    .prologue
    .line 48
    invoke-direct {p0}, Lorg/codehaus/jackson/JsonStreamContext;-><init>()V

    .line 38
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/codehaus/jackson/impl/JsonWriteContext;->_child:Lorg/codehaus/jackson/impl/JsonWriteContext;

    .line 49
    iput p1, p0, Lorg/codehaus/jackson/impl/JsonWriteContext;->_type:I

    .line 50
    iput-object p2, p0, Lorg/codehaus/jackson/impl/JsonWriteContext;->_parent:Lorg/codehaus/jackson/impl/JsonWriteContext;

    .line 51
    const/4 v0, -0x1

    iput v0, p0, Lorg/codehaus/jackson/impl/JsonWriteContext;->_index:I

    .line 52
    return-void
.end method

.method public static createRootContext()Lorg/codehaus/jackson/impl/JsonWriteContext;
    .registers 3

    .prologue
    .line 58
    new-instance v0, Lorg/codehaus/jackson/impl/JsonWriteContext;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/codehaus/jackson/impl/JsonWriteContext;-><init>(ILorg/codehaus/jackson/impl/JsonWriteContext;)V

    return-object v0
.end method

.method private final reset(I)Lorg/codehaus/jackson/impl/JsonWriteContext;
    .registers 3
    .parameter "type"

    .prologue
    .line 62
    iput p1, p0, Lorg/codehaus/jackson/impl/JsonWriteContext;->_type:I

    .line 63
    const/4 v0, -0x1

    iput v0, p0, Lorg/codehaus/jackson/impl/JsonWriteContext;->_index:I

    .line 64
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/codehaus/jackson/impl/JsonWriteContext;->_currentName:Ljava/lang/String;

    .line 65
    return-object p0
.end method


# virtual methods
.method protected final appendDesc(Ljava/lang/StringBuilder;)V
    .registers 6
    .parameter "sb"

    .prologue
    const/16 v3, 0x5d

    const/16 v2, 0x22

    .line 144
    iget v0, p0, Lorg/codehaus/jackson/impl/JsonWriteContext;->_type:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_27

    .line 145
    const/16 v0, 0x7b

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 146
    iget-object v0, p0, Lorg/codehaus/jackson/impl/JsonWriteContext;->_currentName:Ljava/lang/String;

    if-eqz v0, :cond_21

    .line 147
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 149
    iget-object v0, p0, Lorg/codehaus/jackson/impl/JsonWriteContext;->_currentName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 154
    :goto_1d
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 163
    :goto_20
    return-void

    .line 152
    :cond_21
    const/16 v0, 0x3f

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1d

    .line 155
    :cond_27
    iget v0, p0, Lorg/codehaus/jackson/impl/JsonWriteContext;->_type:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3c

    .line 156
    const/16 v0, 0x5b

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 157
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/JsonWriteContext;->getCurrentIndex()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 158
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_20

    .line 161
    :cond_3c
    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_20
.end method

.method public final createChildArrayContext()Lorg/codehaus/jackson/impl/JsonWriteContext;
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 70
    iget-object v0, p0, Lorg/codehaus/jackson/impl/JsonWriteContext;->_child:Lorg/codehaus/jackson/impl/JsonWriteContext;

    .line 71
    .local v0, ctxt:Lorg/codehaus/jackson/impl/JsonWriteContext;
    if-nez v0, :cond_e

    .line 72
    new-instance v0, Lorg/codehaus/jackson/impl/JsonWriteContext;

    .end local v0           #ctxt:Lorg/codehaus/jackson/impl/JsonWriteContext;
    invoke-direct {v0, v1, p0}, Lorg/codehaus/jackson/impl/JsonWriteContext;-><init>(ILorg/codehaus/jackson/impl/JsonWriteContext;)V

    .restart local v0       #ctxt:Lorg/codehaus/jackson/impl/JsonWriteContext;
    iput-object v0, p0, Lorg/codehaus/jackson/impl/JsonWriteContext;->_child:Lorg/codehaus/jackson/impl/JsonWriteContext;

    move-object v1, v0

    .line 75
    :goto_d
    return-object v1

    :cond_e
    invoke-direct {v0, v1}, Lorg/codehaus/jackson/impl/JsonWriteContext;->reset(I)Lorg/codehaus/jackson/impl/JsonWriteContext;

    move-result-object v1

    goto :goto_d
.end method

.method public final createChildObjectContext()Lorg/codehaus/jackson/impl/JsonWriteContext;
    .registers 3

    .prologue
    const/4 v1, 0x2

    .line 80
    iget-object v0, p0, Lorg/codehaus/jackson/impl/JsonWriteContext;->_child:Lorg/codehaus/jackson/impl/JsonWriteContext;

    .line 81
    .local v0, ctxt:Lorg/codehaus/jackson/impl/JsonWriteContext;
    if-nez v0, :cond_e

    .line 82
    new-instance v0, Lorg/codehaus/jackson/impl/JsonWriteContext;

    .end local v0           #ctxt:Lorg/codehaus/jackson/impl/JsonWriteContext;
    invoke-direct {v0, v1, p0}, Lorg/codehaus/jackson/impl/JsonWriteContext;-><init>(ILorg/codehaus/jackson/impl/JsonWriteContext;)V

    .restart local v0       #ctxt:Lorg/codehaus/jackson/impl/JsonWriteContext;
    iput-object v0, p0, Lorg/codehaus/jackson/impl/JsonWriteContext;->_child:Lorg/codehaus/jackson/impl/JsonWriteContext;

    move-object v1, v0

    .line 85
    :goto_d
    return-object v1

    :cond_e
    invoke-direct {v0, v1}, Lorg/codehaus/jackson/impl/JsonWriteContext;->reset(I)Lorg/codehaus/jackson/impl/JsonWriteContext;

    move-result-object v1

    goto :goto_d
.end method

.method public final getParent()Lorg/codehaus/jackson/impl/JsonWriteContext;
    .registers 2

    .prologue
    .line 91
    iget-object v0, p0, Lorg/codehaus/jackson/impl/JsonWriteContext;->_parent:Lorg/codehaus/jackson/impl/JsonWriteContext;

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 174
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 175
    .local v0, sb:Ljava/lang/StringBuilder;
    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/impl/JsonWriteContext;->appendDesc(Ljava/lang/StringBuilder;)V

    .line 176
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public final writeFieldName(Ljava/lang/String;)I
    .registers 5
    .parameter "name"

    .prologue
    const/4 v0, 0x4

    .line 105
    iget v1, p0, Lorg/codehaus/jackson/impl/JsonWriteContext;->_type:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_a

    .line 106
    iget-object v1, p0, Lorg/codehaus/jackson/impl/JsonWriteContext;->_currentName:Ljava/lang/String;

    if-eqz v1, :cond_b

    .line 112
    :cond_a
    :goto_a
    return v0

    .line 109
    :cond_b
    iput-object p1, p0, Lorg/codehaus/jackson/impl/JsonWriteContext;->_currentName:Ljava/lang/String;

    .line 110
    iget v0, p0, Lorg/codehaus/jackson/impl/JsonWriteContext;->_index:I

    if-gez v0, :cond_13

    const/4 v0, 0x0

    goto :goto_a

    :cond_13
    const/4 v0, 0x1

    goto :goto_a
.end method

.method public final writeValue()I
    .registers 6

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 118
    iget v4, p0, Lorg/codehaus/jackson/impl/JsonWriteContext;->_type:I

    if-ne v4, v3, :cond_18

    .line 119
    iget-object v1, p0, Lorg/codehaus/jackson/impl/JsonWriteContext;->_currentName:Ljava/lang/String;

    if-nez v1, :cond_d

    .line 120
    const/4 v1, 0x5

    .line 137
    :cond_c
    :goto_c
    return v1

    .line 122
    :cond_d
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/codehaus/jackson/impl/JsonWriteContext;->_currentName:Ljava/lang/String;

    .line 123
    iget v1, p0, Lorg/codehaus/jackson/impl/JsonWriteContext;->_index:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/codehaus/jackson/impl/JsonWriteContext;->_index:I

    move v1, v3

    .line 124
    goto :goto_c

    .line 128
    :cond_18
    iget v3, p0, Lorg/codehaus/jackson/impl/JsonWriteContext;->_type:I

    if-ne v3, v2, :cond_28

    .line 129
    iget v0, p0, Lorg/codehaus/jackson/impl/JsonWriteContext;->_index:I

    .line 130
    .local v0, ix:I
    iget v3, p0, Lorg/codehaus/jackson/impl/JsonWriteContext;->_index:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lorg/codehaus/jackson/impl/JsonWriteContext;->_index:I

    .line 131
    if-ltz v0, :cond_c

    move v1, v2

    goto :goto_c

    .line 136
    .end local v0           #ix:I
    :cond_28
    iget v2, p0, Lorg/codehaus/jackson/impl/JsonWriteContext;->_index:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lorg/codehaus/jackson/impl/JsonWriteContext;->_index:I

    .line 137
    iget v2, p0, Lorg/codehaus/jackson/impl/JsonWriteContext;->_index:I

    if-eqz v2, :cond_c

    const/4 v1, 0x3

    goto :goto_c
.end method
