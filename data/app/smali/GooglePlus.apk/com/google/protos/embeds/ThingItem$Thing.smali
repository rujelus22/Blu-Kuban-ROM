.class public final Lcom/google/protos/embeds/ThingItem$Thing;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "ThingItem.java"

# interfaces
.implements Lcom/google/protos/embeds/ThingItem$ThingOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protos/embeds/ThingItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Thing"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protos/embeds/ThingItem$Thing$Builder;
    }
.end annotation


# static fields
.field private static final defaultInstance:Lcom/google/protos/embeds/ThingItem$Thing;

.field private static final serialVersionUID:J

.field public static final thing:Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension",
            "<",
            "Lcom/google/protos/embed/EmbedClient$EmbedClientItem;",
            "Lcom/google/protos/embeds/ThingItem$Thing;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private author_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/protos/embed/EmbedClient$EmbedClientItem;",
            ">;"
        }
    .end annotation
.end field

.field private bitField0_:I

.field private description_:Ljava/lang/Object;

.field private imageUrl_:Ljava/lang/Object;

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private name_:Ljava/lang/Object;

.field private proxiedFaviconUrl_:Ljava/lang/Object;

.field private proxiedImage_:Lcom/google/protos/embeds/EmbedCommon$Thumbnail;

.field private url_:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .prologue
    .line 943
    new-instance v0, Lcom/google/protos/embeds/ThingItem$Thing;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/protos/embeds/ThingItem$Thing;-><init>(Z)V

    sput-object v0, Lcom/google/protos/embeds/ThingItem$Thing;->defaultInstance:Lcom/google/protos/embeds/ThingItem$Thing;

    .line 944
    sget-object v0, Lcom/google/protos/embeds/ThingItem$Thing;->defaultInstance:Lcom/google/protos/embeds/ThingItem$Thing;

    invoke-direct {v0}, Lcom/google/protos/embeds/ThingItem$Thing;->initFields()V

    .line 952
    invoke-static {}, Lcom/google/protos/embed/EmbedClient$EmbedClientItem;->getDefaultInstance()Lcom/google/protos/embed/EmbedClient$EmbedClientItem;

    move-result-object v0

    invoke-static {}, Lcom/google/protos/embeds/ThingItem$Thing;->getDefaultInstance()Lcom/google/protos/embeds/ThingItem$Thing;

    move-result-object v1

    invoke-static {}, Lcom/google/protos/embeds/ThingItem$Thing;->getDefaultInstance()Lcom/google/protos/embeds/ThingItem$Thing;

    move-result-object v2

    const/4 v3, 0x0

    const v4, 0x1990e8e

    sget-object v5, Lcom/google/protobuf/WireFormat$FieldType;->MESSAGE:Lcom/google/protobuf/WireFormat$FieldType;

    invoke-static/range {v0 .. v5}, Lcom/google/protobuf/GeneratedMessageLite;->newSingularGeneratedExtension(Lcom/google/protobuf/MessageLite;Ljava/lang/Object;Lcom/google/protobuf/MessageLite;Lcom/google/protobuf/Internal$EnumLiteMap;ILcom/google/protobuf/WireFormat$FieldType;)Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;

    move-result-object v0

    sput-object v0, Lcom/google/protos/embeds/ThingItem$Thing;->thing:Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;

    return-void
.end method

.method private constructor <init>(Lcom/google/protos/embeds/ThingItem$Thing$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 50
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 264
    iput-byte v0, p0, Lcom/google/protos/embeds/ThingItem$Thing;->memoizedIsInitialized:B

    .line 305
    iput v0, p0, Lcom/google/protos/embeds/ThingItem$Thing;->memoizedSerializedSize:I

    .line 51
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protos/embeds/ThingItem$Thing$Builder;Lcom/google/protos/embeds/ThingItem$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/google/protos/embeds/ThingItem$Thing;-><init>(Lcom/google/protos/embeds/ThingItem$Thing$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 52
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 264
    iput-byte v0, p0, Lcom/google/protos/embeds/ThingItem$Thing;->memoizedIsInitialized:B

    .line 305
    iput v0, p0, Lcom/google/protos/embeds/ThingItem$Thing;->memoizedSerializedSize:I

    .line 52
    return-void
.end method

.method static synthetic access$1002(Lcom/google/protos/embeds/ThingItem$Thing;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 45
    iput p1, p0, Lcom/google/protos/embeds/ThingItem$Thing;->bitField0_:I

    return p1
.end method

.method static synthetic access$302(Lcom/google/protos/embeds/ThingItem$Thing;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 45
    iput-object p1, p0, Lcom/google/protos/embeds/ThingItem$Thing;->url_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$402(Lcom/google/protos/embeds/ThingItem$Thing;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 45
    iput-object p1, p0, Lcom/google/protos/embeds/ThingItem$Thing;->imageUrl_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$502(Lcom/google/protos/embeds/ThingItem$Thing;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 45
    iput-object p1, p0, Lcom/google/protos/embeds/ThingItem$Thing;->name_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$602(Lcom/google/protos/embeds/ThingItem$Thing;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 45
    iput-object p1, p0, Lcom/google/protos/embeds/ThingItem$Thing;->description_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$702(Lcom/google/protos/embeds/ThingItem$Thing;Lcom/google/protos/embeds/EmbedCommon$Thumbnail;)Lcom/google/protos/embeds/EmbedCommon$Thumbnail;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 45
    iput-object p1, p0, Lcom/google/protos/embeds/ThingItem$Thing;->proxiedImage_:Lcom/google/protos/embeds/EmbedCommon$Thumbnail;

    return-object p1
.end method

.method static synthetic access$802(Lcom/google/protos/embeds/ThingItem$Thing;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 45
    iput-object p1, p0, Lcom/google/protos/embeds/ThingItem$Thing;->proxiedFaviconUrl_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$900(Lcom/google/protos/embeds/ThingItem$Thing;)Ljava/util/List;
    .registers 2
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/google/protos/embeds/ThingItem$Thing;->author_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$902(Lcom/google/protos/embeds/ThingItem$Thing;Ljava/util/List;)Ljava/util/List;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 45
    iput-object p1, p0, Lcom/google/protos/embeds/ThingItem$Thing;->author_:Ljava/util/List;

    return-object p1
.end method

.method public static getDefaultInstance()Lcom/google/protos/embeds/ThingItem$Thing;
    .registers 1

    .prologue
    .line 56
    sget-object v0, Lcom/google/protos/embeds/ThingItem$Thing;->defaultInstance:Lcom/google/protos/embeds/ThingItem$Thing;

    return-object v0
.end method

.method private getDescriptionBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 181
    iget-object v1, p0, Lcom/google/protos/embeds/ThingItem$Thing;->description_:Ljava/lang/Object;

    .line 182
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 183
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 185
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/protos/embeds/ThingItem$Thing;->description_:Ljava/lang/Object;

    .line 188
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

.method private getImageUrlBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 117
    iget-object v1, p0, Lcom/google/protos/embeds/ThingItem$Thing;->imageUrl_:Ljava/lang/Object;

    .line 118
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 119
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 121
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/protos/embeds/ThingItem$Thing;->imageUrl_:Ljava/lang/Object;

    .line 124
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
    .line 149
    iget-object v1, p0, Lcom/google/protos/embeds/ThingItem$Thing;->name_:Ljava/lang/Object;

    .line 150
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 151
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 153
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/protos/embeds/ThingItem$Thing;->name_:Ljava/lang/Object;

    .line 156
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

.method private getProxiedFaviconUrlBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 223
    iget-object v1, p0, Lcom/google/protos/embeds/ThingItem$Thing;->proxiedFaviconUrl_:Ljava/lang/Object;

    .line 224
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 225
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 227
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/protos/embeds/ThingItem$Thing;->proxiedFaviconUrl_:Ljava/lang/Object;

    .line 230
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
    .line 85
    iget-object v1, p0, Lcom/google/protos/embeds/ThingItem$Thing;->url_:Ljava/lang/Object;

    .line 86
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 87
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 89
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/protos/embeds/ThingItem$Thing;->url_:Ljava/lang/Object;

    .line 92
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
    .line 256
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/embeds/ThingItem$Thing;->url_:Ljava/lang/Object;

    .line 257
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/embeds/ThingItem$Thing;->imageUrl_:Ljava/lang/Object;

    .line 258
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/embeds/ThingItem$Thing;->name_:Ljava/lang/Object;

    .line 259
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/embeds/ThingItem$Thing;->description_:Ljava/lang/Object;

    .line 260
    invoke-static {}, Lcom/google/protos/embeds/EmbedCommon$Thumbnail;->getDefaultInstance()Lcom/google/protos/embeds/EmbedCommon$Thumbnail;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/embeds/ThingItem$Thing;->proxiedImage_:Lcom/google/protos/embeds/EmbedCommon$Thumbnail;

    .line 261
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/embeds/ThingItem$Thing;->proxiedFaviconUrl_:Ljava/lang/Object;

    .line 262
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/embeds/ThingItem$Thing;->author_:Ljava/util/List;

    .line 263
    return-void
.end method

.method public static newBuilder()Lcom/google/protos/embeds/ThingItem$Thing$Builder;
    .registers 1

    .prologue
    .line 417
    #calls: Lcom/google/protos/embeds/ThingItem$Thing$Builder;->create()Lcom/google/protos/embeds/ThingItem$Thing$Builder;
    invoke-static {}, Lcom/google/protos/embeds/ThingItem$Thing$Builder;->access$100()Lcom/google/protos/embeds/ThingItem$Thing$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/protos/embeds/ThingItem$Thing;)Lcom/google/protos/embeds/ThingItem$Thing$Builder;
    .registers 2
    .parameter "prototype"

    .prologue
    .line 420
    invoke-static {}, Lcom/google/protos/embeds/ThingItem$Thing;->newBuilder()Lcom/google/protos/embeds/ThingItem$Thing$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protos/embeds/ThingItem$Thing$Builder;->mergeFrom(Lcom/google/protos/embeds/ThingItem$Thing;)Lcom/google/protos/embeds/ThingItem$Thing$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getAuthor(I)Lcom/google/protos/embed/EmbedClient$EmbedClientItem;
    .registers 3
    .parameter "index"

    .prologue
    .line 248
    iget-object v0, p0, Lcom/google/protos/embeds/ThingItem$Thing;->author_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protos/embed/EmbedClient$EmbedClientItem;

    return-object v0
.end method

.method public getAuthorCount()I
    .registers 2

    .prologue
    .line 245
    iget-object v0, p0, Lcom/google/protos/embeds/ThingItem$Thing;->author_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 45
    invoke-virtual {p0}, Lcom/google/protos/embeds/ThingItem$Thing;->getDefaultInstanceForType()Lcom/google/protos/embeds/ThingItem$Thing;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/protos/embeds/ThingItem$Thing;
    .registers 2

    .prologue
    .line 60
    sget-object v0, Lcom/google/protos/embeds/ThingItem$Thing;->defaultInstance:Lcom/google/protos/embeds/ThingItem$Thing;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .registers 5

    .prologue
    .line 167
    iget-object v1, p0, Lcom/google/protos/embeds/ThingItem$Thing;->description_:Ljava/lang/Object;

    .line 168
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 169
    check-cast v1, Ljava/lang/String;

    .line 177
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 171
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 173
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 174
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 175
    iput-object v2, p0, Lcom/google/protos/embeds/ThingItem$Thing;->description_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 177
    goto :goto_8
.end method

.method public getImageUrl()Ljava/lang/String;
    .registers 5

    .prologue
    .line 103
    iget-object v1, p0, Lcom/google/protos/embeds/ThingItem$Thing;->imageUrl_:Ljava/lang/Object;

    .line 104
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 105
    check-cast v1, Ljava/lang/String;

    .line 113
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 107
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 109
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 110
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 111
    iput-object v2, p0, Lcom/google/protos/embeds/ThingItem$Thing;->imageUrl_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 113
    goto :goto_8
.end method

.method public getName()Ljava/lang/String;
    .registers 5

    .prologue
    .line 135
    iget-object v1, p0, Lcom/google/protos/embeds/ThingItem$Thing;->name_:Ljava/lang/Object;

    .line 136
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 137
    check-cast v1, Ljava/lang/String;

    .line 145
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 139
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 141
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 142
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 143
    iput-object v2, p0, Lcom/google/protos/embeds/ThingItem$Thing;->name_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 145
    goto :goto_8
.end method

.method public getProxiedFaviconUrl()Ljava/lang/String;
    .registers 5

    .prologue
    .line 209
    iget-object v1, p0, Lcom/google/protos/embeds/ThingItem$Thing;->proxiedFaviconUrl_:Ljava/lang/Object;

    .line 210
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 211
    check-cast v1, Ljava/lang/String;

    .line 219
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 213
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 215
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 216
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 217
    iput-object v2, p0, Lcom/google/protos/embeds/ThingItem$Thing;->proxiedFaviconUrl_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 219
    goto :goto_8
.end method

.method public getProxiedImage()Lcom/google/protos/embeds/EmbedCommon$Thumbnail;
    .registers 2

    .prologue
    .line 199
    iget-object v0, p0, Lcom/google/protos/embeds/ThingItem$Thing;->proxiedImage_:Lcom/google/protos/embeds/EmbedCommon$Thumbnail;

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 8

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 307
    iget v1, p0, Lcom/google/protos/embeds/ThingItem$Thing;->memoizedSerializedSize:I

    .line 308
    .local v1, size:I
    const/4 v3, -0x1

    if-eq v1, v3, :cond_a

    move v2, v1

    .line 340
    .end local v1           #size:I
    .local v2, size:I
    :goto_9
    return v2

    .line 310
    .end local v2           #size:I
    .restart local v1       #size:I
    :cond_a
    const/4 v1, 0x0

    .line 311
    iget v3, p0, Lcom/google/protos/embeds/ThingItem$Thing;->bitField0_:I

    and-int/lit8 v3, v3, 0x1

    if-ne v3, v4, :cond_1a

    .line 312
    invoke-direct {p0}, Lcom/google/protos/embeds/ThingItem$Thing;->getUrlBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v3

    add-int/2addr v1, v3

    .line 315
    :cond_1a
    iget v3, p0, Lcom/google/protos/embeds/ThingItem$Thing;->bitField0_:I

    and-int/lit8 v3, v3, 0x2

    if-ne v3, v5, :cond_29

    .line 316
    invoke-direct {p0}, Lcom/google/protos/embeds/ThingItem$Thing;->getImageUrlBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v5, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v3

    add-int/2addr v1, v3

    .line 319
    :cond_29
    iget v3, p0, Lcom/google/protos/embeds/ThingItem$Thing;->bitField0_:I

    and-int/lit8 v3, v3, 0x4

    if-ne v3, v6, :cond_39

    .line 320
    const/4 v3, 0x3

    invoke-direct {p0}, Lcom/google/protos/embeds/ThingItem$Thing;->getNameBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v3

    add-int/2addr v1, v3

    .line 323
    :cond_39
    iget v3, p0, Lcom/google/protos/embeds/ThingItem$Thing;->bitField0_:I

    and-int/lit8 v3, v3, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_4a

    .line 324
    invoke-direct {p0}, Lcom/google/protos/embeds/ThingItem$Thing;->getDescriptionBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v6, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v3

    add-int/2addr v1, v3

    .line 327
    :cond_4a
    iget v3, p0, Lcom/google/protos/embeds/ThingItem$Thing;->bitField0_:I

    and-int/lit8 v3, v3, 0x10

    const/16 v4, 0x10

    if-ne v3, v4, :cond_5a

    .line 328
    const/4 v3, 0x5

    iget-object v4, p0, Lcom/google/protos/embeds/ThingItem$Thing;->proxiedImage_:Lcom/google/protos/embeds/EmbedCommon$Thumbnail;

    invoke-static {v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v3

    add-int/2addr v1, v3

    .line 331
    :cond_5a
    iget v3, p0, Lcom/google/protos/embeds/ThingItem$Thing;->bitField0_:I

    and-int/lit8 v3, v3, 0x20

    const/16 v4, 0x20

    if-ne v3, v4, :cond_6c

    .line 332
    const/4 v3, 0x6

    invoke-direct {p0}, Lcom/google/protos/embeds/ThingItem$Thing;->getProxiedFaviconUrlBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v3

    add-int/2addr v1, v3

    .line 335
    :cond_6c
    const/4 v0, 0x0

    .local v0, i:I
    :goto_6d
    iget-object v3, p0, Lcom/google/protos/embeds/ThingItem$Thing;->author_:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_86

    .line 336
    const/4 v4, 0x7

    iget-object v3, p0, Lcom/google/protos/embeds/ThingItem$Thing;->author_:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/MessageLite;

    invoke-static {v4, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v3

    add-int/2addr v1, v3

    .line 335
    add-int/lit8 v0, v0, 0x1

    goto :goto_6d

    .line 339
    :cond_86
    iput v1, p0, Lcom/google/protos/embeds/ThingItem$Thing;->memoizedSerializedSize:I

    move v2, v1

    .line 340
    .end local v1           #size:I
    .restart local v2       #size:I
    goto :goto_9
.end method

.method public getUrl()Ljava/lang/String;
    .registers 5

    .prologue
    .line 71
    iget-object v1, p0, Lcom/google/protos/embeds/ThingItem$Thing;->url_:Ljava/lang/Object;

    .line 72
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 73
    check-cast v1, Ljava/lang/String;

    .line 81
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 75
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 77
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 78
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 79
    iput-object v2, p0, Lcom/google/protos/embeds/ThingItem$Thing;->url_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 81
    goto :goto_8
.end method

.method public hasDescription()Z
    .registers 3

    .prologue
    .line 164
    iget v0, p0, Lcom/google/protos/embeds/ThingItem$Thing;->bitField0_:I

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

.method public hasImageUrl()Z
    .registers 3

    .prologue
    .line 100
    iget v0, p0, Lcom/google/protos/embeds/ThingItem$Thing;->bitField0_:I

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
    .line 132
    iget v0, p0, Lcom/google/protos/embeds/ThingItem$Thing;->bitField0_:I

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

.method public hasProxiedFaviconUrl()Z
    .registers 3

    .prologue
    .line 206
    iget v0, p0, Lcom/google/protos/embeds/ThingItem$Thing;->bitField0_:I

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

.method public hasProxiedImage()Z
    .registers 3

    .prologue
    .line 196
    iget v0, p0, Lcom/google/protos/embeds/ThingItem$Thing;->bitField0_:I

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

.method public hasUrl()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 68
    iget v1, p0, Lcom/google/protos/embeds/ThingItem$Thing;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public final isInitialized()Z
    .registers 6

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 266
    iget-byte v1, p0, Lcom/google/protos/embeds/ThingItem$Thing;->memoizedIsInitialized:B

    .line 267
    .local v1, isInitialized:B
    const/4 v4, -0x1

    if-eq v1, v4, :cond_c

    if-ne v1, v2, :cond_a

    .line 276
    :goto_9
    return v2

    :cond_a
    move v2, v3

    .line 267
    goto :goto_9

    .line 269
    :cond_c
    const/4 v0, 0x0

    .local v0, i:I
    :goto_d
    invoke-virtual {p0}, Lcom/google/protos/embeds/ThingItem$Thing;->getAuthorCount()I

    move-result v4

    if-ge v0, v4, :cond_24

    .line 270
    invoke-virtual {p0, v0}, Lcom/google/protos/embeds/ThingItem$Thing;->getAuthor(I)Lcom/google/protos/embed/EmbedClient$EmbedClientItem;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/protos/embed/EmbedClient$EmbedClientItem;->isInitialized()Z

    move-result v4

    if-nez v4, :cond_21

    .line 271
    iput-byte v3, p0, Lcom/google/protos/embeds/ThingItem$Thing;->memoizedIsInitialized:B

    move v2, v3

    .line 272
    goto :goto_9

    .line 269
    :cond_21
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    .line 275
    :cond_24
    iput-byte v2, p0, Lcom/google/protos/embeds/ThingItem$Thing;->memoizedIsInitialized:B

    goto :goto_9
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 45
    invoke-virtual {p0}, Lcom/google/protos/embeds/ThingItem$Thing;->newBuilderForType()Lcom/google/protos/embeds/ThingItem$Thing$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/google/protos/embeds/ThingItem$Thing$Builder;
    .registers 2

    .prologue
    .line 418
    invoke-static {}, Lcom/google/protos/embeds/ThingItem$Thing;->newBuilder()Lcom/google/protos/embeds/ThingItem$Thing$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 45
    invoke-virtual {p0}, Lcom/google/protos/embeds/ThingItem$Thing;->toBuilder()Lcom/google/protos/embeds/ThingItem$Thing$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/protos/embeds/ThingItem$Thing$Builder;
    .registers 2

    .prologue
    .line 422
    invoke-static {p0}, Lcom/google/protos/embeds/ThingItem$Thing;->newBuilder(Lcom/google/protos/embeds/ThingItem$Thing;)Lcom/google/protos/embeds/ThingItem$Thing$Builder;

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
    .line 347
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

    .line 281
    invoke-virtual {p0}, Lcom/google/protos/embeds/ThingItem$Thing;->getSerializedSize()I

    .line 282
    iget v1, p0, Lcom/google/protos/embeds/ThingItem$Thing;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v2, :cond_13

    .line 283
    invoke-direct {p0}, Lcom/google/protos/embeds/ThingItem$Thing;->getUrlBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 285
    :cond_13
    iget v1, p0, Lcom/google/protos/embeds/ThingItem$Thing;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-ne v1, v3, :cond_20

    .line 286
    invoke-direct {p0}, Lcom/google/protos/embeds/ThingItem$Thing;->getImageUrlBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v3, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 288
    :cond_20
    iget v1, p0, Lcom/google/protos/embeds/ThingItem$Thing;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    if-ne v1, v4, :cond_2e

    .line 289
    const/4 v1, 0x3

    invoke-direct {p0}, Lcom/google/protos/embeds/ThingItem$Thing;->getNameBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 291
    :cond_2e
    iget v1, p0, Lcom/google/protos/embeds/ThingItem$Thing;->bitField0_:I

    and-int/lit8 v1, v1, 0x8

    const/16 v2, 0x8

    if-ne v1, v2, :cond_3d

    .line 292
    invoke-direct {p0}, Lcom/google/protos/embeds/ThingItem$Thing;->getDescriptionBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v4, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 294
    :cond_3d
    iget v1, p0, Lcom/google/protos/embeds/ThingItem$Thing;->bitField0_:I

    and-int/lit8 v1, v1, 0x10

    const/16 v2, 0x10

    if-ne v1, v2, :cond_4b

    .line 295
    const/4 v1, 0x5

    iget-object v2, p0, Lcom/google/protos/embeds/ThingItem$Thing;->proxiedImage_:Lcom/google/protos/embeds/EmbedCommon$Thumbnail;

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 297
    :cond_4b
    iget v1, p0, Lcom/google/protos/embeds/ThingItem$Thing;->bitField0_:I

    and-int/lit8 v1, v1, 0x20

    const/16 v2, 0x20

    if-ne v1, v2, :cond_5b

    .line 298
    const/4 v1, 0x6

    invoke-direct {p0}, Lcom/google/protos/embeds/ThingItem$Thing;->getProxiedFaviconUrlBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 300
    :cond_5b
    const/4 v0, 0x0

    .local v0, i:I
    :goto_5c
    iget-object v1, p0, Lcom/google/protos/embeds/ThingItem$Thing;->author_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_73

    .line 301
    const/4 v2, 0x7

    iget-object v1, p0, Lcom/google/protos/embeds/ThingItem$Thing;->author_:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/MessageLite;

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 300
    add-int/lit8 v0, v0, 0x1

    goto :goto_5c

    .line 303
    :cond_73
    return-void
.end method
