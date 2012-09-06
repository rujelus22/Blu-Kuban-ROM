.class public Lorg/apache/james/mime4j/message/Multipart;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/apache/james/mime4j/message/Body;


# instance fields
.field private bodyParts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/apache/james/mime4j/message/BodyPart;",
            ">;"
        }
    .end annotation
.end field

.field private epilogue:Lorg/apache/james/mime4j/util/ByteSequence;

.field private transient epilogueStrCache:Ljava/lang/String;

.field private parent:Lorg/apache/james/mime4j/message/Entity;

.field private preamble:Lorg/apache/james/mime4j/util/ByteSequence;

.field private transient preambleStrCache:Ljava/lang/String;

.field private subType:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lorg/apache/james/mime4j/message/Multipart;->bodyParts:Ljava/util/List;

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/james/mime4j/message/Multipart;->parent:Lorg/apache/james/mime4j/message/Entity;

    sget-object v0, Lorg/apache/james/mime4j/util/ByteSequence;->EMPTY:Lorg/apache/james/mime4j/util/ByteSequence;

    iput-object v0, p0, Lorg/apache/james/mime4j/message/Multipart;->preamble:Lorg/apache/james/mime4j/util/ByteSequence;

    const-string v0, ""

    iput-object v0, p0, Lorg/apache/james/mime4j/message/Multipart;->preambleStrCache:Ljava/lang/String;

    sget-object v0, Lorg/apache/james/mime4j/util/ByteSequence;->EMPTY:Lorg/apache/james/mime4j/util/ByteSequence;

    iput-object v0, p0, Lorg/apache/james/mime4j/message/Multipart;->epilogue:Lorg/apache/james/mime4j/util/ByteSequence;

    const-string v0, ""

    iput-object v0, p0, Lorg/apache/james/mime4j/message/Multipart;->epilogueStrCache:Ljava/lang/String;

    iput-object p1, p0, Lorg/apache/james/mime4j/message/Multipart;->subType:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lorg/apache/james/mime4j/message/Multipart;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lorg/apache/james/mime4j/message/Multipart;->bodyParts:Ljava/util/List;

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/james/mime4j/message/Multipart;->parent:Lorg/apache/james/mime4j/message/Entity;

    iget-object v0, p1, Lorg/apache/james/mime4j/message/Multipart;->preamble:Lorg/apache/james/mime4j/util/ByteSequence;

    iput-object v0, p0, Lorg/apache/james/mime4j/message/Multipart;->preamble:Lorg/apache/james/mime4j/util/ByteSequence;

    iget-object v0, p1, Lorg/apache/james/mime4j/message/Multipart;->preambleStrCache:Ljava/lang/String;

    iput-object v0, p0, Lorg/apache/james/mime4j/message/Multipart;->preambleStrCache:Ljava/lang/String;

    iget-object v0, p1, Lorg/apache/james/mime4j/message/Multipart;->epilogue:Lorg/apache/james/mime4j/util/ByteSequence;

    iput-object v0, p0, Lorg/apache/james/mime4j/message/Multipart;->epilogue:Lorg/apache/james/mime4j/util/ByteSequence;

    iget-object v0, p1, Lorg/apache/james/mime4j/message/Multipart;->epilogueStrCache:Ljava/lang/String;

    iput-object v0, p0, Lorg/apache/james/mime4j/message/Multipart;->epilogueStrCache:Ljava/lang/String;

    iget-object v0, p1, Lorg/apache/james/mime4j/message/Multipart;->bodyParts:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_23
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_38

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/james/mime4j/message/BodyPart;

    new-instance v2, Lorg/apache/james/mime4j/message/BodyPart;

    invoke-direct {v2, v0}, Lorg/apache/james/mime4j/message/BodyPart;-><init>(Lorg/apache/james/mime4j/message/BodyPart;)V

    invoke-virtual {p0, v2}, Lorg/apache/james/mime4j/message/Multipart;->addBodyPart(Lorg/apache/james/mime4j/message/BodyPart;)V

    goto :goto_23

    :cond_38
    iget-object v0, p1, Lorg/apache/james/mime4j/message/Multipart;->subType:Ljava/lang/String;

    iput-object v0, p0, Lorg/apache/james/mime4j/message/Multipart;->subType:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public addBodyPart(Lorg/apache/james/mime4j/message/BodyPart;)V
    .registers 3

    if-nez p1, :cond_8

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_8
    iget-object v0, p0, Lorg/apache/james/mime4j/message/Multipart;->bodyParts:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lorg/apache/james/mime4j/message/Multipart;->parent:Lorg/apache/james/mime4j/message/Entity;

    invoke-virtual {p1, v0}, Lorg/apache/james/mime4j/message/BodyPart;->setParent(Lorg/apache/james/mime4j/message/Entity;)V

    return-void
.end method

.method public addBodyPart(Lorg/apache/james/mime4j/message/BodyPart;I)V
    .registers 4

    if-nez p1, :cond_8

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_8
    iget-object v0, p0, Lorg/apache/james/mime4j/message/Multipart;->bodyParts:Ljava/util/List;

    invoke-interface {v0, p2, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    iget-object v0, p0, Lorg/apache/james/mime4j/message/Multipart;->parent:Lorg/apache/james/mime4j/message/Entity;

    invoke-virtual {p1, v0}, Lorg/apache/james/mime4j/message/BodyPart;->setParent(Lorg/apache/james/mime4j/message/Entity;)V

    return-void
.end method

.method public dispose()V
    .registers 3

    iget-object v0, p0, Lorg/apache/james/mime4j/message/Multipart;->bodyParts:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/james/mime4j/message/BodyPart;

    invoke-virtual {v0}, Lorg/apache/james/mime4j/message/BodyPart;->dispose()V

    goto :goto_6

    :cond_16
    return-void
.end method

.method public getBodyParts()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/apache/james/mime4j/message/BodyPart;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/james/mime4j/message/Multipart;->bodyParts:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getCount()I
    .registers 2

    iget-object v0, p0, Lorg/apache/james/mime4j/message/Multipart;->bodyParts:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getEpilogue()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lorg/apache/james/mime4j/message/Multipart;->epilogueStrCache:Ljava/lang/String;

    if-nez v0, :cond_c

    iget-object v0, p0, Lorg/apache/james/mime4j/message/Multipart;->epilogue:Lorg/apache/james/mime4j/util/ByteSequence;

    invoke-static {v0}, Lorg/apache/james/mime4j/util/ContentUtil;->decode(Lorg/apache/james/mime4j/util/ByteSequence;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/james/mime4j/message/Multipart;->epilogueStrCache:Ljava/lang/String;

    :cond_c
    iget-object v0, p0, Lorg/apache/james/mime4j/message/Multipart;->epilogueStrCache:Ljava/lang/String;

    return-object v0
.end method

.method getEpilogueRaw()Lorg/apache/james/mime4j/util/ByteSequence;
    .registers 2

    iget-object v0, p0, Lorg/apache/james/mime4j/message/Multipart;->epilogue:Lorg/apache/james/mime4j/util/ByteSequence;

    return-object v0
.end method

.method public getParent()Lorg/apache/james/mime4j/message/Entity;
    .registers 2

    iget-object v0, p0, Lorg/apache/james/mime4j/message/Multipart;->parent:Lorg/apache/james/mime4j/message/Entity;

    return-object v0
.end method

.method public getPreamble()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lorg/apache/james/mime4j/message/Multipart;->preambleStrCache:Ljava/lang/String;

    if-nez v0, :cond_c

    iget-object v0, p0, Lorg/apache/james/mime4j/message/Multipart;->preamble:Lorg/apache/james/mime4j/util/ByteSequence;

    invoke-static {v0}, Lorg/apache/james/mime4j/util/ContentUtil;->decode(Lorg/apache/james/mime4j/util/ByteSequence;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/james/mime4j/message/Multipart;->preambleStrCache:Ljava/lang/String;

    :cond_c
    iget-object v0, p0, Lorg/apache/james/mime4j/message/Multipart;->preambleStrCache:Ljava/lang/String;

    return-object v0
.end method

.method getPreambleRaw()Lorg/apache/james/mime4j/util/ByteSequence;
    .registers 2

    iget-object v0, p0, Lorg/apache/james/mime4j/message/Multipart;->preamble:Lorg/apache/james/mime4j/util/ByteSequence;

    return-object v0
.end method

.method public getSubType()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lorg/apache/james/mime4j/message/Multipart;->subType:Ljava/lang/String;

    return-object v0
.end method

.method public removeBodyPart(I)Lorg/apache/james/mime4j/message/BodyPart;
    .registers 4

    iget-object v0, p0, Lorg/apache/james/mime4j/message/Multipart;->bodyParts:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/james/mime4j/message/BodyPart;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/apache/james/mime4j/message/BodyPart;->setParent(Lorg/apache/james/mime4j/message/Entity;)V

    return-object v0
.end method

.method public replaceBodyPart(Lorg/apache/james/mime4j/message/BodyPart;I)Lorg/apache/james/mime4j/message/BodyPart;
    .registers 5

    if-nez p1, :cond_8

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_8
    iget-object v0, p0, Lorg/apache/james/mime4j/message/Multipart;->bodyParts:Ljava/util/List;

    invoke-interface {v0, p2, p1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/james/mime4j/message/BodyPart;

    if-ne p1, v0, :cond_1a

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot replace body part with itself"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1a
    iget-object v1, p0, Lorg/apache/james/mime4j/message/Multipart;->parent:Lorg/apache/james/mime4j/message/Entity;

    invoke-virtual {p1, v1}, Lorg/apache/james/mime4j/message/BodyPart;->setParent(Lorg/apache/james/mime4j/message/Entity;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/apache/james/mime4j/message/BodyPart;->setParent(Lorg/apache/james/mime4j/message/Entity;)V

    return-object v0
.end method

.method public setBodyParts(Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/apache/james/mime4j/message/BodyPart;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lorg/apache/james/mime4j/message/Multipart;->bodyParts:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/james/mime4j/message/BodyPart;

    iget-object v2, p0, Lorg/apache/james/mime4j/message/Multipart;->parent:Lorg/apache/james/mime4j/message/Entity;

    invoke-virtual {v0, v2}, Lorg/apache/james/mime4j/message/BodyPart;->setParent(Lorg/apache/james/mime4j/message/Entity;)V

    goto :goto_6

    :cond_18
    return-void
.end method

.method public setEpilogue(Ljava/lang/String;)V
    .registers 3

    invoke-static {p1}, Lorg/apache/james/mime4j/util/ContentUtil;->encode(Ljava/lang/String;)Lorg/apache/james/mime4j/util/ByteSequence;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/james/mime4j/message/Multipart;->epilogue:Lorg/apache/james/mime4j/util/ByteSequence;

    iput-object p1, p0, Lorg/apache/james/mime4j/message/Multipart;->epilogueStrCache:Ljava/lang/String;

    return-void
.end method

.method setEpilogueRaw(Lorg/apache/james/mime4j/util/ByteSequence;)V
    .registers 3

    iput-object p1, p0, Lorg/apache/james/mime4j/message/Multipart;->epilogue:Lorg/apache/james/mime4j/util/ByteSequence;

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/james/mime4j/message/Multipart;->epilogueStrCache:Ljava/lang/String;

    return-void
.end method

.method public setParent(Lorg/apache/james/mime4j/message/Entity;)V
    .registers 4

    iput-object p1, p0, Lorg/apache/james/mime4j/message/Multipart;->parent:Lorg/apache/james/mime4j/message/Entity;

    iget-object v0, p0, Lorg/apache/james/mime4j/message/Multipart;->bodyParts:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/james/mime4j/message/BodyPart;

    invoke-virtual {v0, p1}, Lorg/apache/james/mime4j/message/BodyPart;->setParent(Lorg/apache/james/mime4j/message/Entity;)V

    goto :goto_8

    :cond_18
    return-void
.end method

.method public setPreamble(Ljava/lang/String;)V
    .registers 3

    invoke-static {p1}, Lorg/apache/james/mime4j/util/ContentUtil;->encode(Ljava/lang/String;)Lorg/apache/james/mime4j/util/ByteSequence;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/james/mime4j/message/Multipart;->preamble:Lorg/apache/james/mime4j/util/ByteSequence;

    iput-object p1, p0, Lorg/apache/james/mime4j/message/Multipart;->preambleStrCache:Ljava/lang/String;

    return-void
.end method

.method setPreambleRaw(Lorg/apache/james/mime4j/util/ByteSequence;)V
    .registers 3

    iput-object p1, p0, Lorg/apache/james/mime4j/message/Multipart;->preamble:Lorg/apache/james/mime4j/util/ByteSequence;

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/james/mime4j/message/Multipart;->preambleStrCache:Ljava/lang/String;

    return-void
.end method

.method public setSubType(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lorg/apache/james/mime4j/message/Multipart;->subType:Ljava/lang/String;

    return-void
.end method
