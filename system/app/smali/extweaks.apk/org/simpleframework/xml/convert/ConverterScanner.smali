.class Lorg/simpleframework/xml/convert/ConverterScanner;
.super Ljava/lang/Object;
.source "ConverterScanner.java"


# instance fields
.field private final builder:Lorg/simpleframework/xml/convert/ScannerBuilder;

.field private final factory:Lorg/simpleframework/xml/convert/ConverterFactory;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    new-instance v0, Lorg/simpleframework/xml/convert/ConverterFactory;

    invoke-direct {v0}, Lorg/simpleframework/xml/convert/ConverterFactory;-><init>()V

    iput-object v0, p0, Lorg/simpleframework/xml/convert/ConverterScanner;->factory:Lorg/simpleframework/xml/convert/ConverterFactory;

    .line 61
    new-instance v0, Lorg/simpleframework/xml/convert/ScannerBuilder;

    invoke-direct {v0}, Lorg/simpleframework/xml/convert/ScannerBuilder;-><init>()V

    iput-object v0, p0, Lorg/simpleframework/xml/convert/ConverterScanner;->builder:Lorg/simpleframework/xml/convert/ScannerBuilder;

    .line 62
    return-void
.end method

.method private getAnnotation(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;
    .registers 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/annotation/Annotation;",
            ">(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 189
    iget-object v0, p0, Lorg/simpleframework/xml/convert/ConverterScanner;->builder:Lorg/simpleframework/xml/convert/ScannerBuilder;

    invoke-virtual {v0, p1}, Lorg/simpleframework/xml/convert/ScannerBuilder;->build(Ljava/lang/Class;)Lorg/simpleframework/xml/convert/Scanner;

    move-result-object v0

    invoke-interface {v0, p2}, Lorg/simpleframework/xml/convert/Scanner;->scan(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    return-object v0
.end method

.method private getConvert(Ljava/lang/Class;)Lorg/simpleframework/xml/convert/Convert;
    .registers 6
    .parameter

    .prologue
    .line 165
    const-class v0, Lorg/simpleframework/xml/convert/Convert;

    invoke-direct {p0, p1, v0}, Lorg/simpleframework/xml/convert/ConverterScanner;->getAnnotation(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lorg/simpleframework/xml/convert/Convert;

    .line 167
    if-eqz v0, :cond_22

    .line 168
    const-class v1, Lorg/simpleframework/xml/Root;

    invoke-direct {p0, p1, v1}, Lorg/simpleframework/xml/convert/ConverterScanner;->getAnnotation(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v1

    check-cast v1, Lorg/simpleframework/xml/Root;

    .line 170
    if-nez v1, :cond_22

    .line 171
    new-instance v0, Lorg/simpleframework/xml/convert/ConvertException;

    const-string v1, "Root annotation required for %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-direct {v0, v1, v2}, Lorg/simpleframework/xml/convert/ConvertException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    .line 174
    :cond_22
    return-object v0
.end method

.method private getConvert(Lorg/simpleframework/xml/strategy/Type;)Lorg/simpleframework/xml/convert/Convert;
    .registers 6
    .parameter

    .prologue
    .line 141
    const-class v0, Lorg/simpleframework/xml/convert/Convert;

    invoke-interface {p1, v0}, Lorg/simpleframework/xml/strategy/Type;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lorg/simpleframework/xml/convert/Convert;

    .line 143
    if-eqz v0, :cond_22

    .line 144
    const-class v1, Lorg/simpleframework/xml/Element;

    invoke-interface {p1, v1}, Lorg/simpleframework/xml/strategy/Type;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v1

    check-cast v1, Lorg/simpleframework/xml/Element;

    .line 146
    if-nez v1, :cond_22

    .line 147
    new-instance v0, Lorg/simpleframework/xml/convert/ConvertException;

    const-string v1, "Element annotation required for %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-direct {v0, v1, v2}, Lorg/simpleframework/xml/convert/ConvertException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    .line 150
    :cond_22
    return-object v0
.end method

.method private getConvert(Lorg/simpleframework/xml/strategy/Type;Ljava/lang/Class;)Lorg/simpleframework/xml/convert/Convert;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 121
    invoke-direct {p0, p1}, Lorg/simpleframework/xml/convert/ConverterScanner;->getConvert(Lorg/simpleframework/xml/strategy/Type;)Lorg/simpleframework/xml/convert/Convert;

    move-result-object v0

    .line 123
    if-nez v0, :cond_a

    .line 124
    invoke-direct {p0, p2}, Lorg/simpleframework/xml/convert/ConverterScanner;->getConvert(Ljava/lang/Class;)Lorg/simpleframework/xml/convert/Convert;

    move-result-object v0

    .line 126
    :cond_a
    return-object v0
.end method

.method private getType(Lorg/simpleframework/xml/strategy/Type;Ljava/lang/Object;)Ljava/lang/Class;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 222
    invoke-interface {p1}, Lorg/simpleframework/xml/strategy/Type;->getType()Ljava/lang/Class;

    move-result-object v0

    .line 224
    if-eqz p2, :cond_a

    .line 225
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 227
    :cond_a
    return-object v0
.end method

.method private getType(Lorg/simpleframework/xml/strategy/Type;Lorg/simpleframework/xml/strategy/Value;)Ljava/lang/Class;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 203
    invoke-interface {p1}, Lorg/simpleframework/xml/strategy/Type;->getType()Ljava/lang/Class;

    move-result-object v0

    .line 205
    if-eqz p2, :cond_a

    .line 206
    invoke-interface {p2}, Lorg/simpleframework/xml/strategy/Value;->getType()Ljava/lang/Class;

    move-result-object v0

    .line 208
    :cond_a
    return-object v0
.end method


# virtual methods
.method public getConverter(Lorg/simpleframework/xml/strategy/Type;Ljava/lang/Object;)Lorg/simpleframework/xml/convert/Converter;
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 99
    invoke-direct {p0, p1, p2}, Lorg/simpleframework/xml/convert/ConverterScanner;->getType(Lorg/simpleframework/xml/strategy/Type;Ljava/lang/Object;)Ljava/lang/Class;

    move-result-object v0

    .line 100
    invoke-direct {p0, p1, v0}, Lorg/simpleframework/xml/convert/ConverterScanner;->getConvert(Lorg/simpleframework/xml/strategy/Type;Ljava/lang/Class;)Lorg/simpleframework/xml/convert/Convert;

    move-result-object v0

    .line 102
    if-eqz v0, :cond_11

    .line 103
    iget-object v1, p0, Lorg/simpleframework/xml/convert/ConverterScanner;->factory:Lorg/simpleframework/xml/convert/ConverterFactory;

    invoke-virtual {v1, v0}, Lorg/simpleframework/xml/convert/ConverterFactory;->getInstance(Lorg/simpleframework/xml/convert/Convert;)Lorg/simpleframework/xml/convert/Converter;

    move-result-object v0

    .line 105
    :goto_10
    return-object v0

    :cond_11
    const/4 v0, 0x0

    goto :goto_10
.end method

.method public getConverter(Lorg/simpleframework/xml/strategy/Type;Lorg/simpleframework/xml/strategy/Value;)Lorg/simpleframework/xml/convert/Converter;
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 77
    invoke-direct {p0, p1, p2}, Lorg/simpleframework/xml/convert/ConverterScanner;->getType(Lorg/simpleframework/xml/strategy/Type;Lorg/simpleframework/xml/strategy/Value;)Ljava/lang/Class;

    move-result-object v0

    .line 78
    invoke-direct {p0, p1, v0}, Lorg/simpleframework/xml/convert/ConverterScanner;->getConvert(Lorg/simpleframework/xml/strategy/Type;Ljava/lang/Class;)Lorg/simpleframework/xml/convert/Convert;

    move-result-object v0

    .line 80
    if-eqz v0, :cond_11

    .line 81
    iget-object v1, p0, Lorg/simpleframework/xml/convert/ConverterScanner;->factory:Lorg/simpleframework/xml/convert/ConverterFactory;

    invoke-virtual {v1, v0}, Lorg/simpleframework/xml/convert/ConverterFactory;->getInstance(Lorg/simpleframework/xml/convert/Convert;)Lorg/simpleframework/xml/convert/Converter;

    move-result-object v0

    .line 83
    :goto_10
    return-object v0

    :cond_11
    const/4 v0, 0x0

    goto :goto_10
.end method
