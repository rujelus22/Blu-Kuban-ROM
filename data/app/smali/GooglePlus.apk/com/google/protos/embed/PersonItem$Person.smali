.class public final Lcom/google/protos/embed/PersonItem$Person;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "PersonItem.java"

# interfaces
.implements Lcom/google/protos/embed/PersonItem$PersonOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protos/embed/PersonItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Person"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protos/embed/PersonItem$Person$Builder;
    }
.end annotation


# static fields
.field private static final defaultInstance:Lcom/google/protos/embed/PersonItem$Person;

.field public static final person:Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension",
            "<",
            "Lcom/google/protos/embed/EmbedClient$EmbedClientItem;",
            "Lcom/google/protos/embed/PersonItem$Person;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private email_:Ljava/lang/Object;

.field private gender_:Ljava/lang/Object;

.field private imageUrl_:Ljava/lang/Object;

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private name_:Ljava/lang/Object;

.field private ownerObfuscatedId_:Ljava/lang/Object;

.field private url_:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .prologue
    .line 795
    new-instance v0, Lcom/google/protos/embed/PersonItem$Person;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/protos/embed/PersonItem$Person;-><init>(Z)V

    sput-object v0, Lcom/google/protos/embed/PersonItem$Person;->defaultInstance:Lcom/google/protos/embed/PersonItem$Person;

    .line 796
    sget-object v0, Lcom/google/protos/embed/PersonItem$Person;->defaultInstance:Lcom/google/protos/embed/PersonItem$Person;

    invoke-direct {v0}, Lcom/google/protos/embed/PersonItem$Person;->initFields()V

    .line 804
    invoke-static {}, Lcom/google/protos/embed/EmbedClient$EmbedClientItem;->getDefaultInstance()Lcom/google/protos/embed/EmbedClient$EmbedClientItem;

    move-result-object v0

    invoke-static {}, Lcom/google/protos/embed/PersonItem$Person;->getDefaultInstance()Lcom/google/protos/embed/PersonItem$Person;

    move-result-object v1

    invoke-static {}, Lcom/google/protos/embed/PersonItem$Person;->getDefaultInstance()Lcom/google/protos/embed/PersonItem$Person;

    move-result-object v2

    const/4 v3, 0x0

    const v4, 0x19f567e

    sget-object v5, Lcom/google/protobuf/WireFormat$FieldType;->MESSAGE:Lcom/google/protobuf/WireFormat$FieldType;

    invoke-static/range {v0 .. v5}, Lcom/google/protobuf/GeneratedMessageLite;->newSingularGeneratedExtension(Lcom/google/protobuf/MessageLite;Ljava/lang/Object;Lcom/google/protobuf/MessageLite;Lcom/google/protobuf/Internal$EnumLiteMap;ILcom/google/protobuf/WireFormat$FieldType;)Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;

    move-result-object v0

    sput-object v0, Lcom/google/protos/embed/PersonItem$Person;->person:Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;

    return-void
.end method

.method private constructor <init>(Lcom/google/protos/embed/PersonItem$Person$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 44
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 258
    iput-byte v0, p0, Lcom/google/protos/embed/PersonItem$Person;->memoizedIsInitialized:B

    .line 290
    iput v0, p0, Lcom/google/protos/embed/PersonItem$Person;->memoizedSerializedSize:I

    .line 45
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protos/embed/PersonItem$Person$Builder;Lcom/google/protos/embed/PersonItem$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/google/protos/embed/PersonItem$Person;-><init>(Lcom/google/protos/embed/PersonItem$Person$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 46
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 258
    iput-byte v0, p0, Lcom/google/protos/embed/PersonItem$Person;->memoizedIsInitialized:B

    .line 290
    iput v0, p0, Lcom/google/protos/embed/PersonItem$Person;->memoizedSerializedSize:I

    .line 46
    return-void
.end method

.method static synthetic access$302(Lcom/google/protos/embed/PersonItem$Person;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 39
    iput-object p1, p0, Lcom/google/protos/embed/PersonItem$Person;->name_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$402(Lcom/google/protos/embed/PersonItem$Person;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 39
    iput-object p1, p0, Lcom/google/protos/embed/PersonItem$Person;->ownerObfuscatedId_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$502(Lcom/google/protos/embed/PersonItem$Person;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 39
    iput-object p1, p0, Lcom/google/protos/embed/PersonItem$Person;->imageUrl_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$602(Lcom/google/protos/embed/PersonItem$Person;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 39
    iput-object p1, p0, Lcom/google/protos/embed/PersonItem$Person;->url_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$702(Lcom/google/protos/embed/PersonItem$Person;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 39
    iput-object p1, p0, Lcom/google/protos/embed/PersonItem$Person;->gender_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$802(Lcom/google/protos/embed/PersonItem$Person;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 39
    iput-object p1, p0, Lcom/google/protos/embed/PersonItem$Person;->email_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$902(Lcom/google/protos/embed/PersonItem$Person;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 39
    iput p1, p0, Lcom/google/protos/embed/PersonItem$Person;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/protos/embed/PersonItem$Person;
    .registers 1

    .prologue
    .line 50
    sget-object v0, Lcom/google/protos/embed/PersonItem$Person;->defaultInstance:Lcom/google/protos/embed/PersonItem$Person;

    return-object v0
.end method

.method private getEmailBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 239
    iget-object v1, p0, Lcom/google/protos/embed/PersonItem$Person;->email_:Ljava/lang/Object;

    .line 240
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 241
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 243
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/protos/embed/PersonItem$Person;->email_:Ljava/lang/Object;

    .line 246
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

.method private getGenderBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 207
    iget-object v1, p0, Lcom/google/protos/embed/PersonItem$Person;->gender_:Ljava/lang/Object;

    .line 208
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 209
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 211
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/protos/embed/PersonItem$Person;->gender_:Ljava/lang/Object;

    .line 214
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
    .line 143
    iget-object v1, p0, Lcom/google/protos/embed/PersonItem$Person;->imageUrl_:Ljava/lang/Object;

    .line 144
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 145
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 147
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/protos/embed/PersonItem$Person;->imageUrl_:Ljava/lang/Object;

    .line 150
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
    .line 79
    iget-object v1, p0, Lcom/google/protos/embed/PersonItem$Person;->name_:Ljava/lang/Object;

    .line 80
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 81
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 83
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/protos/embed/PersonItem$Person;->name_:Ljava/lang/Object;

    .line 86
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

.method private getOwnerObfuscatedIdBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 111
    iget-object v1, p0, Lcom/google/protos/embed/PersonItem$Person;->ownerObfuscatedId_:Ljava/lang/Object;

    .line 112
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 113
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 115
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/protos/embed/PersonItem$Person;->ownerObfuscatedId_:Ljava/lang/Object;

    .line 118
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
    .line 175
    iget-object v1, p0, Lcom/google/protos/embed/PersonItem$Person;->url_:Ljava/lang/Object;

    .line 176
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 177
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 179
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/protos/embed/PersonItem$Person;->url_:Ljava/lang/Object;

    .line 182
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
    .line 251
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/embed/PersonItem$Person;->name_:Ljava/lang/Object;

    .line 252
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/embed/PersonItem$Person;->ownerObfuscatedId_:Ljava/lang/Object;

    .line 253
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/embed/PersonItem$Person;->imageUrl_:Ljava/lang/Object;

    .line 254
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/embed/PersonItem$Person;->url_:Ljava/lang/Object;

    .line 255
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/embed/PersonItem$Person;->gender_:Ljava/lang/Object;

    .line 256
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/embed/PersonItem$Person;->email_:Ljava/lang/Object;

    .line 257
    return-void
.end method

.method public static newBuilder()Lcom/google/protos/embed/PersonItem$Person$Builder;
    .registers 1

    .prologue
    .line 398
    #calls: Lcom/google/protos/embed/PersonItem$Person$Builder;->create()Lcom/google/protos/embed/PersonItem$Person$Builder;
    invoke-static {}, Lcom/google/protos/embed/PersonItem$Person$Builder;->access$100()Lcom/google/protos/embed/PersonItem$Person$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/protos/embed/PersonItem$Person;)Lcom/google/protos/embed/PersonItem$Person$Builder;
    .registers 2
    .parameter "prototype"

    .prologue
    .line 401
    invoke-static {}, Lcom/google/protos/embed/PersonItem$Person;->newBuilder()Lcom/google/protos/embed/PersonItem$Person$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protos/embed/PersonItem$Person$Builder;->mergeFrom(Lcom/google/protos/embed/PersonItem$Person;)Lcom/google/protos/embed/PersonItem$Person$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 39
    invoke-virtual {p0}, Lcom/google/protos/embed/PersonItem$Person;->getDefaultInstanceForType()Lcom/google/protos/embed/PersonItem$Person;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/protos/embed/PersonItem$Person;
    .registers 2

    .prologue
    .line 54
    sget-object v0, Lcom/google/protos/embed/PersonItem$Person;->defaultInstance:Lcom/google/protos/embed/PersonItem$Person;

    return-object v0
.end method

.method public getEmail()Ljava/lang/String;
    .registers 5

    .prologue
    .line 225
    iget-object v1, p0, Lcom/google/protos/embed/PersonItem$Person;->email_:Ljava/lang/Object;

    .line 226
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 227
    check-cast v1, Ljava/lang/String;

    .line 235
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 229
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 231
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 232
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 233
    iput-object v2, p0, Lcom/google/protos/embed/PersonItem$Person;->email_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 235
    goto :goto_8
.end method

.method public getGender()Ljava/lang/String;
    .registers 5

    .prologue
    .line 193
    iget-object v1, p0, Lcom/google/protos/embed/PersonItem$Person;->gender_:Ljava/lang/Object;

    .line 194
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 195
    check-cast v1, Ljava/lang/String;

    .line 203
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 197
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 199
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 200
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 201
    iput-object v2, p0, Lcom/google/protos/embed/PersonItem$Person;->gender_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 203
    goto :goto_8
.end method

.method public getImageUrl()Ljava/lang/String;
    .registers 5

    .prologue
    .line 129
    iget-object v1, p0, Lcom/google/protos/embed/PersonItem$Person;->imageUrl_:Ljava/lang/Object;

    .line 130
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 131
    check-cast v1, Ljava/lang/String;

    .line 139
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 133
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 135
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 136
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 137
    iput-object v2, p0, Lcom/google/protos/embed/PersonItem$Person;->imageUrl_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 139
    goto :goto_8
.end method

.method public getName()Ljava/lang/String;
    .registers 5

    .prologue
    .line 65
    iget-object v1, p0, Lcom/google/protos/embed/PersonItem$Person;->name_:Ljava/lang/Object;

    .line 66
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 67
    check-cast v1, Ljava/lang/String;

    .line 75
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 69
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 71
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 72
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 73
    iput-object v2, p0, Lcom/google/protos/embed/PersonItem$Person;->name_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 75
    goto :goto_8
.end method

.method public getOwnerObfuscatedId()Ljava/lang/String;
    .registers 5

    .prologue
    .line 97
    iget-object v1, p0, Lcom/google/protos/embed/PersonItem$Person;->ownerObfuscatedId_:Ljava/lang/Object;

    .line 98
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 99
    check-cast v1, Ljava/lang/String;

    .line 107
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 101
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 103
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 104
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 105
    iput-object v2, p0, Lcom/google/protos/embed/PersonItem$Person;->ownerObfuscatedId_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 107
    goto :goto_8
.end method

.method public getSerializedSize()I
    .registers 7

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 292
    iget v0, p0, Lcom/google/protos/embed/PersonItem$Person;->memoizedSerializedSize:I

    .line 293
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_a

    move v1, v0

    .line 321
    .end local v0           #size:I
    .local v1, size:I
    :goto_9
    return v1

    .line 295
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_a
    const/4 v0, 0x0

    .line 296
    iget v2, p0, Lcom/google/protos/embed/PersonItem$Person;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_1a

    .line 297
    invoke-direct {p0}, Lcom/google/protos/embed/PersonItem$Person;->getNameBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 300
    :cond_1a
    iget v2, p0, Lcom/google/protos/embed/PersonItem$Person;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-ne v2, v4, :cond_29

    .line 301
    invoke-direct {p0}, Lcom/google/protos/embed/PersonItem$Person;->getOwnerObfuscatedIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 304
    :cond_29
    iget v2, p0, Lcom/google/protos/embed/PersonItem$Person;->bitField0_:I

    and-int/lit8 v2, v2, 0x4

    if-ne v2, v5, :cond_39

    .line 305
    const/4 v2, 0x3

    invoke-direct {p0}, Lcom/google/protos/embed/PersonItem$Person;->getImageUrlBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 308
    :cond_39
    iget v2, p0, Lcom/google/protos/embed/PersonItem$Person;->bitField0_:I

    and-int/lit8 v2, v2, 0x8

    const/16 v3, 0x8

    if-ne v2, v3, :cond_4a

    .line 309
    invoke-direct {p0}, Lcom/google/protos/embed/PersonItem$Person;->getUrlBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v5, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 312
    :cond_4a
    iget v2, p0, Lcom/google/protos/embed/PersonItem$Person;->bitField0_:I

    and-int/lit8 v2, v2, 0x10

    const/16 v3, 0x10

    if-ne v2, v3, :cond_5c

    .line 313
    const/4 v2, 0x5

    invoke-direct {p0}, Lcom/google/protos/embed/PersonItem$Person;->getGenderBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 316
    :cond_5c
    iget v2, p0, Lcom/google/protos/embed/PersonItem$Person;->bitField0_:I

    and-int/lit8 v2, v2, 0x20

    const/16 v3, 0x20

    if-ne v2, v3, :cond_6e

    .line 317
    const/4 v2, 0x6

    invoke-direct {p0}, Lcom/google/protos/embed/PersonItem$Person;->getEmailBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 320
    :cond_6e
    iput v0, p0, Lcom/google/protos/embed/PersonItem$Person;->memoizedSerializedSize:I

    move v1, v0

    .line 321
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_9
.end method

.method public getUrl()Ljava/lang/String;
    .registers 5

    .prologue
    .line 161
    iget-object v1, p0, Lcom/google/protos/embed/PersonItem$Person;->url_:Ljava/lang/Object;

    .line 162
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 163
    check-cast v1, Ljava/lang/String;

    .line 171
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 165
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 167
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 168
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 169
    iput-object v2, p0, Lcom/google/protos/embed/PersonItem$Person;->url_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 171
    goto :goto_8
.end method

.method public hasEmail()Z
    .registers 3

    .prologue
    .line 222
    iget v0, p0, Lcom/google/protos/embed/PersonItem$Person;->bitField0_:I

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

.method public hasGender()Z
    .registers 3

    .prologue
    .line 190
    iget v0, p0, Lcom/google/protos/embed/PersonItem$Person;->bitField0_:I

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

.method public hasImageUrl()Z
    .registers 3

    .prologue
    .line 126
    iget v0, p0, Lcom/google/protos/embed/PersonItem$Person;->bitField0_:I

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

.method public hasName()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 62
    iget v1, p0, Lcom/google/protos/embed/PersonItem$Person;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public hasOwnerObfuscatedId()Z
    .registers 3

    .prologue
    .line 94
    iget v0, p0, Lcom/google/protos/embed/PersonItem$Person;->bitField0_:I

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

.method public hasUrl()Z
    .registers 3

    .prologue
    .line 158
    iget v0, p0, Lcom/google/protos/embed/PersonItem$Person;->bitField0_:I

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

.method public final isInitialized()Z
    .registers 4

    .prologue
    const/4 v1, 0x1

    .line 260
    iget-byte v0, p0, Lcom/google/protos/embed/PersonItem$Person;->memoizedIsInitialized:B

    .line 261
    .local v0, isInitialized:B
    const/4 v2, -0x1

    if-eq v0, v2, :cond_b

    if-ne v0, v1, :cond_9

    .line 264
    :goto_8
    return v1

    .line 261
    :cond_9
    const/4 v1, 0x0

    goto :goto_8

    .line 263
    :cond_b
    iput-byte v1, p0, Lcom/google/protos/embed/PersonItem$Person;->memoizedIsInitialized:B

    goto :goto_8
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 39
    invoke-virtual {p0}, Lcom/google/protos/embed/PersonItem$Person;->newBuilderForType()Lcom/google/protos/embed/PersonItem$Person$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/google/protos/embed/PersonItem$Person$Builder;
    .registers 2

    .prologue
    .line 399
    invoke-static {}, Lcom/google/protos/embed/PersonItem$Person;->newBuilder()Lcom/google/protos/embed/PersonItem$Person$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 39
    invoke-virtual {p0}, Lcom/google/protos/embed/PersonItem$Person;->toBuilder()Lcom/google/protos/embed/PersonItem$Person$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/protos/embed/PersonItem$Person$Builder;
    .registers 2

    .prologue
    .line 403
    invoke-static {p0}, Lcom/google/protos/embed/PersonItem$Person;->newBuilder(Lcom/google/protos/embed/PersonItem$Person;)Lcom/google/protos/embed/PersonItem$Person$Builder;

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
    .line 328
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

    .line 269
    invoke-virtual {p0}, Lcom/google/protos/embed/PersonItem$Person;->getSerializedSize()I

    .line 270
    iget v0, p0, Lcom/google/protos/embed/PersonItem$Person;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_13

    .line 271
    invoke-direct {p0}, Lcom/google/protos/embed/PersonItem$Person;->getNameBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 273
    :cond_13
    iget v0, p0, Lcom/google/protos/embed/PersonItem$Person;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_20

    .line 274
    invoke-direct {p0}, Lcom/google/protos/embed/PersonItem$Person;->getOwnerObfuscatedIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 276
    :cond_20
    iget v0, p0, Lcom/google/protos/embed/PersonItem$Person;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-ne v0, v3, :cond_2e

    .line 277
    const/4 v0, 0x3

    invoke-direct {p0}, Lcom/google/protos/embed/PersonItem$Person;->getImageUrlBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 279
    :cond_2e
    iget v0, p0, Lcom/google/protos/embed/PersonItem$Person;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_3d

    .line 280
    invoke-direct {p0}, Lcom/google/protos/embed/PersonItem$Person;->getUrlBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v3, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 282
    :cond_3d
    iget v0, p0, Lcom/google/protos/embed/PersonItem$Person;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_4d

    .line 283
    const/4 v0, 0x5

    invoke-direct {p0}, Lcom/google/protos/embed/PersonItem$Person;->getGenderBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 285
    :cond_4d
    iget v0, p0, Lcom/google/protos/embed/PersonItem$Person;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_5d

    .line 286
    const/4 v0, 0x6

    invoke-direct {p0}, Lcom/google/protos/embed/PersonItem$Person;->getEmailBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 288
    :cond_5d
    return-void
.end method
