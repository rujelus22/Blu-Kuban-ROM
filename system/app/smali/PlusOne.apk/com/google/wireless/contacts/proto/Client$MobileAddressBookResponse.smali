.class public final Lcom/google/wireless/contacts/proto/Client$MobileAddressBookResponse;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Client.java"

# interfaces
.implements Lcom/google/wireless/contacts/proto/Client$MobileAddressBookResponseOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/contacts/proto/Client;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MobileAddressBookResponse"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/wireless/contacts/proto/Client$MobileAddressBookResponse$Builder;
    }
.end annotation


# static fields
.field private static final defaultInstance:Lcom/google/wireless/contacts/proto/Client$MobileAddressBookResponse;

.field private static final serialVersionUID:J


# instance fields
.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private result_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/wireless/contacts/proto/Client$MobileAddressBookResult;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 10209
    new-instance v0, Lcom/google/wireless/contacts/proto/Client$MobileAddressBookResponse;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/wireless/contacts/proto/Client$MobileAddressBookResponse;-><init>(Z)V

    sput-object v0, Lcom/google/wireless/contacts/proto/Client$MobileAddressBookResponse;->defaultInstance:Lcom/google/wireless/contacts/proto/Client$MobileAddressBookResponse;

    .line 10210
    sget-object v0, Lcom/google/wireless/contacts/proto/Client$MobileAddressBookResponse;->defaultInstance:Lcom/google/wireless/contacts/proto/Client$MobileAddressBookResponse;

    invoke-direct {v0}, Lcom/google/wireless/contacts/proto/Client$MobileAddressBookResponse;->initFields()V

    .line 10211
    return-void
.end method

.method private constructor <init>(Lcom/google/wireless/contacts/proto/Client$MobileAddressBookResponse$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 9860
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 9897
    iput-byte v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileAddressBookResponse;->memoizedIsInitialized:B

    .line 9914
    iput v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileAddressBookResponse;->memoizedSerializedSize:I

    .line 9861
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/wireless/contacts/proto/Client$MobileAddressBookResponse$Builder;Lcom/google/wireless/contacts/proto/Client$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 9855
    invoke-direct {p0, p1}, Lcom/google/wireless/contacts/proto/Client$MobileAddressBookResponse;-><init>(Lcom/google/wireless/contacts/proto/Client$MobileAddressBookResponse$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 9862
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 9897
    iput-byte v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileAddressBookResponse;->memoizedIsInitialized:B

    .line 9914
    iput v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileAddressBookResponse;->memoizedSerializedSize:I

    .line 9862
    return-void
.end method

.method static synthetic access$13500(Lcom/google/wireless/contacts/proto/Client$MobileAddressBookResponse;)Ljava/util/List;
    .registers 2
    .parameter "x0"

    .prologue
    .line 9855
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileAddressBookResponse;->result_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$13502(Lcom/google/wireless/contacts/proto/Client$MobileAddressBookResponse;Ljava/util/List;)Ljava/util/List;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 9855
    iput-object p1, p0, Lcom/google/wireless/contacts/proto/Client$MobileAddressBookResponse;->result_:Ljava/util/List;

    return-object p1
.end method

.method public static getDefaultInstance()Lcom/google/wireless/contacts/proto/Client$MobileAddressBookResponse;
    .registers 1

    .prologue
    .line 9866
    sget-object v0, Lcom/google/wireless/contacts/proto/Client$MobileAddressBookResponse;->defaultInstance:Lcom/google/wireless/contacts/proto/Client$MobileAddressBookResponse;

    return-object v0
.end method

.method private initFields()V
    .registers 2

    .prologue
    .line 9895
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileAddressBookResponse;->result_:Ljava/util/List;

    .line 9896
    return-void
.end method


# virtual methods
.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 9855
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Client$MobileAddressBookResponse;->getDefaultInstanceForType()Lcom/google/wireless/contacts/proto/Client$MobileAddressBookResponse;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/contacts/proto/Client$MobileAddressBookResponse;
    .registers 2

    .prologue
    .line 9870
    sget-object v0, Lcom/google/wireless/contacts/proto/Client$MobileAddressBookResponse;->defaultInstance:Lcom/google/wireless/contacts/proto/Client$MobileAddressBookResponse;

    return-object v0
.end method

.method public getResult(I)Lcom/google/wireless/contacts/proto/Client$MobileAddressBookResult;
    .registers 3
    .parameter "index"

    .prologue
    .line 9887
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileAddressBookResponse;->result_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/contacts/proto/Client$MobileAddressBookResult;

    return-object v0
.end method

.method public getResultCount()I
    .registers 2

    .prologue
    .line 9884
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileAddressBookResponse;->result_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getResultList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/wireless/contacts/proto/Client$MobileAddressBookResult;",
            ">;"
        }
    .end annotation

    .prologue
    .line 9877
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileAddressBookResponse;->result_:Ljava/util/List;

    return-object v0
.end method

.method public getResultOrBuilder(I)Lcom/google/wireless/contacts/proto/Client$MobileAddressBookResultOrBuilder;
    .registers 3
    .parameter "index"

    .prologue
    .line 9891
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileAddressBookResponse;->result_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/contacts/proto/Client$MobileAddressBookResultOrBuilder;

    return-object v0
.end method

.method public getResultOrBuilderList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lcom/google/wireless/contacts/proto/Client$MobileAddressBookResultOrBuilder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 9881
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileAddressBookResponse;->result_:Ljava/util/List;

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 6

    .prologue
    .line 9916
    iget v1, p0, Lcom/google/wireless/contacts/proto/Client$MobileAddressBookResponse;->memoizedSerializedSize:I

    .line 9917
    .local v1, size:I
    const/4 v3, -0x1

    if-eq v1, v3, :cond_7

    move v2, v1

    .line 9925
    .end local v1           #size:I
    .local v2, size:I
    :goto_6
    return v2

    .line 9919
    .end local v2           #size:I
    .restart local v1       #size:I
    :cond_7
    const/4 v1, 0x0

    .line 9920
    const/4 v0, 0x0

    .local v0, i:I
    :goto_9
    iget-object v3, p0, Lcom/google/wireless/contacts/proto/Client$MobileAddressBookResponse;->result_:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_22

    .line 9921
    const/4 v4, 0x1

    iget-object v3, p0, Lcom/google/wireless/contacts/proto/Client$MobileAddressBookResponse;->result_:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/MessageLite;

    invoke-static {v4, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v3

    add-int/2addr v1, v3

    .line 9920
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 9924
    :cond_22
    iput v1, p0, Lcom/google/wireless/contacts/proto/Client$MobileAddressBookResponse;->memoizedSerializedSize:I

    move v2, v1

    .line 9925
    .end local v1           #size:I
    .restart local v2       #size:I
    goto :goto_6
.end method

.method protected writeReplace()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    .prologue
    .line 9932
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
    .line 9908
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Client$MobileAddressBookResponse;->getSerializedSize()I

    .line 9909
    const/4 v0, 0x0

    .local v0, i:I
    :goto_4
    iget-object v1, p0, Lcom/google/wireless/contacts/proto/Client$MobileAddressBookResponse;->result_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1b

    .line 9910
    const/4 v2, 0x1

    iget-object v1, p0, Lcom/google/wireless/contacts/proto/Client$MobileAddressBookResponse;->result_:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/MessageLite;

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 9909
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 9912
    :cond_1b
    return-void
.end method
