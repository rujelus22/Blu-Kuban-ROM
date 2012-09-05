.class public final Lcom/google/wireless/contacts/proto/Contact$Email;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Contact.java"

# interfaces
.implements Lcom/google/wireless/contacts/proto/Contact$EmailOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/contacts/proto/Contact;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Email"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/wireless/contacts/proto/Contact$Email$Builder;
    }
.end annotation


# static fields
.field private static final defaultInstance:Lcom/google/wireless/contacts/proto/Contact$Email;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private email_:Ljava/lang/Object;

.field private evergreen_:Z

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private metadata_:Lcom/google/wireless/contacts/proto/Common$Metadata;

.field private type_:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 558
    new-instance v0, Lcom/google/wireless/contacts/proto/Contact$Email;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/wireless/contacts/proto/Contact$Email;-><init>(Z)V

    sput-object v0, Lcom/google/wireless/contacts/proto/Contact$Email;->defaultInstance:Lcom/google/wireless/contacts/proto/Contact$Email;

    .line 559
    sget-object v0, Lcom/google/wireless/contacts/proto/Contact$Email;->defaultInstance:Lcom/google/wireless/contacts/proto/Contact$Email;

    invoke-direct {v0}, Lcom/google/wireless/contacts/proto/Contact$Email;->initFields()V

    .line 560
    return-void
.end method

.method private constructor <init>(Lcom/google/wireless/contacts/proto/Contact$Email$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 35
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 139
    iput-byte v0, p0, Lcom/google/wireless/contacts/proto/Contact$Email;->memoizedIsInitialized:B

    .line 165
    iput v0, p0, Lcom/google/wireless/contacts/proto/Contact$Email;->memoizedSerializedSize:I

    .line 36
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/wireless/contacts/proto/Contact$Email$Builder;Lcom/google/wireless/contacts/proto/Contact$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/google/wireless/contacts/proto/Contact$Email;-><init>(Lcom/google/wireless/contacts/proto/Contact$Email$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 37
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 139
    iput-byte v0, p0, Lcom/google/wireless/contacts/proto/Contact$Email;->memoizedIsInitialized:B

    .line 165
    iput v0, p0, Lcom/google/wireless/contacts/proto/Contact$Email;->memoizedSerializedSize:I

    .line 37
    return-void
.end method

.method static synthetic access$302(Lcom/google/wireless/contacts/proto/Contact$Email;Lcom/google/wireless/contacts/proto/Common$Metadata;)Lcom/google/wireless/contacts/proto/Common$Metadata;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 30
    iput-object p1, p0, Lcom/google/wireless/contacts/proto/Contact$Email;->metadata_:Lcom/google/wireless/contacts/proto/Common$Metadata;

    return-object p1
.end method

.method static synthetic access$402(Lcom/google/wireless/contacts/proto/Contact$Email;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 30
    iput-object p1, p0, Lcom/google/wireless/contacts/proto/Contact$Email;->email_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$502(Lcom/google/wireless/contacts/proto/Contact$Email;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 30
    iput-object p1, p0, Lcom/google/wireless/contacts/proto/Contact$Email;->type_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$602(Lcom/google/wireless/contacts/proto/Contact$Email;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 30
    iput-boolean p1, p0, Lcom/google/wireless/contacts/proto/Contact$Email;->evergreen_:Z

    return p1
.end method

.method static synthetic access$702(Lcom/google/wireless/contacts/proto/Contact$Email;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 30
    iput p1, p0, Lcom/google/wireless/contacts/proto/Contact$Email;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/wireless/contacts/proto/Contact$Email;
    .registers 1

    .prologue
    .line 41
    sget-object v0, Lcom/google/wireless/contacts/proto/Contact$Email;->defaultInstance:Lcom/google/wireless/contacts/proto/Contact$Email;

    return-object v0
.end method

.method private getEmailBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 80
    iget-object v1, p0, Lcom/google/wireless/contacts/proto/Contact$Email;->email_:Ljava/lang/Object;

    .line 81
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 82
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 84
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Contact$Email;->email_:Ljava/lang/Object;

    .line 87
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

.method private getTypeBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 112
    iget-object v1, p0, Lcom/google/wireless/contacts/proto/Contact$Email;->type_:Ljava/lang/Object;

    .line 113
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 114
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 116
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Contact$Email;->type_:Ljava/lang/Object;

    .line 119
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
    .line 134
    invoke-static {}, Lcom/google/wireless/contacts/proto/Common$Metadata;->getDefaultInstance()Lcom/google/wireless/contacts/proto/Common$Metadata;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Contact$Email;->metadata_:Lcom/google/wireless/contacts/proto/Common$Metadata;

    .line 135
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Contact$Email;->email_:Ljava/lang/Object;

    .line 136
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Contact$Email;->type_:Ljava/lang/Object;

    .line 137
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/wireless/contacts/proto/Contact$Email;->evergreen_:Z

    .line 138
    return-void
.end method

.method public static newBuilder()Lcom/google/wireless/contacts/proto/Contact$Email$Builder;
    .registers 1

    .prologue
    .line 265
    #calls: Lcom/google/wireless/contacts/proto/Contact$Email$Builder;->create()Lcom/google/wireless/contacts/proto/Contact$Email$Builder;
    invoke-static {}, Lcom/google/wireless/contacts/proto/Contact$Email$Builder;->access$100()Lcom/google/wireless/contacts/proto/Contact$Email$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 30
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Contact$Email;->getDefaultInstanceForType()Lcom/google/wireless/contacts/proto/Contact$Email;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/contacts/proto/Contact$Email;
    .registers 2

    .prologue
    .line 45
    sget-object v0, Lcom/google/wireless/contacts/proto/Contact$Email;->defaultInstance:Lcom/google/wireless/contacts/proto/Contact$Email;

    return-object v0
.end method

.method public getEmail()Ljava/lang/String;
    .registers 5

    .prologue
    .line 66
    iget-object v1, p0, Lcom/google/wireless/contacts/proto/Contact$Email;->email_:Ljava/lang/Object;

    .line 67
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 68
    check-cast v1, Ljava/lang/String;

    .line 76
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 70
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 72
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 73
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 74
    iput-object v2, p0, Lcom/google/wireless/contacts/proto/Contact$Email;->email_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 76
    goto :goto_8
.end method

.method public getEvergreen()Z
    .registers 2

    .prologue
    .line 130
    iget-boolean v0, p0, Lcom/google/wireless/contacts/proto/Contact$Email;->evergreen_:Z

    return v0
.end method

.method public getMetadata()Lcom/google/wireless/contacts/proto/Common$Metadata;
    .registers 2

    .prologue
    .line 56
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Contact$Email;->metadata_:Lcom/google/wireless/contacts/proto/Common$Metadata;

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 7

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 167
    iget v0, p0, Lcom/google/wireless/contacts/proto/Contact$Email;->memoizedSerializedSize:I

    .line 168
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_a

    move v1, v0

    .line 188
    .end local v0           #size:I
    .local v1, size:I
    :goto_9
    return v1

    .line 170
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_a
    const/4 v0, 0x0

    .line 171
    iget v2, p0, Lcom/google/wireless/contacts/proto/Contact$Email;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_18

    .line 172
    iget-object v2, p0, Lcom/google/wireless/contacts/proto/Contact$Email;->metadata_:Lcom/google/wireless/contacts/proto/Common$Metadata;

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 175
    :cond_18
    iget v2, p0, Lcom/google/wireless/contacts/proto/Contact$Email;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-ne v2, v4, :cond_27

    .line 176
    invoke-direct {p0}, Lcom/google/wireless/contacts/proto/Contact$Email;->getEmailBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 179
    :cond_27
    iget v2, p0, Lcom/google/wireless/contacts/proto/Contact$Email;->bitField0_:I

    and-int/lit8 v2, v2, 0x4

    if-ne v2, v5, :cond_37

    .line 180
    const/4 v2, 0x3

    invoke-direct {p0}, Lcom/google/wireless/contacts/proto/Contact$Email;->getTypeBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 183
    :cond_37
    iget v2, p0, Lcom/google/wireless/contacts/proto/Contact$Email;->bitField0_:I

    and-int/lit8 v2, v2, 0x8

    const/16 v3, 0x8

    if-ne v2, v3, :cond_46

    .line 184
    iget-boolean v2, p0, Lcom/google/wireless/contacts/proto/Contact$Email;->evergreen_:Z

    invoke-static {v5, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v2

    add-int/2addr v0, v2

    .line 187
    :cond_46
    iput v0, p0, Lcom/google/wireless/contacts/proto/Contact$Email;->memoizedSerializedSize:I

    move v1, v0

    .line 188
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_9
.end method

.method public getType()Ljava/lang/String;
    .registers 5

    .prologue
    .line 98
    iget-object v1, p0, Lcom/google/wireless/contacts/proto/Contact$Email;->type_:Ljava/lang/Object;

    .line 99
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 100
    check-cast v1, Ljava/lang/String;

    .line 108
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 102
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 104
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 105
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 106
    iput-object v2, p0, Lcom/google/wireless/contacts/proto/Contact$Email;->type_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 108
    goto :goto_8
.end method

.method public hasEmail()Z
    .registers 3

    .prologue
    .line 63
    iget v0, p0, Lcom/google/wireless/contacts/proto/Contact$Email;->bitField0_:I

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

.method public hasEvergreen()Z
    .registers 3

    .prologue
    .line 127
    iget v0, p0, Lcom/google/wireless/contacts/proto/Contact$Email;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public hasMetadata()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 53
    iget v1, p0, Lcom/google/wireless/contacts/proto/Contact$Email;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public hasType()Z
    .registers 3

    .prologue
    .line 95
    iget v0, p0, Lcom/google/wireless/contacts/proto/Contact$Email;->bitField0_:I

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

.method public final isInitialized()Z
    .registers 4

    .prologue
    const/4 v1, 0x1

    .line 141
    iget-byte v0, p0, Lcom/google/wireless/contacts/proto/Contact$Email;->memoizedIsInitialized:B

    .line 142
    .local v0, isInitialized:B
    const/4 v2, -0x1

    if-eq v0, v2, :cond_b

    if-ne v0, v1, :cond_9

    .line 145
    :goto_8
    return v1

    .line 142
    :cond_9
    const/4 v1, 0x0

    goto :goto_8

    .line 144
    :cond_b
    iput-byte v1, p0, Lcom/google/wireless/contacts/proto/Contact$Email;->memoizedIsInitialized:B

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
    .line 195
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->writeReplace()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .registers 6
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 150
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Contact$Email;->getSerializedSize()I

    .line 151
    iget v0, p0, Lcom/google/wireless/contacts/proto/Contact$Email;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_11

    .line 152
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Contact$Email;->metadata_:Lcom/google/wireless/contacts/proto/Common$Metadata;

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 154
    :cond_11
    iget v0, p0, Lcom/google/wireless/contacts/proto/Contact$Email;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_1e

    .line 155
    invoke-direct {p0}, Lcom/google/wireless/contacts/proto/Contact$Email;->getEmailBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 157
    :cond_1e
    iget v0, p0, Lcom/google/wireless/contacts/proto/Contact$Email;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-ne v0, v3, :cond_2c

    .line 158
    const/4 v0, 0x3

    invoke-direct {p0}, Lcom/google/wireless/contacts/proto/Contact$Email;->getTypeBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 160
    :cond_2c
    iget v0, p0, Lcom/google/wireless/contacts/proto/Contact$Email;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_39

    .line 161
    iget-boolean v0, p0, Lcom/google/wireless/contacts/proto/Contact$Email;->evergreen_:Z

    invoke-virtual {p1, v3, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 163
    :cond_39
    return-void
.end method
