.class public final Lcom/google/wireless/contacts/proto/Profile$LocationPoint;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Profile.java"

# interfaces
.implements Lcom/google/wireless/contacts/proto/Profile$LocationPointOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/contacts/proto/Profile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "LocationPoint"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/wireless/contacts/proto/Profile$LocationPoint$Builder;
    }
.end annotation


# static fields
.field private static final defaultInstance:Lcom/google/wireless/contacts/proto/Profile$LocationPoint;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private latitudeE7_:I

.field private longitudeE7_:I

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 360
    new-instance v0, Lcom/google/wireless/contacts/proto/Profile$LocationPoint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/wireless/contacts/proto/Profile$LocationPoint;-><init>(Z)V

    sput-object v0, Lcom/google/wireless/contacts/proto/Profile$LocationPoint;->defaultInstance:Lcom/google/wireless/contacts/proto/Profile$LocationPoint;

    .line 361
    sget-object v0, Lcom/google/wireless/contacts/proto/Profile$LocationPoint;->defaultInstance:Lcom/google/wireless/contacts/proto/Profile$LocationPoint;

    invoke-direct {v0}, Lcom/google/wireless/contacts/proto/Profile$LocationPoint;->initFields()V

    .line 362
    return-void
.end method

.method private constructor <init>(Lcom/google/wireless/contacts/proto/Profile$LocationPoint$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 27
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 65
    iput-byte v0, p0, Lcom/google/wireless/contacts/proto/Profile$LocationPoint;->memoizedIsInitialized:B

    .line 93
    iput v0, p0, Lcom/google/wireless/contacts/proto/Profile$LocationPoint;->memoizedSerializedSize:I

    .line 28
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/wireless/contacts/proto/Profile$LocationPoint$Builder;Lcom/google/wireless/contacts/proto/Profile$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lcom/google/wireless/contacts/proto/Profile$LocationPoint;-><init>(Lcom/google/wireless/contacts/proto/Profile$LocationPoint$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 29
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 65
    iput-byte v0, p0, Lcom/google/wireless/contacts/proto/Profile$LocationPoint;->memoizedIsInitialized:B

    .line 93
    iput v0, p0, Lcom/google/wireless/contacts/proto/Profile$LocationPoint;->memoizedSerializedSize:I

    .line 29
    return-void
.end method

.method static synthetic access$302(Lcom/google/wireless/contacts/proto/Profile$LocationPoint;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 22
    iput p1, p0, Lcom/google/wireless/contacts/proto/Profile$LocationPoint;->latitudeE7_:I

    return p1
.end method

.method static synthetic access$402(Lcom/google/wireless/contacts/proto/Profile$LocationPoint;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 22
    iput p1, p0, Lcom/google/wireless/contacts/proto/Profile$LocationPoint;->longitudeE7_:I

    return p1
.end method

.method static synthetic access$502(Lcom/google/wireless/contacts/proto/Profile$LocationPoint;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 22
    iput p1, p0, Lcom/google/wireless/contacts/proto/Profile$LocationPoint;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/wireless/contacts/proto/Profile$LocationPoint;
    .registers 1

    .prologue
    .line 33
    sget-object v0, Lcom/google/wireless/contacts/proto/Profile$LocationPoint;->defaultInstance:Lcom/google/wireless/contacts/proto/Profile$LocationPoint;

    return-object v0
.end method

.method private initFields()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 62
    iput v0, p0, Lcom/google/wireless/contacts/proto/Profile$LocationPoint;->latitudeE7_:I

    .line 63
    iput v0, p0, Lcom/google/wireless/contacts/proto/Profile$LocationPoint;->longitudeE7_:I

    .line 64
    return-void
.end method

.method public static newBuilder()Lcom/google/wireless/contacts/proto/Profile$LocationPoint$Builder;
    .registers 1

    .prologue
    .line 185
    #calls: Lcom/google/wireless/contacts/proto/Profile$LocationPoint$Builder;->create()Lcom/google/wireless/contacts/proto/Profile$LocationPoint$Builder;
    invoke-static {}, Lcom/google/wireless/contacts/proto/Profile$LocationPoint$Builder;->access$100()Lcom/google/wireless/contacts/proto/Profile$LocationPoint$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/wireless/contacts/proto/Profile$LocationPoint;)Lcom/google/wireless/contacts/proto/Profile$LocationPoint$Builder;
    .registers 2
    .parameter "prototype"

    .prologue
    .line 188
    invoke-static {}, Lcom/google/wireless/contacts/proto/Profile$LocationPoint;->newBuilder()Lcom/google/wireless/contacts/proto/Profile$LocationPoint$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/wireless/contacts/proto/Profile$LocationPoint$Builder;->mergeFrom(Lcom/google/wireless/contacts/proto/Profile$LocationPoint;)Lcom/google/wireless/contacts/proto/Profile$LocationPoint$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 22
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Profile$LocationPoint;->getDefaultInstanceForType()Lcom/google/wireless/contacts/proto/Profile$LocationPoint;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/contacts/proto/Profile$LocationPoint;
    .registers 2

    .prologue
    .line 37
    sget-object v0, Lcom/google/wireless/contacts/proto/Profile$LocationPoint;->defaultInstance:Lcom/google/wireless/contacts/proto/Profile$LocationPoint;

    return-object v0
.end method

.method public getLatitudeE7()I
    .registers 2

    .prologue
    .line 48
    iget v0, p0, Lcom/google/wireless/contacts/proto/Profile$LocationPoint;->latitudeE7_:I

    return v0
.end method

.method public getLongitudeE7()I
    .registers 2

    .prologue
    .line 58
    iget v0, p0, Lcom/google/wireless/contacts/proto/Profile$LocationPoint;->longitudeE7_:I

    return v0
.end method

.method public getSerializedSize()I
    .registers 6

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 95
    iget v0, p0, Lcom/google/wireless/contacts/proto/Profile$LocationPoint;->memoizedSerializedSize:I

    .line 96
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_9

    move v1, v0

    .line 108
    .end local v0           #size:I
    .local v1, size:I
    :goto_8
    return v1

    .line 98
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_9
    const/4 v0, 0x0

    .line 99
    iget v2, p0, Lcom/google/wireless/contacts/proto/Profile$LocationPoint;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_17

    .line 100
    iget v2, p0, Lcom/google/wireless/contacts/proto/Profile$LocationPoint;->latitudeE7_:I

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeSFixed32Size(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 103
    :cond_17
    iget v2, p0, Lcom/google/wireless/contacts/proto/Profile$LocationPoint;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-ne v2, v4, :cond_24

    .line 104
    iget v2, p0, Lcom/google/wireless/contacts/proto/Profile$LocationPoint;->longitudeE7_:I

    invoke-static {v4, v2}, Lcom/google/protobuf/CodedOutputStream;->computeSFixed32Size(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 107
    :cond_24
    iput v0, p0, Lcom/google/wireless/contacts/proto/Profile$LocationPoint;->memoizedSerializedSize:I

    move v1, v0

    .line 108
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_8
.end method

.method public hasLatitudeE7()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 45
    iget v1, p0, Lcom/google/wireless/contacts/proto/Profile$LocationPoint;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public hasLongitudeE7()Z
    .registers 3

    .prologue
    .line 55
    iget v0, p0, Lcom/google/wireless/contacts/proto/Profile$LocationPoint;->bitField0_:I

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
    .registers 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 67
    iget-byte v0, p0, Lcom/google/wireless/contacts/proto/Profile$LocationPoint;->memoizedIsInitialized:B

    .line 68
    .local v0, isInitialized:B
    const/4 v3, -0x1

    if-eq v0, v3, :cond_c

    if-ne v0, v1, :cond_a

    .line 79
    :goto_9
    return v1

    :cond_a
    move v1, v2

    .line 68
    goto :goto_9

    .line 70
    :cond_c
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Profile$LocationPoint;->hasLatitudeE7()Z

    move-result v3

    if-nez v3, :cond_16

    .line 71
    iput-byte v2, p0, Lcom/google/wireless/contacts/proto/Profile$LocationPoint;->memoizedIsInitialized:B

    move v1, v2

    .line 72
    goto :goto_9

    .line 74
    :cond_16
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Profile$LocationPoint;->hasLongitudeE7()Z

    move-result v3

    if-nez v3, :cond_20

    .line 75
    iput-byte v2, p0, Lcom/google/wireless/contacts/proto/Profile$LocationPoint;->memoizedIsInitialized:B

    move v1, v2

    .line 76
    goto :goto_9

    .line 78
    :cond_20
    iput-byte v1, p0, Lcom/google/wireless/contacts/proto/Profile$LocationPoint;->memoizedIsInitialized:B

    goto :goto_9
.end method

.method protected writeReplace()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    .prologue
    .line 115
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

    .line 84
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Profile$LocationPoint;->getSerializedSize()I

    .line 85
    iget v0, p0, Lcom/google/wireless/contacts/proto/Profile$LocationPoint;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_10

    .line 86
    iget v0, p0, Lcom/google/wireless/contacts/proto/Profile$LocationPoint;->latitudeE7_:I

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeSFixed32(II)V

    .line 88
    :cond_10
    iget v0, p0, Lcom/google/wireless/contacts/proto/Profile$LocationPoint;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_1b

    .line 89
    iget v0, p0, Lcom/google/wireless/contacts/proto/Profile$LocationPoint;->longitudeE7_:I

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeSFixed32(II)V

    .line 91
    :cond_1b
    return-void
.end method
