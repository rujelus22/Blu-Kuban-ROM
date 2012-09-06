.class public final Lcom/google/goggles/BookmarkProtos$Bookmark$Operation;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "BookmarkProtos.java"

# interfaces
.implements Lcom/google/goggles/BookmarkProtos$Bookmark$OperationOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/goggles/BookmarkProtos$Bookmark;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Operation"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/goggles/BookmarkProtos$Bookmark$Operation$Builder;
    }
.end annotation


# static fields
.field public static final ACTION_NAME_FIELD_NUMBER:I = 0x1

.field public static final ACTIVITY_CLASS_FIELD_NUMBER:I = 0x3

.field public static final ACTIVITY_PACKAGE_FIELD_NUMBER:I = 0x2

.field private static final defaultInstance:Lcom/google/goggles/BookmarkProtos$Bookmark$Operation;

.field private static final serialVersionUID:J


# instance fields
.field private actionName_:Ljava/lang/Object;

.field private activityClass_:Ljava/lang/Object;

.field private activityPackage_:Ljava/lang/Object;

.field private bitField0_:I

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 562
    new-instance v0, Lcom/google/goggles/BookmarkProtos$Bookmark$Operation;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/goggles/BookmarkProtos$Bookmark$Operation;-><init>(Z)V

    sput-object v0, Lcom/google/goggles/BookmarkProtos$Bookmark$Operation;->defaultInstance:Lcom/google/goggles/BookmarkProtos$Bookmark$Operation;

    .line 563
    sget-object v0, Lcom/google/goggles/BookmarkProtos$Bookmark$Operation;->defaultInstance:Lcom/google/goggles/BookmarkProtos$Bookmark$Operation;

    invoke-direct {v0}, Lcom/google/goggles/BookmarkProtos$Bookmark$Operation;->initFields()V

    .line 564
    return-void
.end method

.method private constructor <init>(Lcom/google/goggles/BookmarkProtos$Bookmark$Operation$Builder;)V
    .registers 3
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 81
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 196
    iput-byte v0, p0, Lcom/google/goggles/BookmarkProtos$Bookmark$Operation;->memoizedIsInitialized:B

    .line 219
    iput v0, p0, Lcom/google/goggles/BookmarkProtos$Bookmark$Operation;->memoizedSerializedSize:I

    .line 82
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/goggles/BookmarkProtos$Bookmark$Operation$Builder;Lcom/google/goggles/BookmarkProtos$1;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 76
    invoke-direct {p0, p1}, Lcom/google/goggles/BookmarkProtos$Bookmark$Operation;-><init>(Lcom/google/goggles/BookmarkProtos$Bookmark$Operation$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 83
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 196
    iput-byte v0, p0, Lcom/google/goggles/BookmarkProtos$Bookmark$Operation;->memoizedIsInitialized:B

    .line 219
    iput v0, p0, Lcom/google/goggles/BookmarkProtos$Bookmark$Operation;->memoizedSerializedSize:I

    .line 83
    return-void
.end method

.method static synthetic access$302(Lcom/google/goggles/BookmarkProtos$Bookmark$Operation;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 76
    iput-object p1, p0, Lcom/google/goggles/BookmarkProtos$Bookmark$Operation;->actionName_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$402(Lcom/google/goggles/BookmarkProtos$Bookmark$Operation;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 76
    iput-object p1, p0, Lcom/google/goggles/BookmarkProtos$Bookmark$Operation;->activityPackage_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$502(Lcom/google/goggles/BookmarkProtos$Bookmark$Operation;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 76
    iput-object p1, p0, Lcom/google/goggles/BookmarkProtos$Bookmark$Operation;->activityClass_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$602(Lcom/google/goggles/BookmarkProtos$Bookmark$Operation;I)I
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 76
    iput p1, p0, Lcom/google/goggles/BookmarkProtos$Bookmark$Operation;->bitField0_:I

    return p1
.end method

.method private getActionNameBytes()Lcom/google/protobuf/ByteString;
    .registers 3

    .prologue
    .line 116
    iget-object v0, p0, Lcom/google/goggles/BookmarkProtos$Bookmark$Operation;->actionName_:Ljava/lang/Object;

    .line 117
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_f

    .line 118
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 120
    iput-object v0, p0, Lcom/google/goggles/BookmarkProtos$Bookmark$Operation;->actionName_:Ljava/lang/Object;

    .line 123
    :goto_e
    return-object v0

    :cond_f
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_e
.end method

.method private getActivityClassBytes()Lcom/google/protobuf/ByteString;
    .registers 3

    .prologue
    .line 180
    iget-object v0, p0, Lcom/google/goggles/BookmarkProtos$Bookmark$Operation;->activityClass_:Ljava/lang/Object;

    .line 181
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_f

    .line 182
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 184
    iput-object v0, p0, Lcom/google/goggles/BookmarkProtos$Bookmark$Operation;->activityClass_:Ljava/lang/Object;

    .line 187
    :goto_e
    return-object v0

    :cond_f
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_e
.end method

.method private getActivityPackageBytes()Lcom/google/protobuf/ByteString;
    .registers 3

    .prologue
    .line 148
    iget-object v0, p0, Lcom/google/goggles/BookmarkProtos$Bookmark$Operation;->activityPackage_:Ljava/lang/Object;

    .line 149
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_f

    .line 150
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 152
    iput-object v0, p0, Lcom/google/goggles/BookmarkProtos$Bookmark$Operation;->activityPackage_:Ljava/lang/Object;

    .line 155
    :goto_e
    return-object v0

    :cond_f
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_e
.end method

.method public static getDefaultInstance()Lcom/google/goggles/BookmarkProtos$Bookmark$Operation;
    .registers 1

    .prologue
    .line 87
    sget-object v0, Lcom/google/goggles/BookmarkProtos$Bookmark$Operation;->defaultInstance:Lcom/google/goggles/BookmarkProtos$Bookmark$Operation;

    return-object v0
.end method

.method private initFields()V
    .registers 2

    .prologue
    .line 192
    const-string v0, ""

    iput-object v0, p0, Lcom/google/goggles/BookmarkProtos$Bookmark$Operation;->actionName_:Ljava/lang/Object;

    .line 193
    const-string v0, ""

    iput-object v0, p0, Lcom/google/goggles/BookmarkProtos$Bookmark$Operation;->activityPackage_:Ljava/lang/Object;

    .line 194
    const-string v0, ""

    iput-object v0, p0, Lcom/google/goggles/BookmarkProtos$Bookmark$Operation;->activityClass_:Ljava/lang/Object;

    .line 195
    return-void
.end method

.method public static newBuilder()Lcom/google/goggles/BookmarkProtos$Bookmark$Operation$Builder;
    .registers 1

    .prologue
    .line 315
    #calls: Lcom/google/goggles/BookmarkProtos$Bookmark$Operation$Builder;->create()Lcom/google/goggles/BookmarkProtos$Bookmark$Operation$Builder;
    invoke-static {}, Lcom/google/goggles/BookmarkProtos$Bookmark$Operation$Builder;->access$100()Lcom/google/goggles/BookmarkProtos$Bookmark$Operation$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/goggles/BookmarkProtos$Bookmark$Operation;)Lcom/google/goggles/BookmarkProtos$Bookmark$Operation$Builder;
    .registers 2
    .parameter

    .prologue
    .line 318
    invoke-static {}, Lcom/google/goggles/BookmarkProtos$Bookmark$Operation;->newBuilder()Lcom/google/goggles/BookmarkProtos$Bookmark$Operation$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/goggles/BookmarkProtos$Bookmark$Operation$Builder;->mergeFrom(Lcom/google/goggles/BookmarkProtos$Bookmark$Operation;)Lcom/google/goggles/BookmarkProtos$Bookmark$Operation$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/goggles/BookmarkProtos$Bookmark$Operation;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 284
    invoke-static {}, Lcom/google/goggles/BookmarkProtos$Bookmark$Operation;->newBuilder()Lcom/google/goggles/BookmarkProtos$Bookmark$Operation$Builder;

    move-result-object v0

    .line 285
    invoke-virtual {v0, p0}, Lcom/google/goggles/BookmarkProtos$Bookmark$Operation$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 286
    #calls: Lcom/google/goggles/BookmarkProtos$Bookmark$Operation$Builder;->buildParsed()Lcom/google/goggles/BookmarkProtos$Bookmark$Operation;
    invoke-static {v0}, Lcom/google/goggles/BookmarkProtos$Bookmark$Operation$Builder;->access$000(Lcom/google/goggles/BookmarkProtos$Bookmark$Operation$Builder;)Lcom/google/goggles/BookmarkProtos$Bookmark$Operation;

    move-result-object v0

    .line 288
    :goto_e
    return-object v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/BookmarkProtos$Bookmark$Operation;
    .registers 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 295
    invoke-static {}, Lcom/google/goggles/BookmarkProtos$Bookmark$Operation;->newBuilder()Lcom/google/goggles/BookmarkProtos$Bookmark$Operation$Builder;

    move-result-object v0

    .line 296
    invoke-virtual {v0, p0, p1}, Lcom/google/goggles/BookmarkProtos$Bookmark$Operation$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 297
    #calls: Lcom/google/goggles/BookmarkProtos$Bookmark$Operation$Builder;->buildParsed()Lcom/google/goggles/BookmarkProtos$Bookmark$Operation;
    invoke-static {v0}, Lcom/google/goggles/BookmarkProtos$Bookmark$Operation$Builder;->access$000(Lcom/google/goggles/BookmarkProtos$Bookmark$Operation$Builder;)Lcom/google/goggles/BookmarkProtos$Bookmark$Operation;

    move-result-object v0

    .line 299
    :goto_e
    return-object v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/goggles/BookmarkProtos$Bookmark$Operation;
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 251
    invoke-static {}, Lcom/google/goggles/BookmarkProtos$Bookmark$Operation;->newBuilder()Lcom/google/goggles/BookmarkProtos$Bookmark$Operation$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/goggles/BookmarkProtos$Bookmark$Operation$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/BookmarkProtos$Bookmark$Operation$Builder;

    #calls: Lcom/google/goggles/BookmarkProtos$Bookmark$Operation$Builder;->buildParsed()Lcom/google/goggles/BookmarkProtos$Bookmark$Operation;
    invoke-static {v0}, Lcom/google/goggles/BookmarkProtos$Bookmark$Operation$Builder;->access$000(Lcom/google/goggles/BookmarkProtos$Bookmark$Operation$Builder;)Lcom/google/goggles/BookmarkProtos$Bookmark$Operation;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/BookmarkProtos$Bookmark$Operation;
    .registers 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 257
    invoke-static {}, Lcom/google/goggles/BookmarkProtos$Bookmark$Operation;->newBuilder()Lcom/google/goggles/BookmarkProtos$Bookmark$Operation$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/goggles/BookmarkProtos$Bookmark$Operation$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/BookmarkProtos$Bookmark$Operation$Builder;

    #calls: Lcom/google/goggles/BookmarkProtos$Bookmark$Operation$Builder;->buildParsed()Lcom/google/goggles/BookmarkProtos$Bookmark$Operation;
    invoke-static {v0}, Lcom/google/goggles/BookmarkProtos$Bookmark$Operation$Builder;->access$000(Lcom/google/goggles/BookmarkProtos$Bookmark$Operation$Builder;)Lcom/google/goggles/BookmarkProtos$Bookmark$Operation;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/goggles/BookmarkProtos$Bookmark$Operation;
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 305
    invoke-static {}, Lcom/google/goggles/BookmarkProtos$Bookmark$Operation;->newBuilder()Lcom/google/goggles/BookmarkProtos$Bookmark$Operation$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/goggles/BookmarkProtos$Bookmark$Operation$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/BookmarkProtos$Bookmark$Operation$Builder;

    #calls: Lcom/google/goggles/BookmarkProtos$Bookmark$Operation$Builder;->buildParsed()Lcom/google/goggles/BookmarkProtos$Bookmark$Operation;
    invoke-static {v0}, Lcom/google/goggles/BookmarkProtos$Bookmark$Operation$Builder;->access$000(Lcom/google/goggles/BookmarkProtos$Bookmark$Operation$Builder;)Lcom/google/goggles/BookmarkProtos$Bookmark$Operation;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/BookmarkProtos$Bookmark$Operation;
    .registers 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 311
    invoke-static {}, Lcom/google/goggles/BookmarkProtos$Bookmark$Operation;->newBuilder()Lcom/google/goggles/BookmarkProtos$Bookmark$Operation$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/goggles/BookmarkProtos$Bookmark$Operation$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/BookmarkProtos$Bookmark$Operation$Builder;

    move-result-object v0

    #calls: Lcom/google/goggles/BookmarkProtos$Bookmark$Operation$Builder;->buildParsed()Lcom/google/goggles/BookmarkProtos$Bookmark$Operation;
    invoke-static {v0}, Lcom/google/goggles/BookmarkProtos$Bookmark$Operation$Builder;->access$000(Lcom/google/goggles/BookmarkProtos$Bookmark$Operation$Builder;)Lcom/google/goggles/BookmarkProtos$Bookmark$Operation;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/goggles/BookmarkProtos$Bookmark$Operation;
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 273
    invoke-static {}, Lcom/google/goggles/BookmarkProtos$Bookmark$Operation;->newBuilder()Lcom/google/goggles/BookmarkProtos$Bookmark$Operation$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/goggles/BookmarkProtos$Bookmark$Operation$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/BookmarkProtos$Bookmark$Operation$Builder;

    #calls: Lcom/google/goggles/BookmarkProtos$Bookmark$Operation$Builder;->buildParsed()Lcom/google/goggles/BookmarkProtos$Bookmark$Operation;
    invoke-static {v0}, Lcom/google/goggles/BookmarkProtos$Bookmark$Operation$Builder;->access$000(Lcom/google/goggles/BookmarkProtos$Bookmark$Operation$Builder;)Lcom/google/goggles/BookmarkProtos$Bookmark$Operation;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/BookmarkProtos$Bookmark$Operation;
    .registers 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 279
    invoke-static {}, Lcom/google/goggles/BookmarkProtos$Bookmark$Operation;->newBuilder()Lcom/google/goggles/BookmarkProtos$Bookmark$Operation$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/goggles/BookmarkProtos$Bookmark$Operation$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/BookmarkProtos$Bookmark$Operation$Builder;

    #calls: Lcom/google/goggles/BookmarkProtos$Bookmark$Operation$Builder;->buildParsed()Lcom/google/goggles/BookmarkProtos$Bookmark$Operation;
    invoke-static {v0}, Lcom/google/goggles/BookmarkProtos$Bookmark$Operation$Builder;->access$000(Lcom/google/goggles/BookmarkProtos$Bookmark$Operation$Builder;)Lcom/google/goggles/BookmarkProtos$Bookmark$Operation;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/goggles/BookmarkProtos$Bookmark$Operation;
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 262
    invoke-static {}, Lcom/google/goggles/BookmarkProtos$Bookmark$Operation;->newBuilder()Lcom/google/goggles/BookmarkProtos$Bookmark$Operation$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/goggles/BookmarkProtos$Bookmark$Operation$Builder;->mergeFrom([B)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/BookmarkProtos$Bookmark$Operation$Builder;

    #calls: Lcom/google/goggles/BookmarkProtos$Bookmark$Operation$Builder;->buildParsed()Lcom/google/goggles/BookmarkProtos$Bookmark$Operation;
    invoke-static {v0}, Lcom/google/goggles/BookmarkProtos$Bookmark$Operation$Builder;->access$000(Lcom/google/goggles/BookmarkProtos$Bookmark$Operation$Builder;)Lcom/google/goggles/BookmarkProtos$Bookmark$Operation;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/BookmarkProtos$Bookmark$Operation;
    .registers 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 268
    invoke-static {}, Lcom/google/goggles/BookmarkProtos$Bookmark$Operation;->newBuilder()Lcom/google/goggles/BookmarkProtos$Bookmark$Operation$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/goggles/BookmarkProtos$Bookmark$Operation$Builder;->mergeFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/BookmarkProtos$Bookmark$Operation$Builder;

    #calls: Lcom/google/goggles/BookmarkProtos$Bookmark$Operation$Builder;->buildParsed()Lcom/google/goggles/BookmarkProtos$Bookmark$Operation;
    invoke-static {v0}, Lcom/google/goggles/BookmarkProtos$Bookmark$Operation$Builder;->access$000(Lcom/google/goggles/BookmarkProtos$Bookmark$Operation$Builder;)Lcom/google/goggles/BookmarkProtos$Bookmark$Operation;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getActionName()Ljava/lang/String;
    .registers 3

    .prologue
    .line 102
    iget-object v0, p0, Lcom/google/goggles/BookmarkProtos$Bookmark$Operation;->actionName_:Ljava/lang/Object;

    .line 103
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_9

    .line 104
    check-cast v0, Ljava/lang/String;

    .line 112
    :goto_8
    return-object v0

    .line 106
    :cond_9
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 108
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 109
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 110
    iput-object v1, p0, Lcom/google/goggles/BookmarkProtos$Bookmark$Operation;->actionName_:Ljava/lang/Object;

    :cond_17
    move-object v0, v1

    .line 112
    goto :goto_8
.end method

.method public getActivityClass()Ljava/lang/String;
    .registers 3

    .prologue
    .line 166
    iget-object v0, p0, Lcom/google/goggles/BookmarkProtos$Bookmark$Operation;->activityClass_:Ljava/lang/Object;

    .line 167
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_9

    .line 168
    check-cast v0, Ljava/lang/String;

    .line 176
    :goto_8
    return-object v0

    .line 170
    :cond_9
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 172
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 173
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 174
    iput-object v1, p0, Lcom/google/goggles/BookmarkProtos$Bookmark$Operation;->activityClass_:Ljava/lang/Object;

    :cond_17
    move-object v0, v1

    .line 176
    goto :goto_8
.end method

.method public getActivityPackage()Ljava/lang/String;
    .registers 3

    .prologue
    .line 134
    iget-object v0, p0, Lcom/google/goggles/BookmarkProtos$Bookmark$Operation;->activityPackage_:Ljava/lang/Object;

    .line 135
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_9

    .line 136
    check-cast v0, Ljava/lang/String;

    .line 144
    :goto_8
    return-object v0

    .line 138
    :cond_9
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 140
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 141
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 142
    iput-object v1, p0, Lcom/google/goggles/BookmarkProtos$Bookmark$Operation;->activityPackage_:Ljava/lang/Object;

    :cond_17
    move-object v0, v1

    .line 144
    goto :goto_8
.end method

.method public getDefaultInstanceForType()Lcom/google/goggles/BookmarkProtos$Bookmark$Operation;
    .registers 2

    .prologue
    .line 91
    sget-object v0, Lcom/google/goggles/BookmarkProtos$Bookmark$Operation;->defaultInstance:Lcom/google/goggles/BookmarkProtos$Bookmark$Operation;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 76
    invoke-virtual {p0}, Lcom/google/goggles/BookmarkProtos$Bookmark$Operation;->getDefaultInstanceForType()Lcom/google/goggles/BookmarkProtos$Bookmark$Operation;

    move-result-object v0

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 5

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 221
    iget v0, p0, Lcom/google/goggles/BookmarkProtos$Bookmark$Operation;->memoizedSerializedSize:I

    .line 222
    const/4 v1, -0x1

    if-eq v0, v1, :cond_8

    .line 238
    :goto_7
    return v0

    .line 224
    :cond_8
    const/4 v0, 0x0

    .line 225
    iget v1, p0, Lcom/google/goggles/BookmarkProtos$Bookmark$Operation;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v2, :cond_18

    .line 226
    invoke-direct {p0}, Lcom/google/goggles/BookmarkProtos$Bookmark$Operation;->getActionNameBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v1

    add-int/2addr v0, v1

    .line 229
    :cond_18
    iget v1, p0, Lcom/google/goggles/BookmarkProtos$Bookmark$Operation;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-ne v1, v3, :cond_27

    .line 230
    invoke-direct {p0}, Lcom/google/goggles/BookmarkProtos$Bookmark$Operation;->getActivityPackageBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v1

    add-int/2addr v0, v1

    .line 233
    :cond_27
    iget v1, p0, Lcom/google/goggles/BookmarkProtos$Bookmark$Operation;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    const/4 v2, 0x4

    if-ne v1, v2, :cond_38

    .line 234
    const/4 v1, 0x3

    invoke-direct {p0}, Lcom/google/goggles/BookmarkProtos$Bookmark$Operation;->getActivityClassBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v1

    add-int/2addr v0, v1

    .line 237
    :cond_38
    iput v0, p0, Lcom/google/goggles/BookmarkProtos$Bookmark$Operation;->memoizedSerializedSize:I

    goto :goto_7
.end method

.method public hasActionName()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 99
    iget v1, p0, Lcom/google/goggles/BookmarkProtos$Bookmark$Operation;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public hasActivityClass()Z
    .registers 3

    .prologue
    .line 163
    iget v0, p0, Lcom/google/goggles/BookmarkProtos$Bookmark$Operation;->bitField0_:I

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

.method public hasActivityPackage()Z
    .registers 3

    .prologue
    .line 131
    iget v0, p0, Lcom/google/goggles/BookmarkProtos$Bookmark$Operation;->bitField0_:I

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
    const/4 v0, 0x1

    .line 198
    iget-byte v1, p0, Lcom/google/goggles/BookmarkProtos$Bookmark$Operation;->memoizedIsInitialized:B

    .line 199
    const/4 v2, -0x1

    if-eq v1, v2, :cond_b

    if-ne v1, v0, :cond_9

    .line 202
    :goto_8
    return v0

    .line 199
    :cond_9
    const/4 v0, 0x0

    goto :goto_8

    .line 201
    :cond_b
    iput-byte v0, p0, Lcom/google/goggles/BookmarkProtos$Bookmark$Operation;->memoizedIsInitialized:B

    goto :goto_8
.end method

.method public newBuilderForType()Lcom/google/goggles/BookmarkProtos$Bookmark$Operation$Builder;
    .registers 2

    .prologue
    .line 316
    invoke-static {}, Lcom/google/goggles/BookmarkProtos$Bookmark$Operation;->newBuilder()Lcom/google/goggles/BookmarkProtos$Bookmark$Operation$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 76
    invoke-virtual {p0}, Lcom/google/goggles/BookmarkProtos$Bookmark$Operation;->newBuilderForType()Lcom/google/goggles/BookmarkProtos$Bookmark$Operation$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/goggles/BookmarkProtos$Bookmark$Operation$Builder;
    .registers 2

    .prologue
    .line 320
    invoke-static {p0}, Lcom/google/goggles/BookmarkProtos$Bookmark$Operation;->newBuilder(Lcom/google/goggles/BookmarkProtos$Bookmark$Operation;)Lcom/google/goggles/BookmarkProtos$Bookmark$Operation$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 76
    invoke-virtual {p0}, Lcom/google/goggles/BookmarkProtos$Bookmark$Operation;->toBuilder()Lcom/google/goggles/BookmarkProtos$Bookmark$Operation$Builder;

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
    .line 245
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->writeReplace()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .registers 5
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 207
    invoke-virtual {p0}, Lcom/google/goggles/BookmarkProtos$Bookmark$Operation;->getSerializedSize()I

    .line 208
    iget v0, p0, Lcom/google/goggles/BookmarkProtos$Bookmark$Operation;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_12

    .line 209
    invoke-direct {p0}, Lcom/google/goggles/BookmarkProtos$Bookmark$Operation;->getActionNameBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 211
    :cond_12
    iget v0, p0, Lcom/google/goggles/BookmarkProtos$Bookmark$Operation;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_1f

    .line 212
    invoke-direct {p0}, Lcom/google/goggles/BookmarkProtos$Bookmark$Operation;->getActivityPackageBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 214
    :cond_1f
    iget v0, p0, Lcom/google/goggles/BookmarkProtos$Bookmark$Operation;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2e

    .line 215
    const/4 v0, 0x3

    invoke-direct {p0}, Lcom/google/goggles/BookmarkProtos$Bookmark$Operation;->getActivityClassBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 217
    :cond_2e
    return-void
.end method
