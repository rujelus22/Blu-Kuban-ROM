.class public final Lcom/google/wireless/contacts/proto/Contact$MobilePersonId;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Contact.java"

# interfaces
.implements Lcom/google/wireless/contacts/proto/Contact$MobilePersonIdOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/contacts/proto/Contact;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MobilePersonId"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/wireless/contacts/proto/Contact$MobilePersonId$Builder;,
        Lcom/google/wireless/contacts/proto/Contact$MobilePersonId$IdType;
    }
.end annotation


# static fields
.field private static final defaultInstance:Lcom/google/wireless/contacts/proto/Contact$MobilePersonId;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private type_:Lcom/google/wireless/contacts/proto/Contact$MobilePersonId$IdType;

.field private value_:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 4404
    new-instance v0, Lcom/google/wireless/contacts/proto/Contact$MobilePersonId;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/wireless/contacts/proto/Contact$MobilePersonId;-><init>(Z)V

    sput-object v0, Lcom/google/wireless/contacts/proto/Contact$MobilePersonId;->defaultInstance:Lcom/google/wireless/contacts/proto/Contact$MobilePersonId;

    .line 4405
    sget-object v0, Lcom/google/wireless/contacts/proto/Contact$MobilePersonId;->defaultInstance:Lcom/google/wireless/contacts/proto/Contact$MobilePersonId;

    invoke-direct {v0}, Lcom/google/wireless/contacts/proto/Contact$MobilePersonId;->initFields()V

    .line 4406
    return-void
.end method

.method private constructor <init>(Lcom/google/wireless/contacts/proto/Contact$MobilePersonId$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 3993
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 4103
    iput-byte v0, p0, Lcom/google/wireless/contacts/proto/Contact$MobilePersonId;->memoizedIsInitialized:B

    .line 4123
    iput v0, p0, Lcom/google/wireless/contacts/proto/Contact$MobilePersonId;->memoizedSerializedSize:I

    .line 3994
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/wireless/contacts/proto/Contact$MobilePersonId$Builder;Lcom/google/wireless/contacts/proto/Contact$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 3988
    invoke-direct {p0, p1}, Lcom/google/wireless/contacts/proto/Contact$MobilePersonId;-><init>(Lcom/google/wireless/contacts/proto/Contact$MobilePersonId$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 3995
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 4103
    iput-byte v0, p0, Lcom/google/wireless/contacts/proto/Contact$MobilePersonId;->memoizedIsInitialized:B

    .line 4123
    iput v0, p0, Lcom/google/wireless/contacts/proto/Contact$MobilePersonId;->memoizedSerializedSize:I

    .line 3995
    return-void
.end method

.method static synthetic access$5302(Lcom/google/wireless/contacts/proto/Contact$MobilePersonId;Lcom/google/wireless/contacts/proto/Contact$MobilePersonId$IdType;)Lcom/google/wireless/contacts/proto/Contact$MobilePersonId$IdType;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 3988
    iput-object p1, p0, Lcom/google/wireless/contacts/proto/Contact$MobilePersonId;->type_:Lcom/google/wireless/contacts/proto/Contact$MobilePersonId$IdType;

    return-object p1
.end method

.method static synthetic access$5402(Lcom/google/wireless/contacts/proto/Contact$MobilePersonId;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 3988
    iput-object p1, p0, Lcom/google/wireless/contacts/proto/Contact$MobilePersonId;->value_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$5502(Lcom/google/wireless/contacts/proto/Contact$MobilePersonId;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 3988
    iput p1, p0, Lcom/google/wireless/contacts/proto/Contact$MobilePersonId;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/wireless/contacts/proto/Contact$MobilePersonId;
    .registers 1

    .prologue
    .line 3999
    sget-object v0, Lcom/google/wireless/contacts/proto/Contact$MobilePersonId;->defaultInstance:Lcom/google/wireless/contacts/proto/Contact$MobilePersonId;

    return-object v0
.end method

.method private getValueBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 4088
    iget-object v1, p0, Lcom/google/wireless/contacts/proto/Contact$MobilePersonId;->value_:Ljava/lang/Object;

    .line 4089
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 4090
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 4092
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Contact$MobilePersonId;->value_:Ljava/lang/Object;

    .line 4095
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
    .line 4100
    sget-object v0, Lcom/google/wireless/contacts/proto/Contact$MobilePersonId$IdType;->CONTACT:Lcom/google/wireless/contacts/proto/Contact$MobilePersonId$IdType;

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Contact$MobilePersonId;->type_:Lcom/google/wireless/contacts/proto/Contact$MobilePersonId$IdType;

    .line 4101
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Contact$MobilePersonId;->value_:Ljava/lang/Object;

    .line 4102
    return-void
.end method


# virtual methods
.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 3988
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Contact$MobilePersonId;->getDefaultInstanceForType()Lcom/google/wireless/contacts/proto/Contact$MobilePersonId;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/contacts/proto/Contact$MobilePersonId;
    .registers 2

    .prologue
    .line 4003
    sget-object v0, Lcom/google/wireless/contacts/proto/Contact$MobilePersonId;->defaultInstance:Lcom/google/wireless/contacts/proto/Contact$MobilePersonId;

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 6

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 4125
    iget v0, p0, Lcom/google/wireless/contacts/proto/Contact$MobilePersonId;->memoizedSerializedSize:I

    .line 4126
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_9

    move v1, v0

    .line 4138
    .end local v0           #size:I
    .local v1, size:I
    :goto_8
    return v1

    .line 4128
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_9
    const/4 v0, 0x0

    .line 4129
    iget v2, p0, Lcom/google/wireless/contacts/proto/Contact$MobilePersonId;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_1b

    .line 4130
    iget-object v2, p0, Lcom/google/wireless/contacts/proto/Contact$MobilePersonId;->type_:Lcom/google/wireless/contacts/proto/Contact$MobilePersonId$IdType;

    invoke-virtual {v2}, Lcom/google/wireless/contacts/proto/Contact$MobilePersonId$IdType;->getNumber()I

    move-result v2

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 4133
    :cond_1b
    iget v2, p0, Lcom/google/wireless/contacts/proto/Contact$MobilePersonId;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-ne v2, v4, :cond_2a

    .line 4134
    invoke-direct {p0}, Lcom/google/wireless/contacts/proto/Contact$MobilePersonId;->getValueBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 4137
    :cond_2a
    iput v0, p0, Lcom/google/wireless/contacts/proto/Contact$MobilePersonId;->memoizedSerializedSize:I

    move v1, v0

    .line 4138
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_8
.end method

.method public getType()Lcom/google/wireless/contacts/proto/Contact$MobilePersonId$IdType;
    .registers 2

    .prologue
    .line 4064
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Contact$MobilePersonId;->type_:Lcom/google/wireless/contacts/proto/Contact$MobilePersonId$IdType;

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .registers 5

    .prologue
    .line 4074
    iget-object v1, p0, Lcom/google/wireless/contacts/proto/Contact$MobilePersonId;->value_:Ljava/lang/Object;

    .line 4075
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 4076
    check-cast v1, Ljava/lang/String;

    .line 4084
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 4078
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 4080
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 4081
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 4082
    iput-object v2, p0, Lcom/google/wireless/contacts/proto/Contact$MobilePersonId;->value_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 4084
    goto :goto_8
.end method

.method public hasType()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 4061
    iget v1, p0, Lcom/google/wireless/contacts/proto/Contact$MobilePersonId;->bitField0_:I

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
    .line 4071
    iget v0, p0, Lcom/google/wireless/contacts/proto/Contact$MobilePersonId;->bitField0_:I

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

.method protected writeReplace()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    .prologue
    .line 4145
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

    .line 4114
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Contact$MobilePersonId;->getSerializedSize()I

    .line 4115
    iget v0, p0, Lcom/google/wireless/contacts/proto/Contact$MobilePersonId;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_14

    .line 4116
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Contact$MobilePersonId;->type_:Lcom/google/wireless/contacts/proto/Contact$MobilePersonId$IdType;

    invoke-virtual {v0}, Lcom/google/wireless/contacts/proto/Contact$MobilePersonId$IdType;->getNumber()I

    move-result v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 4118
    :cond_14
    iget v0, p0, Lcom/google/wireless/contacts/proto/Contact$MobilePersonId;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_21

    .line 4119
    invoke-direct {p0}, Lcom/google/wireless/contacts/proto/Contact$MobilePersonId;->getValueBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 4121
    :cond_21
    return-void
.end method
