.class public final Lcom/google/wireless/contacts/proto/Contact$ClientPersonId;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Contact.java"

# interfaces
.implements Lcom/google/wireless/contacts/proto/Contact$ClientPersonIdOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/contacts/proto/Contact;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ClientPersonId"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/wireless/contacts/proto/Contact$ClientPersonId$Builder;,
        Lcom/google/wireless/contacts/proto/Contact$ClientPersonId$IdType;
    }
.end annotation


# static fields
.field private static final defaultInstance:Lcom/google/wireless/contacts/proto/Contact$ClientPersonId;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private type_:Lcom/google/wireless/contacts/proto/Contact$ClientPersonId$IdType;

.field private value_:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 5152
    new-instance v0, Lcom/google/wireless/contacts/proto/Contact$ClientPersonId;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/wireless/contacts/proto/Contact$ClientPersonId;-><init>(Z)V

    sput-object v0, Lcom/google/wireless/contacts/proto/Contact$ClientPersonId;->defaultInstance:Lcom/google/wireless/contacts/proto/Contact$ClientPersonId;

    .line 5153
    sget-object v0, Lcom/google/wireless/contacts/proto/Contact$ClientPersonId;->defaultInstance:Lcom/google/wireless/contacts/proto/Contact$ClientPersonId;

    invoke-direct {v0}, Lcom/google/wireless/contacts/proto/Contact$ClientPersonId;->initFields()V

    .line 5154
    return-void
.end method

.method private constructor <init>(Lcom/google/wireless/contacts/proto/Contact$ClientPersonId$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 4747
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 4851
    iput-byte v0, p0, Lcom/google/wireless/contacts/proto/Contact$ClientPersonId;->memoizedIsInitialized:B

    .line 4871
    iput v0, p0, Lcom/google/wireless/contacts/proto/Contact$ClientPersonId;->memoizedSerializedSize:I

    .line 4748
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/wireless/contacts/proto/Contact$ClientPersonId$Builder;Lcom/google/wireless/contacts/proto/Contact$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 4742
    invoke-direct {p0, p1}, Lcom/google/wireless/contacts/proto/Contact$ClientPersonId;-><init>(Lcom/google/wireless/contacts/proto/Contact$ClientPersonId$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 4749
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 4851
    iput-byte v0, p0, Lcom/google/wireless/contacts/proto/Contact$ClientPersonId;->memoizedIsInitialized:B

    .line 4871
    iput v0, p0, Lcom/google/wireless/contacts/proto/Contact$ClientPersonId;->memoizedSerializedSize:I

    .line 4749
    return-void
.end method

.method static synthetic access$6402(Lcom/google/wireless/contacts/proto/Contact$ClientPersonId;Lcom/google/wireless/contacts/proto/Contact$ClientPersonId$IdType;)Lcom/google/wireless/contacts/proto/Contact$ClientPersonId$IdType;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 4742
    iput-object p1, p0, Lcom/google/wireless/contacts/proto/Contact$ClientPersonId;->type_:Lcom/google/wireless/contacts/proto/Contact$ClientPersonId$IdType;

    return-object p1
.end method

.method static synthetic access$6502(Lcom/google/wireless/contacts/proto/Contact$ClientPersonId;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 4742
    iput-object p1, p0, Lcom/google/wireless/contacts/proto/Contact$ClientPersonId;->value_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$6602(Lcom/google/wireless/contacts/proto/Contact$ClientPersonId;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 4742
    iput p1, p0, Lcom/google/wireless/contacts/proto/Contact$ClientPersonId;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/wireless/contacts/proto/Contact$ClientPersonId;
    .registers 1

    .prologue
    .line 4753
    sget-object v0, Lcom/google/wireless/contacts/proto/Contact$ClientPersonId;->defaultInstance:Lcom/google/wireless/contacts/proto/Contact$ClientPersonId;

    return-object v0
.end method

.method private getValueBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 4836
    iget-object v1, p0, Lcom/google/wireless/contacts/proto/Contact$ClientPersonId;->value_:Ljava/lang/Object;

    .line 4837
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 4838
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 4840
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Contact$ClientPersonId;->value_:Ljava/lang/Object;

    .line 4843
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
    .line 4848
    sget-object v0, Lcom/google/wireless/contacts/proto/Contact$ClientPersonId$IdType;->GAIA:Lcom/google/wireless/contacts/proto/Contact$ClientPersonId$IdType;

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Contact$ClientPersonId;->type_:Lcom/google/wireless/contacts/proto/Contact$ClientPersonId$IdType;

    .line 4849
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Contact$ClientPersonId;->value_:Ljava/lang/Object;

    .line 4850
    return-void
.end method

.method public static newBuilder()Lcom/google/wireless/contacts/proto/Contact$ClientPersonId$Builder;
    .registers 1

    .prologue
    .line 4963
    #calls: Lcom/google/wireless/contacts/proto/Contact$ClientPersonId$Builder;->create()Lcom/google/wireless/contacts/proto/Contact$ClientPersonId$Builder;
    invoke-static {}, Lcom/google/wireless/contacts/proto/Contact$ClientPersonId$Builder;->access$6200()Lcom/google/wireless/contacts/proto/Contact$ClientPersonId$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/wireless/contacts/proto/Contact$ClientPersonId;)Lcom/google/wireless/contacts/proto/Contact$ClientPersonId$Builder;
    .registers 2
    .parameter "prototype"

    .prologue
    .line 4966
    invoke-static {}, Lcom/google/wireless/contacts/proto/Contact$ClientPersonId;->newBuilder()Lcom/google/wireless/contacts/proto/Contact$ClientPersonId$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/wireless/contacts/proto/Contact$ClientPersonId$Builder;->mergeFrom(Lcom/google/wireless/contacts/proto/Contact$ClientPersonId;)Lcom/google/wireless/contacts/proto/Contact$ClientPersonId$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 4742
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Contact$ClientPersonId;->getDefaultInstanceForType()Lcom/google/wireless/contacts/proto/Contact$ClientPersonId;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/contacts/proto/Contact$ClientPersonId;
    .registers 2

    .prologue
    .line 4757
    sget-object v0, Lcom/google/wireless/contacts/proto/Contact$ClientPersonId;->defaultInstance:Lcom/google/wireless/contacts/proto/Contact$ClientPersonId;

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 6

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 4873
    iget v0, p0, Lcom/google/wireless/contacts/proto/Contact$ClientPersonId;->memoizedSerializedSize:I

    .line 4874
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_9

    move v1, v0

    .line 4886
    .end local v0           #size:I
    .local v1, size:I
    :goto_8
    return v1

    .line 4876
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_9
    const/4 v0, 0x0

    .line 4877
    iget v2, p0, Lcom/google/wireless/contacts/proto/Contact$ClientPersonId;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_1b

    .line 4878
    iget-object v2, p0, Lcom/google/wireless/contacts/proto/Contact$ClientPersonId;->type_:Lcom/google/wireless/contacts/proto/Contact$ClientPersonId$IdType;

    invoke-virtual {v2}, Lcom/google/wireless/contacts/proto/Contact$ClientPersonId$IdType;->getNumber()I

    move-result v2

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 4881
    :cond_1b
    iget v2, p0, Lcom/google/wireless/contacts/proto/Contact$ClientPersonId;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-ne v2, v4, :cond_2a

    .line 4882
    invoke-direct {p0}, Lcom/google/wireless/contacts/proto/Contact$ClientPersonId;->getValueBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 4885
    :cond_2a
    iput v0, p0, Lcom/google/wireless/contacts/proto/Contact$ClientPersonId;->memoizedSerializedSize:I

    move v1, v0

    .line 4886
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_8
.end method

.method public getType()Lcom/google/wireless/contacts/proto/Contact$ClientPersonId$IdType;
    .registers 2

    .prologue
    .line 4812
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Contact$ClientPersonId;->type_:Lcom/google/wireless/contacts/proto/Contact$ClientPersonId$IdType;

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .registers 5

    .prologue
    .line 4822
    iget-object v1, p0, Lcom/google/wireless/contacts/proto/Contact$ClientPersonId;->value_:Ljava/lang/Object;

    .line 4823
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 4824
    check-cast v1, Ljava/lang/String;

    .line 4832
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 4826
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 4828
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 4829
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 4830
    iput-object v2, p0, Lcom/google/wireless/contacts/proto/Contact$ClientPersonId;->value_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 4832
    goto :goto_8
.end method

.method public hasType()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 4809
    iget v1, p0, Lcom/google/wireless/contacts/proto/Contact$ClientPersonId;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public hasValue()Z
    .registers 3

    .prologue
    .line 4819
    iget v0, p0, Lcom/google/wireless/contacts/proto/Contact$ClientPersonId;->bitField0_:I

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

    .line 4853
    iget-byte v0, p0, Lcom/google/wireless/contacts/proto/Contact$ClientPersonId;->memoizedIsInitialized:B

    .line 4854
    .local v0, isInitialized:B
    const/4 v2, -0x1

    if-eq v0, v2, :cond_b

    if-ne v0, v1, :cond_9

    .line 4857
    :goto_8
    return v1

    .line 4854
    :cond_9
    const/4 v1, 0x0

    goto :goto_8

    .line 4856
    :cond_b
    iput-byte v1, p0, Lcom/google/wireless/contacts/proto/Contact$ClientPersonId;->memoizedIsInitialized:B

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
    .line 4893
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

    .line 4862
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Contact$ClientPersonId;->getSerializedSize()I

    .line 4863
    iget v0, p0, Lcom/google/wireless/contacts/proto/Contact$ClientPersonId;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_14

    .line 4864
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Contact$ClientPersonId;->type_:Lcom/google/wireless/contacts/proto/Contact$ClientPersonId$IdType;

    invoke-virtual {v0}, Lcom/google/wireless/contacts/proto/Contact$ClientPersonId$IdType;->getNumber()I

    move-result v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 4866
    :cond_14
    iget v0, p0, Lcom/google/wireless/contacts/proto/Contact$ClientPersonId;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_21

    .line 4867
    invoke-direct {p0}, Lcom/google/wireless/contacts/proto/Contact$ClientPersonId;->getValueBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 4869
    :cond_21
    return-void
.end method
