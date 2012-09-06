.class public Lorg/apache/james/mime4j/field/ParseException;
.super Lorg/apache/james/mime4j/MimeException;


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method protected constructor <init>(Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lorg/apache/james/mime4j/MimeException;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lorg/apache/james/mime4j/MimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method protected constructor <init>(Ljava/lang/Throwable;)V
    .registers 2

    invoke-direct {p0, p1}, Lorg/apache/james/mime4j/MimeException;-><init>(Ljava/lang/Throwable;)V

    return-void
.end method
