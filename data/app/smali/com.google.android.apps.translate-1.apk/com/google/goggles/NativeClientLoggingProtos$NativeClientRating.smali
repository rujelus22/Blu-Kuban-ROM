.class public final Lcom/google/goggles/NativeClientLoggingProtos$NativeClientRating;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "NativeClientLoggingProtos.java"

# interfaces
.implements Lcom/google/goggles/NativeClientLoggingProtos$NativeClientRatingOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/goggles/NativeClientLoggingProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "NativeClientRating"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/goggles/NativeClientLoggingProtos$NativeClientRating$Builder;
    }
.end annotation


# static fields
.field public static final FIVE_STAR_RATING_FIELD_NUMBER:I = 0x1

.field private static final defaultInstance:Lcom/google/goggles/NativeClientLoggingProtos$NativeClientRating;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private fiveStarRating_:I

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 1341
    new-instance v0, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientRating;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientRating;-><init>(Z)V

    sput-object v0, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientRating;->defaultInstance:Lcom/google/goggles/NativeClientLoggingProtos$NativeClientRating;

    .line 1342
    sget-object v0, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientRating;->defaultInstance:Lcom/google/goggles/NativeClientLoggingProtos$NativeClientRating;

    invoke-direct {v0}, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientRating;->initFields()V

    .line 1343
    return-void
.end method

.method private constructor <init>(Lcom/google/goggles/NativeClientLoggingProtos$NativeClientRating$Builder;)V
    .registers 3
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 1077
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 1104
    iput-byte v0, p0, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientRating;->memoizedIsInitialized:B

    .line 1121
    iput v0, p0, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientRating;->memoizedSerializedSize:I

    .line 1078
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/goggles/NativeClientLoggingProtos$NativeClientRating$Builder;Lcom/google/goggles/NativeClientLoggingProtos$1;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 1072
    invoke-direct {p0, p1}, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientRating;-><init>(Lcom/google/goggles/NativeClientLoggingProtos$NativeClientRating$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 1079
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 1104
    iput-byte v0, p0, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientRating;->memoizedIsInitialized:B

    .line 1121
    iput v0, p0, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientRating;->memoizedSerializedSize:I

    .line 1079
    return-void
.end method

.method static synthetic access$1402(Lcom/google/goggles/NativeClientLoggingProtos$NativeClientRating;I)I
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 1072
    iput p1, p0, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientRating;->fiveStarRating_:I

    return p1
.end method

.method static synthetic access$1502(Lcom/google/goggles/NativeClientLoggingProtos$NativeClientRating;I)I
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 1072
    iput p1, p0, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientRating;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/goggles/NativeClientLoggingProtos$NativeClientRating;
    .registers 1

    .prologue
    .line 1083
    sget-object v0, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientRating;->defaultInstance:Lcom/google/goggles/NativeClientLoggingProtos$NativeClientRating;

    return-object v0
.end method

.method private initFields()V
    .registers 2

    .prologue
    .line 1102
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientRating;->fiveStarRating_:I

    .line 1103
    return-void
.end method

.method public static newBuilder()Lcom/google/goggles/NativeClientLoggingProtos$NativeClientRating$Builder;
    .registers 1

    .prologue
    .line 1209
    #calls: Lcom/google/goggles/NativeClientLoggingProtos$NativeClientRating$Builder;->create()Lcom/google/goggles/NativeClientLoggingProtos$NativeClientRating$Builder;
    invoke-static {}, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientRating$Builder;->access$1200()Lcom/google/goggles/NativeClientLoggingProtos$NativeClientRating$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/goggles/NativeClientLoggingProtos$NativeClientRating;)Lcom/google/goggles/NativeClientLoggingProtos$NativeClientRating$Builder;
    .registers 2
    .parameter

    .prologue
    .line 1212
    invoke-static {}, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientRating;->newBuilder()Lcom/google/goggles/NativeClientLoggingProtos$NativeClientRating$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientRating$Builder;->mergeFrom(Lcom/google/goggles/NativeClientLoggingProtos$NativeClientRating;)Lcom/google/goggles/NativeClientLoggingProtos$NativeClientRating$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/goggles/NativeClientLoggingProtos$NativeClientRating;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1178
    invoke-static {}, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientRating;->newBuilder()Lcom/google/goggles/NativeClientLoggingProtos$NativeClientRating$Builder;

    move-result-object v0

    .line 1179
    invoke-virtual {v0, p0}, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientRating$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 1180
    #calls: Lcom/google/goggles/NativeClientLoggingProtos$NativeClientRating$Builder;->buildParsed()Lcom/google/goggles/NativeClientLoggingProtos$NativeClientRating;
    invoke-static {v0}, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientRating$Builder;->access$1100(Lcom/google/goggles/NativeClientLoggingProtos$NativeClientRating$Builder;)Lcom/google/goggles/NativeClientLoggingProtos$NativeClientRating;

    move-result-object v0

    .line 1182
    :goto_e
    return-object v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/NativeClientLoggingProtos$NativeClientRating;
    .registers 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1189
    invoke-static {}, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientRating;->newBuilder()Lcom/google/goggles/NativeClientLoggingProtos$NativeClientRating$Builder;

    move-result-object v0

    .line 1190
    invoke-virtual {v0, p0, p1}, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientRating$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 1191
    #calls: Lcom/google/goggles/NativeClientLoggingProtos$NativeClientRating$Builder;->buildParsed()Lcom/google/goggles/NativeClientLoggingProtos$NativeClientRating;
    invoke-static {v0}, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientRating$Builder;->access$1100(Lcom/google/goggles/NativeClientLoggingProtos$NativeClientRating$Builder;)Lcom/google/goggles/NativeClientLoggingProtos$NativeClientRating;

    move-result-object v0

    .line 1193
    :goto_e
    return-object v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/goggles/NativeClientLoggingProtos$NativeClientRating;
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1145
    invoke-static {}, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientRating;->newBuilder()Lcom/google/goggles/NativeClientLoggingProtos$NativeClientRating$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientRating$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientRating$Builder;

    #calls: Lcom/google/goggles/NativeClientLoggingProtos$NativeClientRating$Builder;->buildParsed()Lcom/google/goggles/NativeClientLoggingProtos$NativeClientRating;
    invoke-static {v0}, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientRating$Builder;->access$1100(Lcom/google/goggles/NativeClientLoggingProtos$NativeClientRating$Builder;)Lcom/google/goggles/NativeClientLoggingProtos$NativeClientRating;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/NativeClientLoggingProtos$NativeClientRating;
    .registers 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1151
    invoke-static {}, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientRating;->newBuilder()Lcom/google/goggles/NativeClientLoggingProtos$NativeClientRating$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientRating$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientRating$Builder;

    #calls: Lcom/google/goggles/NativeClientLoggingProtos$NativeClientRating$Builder;->buildParsed()Lcom/google/goggles/NativeClientLoggingProtos$NativeClientRating;
    invoke-static {v0}, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientRating$Builder;->access$1100(Lcom/google/goggles/NativeClientLoggingProtos$NativeClientRating$Builder;)Lcom/google/goggles/NativeClientLoggingProtos$NativeClientRating;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/goggles/NativeClientLoggingProtos$NativeClientRating;
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1199
    invoke-static {}, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientRating;->newBuilder()Lcom/google/goggles/NativeClientLoggingProtos$NativeClientRating$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientRating$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientRating$Builder;

    #calls: Lcom/google/goggles/NativeClientLoggingProtos$NativeClientRating$Builder;->buildParsed()Lcom/google/goggles/NativeClientLoggingProtos$NativeClientRating;
    invoke-static {v0}, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientRating$Builder;->access$1100(Lcom/google/goggles/NativeClientLoggingProtos$NativeClientRating$Builder;)Lcom/google/goggles/NativeClientLoggingProtos$NativeClientRating;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/NativeClientLoggingProtos$NativeClientRating;
    .registers 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1205
    invoke-static {}, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientRating;->newBuilder()Lcom/google/goggles/NativeClientLoggingProtos$NativeClientRating$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientRating$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/NativeClientLoggingProtos$NativeClientRating$Builder;

    move-result-object v0

    #calls: Lcom/google/goggles/NativeClientLoggingProtos$NativeClientRating$Builder;->buildParsed()Lcom/google/goggles/NativeClientLoggingProtos$NativeClientRating;
    invoke-static {v0}, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientRating$Builder;->access$1100(Lcom/google/goggles/NativeClientLoggingProtos$NativeClientRating$Builder;)Lcom/google/goggles/NativeClientLoggingProtos$NativeClientRating;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/goggles/NativeClientLoggingProtos$NativeClientRating;
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1167
    invoke-static {}, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientRating;->newBuilder()Lcom/google/goggles/NativeClientLoggingProtos$NativeClientRating$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientRating$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientRating$Builder;

    #calls: Lcom/google/goggles/NativeClientLoggingProtos$NativeClientRating$Builder;->buildParsed()Lcom/google/goggles/NativeClientLoggingProtos$NativeClientRating;
    invoke-static {v0}, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientRating$Builder;->access$1100(Lcom/google/goggles/NativeClientLoggingProtos$NativeClientRating$Builder;)Lcom/google/goggles/NativeClientLoggingProtos$NativeClientRating;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/NativeClientLoggingProtos$NativeClientRating;
    .registers 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1173
    invoke-static {}, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientRating;->newBuilder()Lcom/google/goggles/NativeClientLoggingProtos$NativeClientRating$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientRating$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientRating$Builder;

    #calls: Lcom/google/goggles/NativeClientLoggingProtos$NativeClientRating$Builder;->buildParsed()Lcom/google/goggles/NativeClientLoggingProtos$NativeClientRating;
    invoke-static {v0}, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientRating$Builder;->access$1100(Lcom/google/goggles/NativeClientLoggingProtos$NativeClientRating$Builder;)Lcom/google/goggles/NativeClientLoggingProtos$NativeClientRating;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/goggles/NativeClientLoggingProtos$NativeClientRating;
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1156
    invoke-static {}, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientRating;->newBuilder()Lcom/google/goggles/NativeClientLoggingProtos$NativeClientRating$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientRating$Builder;->mergeFrom([B)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientRating$Builder;

    #calls: Lcom/google/goggles/NativeClientLoggingProtos$NativeClientRating$Builder;->buildParsed()Lcom/google/goggles/NativeClientLoggingProtos$NativeClientRating;
    invoke-static {v0}, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientRating$Builder;->access$1100(Lcom/google/goggles/NativeClientLoggingProtos$NativeClientRating$Builder;)Lcom/google/goggles/NativeClientLoggingProtos$NativeClientRating;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/NativeClientLoggingProtos$NativeClientRating;
    .registers 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1162
    invoke-static {}, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientRating;->newBuilder()Lcom/google/goggles/NativeClientLoggingProtos$NativeClientRating$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientRating$Builder;->mergeFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientRating$Builder;

    #calls: Lcom/google/goggles/NativeClientLoggingProtos$NativeClientRating$Builder;->buildParsed()Lcom/google/goggles/NativeClientLoggingProtos$NativeClientRating;
    invoke-static {v0}, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientRating$Builder;->access$1100(Lcom/google/goggles/NativeClientLoggingProtos$NativeClientRating$Builder;)Lcom/google/goggles/NativeClientLoggingProtos$NativeClientRating;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getDefaultInstanceForType()Lcom/google/goggles/NativeClientLoggingProtos$NativeClientRating;
    .registers 2

    .prologue
    .line 1087
    sget-object v0, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientRating;->defaultInstance:Lcom/google/goggles/NativeClientLoggingProtos$NativeClientRating;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 1072
    invoke-virtual {p0}, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientRating;->getDefaultInstanceForType()Lcom/google/goggles/NativeClientLoggingProtos$NativeClientRating;

    move-result-object v0

    return-object v0
.end method

.method public getFiveStarRating()I
    .registers 2

    .prologue
    .line 1098
    iget v0, p0, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientRating;->fiveStarRating_:I

    return v0
.end method

.method public getSerializedSize()I
    .registers 4

    .prologue
    const/4 v2, 0x1

    .line 1123
    iget v0, p0, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientRating;->memoizedSerializedSize:I

    .line 1124
    const/4 v1, -0x1

    if-eq v0, v1, :cond_7

    .line 1132
    :goto_6
    return v0

    .line 1126
    :cond_7
    const/4 v0, 0x0

    .line 1127
    iget v1, p0, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientRating;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v2, :cond_15

    .line 1128
    iget v1, p0, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientRating;->fiveStarRating_:I

    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1131
    :cond_15
    iput v0, p0, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientRating;->memoizedSerializedSize:I

    goto :goto_6
.end method

.method public hasFiveStarRating()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 1095
    iget v1, p0, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientRating;->bitField0_:I

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

    .line 1106
    iget-byte v1, p0, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientRating;->memoizedIsInitialized:B

    .line 1107
    const/4 v2, -0x1

    if-eq v1, v2, :cond_b

    if-ne v1, v0, :cond_9

    .line 1110
    :goto_8
    return v0

    .line 1107
    :cond_9
    const/4 v0, 0x0

    goto :goto_8

    .line 1109
    :cond_b
    iput-byte v0, p0, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientRating;->memoizedIsInitialized:B

    goto :goto_8
.end method

.method public newBuilderForType()Lcom/google/goggles/NativeClientLoggingProtos$NativeClientRating$Builder;
    .registers 2

    .prologue
    .line 1210
    invoke-static {}, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientRating;->newBuilder()Lcom/google/goggles/NativeClientLoggingProtos$NativeClientRating$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 1072
    invoke-virtual {p0}, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientRating;->newBuilderForType()Lcom/google/goggles/NativeClientLoggingProtos$NativeClientRating$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/goggles/NativeClientLoggingProtos$NativeClientRating$Builder;
    .registers 2

    .prologue
    .line 1214
    invoke-static {p0}, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientRating;->newBuilder(Lcom/google/goggles/NativeClientLoggingProtos$NativeClientRating;)Lcom/google/goggles/NativeClientLoggingProtos$NativeClientRating$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 1072
    invoke-virtual {p0}, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientRating;->toBuilder()Lcom/google/goggles/NativeClientLoggingProtos$NativeClientRating$Builder;

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
    .line 1139
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->writeReplace()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .registers 4
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 1115
    invoke-virtual {p0}, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientRating;->getSerializedSize()I

    .line 1116
    iget v0, p0, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientRating;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_f

    .line 1117
    iget v0, p0, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientRating;->fiveStarRating_:I

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 1119
    :cond_f
    return-void
.end method
