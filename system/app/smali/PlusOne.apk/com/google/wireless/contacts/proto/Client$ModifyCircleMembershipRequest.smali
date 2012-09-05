.class public final Lcom/google/wireless/contacts/proto/Client$ModifyCircleMembershipRequest;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Client.java"

# interfaces
.implements Lcom/google/wireless/contacts/proto/Client$ModifyCircleMembershipRequestOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/contacts/proto/Client;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ModifyCircleMembershipRequest"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/wireless/contacts/proto/Client$ModifyCircleMembershipRequest$Builder;
    }
.end annotation


# static fields
.field private static final defaultInstance:Lcom/google/wireless/contacts/proto/Client$ModifyCircleMembershipRequest;

.field private static final serialVersionUID:J


# instance fields
.field private addCircleIds_:Lcom/google/protobuf/LazyStringList;

.field private bitField0_:I

.field private id_:Lcom/google/wireless/contacts/proto/Contact$ClientPersonId;

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private removeCircleIds_:Lcom/google/protobuf/LazyStringList;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 15264
    new-instance v0, Lcom/google/wireless/contacts/proto/Client$ModifyCircleMembershipRequest;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/wireless/contacts/proto/Client$ModifyCircleMembershipRequest;-><init>(Z)V

    sput-object v0, Lcom/google/wireless/contacts/proto/Client$ModifyCircleMembershipRequest;->defaultInstance:Lcom/google/wireless/contacts/proto/Client$ModifyCircleMembershipRequest;

    .line 15265
    sget-object v0, Lcom/google/wireless/contacts/proto/Client$ModifyCircleMembershipRequest;->defaultInstance:Lcom/google/wireless/contacts/proto/Client$ModifyCircleMembershipRequest;

    invoke-direct {v0}, Lcom/google/wireless/contacts/proto/Client$ModifyCircleMembershipRequest;->initFields()V

    .line 15266
    return-void
.end method

.method private constructor <init>(Lcom/google/wireless/contacts/proto/Client$ModifyCircleMembershipRequest$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 14762
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 14819
    iput-byte v0, p0, Lcom/google/wireless/contacts/proto/Client$ModifyCircleMembershipRequest;->memoizedIsInitialized:B

    .line 14842
    iput v0, p0, Lcom/google/wireless/contacts/proto/Client$ModifyCircleMembershipRequest;->memoizedSerializedSize:I

    .line 14763
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/wireless/contacts/proto/Client$ModifyCircleMembershipRequest$Builder;Lcom/google/wireless/contacts/proto/Client$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 14757
    invoke-direct {p0, p1}, Lcom/google/wireless/contacts/proto/Client$ModifyCircleMembershipRequest;-><init>(Lcom/google/wireless/contacts/proto/Client$ModifyCircleMembershipRequest$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 14764
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 14819
    iput-byte v0, p0, Lcom/google/wireless/contacts/proto/Client$ModifyCircleMembershipRequest;->memoizedIsInitialized:B

    .line 14842
    iput v0, p0, Lcom/google/wireless/contacts/proto/Client$ModifyCircleMembershipRequest;->memoizedSerializedSize:I

    .line 14764
    return-void
.end method

.method static synthetic access$20302(Lcom/google/wireless/contacts/proto/Client$ModifyCircleMembershipRequest;Lcom/google/wireless/contacts/proto/Contact$ClientPersonId;)Lcom/google/wireless/contacts/proto/Contact$ClientPersonId;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 14757
    iput-object p1, p0, Lcom/google/wireless/contacts/proto/Client$ModifyCircleMembershipRequest;->id_:Lcom/google/wireless/contacts/proto/Contact$ClientPersonId;

    return-object p1
.end method

.method static synthetic access$20400(Lcom/google/wireless/contacts/proto/Client$ModifyCircleMembershipRequest;)Lcom/google/protobuf/LazyStringList;
    .registers 2
    .parameter "x0"

    .prologue
    .line 14757
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Client$ModifyCircleMembershipRequest;->addCircleIds_:Lcom/google/protobuf/LazyStringList;

    return-object v0
.end method

.method static synthetic access$20402(Lcom/google/wireless/contacts/proto/Client$ModifyCircleMembershipRequest;Lcom/google/protobuf/LazyStringList;)Lcom/google/protobuf/LazyStringList;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 14757
    iput-object p1, p0, Lcom/google/wireless/contacts/proto/Client$ModifyCircleMembershipRequest;->addCircleIds_:Lcom/google/protobuf/LazyStringList;

    return-object p1
.end method

.method static synthetic access$20500(Lcom/google/wireless/contacts/proto/Client$ModifyCircleMembershipRequest;)Lcom/google/protobuf/LazyStringList;
    .registers 2
    .parameter "x0"

    .prologue
    .line 14757
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Client$ModifyCircleMembershipRequest;->removeCircleIds_:Lcom/google/protobuf/LazyStringList;

    return-object v0
.end method

.method static synthetic access$20502(Lcom/google/wireless/contacts/proto/Client$ModifyCircleMembershipRequest;Lcom/google/protobuf/LazyStringList;)Lcom/google/protobuf/LazyStringList;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 14757
    iput-object p1, p0, Lcom/google/wireless/contacts/proto/Client$ModifyCircleMembershipRequest;->removeCircleIds_:Lcom/google/protobuf/LazyStringList;

    return-object p1
.end method

.method static synthetic access$20602(Lcom/google/wireless/contacts/proto/Client$ModifyCircleMembershipRequest;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 14757
    iput p1, p0, Lcom/google/wireless/contacts/proto/Client$ModifyCircleMembershipRequest;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/wireless/contacts/proto/Client$ModifyCircleMembershipRequest;
    .registers 1

    .prologue
    .line 14768
    sget-object v0, Lcom/google/wireless/contacts/proto/Client$ModifyCircleMembershipRequest;->defaultInstance:Lcom/google/wireless/contacts/proto/Client$ModifyCircleMembershipRequest;

    return-object v0
.end method

.method private initFields()V
    .registers 2

    .prologue
    .line 14815
    invoke-static {}, Lcom/google/wireless/contacts/proto/Contact$ClientPersonId;->getDefaultInstance()Lcom/google/wireless/contacts/proto/Contact$ClientPersonId;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Client$ModifyCircleMembershipRequest;->id_:Lcom/google/wireless/contacts/proto/Contact$ClientPersonId;

    .line 14816
    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Client$ModifyCircleMembershipRequest;->addCircleIds_:Lcom/google/protobuf/LazyStringList;

    .line 14817
    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Client$ModifyCircleMembershipRequest;->removeCircleIds_:Lcom/google/protobuf/LazyStringList;

    .line 14818
    return-void
.end method

.method public static newBuilder()Lcom/google/wireless/contacts/proto/Client$ModifyCircleMembershipRequest$Builder;
    .registers 1

    .prologue
    .line 14948
    #calls: Lcom/google/wireless/contacts/proto/Client$ModifyCircleMembershipRequest$Builder;->create()Lcom/google/wireless/contacts/proto/Client$ModifyCircleMembershipRequest$Builder;
    invoke-static {}, Lcom/google/wireless/contacts/proto/Client$ModifyCircleMembershipRequest$Builder;->access$20100()Lcom/google/wireless/contacts/proto/Client$ModifyCircleMembershipRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/wireless/contacts/proto/Client$ModifyCircleMembershipRequest;)Lcom/google/wireless/contacts/proto/Client$ModifyCircleMembershipRequest$Builder;
    .registers 2
    .parameter "prototype"

    .prologue
    .line 14951
    invoke-static {}, Lcom/google/wireless/contacts/proto/Client$ModifyCircleMembershipRequest;->newBuilder()Lcom/google/wireless/contacts/proto/Client$ModifyCircleMembershipRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/wireless/contacts/proto/Client$ModifyCircleMembershipRequest$Builder;->mergeFrom(Lcom/google/wireless/contacts/proto/Client$ModifyCircleMembershipRequest;)Lcom/google/wireless/contacts/proto/Client$ModifyCircleMembershipRequest$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getAddCircleIds(I)Ljava/lang/String;
    .registers 3
    .parameter "index"

    .prologue
    .line 14797
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Client$ModifyCircleMembershipRequest;->addCircleIds_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getAddCircleIdsCount()I
    .registers 2

    .prologue
    .line 14794
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Client$ModifyCircleMembershipRequest;->addCircleIds_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/google/protobuf/LazyStringList;->size()I

    move-result v0

    return v0
.end method

.method public getAddCircleIdsList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 14791
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Client$ModifyCircleMembershipRequest;->addCircleIds_:Lcom/google/protobuf/LazyStringList;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 14757
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Client$ModifyCircleMembershipRequest;->getDefaultInstanceForType()Lcom/google/wireless/contacts/proto/Client$ModifyCircleMembershipRequest;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/contacts/proto/Client$ModifyCircleMembershipRequest;
    .registers 2

    .prologue
    .line 14772
    sget-object v0, Lcom/google/wireless/contacts/proto/Client$ModifyCircleMembershipRequest;->defaultInstance:Lcom/google/wireless/contacts/proto/Client$ModifyCircleMembershipRequest;

    return-object v0
.end method

.method public getId()Lcom/google/wireless/contacts/proto/Contact$ClientPersonId;
    .registers 2

    .prologue
    .line 14783
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Client$ModifyCircleMembershipRequest;->id_:Lcom/google/wireless/contacts/proto/Contact$ClientPersonId;

    return-object v0
.end method

.method public getRemoveCircleIds(I)Ljava/lang/String;
    .registers 3
    .parameter "index"

    .prologue
    .line 14811
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Client$ModifyCircleMembershipRequest;->removeCircleIds_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getRemoveCircleIdsCount()I
    .registers 2

    .prologue
    .line 14808
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Client$ModifyCircleMembershipRequest;->removeCircleIds_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/google/protobuf/LazyStringList;->size()I

    move-result v0

    return v0
.end method

.method public getRemoveCircleIdsList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 14805
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Client$ModifyCircleMembershipRequest;->removeCircleIds_:Lcom/google/protobuf/LazyStringList;

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 7

    .prologue
    const/4 v5, 0x1

    .line 14844
    iget v2, p0, Lcom/google/wireless/contacts/proto/Client$ModifyCircleMembershipRequest;->memoizedSerializedSize:I

    .line 14845
    .local v2, size:I
    const/4 v4, -0x1

    if-eq v2, v4, :cond_8

    move v3, v2

    .line 14871
    .end local v2           #size:I
    .local v3, size:I
    :goto_7
    return v3

    .line 14847
    .end local v3           #size:I
    .restart local v2       #size:I
    :cond_8
    const/4 v2, 0x0

    .line 14848
    iget v4, p0, Lcom/google/wireless/contacts/proto/Client$ModifyCircleMembershipRequest;->bitField0_:I

    and-int/lit8 v4, v4, 0x1

    if-ne v4, v5, :cond_16

    .line 14849
    iget-object v4, p0, Lcom/google/wireless/contacts/proto/Client$ModifyCircleMembershipRequest;->id_:Lcom/google/wireless/contacts/proto/Contact$ClientPersonId;

    invoke-static {v5, v4}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v4

    add-int/2addr v2, v4

    .line 14853
    :cond_16
    const/4 v0, 0x0

    .line 14854
    .local v0, dataSize:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_18
    iget-object v4, p0, Lcom/google/wireless/contacts/proto/Client$ModifyCircleMembershipRequest;->addCircleIds_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v4}, Lcom/google/protobuf/LazyStringList;->size()I

    move-result v4

    if-ge v1, v4, :cond_2e

    .line 14855
    iget-object v4, p0, Lcom/google/wireless/contacts/proto/Client$ModifyCircleMembershipRequest;->addCircleIds_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v4, v1}, Lcom/google/protobuf/LazyStringList;->getByteString(I)Lcom/google/protobuf/ByteString;

    move-result-object v4

    invoke-static {v4}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSizeNoTag(Lcom/google/protobuf/ByteString;)I

    move-result v4

    add-int/2addr v0, v4

    .line 14854
    add-int/lit8 v1, v1, 0x1

    goto :goto_18

    .line 14858
    :cond_2e
    add-int/2addr v2, v0

    .line 14859
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Client$ModifyCircleMembershipRequest;->getAddCircleIdsList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    mul-int/lit8 v4, v4, 0x1

    add-int/2addr v2, v4

    .line 14862
    const/4 v0, 0x0

    .line 14863
    const/4 v1, 0x0

    :goto_3c
    iget-object v4, p0, Lcom/google/wireless/contacts/proto/Client$ModifyCircleMembershipRequest;->removeCircleIds_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v4}, Lcom/google/protobuf/LazyStringList;->size()I

    move-result v4

    if-ge v1, v4, :cond_52

    .line 14864
    iget-object v4, p0, Lcom/google/wireless/contacts/proto/Client$ModifyCircleMembershipRequest;->removeCircleIds_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v4, v1}, Lcom/google/protobuf/LazyStringList;->getByteString(I)Lcom/google/protobuf/ByteString;

    move-result-object v4

    invoke-static {v4}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSizeNoTag(Lcom/google/protobuf/ByteString;)I

    move-result v4

    add-int/2addr v0, v4

    .line 14863
    add-int/lit8 v1, v1, 0x1

    goto :goto_3c

    .line 14867
    :cond_52
    add-int/2addr v2, v0

    .line 14868
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Client$ModifyCircleMembershipRequest;->getRemoveCircleIdsList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    mul-int/lit8 v4, v4, 0x1

    add-int/2addr v2, v4

    .line 14870
    iput v2, p0, Lcom/google/wireless/contacts/proto/Client$ModifyCircleMembershipRequest;->memoizedSerializedSize:I

    move v3, v2

    .line 14871
    .end local v2           #size:I
    .restart local v3       #size:I
    goto :goto_7
.end method

.method public hasId()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 14780
    iget v1, p0, Lcom/google/wireless/contacts/proto/Client$ModifyCircleMembershipRequest;->bitField0_:I

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

    .line 14821
    iget-byte v0, p0, Lcom/google/wireless/contacts/proto/Client$ModifyCircleMembershipRequest;->memoizedIsInitialized:B

    .line 14822
    .local v0, isInitialized:B
    const/4 v2, -0x1

    if-eq v0, v2, :cond_b

    if-ne v0, v1, :cond_9

    .line 14825
    :goto_8
    return v1

    .line 14822
    :cond_9
    const/4 v1, 0x0

    goto :goto_8

    .line 14824
    :cond_b
    iput-byte v1, p0, Lcom/google/wireless/contacts/proto/Client$ModifyCircleMembershipRequest;->memoizedIsInitialized:B

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
    .line 14878
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
    const/4 v2, 0x1

    .line 14830
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Client$ModifyCircleMembershipRequest;->getSerializedSize()I

    .line 14831
    iget v1, p0, Lcom/google/wireless/contacts/proto/Client$ModifyCircleMembershipRequest;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v2, :cond_f

    .line 14832
    iget-object v1, p0, Lcom/google/wireless/contacts/proto/Client$ModifyCircleMembershipRequest;->id_:Lcom/google/wireless/contacts/proto/Contact$ClientPersonId;

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 14834
    :cond_f
    const/4 v0, 0x0

    .local v0, i:I
    :goto_10
    iget-object v1, p0, Lcom/google/wireless/contacts/proto/Client$ModifyCircleMembershipRequest;->addCircleIds_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v1}, Lcom/google/protobuf/LazyStringList;->size()I

    move-result v1

    if-ge v0, v1, :cond_25

    .line 14835
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/wireless/contacts/proto/Client$ModifyCircleMembershipRequest;->addCircleIds_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v2, v0}, Lcom/google/protobuf/LazyStringList;->getByteString(I)Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 14834
    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    .line 14837
    :cond_25
    const/4 v0, 0x0

    :goto_26
    iget-object v1, p0, Lcom/google/wireless/contacts/proto/Client$ModifyCircleMembershipRequest;->removeCircleIds_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v1}, Lcom/google/protobuf/LazyStringList;->size()I

    move-result v1

    if-ge v0, v1, :cond_3b

    .line 14838
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/wireless/contacts/proto/Client$ModifyCircleMembershipRequest;->removeCircleIds_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v2, v0}, Lcom/google/protobuf/LazyStringList;->getByteString(I)Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 14837
    add-int/lit8 v0, v0, 0x1

    goto :goto_26

    .line 14840
    :cond_3b
    return-void
.end method
