.class public Lorg/apache/james/mime4j/field/UnstructuredField$Parser;
.super Ljava/lang/Object;
.source "UnstructuredField.java"

# interfaces
.implements Lorg/apache/james/mime4j/field/FieldParser;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/james/mime4j/field/UnstructuredField;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Parser"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public parse(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/james/mime4j/field/Field;
    .registers 6
    .parameter "name"
    .parameter "body"
    .parameter "raw"

    .prologue
    .line 45
    invoke-static {p2}, Lorg/apache/james/mime4j/decoder/DecoderUtil;->decodeEncodedWords(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 46
    .local v0, value:Ljava/lang/String;
    new-instance v1, Lorg/apache/james/mime4j/field/UnstructuredField;

    invoke-direct {v1, p1, p2, p3, v0}, Lorg/apache/james/mime4j/field/UnstructuredField;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method
