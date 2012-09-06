.class Lorg/simpleframework/xml/stream/CamelCaseBuilder$Attribute;
.super Lorg/simpleframework/xml/stream/Splitter;
.source "CamelCaseBuilder.java"


# instance fields
.field private capital:Z

.field final synthetic this$0:Lorg/simpleframework/xml/stream/CamelCaseBuilder;


# direct methods
.method private constructor <init>(Lorg/simpleframework/xml/stream/CamelCaseBuilder;Ljava/lang/String;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 123
    iput-object p1, p0, Lorg/simpleframework/xml/stream/CamelCaseBuilder$Attribute;->this$0:Lorg/simpleframework/xml/stream/CamelCaseBuilder;

    .line 124
    invoke-direct {p0, p2}, Lorg/simpleframework/xml/stream/Splitter;-><init>(Ljava/lang/String;)V

    .line 125
    return-void
.end method

.method synthetic constructor <init>(Lorg/simpleframework/xml/stream/CamelCaseBuilder;Ljava/lang/String;Lorg/simpleframework/xml/stream/CamelCaseBuilder$1;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 109
    invoke-direct {p0, p1, p2}, Lorg/simpleframework/xml/stream/CamelCaseBuilder$Attribute;-><init>(Lorg/simpleframework/xml/stream/CamelCaseBuilder;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected commit([CII)V
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 155
    iget-object v0, p0, Lorg/simpleframework/xml/stream/CamelCaseBuilder$Attribute;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2, p3}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 156
    return-void
.end method

.method protected parse([CII)V
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 138
    iget-object v0, p0, Lorg/simpleframework/xml/stream/CamelCaseBuilder$Attribute;->this$0:Lorg/simpleframework/xml/stream/CamelCaseBuilder;

    #getter for: Lorg/simpleframework/xml/stream/CamelCaseBuilder;->attribute:Z
    invoke-static {v0}, Lorg/simpleframework/xml/stream/CamelCaseBuilder;->access$200(Lorg/simpleframework/xml/stream/CamelCaseBuilder;)Z

    move-result v0

    if-nez v0, :cond_c

    iget-boolean v0, p0, Lorg/simpleframework/xml/stream/CamelCaseBuilder$Attribute;->capital:Z

    if-eqz v0, :cond_14

    .line 139
    :cond_c
    aget-char v0, p1, p2

    invoke-virtual {p0, v0}, Lorg/simpleframework/xml/stream/CamelCaseBuilder$Attribute;->toUpper(C)C

    move-result v0

    aput-char v0, p1, p2

    .line 141
    :cond_14
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/simpleframework/xml/stream/CamelCaseBuilder$Attribute;->capital:Z

    .line 142
    return-void
.end method
