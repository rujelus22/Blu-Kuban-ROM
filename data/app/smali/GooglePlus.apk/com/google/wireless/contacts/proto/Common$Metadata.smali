.class public final Lcom/google/wireless/contacts/proto/Common$Metadata;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Common.java"

# interfaces
.implements Lcom/google/wireless/contacts/proto/Common$MetadataOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/contacts/proto/Common;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Metadata"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/wireless/contacts/proto/Common$Metadata$Builder;,
        Lcom/google/wireless/contacts/proto/Common$Metadata$ACL;
    }
.end annotation


# static fields
.field private static final defaultInstance:Lcom/google/wireless/contacts/proto/Common$Metadata;

.field private static final serialVersionUID:J


# instance fields
.field private acl_:Lcom/google/wireless/contacts/proto/Common$Metadata$ACL;

.field private bitField0_:I

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 338
    new-instance v0, Lcom/google/wireless/contacts/proto/Common$Metadata;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/wireless/contacts/proto/Common$Metadata;-><init>(Z)V

    sput-object v0, Lcom/google/wireless/contacts/proto/Common$Metadata;->defaultInstance:Lcom/google/wireless/contacts/proto/Common$Metadata;

    .line 339
    sget-object v0, Lcom/google/wireless/contacts/proto/Common$Metadata;->defaultInstance:Lcom/google/wireless/contacts/proto/Common$Metadata;

    invoke-direct {v0}, Lcom/google/wireless/contacts/proto/Common$Metadata;->initFields()V

    .line 340
    return-void
.end method

.method private constructor <init>(Lcom/google/wireless/contacts/proto/Common$Metadata$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 23
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 94
    iput-byte v0, p0, Lcom/google/wireless/contacts/proto/Common$Metadata;->memoizedIsInitialized:B

    .line 111
    iput v0, p0, Lcom/google/wireless/contacts/proto/Common$Metadata;->memoizedSerializedSize:I

    .line 24
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/wireless/contacts/proto/Common$Metadata$Builder;Lcom/google/wireless/contacts/proto/Common$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 18
    invoke-direct {p0, p1}, Lcom/google/wireless/contacts/proto/Common$Metadata;-><init>(Lcom/google/wireless/contacts/proto/Common$Metadata$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 25
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 94
    iput-byte v0, p0, Lcom/google/wireless/contacts/proto/Common$Metadata;->memoizedIsInitialized:B

    .line 111
    iput v0, p0, Lcom/google/wireless/contacts/proto/Common$Metadata;->memoizedSerializedSize:I

    .line 25
    return-void
.end method

.method static synthetic access$302(Lcom/google/wireless/contacts/proto/Common$Metadata;Lcom/google/wireless/contacts/proto/Common$Metadata$ACL;)Lcom/google/wireless/contacts/proto/Common$Metadata$ACL;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 18
    iput-object p1, p0, Lcom/google/wireless/contacts/proto/Common$Metadata;->acl_:Lcom/google/wireless/contacts/proto/Common$Metadata$ACL;

    return-object p1
.end method

.method static synthetic access$402(Lcom/google/wireless/contacts/proto/Common$Metadata;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 18
    iput p1, p0, Lcom/google/wireless/contacts/proto/Common$Metadata;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/wireless/contacts/proto/Common$Metadata;
    .registers 1

    .prologue
    .line 29
    sget-object v0, Lcom/google/wireless/contacts/proto/Common$Metadata;->defaultInstance:Lcom/google/wireless/contacts/proto/Common$Metadata;

    return-object v0
.end method

.method private initFields()V
    .registers 2

    .prologue
    .line 92
    sget-object v0, Lcom/google/wireless/contacts/proto/Common$Metadata$ACL;->PUBLIC:Lcom/google/wireless/contacts/proto/Common$Metadata$ACL;

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Common$Metadata;->acl_:Lcom/google/wireless/contacts/proto/Common$Metadata$ACL;

    .line 93
    return-void
.end method

.method public static newBuilder()Lcom/google/wireless/contacts/proto/Common$Metadata$Builder;
    .registers 1

    .prologue
    .line 199
    #calls: Lcom/google/wireless/contacts/proto/Common$Metadata$Builder;->create()Lcom/google/wireless/contacts/proto/Common$Metadata$Builder;
    invoke-static {}, Lcom/google/wireless/contacts/proto/Common$Metadata$Builder;->access$100()Lcom/google/wireless/contacts/proto/Common$Metadata$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/wireless/contacts/proto/Common$Metadata;)Lcom/google/wireless/contacts/proto/Common$Metadata$Builder;
    .registers 2
    .parameter "prototype"

    .prologue
    .line 202
    invoke-static {}, Lcom/google/wireless/contacts/proto/Common$Metadata;->newBuilder()Lcom/google/wireless/contacts/proto/Common$Metadata$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/wireless/contacts/proto/Common$Metadata$Builder;->mergeFrom(Lcom/google/wireless/contacts/proto/Common$Metadata;)Lcom/google/wireless/contacts/proto/Common$Metadata$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getAcl()Lcom/google/wireless/contacts/proto/Common$Metadata$ACL;
    .registers 2

    .prologue
    .line 88
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Common$Metadata;->acl_:Lcom/google/wireless/contacts/proto/Common$Metadata$ACL;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 18
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Common$Metadata;->getDefaultInstanceForType()Lcom/google/wireless/contacts/proto/Common$Metadata;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/contacts/proto/Common$Metadata;
    .registers 2

    .prologue
    .line 33
    sget-object v0, Lcom/google/wireless/contacts/proto/Common$Metadata;->defaultInstance:Lcom/google/wireless/contacts/proto/Common$Metadata;

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 5

    .prologue
    const/4 v3, 0x1

    .line 113
    iget v0, p0, Lcom/google/wireless/contacts/proto/Common$Metadata;->memoizedSerializedSize:I

    .line 114
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_8

    move v1, v0

    .line 122
    .end local v0           #size:I
    .local v1, size:I
    :goto_7
    return v1

    .line 116
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_8
    const/4 v0, 0x0

    .line 117
    iget v2, p0, Lcom/google/wireless/contacts/proto/Common$Metadata;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_1a

    .line 118
    iget-object v2, p0, Lcom/google/wireless/contacts/proto/Common$Metadata;->acl_:Lcom/google/wireless/contacts/proto/Common$Metadata$ACL;

    invoke-virtual {v2}, Lcom/google/wireless/contacts/proto/Common$Metadata$ACL;->getNumber()I

    move-result v2

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 121
    :cond_1a
    iput v0, p0, Lcom/google/wireless/contacts/proto/Common$Metadata;->memoizedSerializedSize:I

    move v1, v0

    .line 122
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_7
.end method

.method public hasAcl()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 85
    iget v1, p0, Lcom/google/wireless/contacts/proto/Common$Metadata;->bitField0_:I

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

    .line 96
    iget-byte v0, p0, Lcom/google/wireless/contacts/proto/Common$Metadata;->memoizedIsInitialized:B

    .line 97
    .local v0, isInitialized:B
    const/4 v2, -0x1

    if-eq v0, v2, :cond_b

    if-ne v0, v1, :cond_9

    .line 100
    :goto_8
    return v1

    .line 97
    :cond_9
    const/4 v1, 0x0

    goto :goto_8

    .line 99
    :cond_b
    iput-byte v1, p0, Lcom/google/wireless/contacts/proto/Common$Metadata;->memoizedIsInitialized:B

    goto :goto_8
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 18
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Common$Metadata;->newBuilderForType()Lcom/google/wireless/contacts/proto/Common$Metadata$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/google/wireless/contacts/proto/Common$Metadata$Builder;
    .registers 2

    .prologue
    .line 200
    invoke-static {}, Lcom/google/wireless/contacts/proto/Common$Metadata;->newBuilder()Lcom/google/wireless/contacts/proto/Common$Metadata$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 18
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Common$Metadata;->toBuilder()Lcom/google/wireless/contacts/proto/Common$Metadata$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/wireless/contacts/proto/Common$Metadata$Builder;
    .registers 2

    .prologue
    .line 204
    invoke-static {p0}, Lcom/google/wireless/contacts/proto/Common$Metadata;->newBuilder(Lcom/google/wireless/contacts/proto/Common$Metadata;)Lcom/google/wireless/contacts/proto/Common$Metadata$Builder;

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
    .line 129
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->writeReplace()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .registers 4
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 105
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Common$Metadata;->getSerializedSize()I

    .line 106
    iget v0, p0, Lcom/google/wireless/contacts/proto/Common$Metadata;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_13

    .line 107
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Common$Metadata;->acl_:Lcom/google/wireless/contacts/proto/Common$Metadata$ACL;

    invoke-virtual {v0}, Lcom/google/wireless/contacts/proto/Common$Metadata$ACL;->getNumber()I

    move-result v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 109
    :cond_13
    return-void
.end method
