.class Lorg/simpleframework/xml/stream/CamelCaseBuilder;
.super Ljava/lang/Object;
.source "CamelCaseBuilder.java"

# interfaces
.implements Lorg/simpleframework/xml/stream/Style;


# instance fields
.field private final attribute:Z

.field private final element:Z


# direct methods
.method public constructor <init>(ZZ)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput-boolean p2, p0, Lorg/simpleframework/xml/stream/CamelCaseBuilder;->attribute:Z

    .line 65
    iput-boolean p1, p0, Lorg/simpleframework/xml/stream/CamelCaseBuilder;->element:Z

    .line 66
    return-void
.end method

.method static synthetic access$200(Lorg/simpleframework/xml/stream/CamelCaseBuilder;)Z
    .registers 2
    .parameter

    .prologue
    .line 42
    iget-boolean v0, p0, Lorg/simpleframework/xml/stream/CamelCaseBuilder;->attribute:Z

    return v0
.end method

.method static synthetic access$300(Lorg/simpleframework/xml/stream/CamelCaseBuilder;)Z
    .registers 2
    .parameter

    .prologue
    .line 42
    iget-boolean v0, p0, Lorg/simpleframework/xml/stream/CamelCaseBuilder;->element:Z

    return v0
.end method


# virtual methods
.method public getAttribute(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 79
    if-eqz p1, :cond_c

    .line 80
    new-instance v1, Lorg/simpleframework/xml/stream/CamelCaseBuilder$Attribute;

    invoke-direct {v1, p0, p1, v0}, Lorg/simpleframework/xml/stream/CamelCaseBuilder$Attribute;-><init>(Lorg/simpleframework/xml/stream/CamelCaseBuilder;Ljava/lang/String;Lorg/simpleframework/xml/stream/CamelCaseBuilder$1;)V

    invoke-virtual {v1}, Lorg/simpleframework/xml/stream/CamelCaseBuilder$Attribute;->process()Ljava/lang/String;

    move-result-object v0

    .line 82
    :cond_c
    return-object v0
.end method

.method public getElement(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 96
    if-eqz p1, :cond_c

    .line 97
    new-instance v1, Lorg/simpleframework/xml/stream/CamelCaseBuilder$Element;

    invoke-direct {v1, p0, p1, v0}, Lorg/simpleframework/xml/stream/CamelCaseBuilder$Element;-><init>(Lorg/simpleframework/xml/stream/CamelCaseBuilder;Ljava/lang/String;Lorg/simpleframework/xml/stream/CamelCaseBuilder$1;)V

    invoke-virtual {v1}, Lorg/simpleframework/xml/stream/CamelCaseBuilder$Element;->process()Ljava/lang/String;

    move-result-object v0

    .line 99
    :cond_c
    return-object v0
.end method
