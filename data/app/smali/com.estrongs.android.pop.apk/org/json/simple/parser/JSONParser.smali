.class public Lorg/json/simple/parser/JSONParser;
.super Ljava/lang/Object;


# static fields
.field public static final S_END:I = 0x6

.field public static final S_INIT:I = 0x0

.field public static final S_IN_ARRAY:I = 0x3

.field public static final S_IN_ERROR:I = -0x1

.field public static final S_IN_FINISHED_VALUE:I = 0x1

.field public static final S_IN_OBJECT:I = 0x2

.field public static final S_IN_PAIR_VALUE:I = 0x5

.field public static final S_PASSED_PAIR_KEY:I = 0x4


# instance fields
.field private handlerStatusStack:Ljava/util/LinkedList;

.field private lexer:Lorg/json/simple/parser/Yylex;

.field private status:I

.field private token:Lorg/json/simple/parser/Yytoken;


# direct methods
.method public constructor <init>()V
    .registers 4

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v2, Lorg/json/simple/parser/Yylex;

    move-object v0, v1

    check-cast v0, Ljava/io/Reader;

    invoke-direct {v2, v0}, Lorg/json/simple/parser/Yylex;-><init>(Ljava/io/Reader;)V

    iput-object v2, p0, Lorg/json/simple/parser/JSONParser;->lexer:Lorg/json/simple/parser/Yylex;

    iput-object v1, p0, Lorg/json/simple/parser/JSONParser;->token:Lorg/json/simple/parser/Yytoken;

    const/4 v0, 0x0

    iput v0, p0, Lorg/json/simple/parser/JSONParser;->status:I

    return-void
.end method

.method private createArrayContainer(Lorg/json/simple/parser/ContainerFactory;)Ljava/util/List;
    .registers 3

    if-nez p1, :cond_8

    new-instance v0, Lorg/json/simple/JSONArray;

    invoke-direct {v0}, Lorg/json/simple/JSONArray;-><init>()V

    :cond_7
    :goto_7
    return-object v0

    :cond_8
    invoke-interface {p1}, Lorg/json/simple/parser/ContainerFactory;->creatArrayContainer()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_7

    new-instance v0, Lorg/json/simple/JSONArray;

    invoke-direct {v0}, Lorg/json/simple/JSONArray;-><init>()V

    goto :goto_7
.end method

.method private createObjectContainer(Lorg/json/simple/parser/ContainerFactory;)Ljava/util/Map;
    .registers 3

    if-nez p1, :cond_8

    new-instance v0, Lorg/json/simple/JSONObject;

    invoke-direct {v0}, Lorg/json/simple/JSONObject;-><init>()V

    :cond_7
    :goto_7
    return-object v0

    :cond_8
    invoke-interface {p1}, Lorg/json/simple/parser/ContainerFactory;->createObjectContainer()Ljava/util/Map;

    move-result-object v0

    if-nez v0, :cond_7

    new-instance v0, Lorg/json/simple/JSONObject;

    invoke-direct {v0}, Lorg/json/simple/JSONObject;-><init>()V

    goto :goto_7
.end method

.method private nextToken()V
    .registers 4

    iget-object v0, p0, Lorg/json/simple/parser/JSONParser;->lexer:Lorg/json/simple/parser/Yylex;

    invoke-virtual {v0}, Lorg/json/simple/parser/Yylex;->yylex()Lorg/json/simple/parser/Yytoken;

    move-result-object v0

    iput-object v0, p0, Lorg/json/simple/parser/JSONParser;->token:Lorg/json/simple/parser/Yytoken;

    iget-object v0, p0, Lorg/json/simple/parser/JSONParser;->token:Lorg/json/simple/parser/Yytoken;

    if-nez v0, :cond_15

    new-instance v0, Lorg/json/simple/parser/Yytoken;

    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/json/simple/parser/Yytoken;-><init>(ILjava/lang/Object;)V

    iput-object v0, p0, Lorg/json/simple/parser/JSONParser;->token:Lorg/json/simple/parser/Yytoken;

    :cond_15
    return-void
.end method

.method private peekStatus(Ljava/util/LinkedList;)I
    .registers 3

    invoke-virtual {p1}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, -0x1

    :goto_7
    return v0

    :cond_8
    invoke-virtual {p1}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_7
.end method


# virtual methods
.method public getPosition()I
    .registers 2

    iget-object v0, p0, Lorg/json/simple/parser/JSONParser;->lexer:Lorg/json/simple/parser/Yylex;

    invoke-virtual {v0}, Lorg/json/simple/parser/Yylex;->getPosition()I

    move-result v0

    return v0
.end method

.method public parse(Ljava/io/Reader;)Ljava/lang/Object;
    .registers 3

    const/4 v0, 0x0

    check-cast v0, Lorg/json/simple/parser/ContainerFactory;

    invoke-virtual {p0, p1, v0}, Lorg/json/simple/parser/JSONParser;->parse(Ljava/io/Reader;Lorg/json/simple/parser/ContainerFactory;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public parse(Ljava/io/Reader;Lorg/json/simple/parser/ContainerFactory;)Ljava/lang/Object;
    .registers 10

    const/4 v6, -0x1

    const/4 v5, 0x1

    invoke-virtual {p0, p1}, Lorg/json/simple/parser/JSONParser;->reset(Ljava/io/Reader;)V

    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    :cond_f
    :try_start_f
    invoke-direct {p0}, Lorg/json/simple/parser/JSONParser;->nextToken()V

    iget v0, p0, Lorg/json/simple/parser/JSONParser;->status:I

    packed-switch v0, :pswitch_data_1e0

    :goto_17
    :pswitch_17
    iget v0, p0, Lorg/json/simple/parser/JSONParser;->status:I

    if-ne v0, v6, :cond_1ce

    new-instance v0, Lorg/json/simple/parser/ParseException;

    invoke-virtual {p0}, Lorg/json/simple/parser/JSONParser;->getPosition()I

    move-result v1

    const/4 v2, 0x1

    iget-object v3, p0, Lorg/json/simple/parser/JSONParser;->token:Lorg/json/simple/parser/Yytoken;

    invoke-direct {v0, v1, v2, v3}, Lorg/json/simple/parser/ParseException;-><init>(IILjava/lang/Object;)V

    throw v0
    :try_end_28
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_28} :catch_28

    :catch_28
    move-exception v0

    throw v0

    :pswitch_2a
    :try_start_2a
    iget-object v0, p0, Lorg/json/simple/parser/JSONParser;->token:Lorg/json/simple/parser/Yytoken;

    iget v0, v0, Lorg/json/simple/parser/Yytoken;->type:I

    packed-switch v0, :pswitch_data_1f0

    :pswitch_31
    const/4 v0, -0x1

    iput v0, p0, Lorg/json/simple/parser/JSONParser;->status:I

    goto :goto_17

    :pswitch_35
    const/4 v0, 0x1

    iput v0, p0, Lorg/json/simple/parser/JSONParser;->status:I

    new-instance v0, Ljava/lang/Integer;

    iget v1, p0, Lorg/json/simple/parser/JSONParser;->status:I

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v2, v0}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    iget-object v0, p0, Lorg/json/simple/parser/JSONParser;->token:Lorg/json/simple/parser/Yytoken;

    iget-object v0, v0, Lorg/json/simple/parser/Yytoken;->value:Ljava/lang/Object;

    invoke-virtual {v3, v0}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    goto :goto_17

    :pswitch_4a
    const/4 v0, 0x2

    iput v0, p0, Lorg/json/simple/parser/JSONParser;->status:I

    new-instance v0, Ljava/lang/Integer;

    iget v1, p0, Lorg/json/simple/parser/JSONParser;->status:I

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v2, v0}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    invoke-direct {p0, p2}, Lorg/json/simple/parser/JSONParser;->createObjectContainer(Lorg/json/simple/parser/ContainerFactory;)Ljava/util/Map;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    goto :goto_17

    :pswitch_5f
    const/4 v0, 0x3

    iput v0, p0, Lorg/json/simple/parser/JSONParser;->status:I

    new-instance v0, Ljava/lang/Integer;

    iget v1, p0, Lorg/json/simple/parser/JSONParser;->status:I

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v2, v0}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    invoke-direct {p0, p2}, Lorg/json/simple/parser/JSONParser;->createArrayContainer(Lorg/json/simple/parser/ContainerFactory;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    goto :goto_17

    :pswitch_74
    iget-object v0, p0, Lorg/json/simple/parser/JSONParser;->token:Lorg/json/simple/parser/Yytoken;

    iget v0, v0, Lorg/json/simple/parser/Yytoken;->type:I

    if-ne v0, v6, :cond_7f

    invoke-virtual {v3}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_7f
    new-instance v0, Lorg/json/simple/parser/ParseException;

    invoke-virtual {p0}, Lorg/json/simple/parser/JSONParser;->getPosition()I

    move-result v1

    const/4 v2, 0x1

    iget-object v3, p0, Lorg/json/simple/parser/JSONParser;->token:Lorg/json/simple/parser/Yytoken;

    invoke-direct {v0, v1, v2, v3}, Lorg/json/simple/parser/ParseException;-><init>(IILjava/lang/Object;)V

    throw v0

    :pswitch_8c
    iget-object v0, p0, Lorg/json/simple/parser/JSONParser;->token:Lorg/json/simple/parser/Yytoken;

    iget v0, v0, Lorg/json/simple/parser/Yytoken;->type:I

    packed-switch v0, :pswitch_data_1fc

    :pswitch_93
    const/4 v0, -0x1

    iput v0, p0, Lorg/json/simple/parser/JSONParser;->status:I

    goto :goto_17

    :pswitch_97
    iget-object v0, p0, Lorg/json/simple/parser/JSONParser;->token:Lorg/json/simple/parser/Yytoken;

    iget-object v0, v0, Lorg/json/simple/parser/Yytoken;->value:Ljava/lang/Object;

    instance-of v0, v0, Ljava/lang/String;

    if-eqz v0, :cond_b7

    iget-object v0, p0, Lorg/json/simple/parser/JSONParser;->token:Lorg/json/simple/parser/Yytoken;

    iget-object v0, v0, Lorg/json/simple/parser/Yytoken;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    const/4 v0, 0x4

    iput v0, p0, Lorg/json/simple/parser/JSONParser;->status:I

    new-instance v0, Ljava/lang/Integer;

    iget v1, p0, Lorg/json/simple/parser/JSONParser;->status:I

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v2, v0}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    goto/16 :goto_17

    :cond_b7
    const/4 v0, -0x1

    iput v0, p0, Lorg/json/simple/parser/JSONParser;->status:I

    goto/16 :goto_17

    :pswitch_bc
    invoke-virtual {v3}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-le v0, v5, :cond_d0

    invoke-virtual {v2}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    invoke-direct {p0, v2}, Lorg/json/simple/parser/JSONParser;->peekStatus(Ljava/util/LinkedList;)I

    move-result v0

    iput v0, p0, Lorg/json/simple/parser/JSONParser;->status:I

    goto/16 :goto_17

    :cond_d0
    const/4 v0, 0x1

    iput v0, p0, Lorg/json/simple/parser/JSONParser;->status:I

    goto/16 :goto_17

    :pswitch_d5
    iget-object v0, p0, Lorg/json/simple/parser/JSONParser;->token:Lorg/json/simple/parser/Yytoken;

    iget v0, v0, Lorg/json/simple/parser/Yytoken;->type:I

    packed-switch v0, :pswitch_data_20c

    :pswitch_dc
    const/4 v0, -0x1

    iput v0, p0, Lorg/json/simple/parser/JSONParser;->status:I

    goto/16 :goto_17

    :pswitch_e1
    invoke-virtual {v2}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    iget-object v4, p0, Lorg/json/simple/parser/JSONParser;->token:Lorg/json/simple/parser/Yytoken;

    iget-object v4, v4, Lorg/json/simple/parser/Yytoken;->value:Ljava/lang/Object;

    invoke-interface {v1, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0, v2}, Lorg/json/simple/parser/JSONParser;->peekStatus(Ljava/util/LinkedList;)I

    move-result v0

    iput v0, p0, Lorg/json/simple/parser/JSONParser;->status:I

    goto/16 :goto_17

    :pswitch_ff
    invoke-virtual {v2}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    invoke-direct {p0, p2}, Lorg/json/simple/parser/JSONParser;->createArrayContainer(Lorg/json/simple/parser/ContainerFactory;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v1, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x3

    iput v0, p0, Lorg/json/simple/parser/JSONParser;->status:I

    new-instance v0, Ljava/lang/Integer;

    iget v1, p0, Lorg/json/simple/parser/JSONParser;->status:I

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v2, v0}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    invoke-virtual {v3, v4}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    goto/16 :goto_17

    :pswitch_127
    invoke-virtual {v2}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    invoke-direct {p0, p2}, Lorg/json/simple/parser/JSONParser;->createObjectContainer(Lorg/json/simple/parser/ContainerFactory;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v1, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x2

    iput v0, p0, Lorg/json/simple/parser/JSONParser;->status:I

    new-instance v0, Ljava/lang/Integer;

    iget v1, p0, Lorg/json/simple/parser/JSONParser;->status:I

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v2, v0}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    invoke-virtual {v3, v4}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    goto/16 :goto_17

    :pswitch_14f
    iget-object v0, p0, Lorg/json/simple/parser/JSONParser;->token:Lorg/json/simple/parser/Yytoken;

    iget v0, v0, Lorg/json/simple/parser/Yytoken;->type:I

    packed-switch v0, :pswitch_data_21e

    :pswitch_156
    const/4 v0, -0x1

    iput v0, p0, Lorg/json/simple/parser/JSONParser;->status:I

    goto/16 :goto_17

    :pswitch_15b
    invoke-virtual {v3}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iget-object v1, p0, Lorg/json/simple/parser/JSONParser;->token:Lorg/json/simple/parser/Yytoken;

    iget-object v1, v1, Lorg/json/simple/parser/Yytoken;->value:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_17

    :pswitch_16a
    invoke-virtual {v3}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-le v0, v5, :cond_17e

    invoke-virtual {v2}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    invoke-direct {p0, v2}, Lorg/json/simple/parser/JSONParser;->peekStatus(Ljava/util/LinkedList;)I

    move-result v0

    iput v0, p0, Lorg/json/simple/parser/JSONParser;->status:I

    goto/16 :goto_17

    :cond_17e
    const/4 v0, 0x1

    iput v0, p0, Lorg/json/simple/parser/JSONParser;->status:I

    goto/16 :goto_17

    :pswitch_183
    invoke-virtual {v3}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-direct {p0, p2}, Lorg/json/simple/parser/JSONParser;->createObjectContainer(Lorg/json/simple/parser/ContainerFactory;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x2

    iput v0, p0, Lorg/json/simple/parser/JSONParser;->status:I

    new-instance v0, Ljava/lang/Integer;

    iget v4, p0, Lorg/json/simple/parser/JSONParser;->status:I

    invoke-direct {v0, v4}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v2, v0}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    invoke-virtual {v3, v1}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    goto/16 :goto_17

    :pswitch_1a2
    invoke-virtual {v3}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-direct {p0, p2}, Lorg/json/simple/parser/JSONParser;->createArrayContainer(Lorg/json/simple/parser/ContainerFactory;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x3

    iput v0, p0, Lorg/json/simple/parser/JSONParser;->status:I

    new-instance v0, Ljava/lang/Integer;

    iget v4, p0, Lorg/json/simple/parser/JSONParser;->status:I

    invoke-direct {v0, v4}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v2, v0}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    invoke-virtual {v3, v1}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    goto/16 :goto_17

    :pswitch_1c1
    new-instance v0, Lorg/json/simple/parser/ParseException;

    invoke-virtual {p0}, Lorg/json/simple/parser/JSONParser;->getPosition()I

    move-result v1

    const/4 v2, 0x1

    iget-object v3, p0, Lorg/json/simple/parser/JSONParser;->token:Lorg/json/simple/parser/Yytoken;

    invoke-direct {v0, v1, v2, v3}, Lorg/json/simple/parser/ParseException;-><init>(IILjava/lang/Object;)V

    throw v0

    :cond_1ce
    iget-object v0, p0, Lorg/json/simple/parser/JSONParser;->token:Lorg/json/simple/parser/Yytoken;

    iget v0, v0, Lorg/json/simple/parser/Yytoken;->type:I
    :try_end_1d2
    .catch Ljava/io/IOException; {:try_start_2a .. :try_end_1d2} :catch_28

    if-ne v0, v6, :cond_f

    new-instance v0, Lorg/json/simple/parser/ParseException;

    invoke-virtual {p0}, Lorg/json/simple/parser/JSONParser;->getPosition()I

    move-result v1

    iget-object v2, p0, Lorg/json/simple/parser/JSONParser;->token:Lorg/json/simple/parser/Yytoken;

    invoke-direct {v0, v1, v5, v2}, Lorg/json/simple/parser/ParseException;-><init>(IILjava/lang/Object;)V

    throw v0

    :pswitch_data_1e0
    .packed-switch -0x1
        :pswitch_1c1
        :pswitch_2a
        :pswitch_74
        :pswitch_8c
        :pswitch_14f
        :pswitch_d5
    .end packed-switch

    :pswitch_data_1f0
    .packed-switch 0x0
        :pswitch_35
        :pswitch_4a
        :pswitch_31
        :pswitch_5f
    .end packed-switch

    :pswitch_data_1fc
    .packed-switch 0x0
        :pswitch_97
        :pswitch_93
        :pswitch_bc
        :pswitch_93
        :pswitch_93
        :pswitch_17
    .end packed-switch

    :pswitch_data_20c
    .packed-switch 0x0
        :pswitch_e1
        :pswitch_127
        :pswitch_dc
        :pswitch_ff
        :pswitch_dc
        :pswitch_dc
        :pswitch_17
    .end packed-switch

    :pswitch_data_21e
    .packed-switch 0x0
        :pswitch_15b
        :pswitch_183
        :pswitch_156
        :pswitch_1a2
        :pswitch_16a
        :pswitch_17
    .end packed-switch
.end method

.method public parse(Ljava/lang/String;)Ljava/lang/Object;
    .registers 3

    const/4 v0, 0x0

    check-cast v0, Lorg/json/simple/parser/ContainerFactory;

    invoke-virtual {p0, p1, v0}, Lorg/json/simple/parser/JSONParser;->parse(Ljava/lang/String;Lorg/json/simple/parser/ContainerFactory;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public parse(Ljava/lang/String;Lorg/json/simple/parser/ContainerFactory;)Ljava/lang/Object;
    .registers 7

    new-instance v0, Ljava/io/StringReader;

    invoke-direct {v0, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    :try_start_5
    invoke-virtual {p0, v0, p2}, Lorg/json/simple/parser/JSONParser;->parse(Ljava/io/Reader;Lorg/json/simple/parser/ContainerFactory;)Ljava/lang/Object;
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_8} :catch_a

    move-result-object v0

    return-object v0

    :catch_a
    move-exception v0

    new-instance v1, Lorg/json/simple/parser/ParseException;

    const/4 v2, -0x1

    const/4 v3, 0x2

    invoke-direct {v1, v2, v3, v0}, Lorg/json/simple/parser/ParseException;-><init>(IILjava/lang/Object;)V

    throw v1
.end method

.method public parse(Ljava/io/Reader;Lorg/json/simple/parser/ContentHandler;)V
    .registers 4

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lorg/json/simple/parser/JSONParser;->parse(Ljava/io/Reader;Lorg/json/simple/parser/ContentHandler;Z)V

    return-void
.end method

.method public parse(Ljava/io/Reader;Lorg/json/simple/parser/ContentHandler;Z)V
    .registers 10

    const/4 v5, 0x1

    const/4 v4, -0x1

    if-nez p3, :cond_2a

    invoke-virtual {p0, p1}, Lorg/json/simple/parser/JSONParser;->reset(Ljava/io/Reader;)V

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lorg/json/simple/parser/JSONParser;->handlerStatusStack:Ljava/util/LinkedList;

    :cond_e
    :goto_e
    iget-object v1, p0, Lorg/json/simple/parser/JSONParser;->handlerStatusStack:Ljava/util/LinkedList;

    :cond_10
    :try_start_10
    iget v0, p0, Lorg/json/simple/parser/JSONParser;->status:I

    packed-switch v0, :pswitch_data_206

    :cond_15
    :goto_15
    :pswitch_15
    iget v0, p0, Lorg/json/simple/parser/JSONParser;->status:I

    if-ne v0, v4, :cond_1f2

    new-instance v0, Lorg/json/simple/parser/ParseException;

    invoke-virtual {p0}, Lorg/json/simple/parser/JSONParser;->getPosition()I

    move-result v1

    const/4 v2, 0x1

    iget-object v3, p0, Lorg/json/simple/parser/JSONParser;->token:Lorg/json/simple/parser/Yytoken;

    invoke-direct {v0, v1, v2, v3}, Lorg/json/simple/parser/ParseException;-><init>(IILjava/lang/Object;)V

    throw v0
    :try_end_26
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_26} :catch_26
    .catch Lorg/json/simple/parser/ParseException; {:try_start_10 .. :try_end_26} :catch_4a
    .catch Ljava/lang/RuntimeException; {:try_start_10 .. :try_end_26} :catch_9e
    .catch Ljava/lang/Error; {:try_start_10 .. :try_end_26} :catch_b2

    :catch_26
    move-exception v0

    iput v4, p0, Lorg/json/simple/parser/JSONParser;->status:I

    throw v0

    :cond_2a
    iget-object v0, p0, Lorg/json/simple/parser/JSONParser;->handlerStatusStack:Ljava/util/LinkedList;

    if-nez v0, :cond_e

    invoke-virtual {p0, p1}, Lorg/json/simple/parser/JSONParser;->reset(Ljava/io/Reader;)V

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lorg/json/simple/parser/JSONParser;->handlerStatusStack:Ljava/util/LinkedList;

    goto :goto_e

    :pswitch_39
    :try_start_39
    invoke-interface {p2}, Lorg/json/simple/parser/ContentHandler;->startJSON()V

    invoke-direct {p0}, Lorg/json/simple/parser/JSONParser;->nextToken()V

    iget-object v0, p0, Lorg/json/simple/parser/JSONParser;->token:Lorg/json/simple/parser/Yytoken;

    iget v0, v0, Lorg/json/simple/parser/Yytoken;->type:I

    packed-switch v0, :pswitch_data_21a

    :pswitch_46
    const/4 v0, -0x1

    iput v0, p0, Lorg/json/simple/parser/JSONParser;->status:I
    :try_end_49
    .catch Ljava/io/IOException; {:try_start_39 .. :try_end_49} :catch_26
    .catch Lorg/json/simple/parser/ParseException; {:try_start_39 .. :try_end_49} :catch_4a
    .catch Ljava/lang/RuntimeException; {:try_start_39 .. :try_end_49} :catch_9e
    .catch Ljava/lang/Error; {:try_start_39 .. :try_end_49} :catch_b2

    goto :goto_15

    :catch_4a
    move-exception v0

    iput v4, p0, Lorg/json/simple/parser/JSONParser;->status:I

    throw v0

    :pswitch_4e
    const/4 v0, 0x1

    :try_start_4f
    iput v0, p0, Lorg/json/simple/parser/JSONParser;->status:I

    new-instance v0, Ljava/lang/Integer;

    iget v2, p0, Lorg/json/simple/parser/JSONParser;->status:I

    invoke-direct {v0, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    iget-object v0, p0, Lorg/json/simple/parser/JSONParser;->token:Lorg/json/simple/parser/Yytoken;

    iget-object v0, v0, Lorg/json/simple/parser/Yytoken;->value:Ljava/lang/Object;

    invoke-interface {p2, v0}, Lorg/json/simple/parser/ContentHandler;->primitive(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_15

    :cond_65
    :goto_65
    :pswitch_65
    return-void

    :pswitch_66
    const/4 v0, 0x2

    iput v0, p0, Lorg/json/simple/parser/JSONParser;->status:I

    new-instance v0, Ljava/lang/Integer;

    iget v2, p0, Lorg/json/simple/parser/JSONParser;->status:I

    invoke-direct {v0, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    invoke-interface {p2}, Lorg/json/simple/parser/ContentHandler;->startObject()Z

    move-result v0

    if-nez v0, :cond_15

    goto :goto_65

    :pswitch_7a
    const/4 v0, 0x3

    iput v0, p0, Lorg/json/simple/parser/JSONParser;->status:I

    new-instance v0, Ljava/lang/Integer;

    iget v2, p0, Lorg/json/simple/parser/JSONParser;->status:I

    invoke-direct {v0, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    invoke-interface {p2}, Lorg/json/simple/parser/ContentHandler;->startArray()Z

    move-result v0

    if-nez v0, :cond_15

    goto :goto_65

    :pswitch_8e
    invoke-direct {p0}, Lorg/json/simple/parser/JSONParser;->nextToken()V

    iget-object v0, p0, Lorg/json/simple/parser/JSONParser;->token:Lorg/json/simple/parser/Yytoken;

    iget v0, v0, Lorg/json/simple/parser/Yytoken;->type:I

    if-ne v0, v4, :cond_a2

    invoke-interface {p2}, Lorg/json/simple/parser/ContentHandler;->endJSON()V

    const/4 v0, 0x6

    iput v0, p0, Lorg/json/simple/parser/JSONParser;->status:I
    :try_end_9d
    .catch Ljava/io/IOException; {:try_start_4f .. :try_end_9d} :catch_26
    .catch Lorg/json/simple/parser/ParseException; {:try_start_4f .. :try_end_9d} :catch_4a
    .catch Ljava/lang/RuntimeException; {:try_start_4f .. :try_end_9d} :catch_9e
    .catch Ljava/lang/Error; {:try_start_4f .. :try_end_9d} :catch_b2

    goto :goto_65

    :catch_9e
    move-exception v0

    iput v4, p0, Lorg/json/simple/parser/JSONParser;->status:I

    throw v0

    :cond_a2
    const/4 v0, -0x1

    :try_start_a3
    iput v0, p0, Lorg/json/simple/parser/JSONParser;->status:I

    new-instance v0, Lorg/json/simple/parser/ParseException;

    invoke-virtual {p0}, Lorg/json/simple/parser/JSONParser;->getPosition()I

    move-result v1

    const/4 v2, 0x1

    iget-object v3, p0, Lorg/json/simple/parser/JSONParser;->token:Lorg/json/simple/parser/Yytoken;

    invoke-direct {v0, v1, v2, v3}, Lorg/json/simple/parser/ParseException;-><init>(IILjava/lang/Object;)V

    throw v0
    :try_end_b2
    .catch Ljava/io/IOException; {:try_start_a3 .. :try_end_b2} :catch_26
    .catch Lorg/json/simple/parser/ParseException; {:try_start_a3 .. :try_end_b2} :catch_4a
    .catch Ljava/lang/RuntimeException; {:try_start_a3 .. :try_end_b2} :catch_9e
    .catch Ljava/lang/Error; {:try_start_a3 .. :try_end_b2} :catch_b2

    :catch_b2
    move-exception v0

    iput v4, p0, Lorg/json/simple/parser/JSONParser;->status:I

    throw v0

    :pswitch_b6
    :try_start_b6
    invoke-direct {p0}, Lorg/json/simple/parser/JSONParser;->nextToken()V

    iget-object v0, p0, Lorg/json/simple/parser/JSONParser;->token:Lorg/json/simple/parser/Yytoken;

    iget v0, v0, Lorg/json/simple/parser/Yytoken;->type:I

    packed-switch v0, :pswitch_data_226

    :pswitch_c0
    const/4 v0, -0x1

    iput v0, p0, Lorg/json/simple/parser/JSONParser;->status:I

    goto/16 :goto_15

    :pswitch_c5
    iget-object v0, p0, Lorg/json/simple/parser/JSONParser;->token:Lorg/json/simple/parser/Yytoken;

    iget-object v0, v0, Lorg/json/simple/parser/Yytoken;->value:Ljava/lang/Object;

    instance-of v0, v0, Ljava/lang/String;

    if-eqz v0, :cond_e8

    iget-object v0, p0, Lorg/json/simple/parser/JSONParser;->token:Lorg/json/simple/parser/Yytoken;

    iget-object v0, v0, Lorg/json/simple/parser/Yytoken;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    const/4 v2, 0x4

    iput v2, p0, Lorg/json/simple/parser/JSONParser;->status:I

    new-instance v2, Ljava/lang/Integer;

    iget v3, p0, Lorg/json/simple/parser/JSONParser;->status:I

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    invoke-interface {p2, v0}, Lorg/json/simple/parser/ContentHandler;->startObjectEntry(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_15

    goto/16 :goto_65

    :cond_e8
    const/4 v0, -0x1

    iput v0, p0, Lorg/json/simple/parser/JSONParser;->status:I

    goto/16 :goto_15

    :pswitch_ed
    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-le v0, v5, :cond_104

    invoke-virtual {v1}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    invoke-direct {p0, v1}, Lorg/json/simple/parser/JSONParser;->peekStatus(Ljava/util/LinkedList;)I

    move-result v0

    iput v0, p0, Lorg/json/simple/parser/JSONParser;->status:I

    :goto_fc
    invoke-interface {p2}, Lorg/json/simple/parser/ContentHandler;->endObject()Z

    move-result v0

    if-nez v0, :cond_15

    goto/16 :goto_65

    :cond_104
    const/4 v0, 0x1

    iput v0, p0, Lorg/json/simple/parser/JSONParser;->status:I

    goto :goto_fc

    :pswitch_108
    invoke-direct {p0}, Lorg/json/simple/parser/JSONParser;->nextToken()V

    iget-object v0, p0, Lorg/json/simple/parser/JSONParser;->token:Lorg/json/simple/parser/Yytoken;

    iget v0, v0, Lorg/json/simple/parser/Yytoken;->type:I

    packed-switch v0, :pswitch_data_236

    :pswitch_112
    const/4 v0, -0x1

    iput v0, p0, Lorg/json/simple/parser/JSONParser;->status:I

    goto/16 :goto_15

    :pswitch_117
    invoke-virtual {v1}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    invoke-direct {p0, v1}, Lorg/json/simple/parser/JSONParser;->peekStatus(Ljava/util/LinkedList;)I

    move-result v0

    iput v0, p0, Lorg/json/simple/parser/JSONParser;->status:I

    iget-object v0, p0, Lorg/json/simple/parser/JSONParser;->token:Lorg/json/simple/parser/Yytoken;

    iget-object v0, v0, Lorg/json/simple/parser/Yytoken;->value:Ljava/lang/Object;

    invoke-interface {p2, v0}, Lorg/json/simple/parser/ContentHandler;->primitive(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_65

    invoke-interface {p2}, Lorg/json/simple/parser/ContentHandler;->endObjectEntry()Z

    move-result v0

    if-nez v0, :cond_15

    goto/16 :goto_65

    :pswitch_132
    invoke-virtual {v1}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    new-instance v0, Ljava/lang/Integer;

    const/4 v2, 0x5

    invoke-direct {v0, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    const/4 v0, 0x3

    iput v0, p0, Lorg/json/simple/parser/JSONParser;->status:I

    new-instance v0, Ljava/lang/Integer;

    iget v2, p0, Lorg/json/simple/parser/JSONParser;->status:I

    invoke-direct {v0, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    invoke-interface {p2}, Lorg/json/simple/parser/ContentHandler;->startArray()Z

    move-result v0

    if-nez v0, :cond_15

    goto/16 :goto_65

    :pswitch_153
    invoke-virtual {v1}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    new-instance v0, Ljava/lang/Integer;

    const/4 v2, 0x5

    invoke-direct {v0, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    const/4 v0, 0x2

    iput v0, p0, Lorg/json/simple/parser/JSONParser;->status:I

    new-instance v0, Ljava/lang/Integer;

    iget v2, p0, Lorg/json/simple/parser/JSONParser;->status:I

    invoke-direct {v0, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    invoke-interface {p2}, Lorg/json/simple/parser/ContentHandler;->startObject()Z

    move-result v0

    if-nez v0, :cond_15

    goto/16 :goto_65

    :pswitch_174
    invoke-virtual {v1}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    invoke-direct {p0, v1}, Lorg/json/simple/parser/JSONParser;->peekStatus(Ljava/util/LinkedList;)I

    move-result v0

    iput v0, p0, Lorg/json/simple/parser/JSONParser;->status:I

    invoke-interface {p2}, Lorg/json/simple/parser/ContentHandler;->endObjectEntry()Z

    move-result v0

    if-nez v0, :cond_15

    goto/16 :goto_65

    :pswitch_185
    invoke-direct {p0}, Lorg/json/simple/parser/JSONParser;->nextToken()V

    iget-object v0, p0, Lorg/json/simple/parser/JSONParser;->token:Lorg/json/simple/parser/Yytoken;

    iget v0, v0, Lorg/json/simple/parser/Yytoken;->type:I

    packed-switch v0, :pswitch_data_248

    :pswitch_18f
    const/4 v0, -0x1

    iput v0, p0, Lorg/json/simple/parser/JSONParser;->status:I

    goto/16 :goto_15

    :pswitch_194
    iget-object v0, p0, Lorg/json/simple/parser/JSONParser;->token:Lorg/json/simple/parser/Yytoken;

    iget-object v0, v0, Lorg/json/simple/parser/Yytoken;->value:Ljava/lang/Object;

    invoke-interface {p2, v0}, Lorg/json/simple/parser/ContentHandler;->primitive(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_15

    goto/16 :goto_65

    :pswitch_1a0
    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-le v0, v5, :cond_1b7

    invoke-virtual {v1}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    invoke-direct {p0, v1}, Lorg/json/simple/parser/JSONParser;->peekStatus(Ljava/util/LinkedList;)I

    move-result v0

    iput v0, p0, Lorg/json/simple/parser/JSONParser;->status:I

    :goto_1af
    invoke-interface {p2}, Lorg/json/simple/parser/ContentHandler;->endArray()Z

    move-result v0

    if-nez v0, :cond_15

    goto/16 :goto_65

    :cond_1b7
    const/4 v0, 0x1

    iput v0, p0, Lorg/json/simple/parser/JSONParser;->status:I

    goto :goto_1af

    :pswitch_1bb
    const/4 v0, 0x2

    iput v0, p0, Lorg/json/simple/parser/JSONParser;->status:I

    new-instance v0, Ljava/lang/Integer;

    iget v2, p0, Lorg/json/simple/parser/JSONParser;->status:I

    invoke-direct {v0, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    invoke-interface {p2}, Lorg/json/simple/parser/ContentHandler;->startObject()Z

    move-result v0

    if-nez v0, :cond_15

    goto/16 :goto_65

    :pswitch_1d0
    const/4 v0, 0x3

    iput v0, p0, Lorg/json/simple/parser/JSONParser;->status:I

    new-instance v0, Ljava/lang/Integer;

    iget v2, p0, Lorg/json/simple/parser/JSONParser;->status:I

    invoke-direct {v0, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    invoke-interface {p2}, Lorg/json/simple/parser/ContentHandler;->startArray()Z

    move-result v0

    if-nez v0, :cond_15

    goto/16 :goto_65

    :pswitch_1e5
    new-instance v0, Lorg/json/simple/parser/ParseException;

    invoke-virtual {p0}, Lorg/json/simple/parser/JSONParser;->getPosition()I

    move-result v1

    const/4 v2, 0x1

    iget-object v3, p0, Lorg/json/simple/parser/JSONParser;->token:Lorg/json/simple/parser/Yytoken;

    invoke-direct {v0, v1, v2, v3}, Lorg/json/simple/parser/ParseException;-><init>(IILjava/lang/Object;)V

    throw v0

    :cond_1f2
    iget-object v0, p0, Lorg/json/simple/parser/JSONParser;->token:Lorg/json/simple/parser/Yytoken;

    iget v0, v0, Lorg/json/simple/parser/Yytoken;->type:I
    :try_end_1f6
    .catch Ljava/io/IOException; {:try_start_b6 .. :try_end_1f6} :catch_26
    .catch Lorg/json/simple/parser/ParseException; {:try_start_b6 .. :try_end_1f6} :catch_4a
    .catch Ljava/lang/RuntimeException; {:try_start_b6 .. :try_end_1f6} :catch_9e
    .catch Ljava/lang/Error; {:try_start_b6 .. :try_end_1f6} :catch_b2

    if-ne v0, v4, :cond_10

    iput v4, p0, Lorg/json/simple/parser/JSONParser;->status:I

    new-instance v0, Lorg/json/simple/parser/ParseException;

    invoke-virtual {p0}, Lorg/json/simple/parser/JSONParser;->getPosition()I

    move-result v1

    iget-object v2, p0, Lorg/json/simple/parser/JSONParser;->token:Lorg/json/simple/parser/Yytoken;

    invoke-direct {v0, v1, v5, v2}, Lorg/json/simple/parser/ParseException;-><init>(IILjava/lang/Object;)V

    throw v0

    :pswitch_data_206
    .packed-switch -0x1
        :pswitch_1e5
        :pswitch_39
        :pswitch_8e
        :pswitch_b6
        :pswitch_185
        :pswitch_108
        :pswitch_174
        :pswitch_65
    .end packed-switch

    :pswitch_data_21a
    .packed-switch 0x0
        :pswitch_4e
        :pswitch_66
        :pswitch_46
        :pswitch_7a
    .end packed-switch

    :pswitch_data_226
    .packed-switch 0x0
        :pswitch_c5
        :pswitch_c0
        :pswitch_ed
        :pswitch_c0
        :pswitch_c0
        :pswitch_15
    .end packed-switch

    :pswitch_data_236
    .packed-switch 0x0
        :pswitch_117
        :pswitch_153
        :pswitch_112
        :pswitch_132
        :pswitch_112
        :pswitch_112
        :pswitch_15
    .end packed-switch

    :pswitch_data_248
    .packed-switch 0x0
        :pswitch_194
        :pswitch_1bb
        :pswitch_18f
        :pswitch_1d0
        :pswitch_1a0
        :pswitch_15
    .end packed-switch
.end method

.method public parse(Ljava/lang/String;Lorg/json/simple/parser/ContentHandler;)V
    .registers 4

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lorg/json/simple/parser/JSONParser;->parse(Ljava/lang/String;Lorg/json/simple/parser/ContentHandler;Z)V

    return-void
.end method

.method public parse(Ljava/lang/String;Lorg/json/simple/parser/ContentHandler;Z)V
    .registers 8

    new-instance v0, Ljava/io/StringReader;

    invoke-direct {v0, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    :try_start_5
    invoke-virtual {p0, v0, p2, p3}, Lorg/json/simple/parser/JSONParser;->parse(Ljava/io/Reader;Lorg/json/simple/parser/ContentHandler;Z)V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_8} :catch_9

    return-void

    :catch_9
    move-exception v0

    new-instance v1, Lorg/json/simple/parser/ParseException;

    const/4 v2, -0x1

    const/4 v3, 0x2

    invoke-direct {v1, v2, v3, v0}, Lorg/json/simple/parser/ParseException;-><init>(IILjava/lang/Object;)V

    throw v1
.end method

.method public reset()V
    .registers 3

    const/4 v1, 0x0

    iput-object v1, p0, Lorg/json/simple/parser/JSONParser;->token:Lorg/json/simple/parser/Yytoken;

    const/4 v0, 0x0

    iput v0, p0, Lorg/json/simple/parser/JSONParser;->status:I

    iput-object v1, p0, Lorg/json/simple/parser/JSONParser;->handlerStatusStack:Ljava/util/LinkedList;

    return-void
.end method

.method public reset(Ljava/io/Reader;)V
    .registers 3

    iget-object v0, p0, Lorg/json/simple/parser/JSONParser;->lexer:Lorg/json/simple/parser/Yylex;

    invoke-virtual {v0, p1}, Lorg/json/simple/parser/Yylex;->yyreset(Ljava/io/Reader;)V

    invoke-virtual {p0}, Lorg/json/simple/parser/JSONParser;->reset()V

    return-void
.end method
