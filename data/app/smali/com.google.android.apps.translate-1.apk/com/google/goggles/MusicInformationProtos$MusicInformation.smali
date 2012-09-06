.class public final Lcom/google/goggles/MusicInformationProtos$MusicInformation;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "MusicInformationProtos.java"

# interfaces
.implements Lcom/google/goggles/MusicInformationProtos$MusicInformationOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/goggles/MusicInformationProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MusicInformation"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/goggles/MusicInformationProtos$MusicInformation$Builder;
    }
.end annotation


# static fields
.field public static final ALBUM_FIELD_NUMBER:I = 0x3

.field public static final ARTIST_FIELD_NUMBER:I = 0x1

.field public static final ARTWORK_URL_FIELD_NUMBER:I = 0x4

.field public static final GOOGLE_MUSIC_ALBUM_ID_FIELD_NUMBER:I = 0x6

.field public static final GOOGLE_MUSIC_TRACK_ID_FIELD_NUMBER:I = 0x5

.field public static final RECORD_LABEL_FIELD_NUMBER:I = 0x7

.field public static final TRACK_FIELD_NUMBER:I = 0x2

.field private static final defaultInstance:Lcom/google/goggles/MusicInformationProtos$MusicInformation;

.field private static final serialVersionUID:J


# instance fields
.field private album_:Ljava/lang/Object;

.field private artist_:Ljava/lang/Object;

.field private artworkUrl_:Ljava/lang/Object;

.field private bitField0_:I

.field private googleMusicAlbumId_:Ljava/lang/Object;

.field private googleMusicTrackId_:Ljava/lang/Object;

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private recordLabel_:Ljava/lang/Object;

.field private track_:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 888
    new-instance v0, Lcom/google/goggles/MusicInformationProtos$MusicInformation;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/goggles/MusicInformationProtos$MusicInformation;-><init>(Z)V

    sput-object v0, Lcom/google/goggles/MusicInformationProtos$MusicInformation;->defaultInstance:Lcom/google/goggles/MusicInformationProtos$MusicInformation;

    .line 889
    sget-object v0, Lcom/google/goggles/MusicInformationProtos$MusicInformation;->defaultInstance:Lcom/google/goggles/MusicInformationProtos$MusicInformation;

    invoke-direct {v0}, Lcom/google/goggles/MusicInformationProtos$MusicInformation;->initFields()V

    .line 890
    return-void
.end method

.method private constructor <init>(Lcom/google/goggles/MusicInformationProtos$MusicInformation$Builder;)V
    .registers 3
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 47
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 294
    iput-byte v0, p0, Lcom/google/goggles/MusicInformationProtos$MusicInformation;->memoizedIsInitialized:B

    .line 329
    iput v0, p0, Lcom/google/goggles/MusicInformationProtos$MusicInformation;->memoizedSerializedSize:I

    .line 48
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/goggles/MusicInformationProtos$MusicInformation$Builder;Lcom/google/goggles/MusicInformationProtos$1;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcom/google/goggles/MusicInformationProtos$MusicInformation;-><init>(Lcom/google/goggles/MusicInformationProtos$MusicInformation$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 49
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 294
    iput-byte v0, p0, Lcom/google/goggles/MusicInformationProtos$MusicInformation;->memoizedIsInitialized:B

    .line 329
    iput v0, p0, Lcom/google/goggles/MusicInformationProtos$MusicInformation;->memoizedSerializedSize:I

    .line 49
    return-void
.end method

.method static synthetic access$1002(Lcom/google/goggles/MusicInformationProtos$MusicInformation;I)I
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 42
    iput p1, p0, Lcom/google/goggles/MusicInformationProtos$MusicInformation;->bitField0_:I

    return p1
.end method

.method static synthetic access$302(Lcom/google/goggles/MusicInformationProtos$MusicInformation;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 42
    iput-object p1, p0, Lcom/google/goggles/MusicInformationProtos$MusicInformation;->artist_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$402(Lcom/google/goggles/MusicInformationProtos$MusicInformation;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 42
    iput-object p1, p0, Lcom/google/goggles/MusicInformationProtos$MusicInformation;->track_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$502(Lcom/google/goggles/MusicInformationProtos$MusicInformation;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 42
    iput-object p1, p0, Lcom/google/goggles/MusicInformationProtos$MusicInformation;->album_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$602(Lcom/google/goggles/MusicInformationProtos$MusicInformation;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 42
    iput-object p1, p0, Lcom/google/goggles/MusicInformationProtos$MusicInformation;->artworkUrl_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$702(Lcom/google/goggles/MusicInformationProtos$MusicInformation;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 42
    iput-object p1, p0, Lcom/google/goggles/MusicInformationProtos$MusicInformation;->googleMusicTrackId_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$802(Lcom/google/goggles/MusicInformationProtos$MusicInformation;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 42
    iput-object p1, p0, Lcom/google/goggles/MusicInformationProtos$MusicInformation;->googleMusicAlbumId_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$902(Lcom/google/goggles/MusicInformationProtos$MusicInformation;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 42
    iput-object p1, p0, Lcom/google/goggles/MusicInformationProtos$MusicInformation;->recordLabel_:Ljava/lang/Object;

    return-object p1
.end method

.method private getAlbumBytes()Lcom/google/protobuf/ByteString;
    .registers 3

    .prologue
    .line 146
    iget-object v0, p0, Lcom/google/goggles/MusicInformationProtos$MusicInformation;->album_:Ljava/lang/Object;

    .line 147
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_f

    .line 148
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 150
    iput-object v0, p0, Lcom/google/goggles/MusicInformationProtos$MusicInformation;->album_:Ljava/lang/Object;

    .line 153
    :goto_e
    return-object v0

    :cond_f
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_e
.end method

.method private getArtistBytes()Lcom/google/protobuf/ByteString;
    .registers 3

    .prologue
    .line 82
    iget-object v0, p0, Lcom/google/goggles/MusicInformationProtos$MusicInformation;->artist_:Ljava/lang/Object;

    .line 83
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_f

    .line 84
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 86
    iput-object v0, p0, Lcom/google/goggles/MusicInformationProtos$MusicInformation;->artist_:Ljava/lang/Object;

    .line 89
    :goto_e
    return-object v0

    :cond_f
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_e
.end method

.method private getArtworkUrlBytes()Lcom/google/protobuf/ByteString;
    .registers 3

    .prologue
    .line 178
    iget-object v0, p0, Lcom/google/goggles/MusicInformationProtos$MusicInformation;->artworkUrl_:Ljava/lang/Object;

    .line 179
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_f

    .line 180
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 182
    iput-object v0, p0, Lcom/google/goggles/MusicInformationProtos$MusicInformation;->artworkUrl_:Ljava/lang/Object;

    .line 185
    :goto_e
    return-object v0

    :cond_f
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_e
.end method

.method public static getDefaultInstance()Lcom/google/goggles/MusicInformationProtos$MusicInformation;
    .registers 1

    .prologue
    .line 53
    sget-object v0, Lcom/google/goggles/MusicInformationProtos$MusicInformation;->defaultInstance:Lcom/google/goggles/MusicInformationProtos$MusicInformation;

    return-object v0
.end method

.method private getGoogleMusicAlbumIdBytes()Lcom/google/protobuf/ByteString;
    .registers 3

    .prologue
    .line 242
    iget-object v0, p0, Lcom/google/goggles/MusicInformationProtos$MusicInformation;->googleMusicAlbumId_:Ljava/lang/Object;

    .line 243
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_f

    .line 244
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 246
    iput-object v0, p0, Lcom/google/goggles/MusicInformationProtos$MusicInformation;->googleMusicAlbumId_:Ljava/lang/Object;

    .line 249
    :goto_e
    return-object v0

    :cond_f
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_e
.end method

.method private getGoogleMusicTrackIdBytes()Lcom/google/protobuf/ByteString;
    .registers 3

    .prologue
    .line 210
    iget-object v0, p0, Lcom/google/goggles/MusicInformationProtos$MusicInformation;->googleMusicTrackId_:Ljava/lang/Object;

    .line 211
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_f

    .line 212
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 214
    iput-object v0, p0, Lcom/google/goggles/MusicInformationProtos$MusicInformation;->googleMusicTrackId_:Ljava/lang/Object;

    .line 217
    :goto_e
    return-object v0

    :cond_f
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_e
.end method

.method private getRecordLabelBytes()Lcom/google/protobuf/ByteString;
    .registers 3

    .prologue
    .line 274
    iget-object v0, p0, Lcom/google/goggles/MusicInformationProtos$MusicInformation;->recordLabel_:Ljava/lang/Object;

    .line 275
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_f

    .line 276
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 278
    iput-object v0, p0, Lcom/google/goggles/MusicInformationProtos$MusicInformation;->recordLabel_:Ljava/lang/Object;

    .line 281
    :goto_e
    return-object v0

    :cond_f
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_e
.end method

.method private getTrackBytes()Lcom/google/protobuf/ByteString;
    .registers 3

    .prologue
    .line 114
    iget-object v0, p0, Lcom/google/goggles/MusicInformationProtos$MusicInformation;->track_:Ljava/lang/Object;

    .line 115
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_f

    .line 116
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 118
    iput-object v0, p0, Lcom/google/goggles/MusicInformationProtos$MusicInformation;->track_:Ljava/lang/Object;

    .line 121
    :goto_e
    return-object v0

    :cond_f
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_e
.end method

.method private initFields()V
    .registers 2

    .prologue
    .line 286
    const-string v0, ""

    iput-object v0, p0, Lcom/google/goggles/MusicInformationProtos$MusicInformation;->artist_:Ljava/lang/Object;

    .line 287
    const-string v0, ""

    iput-object v0, p0, Lcom/google/goggles/MusicInformationProtos$MusicInformation;->track_:Ljava/lang/Object;

    .line 288
    const-string v0, ""

    iput-object v0, p0, Lcom/google/goggles/MusicInformationProtos$MusicInformation;->album_:Ljava/lang/Object;

    .line 289
    const-string v0, ""

    iput-object v0, p0, Lcom/google/goggles/MusicInformationProtos$MusicInformation;->artworkUrl_:Ljava/lang/Object;

    .line 290
    const-string v0, ""

    iput-object v0, p0, Lcom/google/goggles/MusicInformationProtos$MusicInformation;->googleMusicTrackId_:Ljava/lang/Object;

    .line 291
    const-string v0, ""

    iput-object v0, p0, Lcom/google/goggles/MusicInformationProtos$MusicInformation;->googleMusicAlbumId_:Ljava/lang/Object;

    .line 292
    const-string v0, ""

    iput-object v0, p0, Lcom/google/goggles/MusicInformationProtos$MusicInformation;->recordLabel_:Ljava/lang/Object;

    .line 293
    return-void
.end method

.method public static newBuilder()Lcom/google/goggles/MusicInformationProtos$MusicInformation$Builder;
    .registers 1

    .prologue
    .line 441
    #calls: Lcom/google/goggles/MusicInformationProtos$MusicInformation$Builder;->create()Lcom/google/goggles/MusicInformationProtos$MusicInformation$Builder;
    invoke-static {}, Lcom/google/goggles/MusicInformationProtos$MusicInformation$Builder;->access$100()Lcom/google/goggles/MusicInformationProtos$MusicInformation$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/goggles/MusicInformationProtos$MusicInformation;)Lcom/google/goggles/MusicInformationProtos$MusicInformation$Builder;
    .registers 2
    .parameter

    .prologue
    .line 444
    invoke-static {}, Lcom/google/goggles/MusicInformationProtos$MusicInformation;->newBuilder()Lcom/google/goggles/MusicInformationProtos$MusicInformation$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/goggles/MusicInformationProtos$MusicInformation$Builder;->mergeFrom(Lcom/google/goggles/MusicInformationProtos$MusicInformation;)Lcom/google/goggles/MusicInformationProtos$MusicInformation$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/goggles/MusicInformationProtos$MusicInformation;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 410
    invoke-static {}, Lcom/google/goggles/MusicInformationProtos$MusicInformation;->newBuilder()Lcom/google/goggles/MusicInformationProtos$MusicInformation$Builder;

    move-result-object v0

    .line 411
    invoke-virtual {v0, p0}, Lcom/google/goggles/MusicInformationProtos$MusicInformation$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 412
    #calls: Lcom/google/goggles/MusicInformationProtos$MusicInformation$Builder;->buildParsed()Lcom/google/goggles/MusicInformationProtos$MusicInformation;
    invoke-static {v0}, Lcom/google/goggles/MusicInformationProtos$MusicInformation$Builder;->access$000(Lcom/google/goggles/MusicInformationProtos$MusicInformation$Builder;)Lcom/google/goggles/MusicInformationProtos$MusicInformation;

    move-result-object v0

    .line 414
    :goto_e
    return-object v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/MusicInformationProtos$MusicInformation;
    .registers 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 421
    invoke-static {}, Lcom/google/goggles/MusicInformationProtos$MusicInformation;->newBuilder()Lcom/google/goggles/MusicInformationProtos$MusicInformation$Builder;

    move-result-object v0

    .line 422
    invoke-virtual {v0, p0, p1}, Lcom/google/goggles/MusicInformationProtos$MusicInformation$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 423
    #calls: Lcom/google/goggles/MusicInformationProtos$MusicInformation$Builder;->buildParsed()Lcom/google/goggles/MusicInformationProtos$MusicInformation;
    invoke-static {v0}, Lcom/google/goggles/MusicInformationProtos$MusicInformation$Builder;->access$000(Lcom/google/goggles/MusicInformationProtos$MusicInformation$Builder;)Lcom/google/goggles/MusicInformationProtos$MusicInformation;

    move-result-object v0

    .line 425
    :goto_e
    return-object v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/goggles/MusicInformationProtos$MusicInformation;
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 377
    invoke-static {}, Lcom/google/goggles/MusicInformationProtos$MusicInformation;->newBuilder()Lcom/google/goggles/MusicInformationProtos$MusicInformation$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/goggles/MusicInformationProtos$MusicInformation$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/MusicInformationProtos$MusicInformation$Builder;

    #calls: Lcom/google/goggles/MusicInformationProtos$MusicInformation$Builder;->buildParsed()Lcom/google/goggles/MusicInformationProtos$MusicInformation;
    invoke-static {v0}, Lcom/google/goggles/MusicInformationProtos$MusicInformation$Builder;->access$000(Lcom/google/goggles/MusicInformationProtos$MusicInformation$Builder;)Lcom/google/goggles/MusicInformationProtos$MusicInformation;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/MusicInformationProtos$MusicInformation;
    .registers 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 383
    invoke-static {}, Lcom/google/goggles/MusicInformationProtos$MusicInformation;->newBuilder()Lcom/google/goggles/MusicInformationProtos$MusicInformation$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/goggles/MusicInformationProtos$MusicInformation$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/MusicInformationProtos$MusicInformation$Builder;

    #calls: Lcom/google/goggles/MusicInformationProtos$MusicInformation$Builder;->buildParsed()Lcom/google/goggles/MusicInformationProtos$MusicInformation;
    invoke-static {v0}, Lcom/google/goggles/MusicInformationProtos$MusicInformation$Builder;->access$000(Lcom/google/goggles/MusicInformationProtos$MusicInformation$Builder;)Lcom/google/goggles/MusicInformationProtos$MusicInformation;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/goggles/MusicInformationProtos$MusicInformation;
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 431
    invoke-static {}, Lcom/google/goggles/MusicInformationProtos$MusicInformation;->newBuilder()Lcom/google/goggles/MusicInformationProtos$MusicInformation$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/goggles/MusicInformationProtos$MusicInformation$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/MusicInformationProtos$MusicInformation$Builder;

    #calls: Lcom/google/goggles/MusicInformationProtos$MusicInformation$Builder;->buildParsed()Lcom/google/goggles/MusicInformationProtos$MusicInformation;
    invoke-static {v0}, Lcom/google/goggles/MusicInformationProtos$MusicInformation$Builder;->access$000(Lcom/google/goggles/MusicInformationProtos$MusicInformation$Builder;)Lcom/google/goggles/MusicInformationProtos$MusicInformation;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/MusicInformationProtos$MusicInformation;
    .registers 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 437
    invoke-static {}, Lcom/google/goggles/MusicInformationProtos$MusicInformation;->newBuilder()Lcom/google/goggles/MusicInformationProtos$MusicInformation$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/goggles/MusicInformationProtos$MusicInformation$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/MusicInformationProtos$MusicInformation$Builder;

    move-result-object v0

    #calls: Lcom/google/goggles/MusicInformationProtos$MusicInformation$Builder;->buildParsed()Lcom/google/goggles/MusicInformationProtos$MusicInformation;
    invoke-static {v0}, Lcom/google/goggles/MusicInformationProtos$MusicInformation$Builder;->access$000(Lcom/google/goggles/MusicInformationProtos$MusicInformation$Builder;)Lcom/google/goggles/MusicInformationProtos$MusicInformation;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/goggles/MusicInformationProtos$MusicInformation;
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 399
    invoke-static {}, Lcom/google/goggles/MusicInformationProtos$MusicInformation;->newBuilder()Lcom/google/goggles/MusicInformationProtos$MusicInformation$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/goggles/MusicInformationProtos$MusicInformation$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/MusicInformationProtos$MusicInformation$Builder;

    #calls: Lcom/google/goggles/MusicInformationProtos$MusicInformation$Builder;->buildParsed()Lcom/google/goggles/MusicInformationProtos$MusicInformation;
    invoke-static {v0}, Lcom/google/goggles/MusicInformationProtos$MusicInformation$Builder;->access$000(Lcom/google/goggles/MusicInformationProtos$MusicInformation$Builder;)Lcom/google/goggles/MusicInformationProtos$MusicInformation;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/MusicInformationProtos$MusicInformation;
    .registers 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 405
    invoke-static {}, Lcom/google/goggles/MusicInformationProtos$MusicInformation;->newBuilder()Lcom/google/goggles/MusicInformationProtos$MusicInformation$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/goggles/MusicInformationProtos$MusicInformation$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/MusicInformationProtos$MusicInformation$Builder;

    #calls: Lcom/google/goggles/MusicInformationProtos$MusicInformation$Builder;->buildParsed()Lcom/google/goggles/MusicInformationProtos$MusicInformation;
    invoke-static {v0}, Lcom/google/goggles/MusicInformationProtos$MusicInformation$Builder;->access$000(Lcom/google/goggles/MusicInformationProtos$MusicInformation$Builder;)Lcom/google/goggles/MusicInformationProtos$MusicInformation;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/goggles/MusicInformationProtos$MusicInformation;
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 388
    invoke-static {}, Lcom/google/goggles/MusicInformationProtos$MusicInformation;->newBuilder()Lcom/google/goggles/MusicInformationProtos$MusicInformation$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/goggles/MusicInformationProtos$MusicInformation$Builder;->mergeFrom([B)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/MusicInformationProtos$MusicInformation$Builder;

    #calls: Lcom/google/goggles/MusicInformationProtos$MusicInformation$Builder;->buildParsed()Lcom/google/goggles/MusicInformationProtos$MusicInformation;
    invoke-static {v0}, Lcom/google/goggles/MusicInformationProtos$MusicInformation$Builder;->access$000(Lcom/google/goggles/MusicInformationProtos$MusicInformation$Builder;)Lcom/google/goggles/MusicInformationProtos$MusicInformation;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/MusicInformationProtos$MusicInformation;
    .registers 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 394
    invoke-static {}, Lcom/google/goggles/MusicInformationProtos$MusicInformation;->newBuilder()Lcom/google/goggles/MusicInformationProtos$MusicInformation$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/goggles/MusicInformationProtos$MusicInformation$Builder;->mergeFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/MusicInformationProtos$MusicInformation$Builder;

    #calls: Lcom/google/goggles/MusicInformationProtos$MusicInformation$Builder;->buildParsed()Lcom/google/goggles/MusicInformationProtos$MusicInformation;
    invoke-static {v0}, Lcom/google/goggles/MusicInformationProtos$MusicInformation$Builder;->access$000(Lcom/google/goggles/MusicInformationProtos$MusicInformation$Builder;)Lcom/google/goggles/MusicInformationProtos$MusicInformation;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getAlbum()Ljava/lang/String;
    .registers 3

    .prologue
    .line 132
    iget-object v0, p0, Lcom/google/goggles/MusicInformationProtos$MusicInformation;->album_:Ljava/lang/Object;

    .line 133
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_9

    .line 134
    check-cast v0, Ljava/lang/String;

    .line 142
    :goto_8
    return-object v0

    .line 136
    :cond_9
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 138
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 139
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 140
    iput-object v1, p0, Lcom/google/goggles/MusicInformationProtos$MusicInformation;->album_:Ljava/lang/Object;

    :cond_17
    move-object v0, v1

    .line 142
    goto :goto_8
.end method

.method public getArtist()Ljava/lang/String;
    .registers 3

    .prologue
    .line 68
    iget-object v0, p0, Lcom/google/goggles/MusicInformationProtos$MusicInformation;->artist_:Ljava/lang/Object;

    .line 69
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_9

    .line 70
    check-cast v0, Ljava/lang/String;

    .line 78
    :goto_8
    return-object v0

    .line 72
    :cond_9
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 74
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 75
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 76
    iput-object v1, p0, Lcom/google/goggles/MusicInformationProtos$MusicInformation;->artist_:Ljava/lang/Object;

    :cond_17
    move-object v0, v1

    .line 78
    goto :goto_8
.end method

.method public getArtworkUrl()Ljava/lang/String;
    .registers 3

    .prologue
    .line 164
    iget-object v0, p0, Lcom/google/goggles/MusicInformationProtos$MusicInformation;->artworkUrl_:Ljava/lang/Object;

    .line 165
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_9

    .line 166
    check-cast v0, Ljava/lang/String;

    .line 174
    :goto_8
    return-object v0

    .line 168
    :cond_9
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 170
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 171
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 172
    iput-object v1, p0, Lcom/google/goggles/MusicInformationProtos$MusicInformation;->artworkUrl_:Ljava/lang/Object;

    :cond_17
    move-object v0, v1

    .line 174
    goto :goto_8
.end method

.method public getDefaultInstanceForType()Lcom/google/goggles/MusicInformationProtos$MusicInformation;
    .registers 2

    .prologue
    .line 57
    sget-object v0, Lcom/google/goggles/MusicInformationProtos$MusicInformation;->defaultInstance:Lcom/google/goggles/MusicInformationProtos$MusicInformation;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 42
    invoke-virtual {p0}, Lcom/google/goggles/MusicInformationProtos$MusicInformation;->getDefaultInstanceForType()Lcom/google/goggles/MusicInformationProtos$MusicInformation;

    move-result-object v0

    return-object v0
.end method

.method public getGoogleMusicAlbumId()Ljava/lang/String;
    .registers 3

    .prologue
    .line 228
    iget-object v0, p0, Lcom/google/goggles/MusicInformationProtos$MusicInformation;->googleMusicAlbumId_:Ljava/lang/Object;

    .line 229
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_9

    .line 230
    check-cast v0, Ljava/lang/String;

    .line 238
    :goto_8
    return-object v0

    .line 232
    :cond_9
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 234
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 235
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 236
    iput-object v1, p0, Lcom/google/goggles/MusicInformationProtos$MusicInformation;->googleMusicAlbumId_:Ljava/lang/Object;

    :cond_17
    move-object v0, v1

    .line 238
    goto :goto_8
.end method

.method public getGoogleMusicTrackId()Ljava/lang/String;
    .registers 3

    .prologue
    .line 196
    iget-object v0, p0, Lcom/google/goggles/MusicInformationProtos$MusicInformation;->googleMusicTrackId_:Ljava/lang/Object;

    .line 197
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_9

    .line 198
    check-cast v0, Ljava/lang/String;

    .line 206
    :goto_8
    return-object v0

    .line 200
    :cond_9
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 202
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 203
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 204
    iput-object v1, p0, Lcom/google/goggles/MusicInformationProtos$MusicInformation;->googleMusicTrackId_:Ljava/lang/Object;

    :cond_17
    move-object v0, v1

    .line 206
    goto :goto_8
.end method

.method public getRecordLabel()Ljava/lang/String;
    .registers 3

    .prologue
    .line 260
    iget-object v0, p0, Lcom/google/goggles/MusicInformationProtos$MusicInformation;->recordLabel_:Ljava/lang/Object;

    .line 261
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_9

    .line 262
    check-cast v0, Ljava/lang/String;

    .line 270
    :goto_8
    return-object v0

    .line 264
    :cond_9
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 266
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 267
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 268
    iput-object v1, p0, Lcom/google/goggles/MusicInformationProtos$MusicInformation;->recordLabel_:Ljava/lang/Object;

    :cond_17
    move-object v0, v1

    .line 270
    goto :goto_8
.end method

.method public getSerializedSize()I
    .registers 6

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 331
    iget v0, p0, Lcom/google/goggles/MusicInformationProtos$MusicInformation;->memoizedSerializedSize:I

    .line 332
    const/4 v1, -0x1

    if-eq v0, v1, :cond_9

    .line 364
    :goto_8
    return v0

    .line 334
    :cond_9
    const/4 v0, 0x0

    .line 335
    iget v1, p0, Lcom/google/goggles/MusicInformationProtos$MusicInformation;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v2, :cond_19

    .line 336
    invoke-direct {p0}, Lcom/google/goggles/MusicInformationProtos$MusicInformation;->getArtistBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v1

    add-int/2addr v0, v1

    .line 339
    :cond_19
    iget v1, p0, Lcom/google/goggles/MusicInformationProtos$MusicInformation;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-ne v1, v3, :cond_28

    .line 340
    invoke-direct {p0}, Lcom/google/goggles/MusicInformationProtos$MusicInformation;->getTrackBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v1

    add-int/2addr v0, v1

    .line 343
    :cond_28
    iget v1, p0, Lcom/google/goggles/MusicInformationProtos$MusicInformation;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    if-ne v1, v4, :cond_38

    .line 344
    const/4 v1, 0x3

    invoke-direct {p0}, Lcom/google/goggles/MusicInformationProtos$MusicInformation;->getAlbumBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v1

    add-int/2addr v0, v1

    .line 347
    :cond_38
    iget v1, p0, Lcom/google/goggles/MusicInformationProtos$MusicInformation;->bitField0_:I

    and-int/lit8 v1, v1, 0x8

    const/16 v2, 0x8

    if-ne v1, v2, :cond_49

    .line 348
    invoke-direct {p0}, Lcom/google/goggles/MusicInformationProtos$MusicInformation;->getArtworkUrlBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v1

    add-int/2addr v0, v1

    .line 351
    :cond_49
    iget v1, p0, Lcom/google/goggles/MusicInformationProtos$MusicInformation;->bitField0_:I

    and-int/lit8 v1, v1, 0x10

    const/16 v2, 0x10

    if-ne v1, v2, :cond_5b

    .line 352
    const/4 v1, 0x5

    invoke-direct {p0}, Lcom/google/goggles/MusicInformationProtos$MusicInformation;->getGoogleMusicTrackIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v1

    add-int/2addr v0, v1

    .line 355
    :cond_5b
    iget v1, p0, Lcom/google/goggles/MusicInformationProtos$MusicInformation;->bitField0_:I

    and-int/lit8 v1, v1, 0x20

    const/16 v2, 0x20

    if-ne v1, v2, :cond_6d

    .line 356
    const/4 v1, 0x6

    invoke-direct {p0}, Lcom/google/goggles/MusicInformationProtos$MusicInformation;->getGoogleMusicAlbumIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v1

    add-int/2addr v0, v1

    .line 359
    :cond_6d
    iget v1, p0, Lcom/google/goggles/MusicInformationProtos$MusicInformation;->bitField0_:I

    and-int/lit8 v1, v1, 0x40

    const/16 v2, 0x40

    if-ne v1, v2, :cond_7f

    .line 360
    const/4 v1, 0x7

    invoke-direct {p0}, Lcom/google/goggles/MusicInformationProtos$MusicInformation;->getRecordLabelBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v1

    add-int/2addr v0, v1

    .line 363
    :cond_7f
    iput v0, p0, Lcom/google/goggles/MusicInformationProtos$MusicInformation;->memoizedSerializedSize:I

    goto :goto_8
.end method

.method public getTrack()Ljava/lang/String;
    .registers 3

    .prologue
    .line 100
    iget-object v0, p0, Lcom/google/goggles/MusicInformationProtos$MusicInformation;->track_:Ljava/lang/Object;

    .line 101
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_9

    .line 102
    check-cast v0, Ljava/lang/String;

    .line 110
    :goto_8
    return-object v0

    .line 104
    :cond_9
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 106
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 107
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 108
    iput-object v1, p0, Lcom/google/goggles/MusicInformationProtos$MusicInformation;->track_:Ljava/lang/Object;

    :cond_17
    move-object v0, v1

    .line 110
    goto :goto_8
.end method

.method public hasAlbum()Z
    .registers 3

    .prologue
    .line 129
    iget v0, p0, Lcom/google/goggles/MusicInformationProtos$MusicInformation;->bitField0_:I

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

.method public hasArtist()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 65
    iget v1, p0, Lcom/google/goggles/MusicInformationProtos$MusicInformation;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public hasArtworkUrl()Z
    .registers 3

    .prologue
    .line 161
    iget v0, p0, Lcom/google/goggles/MusicInformationProtos$MusicInformation;->bitField0_:I

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

.method public hasGoogleMusicAlbumId()Z
    .registers 3

    .prologue
    .line 225
    iget v0, p0, Lcom/google/goggles/MusicInformationProtos$MusicInformation;->bitField0_:I

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

.method public hasGoogleMusicTrackId()Z
    .registers 3

    .prologue
    .line 193
    iget v0, p0, Lcom/google/goggles/MusicInformationProtos$MusicInformation;->bitField0_:I

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

.method public hasRecordLabel()Z
    .registers 3

    .prologue
    .line 257
    iget v0, p0, Lcom/google/goggles/MusicInformationProtos$MusicInformation;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

    const/16 v1, 0x40

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public hasTrack()Z
    .registers 3

    .prologue
    .line 97
    iget v0, p0, Lcom/google/goggles/MusicInformationProtos$MusicInformation;->bitField0_:I

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

    .line 296
    iget-byte v1, p0, Lcom/google/goggles/MusicInformationProtos$MusicInformation;->memoizedIsInitialized:B

    .line 297
    const/4 v2, -0x1

    if-eq v1, v2, :cond_b

    if-ne v1, v0, :cond_9

    .line 300
    :goto_8
    return v0

    .line 297
    :cond_9
    const/4 v0, 0x0

    goto :goto_8

    .line 299
    :cond_b
    iput-byte v0, p0, Lcom/google/goggles/MusicInformationProtos$MusicInformation;->memoizedIsInitialized:B

    goto :goto_8
.end method

.method public newBuilderForType()Lcom/google/goggles/MusicInformationProtos$MusicInformation$Builder;
    .registers 2

    .prologue
    .line 442
    invoke-static {}, Lcom/google/goggles/MusicInformationProtos$MusicInformation;->newBuilder()Lcom/google/goggles/MusicInformationProtos$MusicInformation$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 42
    invoke-virtual {p0}, Lcom/google/goggles/MusicInformationProtos$MusicInformation;->newBuilderForType()Lcom/google/goggles/MusicInformationProtos$MusicInformation$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/goggles/MusicInformationProtos$MusicInformation$Builder;
    .registers 2

    .prologue
    .line 446
    invoke-static {p0}, Lcom/google/goggles/MusicInformationProtos$MusicInformation;->newBuilder(Lcom/google/goggles/MusicInformationProtos$MusicInformation;)Lcom/google/goggles/MusicInformationProtos$MusicInformation$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 42
    invoke-virtual {p0}, Lcom/google/goggles/MusicInformationProtos$MusicInformation;->toBuilder()Lcom/google/goggles/MusicInformationProtos$MusicInformation$Builder;

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
    .line 371
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

    .line 305
    invoke-virtual {p0}, Lcom/google/goggles/MusicInformationProtos$MusicInformation;->getSerializedSize()I

    .line 306
    iget v0, p0, Lcom/google/goggles/MusicInformationProtos$MusicInformation;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_13

    .line 307
    invoke-direct {p0}, Lcom/google/goggles/MusicInformationProtos$MusicInformation;->getArtistBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 309
    :cond_13
    iget v0, p0, Lcom/google/goggles/MusicInformationProtos$MusicInformation;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_20

    .line 310
    invoke-direct {p0}, Lcom/google/goggles/MusicInformationProtos$MusicInformation;->getTrackBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 312
    :cond_20
    iget v0, p0, Lcom/google/goggles/MusicInformationProtos$MusicInformation;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-ne v0, v3, :cond_2e

    .line 313
    const/4 v0, 0x3

    invoke-direct {p0}, Lcom/google/goggles/MusicInformationProtos$MusicInformation;->getAlbumBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 315
    :cond_2e
    iget v0, p0, Lcom/google/goggles/MusicInformationProtos$MusicInformation;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_3d

    .line 316
    invoke-direct {p0}, Lcom/google/goggles/MusicInformationProtos$MusicInformation;->getArtworkUrlBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v3, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 318
    :cond_3d
    iget v0, p0, Lcom/google/goggles/MusicInformationProtos$MusicInformation;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_4d

    .line 319
    const/4 v0, 0x5

    invoke-direct {p0}, Lcom/google/goggles/MusicInformationProtos$MusicInformation;->getGoogleMusicTrackIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 321
    :cond_4d
    iget v0, p0, Lcom/google/goggles/MusicInformationProtos$MusicInformation;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_5d

    .line 322
    const/4 v0, 0x6

    invoke-direct {p0}, Lcom/google/goggles/MusicInformationProtos$MusicInformation;->getGoogleMusicAlbumIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 324
    :cond_5d
    iget v0, p0, Lcom/google/goggles/MusicInformationProtos$MusicInformation;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

    const/16 v1, 0x40

    if-ne v0, v1, :cond_6d

    .line 325
    const/4 v0, 0x7

    invoke-direct {p0}, Lcom/google/goggles/MusicInformationProtos$MusicInformation;->getRecordLabelBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 327
    :cond_6d
    return-void
.end method
