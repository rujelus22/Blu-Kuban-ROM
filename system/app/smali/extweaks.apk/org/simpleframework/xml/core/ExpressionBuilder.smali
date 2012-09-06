.class Lorg/simpleframework/xml/core/ExpressionBuilder;
.super Ljava/lang/Object;
.source "ExpressionBuilder.java"


# instance fields
.field private final cache:Lorg/simpleframework/xml/core/ExpressionBuilder$Cache;

.field private final type:Lorg/simpleframework/xml/strategy/Type;


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .registers 3
    .parameter

    .prologue
    .line 57
    new-instance v0, Lorg/simpleframework/xml/core/ClassType;

    invoke-direct {v0, p1}, Lorg/simpleframework/xml/core/ClassType;-><init>(Ljava/lang/Class;)V

    invoke-direct {p0, v0}, Lorg/simpleframework/xml/core/ExpressionBuilder;-><init>(Lorg/simpleframework/xml/strategy/Type;)V

    .line 58
    return-void
.end method

.method public constructor <init>(Lorg/simpleframework/xml/strategy/Type;)V
    .registers 3
    .parameter

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    new-instance v0, Lorg/simpleframework/xml/core/ExpressionBuilder$Cache;

    invoke-direct {v0, p0}, Lorg/simpleframework/xml/core/ExpressionBuilder$Cache;-><init>(Lorg/simpleframework/xml/core/ExpressionBuilder;)V

    iput-object v0, p0, Lorg/simpleframework/xml/core/ExpressionBuilder;->cache:Lorg/simpleframework/xml/core/ExpressionBuilder$Cache;

    .line 69
    iput-object p1, p0, Lorg/simpleframework/xml/core/ExpressionBuilder;->type:Lorg/simpleframework/xml/strategy/Type;

    .line 70
    return-void
.end method

.method private create(Ljava/lang/String;)Lorg/simpleframework/xml/core/Expression;
    .registers 4
    .parameter

    .prologue
    .line 101
    new-instance v0, Lorg/simpleframework/xml/core/PathParser;

    iget-object v1, p0, Lorg/simpleframework/xml/core/ExpressionBuilder;->type:Lorg/simpleframework/xml/strategy/Type;

    invoke-direct {v0, v1, p1}, Lorg/simpleframework/xml/core/PathParser;-><init>(Lorg/simpleframework/xml/strategy/Type;Ljava/lang/String;)V

    .line 103
    iget-object v1, p0, Lorg/simpleframework/xml/core/ExpressionBuilder;->cache:Lorg/simpleframework/xml/core/ExpressionBuilder$Cache;

    if-eqz v1, :cond_10

    .line 104
    iget-object v1, p0, Lorg/simpleframework/xml/core/ExpressionBuilder;->cache:Lorg/simpleframework/xml/core/ExpressionBuilder$Cache;

    invoke-virtual {v1, p1, v0}, Lorg/simpleframework/xml/core/ExpressionBuilder$Cache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    :cond_10
    return-object v0
.end method


# virtual methods
.method public build(Ljava/lang/String;)Lorg/simpleframework/xml/core/Expression;
    .registers 3
    .parameter

    .prologue
    .line 83
    iget-object v0, p0, Lorg/simpleframework/xml/core/ExpressionBuilder;->cache:Lorg/simpleframework/xml/core/ExpressionBuilder$Cache;

    invoke-virtual {v0, p1}, Lorg/simpleframework/xml/core/ExpressionBuilder$Cache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/simpleframework/xml/core/Expression;

    .line 85
    if-nez v0, :cond_e

    .line 86
    invoke-direct {p0, p1}, Lorg/simpleframework/xml/core/ExpressionBuilder;->create(Ljava/lang/String;)Lorg/simpleframework/xml/core/Expression;

    move-result-object v0

    .line 88
    :cond_e
    return-object v0
.end method
