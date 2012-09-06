.class public Lorg/apache/james/mime4j/message/BodyCopier;
.super Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static copy(Lorg/apache/james/mime4j/message/Body;)Lorg/apache/james/mime4j/message/Body;
    .registers 3

    if-nez p0, :cond_a

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Body is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    instance-of v0, p0, Lorg/apache/james/mime4j/message/Message;

    if-eqz v0, :cond_16

    new-instance v0, Lorg/apache/james/mime4j/message/Message;

    check-cast p0, Lorg/apache/james/mime4j/message/Message;

    invoke-direct {v0, p0}, Lorg/apache/james/mime4j/message/Message;-><init>(Lorg/apache/james/mime4j/message/Message;)V

    :goto_15
    return-object v0

    :cond_16
    instance-of v0, p0, Lorg/apache/james/mime4j/message/Multipart;

    if-eqz v0, :cond_22

    new-instance v0, Lorg/apache/james/mime4j/message/Multipart;

    check-cast p0, Lorg/apache/james/mime4j/message/Multipart;

    invoke-direct {v0, p0}, Lorg/apache/james/mime4j/message/Multipart;-><init>(Lorg/apache/james/mime4j/message/Multipart;)V

    goto :goto_15

    :cond_22
    instance-of v0, p0, Lorg/apache/james/mime4j/message/SingleBody;

    if-eqz v0, :cond_2d

    check-cast p0, Lorg/apache/james/mime4j/message/SingleBody;

    invoke-virtual {p0}, Lorg/apache/james/mime4j/message/SingleBody;->copy()Lorg/apache/james/mime4j/message/SingleBody;

    move-result-object v0

    goto :goto_15

    :cond_2d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unsupported body class"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
