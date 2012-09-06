.class public abstract Lorg/apache/james/mime4j/message/SingleBody;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/apache/james/mime4j/message/Body;


# instance fields
.field private parent:Lorg/apache/james/mime4j/message/Entity;


# direct methods
.method protected constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/james/mime4j/message/SingleBody;->parent:Lorg/apache/james/mime4j/message/Entity;

    return-void
.end method


# virtual methods
.method public copy()Lorg/apache/james/mime4j/message/SingleBody;
    .registers 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public dispose()V
    .registers 1

    return-void
.end method

.method public getParent()Lorg/apache/james/mime4j/message/Entity;
    .registers 2

    iget-object v0, p0, Lorg/apache/james/mime4j/message/SingleBody;->parent:Lorg/apache/james/mime4j/message/Entity;

    return-object v0
.end method

.method public setParent(Lorg/apache/james/mime4j/message/Entity;)V
    .registers 2

    iput-object p1, p0, Lorg/apache/james/mime4j/message/SingleBody;->parent:Lorg/apache/james/mime4j/message/Entity;

    return-void
.end method

.method public abstract writeTo(Ljava/io/OutputStream;)V
.end method
