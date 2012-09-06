.class public final Lcom/google/wireless/contacts/proto/Profile$ProfileProperty;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Profile.java"

# interfaces
.implements Lcom/google/wireless/contacts/proto/Profile$ProfilePropertyOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/contacts/proto/Profile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ProfileProperty"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/wireless/contacts/proto/Profile$ProfileProperty$Builder;,
        Lcom/google/wireless/contacts/proto/Profile$ProfileProperty$Type;
    }
.end annotation


# static fields
.field private static final defaultInstance:Lcom/google/wireless/contacts/proto/Profile$ProfileProperty;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private type_:Lcom/google/wireless/contacts/proto/Profile$ProfileProperty$Type;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 2200
    new-instance v0, Lcom/google/wireless/contacts/proto/Profile$ProfileProperty;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/wireless/contacts/proto/Profile$ProfileProperty;-><init>(Z)V

    sput-object v0, Lcom/google/wireless/contacts/proto/Profile$ProfileProperty;->defaultInstance:Lcom/google/wireless/contacts/proto/Profile$ProfileProperty;

    .line 2201
    sget-object v0, Lcom/google/wireless/contacts/proto/Profile$ProfileProperty;->defaultInstance:Lcom/google/wireless/contacts/proto/Profile$ProfileProperty;

    invoke-direct {v0}, Lcom/google/wireless/contacts/proto/Profile$ProfileProperty;->initFields()V

    .line 2202
    return-void
.end method

.method private constructor <init>(Lcom/google/wireless/contacts/proto/Profile$ProfileProperty$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 1885
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 1956
    iput-byte v0, p0, Lcom/google/wireless/contacts/proto/Profile$ProfileProperty;->memoizedIsInitialized:B

    .line 1973
    iput v0, p0, Lcom/google/wireless/contacts/proto/Profile$ProfileProperty;->memoizedSerializedSize:I

    .line 1886
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/wireless/contacts/proto/Profile$ProfileProperty$Builder;Lcom/google/wireless/contacts/proto/Profile$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1880
    invoke-direct {p0, p1}, Lcom/google/wireless/contacts/proto/Profile$ProfileProperty;-><init>(Lcom/google/wireless/contacts/proto/Profile$ProfileProperty$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 1887
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 1956
    iput-byte v0, p0, Lcom/google/wireless/contacts/proto/Profile$ProfileProperty;->memoizedIsInitialized:B

    .line 1973
    iput v0, p0, Lcom/google/wireless/contacts/proto/Profile$ProfileProperty;->memoizedSerializedSize:I

    .line 1887
    return-void
.end method

.method static synthetic access$3002(Lcom/google/wireless/contacts/proto/Profile$ProfileProperty;Lcom/google/wireless/contacts/proto/Profile$ProfileProperty$Type;)Lcom/google/wireless/contacts/proto/Profile$ProfileProperty$Type;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1880
    iput-object p1, p0, Lcom/google/wireless/contacts/proto/Profile$ProfileProperty;->type_:Lcom/google/wireless/contacts/proto/Profile$ProfileProperty$Type;

    return-object p1
.end method

.method static synthetic access$3102(Lcom/google/wireless/contacts/proto/Profile$ProfileProperty;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1880
    iput p1, p0, Lcom/google/wireless/contacts/proto/Profile$ProfileProperty;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/wireless/contacts/proto/Profile$ProfileProperty;
    .registers 1

    .prologue
    .line 1891
    sget-object v0, Lcom/google/wireless/contacts/proto/Profile$ProfileProperty;->defaultInstance:Lcom/google/wireless/contacts/proto/Profile$ProfileProperty;

    return-object v0
.end method

.method private initFields()V
    .registers 2

    .prologue
    .line 1954
    sget-object v0, Lcom/google/wireless/contacts/proto/Profile$ProfileProperty$Type;->BLOCKED:Lcom/google/wireless/contacts/proto/Profile$ProfileProperty$Type;

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Profile$ProfileProperty;->type_:Lcom/google/wireless/contacts/proto/Profile$ProfileProperty$Type;

    .line 1955
    return-void
.end method

.method public static newBuilder()Lcom/google/wireless/contacts/proto/Profile$ProfileProperty$Builder;
    .registers 1

    .prologue
    .line 2061
    #calls: Lcom/google/wireless/contacts/proto/Profile$ProfileProperty$Builder;->create()Lcom/google/wireless/contacts/proto/Profile$ProfileProperty$Builder;
    invoke-static {}, Lcom/google/wireless/contacts/proto/Profile$ProfileProperty$Builder;->access$2800()Lcom/google/wireless/contacts/proto/Profile$ProfileProperty$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/wireless/contacts/proto/Profile$ProfileProperty;)Lcom/google/wireless/contacts/proto/Profile$ProfileProperty$Builder;
    .registers 2
    .parameter "prototype"

    .prologue
    .line 2064
    invoke-static {}, Lcom/google/wireless/contacts/proto/Profile$ProfileProperty;->newBuilder()Lcom/google/wireless/contacts/proto/Profile$ProfileProperty$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/wireless/contacts/proto/Profile$ProfileProperty$Builder;->mergeFrom(Lcom/google/wireless/contacts/proto/Profile$ProfileProperty;)Lcom/google/wireless/contacts/proto/Profile$ProfileProperty$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 1880
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Profile$ProfileProperty;->getDefaultInstanceForType()Lcom/google/wireless/contacts/proto/Profile$ProfileProperty;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/contacts/proto/Profile$ProfileProperty;
    .registers 2

    .prologue
    .line 1895
    sget-object v0, Lcom/google/wireless/contacts/proto/Profile$ProfileProperty;->defaultInstance:Lcom/google/wireless/contacts/proto/Profile$ProfileProperty;

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 5

    .prologue
    const/4 v3, 0x1

    .line 1975
    iget v0, p0, Lcom/google/wireless/contacts/proto/Profile$ProfileProperty;->memoizedSerializedSize:I

    .line 1976
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_8

    move v1, v0

    .line 1984
    .end local v0           #size:I
    .local v1, size:I
    :goto_7
    return v1

    .line 1978
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_8
    const/4 v0, 0x0

    .line 1979
    iget v2, p0, Lcom/google/wireless/contacts/proto/Profile$ProfileProperty;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_1a

    .line 1980
    iget-object v2, p0, Lcom/google/wireless/contacts/proto/Profile$ProfileProperty;->type_:Lcom/google/wireless/contacts/proto/Profile$ProfileProperty$Type;

    invoke-virtual {v2}, Lcom/google/wireless/contacts/proto/Profile$ProfileProperty$Type;->getNumber()I

    move-result v2

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 1983
    :cond_1a
    iput v0, p0, Lcom/google/wireless/contacts/proto/Profile$ProfileProperty;->memoizedSerializedSize:I

    move v1, v0

    .line 1984
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_7
.end method

.method public getType()Lcom/google/wireless/contacts/proto/Profile$ProfileProperty$Type;
    .registers 2

    .prologue
    .line 1950
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Profile$ProfileProperty;->type_:Lcom/google/wireless/contacts/proto/Profile$ProfileProperty$Type;

    return-object v0
.end method

.method public hasType()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 1947
    iget v1, p0, Lcom/google/wireless/contacts/proto/Profile$ProfileProperty;->bitField0_:I

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

    .line 1958
    iget-byte v0, p0, Lcom/google/wireless/contacts/proto/Profile$ProfileProperty;->memoizedIsInitialized:B

    .line 1959
    .local v0, isInitialized:B
    const/4 v2, -0x1

    if-eq v0, v2, :cond_b

    if-ne v0, v1, :cond_9

    .line 1962
    :goto_8
    return v1

    .line 1959
    :cond_9
    const/4 v1, 0x0

    goto :goto_8

    .line 1961
    :cond_b
    iput-byte v1, p0, Lcom/google/wireless/contacts/proto/Profile$ProfileProperty;->memoizedIsInitialized:B

    goto :goto_8
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 1880
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Profile$ProfileProperty;->newBuilderForType()Lcom/google/wireless/contacts/proto/Profile$ProfileProperty$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/google/wireless/contacts/proto/Profile$ProfileProperty$Builder;
    .registers 2

    .prologue
    .line 2062
    invoke-static {}, Lcom/google/wireless/contacts/proto/Profile$ProfileProperty;->newBuilder()Lcom/google/wireless/contacts/proto/Profile$ProfileProperty$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 1880
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Profile$ProfileProperty;->toBuilder()Lcom/google/wireless/contacts/proto/Profile$ProfileProperty$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/wireless/contacts/proto/Profile$ProfileProperty$Builder;
    .registers 2

    .prologue
    .line 2066
    invoke-static {p0}, Lcom/google/wireless/contacts/proto/Profile$ProfileProperty;->newBuilder(Lcom/google/wireless/contacts/proto/Profile$ProfileProperty;)Lcom/google/wireless/contacts/proto/Profile$ProfileProperty$Builder;

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
    .line 1991
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

    .line 1967
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Profile$ProfileProperty;->getSerializedSize()I

    .line 1968
    iget v0, p0, Lcom/google/wireless/contacts/proto/Profile$ProfileProperty;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_13

    .line 1969
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Profile$ProfileProperty;->type_:Lcom/google/wireless/contacts/proto/Profile$ProfileProperty$Type;

    invoke-virtual {v0}, Lcom/google/wireless/contacts/proto/Profile$ProfileProperty$Type;->getNumber()I

    move-result v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 1971
    :cond_13
    return-void
.end method
