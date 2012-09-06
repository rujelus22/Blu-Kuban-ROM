.class public final Lcom/google/wireless/contacts/proto/Profile$Gender;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Profile.java"

# interfaces
.implements Lcom/google/wireless/contacts/proto/Profile$GenderOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/contacts/proto/Profile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Gender"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/wireless/contacts/proto/Profile$Gender$Builder;,
        Lcom/google/wireless/contacts/proto/Profile$Gender$Type;
    }
.end annotation


# static fields
.field private static final defaultInstance:Lcom/google/wireless/contacts/proto/Profile$Gender;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private metadata_:Lcom/google/wireless/contacts/proto/Common$Metadata;

.field private type_:Lcom/google/wireless/contacts/proto/Profile$Gender$Type;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 1275
    new-instance v0, Lcom/google/wireless/contacts/proto/Profile$Gender;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/wireless/contacts/proto/Profile$Gender;-><init>(Z)V

    sput-object v0, Lcom/google/wireless/contacts/proto/Profile$Gender;->defaultInstance:Lcom/google/wireless/contacts/proto/Profile$Gender;

    .line 1276
    sget-object v0, Lcom/google/wireless/contacts/proto/Profile$Gender;->defaultInstance:Lcom/google/wireless/contacts/proto/Profile$Gender;

    invoke-direct {v0}, Lcom/google/wireless/contacts/proto/Profile$Gender;->initFields()V

    .line 1277
    return-void
.end method

.method private constructor <init>(Lcom/google/wireless/contacts/proto/Profile$Gender$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 881
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 963
    iput-byte v0, p0, Lcom/google/wireless/contacts/proto/Profile$Gender;->memoizedIsInitialized:B

    .line 983
    iput v0, p0, Lcom/google/wireless/contacts/proto/Profile$Gender;->memoizedSerializedSize:I

    .line 882
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/wireless/contacts/proto/Profile$Gender$Builder;Lcom/google/wireless/contacts/proto/Profile$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 876
    invoke-direct {p0, p1}, Lcom/google/wireless/contacts/proto/Profile$Gender;-><init>(Lcom/google/wireless/contacts/proto/Profile$Gender$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 883
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 963
    iput-byte v0, p0, Lcom/google/wireless/contacts/proto/Profile$Gender;->memoizedIsInitialized:B

    .line 983
    iput v0, p0, Lcom/google/wireless/contacts/proto/Profile$Gender;->memoizedSerializedSize:I

    .line 883
    return-void
.end method

.method static synthetic access$1602(Lcom/google/wireless/contacts/proto/Profile$Gender;Lcom/google/wireless/contacts/proto/Common$Metadata;)Lcom/google/wireless/contacts/proto/Common$Metadata;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 876
    iput-object p1, p0, Lcom/google/wireless/contacts/proto/Profile$Gender;->metadata_:Lcom/google/wireless/contacts/proto/Common$Metadata;

    return-object p1
.end method

.method static synthetic access$1702(Lcom/google/wireless/contacts/proto/Profile$Gender;Lcom/google/wireless/contacts/proto/Profile$Gender$Type;)Lcom/google/wireless/contacts/proto/Profile$Gender$Type;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 876
    iput-object p1, p0, Lcom/google/wireless/contacts/proto/Profile$Gender;->type_:Lcom/google/wireless/contacts/proto/Profile$Gender$Type;

    return-object p1
.end method

.method static synthetic access$1802(Lcom/google/wireless/contacts/proto/Profile$Gender;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 876
    iput p1, p0, Lcom/google/wireless/contacts/proto/Profile$Gender;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/wireless/contacts/proto/Profile$Gender;
    .registers 1

    .prologue
    .line 887
    sget-object v0, Lcom/google/wireless/contacts/proto/Profile$Gender;->defaultInstance:Lcom/google/wireless/contacts/proto/Profile$Gender;

    return-object v0
.end method

.method private initFields()V
    .registers 2

    .prologue
    .line 960
    invoke-static {}, Lcom/google/wireless/contacts/proto/Common$Metadata;->getDefaultInstance()Lcom/google/wireless/contacts/proto/Common$Metadata;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Profile$Gender;->metadata_:Lcom/google/wireless/contacts/proto/Common$Metadata;

    .line 961
    sget-object v0, Lcom/google/wireless/contacts/proto/Profile$Gender$Type;->UNKNOWN:Lcom/google/wireless/contacts/proto/Profile$Gender$Type;

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Profile$Gender;->type_:Lcom/google/wireless/contacts/proto/Profile$Gender$Type;

    .line 962
    return-void
.end method

.method public static newBuilder()Lcom/google/wireless/contacts/proto/Profile$Gender$Builder;
    .registers 1

    .prologue
    .line 1075
    #calls: Lcom/google/wireless/contacts/proto/Profile$Gender$Builder;->create()Lcom/google/wireless/contacts/proto/Profile$Gender$Builder;
    invoke-static {}, Lcom/google/wireless/contacts/proto/Profile$Gender$Builder;->access$1400()Lcom/google/wireless/contacts/proto/Profile$Gender$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/wireless/contacts/proto/Profile$Gender;)Lcom/google/wireless/contacts/proto/Profile$Gender$Builder;
    .registers 2
    .parameter "prototype"

    .prologue
    .line 1078
    invoke-static {}, Lcom/google/wireless/contacts/proto/Profile$Gender;->newBuilder()Lcom/google/wireless/contacts/proto/Profile$Gender$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/wireless/contacts/proto/Profile$Gender$Builder;->mergeFrom(Lcom/google/wireless/contacts/proto/Profile$Gender;)Lcom/google/wireless/contacts/proto/Profile$Gender$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 876
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Profile$Gender;->getDefaultInstanceForType()Lcom/google/wireless/contacts/proto/Profile$Gender;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/contacts/proto/Profile$Gender;
    .registers 2

    .prologue
    .line 891
    sget-object v0, Lcom/google/wireless/contacts/proto/Profile$Gender;->defaultInstance:Lcom/google/wireless/contacts/proto/Profile$Gender;

    return-object v0
.end method

.method public getMetadata()Lcom/google/wireless/contacts/proto/Common$Metadata;
    .registers 2

    .prologue
    .line 946
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Profile$Gender;->metadata_:Lcom/google/wireless/contacts/proto/Common$Metadata;

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 6

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 985
    iget v0, p0, Lcom/google/wireless/contacts/proto/Profile$Gender;->memoizedSerializedSize:I

    .line 986
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_9

    move v1, v0

    .line 998
    .end local v0           #size:I
    .local v1, size:I
    :goto_8
    return v1

    .line 988
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_9
    const/4 v0, 0x0

    .line 989
    iget v2, p0, Lcom/google/wireless/contacts/proto/Profile$Gender;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_17

    .line 990
    iget-object v2, p0, Lcom/google/wireless/contacts/proto/Profile$Gender;->metadata_:Lcom/google/wireless/contacts/proto/Common$Metadata;

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 993
    :cond_17
    iget v2, p0, Lcom/google/wireless/contacts/proto/Profile$Gender;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-ne v2, v4, :cond_28

    .line 994
    iget-object v2, p0, Lcom/google/wireless/contacts/proto/Profile$Gender;->type_:Lcom/google/wireless/contacts/proto/Profile$Gender$Type;

    invoke-virtual {v2}, Lcom/google/wireless/contacts/proto/Profile$Gender$Type;->getNumber()I

    move-result v2

    invoke-static {v4, v2}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 997
    :cond_28
    iput v0, p0, Lcom/google/wireless/contacts/proto/Profile$Gender;->memoizedSerializedSize:I

    move v1, v0

    .line 998
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_8
.end method

.method public getType()Lcom/google/wireless/contacts/proto/Profile$Gender$Type;
    .registers 2

    .prologue
    .line 956
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Profile$Gender;->type_:Lcom/google/wireless/contacts/proto/Profile$Gender$Type;

    return-object v0
.end method

.method public hasMetadata()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 943
    iget v1, p0, Lcom/google/wireless/contacts/proto/Profile$Gender;->bitField0_:I

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
    .line 953
    iget v0, p0, Lcom/google/wireless/contacts/proto/Profile$Gender;->bitField0_:I

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

    .line 965
    iget-byte v0, p0, Lcom/google/wireless/contacts/proto/Profile$Gender;->memoizedIsInitialized:B

    .line 966
    .local v0, isInitialized:B
    const/4 v2, -0x1

    if-eq v0, v2, :cond_b

    if-ne v0, v1, :cond_9

    .line 969
    :goto_8
    return v1

    .line 966
    :cond_9
    const/4 v1, 0x0

    goto :goto_8

    .line 968
    :cond_b
    iput-byte v1, p0, Lcom/google/wireless/contacts/proto/Profile$Gender;->memoizedIsInitialized:B

    goto :goto_8
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 876
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Profile$Gender;->newBuilderForType()Lcom/google/wireless/contacts/proto/Profile$Gender$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/google/wireless/contacts/proto/Profile$Gender$Builder;
    .registers 2

    .prologue
    .line 1076
    invoke-static {}, Lcom/google/wireless/contacts/proto/Profile$Gender;->newBuilder()Lcom/google/wireless/contacts/proto/Profile$Gender$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 876
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Profile$Gender;->toBuilder()Lcom/google/wireless/contacts/proto/Profile$Gender$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/wireless/contacts/proto/Profile$Gender$Builder;
    .registers 2

    .prologue
    .line 1080
    invoke-static {p0}, Lcom/google/wireless/contacts/proto/Profile$Gender;->newBuilder(Lcom/google/wireless/contacts/proto/Profile$Gender;)Lcom/google/wireless/contacts/proto/Profile$Gender$Builder;

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
    .line 1005
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

    .line 974
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Profile$Gender;->getSerializedSize()I

    .line 975
    iget v0, p0, Lcom/google/wireless/contacts/proto/Profile$Gender;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_10

    .line 976
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Profile$Gender;->metadata_:Lcom/google/wireless/contacts/proto/Common$Metadata;

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 978
    :cond_10
    iget v0, p0, Lcom/google/wireless/contacts/proto/Profile$Gender;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_1f

    .line 979
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Profile$Gender;->type_:Lcom/google/wireless/contacts/proto/Profile$Gender$Type;

    invoke-virtual {v0}, Lcom/google/wireless/contacts/proto/Profile$Gender$Type;->getNumber()I

    move-result v0

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 981
    :cond_1f
    return-void
.end method
