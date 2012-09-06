.class public final Lorg/apache/james/mime4j/parser/Event;
.super Ljava/lang/Object;


# static fields
.field public static final HEADERS_PREMATURE_END:Lorg/apache/james/mime4j/parser/Event;

.field public static final INALID_HEADER:Lorg/apache/james/mime4j/parser/Event;

.field public static final MIME_BODY_PREMATURE_END:Lorg/apache/james/mime4j/parser/Event;


# instance fields
.field private final code:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lorg/apache/james/mime4j/parser/Event;

    const-string v1, "Body part ended prematurely. Boundary detected in header or EOF reached."

    invoke-direct {v0, v1}, Lorg/apache/james/mime4j/parser/Event;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/apache/james/mime4j/parser/Event;->MIME_BODY_PREMATURE_END:Lorg/apache/james/mime4j/parser/Event;

    new-instance v0, Lorg/apache/james/mime4j/parser/Event;

    const-string v1, "Unexpected end of headers detected. Higher level boundary detected or EOF reached."

    invoke-direct {v0, v1}, Lorg/apache/james/mime4j/parser/Event;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/apache/james/mime4j/parser/Event;->HEADERS_PREMATURE_END:Lorg/apache/james/mime4j/parser/Event;

    new-instance v0, Lorg/apache/james/mime4j/parser/Event;

    const-string v1, "Invalid header encountered"

    invoke-direct {v0, v1}, Lorg/apache/james/mime4j/parser/Event;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/apache/james/mime4j/parser/Event;->INALID_HEADER:Lorg/apache/james/mime4j/parser/Event;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_d

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Code may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_d
    iput-object p1, p0, Lorg/apache/james/mime4j/parser/Event;->code:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 4

    const/4 v0, 0x0

    if-nez p1, :cond_4

    :cond_3
    :goto_3
    return v0

    :cond_4
    if-ne p0, p1, :cond_8

    const/4 v0, 0x1

    goto :goto_3

    :cond_8
    instance-of v1, p1, Lorg/apache/james/mime4j/parser/Event;

    if-eqz v1, :cond_3

    check-cast p1, Lorg/apache/james/mime4j/parser/Event;

    iget-object v0, p0, Lorg/apache/james/mime4j/parser/Event;->code:Ljava/lang/String;

    iget-object v1, p1, Lorg/apache/james/mime4j/parser/Event;->code:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_3
.end method

.method public hashCode()I
    .registers 2

    iget-object v0, p0, Lorg/apache/james/mime4j/parser/Event;->code:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lorg/apache/james/mime4j/parser/Event;->code:Ljava/lang/String;

    return-object v0
.end method
