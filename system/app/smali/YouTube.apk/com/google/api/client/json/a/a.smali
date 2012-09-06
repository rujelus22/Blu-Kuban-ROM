.class public final Lcom/google/api/client/json/a/a;
.super Lcom/google/api/client/json/c;
.source "SourceFile"


# instance fields
.field private final a:Lorg/codehaus/jackson/a;


# direct methods
.method public constructor <init>()V
    .registers 4

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/google/api/client/json/c;-><init>()V

    .line 44
    new-instance v0, Lorg/codehaus/jackson/a;

    invoke-direct {v0}, Lorg/codehaus/jackson/a;-><init>()V

    iput-object v0, p0, Lcom/google/api/client/json/a/a;->a:Lorg/codehaus/jackson/a;

    .line 48
    iget-object v0, p0, Lcom/google/api/client/json/a/a;->a:Lorg/codehaus/jackson/a;

    sget-object v1, Lorg/codehaus/jackson/JsonGenerator$Feature;->AUTO_CLOSE_JSON_CONTENT:Lorg/codehaus/jackson/JsonGenerator$Feature;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/codehaus/jackson/a;->a(Lorg/codehaus/jackson/JsonGenerator$Feature;Z)Lorg/codehaus/jackson/a;

    .line 49
    return-void
.end method

.method static a(Lorg/codehaus/jackson/JsonToken;)Lcom/google/api/client/json/JsonToken;
    .registers 3
    .parameter

    .prologue
    .line 81
    if-nez p0, :cond_4

    .line 82
    const/4 v0, 0x0

    .line 108
    :goto_3
    return-object v0

    .line 84
    :cond_4
    sget-object v0, Lcom/google/api/client/json/a/b;->a:[I

    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonToken;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_34

    .line 108
    sget-object v0, Lcom/google/api/client/json/JsonToken;->NOT_AVAILABLE:Lcom/google/api/client/json/JsonToken;

    goto :goto_3

    .line 86
    :pswitch_12
    sget-object v0, Lcom/google/api/client/json/JsonToken;->END_ARRAY:Lcom/google/api/client/json/JsonToken;

    goto :goto_3

    .line 88
    :pswitch_15
    sget-object v0, Lcom/google/api/client/json/JsonToken;->START_ARRAY:Lcom/google/api/client/json/JsonToken;

    goto :goto_3

    .line 90
    :pswitch_18
    sget-object v0, Lcom/google/api/client/json/JsonToken;->END_OBJECT:Lcom/google/api/client/json/JsonToken;

    goto :goto_3

    .line 92
    :pswitch_1b
    sget-object v0, Lcom/google/api/client/json/JsonToken;->START_OBJECT:Lcom/google/api/client/json/JsonToken;

    goto :goto_3

    .line 94
    :pswitch_1e
    sget-object v0, Lcom/google/api/client/json/JsonToken;->VALUE_FALSE:Lcom/google/api/client/json/JsonToken;

    goto :goto_3

    .line 96
    :pswitch_21
    sget-object v0, Lcom/google/api/client/json/JsonToken;->VALUE_TRUE:Lcom/google/api/client/json/JsonToken;

    goto :goto_3

    .line 98
    :pswitch_24
    sget-object v0, Lcom/google/api/client/json/JsonToken;->VALUE_NULL:Lcom/google/api/client/json/JsonToken;

    goto :goto_3

    .line 100
    :pswitch_27
    sget-object v0, Lcom/google/api/client/json/JsonToken;->VALUE_STRING:Lcom/google/api/client/json/JsonToken;

    goto :goto_3

    .line 102
    :pswitch_2a
    sget-object v0, Lcom/google/api/client/json/JsonToken;->VALUE_NUMBER_FLOAT:Lcom/google/api/client/json/JsonToken;

    goto :goto_3

    .line 104
    :pswitch_2d
    sget-object v0, Lcom/google/api/client/json/JsonToken;->VALUE_NUMBER_INT:Lcom/google/api/client/json/JsonToken;

    goto :goto_3

    .line 106
    :pswitch_30
    sget-object v0, Lcom/google/api/client/json/JsonToken;->FIELD_NAME:Lcom/google/api/client/json/JsonToken;

    goto :goto_3

    .line 84
    nop

    :pswitch_data_34
    .packed-switch 0x1
        :pswitch_12
        :pswitch_15
        :pswitch_18
        :pswitch_1b
        :pswitch_1e
        :pswitch_21
        :pswitch_24
        :pswitch_27
        :pswitch_2a
        :pswitch_2d
        :pswitch_30
    .end packed-switch
.end method


# virtual methods
.method public final a(Ljava/io/OutputStream;)Lcom/google/api/client/json/d;
    .registers 5
    .parameter

    .prologue
    .line 53
    new-instance v0, Lcom/google/api/client/json/a/c;

    iget-object v1, p0, Lcom/google/api/client/json/a/a;->a:Lorg/codehaus/jackson/a;

    sget-object v2, Lorg/codehaus/jackson/JsonEncoding;->UTF8:Lorg/codehaus/jackson/JsonEncoding;

    invoke-virtual {v1, p1, v2}, Lorg/codehaus/jackson/a;->a(Ljava/io/OutputStream;Lorg/codehaus/jackson/JsonEncoding;)Lorg/codehaus/jackson/JsonGenerator;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/google/api/client/json/a/c;-><init>(Lcom/google/api/client/json/a/a;Lorg/codehaus/jackson/JsonGenerator;)V

    return-object v0
.end method

.method public final a(Ljava/io/InputStream;)Lcom/google/api/client/json/e;
    .registers 4
    .parameter

    .prologue
    .line 70
    invoke-static {p1}, Lcom/google/common/base/ag;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    new-instance v0, Lcom/google/api/client/json/a/d;

    iget-object v1, p0, Lcom/google/api/client/json/a/a;->a:Lorg/codehaus/jackson/a;

    invoke-virtual {v1, p1}, Lorg/codehaus/jackson/a;->a(Ljava/io/InputStream;)Lorg/codehaus/jackson/JsonParser;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/google/api/client/json/a/d;-><init>(Lcom/google/api/client/json/a/a;Lorg/codehaus/jackson/JsonParser;)V

    return-object v0
.end method
