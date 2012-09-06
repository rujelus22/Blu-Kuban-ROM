.class public final Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Data.java"

# interfaces
.implements Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbumOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/tacotruck/proto/Data;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PhotoAlbum"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;,
        Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$EventIdentifier;,
        Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$EventIdentifierOrBuilder;
    }
.end annotation


# static fields
.field private static final defaultInstance:Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;

.field private static final serialVersionUID:J


# instance fields
.field private audience_:Lcom/google/wireless/tacotruck/proto/Data$Audience;

.field private bitField0_:I

.field private cover_:Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;

.field private entityVersion_:J

.field private eventIdentifier_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$EventIdentifier;",
            ">;"
        }
    .end annotation
.end field

.field private focusObfuscatedOwnerId_:Ljava/lang/Object;

.field private id_:J

.field private identifier_:Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier;

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private ownerGaiaId_:J

.field private preview_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;",
            ">;"
        }
    .end annotation
.end field

.field private privateInviteToken_:Ljava/lang/Object;

.field private streamId_:Ljava/lang/Object;

.field private timestampMsec_:J

.field private title_:Ljava/lang/Object;

.field private totalPhotos_:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 15915
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;-><init>(Z)V

    sput-object v0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;

    .line 15916
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;

    invoke-direct {v0}, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;->initFields()V

    .line 15917
    return-void
.end method

.method private constructor <init>(Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 14122
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 14816
    iput-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;->memoizedIsInitialized:B

    .line 14884
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;->memoizedSerializedSize:I

    .line 14123
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;Lcom/google/wireless/tacotruck/proto/Data$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 14117
    invoke-direct {p0, p1}, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;-><init>(Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 14124
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 14816
    iput-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;->memoizedIsInitialized:B

    .line 14884
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;->memoizedSerializedSize:I

    .line 14124
    return-void
.end method

.method static synthetic access$19802(Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;J)J
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 14117
    iput-wide p1, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;->id_:J

    return-wide p1
.end method

.method static synthetic access$19902(Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 14117
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;->title_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$20002(Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 14117
    iput p1, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;->totalPhotos_:I

    return p1
.end method

.method static synthetic access$20102(Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;J)J
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 14117
    iput-wide p1, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;->ownerGaiaId_:J

    return-wide p1
.end method

.method static synthetic access$20202(Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 14117
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;->focusObfuscatedOwnerId_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$20302(Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;)Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 14117
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;->cover_:Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;

    return-object p1
.end method

.method static synthetic access$20402(Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;J)J
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 14117
    iput-wide p1, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;->timestampMsec_:J

    return-wide p1
.end method

.method static synthetic access$20502(Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 14117
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;->streamId_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$20602(Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;Lcom/google/wireless/tacotruck/proto/Data$Audience;)Lcom/google/wireless/tacotruck/proto/Data$Audience;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 14117
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;->audience_:Lcom/google/wireless/tacotruck/proto/Data$Audience;

    return-object p1
.end method

.method static synthetic access$20700(Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;)Ljava/util/List;
    .registers 2
    .parameter "x0"

    .prologue
    .line 14117
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;->preview_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$20702(Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;Ljava/util/List;)Ljava/util/List;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 14117
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;->preview_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$20802(Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier;)Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 14117
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;->identifier_:Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier;

    return-object p1
.end method

.method static synthetic access$20902(Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;J)J
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 14117
    iput-wide p1, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;->entityVersion_:J

    return-wide p1
.end method

.method static synthetic access$21002(Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 14117
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;->privateInviteToken_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$21100(Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;)Ljava/util/List;
    .registers 2
    .parameter "x0"

    .prologue
    .line 14117
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;->eventIdentifier_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$21102(Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;Ljava/util/List;)Ljava/util/List;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 14117
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;->eventIdentifier_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$21202(Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 14117
    iput p1, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;
    .registers 1

    .prologue
    .line 14128
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;

    return-object v0
.end method

.method private getFocusObfuscatedOwnerIdBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 14633
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;->focusObfuscatedOwnerId_:Ljava/lang/Object;

    .line 14634
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 14635
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 14637
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;->focusObfuscatedOwnerId_:Ljava/lang/Object;

    .line 14640
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

.method private getPrivateInviteTokenBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 14768
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;->privateInviteToken_:Ljava/lang/Object;

    .line 14769
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 14770
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 14772
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;->privateInviteToken_:Ljava/lang/Object;

    .line 14775
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

.method private getStreamIdBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 14685
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;->streamId_:Ljava/lang/Object;

    .line 14686
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 14687
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 14689
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;->streamId_:Ljava/lang/Object;

    .line 14692
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

.method private getTitleBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 14581
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;->title_:Ljava/lang/Object;

    .line 14582
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 14583
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 14585
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;->title_:Ljava/lang/Object;

    .line 14588
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
    .registers 4

    .prologue
    const-wide/16 v1, 0x0

    .line 14801
    iput-wide v1, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;->id_:J

    .line 14802
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;->title_:Ljava/lang/Object;

    .line 14803
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;->totalPhotos_:I

    .line 14804
    iput-wide v1, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;->ownerGaiaId_:J

    .line 14805
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;->focusObfuscatedOwnerId_:Ljava/lang/Object;

    .line 14806
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;->cover_:Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;

    .line 14807
    iput-wide v1, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;->timestampMsec_:J

    .line 14808
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;->streamId_:Ljava/lang/Object;

    .line 14809
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$Audience;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$Audience;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;->audience_:Lcom/google/wireless/tacotruck/proto/Data$Audience;

    .line 14810
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;->preview_:Ljava/util/List;

    .line 14811
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;->identifier_:Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier;

    .line 14812
    iput-wide v1, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;->entityVersion_:J

    .line 14813
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;->privateInviteToken_:Ljava/lang/Object;

    .line 14814
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;->eventIdentifier_:Ljava/util/List;

    .line 14815
    return-void
.end method

.method public static newBuilder()Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;
    .registers 1

    .prologue
    .line 15024
    #calls: Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->create()Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->access$19600()Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;)Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;
    .registers 2
    .parameter "prototype"

    .prologue
    .line 15027
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;->newBuilder()Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;)Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getAudience()Lcom/google/wireless/tacotruck/proto/Data$Audience;
    .registers 2

    .prologue
    .line 14703
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;->audience_:Lcom/google/wireless/tacotruck/proto/Data$Audience;

    return-object v0
.end method

.method public getCover()Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;
    .registers 2

    .prologue
    .line 14651
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;->cover_:Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 14117
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;
    .registers 2

    .prologue
    .line 14132
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;

    return-object v0
.end method

.method public getEntityVersion()J
    .registers 3

    .prologue
    .line 14744
    iget-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;->entityVersion_:J

    return-wide v0
.end method

.method public getEventIdentifier(I)Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$EventIdentifier;
    .registers 3
    .parameter "index"

    .prologue
    .line 14793
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;->eventIdentifier_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$EventIdentifier;

    return-object v0
.end method

.method public getEventIdentifierCount()I
    .registers 2

    .prologue
    .line 14790
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;->eventIdentifier_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getEventIdentifierList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$EventIdentifier;",
            ">;"
        }
    .end annotation

    .prologue
    .line 14783
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;->eventIdentifier_:Ljava/util/List;

    return-object v0
.end method

.method public getEventIdentifierOrBuilder(I)Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$EventIdentifierOrBuilder;
    .registers 3
    .parameter "index"

    .prologue
    .line 14797
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;->eventIdentifier_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$EventIdentifierOrBuilder;

    return-object v0
.end method

.method public getEventIdentifierOrBuilderList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$EventIdentifierOrBuilder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 14787
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;->eventIdentifier_:Ljava/util/List;

    return-object v0
.end method

.method public getFocusObfuscatedOwnerId()Ljava/lang/String;
    .registers 5

    .prologue
    .line 14619
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;->focusObfuscatedOwnerId_:Ljava/lang/Object;

    .line 14620
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 14621
    check-cast v1, Ljava/lang/String;

    .line 14629
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 14623
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 14625
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 14626
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 14627
    iput-object v2, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;->focusObfuscatedOwnerId_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 14629
    goto :goto_8
.end method

.method public getId()J
    .registers 3

    .prologue
    .line 14557
    iget-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;->id_:J

    return-wide v0
.end method

.method public getIdentifier()Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier;
    .registers 2

    .prologue
    .line 14734
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;->identifier_:Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier;

    return-object v0
.end method

.method public getOwnerGaiaId()J
    .registers 3

    .prologue
    .line 14609
    iget-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;->ownerGaiaId_:J

    return-wide v0
.end method

.method public getPreview(I)Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;
    .registers 3
    .parameter "index"

    .prologue
    .line 14720
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;->preview_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;

    return-object v0
.end method

.method public getPreviewCount()I
    .registers 2

    .prologue
    .line 14717
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;->preview_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getPreviewList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;",
            ">;"
        }
    .end annotation

    .prologue
    .line 14710
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;->preview_:Ljava/util/List;

    return-object v0
.end method

.method public getPreviewOrBuilder(I)Lcom/google/wireless/tacotruck/proto/Data$MobilePhotoOrBuilder;
    .registers 3
    .parameter "index"

    .prologue
    .line 14724
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;->preview_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhotoOrBuilder;

    return-object v0
.end method

.method public getPreviewOrBuilderList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lcom/google/wireless/tacotruck/proto/Data$MobilePhotoOrBuilder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 14714
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;->preview_:Ljava/util/List;

    return-object v0
.end method

.method public getPrivateInviteToken()Ljava/lang/String;
    .registers 5

    .prologue
    .line 14754
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;->privateInviteToken_:Ljava/lang/Object;

    .line 14755
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 14756
    check-cast v1, Ljava/lang/String;

    .line 14764
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 14758
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 14760
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 14761
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 14762
    iput-object v2, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;->privateInviteToken_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 14764
    goto :goto_8
.end method

.method public getSerializedSize()I
    .registers 10

    .prologue
    const/16 v8, 0x8

    const/4 v7, 0x4

    const/4 v6, 0x2

    const/4 v5, 0x1

    .line 14886
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;->memoizedSerializedSize:I

    .line 14887
    .local v1, size:I
    const/4 v3, -0x1

    if-eq v1, v3, :cond_c

    move v2, v1

    .line 14947
    .end local v1           #size:I
    .local v2, size:I
    :goto_b
    return v2

    .line 14889
    .end local v2           #size:I
    .restart local v1       #size:I
    :cond_c
    const/4 v1, 0x0

    .line 14890
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;->bitField0_:I

    and-int/lit8 v3, v3, 0x1

    if-ne v3, v5, :cond_1a

    .line 14891
    iget-wide v3, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;->id_:J

    invoke-static {v5, v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v3

    add-int/2addr v1, v3

    .line 14894
    :cond_1a
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;->bitField0_:I

    and-int/lit8 v3, v3, 0x2

    if-ne v3, v6, :cond_29

    .line 14895
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;->getTitleBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v6, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v3

    add-int/2addr v1, v3

    .line 14898
    :cond_29
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;->bitField0_:I

    and-int/lit8 v3, v3, 0x4

    if-ne v3, v7, :cond_37

    .line 14899
    const/4 v3, 0x3

    iget v4, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;->totalPhotos_:I

    invoke-static {v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v3

    add-int/2addr v1, v3

    .line 14902
    :cond_37
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;->bitField0_:I

    and-int/lit8 v3, v3, 0x8

    if-ne v3, v8, :cond_44

    .line 14903
    iget-wide v3, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;->ownerGaiaId_:J

    invoke-static {v7, v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v3

    add-int/2addr v1, v3

    .line 14906
    :cond_44
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;->bitField0_:I

    and-int/lit8 v3, v3, 0x20

    const/16 v4, 0x20

    if-ne v3, v4, :cond_54

    .line 14907
    const/4 v3, 0x5

    iget-object v4, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;->cover_:Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;

    invoke-static {v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v3

    add-int/2addr v1, v3

    .line 14910
    :cond_54
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;->bitField0_:I

    and-int/lit8 v3, v3, 0x40

    const/16 v4, 0x40

    if-ne v3, v4, :cond_64

    .line 14911
    const/4 v3, 0x6

    iget-wide v4, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;->timestampMsec_:J

    invoke-static {v3, v4, v5}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v3

    add-int/2addr v1, v3

    .line 14914
    :cond_64
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;->bitField0_:I

    and-int/lit16 v3, v3, 0x80

    const/16 v4, 0x80

    if-ne v3, v4, :cond_76

    .line 14915
    const/4 v3, 0x7

    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;->getStreamIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v3

    add-int/2addr v1, v3

    .line 14918
    :cond_76
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;->bitField0_:I

    and-int/lit16 v3, v3, 0x100

    const/16 v4, 0x100

    if-ne v3, v4, :cond_85

    .line 14919
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;->audience_:Lcom/google/wireless/tacotruck/proto/Data$Audience;

    invoke-static {v8, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v3

    add-int/2addr v1, v3

    .line 14922
    :cond_85
    const/4 v0, 0x0

    .local v0, i:I
    :goto_86
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;->preview_:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_a0

    .line 14923
    const/16 v4, 0x9

    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;->preview_:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/MessageLite;

    invoke-static {v4, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v3

    add-int/2addr v1, v3

    .line 14922
    add-int/lit8 v0, v0, 0x1

    goto :goto_86

    .line 14926
    :cond_a0
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;->bitField0_:I

    and-int/lit8 v3, v3, 0x10

    const/16 v4, 0x10

    if-ne v3, v4, :cond_b3

    .line 14927
    const/16 v3, 0xa

    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;->getFocusObfuscatedOwnerIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v3

    add-int/2addr v1, v3

    .line 14930
    :cond_b3
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;->bitField0_:I

    and-int/lit16 v3, v3, 0x200

    const/16 v4, 0x200

    if-ne v3, v4, :cond_c4

    .line 14931
    const/16 v3, 0xb

    iget-object v4, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;->identifier_:Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier;

    invoke-static {v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v3

    add-int/2addr v1, v3

    .line 14934
    :cond_c4
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;->bitField0_:I

    and-int/lit16 v3, v3, 0x400

    const/16 v4, 0x400

    if-ne v3, v4, :cond_d5

    .line 14935
    const/16 v3, 0xc

    iget-wide v4, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;->entityVersion_:J

    invoke-static {v3, v4, v5}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v3

    add-int/2addr v1, v3

    .line 14938
    :cond_d5
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;->bitField0_:I

    and-int/lit16 v3, v3, 0x800

    const/16 v4, 0x800

    if-ne v3, v4, :cond_e8

    .line 14939
    const/16 v3, 0xd

    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;->getPrivateInviteTokenBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v3

    add-int/2addr v1, v3

    .line 14942
    :cond_e8
    const/4 v0, 0x0

    :goto_e9
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;->eventIdentifier_:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_103

    .line 14943
    const/16 v4, 0xe

    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;->eventIdentifier_:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/MessageLite;

    invoke-static {v4, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v3

    add-int/2addr v1, v3

    .line 14942
    add-int/lit8 v0, v0, 0x1

    goto :goto_e9

    .line 14946
    :cond_103
    iput v1, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;->memoizedSerializedSize:I

    move v2, v1

    .line 14947
    .end local v1           #size:I
    .restart local v2       #size:I
    goto/16 :goto_b
.end method

.method public getStreamId()Ljava/lang/String;
    .registers 5

    .prologue
    .line 14671
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;->streamId_:Ljava/lang/Object;

    .line 14672
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 14673
    check-cast v1, Ljava/lang/String;

    .line 14681
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 14675
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 14677
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 14678
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 14679
    iput-object v2, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;->streamId_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 14681
    goto :goto_8
.end method

.method public getTimestampMsec()J
    .registers 3

    .prologue
    .line 14661
    iget-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;->timestampMsec_:J

    return-wide v0
.end method

.method public getTitle()Ljava/lang/String;
    .registers 5

    .prologue
    .line 14567
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;->title_:Ljava/lang/Object;

    .line 14568
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 14569
    check-cast v1, Ljava/lang/String;

    .line 14577
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 14571
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 14573
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 14574
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 14575
    iput-object v2, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;->title_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 14577
    goto :goto_8
.end method

.method public getTotalPhotos()I
    .registers 2

    .prologue
    .line 14599
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;->totalPhotos_:I

    return v0
.end method

.method public hasAudience()Z
    .registers 3

    .prologue
    .line 14700
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;->bitField0_:I

    and-int/lit16 v0, v0, 0x100

    const/16 v1, 0x100

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public hasCover()Z
    .registers 3

    .prologue
    .line 14648
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;->bitField0_:I

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

.method public hasEntityVersion()Z
    .registers 3

    .prologue
    .line 14741
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;->bitField0_:I

    and-int/lit16 v0, v0, 0x400

    const/16 v1, 0x400

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public hasFocusObfuscatedOwnerId()Z
    .registers 3

    .prologue
    .line 14616
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;->bitField0_:I

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

.method public hasId()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 14554
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public hasIdentifier()Z
    .registers 3

    .prologue
    .line 14731
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;->bitField0_:I

    and-int/lit16 v0, v0, 0x200

    const/16 v1, 0x200

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public hasOwnerGaiaId()Z
    .registers 3

    .prologue
    .line 14606
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;->bitField0_:I

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

.method public hasPrivateInviteToken()Z
    .registers 3

    .prologue
    .line 14751
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;->bitField0_:I

    and-int/lit16 v0, v0, 0x800

    const/16 v1, 0x800

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public hasStreamId()Z
    .registers 3

    .prologue
    .line 14668
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;->bitField0_:I

    and-int/lit16 v0, v0, 0x80

    const/16 v1, 0x80

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public hasTimestampMsec()Z
    .registers 3

    .prologue
    .line 14658
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;->bitField0_:I

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

.method public hasTitle()Z
    .registers 3

    .prologue
    .line 14564
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;->bitField0_:I

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

.method public hasTotalPhotos()Z
    .registers 3

    .prologue
    .line 14596
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;->bitField0_:I

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

.method public final isInitialized()Z
    .registers 6

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 14818
    iget-byte v1, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;->memoizedIsInitialized:B

    .line 14819
    .local v1, isInitialized:B
    const/4 v4, -0x1

    if-eq v1, v4, :cond_c

    if-ne v1, v2, :cond_a

    .line 14834
    :goto_9
    return v2

    :cond_a
    move v2, v3

    .line 14819
    goto :goto_9

    .line 14821
    :cond_c
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;->hasCover()Z

    move-result v4

    if-eqz v4, :cond_20

    .line 14822
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;->getCover()Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->isInitialized()Z

    move-result v4

    if-nez v4, :cond_20

    .line 14823
    iput-byte v3, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;->memoizedIsInitialized:B

    move v2, v3

    .line 14824
    goto :goto_9

    .line 14827
    :cond_20
    const/4 v0, 0x0

    .local v0, i:I
    :goto_21
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;->getPreviewCount()I

    move-result v4

    if-ge v0, v4, :cond_38

    .line 14828
    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;->getPreview(I)Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->isInitialized()Z

    move-result v4

    if-nez v4, :cond_35

    .line 14829
    iput-byte v3, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;->memoizedIsInitialized:B

    move v2, v3

    .line 14830
    goto :goto_9

    .line 14827
    :cond_35
    add-int/lit8 v0, v0, 0x1

    goto :goto_21

    .line 14833
    :cond_38
    iput-byte v2, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;->memoizedIsInitialized:B

    goto :goto_9
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 14117
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;->newBuilderForType()Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;
    .registers 2

    .prologue
    .line 15025
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;->newBuilder()Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 14117
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;->toBuilder()Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;
    .registers 2

    .prologue
    .line 15029
    invoke-static {p0}, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;->newBuilder(Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;)Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;

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
    .line 14954
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->writeReplace()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .registers 9
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v6, 0x8

    const/4 v5, 0x4

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 14839
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;->getSerializedSize()I

    .line 14840
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v3, :cond_13

    .line 14841
    iget-wide v1, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;->id_:J

    invoke-virtual {p1, v3, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 14843
    :cond_13
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-ne v1, v4, :cond_20

    .line 14844
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;->getTitleBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v4, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 14846
    :cond_20
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    if-ne v1, v5, :cond_2c

    .line 14847
    const/4 v1, 0x3

    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;->totalPhotos_:I

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 14849
    :cond_2c
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;->bitField0_:I

    and-int/lit8 v1, v1, 0x8

    if-ne v1, v6, :cond_37

    .line 14850
    iget-wide v1, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;->ownerGaiaId_:J

    invoke-virtual {p1, v5, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 14852
    :cond_37
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;->bitField0_:I

    and-int/lit8 v1, v1, 0x20

    const/16 v2, 0x20

    if-ne v1, v2, :cond_45

    .line 14853
    const/4 v1, 0x5

    iget-object v2, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;->cover_:Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 14855
    :cond_45
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;->bitField0_:I

    and-int/lit8 v1, v1, 0x40

    const/16 v2, 0x40

    if-ne v1, v2, :cond_53

    .line 14856
    const/4 v1, 0x6

    iget-wide v2, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;->timestampMsec_:J

    invoke-virtual {p1, v1, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 14858
    :cond_53
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;->bitField0_:I

    and-int/lit16 v1, v1, 0x80

    const/16 v2, 0x80

    if-ne v1, v2, :cond_63

    .line 14859
    const/4 v1, 0x7

    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;->getStreamIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 14861
    :cond_63
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;->bitField0_:I

    and-int/lit16 v1, v1, 0x100

    const/16 v2, 0x100

    if-ne v1, v2, :cond_70

    .line 14862
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;->audience_:Lcom/google/wireless/tacotruck/proto/Data$Audience;

    invoke-virtual {p1, v6, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 14864
    :cond_70
    const/4 v0, 0x0

    .local v0, i:I
    :goto_71
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;->preview_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_89

    .line 14865
    const/16 v2, 0x9

    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;->preview_:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/MessageLite;

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 14864
    add-int/lit8 v0, v0, 0x1

    goto :goto_71

    .line 14867
    :cond_89
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;->bitField0_:I

    and-int/lit8 v1, v1, 0x10

    const/16 v2, 0x10

    if-ne v1, v2, :cond_9a

    .line 14868
    const/16 v1, 0xa

    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;->getFocusObfuscatedOwnerIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 14870
    :cond_9a
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;->bitField0_:I

    and-int/lit16 v1, v1, 0x200

    const/16 v2, 0x200

    if-ne v1, v2, :cond_a9

    .line 14871
    const/16 v1, 0xb

    iget-object v2, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;->identifier_:Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier;

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 14873
    :cond_a9
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;->bitField0_:I

    and-int/lit16 v1, v1, 0x400

    const/16 v2, 0x400

    if-ne v1, v2, :cond_b8

    .line 14874
    const/16 v1, 0xc

    iget-wide v2, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;->entityVersion_:J

    invoke-virtual {p1, v1, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 14876
    :cond_b8
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;->bitField0_:I

    and-int/lit16 v1, v1, 0x800

    const/16 v2, 0x800

    if-ne v1, v2, :cond_c9

    .line 14877
    const/16 v1, 0xd

    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;->getPrivateInviteTokenBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 14879
    :cond_c9
    const/4 v0, 0x0

    :goto_ca
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;->eventIdentifier_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_e2

    .line 14880
    const/16 v2, 0xe

    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;->eventIdentifier_:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/MessageLite;

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 14879
    add-int/lit8 v0, v0, 0x1

    goto :goto_ca

    .line 14882
    :cond_e2
    return-void
.end method
