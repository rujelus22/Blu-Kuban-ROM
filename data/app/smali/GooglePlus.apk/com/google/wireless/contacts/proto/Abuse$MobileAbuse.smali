.class public final Lcom/google/wireless/contacts/proto/Abuse$MobileAbuse;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Abuse.java"

# interfaces
.implements Lcom/google/wireless/contacts/proto/Abuse$MobileAbuseOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/contacts/proto/Abuse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MobileAbuse"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/wireless/contacts/proto/Abuse$MobileAbuse$Builder;,
        Lcom/google/wireless/contacts/proto/Abuse$MobileAbuse$Type;
    }
.end annotation


# static fields
.field private static final defaultInstance:Lcom/google/wireless/contacts/proto/Abuse$MobileAbuse;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private type_:Lcom/google/wireless/contacts/proto/Abuse$MobileAbuse$Type;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 353
    new-instance v0, Lcom/google/wireless/contacts/proto/Abuse$MobileAbuse;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/wireless/contacts/proto/Abuse$MobileAbuse;-><init>(Z)V

    sput-object v0, Lcom/google/wireless/contacts/proto/Abuse$MobileAbuse;->defaultInstance:Lcom/google/wireless/contacts/proto/Abuse$MobileAbuse;

    .line 354
    sget-object v0, Lcom/google/wireless/contacts/proto/Abuse$MobileAbuse;->defaultInstance:Lcom/google/wireless/contacts/proto/Abuse$MobileAbuse;

    invoke-direct {v0}, Lcom/google/wireless/contacts/proto/Abuse$MobileAbuse;->initFields()V

    .line 355
    return-void
.end method

.method private constructor <init>(Lcom/google/wireless/contacts/proto/Abuse$MobileAbuse$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 23
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 109
    iput-byte v0, p0, Lcom/google/wireless/contacts/proto/Abuse$MobileAbuse;->memoizedIsInitialized:B

    .line 126
    iput v0, p0, Lcom/google/wireless/contacts/proto/Abuse$MobileAbuse;->memoizedSerializedSize:I

    .line 24
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/wireless/contacts/proto/Abuse$MobileAbuse$Builder;Lcom/google/wireless/contacts/proto/Abuse$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 18
    invoke-direct {p0, p1}, Lcom/google/wireless/contacts/proto/Abuse$MobileAbuse;-><init>(Lcom/google/wireless/contacts/proto/Abuse$MobileAbuse$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 25
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 109
    iput-byte v0, p0, Lcom/google/wireless/contacts/proto/Abuse$MobileAbuse;->memoizedIsInitialized:B

    .line 126
    iput v0, p0, Lcom/google/wireless/contacts/proto/Abuse$MobileAbuse;->memoizedSerializedSize:I

    .line 25
    return-void
.end method

.method static synthetic access$302(Lcom/google/wireless/contacts/proto/Abuse$MobileAbuse;Lcom/google/wireless/contacts/proto/Abuse$MobileAbuse$Type;)Lcom/google/wireless/contacts/proto/Abuse$MobileAbuse$Type;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 18
    iput-object p1, p0, Lcom/google/wireless/contacts/proto/Abuse$MobileAbuse;->type_:Lcom/google/wireless/contacts/proto/Abuse$MobileAbuse$Type;

    return-object p1
.end method

.method static synthetic access$402(Lcom/google/wireless/contacts/proto/Abuse$MobileAbuse;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 18
    iput p1, p0, Lcom/google/wireless/contacts/proto/Abuse$MobileAbuse;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/wireless/contacts/proto/Abuse$MobileAbuse;
    .registers 1

    .prologue
    .line 29
    sget-object v0, Lcom/google/wireless/contacts/proto/Abuse$MobileAbuse;->defaultInstance:Lcom/google/wireless/contacts/proto/Abuse$MobileAbuse;

    return-object v0
.end method

.method private initFields()V
    .registers 2

    .prologue
    .line 107
    sget-object v0, Lcom/google/wireless/contacts/proto/Abuse$MobileAbuse$Type;->CHILD_ABUSE:Lcom/google/wireless/contacts/proto/Abuse$MobileAbuse$Type;

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Abuse$MobileAbuse;->type_:Lcom/google/wireless/contacts/proto/Abuse$MobileAbuse$Type;

    .line 108
    return-void
.end method

.method public static newBuilder()Lcom/google/wireless/contacts/proto/Abuse$MobileAbuse$Builder;
    .registers 1

    .prologue
    .line 214
    #calls: Lcom/google/wireless/contacts/proto/Abuse$MobileAbuse$Builder;->create()Lcom/google/wireless/contacts/proto/Abuse$MobileAbuse$Builder;
    invoke-static {}, Lcom/google/wireless/contacts/proto/Abuse$MobileAbuse$Builder;->access$100()Lcom/google/wireless/contacts/proto/Abuse$MobileAbuse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/wireless/contacts/proto/Abuse$MobileAbuse;)Lcom/google/wireless/contacts/proto/Abuse$MobileAbuse$Builder;
    .registers 2
    .parameter "prototype"

    .prologue
    .line 217
    invoke-static {}, Lcom/google/wireless/contacts/proto/Abuse$MobileAbuse;->newBuilder()Lcom/google/wireless/contacts/proto/Abuse$MobileAbuse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/wireless/contacts/proto/Abuse$MobileAbuse$Builder;->mergeFrom(Lcom/google/wireless/contacts/proto/Abuse$MobileAbuse;)Lcom/google/wireless/contacts/proto/Abuse$MobileAbuse$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 18
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Abuse$MobileAbuse;->getDefaultInstanceForType()Lcom/google/wireless/contacts/proto/Abuse$MobileAbuse;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/contacts/proto/Abuse$MobileAbuse;
    .registers 2

    .prologue
    .line 33
    sget-object v0, Lcom/google/wireless/contacts/proto/Abuse$MobileAbuse;->defaultInstance:Lcom/google/wireless/contacts/proto/Abuse$MobileAbuse;

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 5

    .prologue
    const/4 v3, 0x1

    .line 128
    iget v0, p0, Lcom/google/wireless/contacts/proto/Abuse$MobileAbuse;->memoizedSerializedSize:I

    .line 129
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_8

    move v1, v0

    .line 137
    .end local v0           #size:I
    .local v1, size:I
    :goto_7
    return v1

    .line 131
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_8
    const/4 v0, 0x0

    .line 132
    iget v2, p0, Lcom/google/wireless/contacts/proto/Abuse$MobileAbuse;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_1a

    .line 133
    iget-object v2, p0, Lcom/google/wireless/contacts/proto/Abuse$MobileAbuse;->type_:Lcom/google/wireless/contacts/proto/Abuse$MobileAbuse$Type;

    invoke-virtual {v2}, Lcom/google/wireless/contacts/proto/Abuse$MobileAbuse$Type;->getNumber()I

    move-result v2

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 136
    :cond_1a
    iput v0, p0, Lcom/google/wireless/contacts/proto/Abuse$MobileAbuse;->memoizedSerializedSize:I

    move v1, v0

    .line 137
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_7
.end method

.method public getType()Lcom/google/wireless/contacts/proto/Abuse$MobileAbuse$Type;
    .registers 2

    .prologue
    .line 103
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Abuse$MobileAbuse;->type_:Lcom/google/wireless/contacts/proto/Abuse$MobileAbuse$Type;

    return-object v0
.end method

.method public hasType()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 100
    iget v1, p0, Lcom/google/wireless/contacts/proto/Abuse$MobileAbuse;->bitField0_:I

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

    .line 111
    iget-byte v0, p0, Lcom/google/wireless/contacts/proto/Abuse$MobileAbuse;->memoizedIsInitialized:B

    .line 112
    .local v0, isInitialized:B
    const/4 v2, -0x1

    if-eq v0, v2, :cond_b

    if-ne v0, v1, :cond_9

    .line 115
    :goto_8
    return v1

    .line 112
    :cond_9
    const/4 v1, 0x0

    goto :goto_8

    .line 114
    :cond_b
    iput-byte v1, p0, Lcom/google/wireless/contacts/proto/Abuse$MobileAbuse;->memoizedIsInitialized:B

    goto :goto_8
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 18
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Abuse$MobileAbuse;->newBuilderForType()Lcom/google/wireless/contacts/proto/Abuse$MobileAbuse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/google/wireless/contacts/proto/Abuse$MobileAbuse$Builder;
    .registers 2

    .prologue
    .line 215
    invoke-static {}, Lcom/google/wireless/contacts/proto/Abuse$MobileAbuse;->newBuilder()Lcom/google/wireless/contacts/proto/Abuse$MobileAbuse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 18
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Abuse$MobileAbuse;->toBuilder()Lcom/google/wireless/contacts/proto/Abuse$MobileAbuse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/wireless/contacts/proto/Abuse$MobileAbuse$Builder;
    .registers 2

    .prologue
    .line 219
    invoke-static {p0}, Lcom/google/wireless/contacts/proto/Abuse$MobileAbuse;->newBuilder(Lcom/google/wireless/contacts/proto/Abuse$MobileAbuse;)Lcom/google/wireless/contacts/proto/Abuse$MobileAbuse$Builder;

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
    .line 144
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

    .line 120
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Abuse$MobileAbuse;->getSerializedSize()I

    .line 121
    iget v0, p0, Lcom/google/wireless/contacts/proto/Abuse$MobileAbuse;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_13

    .line 122
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Abuse$MobileAbuse;->type_:Lcom/google/wireless/contacts/proto/Abuse$MobileAbuse$Type;

    invoke-virtual {v0}, Lcom/google/wireless/contacts/proto/Abuse$MobileAbuse$Type;->getNumber()I

    move-result v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 124
    :cond_13
    return-void
.end method
