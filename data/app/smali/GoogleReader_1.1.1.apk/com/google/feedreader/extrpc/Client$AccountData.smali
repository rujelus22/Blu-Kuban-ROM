.class public final Lcom/google/feedreader/extrpc/Client$AccountData;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Client.java"

# interfaces
.implements Lcom/google/feedreader/extrpc/Client$AccountDataOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/feedreader/extrpc/Client;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AccountData"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/feedreader/extrpc/Client$AccountData$Builder;
    }
.end annotation


# static fields
.field public static final FRIENDSLIST_FIELD_NUMBER:I = 0x2

.field public static final PREFS_FIELD_NUMBER:I = 0x5

.field public static final STREAMPREFS_FIELD_NUMBER:I = 0x6

.field public static final SUBSCRIPTIONLIST_FIELD_NUMBER:I = 0x3

.field public static final UNREADCOUNTS_FIELD_NUMBER:I = 0x4

.field public static final USERINFO_FIELD_NUMBER:I = 0x1

.field private static final defaultInstance:Lcom/google/feedreader/extrpc/Client$AccountData;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private friendsList_:Lcom/google/feedreader/extrpc/Client$FriendsList;

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private prefs_:Lcom/google/feedreader/extrpc/Client$PrefsContent;

.field private streamPrefs_:Lcom/google/feedreader/extrpc/Client$StreamPrefsContent;

.field private subscriptionList_:Lcom/google/feedreader/extrpc/Client$SubscriptionList;

.field private unreadCounts_:Lcom/google/feedreader/extrpc/Client$UnreadCountsContent;

.field private userInfo_:Lcom/google/feedreader/extrpc/Client$UserInfo;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 19178
    new-instance v0, Lcom/google/feedreader/extrpc/Client$AccountData;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/feedreader/extrpc/Client$AccountData;-><init>(Z)V

    sput-object v0, Lcom/google/feedreader/extrpc/Client$AccountData;->defaultInstance:Lcom/google/feedreader/extrpc/Client$AccountData;

    .line 19179
    sget-object v0, Lcom/google/feedreader/extrpc/Client$AccountData;->defaultInstance:Lcom/google/feedreader/extrpc/Client$AccountData;

    invoke-direct {v0}, Lcom/google/feedreader/extrpc/Client$AccountData;->initFields()V

    .line 19180
    return-void
.end method

.method private constructor <init>(Lcom/google/feedreader/extrpc/Client$AccountData$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 18397
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 18479
    iput-byte v0, p0, Lcom/google/feedreader/extrpc/Client$AccountData;->memoizedIsInitialized:B

    .line 18559
    iput v0, p0, Lcom/google/feedreader/extrpc/Client$AccountData;->memoizedSerializedSize:I

    .line 18398
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/feedreader/extrpc/Client$AccountData$Builder;Lcom/google/feedreader/extrpc/Client$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 18392
    invoke-direct {p0, p1}, Lcom/google/feedreader/extrpc/Client$AccountData;-><init>(Lcom/google/feedreader/extrpc/Client$AccountData$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 18399
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 18479
    iput-byte v0, p0, Lcom/google/feedreader/extrpc/Client$AccountData;->memoizedIsInitialized:B

    .line 18559
    iput v0, p0, Lcom/google/feedreader/extrpc/Client$AccountData;->memoizedSerializedSize:I

    .line 18399
    return-void
.end method

.method static synthetic access$23002(Lcom/google/feedreader/extrpc/Client$AccountData;Lcom/google/feedreader/extrpc/Client$UserInfo;)Lcom/google/feedreader/extrpc/Client$UserInfo;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 18392
    iput-object p1, p0, Lcom/google/feedreader/extrpc/Client$AccountData;->userInfo_:Lcom/google/feedreader/extrpc/Client$UserInfo;

    return-object p1
.end method

.method static synthetic access$23102(Lcom/google/feedreader/extrpc/Client$AccountData;Lcom/google/feedreader/extrpc/Client$FriendsList;)Lcom/google/feedreader/extrpc/Client$FriendsList;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 18392
    iput-object p1, p0, Lcom/google/feedreader/extrpc/Client$AccountData;->friendsList_:Lcom/google/feedreader/extrpc/Client$FriendsList;

    return-object p1
.end method

.method static synthetic access$23202(Lcom/google/feedreader/extrpc/Client$AccountData;Lcom/google/feedreader/extrpc/Client$SubscriptionList;)Lcom/google/feedreader/extrpc/Client$SubscriptionList;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 18392
    iput-object p1, p0, Lcom/google/feedreader/extrpc/Client$AccountData;->subscriptionList_:Lcom/google/feedreader/extrpc/Client$SubscriptionList;

    return-object p1
.end method

.method static synthetic access$23302(Lcom/google/feedreader/extrpc/Client$AccountData;Lcom/google/feedreader/extrpc/Client$UnreadCountsContent;)Lcom/google/feedreader/extrpc/Client$UnreadCountsContent;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 18392
    iput-object p1, p0, Lcom/google/feedreader/extrpc/Client$AccountData;->unreadCounts_:Lcom/google/feedreader/extrpc/Client$UnreadCountsContent;

    return-object p1
.end method

.method static synthetic access$23402(Lcom/google/feedreader/extrpc/Client$AccountData;Lcom/google/feedreader/extrpc/Client$PrefsContent;)Lcom/google/feedreader/extrpc/Client$PrefsContent;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 18392
    iput-object p1, p0, Lcom/google/feedreader/extrpc/Client$AccountData;->prefs_:Lcom/google/feedreader/extrpc/Client$PrefsContent;

    return-object p1
.end method

.method static synthetic access$23502(Lcom/google/feedreader/extrpc/Client$AccountData;Lcom/google/feedreader/extrpc/Client$StreamPrefsContent;)Lcom/google/feedreader/extrpc/Client$StreamPrefsContent;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 18392
    iput-object p1, p0, Lcom/google/feedreader/extrpc/Client$AccountData;->streamPrefs_:Lcom/google/feedreader/extrpc/Client$StreamPrefsContent;

    return-object p1
.end method

.method static synthetic access$23602(Lcom/google/feedreader/extrpc/Client$AccountData;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 18392
    iput p1, p0, Lcom/google/feedreader/extrpc/Client$AccountData;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/feedreader/extrpc/Client$AccountData;
    .registers 1

    .prologue
    .line 18403
    sget-object v0, Lcom/google/feedreader/extrpc/Client$AccountData;->defaultInstance:Lcom/google/feedreader/extrpc/Client$AccountData;

    return-object v0
.end method

.method private initFields()V
    .registers 2

    .prologue
    .line 18472
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$UserInfo;->getDefaultInstance()Lcom/google/feedreader/extrpc/Client$UserInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$AccountData;->userInfo_:Lcom/google/feedreader/extrpc/Client$UserInfo;

    .line 18473
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$FriendsList;->getDefaultInstance()Lcom/google/feedreader/extrpc/Client$FriendsList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$AccountData;->friendsList_:Lcom/google/feedreader/extrpc/Client$FriendsList;

    .line 18474
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$SubscriptionList;->getDefaultInstance()Lcom/google/feedreader/extrpc/Client$SubscriptionList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$AccountData;->subscriptionList_:Lcom/google/feedreader/extrpc/Client$SubscriptionList;

    .line 18475
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$UnreadCountsContent;->getDefaultInstance()Lcom/google/feedreader/extrpc/Client$UnreadCountsContent;

    move-result-object v0

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$AccountData;->unreadCounts_:Lcom/google/feedreader/extrpc/Client$UnreadCountsContent;

    .line 18476
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$PrefsContent;->getDefaultInstance()Lcom/google/feedreader/extrpc/Client$PrefsContent;

    move-result-object v0

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$AccountData;->prefs_:Lcom/google/feedreader/extrpc/Client$PrefsContent;

    .line 18477
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$StreamPrefsContent;->getDefaultInstance()Lcom/google/feedreader/extrpc/Client$StreamPrefsContent;

    move-result-object v0

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$AccountData;->streamPrefs_:Lcom/google/feedreader/extrpc/Client$StreamPrefsContent;

    .line 18478
    return-void
.end method

.method public static newBuilder()Lcom/google/feedreader/extrpc/Client$AccountData$Builder;
    .registers 1

    .prologue
    .line 18667
    #calls: Lcom/google/feedreader/extrpc/Client$AccountData$Builder;->create()Lcom/google/feedreader/extrpc/Client$AccountData$Builder;
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$AccountData$Builder;->access$22800()Lcom/google/feedreader/extrpc/Client$AccountData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/feedreader/extrpc/Client$AccountData;)Lcom/google/feedreader/extrpc/Client$AccountData$Builder;
    .registers 2
    .parameter "prototype"

    .prologue
    .line 18670
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$AccountData;->newBuilder()Lcom/google/feedreader/extrpc/Client$AccountData$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/feedreader/extrpc/Client$AccountData$Builder;->mergeFrom(Lcom/google/feedreader/extrpc/Client$AccountData;)Lcom/google/feedreader/extrpc/Client$AccountData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/feedreader/extrpc/Client$AccountData;
    .registers 3
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 18636
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$AccountData;->newBuilder()Lcom/google/feedreader/extrpc/Client$AccountData$Builder;

    move-result-object v0

    .line 18637
    .local v0, builder:Lcom/google/feedreader/extrpc/Client$AccountData$Builder;
    invoke-virtual {v0, p0}, Lcom/google/feedreader/extrpc/Client$AccountData$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 18638
    #calls: Lcom/google/feedreader/extrpc/Client$AccountData$Builder;->buildParsed()Lcom/google/feedreader/extrpc/Client$AccountData;
    invoke-static {v0}, Lcom/google/feedreader/extrpc/Client$AccountData$Builder;->access$22700(Lcom/google/feedreader/extrpc/Client$AccountData$Builder;)Lcom/google/feedreader/extrpc/Client$AccountData;

    move-result-object v1

    .line 18640
    :goto_e
    return-object v1

    :cond_f
    const/4 v1, 0x0

    goto :goto_e
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/feedreader/extrpc/Client$AccountData;
    .registers 4
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 18647
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$AccountData;->newBuilder()Lcom/google/feedreader/extrpc/Client$AccountData$Builder;

    move-result-object v0

    .line 18648
    .local v0, builder:Lcom/google/feedreader/extrpc/Client$AccountData$Builder;
    invoke-virtual {v0, p0, p1}, Lcom/google/feedreader/extrpc/Client$AccountData$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 18649
    #calls: Lcom/google/feedreader/extrpc/Client$AccountData$Builder;->buildParsed()Lcom/google/feedreader/extrpc/Client$AccountData;
    invoke-static {v0}, Lcom/google/feedreader/extrpc/Client$AccountData$Builder;->access$22700(Lcom/google/feedreader/extrpc/Client$AccountData$Builder;)Lcom/google/feedreader/extrpc/Client$AccountData;

    move-result-object v1

    .line 18651
    :goto_e
    return-object v1

    :cond_f
    const/4 v1, 0x0

    goto :goto_e
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/feedreader/extrpc/Client$AccountData;
    .registers 2
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 18603
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$AccountData;->newBuilder()Lcom/google/feedreader/extrpc/Client$AccountData$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/feedreader/extrpc/Client$AccountData$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/feedreader/extrpc/Client$AccountData$Builder;

    #calls: Lcom/google/feedreader/extrpc/Client$AccountData$Builder;->buildParsed()Lcom/google/feedreader/extrpc/Client$AccountData;
    invoke-static {p0}, Lcom/google/feedreader/extrpc/Client$AccountData$Builder;->access$22700(Lcom/google/feedreader/extrpc/Client$AccountData$Builder;)Lcom/google/feedreader/extrpc/Client$AccountData;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/feedreader/extrpc/Client$AccountData;
    .registers 3
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 18609
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$AccountData;->newBuilder()Lcom/google/feedreader/extrpc/Client$AccountData$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/feedreader/extrpc/Client$AccountData$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/feedreader/extrpc/Client$AccountData$Builder;

    #calls: Lcom/google/feedreader/extrpc/Client$AccountData$Builder;->buildParsed()Lcom/google/feedreader/extrpc/Client$AccountData;
    invoke-static {p0}, Lcom/google/feedreader/extrpc/Client$AccountData$Builder;->access$22700(Lcom/google/feedreader/extrpc/Client$AccountData$Builder;)Lcom/google/feedreader/extrpc/Client$AccountData;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/feedreader/extrpc/Client$AccountData;
    .registers 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 18657
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$AccountData;->newBuilder()Lcom/google/feedreader/extrpc/Client$AccountData$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/feedreader/extrpc/Client$AccountData$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/feedreader/extrpc/Client$AccountData$Builder;

    #calls: Lcom/google/feedreader/extrpc/Client$AccountData$Builder;->buildParsed()Lcom/google/feedreader/extrpc/Client$AccountData;
    invoke-static {p0}, Lcom/google/feedreader/extrpc/Client$AccountData$Builder;->access$22700(Lcom/google/feedreader/extrpc/Client$AccountData$Builder;)Lcom/google/feedreader/extrpc/Client$AccountData;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/feedreader/extrpc/Client$AccountData;
    .registers 3
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 18663
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$AccountData;->newBuilder()Lcom/google/feedreader/extrpc/Client$AccountData$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/feedreader/extrpc/Client$AccountData$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/feedreader/extrpc/Client$AccountData$Builder;

    move-result-object v0

    #calls: Lcom/google/feedreader/extrpc/Client$AccountData$Builder;->buildParsed()Lcom/google/feedreader/extrpc/Client$AccountData;
    invoke-static {v0}, Lcom/google/feedreader/extrpc/Client$AccountData$Builder;->access$22700(Lcom/google/feedreader/extrpc/Client$AccountData$Builder;)Lcom/google/feedreader/extrpc/Client$AccountData;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/feedreader/extrpc/Client$AccountData;
    .registers 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 18625
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$AccountData;->newBuilder()Lcom/google/feedreader/extrpc/Client$AccountData$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/feedreader/extrpc/Client$AccountData$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/feedreader/extrpc/Client$AccountData$Builder;

    #calls: Lcom/google/feedreader/extrpc/Client$AccountData$Builder;->buildParsed()Lcom/google/feedreader/extrpc/Client$AccountData;
    invoke-static {p0}, Lcom/google/feedreader/extrpc/Client$AccountData$Builder;->access$22700(Lcom/google/feedreader/extrpc/Client$AccountData$Builder;)Lcom/google/feedreader/extrpc/Client$AccountData;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/feedreader/extrpc/Client$AccountData;
    .registers 3
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 18631
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$AccountData;->newBuilder()Lcom/google/feedreader/extrpc/Client$AccountData$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/feedreader/extrpc/Client$AccountData$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/feedreader/extrpc/Client$AccountData$Builder;

    #calls: Lcom/google/feedreader/extrpc/Client$AccountData$Builder;->buildParsed()Lcom/google/feedreader/extrpc/Client$AccountData;
    invoke-static {p0}, Lcom/google/feedreader/extrpc/Client$AccountData$Builder;->access$22700(Lcom/google/feedreader/extrpc/Client$AccountData$Builder;)Lcom/google/feedreader/extrpc/Client$AccountData;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/feedreader/extrpc/Client$AccountData;
    .registers 2
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 18614
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$AccountData;->newBuilder()Lcom/google/feedreader/extrpc/Client$AccountData$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/feedreader/extrpc/Client$AccountData$Builder;->mergeFrom([B)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/feedreader/extrpc/Client$AccountData$Builder;

    #calls: Lcom/google/feedreader/extrpc/Client$AccountData$Builder;->buildParsed()Lcom/google/feedreader/extrpc/Client$AccountData;
    invoke-static {p0}, Lcom/google/feedreader/extrpc/Client$AccountData$Builder;->access$22700(Lcom/google/feedreader/extrpc/Client$AccountData$Builder;)Lcom/google/feedreader/extrpc/Client$AccountData;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/feedreader/extrpc/Client$AccountData;
    .registers 3
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 18620
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$AccountData;->newBuilder()Lcom/google/feedreader/extrpc/Client$AccountData$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/feedreader/extrpc/Client$AccountData$Builder;->mergeFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/feedreader/extrpc/Client$AccountData$Builder;

    #calls: Lcom/google/feedreader/extrpc/Client$AccountData$Builder;->buildParsed()Lcom/google/feedreader/extrpc/Client$AccountData;
    invoke-static {p0}, Lcom/google/feedreader/extrpc/Client$AccountData$Builder;->access$22700(Lcom/google/feedreader/extrpc/Client$AccountData$Builder;)Lcom/google/feedreader/extrpc/Client$AccountData;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getDefaultInstanceForType()Lcom/google/feedreader/extrpc/Client$AccountData;
    .registers 2

    .prologue
    .line 18407
    sget-object v0, Lcom/google/feedreader/extrpc/Client$AccountData;->defaultInstance:Lcom/google/feedreader/extrpc/Client$AccountData;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 18392
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$AccountData;->getDefaultInstanceForType()Lcom/google/feedreader/extrpc/Client$AccountData;

    move-result-object v0

    return-object v0
.end method

.method public getFriendsList()Lcom/google/feedreader/extrpc/Client$FriendsList;
    .registers 2

    .prologue
    .line 18428
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$AccountData;->friendsList_:Lcom/google/feedreader/extrpc/Client$FriendsList;

    return-object v0
.end method

.method public getPrefs()Lcom/google/feedreader/extrpc/Client$PrefsContent;
    .registers 2

    .prologue
    .line 18458
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$AccountData;->prefs_:Lcom/google/feedreader/extrpc/Client$PrefsContent;

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 7

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 18561
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$AccountData;->memoizedSerializedSize:I

    .line 18562
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_a

    move v1, v0

    .line 18590
    .end local v0           #size:I
    .local v1, size:I
    :goto_9
    return v1

    .line 18564
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_a
    const/4 v0, 0x0

    .line 18565
    iget v2, p0, Lcom/google/feedreader/extrpc/Client$AccountData;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_18

    .line 18566
    iget-object v2, p0, Lcom/google/feedreader/extrpc/Client$AccountData;->userInfo_:Lcom/google/feedreader/extrpc/Client$UserInfo;

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 18569
    :cond_18
    iget v2, p0, Lcom/google/feedreader/extrpc/Client$AccountData;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-ne v2, v4, :cond_25

    .line 18570
    iget-object v2, p0, Lcom/google/feedreader/extrpc/Client$AccountData;->friendsList_:Lcom/google/feedreader/extrpc/Client$FriendsList;

    invoke-static {v4, v2}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 18573
    :cond_25
    iget v2, p0, Lcom/google/feedreader/extrpc/Client$AccountData;->bitField0_:I

    and-int/lit8 v2, v2, 0x4

    if-ne v2, v5, :cond_33

    .line 18574
    const/4 v2, 0x3

    iget-object v3, p0, Lcom/google/feedreader/extrpc/Client$AccountData;->subscriptionList_:Lcom/google/feedreader/extrpc/Client$SubscriptionList;

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 18577
    :cond_33
    iget v2, p0, Lcom/google/feedreader/extrpc/Client$AccountData;->bitField0_:I

    and-int/lit8 v2, v2, 0x8

    const/16 v3, 0x8

    if-ne v2, v3, :cond_42

    .line 18578
    iget-object v2, p0, Lcom/google/feedreader/extrpc/Client$AccountData;->unreadCounts_:Lcom/google/feedreader/extrpc/Client$UnreadCountsContent;

    invoke-static {v5, v2}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 18581
    :cond_42
    iget v2, p0, Lcom/google/feedreader/extrpc/Client$AccountData;->bitField0_:I

    and-int/lit8 v2, v2, 0x10

    const/16 v3, 0x10

    if-ne v2, v3, :cond_52

    .line 18582
    const/4 v2, 0x5

    iget-object v3, p0, Lcom/google/feedreader/extrpc/Client$AccountData;->prefs_:Lcom/google/feedreader/extrpc/Client$PrefsContent;

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 18585
    :cond_52
    iget v2, p0, Lcom/google/feedreader/extrpc/Client$AccountData;->bitField0_:I

    and-int/lit8 v2, v2, 0x20

    const/16 v3, 0x20

    if-ne v2, v3, :cond_62

    .line 18586
    const/4 v2, 0x6

    iget-object v3, p0, Lcom/google/feedreader/extrpc/Client$AccountData;->streamPrefs_:Lcom/google/feedreader/extrpc/Client$StreamPrefsContent;

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 18589
    :cond_62
    iput v0, p0, Lcom/google/feedreader/extrpc/Client$AccountData;->memoizedSerializedSize:I

    move v1, v0

    .line 18590
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_9
.end method

.method public getStreamPrefs()Lcom/google/feedreader/extrpc/Client$StreamPrefsContent;
    .registers 2

    .prologue
    .line 18468
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$AccountData;->streamPrefs_:Lcom/google/feedreader/extrpc/Client$StreamPrefsContent;

    return-object v0
.end method

.method public getSubscriptionList()Lcom/google/feedreader/extrpc/Client$SubscriptionList;
    .registers 2

    .prologue
    .line 18438
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$AccountData;->subscriptionList_:Lcom/google/feedreader/extrpc/Client$SubscriptionList;

    return-object v0
.end method

.method public getUnreadCounts()Lcom/google/feedreader/extrpc/Client$UnreadCountsContent;
    .registers 2

    .prologue
    .line 18448
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$AccountData;->unreadCounts_:Lcom/google/feedreader/extrpc/Client$UnreadCountsContent;

    return-object v0
.end method

.method public getUserInfo()Lcom/google/feedreader/extrpc/Client$UserInfo;
    .registers 2

    .prologue
    .line 18418
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$AccountData;->userInfo_:Lcom/google/feedreader/extrpc/Client$UserInfo;

    return-object v0
.end method

.method public hasFriendsList()Z
    .registers 3

    .prologue
    .line 18425
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$AccountData;->bitField0_:I

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

.method public hasPrefs()Z
    .registers 3

    .prologue
    .line 18455
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$AccountData;->bitField0_:I

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

.method public hasStreamPrefs()Z
    .registers 3

    .prologue
    .line 18465
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$AccountData;->bitField0_:I

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

.method public hasSubscriptionList()Z
    .registers 3

    .prologue
    .line 18435
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$AccountData;->bitField0_:I

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

.method public hasUnreadCounts()Z
    .registers 3

    .prologue
    .line 18445
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$AccountData;->bitField0_:I

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

.method public hasUserInfo()Z
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 18415
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$AccountData;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_9

    move v0, v1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public final isInitialized()Z
    .registers 5

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 18481
    iget-byte v0, p0, Lcom/google/feedreader/extrpc/Client$AccountData;->memoizedIsInitialized:B

    .line 18482
    .local v0, isInitialized:B
    const/4 v1, -0x1

    if-eq v0, v1, :cond_d

    if-ne v0, v3, :cond_b

    move v1, v3

    .line 18533
    :goto_a
    return v1

    :cond_b
    move v1, v2

    .line 18482
    goto :goto_a

    .line 18484
    :cond_d
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$AccountData;->hasUserInfo()Z

    move-result v1

    if-nez v1, :cond_17

    .line 18485
    iput-byte v2, p0, Lcom/google/feedreader/extrpc/Client$AccountData;->memoizedIsInitialized:B

    move v1, v2

    .line 18486
    goto :goto_a

    .line 18488
    :cond_17
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$AccountData;->hasFriendsList()Z

    move-result v1

    if-nez v1, :cond_21

    .line 18489
    iput-byte v2, p0, Lcom/google/feedreader/extrpc/Client$AccountData;->memoizedIsInitialized:B

    move v1, v2

    .line 18490
    goto :goto_a

    .line 18492
    :cond_21
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$AccountData;->hasSubscriptionList()Z

    move-result v1

    if-nez v1, :cond_2b

    .line 18493
    iput-byte v2, p0, Lcom/google/feedreader/extrpc/Client$AccountData;->memoizedIsInitialized:B

    move v1, v2

    .line 18494
    goto :goto_a

    .line 18496
    :cond_2b
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$AccountData;->hasUnreadCounts()Z

    move-result v1

    if-nez v1, :cond_35

    .line 18497
    iput-byte v2, p0, Lcom/google/feedreader/extrpc/Client$AccountData;->memoizedIsInitialized:B

    move v1, v2

    .line 18498
    goto :goto_a

    .line 18500
    :cond_35
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$AccountData;->hasPrefs()Z

    move-result v1

    if-nez v1, :cond_3f

    .line 18501
    iput-byte v2, p0, Lcom/google/feedreader/extrpc/Client$AccountData;->memoizedIsInitialized:B

    move v1, v2

    .line 18502
    goto :goto_a

    .line 18504
    :cond_3f
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$AccountData;->hasStreamPrefs()Z

    move-result v1

    if-nez v1, :cond_49

    .line 18505
    iput-byte v2, p0, Lcom/google/feedreader/extrpc/Client$AccountData;->memoizedIsInitialized:B

    move v1, v2

    .line 18506
    goto :goto_a

    .line 18508
    :cond_49
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$AccountData;->getUserInfo()Lcom/google/feedreader/extrpc/Client$UserInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/feedreader/extrpc/Client$UserInfo;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_57

    .line 18509
    iput-byte v2, p0, Lcom/google/feedreader/extrpc/Client$AccountData;->memoizedIsInitialized:B

    move v1, v2

    .line 18510
    goto :goto_a

    .line 18512
    :cond_57
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$AccountData;->getFriendsList()Lcom/google/feedreader/extrpc/Client$FriendsList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/feedreader/extrpc/Client$FriendsList;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_65

    .line 18513
    iput-byte v2, p0, Lcom/google/feedreader/extrpc/Client$AccountData;->memoizedIsInitialized:B

    move v1, v2

    .line 18514
    goto :goto_a

    .line 18516
    :cond_65
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$AccountData;->getSubscriptionList()Lcom/google/feedreader/extrpc/Client$SubscriptionList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/feedreader/extrpc/Client$SubscriptionList;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_73

    .line 18517
    iput-byte v2, p0, Lcom/google/feedreader/extrpc/Client$AccountData;->memoizedIsInitialized:B

    move v1, v2

    .line 18518
    goto :goto_a

    .line 18520
    :cond_73
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$AccountData;->getUnreadCounts()Lcom/google/feedreader/extrpc/Client$UnreadCountsContent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/feedreader/extrpc/Client$UnreadCountsContent;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_81

    .line 18521
    iput-byte v2, p0, Lcom/google/feedreader/extrpc/Client$AccountData;->memoizedIsInitialized:B

    move v1, v2

    .line 18522
    goto :goto_a

    .line 18524
    :cond_81
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$AccountData;->getPrefs()Lcom/google/feedreader/extrpc/Client$PrefsContent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/feedreader/extrpc/Client$PrefsContent;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_90

    .line 18525
    iput-byte v2, p0, Lcom/google/feedreader/extrpc/Client$AccountData;->memoizedIsInitialized:B

    move v1, v2

    .line 18526
    goto/16 :goto_a

    .line 18528
    :cond_90
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$AccountData;->getStreamPrefs()Lcom/google/feedreader/extrpc/Client$StreamPrefsContent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/feedreader/extrpc/Client$StreamPrefsContent;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_9f

    .line 18529
    iput-byte v2, p0, Lcom/google/feedreader/extrpc/Client$AccountData;->memoizedIsInitialized:B

    move v1, v2

    .line 18530
    goto/16 :goto_a

    .line 18532
    :cond_9f
    iput-byte v3, p0, Lcom/google/feedreader/extrpc/Client$AccountData;->memoizedIsInitialized:B

    move v1, v3

    .line 18533
    goto/16 :goto_a
.end method

.method public newBuilderForType()Lcom/google/feedreader/extrpc/Client$AccountData$Builder;
    .registers 2

    .prologue
    .line 18668
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$AccountData;->newBuilder()Lcom/google/feedreader/extrpc/Client$AccountData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 18392
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$AccountData;->newBuilderForType()Lcom/google/feedreader/extrpc/Client$AccountData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/feedreader/extrpc/Client$AccountData$Builder;
    .registers 2

    .prologue
    .line 18672
    invoke-static {p0}, Lcom/google/feedreader/extrpc/Client$AccountData;->newBuilder(Lcom/google/feedreader/extrpc/Client$AccountData;)Lcom/google/feedreader/extrpc/Client$AccountData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 18392
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$AccountData;->toBuilder()Lcom/google/feedreader/extrpc/Client$AccountData$Builder;

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
    .line 18597
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

    .line 18538
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$AccountData;->getSerializedSize()I

    .line 18539
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$AccountData;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_11

    .line 18540
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$AccountData;->userInfo_:Lcom/google/feedreader/extrpc/Client$UserInfo;

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 18542
    :cond_11
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$AccountData;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_1c

    .line 18543
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$AccountData;->friendsList_:Lcom/google/feedreader/extrpc/Client$FriendsList;

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 18545
    :cond_1c
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$AccountData;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-ne v0, v3, :cond_28

    .line 18546
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/feedreader/extrpc/Client$AccountData;->subscriptionList_:Lcom/google/feedreader/extrpc/Client$SubscriptionList;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 18548
    :cond_28
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$AccountData;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_35

    .line 18549
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$AccountData;->unreadCounts_:Lcom/google/feedreader/extrpc/Client$UnreadCountsContent;

    invoke-virtual {p1, v3, v0}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 18551
    :cond_35
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$AccountData;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_43

    .line 18552
    const/4 v0, 0x5

    iget-object v1, p0, Lcom/google/feedreader/extrpc/Client$AccountData;->prefs_:Lcom/google/feedreader/extrpc/Client$PrefsContent;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 18554
    :cond_43
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$AccountData;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_51

    .line 18555
    const/4 v0, 0x6

    iget-object v1, p0, Lcom/google/feedreader/extrpc/Client$AccountData;->streamPrefs_:Lcom/google/feedreader/extrpc/Client$StreamPrefsContent;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 18557
    :cond_51
    return-void
.end method
