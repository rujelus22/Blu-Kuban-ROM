.class public final Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PersonInformation;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "AnnotationResultProtos.java"

# interfaces
.implements Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PersonInformationOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PersonInformation"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PersonInformation$Builder;
    }
.end annotation


# static fields
.field public static final DISPLAY_NAME_FIELD_NUMBER:I = 0x2

.field public static final PROFILE_PHOTO_URL_FIELD_NUMBER:I = 0x4

.field public static final PROFILE_URL_FIELD_NUMBER:I = 0x3

.field public static final USER_ID_FIELD_NUMBER:I = 0x1

.field private static final defaultInstance:Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PersonInformation;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private displayName_:Ljava/lang/Object;

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private profilePhotoUrl_:Ljava/lang/Object;

.field private profileUrl_:Ljava/lang/Object;

.field private userId_:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 743
    new-instance v0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PersonInformation;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PersonInformation;-><init>(Z)V

    sput-object v0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PersonInformation;->defaultInstance:Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PersonInformation;

    .line 744
    sget-object v0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PersonInformation;->defaultInstance:Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PersonInformation;

    invoke-direct {v0}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PersonInformation;->initFields()V

    .line 745
    return-void
.end method

.method private constructor <init>(Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PersonInformation$Builder;)V
    .registers 3
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 172
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 320
    iput-byte v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PersonInformation;->memoizedIsInitialized:B

    .line 346
    iput v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PersonInformation;->memoizedSerializedSize:I

    .line 173
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PersonInformation$Builder;Lcom/google/goggles/AnnotationResultProtos$1;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 167
    invoke-direct {p0, p1}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PersonInformation;-><init>(Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PersonInformation$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 174
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 320
    iput-byte v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PersonInformation;->memoizedIsInitialized:B

    .line 346
    iput v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PersonInformation;->memoizedSerializedSize:I

    .line 174
    return-void
.end method

.method static synthetic access$302(Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PersonInformation;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 167
    iput-object p1, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PersonInformation;->userId_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$402(Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PersonInformation;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 167
    iput-object p1, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PersonInformation;->displayName_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$502(Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PersonInformation;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 167
    iput-object p1, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PersonInformation;->profileUrl_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$602(Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PersonInformation;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 167
    iput-object p1, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PersonInformation;->profilePhotoUrl_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$702(Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PersonInformation;I)I
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 167
    iput p1, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PersonInformation;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PersonInformation;
    .registers 1

    .prologue
    .line 178
    sget-object v0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PersonInformation;->defaultInstance:Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PersonInformation;

    return-object v0
.end method

.method private getDisplayNameBytes()Lcom/google/protobuf/ByteString;
    .registers 3

    .prologue
    .line 239
    iget-object v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PersonInformation;->displayName_:Ljava/lang/Object;

    .line 240
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_f

    .line 241
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 243
    iput-object v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PersonInformation;->displayName_:Ljava/lang/Object;

    .line 246
    :goto_e
    return-object v0

    :cond_f
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_e
.end method

.method private getProfilePhotoUrlBytes()Lcom/google/protobuf/ByteString;
    .registers 3

    .prologue
    .line 303
    iget-object v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PersonInformation;->profilePhotoUrl_:Ljava/lang/Object;

    .line 304
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_f

    .line 305
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 307
    iput-object v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PersonInformation;->profilePhotoUrl_:Ljava/lang/Object;

    .line 310
    :goto_e
    return-object v0

    :cond_f
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_e
.end method

.method private getProfileUrlBytes()Lcom/google/protobuf/ByteString;
    .registers 3

    .prologue
    .line 271
    iget-object v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PersonInformation;->profileUrl_:Ljava/lang/Object;

    .line 272
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_f

    .line 273
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 275
    iput-object v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PersonInformation;->profileUrl_:Ljava/lang/Object;

    .line 278
    :goto_e
    return-object v0

    :cond_f
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_e
.end method

.method private getUserIdBytes()Lcom/google/protobuf/ByteString;
    .registers 3

    .prologue
    .line 207
    iget-object v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PersonInformation;->userId_:Ljava/lang/Object;

    .line 208
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_f

    .line 209
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 211
    iput-object v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PersonInformation;->userId_:Ljava/lang/Object;

    .line 214
    :goto_e
    return-object v0

    :cond_f
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_e
.end method

.method private initFields()V
    .registers 2

    .prologue
    .line 315
    const-string v0, ""

    iput-object v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PersonInformation;->userId_:Ljava/lang/Object;

    .line 316
    const-string v0, ""

    iput-object v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PersonInformation;->displayName_:Ljava/lang/Object;

    .line 317
    const-string v0, ""

    iput-object v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PersonInformation;->profileUrl_:Ljava/lang/Object;

    .line 318
    const-string v0, ""

    iput-object v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PersonInformation;->profilePhotoUrl_:Ljava/lang/Object;

    .line 319
    return-void
.end method

.method public static newBuilder()Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PersonInformation$Builder;
    .registers 1

    .prologue
    .line 446
    #calls: Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PersonInformation$Builder;->create()Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PersonInformation$Builder;
    invoke-static {}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PersonInformation$Builder;->access$100()Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PersonInformation$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PersonInformation;)Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PersonInformation$Builder;
    .registers 2
    .parameter

    .prologue
    .line 449
    invoke-static {}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PersonInformation;->newBuilder()Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PersonInformation$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PersonInformation$Builder;->mergeFrom(Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PersonInformation;)Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PersonInformation$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PersonInformation;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 415
    invoke-static {}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PersonInformation;->newBuilder()Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PersonInformation$Builder;

    move-result-object v0

    .line 416
    invoke-virtual {v0, p0}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PersonInformation$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 417
    #calls: Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PersonInformation$Builder;->buildParsed()Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PersonInformation;
    invoke-static {v0}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PersonInformation$Builder;->access$000(Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PersonInformation$Builder;)Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PersonInformation;

    move-result-object v0

    .line 419
    :goto_e
    return-object v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PersonInformation;
    .registers 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 426
    invoke-static {}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PersonInformation;->newBuilder()Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PersonInformation$Builder;

    move-result-object v0

    .line 427
    invoke-virtual {v0, p0, p1}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PersonInformation$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 428
    #calls: Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PersonInformation$Builder;->buildParsed()Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PersonInformation;
    invoke-static {v0}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PersonInformation$Builder;->access$000(Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PersonInformation$Builder;)Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PersonInformation;

    move-result-object v0

    .line 430
    :goto_e
    return-object v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PersonInformation;
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 382
    invoke-static {}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PersonInformation;->newBuilder()Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PersonInformation$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PersonInformation$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PersonInformation$Builder;

    #calls: Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PersonInformation$Builder;->buildParsed()Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PersonInformation;
    invoke-static {v0}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PersonInformation$Builder;->access$000(Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PersonInformation$Builder;)Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PersonInformation;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PersonInformation;
    .registers 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 388
    invoke-static {}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PersonInformation;->newBuilder()Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PersonInformation$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PersonInformation$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PersonInformation$Builder;

    #calls: Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PersonInformation$Builder;->buildParsed()Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PersonInformation;
    invoke-static {v0}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PersonInformation$Builder;->access$000(Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PersonInformation$Builder;)Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PersonInformation;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PersonInformation;
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 436
    invoke-static {}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PersonInformation;->newBuilder()Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PersonInformation$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PersonInformation$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PersonInformation$Builder;

    #calls: Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PersonInformation$Builder;->buildParsed()Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PersonInformation;
    invoke-static {v0}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PersonInformation$Builder;->access$000(Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PersonInformation$Builder;)Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PersonInformation;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PersonInformation;
    .registers 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 442
    invoke-static {}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PersonInformation;->newBuilder()Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PersonInformation$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PersonInformation$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PersonInformation$Builder;

    move-result-object v0

    #calls: Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PersonInformation$Builder;->buildParsed()Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PersonInformation;
    invoke-static {v0}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PersonInformation$Builder;->access$000(Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PersonInformation$Builder;)Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PersonInformation;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PersonInformation;
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 404
    invoke-static {}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PersonInformation;->newBuilder()Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PersonInformation$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PersonInformation$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PersonInformation$Builder;

    #calls: Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PersonInformation$Builder;->buildParsed()Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PersonInformation;
    invoke-static {v0}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PersonInformation$Builder;->access$000(Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PersonInformation$Builder;)Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PersonInformation;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PersonInformation;
    .registers 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 410
    invoke-static {}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PersonInformation;->newBuilder()Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PersonInformation$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PersonInformation$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PersonInformation$Builder;

    #calls: Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PersonInformation$Builder;->buildParsed()Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PersonInformation;
    invoke-static {v0}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PersonInformation$Builder;->access$000(Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PersonInformation$Builder;)Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PersonInformation;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PersonInformation;
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 393
    invoke-static {}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PersonInformation;->newBuilder()Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PersonInformation$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PersonInformation$Builder;->mergeFrom([B)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PersonInformation$Builder;

    #calls: Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PersonInformation$Builder;->buildParsed()Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PersonInformation;
    invoke-static {v0}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PersonInformation$Builder;->access$000(Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PersonInformation$Builder;)Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PersonInformation;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PersonInformation;
    .registers 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 399
    invoke-static {}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PersonInformation;->newBuilder()Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PersonInformation$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PersonInformation$Builder;->mergeFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PersonInformation$Builder;

    #calls: Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PersonInformation$Builder;->buildParsed()Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PersonInformation;
    invoke-static {v0}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PersonInformation$Builder;->access$000(Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PersonInformation$Builder;)Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PersonInformation;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getDefaultInstanceForType()Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PersonInformation;
    .registers 2

    .prologue
    .line 182
    sget-object v0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PersonInformation;->defaultInstance:Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PersonInformation;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 167
    invoke-virtual {p0}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PersonInformation;->getDefaultInstanceForType()Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PersonInformation;

    move-result-object v0

    return-object v0
.end method

.method public getDisplayName()Ljava/lang/String;
    .registers 3

    .prologue
    .line 225
    iget-object v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PersonInformation;->displayName_:Ljava/lang/Object;

    .line 226
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_9

    .line 227
    check-cast v0, Ljava/lang/String;

    .line 235
    :goto_8
    return-object v0

    .line 229
    :cond_9
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 231
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 232
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 233
    iput-object v1, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PersonInformation;->displayName_:Ljava/lang/Object;

    :cond_17
    move-object v0, v1

    .line 235
    goto :goto_8
.end method

.method public getProfilePhotoUrl()Ljava/lang/String;
    .registers 3

    .prologue
    .line 289
    iget-object v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PersonInformation;->profilePhotoUrl_:Ljava/lang/Object;

    .line 290
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_9

    .line 291
    check-cast v0, Ljava/lang/String;

    .line 299
    :goto_8
    return-object v0

    .line 293
    :cond_9
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 295
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 296
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 297
    iput-object v1, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PersonInformation;->profilePhotoUrl_:Ljava/lang/Object;

    :cond_17
    move-object v0, v1

    .line 299
    goto :goto_8
.end method

.method public getProfileUrl()Ljava/lang/String;
    .registers 3

    .prologue
    .line 257
    iget-object v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PersonInformation;->profileUrl_:Ljava/lang/Object;

    .line 258
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_9

    .line 259
    check-cast v0, Ljava/lang/String;

    .line 267
    :goto_8
    return-object v0

    .line 261
    :cond_9
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 263
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 264
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 265
    iput-object v1, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PersonInformation;->profileUrl_:Ljava/lang/Object;

    :cond_17
    move-object v0, v1

    .line 267
    goto :goto_8
.end method

.method public getSerializedSize()I
    .registers 6

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 348
    iget v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PersonInformation;->memoizedSerializedSize:I

    .line 349
    const/4 v1, -0x1

    if-eq v0, v1, :cond_9

    .line 369
    :goto_8
    return v0

    .line 351
    :cond_9
    const/4 v0, 0x0

    .line 352
    iget v1, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PersonInformation;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v2, :cond_19

    .line 353
    invoke-direct {p0}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PersonInformation;->getUserIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v1

    add-int/2addr v0, v1

    .line 356
    :cond_19
    iget v1, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PersonInformation;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-ne v1, v3, :cond_28

    .line 357
    invoke-direct {p0}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PersonInformation;->getDisplayNameBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v1

    add-int/2addr v0, v1

    .line 360
    :cond_28
    iget v1, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PersonInformation;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    if-ne v1, v4, :cond_38

    .line 361
    const/4 v1, 0x3

    invoke-direct {p0}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PersonInformation;->getProfileUrlBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v1

    add-int/2addr v0, v1

    .line 364
    :cond_38
    iget v1, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PersonInformation;->bitField0_:I

    and-int/lit8 v1, v1, 0x8

    const/16 v2, 0x8

    if-ne v1, v2, :cond_49

    .line 365
    invoke-direct {p0}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PersonInformation;->getProfilePhotoUrlBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v1

    add-int/2addr v0, v1

    .line 368
    :cond_49
    iput v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PersonInformation;->memoizedSerializedSize:I

    goto :goto_8
.end method

.method public getUserId()Ljava/lang/String;
    .registers 3

    .prologue
    .line 193
    iget-object v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PersonInformation;->userId_:Ljava/lang/Object;

    .line 194
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_9

    .line 195
    check-cast v0, Ljava/lang/String;

    .line 203
    :goto_8
    return-object v0

    .line 197
    :cond_9
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 199
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 200
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 201
    iput-object v1, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PersonInformation;->userId_:Ljava/lang/Object;

    :cond_17
    move-object v0, v1

    .line 203
    goto :goto_8
.end method

.method public hasDisplayName()Z
    .registers 3

    .prologue
    .line 222
    iget v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PersonInformation;->bitField0_:I

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

.method public hasProfilePhotoUrl()Z
    .registers 3

    .prologue
    .line 286
    iget v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PersonInformation;->bitField0_:I

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

.method public hasProfileUrl()Z
    .registers 3

    .prologue
    .line 254
    iget v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PersonInformation;->bitField0_:I

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

.method public hasUserId()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 190
    iget v1, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PersonInformation;->bitField0_:I

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
    const/4 v0, 0x1

    .line 322
    iget-byte v1, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PersonInformation;->memoizedIsInitialized:B

    .line 323
    const/4 v2, -0x1

    if-eq v1, v2, :cond_b

    if-ne v1, v0, :cond_9

    .line 326
    :goto_8
    return v0

    .line 323
    :cond_9
    const/4 v0, 0x0

    goto :goto_8

    .line 325
    :cond_b
    iput-byte v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PersonInformation;->memoizedIsInitialized:B

    goto :goto_8
.end method

.method public newBuilderForType()Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PersonInformation$Builder;
    .registers 2

    .prologue
    .line 447
    invoke-static {}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PersonInformation;->newBuilder()Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PersonInformation$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 167
    invoke-virtual {p0}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PersonInformation;->newBuilderForType()Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PersonInformation$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PersonInformation$Builder;
    .registers 2

    .prologue
    .line 451
    invoke-static {p0}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PersonInformation;->newBuilder(Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PersonInformation;)Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PersonInformation$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 167
    invoke-virtual {p0}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PersonInformation;->toBuilder()Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PersonInformation$Builder;

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
    .line 376
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->writeReplace()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .registers 6
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 331
    invoke-virtual {p0}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PersonInformation;->getSerializedSize()I

    .line 332
    iget v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PersonInformation;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_13

    .line 333
    invoke-direct {p0}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PersonInformation;->getUserIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 335
    :cond_13
    iget v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PersonInformation;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_20

    .line 336
    invoke-direct {p0}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PersonInformation;->getDisplayNameBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 338
    :cond_20
    iget v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PersonInformation;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-ne v0, v3, :cond_2e

    .line 339
    const/4 v0, 0x3

    invoke-direct {p0}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PersonInformation;->getProfileUrlBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 341
    :cond_2e
    iget v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PersonInformation;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_3d

    .line 342
    invoke-direct {p0}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PersonInformation;->getProfilePhotoUrlBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v3, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 344
    :cond_3d
    return-void
.end method
