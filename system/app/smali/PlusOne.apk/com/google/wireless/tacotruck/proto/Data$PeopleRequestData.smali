.class public final Lcom/google/wireless/tacotruck/proto/Data$PeopleRequestData;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Data.java"

# interfaces
.implements Lcom/google/wireless/tacotruck/proto/Data$PeopleRequestDataOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/tacotruck/proto/Data;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PeopleRequestData"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/wireless/tacotruck/proto/Data$PeopleRequestData$Builder;
    }
.end annotation


# static fields
.field private static final defaultInstance:Lcom/google/wireless/tacotruck/proto/Data$PeopleRequestData;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private includePlusPages_:Z

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private shownPeopleBlob_:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 38297
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Data$PeopleRequestData;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/wireless/tacotruck/proto/Data$PeopleRequestData;-><init>(Z)V

    sput-object v0, Lcom/google/wireless/tacotruck/proto/Data$PeopleRequestData;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Data$PeopleRequestData;

    .line 38298
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$PeopleRequestData;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Data$PeopleRequestData;

    invoke-direct {v0}, Lcom/google/wireless/tacotruck/proto/Data$PeopleRequestData;->initFields()V

    .line 38299
    return-void
.end method

.method private constructor <init>(Lcom/google/wireless/tacotruck/proto/Data$PeopleRequestData$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 37943
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 38003
    iput-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PeopleRequestData;->memoizedIsInitialized:B

    .line 38023
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PeopleRequestData;->memoizedSerializedSize:I

    .line 37944
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/wireless/tacotruck/proto/Data$PeopleRequestData$Builder;Lcom/google/wireless/tacotruck/proto/Data$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 37938
    invoke-direct {p0, p1}, Lcom/google/wireless/tacotruck/proto/Data$PeopleRequestData;-><init>(Lcom/google/wireless/tacotruck/proto/Data$PeopleRequestData$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 37945
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 38003
    iput-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PeopleRequestData;->memoizedIsInitialized:B

    .line 38023
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PeopleRequestData;->memoizedSerializedSize:I

    .line 37945
    return-void
.end method

.method static synthetic access$51502(Lcom/google/wireless/tacotruck/proto/Data$PeopleRequestData;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 37938
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$PeopleRequestData;->shownPeopleBlob_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$51602(Lcom/google/wireless/tacotruck/proto/Data$PeopleRequestData;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 37938
    iput-boolean p1, p0, Lcom/google/wireless/tacotruck/proto/Data$PeopleRequestData;->includePlusPages_:Z

    return p1
.end method

.method static synthetic access$51702(Lcom/google/wireless/tacotruck/proto/Data$PeopleRequestData;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 37938
    iput p1, p0, Lcom/google/wireless/tacotruck/proto/Data$PeopleRequestData;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$PeopleRequestData;
    .registers 1

    .prologue
    .line 37949
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$PeopleRequestData;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Data$PeopleRequestData;

    return-object v0
.end method

.method private getShownPeopleBlobBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 37978
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$PeopleRequestData;->shownPeopleBlob_:Ljava/lang/Object;

    .line 37979
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 37980
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 37982
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PeopleRequestData;->shownPeopleBlob_:Ljava/lang/Object;

    .line 37985
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
    .line 38000
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PeopleRequestData;->shownPeopleBlob_:Ljava/lang/Object;

    .line 38001
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PeopleRequestData;->includePlusPages_:Z

    .line 38002
    return-void
.end method

.method public static newBuilder()Lcom/google/wireless/tacotruck/proto/Data$PeopleRequestData$Builder;
    .registers 1

    .prologue
    .line 38115
    #calls: Lcom/google/wireless/tacotruck/proto/Data$PeopleRequestData$Builder;->create()Lcom/google/wireless/tacotruck/proto/Data$PeopleRequestData$Builder;
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$PeopleRequestData$Builder;->access$51300()Lcom/google/wireless/tacotruck/proto/Data$PeopleRequestData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/wireless/tacotruck/proto/Data$PeopleRequestData;)Lcom/google/wireless/tacotruck/proto/Data$PeopleRequestData$Builder;
    .registers 2
    .parameter "prototype"

    .prologue
    .line 38118
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$PeopleRequestData;->newBuilder()Lcom/google/wireless/tacotruck/proto/Data$PeopleRequestData$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/wireless/tacotruck/proto/Data$PeopleRequestData$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Data$PeopleRequestData;)Lcom/google/wireless/tacotruck/proto/Data$PeopleRequestData$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 37938
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$PeopleRequestData;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Data$PeopleRequestData;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Data$PeopleRequestData;
    .registers 2

    .prologue
    .line 37953
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$PeopleRequestData;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Data$PeopleRequestData;

    return-object v0
.end method

.method public getIncludePlusPages()Z
    .registers 2

    .prologue
    .line 37996
    iget-boolean v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PeopleRequestData;->includePlusPages_:Z

    return v0
.end method

.method public getSerializedSize()I
    .registers 6

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 38025
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PeopleRequestData;->memoizedSerializedSize:I

    .line 38026
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_9

    move v1, v0

    .line 38038
    .end local v0           #size:I
    .local v1, size:I
    :goto_8
    return v1

    .line 38028
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_9
    const/4 v0, 0x0

    .line 38029
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Data$PeopleRequestData;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_19

    .line 38030
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$PeopleRequestData;->getShownPeopleBlobBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 38033
    :cond_19
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Data$PeopleRequestData;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-ne v2, v4, :cond_26

    .line 38034
    iget-boolean v2, p0, Lcom/google/wireless/tacotruck/proto/Data$PeopleRequestData;->includePlusPages_:Z

    invoke-static {v4, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v2

    add-int/2addr v0, v2

    .line 38037
    :cond_26
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PeopleRequestData;->memoizedSerializedSize:I

    move v1, v0

    .line 38038
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_8
.end method

.method public getShownPeopleBlob()Ljava/lang/String;
    .registers 5

    .prologue
    .line 37964
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$PeopleRequestData;->shownPeopleBlob_:Ljava/lang/Object;

    .line 37965
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 37966
    check-cast v1, Ljava/lang/String;

    .line 37974
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 37968
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 37970
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 37971
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 37972
    iput-object v2, p0, Lcom/google/wireless/tacotruck/proto/Data$PeopleRequestData;->shownPeopleBlob_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 37974
    goto :goto_8
.end method

.method public hasIncludePlusPages()Z
    .registers 3

    .prologue
    .line 37993
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PeopleRequestData;->bitField0_:I

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

.method public hasShownPeopleBlob()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 37961
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Data$PeopleRequestData;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public final isInitialized()Z
    .registers 4

    .prologue
    const/4 v1, 0x1

    .line 38005
    iget-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PeopleRequestData;->memoizedIsInitialized:B

    .line 38006
    .local v0, isInitialized:B
    const/4 v2, -0x1

    if-eq v0, v2, :cond_b

    if-ne v0, v1, :cond_9

    .line 38009
    :goto_8
    return v1

    .line 38006
    :cond_9
    const/4 v1, 0x0

    goto :goto_8

    .line 38008
    :cond_b
    iput-byte v1, p0, Lcom/google/wireless/tacotruck/proto/Data$PeopleRequestData;->memoizedIsInitialized:B

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
    .line 38045
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

    .line 38014
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$PeopleRequestData;->getSerializedSize()I

    .line 38015
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PeopleRequestData;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_12

    .line 38016
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$PeopleRequestData;->getShownPeopleBlobBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 38018
    :cond_12
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PeopleRequestData;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_1d

    .line 38019
    iget-boolean v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PeopleRequestData;->includePlusPages_:Z

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 38021
    :cond_1d
    return-void
.end method
