.class public final Lcom/google/feedreader/extrpc/Client$Friend;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Client.java"

# interfaces
.implements Lcom/google/feedreader/extrpc/Client$FriendOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/feedreader/extrpc/Client;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Friend"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/feedreader/extrpc/Client$Friend$Builder;,
        Lcom/google/feedreader/extrpc/Client$Friend$Website;,
        Lcom/google/feedreader/extrpc/Client$Friend$WebsiteOrBuilder;
    }
.end annotation


# static fields
.field public static final CONTACTID_FIELD_NUMBER:I = 0x3

.field public static final DISPLAYNAME_FIELD_NUMBER:I = 0xa

.field public static final EMAILADDRESSES_FIELD_NUMBER:I = 0x5

.field public static final FLAGS_FIELD_NUMBER:I = 0x8

.field public static final GIVENNAME_FIELD_NUMBER:I = 0xb

.field public static final GROUPID_FIELD_NUMBER:I = 0xe

.field public static final HASSHAREDITEMSONPROFILE_FIELD_NUMBER:I = 0x11

.field public static final LOCATION_FIELD_NUMBER:I = 0x6

.field public static final N_FIELD_NUMBER:I = 0xc

.field public static final OCCUPATION_FIELD_NUMBER:I = 0xf

.field public static final PHOTOURL_FIELD_NUMBER:I = 0x4

.field public static final PROFILECARDPARAMS_FIELD_NUMBER:I = 0xd

.field public static final PROFILEIDS_FIELD_NUMBER:I = 0x2

.field public static final STREAM_FIELD_NUMBER:I = 0x7

.field public static final TYPES_FIELD_NUMBER:I = 0x9

.field public static final USERIDS_FIELD_NUMBER:I = 0x1

.field public static final WEBSITES_FIELD_NUMBER:I = 0x10

.field private static final defaultInstance:Lcom/google/feedreader/extrpc/Client$Friend;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private contactId_:J

.field private displayName_:Ljava/lang/Object;

.field private emailAddresses_:Lcom/google/protobuf/LazyStringList;

.field private flags_:I

.field private givenName_:Ljava/lang/Object;

.field private groupId_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private hasSharedItemsOnProfile_:Z

.field private location_:Ljava/lang/Object;

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private n_:Ljava/lang/Object;

.field private occupation_:Ljava/lang/Object;

.field private photoUrl_:Ljava/lang/Object;

.field private profileCardParams_:Ljava/lang/Object;

.field private profileIds_:Lcom/google/protobuf/LazyStringList;

.field private stream_:Ljava/lang/Object;

.field private types_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private userIds_:Lcom/google/protobuf/LazyStringList;

.field private websites_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/feedreader/extrpc/Client$Friend$Website;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 12936
    new-instance v0, Lcom/google/feedreader/extrpc/Client$Friend;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/feedreader/extrpc/Client$Friend;-><init>(Z)V

    sput-object v0, Lcom/google/feedreader/extrpc/Client$Friend;->defaultInstance:Lcom/google/feedreader/extrpc/Client$Friend;

    .line 12937
    sget-object v0, Lcom/google/feedreader/extrpc/Client$Friend;->defaultInstance:Lcom/google/feedreader/extrpc/Client$Friend;

    invoke-direct {v0}, Lcom/google/feedreader/extrpc/Client$Friend;->initFields()V

    .line 12938
    return-void
.end method

.method private constructor <init>(Lcom/google/feedreader/extrpc/Client$Friend$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 10699
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 11539
    iput-byte v0, p0, Lcom/google/feedreader/extrpc/Client$Friend;->memoizedIsInitialized:B

    .line 11630
    iput v0, p0, Lcom/google/feedreader/extrpc/Client$Friend;->memoizedSerializedSize:I

    .line 10700
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/feedreader/extrpc/Client$Friend$Builder;Lcom/google/feedreader/extrpc/Client$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 10694
    invoke-direct {p0, p1}, Lcom/google/feedreader/extrpc/Client$Friend;-><init>(Lcom/google/feedreader/extrpc/Client$Friend$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 10701
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 11539
    iput-byte v0, p0, Lcom/google/feedreader/extrpc/Client$Friend;->memoizedIsInitialized:B

    .line 11630
    iput v0, p0, Lcom/google/feedreader/extrpc/Client$Friend;->memoizedSerializedSize:I

    .line 10701
    return-void
.end method

.method static synthetic access$14100(Lcom/google/feedreader/extrpc/Client$Friend;)Lcom/google/protobuf/LazyStringList;
    .registers 2
    .parameter "x0"

    .prologue
    .line 10694
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$Friend;->userIds_:Lcom/google/protobuf/LazyStringList;

    return-object v0
.end method

.method static synthetic access$14102(Lcom/google/feedreader/extrpc/Client$Friend;Lcom/google/protobuf/LazyStringList;)Lcom/google/protobuf/LazyStringList;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 10694
    iput-object p1, p0, Lcom/google/feedreader/extrpc/Client$Friend;->userIds_:Lcom/google/protobuf/LazyStringList;

    return-object p1
.end method

.method static synthetic access$14200(Lcom/google/feedreader/extrpc/Client$Friend;)Lcom/google/protobuf/LazyStringList;
    .registers 2
    .parameter "x0"

    .prologue
    .line 10694
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$Friend;->profileIds_:Lcom/google/protobuf/LazyStringList;

    return-object v0
.end method

.method static synthetic access$14202(Lcom/google/feedreader/extrpc/Client$Friend;Lcom/google/protobuf/LazyStringList;)Lcom/google/protobuf/LazyStringList;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 10694
    iput-object p1, p0, Lcom/google/feedreader/extrpc/Client$Friend;->profileIds_:Lcom/google/protobuf/LazyStringList;

    return-object p1
.end method

.method static synthetic access$14302(Lcom/google/feedreader/extrpc/Client$Friend;J)J
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 10694
    iput-wide p1, p0, Lcom/google/feedreader/extrpc/Client$Friend;->contactId_:J

    return-wide p1
.end method

.method static synthetic access$14402(Lcom/google/feedreader/extrpc/Client$Friend;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 10694
    iput-object p1, p0, Lcom/google/feedreader/extrpc/Client$Friend;->photoUrl_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$14500(Lcom/google/feedreader/extrpc/Client$Friend;)Lcom/google/protobuf/LazyStringList;
    .registers 2
    .parameter "x0"

    .prologue
    .line 10694
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$Friend;->emailAddresses_:Lcom/google/protobuf/LazyStringList;

    return-object v0
.end method

.method static synthetic access$14502(Lcom/google/feedreader/extrpc/Client$Friend;Lcom/google/protobuf/LazyStringList;)Lcom/google/protobuf/LazyStringList;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 10694
    iput-object p1, p0, Lcom/google/feedreader/extrpc/Client$Friend;->emailAddresses_:Lcom/google/protobuf/LazyStringList;

    return-object p1
.end method

.method static synthetic access$14602(Lcom/google/feedreader/extrpc/Client$Friend;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 10694
    iput-object p1, p0, Lcom/google/feedreader/extrpc/Client$Friend;->location_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$14702(Lcom/google/feedreader/extrpc/Client$Friend;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 10694
    iput-object p1, p0, Lcom/google/feedreader/extrpc/Client$Friend;->stream_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$14802(Lcom/google/feedreader/extrpc/Client$Friend;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 10694
    iput p1, p0, Lcom/google/feedreader/extrpc/Client$Friend;->flags_:I

    return p1
.end method

.method static synthetic access$14900(Lcom/google/feedreader/extrpc/Client$Friend;)Ljava/util/List;
    .registers 2
    .parameter "x0"

    .prologue
    .line 10694
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$Friend;->types_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$14902(Lcom/google/feedreader/extrpc/Client$Friend;Ljava/util/List;)Ljava/util/List;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 10694
    iput-object p1, p0, Lcom/google/feedreader/extrpc/Client$Friend;->types_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$15002(Lcom/google/feedreader/extrpc/Client$Friend;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 10694
    iput-object p1, p0, Lcom/google/feedreader/extrpc/Client$Friend;->displayName_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$15102(Lcom/google/feedreader/extrpc/Client$Friend;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 10694
    iput-object p1, p0, Lcom/google/feedreader/extrpc/Client$Friend;->givenName_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$15202(Lcom/google/feedreader/extrpc/Client$Friend;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 10694
    iput-object p1, p0, Lcom/google/feedreader/extrpc/Client$Friend;->n_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$15302(Lcom/google/feedreader/extrpc/Client$Friend;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 10694
    iput-object p1, p0, Lcom/google/feedreader/extrpc/Client$Friend;->profileCardParams_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$15400(Lcom/google/feedreader/extrpc/Client$Friend;)Ljava/util/List;
    .registers 2
    .parameter "x0"

    .prologue
    .line 10694
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$Friend;->groupId_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$15402(Lcom/google/feedreader/extrpc/Client$Friend;Ljava/util/List;)Ljava/util/List;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 10694
    iput-object p1, p0, Lcom/google/feedreader/extrpc/Client$Friend;->groupId_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$15502(Lcom/google/feedreader/extrpc/Client$Friend;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 10694
    iput-object p1, p0, Lcom/google/feedreader/extrpc/Client$Friend;->occupation_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$15600(Lcom/google/feedreader/extrpc/Client$Friend;)Ljava/util/List;
    .registers 2
    .parameter "x0"

    .prologue
    .line 10694
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$Friend;->websites_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$15602(Lcom/google/feedreader/extrpc/Client$Friend;Ljava/util/List;)Ljava/util/List;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 10694
    iput-object p1, p0, Lcom/google/feedreader/extrpc/Client$Friend;->websites_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$15702(Lcom/google/feedreader/extrpc/Client$Friend;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 10694
    iput-boolean p1, p0, Lcom/google/feedreader/extrpc/Client$Friend;->hasSharedItemsOnProfile_:Z

    return p1
.end method

.method static synthetic access$15802(Lcom/google/feedreader/extrpc/Client$Friend;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 10694
    iput p1, p0, Lcom/google/feedreader/extrpc/Client$Friend;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/feedreader/extrpc/Client$Friend;
    .registers 1

    .prologue
    .line 10705
    sget-object v0, Lcom/google/feedreader/extrpc/Client$Friend;->defaultInstance:Lcom/google/feedreader/extrpc/Client$Friend;

    return-object v0
.end method

.method private getDisplayNameBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 11336
    iget-object v1, p0, Lcom/google/feedreader/extrpc/Client$Friend;->displayName_:Ljava/lang/Object;

    .line 11337
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_10

    .line 11338
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 11340
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$Friend;->displayName_:Ljava/lang/Object;

    move-object v2, v0

    .line 11343
    .end local v0           #b:Lcom/google/protobuf/ByteString;
    :goto_f
    return-object v2

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_10
    check-cast v1, Lcom/google/protobuf/ByteString;

    .end local v1           #ref:Ljava/lang/Object;
    move-object v2, v1

    goto :goto_f
.end method

.method private getGivenNameBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 11368
    iget-object v1, p0, Lcom/google/feedreader/extrpc/Client$Friend;->givenName_:Ljava/lang/Object;

    .line 11369
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_10

    .line 11370
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 11372
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$Friend;->givenName_:Ljava/lang/Object;

    move-object v2, v0

    .line 11375
    .end local v0           #b:Lcom/google/protobuf/ByteString;
    :goto_f
    return-object v2

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_10
    check-cast v1, Lcom/google/protobuf/ByteString;

    .end local v1           #ref:Ljava/lang/Object;
    move-object v2, v1

    goto :goto_f
.end method

.method private getLocationBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 11248
    iget-object v1, p0, Lcom/google/feedreader/extrpc/Client$Friend;->location_:Ljava/lang/Object;

    .line 11249
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_10

    .line 11250
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 11252
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$Friend;->location_:Ljava/lang/Object;

    move-object v2, v0

    .line 11255
    .end local v0           #b:Lcom/google/protobuf/ByteString;
    :goto_f
    return-object v2

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_10
    check-cast v1, Lcom/google/protobuf/ByteString;

    .end local v1           #ref:Ljava/lang/Object;
    move-object v2, v1

    goto :goto_f
.end method

.method private getNBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 11400
    iget-object v1, p0, Lcom/google/feedreader/extrpc/Client$Friend;->n_:Ljava/lang/Object;

    .line 11401
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_10

    .line 11402
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 11404
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$Friend;->n_:Ljava/lang/Object;

    move-object v2, v0

    .line 11407
    .end local v0           #b:Lcom/google/protobuf/ByteString;
    :goto_f
    return-object v2

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_10
    check-cast v1, Lcom/google/protobuf/ByteString;

    .end local v1           #ref:Ljava/lang/Object;
    move-object v2, v1

    goto :goto_f
.end method

.method private getOccupationBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 11478
    iget-object v1, p0, Lcom/google/feedreader/extrpc/Client$Friend;->occupation_:Ljava/lang/Object;

    .line 11479
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_10

    .line 11480
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 11482
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$Friend;->occupation_:Ljava/lang/Object;

    move-object v2, v0

    .line 11485
    .end local v0           #b:Lcom/google/protobuf/ByteString;
    :goto_f
    return-object v2

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_10
    check-cast v1, Lcom/google/protobuf/ByteString;

    .end local v1           #ref:Ljava/lang/Object;
    move-object v2, v1

    goto :goto_f
.end method

.method private getPhotoUrlBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 11202
    iget-object v1, p0, Lcom/google/feedreader/extrpc/Client$Friend;->photoUrl_:Ljava/lang/Object;

    .line 11203
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_10

    .line 11204
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 11206
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$Friend;->photoUrl_:Ljava/lang/Object;

    move-object v2, v0

    .line 11209
    .end local v0           #b:Lcom/google/protobuf/ByteString;
    :goto_f
    return-object v2

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_10
    check-cast v1, Lcom/google/protobuf/ByteString;

    .end local v1           #ref:Ljava/lang/Object;
    move-object v2, v1

    goto :goto_f
.end method

.method private getProfileCardParamsBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 11432
    iget-object v1, p0, Lcom/google/feedreader/extrpc/Client$Friend;->profileCardParams_:Ljava/lang/Object;

    .line 11433
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_10

    .line 11434
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 11436
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$Friend;->profileCardParams_:Ljava/lang/Object;

    move-object v2, v0

    .line 11439
    .end local v0           #b:Lcom/google/protobuf/ByteString;
    :goto_f
    return-object v2

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_10
    check-cast v1, Lcom/google/protobuf/ByteString;

    .end local v1           #ref:Ljava/lang/Object;
    move-object v2, v1

    goto :goto_f
.end method

.method private getStreamBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 11280
    iget-object v1, p0, Lcom/google/feedreader/extrpc/Client$Friend;->stream_:Ljava/lang/Object;

    .line 11281
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_10

    .line 11282
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 11284
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$Friend;->stream_:Ljava/lang/Object;

    move-object v2, v0

    .line 11287
    .end local v0           #b:Lcom/google/protobuf/ByteString;
    :goto_f
    return-object v2

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_10
    check-cast v1, Lcom/google/protobuf/ByteString;

    .end local v1           #ref:Ljava/lang/Object;
    move-object v2, v1

    goto :goto_f
.end method

.method private initFields()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 11521
    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$Friend;->userIds_:Lcom/google/protobuf/LazyStringList;

    .line 11522
    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$Friend;->profileIds_:Lcom/google/protobuf/LazyStringList;

    .line 11523
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/feedreader/extrpc/Client$Friend;->contactId_:J

    .line 11524
    const-string v0, ""

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$Friend;->photoUrl_:Ljava/lang/Object;

    .line 11525
    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$Friend;->emailAddresses_:Lcom/google/protobuf/LazyStringList;

    .line 11526
    const-string v0, ""

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$Friend;->location_:Ljava/lang/Object;

    .line 11527
    const-string v0, ""

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$Friend;->stream_:Ljava/lang/Object;

    .line 11528
    iput v2, p0, Lcom/google/feedreader/extrpc/Client$Friend;->flags_:I

    .line 11529
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$Friend;->types_:Ljava/util/List;

    .line 11530
    const-string v0, ""

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$Friend;->displayName_:Ljava/lang/Object;

    .line 11531
    const-string v0, ""

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$Friend;->givenName_:Ljava/lang/Object;

    .line 11532
    const-string v0, ""

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$Friend;->n_:Ljava/lang/Object;

    .line 11533
    const-string v0, ""

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$Friend;->profileCardParams_:Ljava/lang/Object;

    .line 11534
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$Friend;->groupId_:Ljava/util/List;

    .line 11535
    const-string v0, ""

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$Friend;->occupation_:Ljava/lang/Object;

    .line 11536
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$Friend;->websites_:Ljava/util/List;

    .line 11537
    iput-boolean v2, p0, Lcom/google/feedreader/extrpc/Client$Friend;->hasSharedItemsOnProfile_:Z

    .line 11538
    return-void
.end method

.method public static newBuilder()Lcom/google/feedreader/extrpc/Client$Friend$Builder;
    .registers 1

    .prologue
    .line 11807
    #calls: Lcom/google/feedreader/extrpc/Client$Friend$Builder;->create()Lcom/google/feedreader/extrpc/Client$Friend$Builder;
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$Friend$Builder;->access$13900()Lcom/google/feedreader/extrpc/Client$Friend$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/feedreader/extrpc/Client$Friend;)Lcom/google/feedreader/extrpc/Client$Friend$Builder;
    .registers 2
    .parameter "prototype"

    .prologue
    .line 11810
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$Friend;->newBuilder()Lcom/google/feedreader/extrpc/Client$Friend$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/feedreader/extrpc/Client$Friend$Builder;->mergeFrom(Lcom/google/feedreader/extrpc/Client$Friend;)Lcom/google/feedreader/extrpc/Client$Friend$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/feedreader/extrpc/Client$Friend;
    .registers 3
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 11776
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$Friend;->newBuilder()Lcom/google/feedreader/extrpc/Client$Friend$Builder;

    move-result-object v0

    .line 11777
    .local v0, builder:Lcom/google/feedreader/extrpc/Client$Friend$Builder;
    invoke-virtual {v0, p0}, Lcom/google/feedreader/extrpc/Client$Friend$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 11778
    #calls: Lcom/google/feedreader/extrpc/Client$Friend$Builder;->buildParsed()Lcom/google/feedreader/extrpc/Client$Friend;
    invoke-static {v0}, Lcom/google/feedreader/extrpc/Client$Friend$Builder;->access$13800(Lcom/google/feedreader/extrpc/Client$Friend$Builder;)Lcom/google/feedreader/extrpc/Client$Friend;

    move-result-object v1

    .line 11780
    :goto_e
    return-object v1

    :cond_f
    const/4 v1, 0x0

    goto :goto_e
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/feedreader/extrpc/Client$Friend;
    .registers 4
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 11787
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$Friend;->newBuilder()Lcom/google/feedreader/extrpc/Client$Friend$Builder;

    move-result-object v0

    .line 11788
    .local v0, builder:Lcom/google/feedreader/extrpc/Client$Friend$Builder;
    invoke-virtual {v0, p0, p1}, Lcom/google/feedreader/extrpc/Client$Friend$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 11789
    #calls: Lcom/google/feedreader/extrpc/Client$Friend$Builder;->buildParsed()Lcom/google/feedreader/extrpc/Client$Friend;
    invoke-static {v0}, Lcom/google/feedreader/extrpc/Client$Friend$Builder;->access$13800(Lcom/google/feedreader/extrpc/Client$Friend$Builder;)Lcom/google/feedreader/extrpc/Client$Friend;

    move-result-object v1

    .line 11791
    :goto_e
    return-object v1

    :cond_f
    const/4 v1, 0x0

    goto :goto_e
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/feedreader/extrpc/Client$Friend;
    .registers 2
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 11743
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$Friend;->newBuilder()Lcom/google/feedreader/extrpc/Client$Friend$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/feedreader/extrpc/Client$Friend$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/feedreader/extrpc/Client$Friend$Builder;

    #calls: Lcom/google/feedreader/extrpc/Client$Friend$Builder;->buildParsed()Lcom/google/feedreader/extrpc/Client$Friend;
    invoke-static {p0}, Lcom/google/feedreader/extrpc/Client$Friend$Builder;->access$13800(Lcom/google/feedreader/extrpc/Client$Friend$Builder;)Lcom/google/feedreader/extrpc/Client$Friend;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/feedreader/extrpc/Client$Friend;
    .registers 3
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 11749
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$Friend;->newBuilder()Lcom/google/feedreader/extrpc/Client$Friend$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/feedreader/extrpc/Client$Friend$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/feedreader/extrpc/Client$Friend$Builder;

    #calls: Lcom/google/feedreader/extrpc/Client$Friend$Builder;->buildParsed()Lcom/google/feedreader/extrpc/Client$Friend;
    invoke-static {p0}, Lcom/google/feedreader/extrpc/Client$Friend$Builder;->access$13800(Lcom/google/feedreader/extrpc/Client$Friend$Builder;)Lcom/google/feedreader/extrpc/Client$Friend;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/feedreader/extrpc/Client$Friend;
    .registers 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 11797
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$Friend;->newBuilder()Lcom/google/feedreader/extrpc/Client$Friend$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/feedreader/extrpc/Client$Friend$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/feedreader/extrpc/Client$Friend$Builder;

    #calls: Lcom/google/feedreader/extrpc/Client$Friend$Builder;->buildParsed()Lcom/google/feedreader/extrpc/Client$Friend;
    invoke-static {p0}, Lcom/google/feedreader/extrpc/Client$Friend$Builder;->access$13800(Lcom/google/feedreader/extrpc/Client$Friend$Builder;)Lcom/google/feedreader/extrpc/Client$Friend;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/feedreader/extrpc/Client$Friend;
    .registers 3
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 11803
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$Friend;->newBuilder()Lcom/google/feedreader/extrpc/Client$Friend$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/feedreader/extrpc/Client$Friend$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/feedreader/extrpc/Client$Friend$Builder;

    move-result-object v0

    #calls: Lcom/google/feedreader/extrpc/Client$Friend$Builder;->buildParsed()Lcom/google/feedreader/extrpc/Client$Friend;
    invoke-static {v0}, Lcom/google/feedreader/extrpc/Client$Friend$Builder;->access$13800(Lcom/google/feedreader/extrpc/Client$Friend$Builder;)Lcom/google/feedreader/extrpc/Client$Friend;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/feedreader/extrpc/Client$Friend;
    .registers 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 11765
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$Friend;->newBuilder()Lcom/google/feedreader/extrpc/Client$Friend$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/feedreader/extrpc/Client$Friend$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/feedreader/extrpc/Client$Friend$Builder;

    #calls: Lcom/google/feedreader/extrpc/Client$Friend$Builder;->buildParsed()Lcom/google/feedreader/extrpc/Client$Friend;
    invoke-static {p0}, Lcom/google/feedreader/extrpc/Client$Friend$Builder;->access$13800(Lcom/google/feedreader/extrpc/Client$Friend$Builder;)Lcom/google/feedreader/extrpc/Client$Friend;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/feedreader/extrpc/Client$Friend;
    .registers 3
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 11771
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$Friend;->newBuilder()Lcom/google/feedreader/extrpc/Client$Friend$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/feedreader/extrpc/Client$Friend$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/feedreader/extrpc/Client$Friend$Builder;

    #calls: Lcom/google/feedreader/extrpc/Client$Friend$Builder;->buildParsed()Lcom/google/feedreader/extrpc/Client$Friend;
    invoke-static {p0}, Lcom/google/feedreader/extrpc/Client$Friend$Builder;->access$13800(Lcom/google/feedreader/extrpc/Client$Friend$Builder;)Lcom/google/feedreader/extrpc/Client$Friend;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/feedreader/extrpc/Client$Friend;
    .registers 2
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 11754
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$Friend;->newBuilder()Lcom/google/feedreader/extrpc/Client$Friend$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/feedreader/extrpc/Client$Friend$Builder;->mergeFrom([B)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/feedreader/extrpc/Client$Friend$Builder;

    #calls: Lcom/google/feedreader/extrpc/Client$Friend$Builder;->buildParsed()Lcom/google/feedreader/extrpc/Client$Friend;
    invoke-static {p0}, Lcom/google/feedreader/extrpc/Client$Friend$Builder;->access$13800(Lcom/google/feedreader/extrpc/Client$Friend$Builder;)Lcom/google/feedreader/extrpc/Client$Friend;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/feedreader/extrpc/Client$Friend;
    .registers 3
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 11760
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$Friend;->newBuilder()Lcom/google/feedreader/extrpc/Client$Friend$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/feedreader/extrpc/Client$Friend$Builder;->mergeFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/feedreader/extrpc/Client$Friend$Builder;

    #calls: Lcom/google/feedreader/extrpc/Client$Friend$Builder;->buildParsed()Lcom/google/feedreader/extrpc/Client$Friend;
    invoke-static {p0}, Lcom/google/feedreader/extrpc/Client$Friend$Builder;->access$13800(Lcom/google/feedreader/extrpc/Client$Friend$Builder;)Lcom/google/feedreader/extrpc/Client$Friend;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getContactId()J
    .registers 3

    .prologue
    .line 11178
    iget-wide v0, p0, Lcom/google/feedreader/extrpc/Client$Friend;->contactId_:J

    return-wide v0
.end method

.method public getDefaultInstanceForType()Lcom/google/feedreader/extrpc/Client$Friend;
    .registers 2

    .prologue
    .line 10709
    sget-object v0, Lcom/google/feedreader/extrpc/Client$Friend;->defaultInstance:Lcom/google/feedreader/extrpc/Client$Friend;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 10694
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$Friend;->getDefaultInstanceForType()Lcom/google/feedreader/extrpc/Client$Friend;

    move-result-object v0

    return-object v0
.end method

.method public getDisplayName()Ljava/lang/String;
    .registers 6

    .prologue
    .line 11322
    iget-object v2, p0, Lcom/google/feedreader/extrpc/Client$Friend;->displayName_:Ljava/lang/Object;

    .line 11323
    .local v2, ref:Ljava/lang/Object;
    instance-of v4, v2, Ljava/lang/String;

    if-eqz v4, :cond_a

    .line 11324
    check-cast v2, Ljava/lang/String;

    .end local v2           #ref:Ljava/lang/Object;
    move-object v4, v2

    .line 11332
    :goto_9
    return-object v4

    .line 11326
    .restart local v2       #ref:Ljava/lang/Object;
    :cond_a
    move-object v0, v2

    check-cast v0, Lcom/google/protobuf/ByteString;

    move-object v1, v0

    .line 11328
    .local v1, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v3

    .line 11329
    .local v3, s:Ljava/lang/String;
    invoke-static {v1}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v4

    if-eqz v4, :cond_1a

    .line 11330
    iput-object v3, p0, Lcom/google/feedreader/extrpc/Client$Friend;->displayName_:Ljava/lang/Object;

    :cond_1a
    move-object v4, v3

    .line 11332
    goto :goto_9
.end method

.method public getEmailAddresses(I)Ljava/lang/String;
    .registers 3
    .parameter "index"

    .prologue
    .line 11224
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$Friend;->emailAddresses_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public getEmailAddressesCount()I
    .registers 2

    .prologue
    .line 11221
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$Friend;->emailAddresses_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/google/protobuf/LazyStringList;->size()I

    move-result v0

    return v0
.end method

.method public getEmailAddressesList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 11218
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$Friend;->emailAddresses_:Lcom/google/protobuf/LazyStringList;

    return-object v0
.end method

.method public getFlags()I
    .registers 2

    .prologue
    .line 11298
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$Friend;->flags_:I

    return v0
.end method

.method public getGivenName()Ljava/lang/String;
    .registers 6

    .prologue
    .line 11354
    iget-object v2, p0, Lcom/google/feedreader/extrpc/Client$Friend;->givenName_:Ljava/lang/Object;

    .line 11355
    .local v2, ref:Ljava/lang/Object;
    instance-of v4, v2, Ljava/lang/String;

    if-eqz v4, :cond_a

    .line 11356
    check-cast v2, Ljava/lang/String;

    .end local v2           #ref:Ljava/lang/Object;
    move-object v4, v2

    .line 11364
    :goto_9
    return-object v4

    .line 11358
    .restart local v2       #ref:Ljava/lang/Object;
    :cond_a
    move-object v0, v2

    check-cast v0, Lcom/google/protobuf/ByteString;

    move-object v1, v0

    .line 11360
    .local v1, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v3

    .line 11361
    .local v3, s:Ljava/lang/String;
    invoke-static {v1}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v4

    if-eqz v4, :cond_1a

    .line 11362
    iput-object v3, p0, Lcom/google/feedreader/extrpc/Client$Friend;->givenName_:Ljava/lang/Object;

    :cond_1a
    move-object v4, v3

    .line 11364
    goto :goto_9
.end method

.method public getGroupId(I)J
    .registers 4
    .parameter "index"

    .prologue
    .line 11454
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$Friend;->groupId_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public getGroupIdCount()I
    .registers 2

    .prologue
    .line 11451
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$Friend;->groupId_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getGroupIdList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 11448
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$Friend;->groupId_:Ljava/util/List;

    return-object v0
.end method

.method public getHasSharedItemsOnProfile()Z
    .registers 2

    .prologue
    .line 11517
    iget-boolean v0, p0, Lcom/google/feedreader/extrpc/Client$Friend;->hasSharedItemsOnProfile_:Z

    return v0
.end method

.method public getLocation()Ljava/lang/String;
    .registers 6

    .prologue
    .line 11234
    iget-object v2, p0, Lcom/google/feedreader/extrpc/Client$Friend;->location_:Ljava/lang/Object;

    .line 11235
    .local v2, ref:Ljava/lang/Object;
    instance-of v4, v2, Ljava/lang/String;

    if-eqz v4, :cond_a

    .line 11236
    check-cast v2, Ljava/lang/String;

    .end local v2           #ref:Ljava/lang/Object;
    move-object v4, v2

    .line 11244
    :goto_9
    return-object v4

    .line 11238
    .restart local v2       #ref:Ljava/lang/Object;
    :cond_a
    move-object v0, v2

    check-cast v0, Lcom/google/protobuf/ByteString;

    move-object v1, v0

    .line 11240
    .local v1, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v3

    .line 11241
    .local v3, s:Ljava/lang/String;
    invoke-static {v1}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v4

    if-eqz v4, :cond_1a

    .line 11242
    iput-object v3, p0, Lcom/google/feedreader/extrpc/Client$Friend;->location_:Ljava/lang/Object;

    :cond_1a
    move-object v4, v3

    .line 11244
    goto :goto_9
.end method

.method public getN()Ljava/lang/String;
    .registers 6

    .prologue
    .line 11386
    iget-object v2, p0, Lcom/google/feedreader/extrpc/Client$Friend;->n_:Ljava/lang/Object;

    .line 11387
    .local v2, ref:Ljava/lang/Object;
    instance-of v4, v2, Ljava/lang/String;

    if-eqz v4, :cond_a

    .line 11388
    check-cast v2, Ljava/lang/String;

    .end local v2           #ref:Ljava/lang/Object;
    move-object v4, v2

    .line 11396
    :goto_9
    return-object v4

    .line 11390
    .restart local v2       #ref:Ljava/lang/Object;
    :cond_a
    move-object v0, v2

    check-cast v0, Lcom/google/protobuf/ByteString;

    move-object v1, v0

    .line 11392
    .local v1, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v3

    .line 11393
    .local v3, s:Ljava/lang/String;
    invoke-static {v1}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v4

    if-eqz v4, :cond_1a

    .line 11394
    iput-object v3, p0, Lcom/google/feedreader/extrpc/Client$Friend;->n_:Ljava/lang/Object;

    :cond_1a
    move-object v4, v3

    .line 11396
    goto :goto_9
.end method

.method public getOccupation()Ljava/lang/String;
    .registers 6

    .prologue
    .line 11464
    iget-object v2, p0, Lcom/google/feedreader/extrpc/Client$Friend;->occupation_:Ljava/lang/Object;

    .line 11465
    .local v2, ref:Ljava/lang/Object;
    instance-of v4, v2, Ljava/lang/String;

    if-eqz v4, :cond_a

    .line 11466
    check-cast v2, Ljava/lang/String;

    .end local v2           #ref:Ljava/lang/Object;
    move-object v4, v2

    .line 11474
    :goto_9
    return-object v4

    .line 11468
    .restart local v2       #ref:Ljava/lang/Object;
    :cond_a
    move-object v0, v2

    check-cast v0, Lcom/google/protobuf/ByteString;

    move-object v1, v0

    .line 11470
    .local v1, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v3

    .line 11471
    .local v3, s:Ljava/lang/String;
    invoke-static {v1}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v4

    if-eqz v4, :cond_1a

    .line 11472
    iput-object v3, p0, Lcom/google/feedreader/extrpc/Client$Friend;->occupation_:Ljava/lang/Object;

    :cond_1a
    move-object v4, v3

    .line 11474
    goto :goto_9
.end method

.method public getPhotoUrl()Ljava/lang/String;
    .registers 6

    .prologue
    .line 11188
    iget-object v2, p0, Lcom/google/feedreader/extrpc/Client$Friend;->photoUrl_:Ljava/lang/Object;

    .line 11189
    .local v2, ref:Ljava/lang/Object;
    instance-of v4, v2, Ljava/lang/String;

    if-eqz v4, :cond_a

    .line 11190
    check-cast v2, Ljava/lang/String;

    .end local v2           #ref:Ljava/lang/Object;
    move-object v4, v2

    .line 11198
    :goto_9
    return-object v4

    .line 11192
    .restart local v2       #ref:Ljava/lang/Object;
    :cond_a
    move-object v0, v2

    check-cast v0, Lcom/google/protobuf/ByteString;

    move-object v1, v0

    .line 11194
    .local v1, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v3

    .line 11195
    .local v3, s:Ljava/lang/String;
    invoke-static {v1}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v4

    if-eqz v4, :cond_1a

    .line 11196
    iput-object v3, p0, Lcom/google/feedreader/extrpc/Client$Friend;->photoUrl_:Ljava/lang/Object;

    :cond_1a
    move-object v4, v3

    .line 11198
    goto :goto_9
.end method

.method public getProfileCardParams()Ljava/lang/String;
    .registers 6

    .prologue
    .line 11418
    iget-object v2, p0, Lcom/google/feedreader/extrpc/Client$Friend;->profileCardParams_:Ljava/lang/Object;

    .line 11419
    .local v2, ref:Ljava/lang/Object;
    instance-of v4, v2, Ljava/lang/String;

    if-eqz v4, :cond_a

    .line 11420
    check-cast v2, Ljava/lang/String;

    .end local v2           #ref:Ljava/lang/Object;
    move-object v4, v2

    .line 11428
    :goto_9
    return-object v4

    .line 11422
    .restart local v2       #ref:Ljava/lang/Object;
    :cond_a
    move-object v0, v2

    check-cast v0, Lcom/google/protobuf/ByteString;

    move-object v1, v0

    .line 11424
    .local v1, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v3

    .line 11425
    .local v3, s:Ljava/lang/String;
    invoke-static {v1}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v4

    if-eqz v4, :cond_1a

    .line 11426
    iput-object v3, p0, Lcom/google/feedreader/extrpc/Client$Friend;->profileCardParams_:Ljava/lang/Object;

    :cond_1a
    move-object v4, v3

    .line 11428
    goto :goto_9
.end method

.method public getProfileIds(I)Ljava/lang/String;
    .registers 3
    .parameter "index"

    .prologue
    .line 11168
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$Friend;->profileIds_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public getProfileIdsCount()I
    .registers 2

    .prologue
    .line 11165
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$Friend;->profileIds_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/google/protobuf/LazyStringList;->size()I

    move-result v0

    return v0
.end method

.method public getProfileIdsList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 11162
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$Friend;->profileIds_:Lcom/google/protobuf/LazyStringList;

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 11

    .prologue
    const/16 v9, 0x10

    const/16 v8, 0x8

    const/4 v7, 0x4

    .line 11632
    iget v2, p0, Lcom/google/feedreader/extrpc/Client$Friend;->memoizedSerializedSize:I

    .line 11633
    .local v2, size:I
    const/4 v4, -0x1

    if-eq v2, v4, :cond_c

    move v3, v2

    .line 11730
    .end local v2           #size:I
    .local v3, size:I
    :goto_b
    return v3

    .line 11635
    .end local v3           #size:I
    .restart local v2       #size:I
    :cond_c
    const/4 v2, 0x0

    .line 11637
    const/4 v0, 0x0

    .line 11638
    .local v0, dataSize:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_f
    iget-object v4, p0, Lcom/google/feedreader/extrpc/Client$Friend;->userIds_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v4}, Lcom/google/protobuf/LazyStringList;->size()I

    move-result v4

    if-ge v1, v4, :cond_25

    .line 11639
    iget-object v4, p0, Lcom/google/feedreader/extrpc/Client$Friend;->userIds_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v4, v1}, Lcom/google/protobuf/LazyStringList;->getByteString(I)Lcom/google/protobuf/ByteString;

    move-result-object v4

    invoke-static {v4}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSizeNoTag(Lcom/google/protobuf/ByteString;)I

    move-result v4

    add-int/2addr v0, v4

    .line 11638
    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    .line 11642
    :cond_25
    add-int/2addr v2, v0

    .line 11643
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$Friend;->getUserIdsList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    mul-int/lit8 v4, v4, 0x1

    add-int/2addr v2, v4

    .line 11646
    const/4 v0, 0x0

    .line 11647
    const/4 v1, 0x0

    :goto_33
    iget-object v4, p0, Lcom/google/feedreader/extrpc/Client$Friend;->profileIds_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v4}, Lcom/google/protobuf/LazyStringList;->size()I

    move-result v4

    if-ge v1, v4, :cond_49

    .line 11648
    iget-object v4, p0, Lcom/google/feedreader/extrpc/Client$Friend;->profileIds_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v4, v1}, Lcom/google/protobuf/LazyStringList;->getByteString(I)Lcom/google/protobuf/ByteString;

    move-result-object v4

    invoke-static {v4}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSizeNoTag(Lcom/google/protobuf/ByteString;)I

    move-result v4

    add-int/2addr v0, v4

    .line 11647
    add-int/lit8 v1, v1, 0x1

    goto :goto_33

    .line 11651
    :cond_49
    add-int/2addr v2, v0

    .line 11652
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$Friend;->getProfileIdsList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    mul-int/lit8 v4, v4, 0x1

    add-int/2addr v2, v4

    .line 11654
    iget v4, p0, Lcom/google/feedreader/extrpc/Client$Friend;->bitField0_:I

    and-int/lit8 v4, v4, 0x1

    const/4 v5, 0x1

    if-ne v4, v5, :cond_64

    .line 11655
    const/4 v4, 0x3

    iget-wide v5, p0, Lcom/google/feedreader/extrpc/Client$Friend;->contactId_:J

    invoke-static {v4, v5, v6}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v4

    add-int/2addr v2, v4

    .line 11658
    :cond_64
    iget v4, p0, Lcom/google/feedreader/extrpc/Client$Friend;->bitField0_:I

    and-int/lit8 v4, v4, 0x2

    const/4 v5, 0x2

    if-ne v4, v5, :cond_74

    .line 11659
    invoke-direct {p0}, Lcom/google/feedreader/extrpc/Client$Friend;->getPhotoUrlBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    invoke-static {v7, v4}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v4

    add-int/2addr v2, v4

    .line 11663
    :cond_74
    const/4 v0, 0x0

    .line 11664
    const/4 v1, 0x0

    :goto_76
    iget-object v4, p0, Lcom/google/feedreader/extrpc/Client$Friend;->emailAddresses_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v4}, Lcom/google/protobuf/LazyStringList;->size()I

    move-result v4

    if-ge v1, v4, :cond_8c

    .line 11665
    iget-object v4, p0, Lcom/google/feedreader/extrpc/Client$Friend;->emailAddresses_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v4, v1}, Lcom/google/protobuf/LazyStringList;->getByteString(I)Lcom/google/protobuf/ByteString;

    move-result-object v4

    invoke-static {v4}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSizeNoTag(Lcom/google/protobuf/ByteString;)I

    move-result v4

    add-int/2addr v0, v4

    .line 11664
    add-int/lit8 v1, v1, 0x1

    goto :goto_76

    .line 11668
    :cond_8c
    add-int/2addr v2, v0

    .line 11669
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$Friend;->getEmailAddressesList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    mul-int/lit8 v4, v4, 0x1

    add-int/2addr v2, v4

    .line 11671
    iget v4, p0, Lcom/google/feedreader/extrpc/Client$Friend;->bitField0_:I

    and-int/lit8 v4, v4, 0x4

    if-ne v4, v7, :cond_a8

    .line 11672
    const/4 v4, 0x6

    invoke-direct {p0}, Lcom/google/feedreader/extrpc/Client$Friend;->getLocationBytes()Lcom/google/protobuf/ByteString;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v4

    add-int/2addr v2, v4

    .line 11675
    :cond_a8
    iget v4, p0, Lcom/google/feedreader/extrpc/Client$Friend;->bitField0_:I

    and-int/lit8 v4, v4, 0x8

    if-ne v4, v8, :cond_b8

    .line 11676
    const/4 v4, 0x7

    invoke-direct {p0}, Lcom/google/feedreader/extrpc/Client$Friend;->getStreamBytes()Lcom/google/protobuf/ByteString;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v4

    add-int/2addr v2, v4

    .line 11679
    :cond_b8
    iget v4, p0, Lcom/google/feedreader/extrpc/Client$Friend;->bitField0_:I

    and-int/lit8 v4, v4, 0x10

    if-ne v4, v9, :cond_c5

    .line 11680
    iget v4, p0, Lcom/google/feedreader/extrpc/Client$Friend;->flags_:I

    invoke-static {v8, v4}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v4

    add-int/2addr v2, v4

    .line 11684
    :cond_c5
    const/4 v0, 0x0

    .line 11685
    const/4 v1, 0x0

    :goto_c7
    iget-object v4, p0, Lcom/google/feedreader/extrpc/Client$Friend;->types_:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_e3

    .line 11686
    iget-object v4, p0, Lcom/google/feedreader/extrpc/Client$Friend;->types_:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v4}, Lcom/google/protobuf/CodedOutputStream;->computeInt32SizeNoTag(I)I

    move-result v4

    add-int/2addr v0, v4

    .line 11685
    add-int/lit8 v1, v1, 0x1

    goto :goto_c7

    .line 11689
    :cond_e3
    add-int/2addr v2, v0

    .line 11690
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$Friend;->getTypesList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    mul-int/lit8 v4, v4, 0x1

    add-int/2addr v2, v4

    .line 11692
    iget v4, p0, Lcom/google/feedreader/extrpc/Client$Friend;->bitField0_:I

    and-int/lit8 v4, v4, 0x20

    const/16 v5, 0x20

    if-ne v4, v5, :cond_102

    .line 11693
    const/16 v4, 0xa

    invoke-direct {p0}, Lcom/google/feedreader/extrpc/Client$Friend;->getDisplayNameBytes()Lcom/google/protobuf/ByteString;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v4

    add-int/2addr v2, v4

    .line 11696
    :cond_102
    iget v4, p0, Lcom/google/feedreader/extrpc/Client$Friend;->bitField0_:I

    and-int/lit8 v4, v4, 0x40

    const/16 v5, 0x40

    if-ne v4, v5, :cond_115

    .line 11697
    const/16 v4, 0xb

    invoke-direct {p0}, Lcom/google/feedreader/extrpc/Client$Friend;->getGivenNameBytes()Lcom/google/protobuf/ByteString;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v4

    add-int/2addr v2, v4

    .line 11700
    :cond_115
    iget v4, p0, Lcom/google/feedreader/extrpc/Client$Friend;->bitField0_:I

    and-int/lit16 v4, v4, 0x80

    const/16 v5, 0x80

    if-ne v4, v5, :cond_128

    .line 11701
    const/16 v4, 0xc

    invoke-direct {p0}, Lcom/google/feedreader/extrpc/Client$Friend;->getNBytes()Lcom/google/protobuf/ByteString;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v4

    add-int/2addr v2, v4

    .line 11704
    :cond_128
    iget v4, p0, Lcom/google/feedreader/extrpc/Client$Friend;->bitField0_:I

    and-int/lit16 v4, v4, 0x100

    const/16 v5, 0x100

    if-ne v4, v5, :cond_13b

    .line 11705
    const/16 v4, 0xd

    invoke-direct {p0}, Lcom/google/feedreader/extrpc/Client$Friend;->getProfileCardParamsBytes()Lcom/google/protobuf/ByteString;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v4

    add-int/2addr v2, v4

    .line 11709
    :cond_13b
    const/4 v0, 0x0

    .line 11710
    const/4 v1, 0x0

    :goto_13d
    iget-object v4, p0, Lcom/google/feedreader/extrpc/Client$Friend;->groupId_:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_159

    .line 11711
    iget-object v4, p0, Lcom/google/feedreader/extrpc/Client$Friend;->groupId_:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/google/protobuf/CodedOutputStream;->computeInt64SizeNoTag(J)I

    move-result v4

    add-int/2addr v0, v4

    .line 11710
    add-int/lit8 v1, v1, 0x1

    goto :goto_13d

    .line 11714
    :cond_159
    add-int/2addr v2, v0

    .line 11715
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$Friend;->getGroupIdList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    mul-int/lit8 v4, v4, 0x1

    add-int/2addr v2, v4

    .line 11717
    iget v4, p0, Lcom/google/feedreader/extrpc/Client$Friend;->bitField0_:I

    and-int/lit16 v4, v4, 0x200

    const/16 v5, 0x200

    if-ne v4, v5, :cond_178

    .line 11718
    const/16 v4, 0xf

    invoke-direct {p0}, Lcom/google/feedreader/extrpc/Client$Friend;->getOccupationBytes()Lcom/google/protobuf/ByteString;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v4

    add-int/2addr v2, v4

    .line 11721
    :cond_178
    const/4 v1, 0x0

    :goto_179
    iget-object v4, p0, Lcom/google/feedreader/extrpc/Client$Friend;->websites_:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_191

    .line 11722
    iget-object v4, p0, Lcom/google/feedreader/extrpc/Client$Friend;->websites_:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/protobuf/MessageLite;

    invoke-static {v9, v4}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v4

    add-int/2addr v2, v4

    .line 11721
    add-int/lit8 v1, v1, 0x1

    goto :goto_179

    .line 11725
    :cond_191
    iget v4, p0, Lcom/google/feedreader/extrpc/Client$Friend;->bitField0_:I

    and-int/lit16 v4, v4, 0x400

    const/16 v5, 0x400

    if-ne v4, v5, :cond_1a2

    .line 11726
    const/16 v4, 0x11

    iget-boolean v5, p0, Lcom/google/feedreader/extrpc/Client$Friend;->hasSharedItemsOnProfile_:Z

    invoke-static {v4, v5}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v4

    add-int/2addr v2, v4

    .line 11729
    :cond_1a2
    iput v2, p0, Lcom/google/feedreader/extrpc/Client$Friend;->memoizedSerializedSize:I

    move v3, v2

    .line 11730
    .end local v2           #size:I
    .restart local v3       #size:I
    goto/16 :goto_b
.end method

.method public getStream()Ljava/lang/String;
    .registers 6

    .prologue
    .line 11266
    iget-object v2, p0, Lcom/google/feedreader/extrpc/Client$Friend;->stream_:Ljava/lang/Object;

    .line 11267
    .local v2, ref:Ljava/lang/Object;
    instance-of v4, v2, Ljava/lang/String;

    if-eqz v4, :cond_a

    .line 11268
    check-cast v2, Ljava/lang/String;

    .end local v2           #ref:Ljava/lang/Object;
    move-object v4, v2

    .line 11276
    :goto_9
    return-object v4

    .line 11270
    .restart local v2       #ref:Ljava/lang/Object;
    :cond_a
    move-object v0, v2

    check-cast v0, Lcom/google/protobuf/ByteString;

    move-object v1, v0

    .line 11272
    .local v1, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v3

    .line 11273
    .local v3, s:Ljava/lang/String;
    invoke-static {v1}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v4

    if-eqz v4, :cond_1a

    .line 11274
    iput-object v3, p0, Lcom/google/feedreader/extrpc/Client$Friend;->stream_:Ljava/lang/Object;

    :cond_1a
    move-object v4, v3

    .line 11276
    goto :goto_9
.end method

.method public getTypes(I)I
    .registers 3
    .parameter "index"

    .prologue
    .line 11312
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$Friend;->types_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getTypesCount()I
    .registers 2

    .prologue
    .line 11309
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$Friend;->types_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getTypesList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 11306
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$Friend;->types_:Ljava/util/List;

    return-object v0
.end method

.method public getUserIds(I)Ljava/lang/String;
    .registers 3
    .parameter "index"

    .prologue
    .line 11154
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$Friend;->userIds_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public getUserIdsCount()I
    .registers 2

    .prologue
    .line 11151
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$Friend;->userIds_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/google/protobuf/LazyStringList;->size()I

    move-result v0

    return v0
.end method

.method public getUserIdsList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 11148
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$Friend;->userIds_:Lcom/google/protobuf/LazyStringList;

    return-object v0
.end method

.method public getWebsites(I)Lcom/google/feedreader/extrpc/Client$Friend$Website;
    .registers 3
    .parameter "index"

    .prologue
    .line 11503
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$Friend;->websites_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/feedreader/extrpc/Client$Friend$Website;

    return-object p0
.end method

.method public getWebsitesCount()I
    .registers 2

    .prologue
    .line 11500
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$Friend;->websites_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getWebsitesList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/feedreader/extrpc/Client$Friend$Website;",
            ">;"
        }
    .end annotation

    .prologue
    .line 11493
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$Friend;->websites_:Ljava/util/List;

    return-object v0
.end method

.method public getWebsitesOrBuilder(I)Lcom/google/feedreader/extrpc/Client$Friend$WebsiteOrBuilder;
    .registers 3
    .parameter "index"

    .prologue
    .line 11507
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$Friend;->websites_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/feedreader/extrpc/Client$Friend$WebsiteOrBuilder;

    return-object p0
.end method

.method public getWebsitesOrBuilderList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lcom/google/feedreader/extrpc/Client$Friend$WebsiteOrBuilder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 11497
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$Friend;->websites_:Ljava/util/List;

    return-object v0
.end method

.method public hasContactId()Z
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 11175
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$Friend;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_9

    move v0, v1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public hasDisplayName()Z
    .registers 3

    .prologue
    .line 11319
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$Friend;->bitField0_:I

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

.method public hasFlags()Z
    .registers 3

    .prologue
    .line 11295
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$Friend;->bitField0_:I

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

.method public hasGivenName()Z
    .registers 3

    .prologue
    .line 11351
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$Friend;->bitField0_:I

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

.method public hasHasSharedItemsOnProfile()Z
    .registers 3

    .prologue
    .line 11514
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$Friend;->bitField0_:I

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

.method public hasLocation()Z
    .registers 3

    .prologue
    .line 11231
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$Friend;->bitField0_:I

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

.method public hasN()Z
    .registers 3

    .prologue
    .line 11383
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$Friend;->bitField0_:I

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

.method public hasOccupation()Z
    .registers 3

    .prologue
    .line 11461
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$Friend;->bitField0_:I

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

.method public hasPhotoUrl()Z
    .registers 3

    .prologue
    .line 11185
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$Friend;->bitField0_:I

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

.method public hasProfileCardParams()Z
    .registers 3

    .prologue
    .line 11415
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$Friend;->bitField0_:I

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

.method public hasStream()Z
    .registers 3

    .prologue
    .line 11263
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$Friend;->bitField0_:I

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
    .registers 6

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 11541
    iget-byte v1, p0, Lcom/google/feedreader/extrpc/Client$Friend;->memoizedIsInitialized:B

    .line 11542
    .local v1, isInitialized:B
    const/4 v2, -0x1

    if-eq v1, v2, :cond_d

    if-ne v1, v4, :cond_b

    move v2, v4

    .line 11571
    :goto_a
    return v2

    :cond_b
    move v2, v3

    .line 11542
    goto :goto_a

    .line 11544
    :cond_d
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$Friend;->hasContactId()Z

    move-result v2

    if-nez v2, :cond_17

    .line 11545
    iput-byte v3, p0, Lcom/google/feedreader/extrpc/Client$Friend;->memoizedIsInitialized:B

    move v2, v3

    .line 11546
    goto :goto_a

    .line 11548
    :cond_17
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$Friend;->hasDisplayName()Z

    move-result v2

    if-nez v2, :cond_21

    .line 11549
    iput-byte v3, p0, Lcom/google/feedreader/extrpc/Client$Friend;->memoizedIsInitialized:B

    move v2, v3

    .line 11550
    goto :goto_a

    .line 11552
    :cond_21
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$Friend;->hasGivenName()Z

    move-result v2

    if-nez v2, :cond_2b

    .line 11553
    iput-byte v3, p0, Lcom/google/feedreader/extrpc/Client$Friend;->memoizedIsInitialized:B

    move v2, v3

    .line 11554
    goto :goto_a

    .line 11556
    :cond_2b
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$Friend;->hasN()Z

    move-result v2

    if-nez v2, :cond_35

    .line 11557
    iput-byte v3, p0, Lcom/google/feedreader/extrpc/Client$Friend;->memoizedIsInitialized:B

    move v2, v3

    .line 11558
    goto :goto_a

    .line 11560
    :cond_35
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$Friend;->hasProfileCardParams()Z

    move-result v2

    if-nez v2, :cond_3f

    .line 11561
    iput-byte v3, p0, Lcom/google/feedreader/extrpc/Client$Friend;->memoizedIsInitialized:B

    move v2, v3

    .line 11562
    goto :goto_a

    .line 11564
    :cond_3f
    const/4 v0, 0x0

    .local v0, i:I
    :goto_40
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$Friend;->getWebsitesCount()I

    move-result v2

    if-ge v0, v2, :cond_57

    .line 11565
    invoke-virtual {p0, v0}, Lcom/google/feedreader/extrpc/Client$Friend;->getWebsites(I)Lcom/google/feedreader/extrpc/Client$Friend$Website;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/feedreader/extrpc/Client$Friend$Website;->isInitialized()Z

    move-result v2

    if-nez v2, :cond_54

    .line 11566
    iput-byte v3, p0, Lcom/google/feedreader/extrpc/Client$Friend;->memoizedIsInitialized:B

    move v2, v3

    .line 11567
    goto :goto_a

    .line 11564
    :cond_54
    add-int/lit8 v0, v0, 0x1

    goto :goto_40

    .line 11570
    :cond_57
    iput-byte v4, p0, Lcom/google/feedreader/extrpc/Client$Friend;->memoizedIsInitialized:B

    move v2, v4

    .line 11571
    goto :goto_a
.end method

.method public newBuilderForType()Lcom/google/feedreader/extrpc/Client$Friend$Builder;
    .registers 2

    .prologue
    .line 11808
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$Friend;->newBuilder()Lcom/google/feedreader/extrpc/Client$Friend$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 10694
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$Friend;->newBuilderForType()Lcom/google/feedreader/extrpc/Client$Friend$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/feedreader/extrpc/Client$Friend$Builder;
    .registers 2

    .prologue
    .line 11812
    invoke-static {p0}, Lcom/google/feedreader/extrpc/Client$Friend;->newBuilder(Lcom/google/feedreader/extrpc/Client$Friend;)Lcom/google/feedreader/extrpc/Client$Friend$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 10694
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$Friend;->toBuilder()Lcom/google/feedreader/extrpc/Client$Friend$Builder;

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
    .line 11737
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->writeReplace()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .registers 9
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v6, 0x8

    const/4 v4, 0x4

    const/4 v3, 0x2

    const/4 v2, 0x1

    const/4 v5, 0x0

    .line 11576
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$Friend;->getSerializedSize()I

    move v0, v5

    .line 11577
    :goto_a
    iget-object v1, p0, Lcom/google/feedreader/extrpc/Client$Friend;->userIds_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v1}, Lcom/google/protobuf/LazyStringList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1e

    .line 11578
    iget-object v1, p0, Lcom/google/feedreader/extrpc/Client$Friend;->userIds_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v1, v0}, Lcom/google/protobuf/LazyStringList;->getByteString(I)Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 11577
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    :cond_1e
    move v0, v5

    .line 11580
    :goto_1f
    iget-object v1, p0, Lcom/google/feedreader/extrpc/Client$Friend;->profileIds_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v1}, Lcom/google/protobuf/LazyStringList;->size()I

    move-result v1

    if-ge v0, v1, :cond_33

    .line 11581
    iget-object v1, p0, Lcom/google/feedreader/extrpc/Client$Friend;->profileIds_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v1, v0}, Lcom/google/protobuf/LazyStringList;->getByteString(I)Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v3, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 11580
    add-int/lit8 v0, v0, 0x1

    goto :goto_1f

    .line 11583
    :cond_33
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$Friend;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v2, :cond_3f

    .line 11584
    const/4 v0, 0x3

    iget-wide v1, p0, Lcom/google/feedreader/extrpc/Client$Friend;->contactId_:J

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 11586
    :cond_3f
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$Friend;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v3, :cond_4c

    .line 11587
    invoke-direct {p0}, Lcom/google/feedreader/extrpc/Client$Friend;->getPhotoUrlBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v4, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    :cond_4c
    move v0, v5

    .line 11589
    :goto_4d
    iget-object v1, p0, Lcom/google/feedreader/extrpc/Client$Friend;->emailAddresses_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v1}, Lcom/google/protobuf/LazyStringList;->size()I

    move-result v1

    if-ge v0, v1, :cond_62

    .line 11590
    const/4 v1, 0x5

    iget-object v2, p0, Lcom/google/feedreader/extrpc/Client$Friend;->emailAddresses_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v2, v0}, Lcom/google/protobuf/LazyStringList;->getByteString(I)Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 11589
    add-int/lit8 v0, v0, 0x1

    goto :goto_4d

    .line 11592
    :cond_62
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$Friend;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-ne v0, v4, :cond_70

    .line 11593
    const/4 v0, 0x6

    invoke-direct {p0}, Lcom/google/feedreader/extrpc/Client$Friend;->getLocationBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 11595
    :cond_70
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$Friend;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-ne v0, v6, :cond_7e

    .line 11596
    const/4 v0, 0x7

    invoke-direct {p0}, Lcom/google/feedreader/extrpc/Client$Friend;->getStreamBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 11598
    :cond_7e
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$Friend;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_8b

    .line 11599
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$Friend;->flags_:I

    invoke-virtual {p1, v6, v0}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    :cond_8b
    move v1, v5

    .line 11601
    :goto_8c
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$Friend;->types_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_a9

    .line 11602
    const/16 v2, 0x9

    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$Friend;->types_:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 11601
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_8c

    .line 11604
    :cond_a9
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$Friend;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_ba

    .line 11605
    const/16 v0, 0xa

    invoke-direct {p0}, Lcom/google/feedreader/extrpc/Client$Friend;->getDisplayNameBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 11607
    :cond_ba
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$Friend;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

    const/16 v1, 0x40

    if-ne v0, v1, :cond_cb

    .line 11608
    const/16 v0, 0xb

    invoke-direct {p0}, Lcom/google/feedreader/extrpc/Client$Friend;->getGivenNameBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 11610
    :cond_cb
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$Friend;->bitField0_:I

    and-int/lit16 v0, v0, 0x80

    const/16 v1, 0x80

    if-ne v0, v1, :cond_dc

    .line 11611
    const/16 v0, 0xc

    invoke-direct {p0}, Lcom/google/feedreader/extrpc/Client$Friend;->getNBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 11613
    :cond_dc
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$Friend;->bitField0_:I

    and-int/lit16 v0, v0, 0x100

    const/16 v1, 0x100

    if-ne v0, v1, :cond_ed

    .line 11614
    const/16 v0, 0xd

    invoke-direct {p0}, Lcom/google/feedreader/extrpc/Client$Friend;->getProfileCardParamsBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    :cond_ed
    move v1, v5

    .line 11616
    :goto_ee
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$Friend;->groupId_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_10b

    .line 11617
    const/16 v2, 0xe

    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$Friend;->groupId_:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {p1, v2, v3, v4}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 11616
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_ee

    .line 11619
    :cond_10b
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$Friend;->bitField0_:I

    and-int/lit16 v0, v0, 0x200

    const/16 v1, 0x200

    if-ne v0, v1, :cond_11c

    .line 11620
    const/16 v0, 0xf

    invoke-direct {p0}, Lcom/google/feedreader/extrpc/Client$Friend;->getOccupationBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    :cond_11c
    move v1, v5

    .line 11622
    :goto_11d
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$Friend;->websites_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_136

    .line 11623
    const/16 v2, 0x10

    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$Friend;->websites_:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/MessageLite;

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 11622
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_11d

    .line 11625
    :cond_136
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$Friend;->bitField0_:I

    and-int/lit16 v0, v0, 0x400

    const/16 v1, 0x400

    if-ne v0, v1, :cond_145

    .line 11626
    const/16 v0, 0x11

    iget-boolean v1, p0, Lcom/google/feedreader/extrpc/Client$Friend;->hasSharedItemsOnProfile_:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 11628
    :cond_145
    return-void
.end method
