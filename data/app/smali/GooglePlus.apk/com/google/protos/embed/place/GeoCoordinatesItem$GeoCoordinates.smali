.class public final Lcom/google/protos/embed/place/GeoCoordinatesItem$GeoCoordinates;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "GeoCoordinatesItem.java"

# interfaces
.implements Lcom/google/protos/embed/place/GeoCoordinatesItem$GeoCoordinatesOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protos/embed/place/GeoCoordinatesItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "GeoCoordinates"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protos/embed/place/GeoCoordinatesItem$GeoCoordinates$Builder;
    }
.end annotation


# static fields
.field private static final defaultInstance:Lcom/google/protos/embed/place/GeoCoordinatesItem$GeoCoordinates;

.field public static final geoCoordinates:Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension",
            "<",
            "Lcom/google/protos/embed/EmbedClient$EmbedClientItem;",
            "Lcom/google/protos/embed/place/GeoCoordinatesItem$GeoCoordinates;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private imageUrl_:Ljava/lang/Object;

.field private latitude_:D

.field private longitude_:D

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private name_:Ljava/lang/Object;

.field private url_:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .prologue
    .line 627
    new-instance v0, Lcom/google/protos/embed/place/GeoCoordinatesItem$GeoCoordinates;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/protos/embed/place/GeoCoordinatesItem$GeoCoordinates;-><init>(Z)V

    sput-object v0, Lcom/google/protos/embed/place/GeoCoordinatesItem$GeoCoordinates;->defaultInstance:Lcom/google/protos/embed/place/GeoCoordinatesItem$GeoCoordinates;

    .line 628
    sget-object v0, Lcom/google/protos/embed/place/GeoCoordinatesItem$GeoCoordinates;->defaultInstance:Lcom/google/protos/embed/place/GeoCoordinatesItem$GeoCoordinates;

    invoke-direct {v0}, Lcom/google/protos/embed/place/GeoCoordinatesItem$GeoCoordinates;->initFields()V

    .line 636
    invoke-static {}, Lcom/google/protos/embed/EmbedClient$EmbedClientItem;->getDefaultInstance()Lcom/google/protos/embed/EmbedClient$EmbedClientItem;

    move-result-object v0

    invoke-static {}, Lcom/google/protos/embed/place/GeoCoordinatesItem$GeoCoordinates;->getDefaultInstance()Lcom/google/protos/embed/place/GeoCoordinatesItem$GeoCoordinates;

    move-result-object v1

    invoke-static {}, Lcom/google/protos/embed/place/GeoCoordinatesItem$GeoCoordinates;->getDefaultInstance()Lcom/google/protos/embed/place/GeoCoordinatesItem$GeoCoordinates;

    move-result-object v2

    const/4 v3, 0x0

    const v4, 0x1a18d28

    sget-object v5, Lcom/google/protobuf/WireFormat$FieldType;->MESSAGE:Lcom/google/protobuf/WireFormat$FieldType;

    invoke-static/range {v0 .. v5}, Lcom/google/protobuf/GeneratedMessageLite;->newSingularGeneratedExtension(Lcom/google/protobuf/MessageLite;Ljava/lang/Object;Lcom/google/protobuf/MessageLite;Lcom/google/protobuf/Internal$EnumLiteMap;ILcom/google/protobuf/WireFormat$FieldType;)Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;

    move-result-object v0

    sput-object v0, Lcom/google/protos/embed/place/GeoCoordinatesItem$GeoCoordinates;->geoCoordinates:Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;

    return-void
.end method

.method private constructor <init>(Lcom/google/protos/embed/place/GeoCoordinatesItem$GeoCoordinates$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 40
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 177
    iput-byte v0, p0, Lcom/google/protos/embed/place/GeoCoordinatesItem$GeoCoordinates;->memoizedIsInitialized:B

    .line 206
    iput v0, p0, Lcom/google/protos/embed/place/GeoCoordinatesItem$GeoCoordinates;->memoizedSerializedSize:I

    .line 41
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protos/embed/place/GeoCoordinatesItem$GeoCoordinates$Builder;Lcom/google/protos/embed/place/GeoCoordinatesItem$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/google/protos/embed/place/GeoCoordinatesItem$GeoCoordinates;-><init>(Lcom/google/protos/embed/place/GeoCoordinatesItem$GeoCoordinates$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 42
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 177
    iput-byte v0, p0, Lcom/google/protos/embed/place/GeoCoordinatesItem$GeoCoordinates;->memoizedIsInitialized:B

    .line 206
    iput v0, p0, Lcom/google/protos/embed/place/GeoCoordinatesItem$GeoCoordinates;->memoizedSerializedSize:I

    .line 42
    return-void
.end method

.method static synthetic access$302(Lcom/google/protos/embed/place/GeoCoordinatesItem$GeoCoordinates;D)D
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 35
    iput-wide p1, p0, Lcom/google/protos/embed/place/GeoCoordinatesItem$GeoCoordinates;->latitude_:D

    return-wide p1
.end method

.method static synthetic access$402(Lcom/google/protos/embed/place/GeoCoordinatesItem$GeoCoordinates;D)D
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 35
    iput-wide p1, p0, Lcom/google/protos/embed/place/GeoCoordinatesItem$GeoCoordinates;->longitude_:D

    return-wide p1
.end method

.method static synthetic access$502(Lcom/google/protos/embed/place/GeoCoordinatesItem$GeoCoordinates;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 35
    iput-object p1, p0, Lcom/google/protos/embed/place/GeoCoordinatesItem$GeoCoordinates;->imageUrl_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$602(Lcom/google/protos/embed/place/GeoCoordinatesItem$GeoCoordinates;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 35
    iput-object p1, p0, Lcom/google/protos/embed/place/GeoCoordinatesItem$GeoCoordinates;->name_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$702(Lcom/google/protos/embed/place/GeoCoordinatesItem$GeoCoordinates;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 35
    iput-object p1, p0, Lcom/google/protos/embed/place/GeoCoordinatesItem$GeoCoordinates;->url_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$802(Lcom/google/protos/embed/place/GeoCoordinatesItem$GeoCoordinates;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 35
    iput p1, p0, Lcom/google/protos/embed/place/GeoCoordinatesItem$GeoCoordinates;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/protos/embed/place/GeoCoordinatesItem$GeoCoordinates;
    .registers 1

    .prologue
    .line 46
    sget-object v0, Lcom/google/protos/embed/place/GeoCoordinatesItem$GeoCoordinates;->defaultInstance:Lcom/google/protos/embed/place/GeoCoordinatesItem$GeoCoordinates;

    return-object v0
.end method

.method private getImageUrlBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 95
    iget-object v1, p0, Lcom/google/protos/embed/place/GeoCoordinatesItem$GeoCoordinates;->imageUrl_:Ljava/lang/Object;

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
    iput-object v0, p0, Lcom/google/protos/embed/place/GeoCoordinatesItem$GeoCoordinates;->imageUrl_:Ljava/lang/Object;

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

.method private getNameBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 127
    iget-object v1, p0, Lcom/google/protos/embed/place/GeoCoordinatesItem$GeoCoordinates;->name_:Ljava/lang/Object;

    .line 128
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 129
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 131
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/protos/embed/place/GeoCoordinatesItem$GeoCoordinates;->name_:Ljava/lang/Object;

    .line 134
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

.method private getUrlBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 159
    iget-object v1, p0, Lcom/google/protos/embed/place/GeoCoordinatesItem$GeoCoordinates;->url_:Ljava/lang/Object;

    .line 160
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 161
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 163
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/protos/embed/place/GeoCoordinatesItem$GeoCoordinates;->url_:Ljava/lang/Object;

    .line 166
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
    .registers 3

    .prologue
    const-wide/16 v0, 0x0

    .line 171
    iput-wide v0, p0, Lcom/google/protos/embed/place/GeoCoordinatesItem$GeoCoordinates;->latitude_:D

    .line 172
    iput-wide v0, p0, Lcom/google/protos/embed/place/GeoCoordinatesItem$GeoCoordinates;->longitude_:D

    .line 173
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/embed/place/GeoCoordinatesItem$GeoCoordinates;->imageUrl_:Ljava/lang/Object;

    .line 174
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/embed/place/GeoCoordinatesItem$GeoCoordinates;->name_:Ljava/lang/Object;

    .line 175
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/embed/place/GeoCoordinatesItem$GeoCoordinates;->url_:Ljava/lang/Object;

    .line 176
    return-void
.end method

.method public static newBuilder()Lcom/google/protos/embed/place/GeoCoordinatesItem$GeoCoordinates$Builder;
    .registers 1

    .prologue
    .line 310
    #calls: Lcom/google/protos/embed/place/GeoCoordinatesItem$GeoCoordinates$Builder;->create()Lcom/google/protos/embed/place/GeoCoordinatesItem$GeoCoordinates$Builder;
    invoke-static {}, Lcom/google/protos/embed/place/GeoCoordinatesItem$GeoCoordinates$Builder;->access$100()Lcom/google/protos/embed/place/GeoCoordinatesItem$GeoCoordinates$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/protos/embed/place/GeoCoordinatesItem$GeoCoordinates;)Lcom/google/protos/embed/place/GeoCoordinatesItem$GeoCoordinates$Builder;
    .registers 2
    .parameter "prototype"

    .prologue
    .line 313
    invoke-static {}, Lcom/google/protos/embed/place/GeoCoordinatesItem$GeoCoordinates;->newBuilder()Lcom/google/protos/embed/place/GeoCoordinatesItem$GeoCoordinates$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protos/embed/place/GeoCoordinatesItem$GeoCoordinates$Builder;->mergeFrom(Lcom/google/protos/embed/place/GeoCoordinatesItem$GeoCoordinates;)Lcom/google/protos/embed/place/GeoCoordinatesItem$GeoCoordinates$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 35
    invoke-virtual {p0}, Lcom/google/protos/embed/place/GeoCoordinatesItem$GeoCoordinates;->getDefaultInstanceForType()Lcom/google/protos/embed/place/GeoCoordinatesItem$GeoCoordinates;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/protos/embed/place/GeoCoordinatesItem$GeoCoordinates;
    .registers 2

    .prologue
    .line 50
    sget-object v0, Lcom/google/protos/embed/place/GeoCoordinatesItem$GeoCoordinates;->defaultInstance:Lcom/google/protos/embed/place/GeoCoordinatesItem$GeoCoordinates;

    return-object v0
.end method

.method public getImageUrl()Ljava/lang/String;
    .registers 5

    .prologue
    .line 81
    iget-object v1, p0, Lcom/google/protos/embed/place/GeoCoordinatesItem$GeoCoordinates;->imageUrl_:Ljava/lang/Object;

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
    iput-object v2, p0, Lcom/google/protos/embed/place/GeoCoordinatesItem$GeoCoordinates;->imageUrl_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 91
    goto :goto_8
.end method

.method public getLatitude()D
    .registers 3

    .prologue
    .line 61
    iget-wide v0, p0, Lcom/google/protos/embed/place/GeoCoordinatesItem$GeoCoordinates;->latitude_:D

    return-wide v0
.end method

.method public getLongitude()D
    .registers 3

    .prologue
    .line 71
    iget-wide v0, p0, Lcom/google/protos/embed/place/GeoCoordinatesItem$GeoCoordinates;->longitude_:D

    return-wide v0
.end method

.method public getName()Ljava/lang/String;
    .registers 5

    .prologue
    .line 113
    iget-object v1, p0, Lcom/google/protos/embed/place/GeoCoordinatesItem$GeoCoordinates;->name_:Ljava/lang/Object;

    .line 114
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 115
    check-cast v1, Ljava/lang/String;

    .line 123
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 117
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 119
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 120
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 121
    iput-object v2, p0, Lcom/google/protos/embed/place/GeoCoordinatesItem$GeoCoordinates;->name_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 123
    goto :goto_8
.end method

.method public getSerializedSize()I
    .registers 8

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 208
    iget v0, p0, Lcom/google/protos/embed/place/GeoCoordinatesItem$GeoCoordinates;->memoizedSerializedSize:I

    .line 209
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_a

    move v1, v0

    .line 233
    .end local v0           #size:I
    .local v1, size:I
    :goto_9
    return v1

    .line 211
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_a
    const/4 v0, 0x0

    .line 212
    iget v2, p0, Lcom/google/protos/embed/place/GeoCoordinatesItem$GeoCoordinates;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v4, :cond_18

    .line 213
    iget-wide v2, p0, Lcom/google/protos/embed/place/GeoCoordinatesItem$GeoCoordinates;->latitude_:D

    invoke-static {v4, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeDoubleSize(ID)I

    move-result v2

    add-int/2addr v0, v2

    .line 216
    :cond_18
    iget v2, p0, Lcom/google/protos/embed/place/GeoCoordinatesItem$GeoCoordinates;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-ne v2, v5, :cond_25

    .line 217
    iget-wide v2, p0, Lcom/google/protos/embed/place/GeoCoordinatesItem$GeoCoordinates;->longitude_:D

    invoke-static {v5, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeDoubleSize(ID)I

    move-result v2

    add-int/2addr v0, v2

    .line 220
    :cond_25
    iget v2, p0, Lcom/google/protos/embed/place/GeoCoordinatesItem$GeoCoordinates;->bitField0_:I

    and-int/lit8 v2, v2, 0x4

    if-ne v2, v6, :cond_35

    .line 221
    const/4 v2, 0x3

    invoke-direct {p0}, Lcom/google/protos/embed/place/GeoCoordinatesItem$GeoCoordinates;->getImageUrlBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 224
    :cond_35
    iget v2, p0, Lcom/google/protos/embed/place/GeoCoordinatesItem$GeoCoordinates;->bitField0_:I

    and-int/lit8 v2, v2, 0x8

    const/16 v3, 0x8

    if-ne v2, v3, :cond_46

    .line 225
    invoke-direct {p0}, Lcom/google/protos/embed/place/GeoCoordinatesItem$GeoCoordinates;->getNameBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v6, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 228
    :cond_46
    iget v2, p0, Lcom/google/protos/embed/place/GeoCoordinatesItem$GeoCoordinates;->bitField0_:I

    and-int/lit8 v2, v2, 0x10

    const/16 v3, 0x10

    if-ne v2, v3, :cond_58

    .line 229
    const/4 v2, 0x5

    invoke-direct {p0}, Lcom/google/protos/embed/place/GeoCoordinatesItem$GeoCoordinates;->getUrlBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 232
    :cond_58
    iput v0, p0, Lcom/google/protos/embed/place/GeoCoordinatesItem$GeoCoordinates;->memoizedSerializedSize:I

    move v1, v0

    .line 233
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_9
.end method

.method public getUrl()Ljava/lang/String;
    .registers 5

    .prologue
    .line 145
    iget-object v1, p0, Lcom/google/protos/embed/place/GeoCoordinatesItem$GeoCoordinates;->url_:Ljava/lang/Object;

    .line 146
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 147
    check-cast v1, Ljava/lang/String;

    .line 155
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 149
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 151
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 152
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 153
    iput-object v2, p0, Lcom/google/protos/embed/place/GeoCoordinatesItem$GeoCoordinates;->url_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 155
    goto :goto_8
.end method

.method public hasImageUrl()Z
    .registers 3

    .prologue
    .line 78
    iget v0, p0, Lcom/google/protos/embed/place/GeoCoordinatesItem$GeoCoordinates;->bitField0_:I

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

.method public hasLatitude()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 58
    iget v1, p0, Lcom/google/protos/embed/place/GeoCoordinatesItem$GeoCoordinates;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public hasLongitude()Z
    .registers 3

    .prologue
    .line 68
    iget v0, p0, Lcom/google/protos/embed/place/GeoCoordinatesItem$GeoCoordinates;->bitField0_:I

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

.method public hasName()Z
    .registers 3

    .prologue
    .line 110
    iget v0, p0, Lcom/google/protos/embed/place/GeoCoordinatesItem$GeoCoordinates;->bitField0_:I

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

.method public hasUrl()Z
    .registers 3

    .prologue
    .line 142
    iget v0, p0, Lcom/google/protos/embed/place/GeoCoordinatesItem$GeoCoordinates;->bitField0_:I

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

    .line 179
    iget-byte v0, p0, Lcom/google/protos/embed/place/GeoCoordinatesItem$GeoCoordinates;->memoizedIsInitialized:B

    .line 180
    .local v0, isInitialized:B
    const/4 v2, -0x1

    if-eq v0, v2, :cond_b

    if-ne v0, v1, :cond_9

    .line 183
    :goto_8
    return v1

    .line 180
    :cond_9
    const/4 v1, 0x0

    goto :goto_8

    .line 182
    :cond_b
    iput-byte v1, p0, Lcom/google/protos/embed/place/GeoCoordinatesItem$GeoCoordinates;->memoizedIsInitialized:B

    goto :goto_8
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 35
    invoke-virtual {p0}, Lcom/google/protos/embed/place/GeoCoordinatesItem$GeoCoordinates;->newBuilderForType()Lcom/google/protos/embed/place/GeoCoordinatesItem$GeoCoordinates$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/google/protos/embed/place/GeoCoordinatesItem$GeoCoordinates$Builder;
    .registers 2

    .prologue
    .line 311
    invoke-static {}, Lcom/google/protos/embed/place/GeoCoordinatesItem$GeoCoordinates;->newBuilder()Lcom/google/protos/embed/place/GeoCoordinatesItem$GeoCoordinates$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 35
    invoke-virtual {p0}, Lcom/google/protos/embed/place/GeoCoordinatesItem$GeoCoordinates;->toBuilder()Lcom/google/protos/embed/place/GeoCoordinatesItem$GeoCoordinates$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/protos/embed/place/GeoCoordinatesItem$GeoCoordinates$Builder;
    .registers 2

    .prologue
    .line 315
    invoke-static {p0}, Lcom/google/protos/embed/place/GeoCoordinatesItem$GeoCoordinates;->newBuilder(Lcom/google/protos/embed/place/GeoCoordinatesItem$GeoCoordinates;)Lcom/google/protos/embed/place/GeoCoordinatesItem$GeoCoordinates$Builder;

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
    .line 240
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->writeReplace()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .registers 7
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 188
    invoke-virtual {p0}, Lcom/google/protos/embed/place/GeoCoordinatesItem$GeoCoordinates;->getSerializedSize()I

    .line 189
    iget v0, p0, Lcom/google/protos/embed/place/GeoCoordinatesItem$GeoCoordinates;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v2, :cond_11

    .line 190
    iget-wide v0, p0, Lcom/google/protos/embed/place/GeoCoordinatesItem$GeoCoordinates;->latitude_:D

    invoke-virtual {p1, v2, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeDouble(ID)V

    .line 192
    :cond_11
    iget v0, p0, Lcom/google/protos/embed/place/GeoCoordinatesItem$GeoCoordinates;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v3, :cond_1c

    .line 193
    iget-wide v0, p0, Lcom/google/protos/embed/place/GeoCoordinatesItem$GeoCoordinates;->longitude_:D

    invoke-virtual {p1, v3, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeDouble(ID)V

    .line 195
    :cond_1c
    iget v0, p0, Lcom/google/protos/embed/place/GeoCoordinatesItem$GeoCoordinates;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-ne v0, v4, :cond_2a

    .line 196
    const/4 v0, 0x3

    invoke-direct {p0}, Lcom/google/protos/embed/place/GeoCoordinatesItem$GeoCoordinates;->getImageUrlBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 198
    :cond_2a
    iget v0, p0, Lcom/google/protos/embed/place/GeoCoordinatesItem$GeoCoordinates;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_39

    .line 199
    invoke-direct {p0}, Lcom/google/protos/embed/place/GeoCoordinatesItem$GeoCoordinates;->getNameBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v4, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 201
    :cond_39
    iget v0, p0, Lcom/google/protos/embed/place/GeoCoordinatesItem$GeoCoordinates;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_49

    .line 202
    const/4 v0, 0x5

    invoke-direct {p0}, Lcom/google/protos/embed/place/GeoCoordinatesItem$GeoCoordinates;->getUrlBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 204
    :cond_49
    return-void
.end method
