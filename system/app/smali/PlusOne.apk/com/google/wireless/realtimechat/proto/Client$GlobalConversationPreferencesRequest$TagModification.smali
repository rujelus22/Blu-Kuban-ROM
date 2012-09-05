.class public final Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$TagModification;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Client.java"

# interfaces
.implements Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$TagModificationOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TagModification"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$TagModification$Builder;
    }
.end annotation


# static fields
.field private static final defaultInstance:Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$TagModification;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private tag_:Ljava/lang/Object;

.field private type_:Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$PreferencesModificationType;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 21458
    new-instance v0, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$TagModification;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$TagModification;-><init>(Z)V

    sput-object v0, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$TagModification;->defaultInstance:Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$TagModification;

    .line 21459
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$TagModification;->defaultInstance:Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$TagModification;

    invoke-direct {v0}, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$TagModification;->initFields()V

    .line 21460
    return-void
.end method

.method private constructor <init>(Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$TagModification$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 21097
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 21157
    iput-byte v0, p0, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$TagModification;->memoizedIsInitialized:B

    .line 21177
    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$TagModification;->memoizedSerializedSize:I

    .line 21098
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$TagModification$Builder;Lcom/google/wireless/realtimechat/proto/Client$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 21092
    invoke-direct {p0, p1}, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$TagModification;-><init>(Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$TagModification$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 21099
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 21157
    iput-byte v0, p0, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$TagModification;->memoizedIsInitialized:B

    .line 21177
    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$TagModification;->memoizedSerializedSize:I

    .line 21099
    return-void
.end method

.method static synthetic access$28602(Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$TagModification;Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$PreferencesModificationType;)Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$PreferencesModificationType;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 21092
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$TagModification;->type_:Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$PreferencesModificationType;

    return-object p1
.end method

.method static synthetic access$28702(Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$TagModification;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 21092
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$TagModification;->tag_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$28802(Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$TagModification;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 21092
    iput p1, p0, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$TagModification;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$TagModification;
    .registers 1

    .prologue
    .line 21103
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$TagModification;->defaultInstance:Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$TagModification;

    return-object v0
.end method

.method private getTagBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 21142
    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$TagModification;->tag_:Ljava/lang/Object;

    .line 21143
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 21144
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 21146
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$TagModification;->tag_:Ljava/lang/Object;

    .line 21149
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
    .line 21154
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$PreferencesModificationType;->ADD:Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$PreferencesModificationType;

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$TagModification;->type_:Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$PreferencesModificationType;

    .line 21155
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$TagModification;->tag_:Ljava/lang/Object;

    .line 21156
    return-void
.end method

.method public static newBuilder()Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$TagModification$Builder;
    .registers 1

    .prologue
    .line 21269
    #calls: Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$TagModification$Builder;->create()Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$TagModification$Builder;
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$TagModification$Builder;->access$28400()Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$TagModification$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 21092
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$TagModification;->getDefaultInstanceForType()Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$TagModification;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$TagModification;
    .registers 2

    .prologue
    .line 21107
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$TagModification;->defaultInstance:Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$TagModification;

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 6

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 21179
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$TagModification;->memoizedSerializedSize:I

    .line 21180
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_9

    move v1, v0

    .line 21192
    .end local v0           #size:I
    .local v1, size:I
    :goto_8
    return v1

    .line 21182
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_9
    const/4 v0, 0x0

    .line 21183
    iget v2, p0, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$TagModification;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_1b

    .line 21184
    iget-object v2, p0, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$TagModification;->type_:Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$PreferencesModificationType;

    invoke-virtual {v2}, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$PreferencesModificationType;->getNumber()I

    move-result v2

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 21187
    :cond_1b
    iget v2, p0, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$TagModification;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-ne v2, v4, :cond_2a

    .line 21188
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$TagModification;->getTagBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 21191
    :cond_2a
    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$TagModification;->memoizedSerializedSize:I

    move v1, v0

    .line 21192
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_8
.end method

.method public getTag()Ljava/lang/String;
    .registers 5

    .prologue
    .line 21128
    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$TagModification;->tag_:Ljava/lang/Object;

    .line 21129
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 21130
    check-cast v1, Ljava/lang/String;

    .line 21138
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 21132
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 21134
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 21135
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 21136
    iput-object v2, p0, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$TagModification;->tag_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 21138
    goto :goto_8
.end method

.method public getType()Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$PreferencesModificationType;
    .registers 2

    .prologue
    .line 21118
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$TagModification;->type_:Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$PreferencesModificationType;

    return-object v0
.end method

.method public hasTag()Z
    .registers 3

    .prologue
    .line 21125
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$TagModification;->bitField0_:I

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

.method public hasType()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 21115
    iget v1, p0, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$TagModification;->bitField0_:I

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

    .line 21159
    iget-byte v0, p0, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$TagModification;->memoizedIsInitialized:B

    .line 21160
    .local v0, isInitialized:B
    const/4 v2, -0x1

    if-eq v0, v2, :cond_b

    if-ne v0, v1, :cond_9

    .line 21163
    :goto_8
    return v1

    .line 21160
    :cond_9
    const/4 v1, 0x0

    goto :goto_8

    .line 21162
    :cond_b
    iput-byte v1, p0, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$TagModification;->memoizedIsInitialized:B

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
    .line 21199
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

    .line 21168
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$TagModification;->getSerializedSize()I

    .line 21169
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$TagModification;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_14

    .line 21170
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$TagModification;->type_:Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$PreferencesModificationType;

    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$PreferencesModificationType;->getNumber()I

    move-result v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 21172
    :cond_14
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$TagModification;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_21

    .line 21173
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$TagModification;->getTagBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 21175
    :cond_21
    return-void
.end method
