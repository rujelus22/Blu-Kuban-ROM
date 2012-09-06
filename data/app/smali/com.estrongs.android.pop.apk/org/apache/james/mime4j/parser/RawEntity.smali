.class public Lorg/apache/james/mime4j/parser/RawEntity;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/apache/james/mime4j/parser/EntityStateMachine;


# instance fields
.field private state:I

.field private final stream:Ljava/io/InputStream;


# direct methods
.method constructor <init>(Ljava/io/InputStream;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/james/mime4j/parser/RawEntity;->stream:Ljava/io/InputStream;

    const/4 v0, 0x2

    iput v0, p0, Lorg/apache/james/mime4j/parser/RawEntity;->state:I

    return-void
.end method


# virtual methods
.method public advance()Lorg/apache/james/mime4j/parser/EntityStateMachine;
    .registers 2

    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/james/mime4j/parser/RawEntity;->state:I

    const/4 v0, 0x0

    return-object v0
.end method

.method public getBodyDescriptor()Lorg/apache/james/mime4j/descriptor/BodyDescriptor;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public getContentStream()Ljava/io/InputStream;
    .registers 2

    iget-object v0, p0, Lorg/apache/james/mime4j/parser/RawEntity;->stream:Ljava/io/InputStream;

    return-object v0
.end method

.method public getField()Lorg/apache/james/mime4j/parser/Field;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public getFieldName()Ljava/lang/String;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public getFieldValue()Ljava/lang/String;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public getState()I
    .registers 2

    iget v0, p0, Lorg/apache/james/mime4j/parser/RawEntity;->state:I

    return v0
.end method

.method public setRecursionMode(I)V
    .registers 2

    return-void
.end method
