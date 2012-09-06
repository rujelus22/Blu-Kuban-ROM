.class public Lorg/apache/james/mime4j/message/BodyPart;
.super Lorg/apache/james/mime4j/message/Entity;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lorg/apache/james/mime4j/message/Entity;-><init>()V

    return-void
.end method

.method public constructor <init>(Lorg/apache/james/mime4j/message/BodyPart;)V
    .registers 2

    invoke-direct {p0, p1}, Lorg/apache/james/mime4j/message/Entity;-><init>(Lorg/apache/james/mime4j/message/Entity;)V

    return-void
.end method
