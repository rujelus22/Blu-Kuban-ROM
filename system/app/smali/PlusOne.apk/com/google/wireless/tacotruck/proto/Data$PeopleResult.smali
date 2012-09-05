.class public final Lcom/google/wireless/tacotruck/proto/Data$PeopleResult;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Data.java"

# interfaces
.implements Lcom/google/wireless/tacotruck/proto/Data$PeopleResultOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/tacotruck/proto/Data;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PeopleResult"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/wireless/tacotruck/proto/Data$PeopleResult$Builder;
    }
.end annotation


# static fields
.field private static final defaultInstance:Lcom/google/wireless/tacotruck/proto/Data$PeopleResult;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private dominant_:Z

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private person_:Lcom/google/wireless/tacotruck/proto/Data$Person;

.field private snippetHtml_:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 39658
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Data$PeopleResult;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/wireless/tacotruck/proto/Data$PeopleResult;-><init>(Z)V

    sput-object v0, Lcom/google/wireless/tacotruck/proto/Data$PeopleResult;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Data$PeopleResult;

    .line 39659
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$PeopleResult;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Data$PeopleResult;

    invoke-direct {v0}, Lcom/google/wireless/tacotruck/proto/Data$PeopleResult;->initFields()V

    .line 39660
    return-void
.end method

.method private constructor <init>(Lcom/google/wireless/tacotruck/proto/Data$PeopleResult$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 39225
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 39296
    iput-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PeopleResult;->memoizedIsInitialized:B

    .line 39319
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PeopleResult;->memoizedSerializedSize:I

    .line 39226
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/wireless/tacotruck/proto/Data$PeopleResult$Builder;Lcom/google/wireless/tacotruck/proto/Data$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 39220
    invoke-direct {p0, p1}, Lcom/google/wireless/tacotruck/proto/Data$PeopleResult;-><init>(Lcom/google/wireless/tacotruck/proto/Data$PeopleResult$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 39227
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 39296
    iput-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PeopleResult;->memoizedIsInitialized:B

    .line 39319
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PeopleResult;->memoizedSerializedSize:I

    .line 39227
    return-void
.end method

.method static synthetic access$53402(Lcom/google/wireless/tacotruck/proto/Data$PeopleResult;Lcom/google/wireless/tacotruck/proto/Data$Person;)Lcom/google/wireless/tacotruck/proto/Data$Person;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 39220
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$PeopleResult;->person_:Lcom/google/wireless/tacotruck/proto/Data$Person;

    return-object p1
.end method

.method static synthetic access$53502(Lcom/google/wireless/tacotruck/proto/Data$PeopleResult;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 39220
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$PeopleResult;->snippetHtml_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$53602(Lcom/google/wireless/tacotruck/proto/Data$PeopleResult;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 39220
    iput-boolean p1, p0, Lcom/google/wireless/tacotruck/proto/Data$PeopleResult;->dominant_:Z

    return p1
.end method

.method static synthetic access$53702(Lcom/google/wireless/tacotruck/proto/Data$PeopleResult;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 39220
    iput p1, p0, Lcom/google/wireless/tacotruck/proto/Data$PeopleResult;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$PeopleResult;
    .registers 1

    .prologue
    .line 39231
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$PeopleResult;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Data$PeopleResult;

    return-object v0
.end method

.method private getSnippetHtmlBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 39270
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$PeopleResult;->snippetHtml_:Ljava/lang/Object;

    .line 39271
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 39272
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 39274
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PeopleResult;->snippetHtml_:Ljava/lang/Object;

    .line 39277
    .end local v0           #b:Lcom/google/protobuf/ByteString;
    :goto_e
    return-object v0

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_f
    check-cast v1, Lcom/google/protobuf/ByteString;

    .end local v1           #ref:Ljava/lang/Object;
    move-object v0, v1

    goto :goto_e
.end method

.method private initFields()V
    .registers 2

    .prologue
    .line 39292
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$Person;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$Person;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PeopleResult;->person_:Lcom/google/wireless/tacotruck/proto/Data$Person;

    .line 39293
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PeopleResult;->snippetHtml_:Ljava/lang/Object;

    .line 39294
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PeopleResult;->dominant_:Z

    .line 39295
    return-void
.end method

.method public static newBuilder()Lcom/google/wireless/tacotruck/proto/Data$PeopleResult$Builder;
    .registers 1

    .prologue
    .line 39415
    #calls: Lcom/google/wireless/tacotruck/proto/Data$PeopleResult$Builder;->create()Lcom/google/wireless/tacotruck/proto/Data$PeopleResult$Builder;
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$PeopleResult$Builder;->access$53200()Lcom/google/wireless/tacotruck/proto/Data$PeopleResult$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 39220
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$PeopleResult;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Data$PeopleResult;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Data$PeopleResult;
    .registers 2

    .prologue
    .line 39235
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$PeopleResult;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Data$PeopleResult;

    return-object v0
.end method

.method public getDominant()Z
    .registers 2

    .prologue
    .line 39288
    iget-boolean v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PeopleResult;->dominant_:Z

    return v0
.end method

.method public getPerson()Lcom/google/wireless/tacotruck/proto/Data$Person;
    .registers 2

    .prologue
    .line 39246
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PeopleResult;->person_:Lcom/google/wireless/tacotruck/proto/Data$Person;

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 6

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 39321
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PeopleResult;->memoizedSerializedSize:I

    .line 39322
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_9

    move v1, v0

    .line 39338
    .end local v0           #size:I
    .local v1, size:I
    :goto_8
    return v1

    .line 39324
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_9
    const/4 v0, 0x0

    .line 39325
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Data$PeopleResult;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_17

    .line 39326
    iget-object v2, p0, Lcom/google/wireless/tacotruck/proto/Data$PeopleResult;->person_:Lcom/google/wireless/tacotruck/proto/Data$Person;

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 39329
    :cond_17
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Data$PeopleResult;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-ne v2, v4, :cond_26

    .line 39330
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$PeopleResult;->getSnippetHtmlBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 39333
    :cond_26
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Data$PeopleResult;->bitField0_:I

    and-int/lit8 v2, v2, 0x4

    const/4 v3, 0x4

    if-ne v2, v3, :cond_35

    .line 39334
    const/4 v2, 0x3

    iget-boolean v3, p0, Lcom/google/wireless/tacotruck/proto/Data$PeopleResult;->dominant_:Z

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v2

    add-int/2addr v0, v2

    .line 39337
    :cond_35
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PeopleResult;->memoizedSerializedSize:I

    move v1, v0

    .line 39338
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_8
.end method

.method public getSnippetHtml()Ljava/lang/String;
    .registers 5

    .prologue
    .line 39256
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$PeopleResult;->snippetHtml_:Ljava/lang/Object;

    .line 39257
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 39258
    check-cast v1, Ljava/lang/String;

    .line 39266
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 39260
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 39262
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 39263
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 39264
    iput-object v2, p0, Lcom/google/wireless/tacotruck/proto/Data$PeopleResult;->snippetHtml_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 39266
    goto :goto_8
.end method

.method public hasDominant()Z
    .registers 3

    .prologue
    .line 39285
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PeopleResult;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public hasPerson()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 39243
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Data$PeopleResult;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public hasSnippetHtml()Z
    .registers 3

    .prologue
    .line 39253
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PeopleResult;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public final isInitialized()Z
    .registers 4

    .prologue
    const/4 v1, 0x1

    .line 39298
    iget-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PeopleResult;->memoizedIsInitialized:B

    .line 39299
    .local v0, isInitialized:B
    const/4 v2, -0x1

    if-eq v0, v2, :cond_b

    if-ne v0, v1, :cond_9

    .line 39302
    :goto_8
    return v1

    .line 39299
    :cond_9
    const/4 v1, 0x0

    goto :goto_8

    .line 39301
    :cond_b
    iput-byte v1, p0, Lcom/google/wireless/tacotruck/proto/Data$PeopleResult;->memoizedIsInitialized:B

    goto :goto_8
.end method

.method protected writeReplace()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    .prologue
    .line 39345
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->writeReplace()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .registers 5
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 39307
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$PeopleResult;->getSerializedSize()I

    .line 39308
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PeopleResult;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_10

    .line 39309
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PeopleResult;->person_:Lcom/google/wireless/tacotruck/proto/Data$Person;

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 39311
    :cond_10
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PeopleResult;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_1d

    .line 39312
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$PeopleResult;->getSnippetHtmlBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 39314
    :cond_1d
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PeopleResult;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2a

    .line 39315
    const/4 v0, 0x3

    iget-boolean v1, p0, Lcom/google/wireless/tacotruck/proto/Data$PeopleResult;->dominant_:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 39317
    :cond_2a
    return-void
.end method
