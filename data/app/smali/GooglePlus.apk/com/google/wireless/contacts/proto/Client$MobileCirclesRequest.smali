.class public final Lcom/google/wireless/contacts/proto/Client$MobileCirclesRequest;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Client.java"

# interfaces
.implements Lcom/google/wireless/contacts/proto/Client$MobileCirclesRequestOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/contacts/proto/Client;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MobileCirclesRequest"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/wireless/contacts/proto/Client$MobileCirclesRequest$Builder;
    }
.end annotation


# static fields
.field private static final defaultInstance:Lcom/google/wireless/contacts/proto/Client$MobileCirclesRequest;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private includeInvited_:Z

.field private includeMembers_:Z

.field private includeSuggested_:Z

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 8447
    new-instance v0, Lcom/google/wireless/contacts/proto/Client$MobileCirclesRequest;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/wireless/contacts/proto/Client$MobileCirclesRequest;-><init>(Z)V

    sput-object v0, Lcom/google/wireless/contacts/proto/Client$MobileCirclesRequest;->defaultInstance:Lcom/google/wireless/contacts/proto/Client$MobileCirclesRequest;

    .line 8448
    sget-object v0, Lcom/google/wireless/contacts/proto/Client$MobileCirclesRequest;->defaultInstance:Lcom/google/wireless/contacts/proto/Client$MobileCirclesRequest;

    invoke-direct {v0}, Lcom/google/wireless/contacts/proto/Client$MobileCirclesRequest;->initFields()V

    .line 8449
    return-void
.end method

.method private constructor <init>(Lcom/google/wireless/contacts/proto/Client$MobileCirclesRequest$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 8077
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 8126
    iput-byte v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileCirclesRequest;->memoizedIsInitialized:B

    .line 8149
    iput v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileCirclesRequest;->memoizedSerializedSize:I

    .line 8078
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/wireless/contacts/proto/Client$MobileCirclesRequest$Builder;Lcom/google/wireless/contacts/proto/Client$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 8072
    invoke-direct {p0, p1}, Lcom/google/wireless/contacts/proto/Client$MobileCirclesRequest;-><init>(Lcom/google/wireless/contacts/proto/Client$MobileCirclesRequest$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 8079
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 8126
    iput-byte v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileCirclesRequest;->memoizedIsInitialized:B

    .line 8149
    iput v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileCirclesRequest;->memoizedSerializedSize:I

    .line 8079
    return-void
.end method

.method static synthetic access$11002(Lcom/google/wireless/contacts/proto/Client$MobileCirclesRequest;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 8072
    iput-boolean p1, p0, Lcom/google/wireless/contacts/proto/Client$MobileCirclesRequest;->includeMembers_:Z

    return p1
.end method

.method static synthetic access$11102(Lcom/google/wireless/contacts/proto/Client$MobileCirclesRequest;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 8072
    iput-boolean p1, p0, Lcom/google/wireless/contacts/proto/Client$MobileCirclesRequest;->includeSuggested_:Z

    return p1
.end method

.method static synthetic access$11202(Lcom/google/wireless/contacts/proto/Client$MobileCirclesRequest;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 8072
    iput-boolean p1, p0, Lcom/google/wireless/contacts/proto/Client$MobileCirclesRequest;->includeInvited_:Z

    return p1
.end method

.method static synthetic access$11302(Lcom/google/wireless/contacts/proto/Client$MobileCirclesRequest;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 8072
    iput p1, p0, Lcom/google/wireless/contacts/proto/Client$MobileCirclesRequest;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/wireless/contacts/proto/Client$MobileCirclesRequest;
    .registers 1

    .prologue
    .line 8083
    sget-object v0, Lcom/google/wireless/contacts/proto/Client$MobileCirclesRequest;->defaultInstance:Lcom/google/wireless/contacts/proto/Client$MobileCirclesRequest;

    return-object v0
.end method

.method private initFields()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 8122
    iput-boolean v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileCirclesRequest;->includeMembers_:Z

    .line 8123
    iput-boolean v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileCirclesRequest;->includeSuggested_:Z

    .line 8124
    iput-boolean v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileCirclesRequest;->includeInvited_:Z

    .line 8125
    return-void
.end method

.method public static newBuilder()Lcom/google/wireless/contacts/proto/Client$MobileCirclesRequest$Builder;
    .registers 1

    .prologue
    .line 8245
    #calls: Lcom/google/wireless/contacts/proto/Client$MobileCirclesRequest$Builder;->create()Lcom/google/wireless/contacts/proto/Client$MobileCirclesRequest$Builder;
    invoke-static {}, Lcom/google/wireless/contacts/proto/Client$MobileCirclesRequest$Builder;->access$10800()Lcom/google/wireless/contacts/proto/Client$MobileCirclesRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/wireless/contacts/proto/Client$MobileCirclesRequest;)Lcom/google/wireless/contacts/proto/Client$MobileCirclesRequest$Builder;
    .registers 2
    .parameter "prototype"

    .prologue
    .line 8248
    invoke-static {}, Lcom/google/wireless/contacts/proto/Client$MobileCirclesRequest;->newBuilder()Lcom/google/wireless/contacts/proto/Client$MobileCirclesRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/wireless/contacts/proto/Client$MobileCirclesRequest$Builder;->mergeFrom(Lcom/google/wireless/contacts/proto/Client$MobileCirclesRequest;)Lcom/google/wireless/contacts/proto/Client$MobileCirclesRequest$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 8072
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Client$MobileCirclesRequest;->getDefaultInstanceForType()Lcom/google/wireless/contacts/proto/Client$MobileCirclesRequest;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/contacts/proto/Client$MobileCirclesRequest;
    .registers 2

    .prologue
    .line 8087
    sget-object v0, Lcom/google/wireless/contacts/proto/Client$MobileCirclesRequest;->defaultInstance:Lcom/google/wireless/contacts/proto/Client$MobileCirclesRequest;

    return-object v0
.end method

.method public getIncludeInvited()Z
    .registers 2

    .prologue
    .line 8118
    iget-boolean v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileCirclesRequest;->includeInvited_:Z

    return v0
.end method

.method public getIncludeMembers()Z
    .registers 2

    .prologue
    .line 8098
    iget-boolean v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileCirclesRequest;->includeMembers_:Z

    return v0
.end method

.method public getIncludeSuggested()Z
    .registers 2

    .prologue
    .line 8108
    iget-boolean v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileCirclesRequest;->includeSuggested_:Z

    return v0
.end method

.method public getSerializedSize()I
    .registers 6

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 8151
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileCirclesRequest;->memoizedSerializedSize:I

    .line 8152
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_9

    move v1, v0

    .line 8168
    .end local v0           #size:I
    .local v1, size:I
    :goto_8
    return v1

    .line 8154
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_9
    const/4 v0, 0x0

    .line 8155
    iget v2, p0, Lcom/google/wireless/contacts/proto/Client$MobileCirclesRequest;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_17

    .line 8156
    iget-boolean v2, p0, Lcom/google/wireless/contacts/proto/Client$MobileCirclesRequest;->includeMembers_:Z

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v2

    add-int/2addr v0, v2

    .line 8159
    :cond_17
    iget v2, p0, Lcom/google/wireless/contacts/proto/Client$MobileCirclesRequest;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-ne v2, v4, :cond_24

    .line 8160
    iget-boolean v2, p0, Lcom/google/wireless/contacts/proto/Client$MobileCirclesRequest;->includeSuggested_:Z

    invoke-static {v4, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v2

    add-int/2addr v0, v2

    .line 8163
    :cond_24
    iget v2, p0, Lcom/google/wireless/contacts/proto/Client$MobileCirclesRequest;->bitField0_:I

    and-int/lit8 v2, v2, 0x4

    const/4 v3, 0x4

    if-ne v2, v3, :cond_33

    .line 8164
    const/4 v2, 0x3

    iget-boolean v3, p0, Lcom/google/wireless/contacts/proto/Client$MobileCirclesRequest;->includeInvited_:Z

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v2

    add-int/2addr v0, v2

    .line 8167
    :cond_33
    iput v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileCirclesRequest;->memoizedSerializedSize:I

    move v1, v0

    .line 8168
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_8
.end method

.method public hasIncludeInvited()Z
    .registers 3

    .prologue
    .line 8115
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileCirclesRequest;->bitField0_:I

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

.method public hasIncludeMembers()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 8095
    iget v1, p0, Lcom/google/wireless/contacts/proto/Client$MobileCirclesRequest;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public hasIncludeSuggested()Z
    .registers 3

    .prologue
    .line 8105
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileCirclesRequest;->bitField0_:I

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

    .line 8128
    iget-byte v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileCirclesRequest;->memoizedIsInitialized:B

    .line 8129
    .local v0, isInitialized:B
    const/4 v2, -0x1

    if-eq v0, v2, :cond_b

    if-ne v0, v1, :cond_9

    .line 8132
    :goto_8
    return v1

    .line 8129
    :cond_9
    const/4 v1, 0x0

    goto :goto_8

    .line 8131
    :cond_b
    iput-byte v1, p0, Lcom/google/wireless/contacts/proto/Client$MobileCirclesRequest;->memoizedIsInitialized:B

    goto :goto_8
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 8072
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Client$MobileCirclesRequest;->newBuilderForType()Lcom/google/wireless/contacts/proto/Client$MobileCirclesRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/google/wireless/contacts/proto/Client$MobileCirclesRequest$Builder;
    .registers 2

    .prologue
    .line 8246
    invoke-static {}, Lcom/google/wireless/contacts/proto/Client$MobileCirclesRequest;->newBuilder()Lcom/google/wireless/contacts/proto/Client$MobileCirclesRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 8072
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Client$MobileCirclesRequest;->toBuilder()Lcom/google/wireless/contacts/proto/Client$MobileCirclesRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/wireless/contacts/proto/Client$MobileCirclesRequest$Builder;
    .registers 2

    .prologue
    .line 8250
    invoke-static {p0}, Lcom/google/wireless/contacts/proto/Client$MobileCirclesRequest;->newBuilder(Lcom/google/wireless/contacts/proto/Client$MobileCirclesRequest;)Lcom/google/wireless/contacts/proto/Client$MobileCirclesRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected writeReplace()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    .prologue
    .line 8175
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

    .line 8137
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Client$MobileCirclesRequest;->getSerializedSize()I

    .line 8138
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileCirclesRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_10

    .line 8139
    iget-boolean v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileCirclesRequest;->includeMembers_:Z

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 8141
    :cond_10
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileCirclesRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_1b

    .line 8142
    iget-boolean v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileCirclesRequest;->includeSuggested_:Z

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 8144
    :cond_1b
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileCirclesRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_28

    .line 8145
    const/4 v0, 0x3

    iget-boolean v1, p0, Lcom/google/wireless/contacts/proto/Client$MobileCirclesRequest;->includeInvited_:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 8147
    :cond_28
    return-void
.end method
