.class Lorg/simpleframework/xml/core/ModelAssembler;
.super Ljava/lang/Object;
.source "ModelAssembler.java"


# instance fields
.field private final builder:Lorg/simpleframework/xml/core/ExpressionBuilder;

.field private final type:Ljava/lang/Class;


# direct methods
.method public constructor <init>(Lorg/simpleframework/xml/core/ExpressionBuilder;Ljava/lang/Class;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput-object p1, p0, Lorg/simpleframework/xml/core/ModelAssembler;->builder:Lorg/simpleframework/xml/core/ExpressionBuilder;

    .line 67
    iput-object p2, p0, Lorg/simpleframework/xml/core/ModelAssembler;->type:Ljava/lang/Class;

    .line 68
    return-void
.end method

.method private assembleAttributes(Lorg/simpleframework/xml/core/Model;Lorg/simpleframework/xml/Order;)V
    .registers 9
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 114
    invoke-interface {p2}, Lorg/simpleframework/xml/Order;->attributes()[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    move v0, v1

    :goto_7
    if-ge v0, v3, :cond_35

    aget-object v4, v2, v0

    .line 115
    iget-object v5, p0, Lorg/simpleframework/xml/core/ModelAssembler;->builder:Lorg/simpleframework/xml/core/ExpressionBuilder;

    invoke-virtual {v5, v4}, Lorg/simpleframework/xml/core/ExpressionBuilder;->build(Ljava/lang/String;)Lorg/simpleframework/xml/core/Expression;

    move-result-object v4

    .line 117
    invoke-interface {v4}, Lorg/simpleframework/xml/core/Expression;->isAttribute()Z

    move-result v5

    if-nez v5, :cond_2f

    invoke-interface {v4}, Lorg/simpleframework/xml/core/Expression;->isPath()Z

    move-result v5

    if-eqz v5, :cond_2f

    .line 118
    new-instance v0, Lorg/simpleframework/xml/core/PathException;

    const-string v2, "Ordered attribute \'%s\' references an element in %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v4, v3, v1

    const/4 v1, 0x1

    iget-object v4, p0, Lorg/simpleframework/xml/core/ModelAssembler;->type:Ljava/lang/Class;

    aput-object v4, v3, v1

    invoke-direct {v0, v2, v3}, Lorg/simpleframework/xml/core/PathException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    .line 120
    :cond_2f
    invoke-direct {p0, p1, v4}, Lorg/simpleframework/xml/core/ModelAssembler;->registerAttributes(Lorg/simpleframework/xml/core/Model;Lorg/simpleframework/xml/core/Expression;)V

    .line 114
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 122
    :cond_35
    return-void
.end method

.method private assembleElements(Lorg/simpleframework/xml/core/Model;Lorg/simpleframework/xml/Order;)V
    .registers 9
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 94
    invoke-interface {p2}, Lorg/simpleframework/xml/Order;->elements()[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    move v0, v1

    :goto_7
    if-ge v0, v3, :cond_2f

    aget-object v4, v2, v0

    .line 95
    iget-object v5, p0, Lorg/simpleframework/xml/core/ModelAssembler;->builder:Lorg/simpleframework/xml/core/ExpressionBuilder;

    invoke-virtual {v5, v4}, Lorg/simpleframework/xml/core/ExpressionBuilder;->build(Ljava/lang/String;)Lorg/simpleframework/xml/core/Expression;

    move-result-object v4

    .line 97
    invoke-interface {v4}, Lorg/simpleframework/xml/core/Expression;->isAttribute()Z

    move-result v5

    if-eqz v5, :cond_29

    .line 98
    new-instance v0, Lorg/simpleframework/xml/core/PathException;

    const-string v2, "Ordered element \'%s\' references an attribute in %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v4, v3, v1

    const/4 v1, 0x1

    iget-object v4, p0, Lorg/simpleframework/xml/core/ModelAssembler;->type:Ljava/lang/Class;

    aput-object v4, v3, v1

    invoke-direct {v0, v2, v3}, Lorg/simpleframework/xml/core/PathException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    .line 100
    :cond_29
    invoke-direct {p0, p1, v4}, Lorg/simpleframework/xml/core/ModelAssembler;->registerElements(Lorg/simpleframework/xml/core/Model;Lorg/simpleframework/xml/core/Expression;)V

    .line 94
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 102
    :cond_2f
    return-void
.end method

.method private registerAttribute(Lorg/simpleframework/xml/core/Model;Lorg/simpleframework/xml/core/Expression;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 160
    invoke-interface {p2}, Lorg/simpleframework/xml/core/Expression;->getFirst()Ljava/lang/String;

    move-result-object v0

    .line 162
    if-eqz v0, :cond_9

    .line 163
    invoke-interface {p1, v0}, Lorg/simpleframework/xml/core/Model;->registerAttribute(Ljava/lang/String;)V

    .line 165
    :cond_9
    return-void
.end method

.method private registerAttributes(Lorg/simpleframework/xml/core/Model;Lorg/simpleframework/xml/core/Expression;)V
    .registers 9
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x1

    .line 133
    :cond_1
    invoke-interface {p2}, Lorg/simpleframework/xml/core/Expression;->getPrefix()Ljava/lang/String;

    move-result-object v0

    .line 134
    invoke-interface {p2}, Lorg/simpleframework/xml/core/Expression;->getFirst()Ljava/lang/String;

    move-result-object v1

    .line 135
    invoke-interface {p2}, Lorg/simpleframework/xml/core/Expression;->getIndex()I

    move-result v2

    .line 137
    invoke-interface {p2}, Lorg/simpleframework/xml/core/Expression;->isPath()Z

    move-result v3

    if-eqz v3, :cond_2f

    .line 138
    invoke-interface {p1, v1, v0, v2}, Lorg/simpleframework/xml/core/Model;->register(Ljava/lang/String;Ljava/lang/String;I)Lorg/simpleframework/xml/core/Model;

    move-result-object p1

    .line 139
    invoke-interface {p2, v5}, Lorg/simpleframework/xml/core/Expression;->getPath(I)Lorg/simpleframework/xml/core/Expression;

    move-result-object p2

    .line 141
    if-nez p1, :cond_1

    .line 142
    new-instance v0, Lorg/simpleframework/xml/core/PathException;

    const-string v2, "Element \'%s\' does not exist in %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    iget-object v1, p0, Lorg/simpleframework/xml/core/ModelAssembler;->type:Ljava/lang/Class;

    aput-object v1, v3, v5

    invoke-direct {v0, v2, v3}, Lorg/simpleframework/xml/core/PathException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    .line 145
    :cond_2f
    invoke-direct {p0, p1, p2}, Lorg/simpleframework/xml/core/ModelAssembler;->registerAttribute(Lorg/simpleframework/xml/core/Model;Lorg/simpleframework/xml/core/Expression;)V

    .line 148
    return-void
.end method

.method private registerElement(Lorg/simpleframework/xml/core/Model;Lorg/simpleframework/xml/core/Expression;)V
    .registers 9
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x1

    .line 212
    invoke-interface {p2}, Lorg/simpleframework/xml/core/Expression;->getPrefix()Ljava/lang/String;

    move-result-object v0

    .line 213
    invoke-interface {p2}, Lorg/simpleframework/xml/core/Expression;->getFirst()Ljava/lang/String;

    move-result-object v1

    .line 214
    invoke-interface {p2}, Lorg/simpleframework/xml/core/Expression;->getIndex()I

    move-result v2

    .line 216
    if-le v2, v5, :cond_2c

    .line 217
    add-int/lit8 v3, v2, -0x1

    invoke-interface {p1, v1, v3}, Lorg/simpleframework/xml/core/Model;->lookup(Ljava/lang/String;I)Lorg/simpleframework/xml/core/Model;

    move-result-object v3

    .line 219
    if-nez v3, :cond_2c

    .line 220
    new-instance v0, Lorg/simpleframework/xml/core/PathException;

    const-string v2, "Ordered element \'%s\' in path \'%s\' is out of sequence for %s"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    aput-object p2, v3, v5

    const/4 v1, 0x2

    iget-object v4, p0, Lorg/simpleframework/xml/core/ModelAssembler;->type:Ljava/lang/Class;

    aput-object v4, v3, v1

    invoke-direct {v0, v2, v3}, Lorg/simpleframework/xml/core/PathException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    .line 223
    :cond_2c
    invoke-interface {p1, v1, v0, v2}, Lorg/simpleframework/xml/core/Model;->register(Ljava/lang/String;Ljava/lang/String;I)Lorg/simpleframework/xml/core/Model;

    .line 224
    return-void
.end method

.method private registerElements(Lorg/simpleframework/xml/core/Model;Lorg/simpleframework/xml/core/Expression;)V
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 176
    invoke-interface {p2}, Lorg/simpleframework/xml/core/Expression;->getPrefix()Ljava/lang/String;

    move-result-object v0

    .line 177
    invoke-interface {p2}, Lorg/simpleframework/xml/core/Expression;->getFirst()Ljava/lang/String;

    move-result-object v1

    .line 178
    invoke-interface {p2}, Lorg/simpleframework/xml/core/Expression;->getIndex()I

    move-result v2

    .line 180
    if-eqz v1, :cond_20

    .line 181
    invoke-interface {p1, v1, v0, v2}, Lorg/simpleframework/xml/core/Model;->register(Ljava/lang/String;Ljava/lang/String;I)Lorg/simpleframework/xml/core/Model;

    move-result-object v0

    .line 182
    const/4 v1, 0x1

    invoke-interface {p2, v1}, Lorg/simpleframework/xml/core/Expression;->getPath(I)Lorg/simpleframework/xml/core/Expression;

    move-result-object v1

    .line 184
    invoke-interface {p2}, Lorg/simpleframework/xml/core/Expression;->isPath()Z

    move-result v2

    if-eqz v2, :cond_20

    .line 185
    invoke-direct {p0, v0, v1}, Lorg/simpleframework/xml/core/ModelAssembler;->registerElements(Lorg/simpleframework/xml/core/Model;Lorg/simpleframework/xml/core/Expression;)V

    .line 188
    :cond_20
    invoke-direct {p0, p1, p2}, Lorg/simpleframework/xml/core/ModelAssembler;->registerElement(Lorg/simpleframework/xml/core/Model;Lorg/simpleframework/xml/core/Expression;)V

    .line 189
    return-void
.end method


# virtual methods
.method public assemble(Lorg/simpleframework/xml/core/Model;Lorg/simpleframework/xml/Order;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 80
    invoke-direct {p0, p1, p2}, Lorg/simpleframework/xml/core/ModelAssembler;->assembleElements(Lorg/simpleframework/xml/core/Model;Lorg/simpleframework/xml/Order;)V

    .line 81
    invoke-direct {p0, p1, p2}, Lorg/simpleframework/xml/core/ModelAssembler;->assembleAttributes(Lorg/simpleframework/xml/core/Model;Lorg/simpleframework/xml/Order;)V

    .line 82
    return-void
.end method
