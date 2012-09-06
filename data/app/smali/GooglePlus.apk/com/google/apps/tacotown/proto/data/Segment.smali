.class public final Lcom/google/apps/tacotown/proto/data/Segment;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Segment.java"

# interfaces
.implements Lcom/google/apps/tacotown/proto/data/SegmentOrBuilder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/apps/tacotown/proto/data/Segment$1;,
        Lcom/google/apps/tacotown/proto/data/Segment$Builder;,
        Lcom/google/apps/tacotown/proto/data/Segment$Type;
    }
.end annotation


# static fields
.field private static final defaultInstance:Lcom/google/apps/tacotown/proto/data/Segment;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private formatting_:Lcom/google/apps/tacotown/proto/data/Formatting;

.field private hashtag_:Lcom/google/apps/tacotown/proto/data/Hashtag;

.field private link_:Lcom/google/apps/tacotown/proto/data/Link;

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private text_:Ljava/lang/Object;

.field private type_:Lcom/google/apps/tacotown/proto/data/Segment$Type;

.field private user_:Lcom/google/apps/tacotown/proto/data/UserRef;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 737
    new-instance v0, Lcom/google/apps/tacotown/proto/data/Segment;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/apps/tacotown/proto/data/Segment;-><init>(Z)V

    sput-object v0, Lcom/google/apps/tacotown/proto/data/Segment;->defaultInstance:Lcom/google/apps/tacotown/proto/data/Segment;

    .line 738
    sget-object v0, Lcom/google/apps/tacotown/proto/data/Segment;->defaultInstance:Lcom/google/apps/tacotown/proto/data/Segment;

    invoke-direct {v0}, Lcom/google/apps/tacotown/proto/data/Segment;->initFields()V

    .line 739
    return-void
.end method

.method private constructor <init>(Lcom/google/apps/tacotown/proto/data/Segment$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 10
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 164
    iput-byte v0, p0, Lcom/google/apps/tacotown/proto/data/Segment;->memoizedIsInitialized:B

    .line 196
    iput v0, p0, Lcom/google/apps/tacotown/proto/data/Segment;->memoizedSerializedSize:I

    .line 11
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/apps/tacotown/proto/data/Segment$Builder;Lcom/google/apps/tacotown/proto/data/Segment$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 5
    invoke-direct {p0, p1}, Lcom/google/apps/tacotown/proto/data/Segment;-><init>(Lcom/google/apps/tacotown/proto/data/Segment$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 12
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 164
    iput-byte v0, p0, Lcom/google/apps/tacotown/proto/data/Segment;->memoizedIsInitialized:B

    .line 196
    iput v0, p0, Lcom/google/apps/tacotown/proto/data/Segment;->memoizedSerializedSize:I

    .line 12
    return-void
.end method

.method static synthetic access$302(Lcom/google/apps/tacotown/proto/data/Segment;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 5
    iput-object p1, p0, Lcom/google/apps/tacotown/proto/data/Segment;->text_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$402(Lcom/google/apps/tacotown/proto/data/Segment;Lcom/google/apps/tacotown/proto/data/Formatting;)Lcom/google/apps/tacotown/proto/data/Formatting;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 5
    iput-object p1, p0, Lcom/google/apps/tacotown/proto/data/Segment;->formatting_:Lcom/google/apps/tacotown/proto/data/Formatting;

    return-object p1
.end method

.method static synthetic access$502(Lcom/google/apps/tacotown/proto/data/Segment;Lcom/google/apps/tacotown/proto/data/Segment$Type;)Lcom/google/apps/tacotown/proto/data/Segment$Type;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 5
    iput-object p1, p0, Lcom/google/apps/tacotown/proto/data/Segment;->type_:Lcom/google/apps/tacotown/proto/data/Segment$Type;

    return-object p1
.end method

.method static synthetic access$602(Lcom/google/apps/tacotown/proto/data/Segment;Lcom/google/apps/tacotown/proto/data/Link;)Lcom/google/apps/tacotown/proto/data/Link;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 5
    iput-object p1, p0, Lcom/google/apps/tacotown/proto/data/Segment;->link_:Lcom/google/apps/tacotown/proto/data/Link;

    return-object p1
.end method

.method static synthetic access$702(Lcom/google/apps/tacotown/proto/data/Segment;Lcom/google/apps/tacotown/proto/data/UserRef;)Lcom/google/apps/tacotown/proto/data/UserRef;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 5
    iput-object p1, p0, Lcom/google/apps/tacotown/proto/data/Segment;->user_:Lcom/google/apps/tacotown/proto/data/UserRef;

    return-object p1
.end method

.method static synthetic access$802(Lcom/google/apps/tacotown/proto/data/Segment;Lcom/google/apps/tacotown/proto/data/Hashtag;)Lcom/google/apps/tacotown/proto/data/Hashtag;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 5
    iput-object p1, p0, Lcom/google/apps/tacotown/proto/data/Segment;->hashtag_:Lcom/google/apps/tacotown/proto/data/Hashtag;

    return-object p1
.end method

.method static synthetic access$902(Lcom/google/apps/tacotown/proto/data/Segment;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 5
    iput p1, p0, Lcom/google/apps/tacotown/proto/data/Segment;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/apps/tacotown/proto/data/Segment;
    .registers 1

    .prologue
    .line 16
    sget-object v0, Lcom/google/apps/tacotown/proto/data/Segment;->defaultInstance:Lcom/google/apps/tacotown/proto/data/Segment;

    return-object v0
.end method

.method private getTextBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 95
    iget-object v1, p0, Lcom/google/apps/tacotown/proto/data/Segment;->text_:Ljava/lang/Object;

    .line 96
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 97
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 99
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/apps/tacotown/proto/data/Segment;->text_:Ljava/lang/Object;

    .line 102
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
    .line 157
    const-string v0, ""

    iput-object v0, p0, Lcom/google/apps/tacotown/proto/data/Segment;->text_:Ljava/lang/Object;

    .line 158
    invoke-static {}, Lcom/google/apps/tacotown/proto/data/Formatting;->getDefaultInstance()Lcom/google/apps/tacotown/proto/data/Formatting;

    move-result-object v0

    iput-object v0, p0, Lcom/google/apps/tacotown/proto/data/Segment;->formatting_:Lcom/google/apps/tacotown/proto/data/Formatting;

    .line 159
    sget-object v0, Lcom/google/apps/tacotown/proto/data/Segment$Type;->TEXT:Lcom/google/apps/tacotown/proto/data/Segment$Type;

    iput-object v0, p0, Lcom/google/apps/tacotown/proto/data/Segment;->type_:Lcom/google/apps/tacotown/proto/data/Segment$Type;

    .line 160
    invoke-static {}, Lcom/google/apps/tacotown/proto/data/Link;->getDefaultInstance()Lcom/google/apps/tacotown/proto/data/Link;

    move-result-object v0

    iput-object v0, p0, Lcom/google/apps/tacotown/proto/data/Segment;->link_:Lcom/google/apps/tacotown/proto/data/Link;

    .line 161
    invoke-static {}, Lcom/google/apps/tacotown/proto/data/UserRef;->getDefaultInstance()Lcom/google/apps/tacotown/proto/data/UserRef;

    move-result-object v0

    iput-object v0, p0, Lcom/google/apps/tacotown/proto/data/Segment;->user_:Lcom/google/apps/tacotown/proto/data/UserRef;

    .line 162
    invoke-static {}, Lcom/google/apps/tacotown/proto/data/Hashtag;->getDefaultInstance()Lcom/google/apps/tacotown/proto/data/Hashtag;

    move-result-object v0

    iput-object v0, p0, Lcom/google/apps/tacotown/proto/data/Segment;->hashtag_:Lcom/google/apps/tacotown/proto/data/Hashtag;

    .line 163
    return-void
.end method

.method public static newBuilder()Lcom/google/apps/tacotown/proto/data/Segment$Builder;
    .registers 1

    .prologue
    .line 304
    #calls: Lcom/google/apps/tacotown/proto/data/Segment$Builder;->create()Lcom/google/apps/tacotown/proto/data/Segment$Builder;
    invoke-static {}, Lcom/google/apps/tacotown/proto/data/Segment$Builder;->access$100()Lcom/google/apps/tacotown/proto/data/Segment$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/apps/tacotown/proto/data/Segment;)Lcom/google/apps/tacotown/proto/data/Segment$Builder;
    .registers 2
    .parameter "prototype"

    .prologue
    .line 307
    invoke-static {}, Lcom/google/apps/tacotown/proto/data/Segment;->newBuilder()Lcom/google/apps/tacotown/proto/data/Segment$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/apps/tacotown/proto/data/Segment$Builder;->mergeFrom(Lcom/google/apps/tacotown/proto/data/Segment;)Lcom/google/apps/tacotown/proto/data/Segment$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getDefaultInstanceForType()Lcom/google/apps/tacotown/proto/data/Segment;
    .registers 2

    .prologue
    .line 20
    sget-object v0, Lcom/google/apps/tacotown/proto/data/Segment;->defaultInstance:Lcom/google/apps/tacotown/proto/data/Segment;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 5
    invoke-virtual {p0}, Lcom/google/apps/tacotown/proto/data/Segment;->getDefaultInstanceForType()Lcom/google/apps/tacotown/proto/data/Segment;

    move-result-object v0

    return-object v0
.end method

.method public getFormatting()Lcom/google/apps/tacotown/proto/data/Formatting;
    .registers 2

    .prologue
    .line 113
    iget-object v0, p0, Lcom/google/apps/tacotown/proto/data/Segment;->formatting_:Lcom/google/apps/tacotown/proto/data/Formatting;

    return-object v0
.end method

.method public getHashtag()Lcom/google/apps/tacotown/proto/data/Hashtag;
    .registers 2

    .prologue
    .line 153
    iget-object v0, p0, Lcom/google/apps/tacotown/proto/data/Segment;->hashtag_:Lcom/google/apps/tacotown/proto/data/Hashtag;

    return-object v0
.end method

.method public getLink()Lcom/google/apps/tacotown/proto/data/Link;
    .registers 2

    .prologue
    .line 133
    iget-object v0, p0, Lcom/google/apps/tacotown/proto/data/Segment;->link_:Lcom/google/apps/tacotown/proto/data/Link;

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 7

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 198
    iget v0, p0, Lcom/google/apps/tacotown/proto/data/Segment;->memoizedSerializedSize:I

    .line 199
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_a

    move v1, v0

    .line 227
    .end local v0           #size:I
    .local v1, size:I
    :goto_9
    return v1

    .line 201
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_a
    const/4 v0, 0x0

    .line 202
    iget v2, p0, Lcom/google/apps/tacotown/proto/data/Segment;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_1a

    .line 203
    invoke-direct {p0}, Lcom/google/apps/tacotown/proto/data/Segment;->getTextBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 206
    :cond_1a
    iget v2, p0, Lcom/google/apps/tacotown/proto/data/Segment;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-ne v2, v4, :cond_27

    .line 207
    iget-object v2, p0, Lcom/google/apps/tacotown/proto/data/Segment;->formatting_:Lcom/google/apps/tacotown/proto/data/Formatting;

    invoke-static {v4, v2}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 210
    :cond_27
    iget v2, p0, Lcom/google/apps/tacotown/proto/data/Segment;->bitField0_:I

    and-int/lit8 v2, v2, 0x4

    if-ne v2, v5, :cond_39

    .line 211
    const/4 v2, 0x3

    iget-object v3, p0, Lcom/google/apps/tacotown/proto/data/Segment;->type_:Lcom/google/apps/tacotown/proto/data/Segment$Type;

    invoke-virtual {v3}, Lcom/google/apps/tacotown/proto/data/Segment$Type;->getNumber()I

    move-result v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 214
    :cond_39
    iget v2, p0, Lcom/google/apps/tacotown/proto/data/Segment;->bitField0_:I

    and-int/lit8 v2, v2, 0x8

    const/16 v3, 0x8

    if-ne v2, v3, :cond_48

    .line 215
    iget-object v2, p0, Lcom/google/apps/tacotown/proto/data/Segment;->link_:Lcom/google/apps/tacotown/proto/data/Link;

    invoke-static {v5, v2}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 218
    :cond_48
    iget v2, p0, Lcom/google/apps/tacotown/proto/data/Segment;->bitField0_:I

    and-int/lit8 v2, v2, 0x10

    const/16 v3, 0x10

    if-ne v2, v3, :cond_58

    .line 219
    const/4 v2, 0x5

    iget-object v3, p0, Lcom/google/apps/tacotown/proto/data/Segment;->user_:Lcom/google/apps/tacotown/proto/data/UserRef;

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 222
    :cond_58
    iget v2, p0, Lcom/google/apps/tacotown/proto/data/Segment;->bitField0_:I

    and-int/lit8 v2, v2, 0x20

    const/16 v3, 0x20

    if-ne v2, v3, :cond_68

    .line 223
    const/4 v2, 0x6

    iget-object v3, p0, Lcom/google/apps/tacotown/proto/data/Segment;->hashtag_:Lcom/google/apps/tacotown/proto/data/Hashtag;

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 226
    :cond_68
    iput v0, p0, Lcom/google/apps/tacotown/proto/data/Segment;->memoizedSerializedSize:I

    move v1, v0

    .line 227
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_9
.end method

.method public getText()Ljava/lang/String;
    .registers 5

    .prologue
    .line 81
    iget-object v1, p0, Lcom/google/apps/tacotown/proto/data/Segment;->text_:Ljava/lang/Object;

    .line 82
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 83
    check-cast v1, Ljava/lang/String;

    .line 91
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 85
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 87
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 88
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 89
    iput-object v2, p0, Lcom/google/apps/tacotown/proto/data/Segment;->text_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 91
    goto :goto_8
.end method

.method public getType()Lcom/google/apps/tacotown/proto/data/Segment$Type;
    .registers 2

    .prologue
    .line 123
    iget-object v0, p0, Lcom/google/apps/tacotown/proto/data/Segment;->type_:Lcom/google/apps/tacotown/proto/data/Segment$Type;

    return-object v0
.end method

.method public getUser()Lcom/google/apps/tacotown/proto/data/UserRef;
    .registers 2

    .prologue
    .line 143
    iget-object v0, p0, Lcom/google/apps/tacotown/proto/data/Segment;->user_:Lcom/google/apps/tacotown/proto/data/UserRef;

    return-object v0
.end method

.method public hasFormatting()Z
    .registers 3

    .prologue
    .line 110
    iget v0, p0, Lcom/google/apps/tacotown/proto/data/Segment;->bitField0_:I

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

.method public hasHashtag()Z
    .registers 3

    .prologue
    .line 150
    iget v0, p0, Lcom/google/apps/tacotown/proto/data/Segment;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public hasLink()Z
    .registers 3

    .prologue
    .line 130
    iget v0, p0, Lcom/google/apps/tacotown/proto/data/Segment;->bitField0_:I

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

.method public hasText()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 78
    iget v1, p0, Lcom/google/apps/tacotown/proto/data/Segment;->bitField0_:I

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
    .line 120
    iget v0, p0, Lcom/google/apps/tacotown/proto/data/Segment;->bitField0_:I

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

.method public hasUser()Z
    .registers 3

    .prologue
    .line 140
    iget v0, p0, Lcom/google/apps/tacotown/proto/data/Segment;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public final isInitialized()Z
    .registers 4

    .prologue
    const/4 v1, 0x1

    .line 166
    iget-byte v0, p0, Lcom/google/apps/tacotown/proto/data/Segment;->memoizedIsInitialized:B

    .line 167
    .local v0, isInitialized:B
    const/4 v2, -0x1

    if-eq v0, v2, :cond_b

    if-ne v0, v1, :cond_9

    .line 170
    :goto_8
    return v1

    .line 167
    :cond_9
    const/4 v1, 0x0

    goto :goto_8

    .line 169
    :cond_b
    iput-byte v1, p0, Lcom/google/apps/tacotown/proto/data/Segment;->memoizedIsInitialized:B

    goto :goto_8
.end method

.method public newBuilderForType()Lcom/google/apps/tacotown/proto/data/Segment$Builder;
    .registers 2

    .prologue
    .line 305
    invoke-static {}, Lcom/google/apps/tacotown/proto/data/Segment;->newBuilder()Lcom/google/apps/tacotown/proto/data/Segment$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 5
    invoke-virtual {p0}, Lcom/google/apps/tacotown/proto/data/Segment;->newBuilderForType()Lcom/google/apps/tacotown/proto/data/Segment$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/apps/tacotown/proto/data/Segment$Builder;
    .registers 2

    .prologue
    .line 309
    invoke-static {p0}, Lcom/google/apps/tacotown/proto/data/Segment;->newBuilder(Lcom/google/apps/tacotown/proto/data/Segment;)Lcom/google/apps/tacotown/proto/data/Segment$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 5
    invoke-virtual {p0}, Lcom/google/apps/tacotown/proto/data/Segment;->toBuilder()Lcom/google/apps/tacotown/proto/data/Segment$Builder;

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
    .line 234
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

    .line 175
    invoke-virtual {p0}, Lcom/google/apps/tacotown/proto/data/Segment;->getSerializedSize()I

    .line 176
    iget v0, p0, Lcom/google/apps/tacotown/proto/data/Segment;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_13

    .line 177
    invoke-direct {p0}, Lcom/google/apps/tacotown/proto/data/Segment;->getTextBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 179
    :cond_13
    iget v0, p0, Lcom/google/apps/tacotown/proto/data/Segment;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_1e

    .line 180
    iget-object v0, p0, Lcom/google/apps/tacotown/proto/data/Segment;->formatting_:Lcom/google/apps/tacotown/proto/data/Formatting;

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 182
    :cond_1e
    iget v0, p0, Lcom/google/apps/tacotown/proto/data/Segment;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-ne v0, v3, :cond_2e

    .line 183
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/apps/tacotown/proto/data/Segment;->type_:Lcom/google/apps/tacotown/proto/data/Segment$Type;

    invoke-virtual {v1}, Lcom/google/apps/tacotown/proto/data/Segment$Type;->getNumber()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 185
    :cond_2e
    iget v0, p0, Lcom/google/apps/tacotown/proto/data/Segment;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_3b

    .line 186
    iget-object v0, p0, Lcom/google/apps/tacotown/proto/data/Segment;->link_:Lcom/google/apps/tacotown/proto/data/Link;

    invoke-virtual {p1, v3, v0}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 188
    :cond_3b
    iget v0, p0, Lcom/google/apps/tacotown/proto/data/Segment;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_49

    .line 189
    const/4 v0, 0x5

    iget-object v1, p0, Lcom/google/apps/tacotown/proto/data/Segment;->user_:Lcom/google/apps/tacotown/proto/data/UserRef;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 191
    :cond_49
    iget v0, p0, Lcom/google/apps/tacotown/proto/data/Segment;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_57

    .line 192
    const/4 v0, 0x6

    iget-object v1, p0, Lcom/google/apps/tacotown/proto/data/Segment;->hashtag_:Lcom/google/apps/tacotown/proto/data/Hashtag;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 194
    :cond_57
    return-void
.end method
