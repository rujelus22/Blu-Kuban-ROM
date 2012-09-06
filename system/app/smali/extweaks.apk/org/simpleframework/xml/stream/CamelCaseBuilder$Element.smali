.class Lorg/simpleframework/xml/stream/CamelCaseBuilder$Element;
.super Lorg/simpleframework/xml/stream/CamelCaseBuilder$Attribute;
.source "CamelCaseBuilder.java"


# instance fields
.field private capital:Z

.field final synthetic this$0:Lorg/simpleframework/xml/stream/CamelCaseBuilder;


# direct methods
.method private constructor <init>(Lorg/simpleframework/xml/stream/CamelCaseBuilder;Ljava/lang/String;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 180
    iput-object p1, p0, Lorg/simpleframework/xml/stream/CamelCaseBuilder$Element;->this$0:Lorg/simpleframework/xml/stream/CamelCaseBuilder;

    .line 181
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/simpleframework/xml/stream/CamelCaseBuilder$Attribute;-><init>(Lorg/simpleframework/xml/stream/CamelCaseBuilder;Ljava/lang/String;Lorg/simpleframework/xml/stream/CamelCaseBuilder$1;)V

    .line 182
    return-void
.end method

.method synthetic constructor <init>(Lorg/simpleframework/xml/stream/CamelCaseBuilder;Ljava/lang/String;Lorg/simpleframework/xml/stream/CamelCaseBuilder$1;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 166
    invoke-direct {p0, p1, p2}, Lorg/simpleframework/xml/stream/CamelCaseBuilder$Element;-><init>(Lorg/simpleframework/xml/stream/CamelCaseBuilder;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected parse([CII)V
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 195
    iget-object v0, p0, Lorg/simpleframework/xml/stream/CamelCaseBuilder$Element;->this$0:Lorg/simpleframework/xml/stream/CamelCaseBuilder;

    #getter for: Lorg/simpleframework/xml/stream/CamelCaseBuilder;->element:Z
    invoke-static {v0}, Lorg/simpleframework/xml/stream/CamelCaseBuilder;->access$300(Lorg/simpleframework/xml/stream/CamelCaseBuilder;)Z

    move-result v0

    if-nez v0, :cond_c

    iget-boolean v0, p0, Lorg/simpleframework/xml/stream/CamelCaseBuilder$Element;->capital:Z

    if-eqz v0, :cond_14

    .line 196
    :cond_c
    aget-char v0, p1, p2

    invoke-virtual {p0, v0}, Lorg/simpleframework/xml/stream/CamelCaseBuilder$Element;->toUpper(C)C

    move-result v0

    aput-char v0, p1, p2

    .line 198
    :cond_14
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/simpleframework/xml/stream/CamelCaseBuilder$Element;->capital:Z

    .line 199
    return-void
.end method
