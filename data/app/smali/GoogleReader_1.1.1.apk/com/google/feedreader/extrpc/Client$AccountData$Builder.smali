.class public final Lcom/google/feedreader/extrpc/Client$AccountData$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Client.java"

# interfaces
.implements Lcom/google/feedreader/extrpc/Client$AccountDataOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/feedreader/extrpc/Client$AccountData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/feedreader/extrpc/Client$AccountData;",
        "Lcom/google/feedreader/extrpc/Client$AccountData$Builder;",
        ">;",
        "Lcom/google/feedreader/extrpc/Client$AccountDataOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private friendsList_:Lcom/google/feedreader/extrpc/Client$FriendsList;

.field private prefs_:Lcom/google/feedreader/extrpc/Client$PrefsContent;

.field private streamPrefs_:Lcom/google/feedreader/extrpc/Client$StreamPrefsContent;

.field private subscriptionList_:Lcom/google/feedreader/extrpc/Client$SubscriptionList;

.field private unreadCounts_:Lcom/google/feedreader/extrpc/Client$UnreadCountsContent;

.field private userInfo_:Lcom/google/feedreader/extrpc/Client$UserInfo;


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 18679
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 18917
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$UserInfo;->getDefaultInstance()Lcom/google/feedreader/extrpc/Client$UserInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$AccountData$Builder;->userInfo_:Lcom/google/feedreader/extrpc/Client$UserInfo;

    .line 18960
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$FriendsList;->getDefaultInstance()Lcom/google/feedreader/extrpc/Client$FriendsList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$AccountData$Builder;->friendsList_:Lcom/google/feedreader/extrpc/Client$FriendsList;

    .line 19003
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$SubscriptionList;->getDefaultInstance()Lcom/google/feedreader/extrpc/Client$SubscriptionList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$AccountData$Builder;->subscriptionList_:Lcom/google/feedreader/extrpc/Client$SubscriptionList;

    .line 19046
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$UnreadCountsContent;->getDefaultInstance()Lcom/google/feedreader/extrpc/Client$UnreadCountsContent;

    move-result-object v0

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$AccountData$Builder;->unreadCounts_:Lcom/google/feedreader/extrpc/Client$UnreadCountsContent;

    .line 19089
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$PrefsContent;->getDefaultInstance()Lcom/google/feedreader/extrpc/Client$PrefsContent;

    move-result-object v0

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$AccountData$Builder;->prefs_:Lcom/google/feedreader/extrpc/Client$PrefsContent;

    .line 19132
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$StreamPrefsContent;->getDefaultInstance()Lcom/google/feedreader/extrpc/Client$StreamPrefsContent;

    move-result-object v0

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$AccountData$Builder;->streamPrefs_:Lcom/google/feedreader/extrpc/Client$StreamPrefsContent;

    .line 18680
    invoke-direct {p0}, Lcom/google/feedreader/extrpc/Client$AccountData$Builder;->maybeForceBuilderInitialization()V

    .line 18681
    return-void
.end method

.method static synthetic access$22700(Lcom/google/feedreader/extrpc/Client$AccountData$Builder;)Lcom/google/feedreader/extrpc/Client$AccountData;
    .registers 2
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 18674
    invoke-direct {p0}, Lcom/google/feedreader/extrpc/Client$AccountData$Builder;->buildParsed()Lcom/google/feedreader/extrpc/Client$AccountData;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$22800()Lcom/google/feedreader/extrpc/Client$AccountData$Builder;
    .registers 1

    .prologue
    .line 18674
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$AccountData$Builder;->create()Lcom/google/feedreader/extrpc/Client$AccountData$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/google/feedreader/extrpc/Client$AccountData;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 18724
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$AccountData$Builder;->buildPartial()Lcom/google/feedreader/extrpc/Client$AccountData;

    move-result-object v0

    .line 18725
    .local v0, result:Lcom/google/feedreader/extrpc/Client$AccountData;
    invoke-virtual {v0}, Lcom/google/feedreader/extrpc/Client$AccountData;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_13

    .line 18726
    invoke-static {v0}, Lcom/google/feedreader/extrpc/Client$AccountData$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v1

    throw v1

    .line 18729
    :cond_13
    return-object v0
.end method

.method private static create()Lcom/google/feedreader/extrpc/Client$AccountData$Builder;
    .registers 1

    .prologue
    .line 18686
    new-instance v0, Lcom/google/feedreader/extrpc/Client$AccountData$Builder;

    invoke-direct {v0}, Lcom/google/feedreader/extrpc/Client$AccountData$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 18684
    return-void
.end method


# virtual methods
.method public build()Lcom/google/feedreader/extrpc/Client$AccountData;
    .registers 3

    .prologue
    .line 18715
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$AccountData$Builder;->buildPartial()Lcom/google/feedreader/extrpc/Client$AccountData;

    move-result-object v0

    .line 18716
    .local v0, result:Lcom/google/feedreader/extrpc/Client$AccountData;
    invoke-virtual {v0}, Lcom/google/feedreader/extrpc/Client$AccountData;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 18717
    invoke-static {v0}, Lcom/google/feedreader/extrpc/Client$AccountData$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 18719
    :cond_f
    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 18674
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$AccountData$Builder;->build()Lcom/google/feedreader/extrpc/Client$AccountData;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/feedreader/extrpc/Client$AccountData;
    .registers 6

    .prologue
    .line 18733
    new-instance v0, Lcom/google/feedreader/extrpc/Client$AccountData;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/feedreader/extrpc/Client$AccountData;-><init>(Lcom/google/feedreader/extrpc/Client$AccountData$Builder;Lcom/google/feedreader/extrpc/Client$1;)V

    .line 18734
    iget v1, p0, Lcom/google/feedreader/extrpc/Client$AccountData$Builder;->bitField0_:I

    .line 18735
    const/4 v2, 0x0

    .line 18736
    and-int/lit8 v3, v1, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_10

    .line 18737
    or-int/lit8 v2, v2, 0x1

    .line 18739
    :cond_10
    iget-object v3, p0, Lcom/google/feedreader/extrpc/Client$AccountData$Builder;->userInfo_:Lcom/google/feedreader/extrpc/Client$UserInfo;

    #setter for: Lcom/google/feedreader/extrpc/Client$AccountData;->userInfo_:Lcom/google/feedreader/extrpc/Client$UserInfo;
    invoke-static {v0, v3}, Lcom/google/feedreader/extrpc/Client$AccountData;->access$23002(Lcom/google/feedreader/extrpc/Client$AccountData;Lcom/google/feedreader/extrpc/Client$UserInfo;)Lcom/google/feedreader/extrpc/Client$UserInfo;

    .line 18740
    and-int/lit8 v3, v1, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1c

    .line 18741
    or-int/lit8 v2, v2, 0x2

    .line 18743
    :cond_1c
    iget-object v3, p0, Lcom/google/feedreader/extrpc/Client$AccountData$Builder;->friendsList_:Lcom/google/feedreader/extrpc/Client$FriendsList;

    #setter for: Lcom/google/feedreader/extrpc/Client$AccountData;->friendsList_:Lcom/google/feedreader/extrpc/Client$FriendsList;
    invoke-static {v0, v3}, Lcom/google/feedreader/extrpc/Client$AccountData;->access$23102(Lcom/google/feedreader/extrpc/Client$AccountData;Lcom/google/feedreader/extrpc/Client$FriendsList;)Lcom/google/feedreader/extrpc/Client$FriendsList;

    .line 18744
    and-int/lit8 v3, v1, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_28

    .line 18745
    or-int/lit8 v2, v2, 0x4

    .line 18747
    :cond_28
    iget-object v3, p0, Lcom/google/feedreader/extrpc/Client$AccountData$Builder;->subscriptionList_:Lcom/google/feedreader/extrpc/Client$SubscriptionList;

    #setter for: Lcom/google/feedreader/extrpc/Client$AccountData;->subscriptionList_:Lcom/google/feedreader/extrpc/Client$SubscriptionList;
    invoke-static {v0, v3}, Lcom/google/feedreader/extrpc/Client$AccountData;->access$23202(Lcom/google/feedreader/extrpc/Client$AccountData;Lcom/google/feedreader/extrpc/Client$SubscriptionList;)Lcom/google/feedreader/extrpc/Client$SubscriptionList;

    .line 18748
    and-int/lit8 v3, v1, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_35

    .line 18749
    or-int/lit8 v2, v2, 0x8

    .line 18751
    :cond_35
    iget-object v3, p0, Lcom/google/feedreader/extrpc/Client$AccountData$Builder;->unreadCounts_:Lcom/google/feedreader/extrpc/Client$UnreadCountsContent;

    #setter for: Lcom/google/feedreader/extrpc/Client$AccountData;->unreadCounts_:Lcom/google/feedreader/extrpc/Client$UnreadCountsContent;
    invoke-static {v0, v3}, Lcom/google/feedreader/extrpc/Client$AccountData;->access$23302(Lcom/google/feedreader/extrpc/Client$AccountData;Lcom/google/feedreader/extrpc/Client$UnreadCountsContent;)Lcom/google/feedreader/extrpc/Client$UnreadCountsContent;

    .line 18752
    and-int/lit8 v3, v1, 0x10

    const/16 v4, 0x10

    if-ne v3, v4, :cond_42

    .line 18753
    or-int/lit8 v2, v2, 0x10

    .line 18755
    :cond_42
    iget-object v3, p0, Lcom/google/feedreader/extrpc/Client$AccountData$Builder;->prefs_:Lcom/google/feedreader/extrpc/Client$PrefsContent;

    #setter for: Lcom/google/feedreader/extrpc/Client$AccountData;->prefs_:Lcom/google/feedreader/extrpc/Client$PrefsContent;
    invoke-static {v0, v3}, Lcom/google/feedreader/extrpc/Client$AccountData;->access$23402(Lcom/google/feedreader/extrpc/Client$AccountData;Lcom/google/feedreader/extrpc/Client$PrefsContent;)Lcom/google/feedreader/extrpc/Client$PrefsContent;

    .line 18756
    and-int/lit8 v1, v1, 0x20

    const/16 v3, 0x20

    if-ne v1, v3, :cond_58

    .line 18757
    or-int/lit8 v1, v2, 0x20

    .line 18759
    :goto_4f
    iget-object v2, p0, Lcom/google/feedreader/extrpc/Client$AccountData$Builder;->streamPrefs_:Lcom/google/feedreader/extrpc/Client$StreamPrefsContent;

    #setter for: Lcom/google/feedreader/extrpc/Client$AccountData;->streamPrefs_:Lcom/google/feedreader/extrpc/Client$StreamPrefsContent;
    invoke-static {v0, v2}, Lcom/google/feedreader/extrpc/Client$AccountData;->access$23502(Lcom/google/feedreader/extrpc/Client$AccountData;Lcom/google/feedreader/extrpc/Client$StreamPrefsContent;)Lcom/google/feedreader/extrpc/Client$StreamPrefsContent;

    .line 18760
    #setter for: Lcom/google/feedreader/extrpc/Client$AccountData;->bitField0_:I
    invoke-static {v0, v1}, Lcom/google/feedreader/extrpc/Client$AccountData;->access$23602(Lcom/google/feedreader/extrpc/Client$AccountData;I)I

    .line 18761
    return-object v0

    :cond_58
    move v1, v2

    goto :goto_4f
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 18674
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$AccountData$Builder;->buildPartial()Lcom/google/feedreader/extrpc/Client$AccountData;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/feedreader/extrpc/Client$AccountData$Builder;
    .registers 2

    .prologue
    .line 18690
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 18691
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$UserInfo;->getDefaultInstance()Lcom/google/feedreader/extrpc/Client$UserInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$AccountData$Builder;->userInfo_:Lcom/google/feedreader/extrpc/Client$UserInfo;

    .line 18692
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$AccountData$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$AccountData$Builder;->bitField0_:I

    .line 18693
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$FriendsList;->getDefaultInstance()Lcom/google/feedreader/extrpc/Client$FriendsList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$AccountData$Builder;->friendsList_:Lcom/google/feedreader/extrpc/Client$FriendsList;

    .line 18694
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$AccountData$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$AccountData$Builder;->bitField0_:I

    .line 18695
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$SubscriptionList;->getDefaultInstance()Lcom/google/feedreader/extrpc/Client$SubscriptionList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$AccountData$Builder;->subscriptionList_:Lcom/google/feedreader/extrpc/Client$SubscriptionList;

    .line 18696
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$AccountData$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$AccountData$Builder;->bitField0_:I

    .line 18697
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$UnreadCountsContent;->getDefaultInstance()Lcom/google/feedreader/extrpc/Client$UnreadCountsContent;

    move-result-object v0

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$AccountData$Builder;->unreadCounts_:Lcom/google/feedreader/extrpc/Client$UnreadCountsContent;

    .line 18698
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$AccountData$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$AccountData$Builder;->bitField0_:I

    .line 18699
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$PrefsContent;->getDefaultInstance()Lcom/google/feedreader/extrpc/Client$PrefsContent;

    move-result-object v0

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$AccountData$Builder;->prefs_:Lcom/google/feedreader/extrpc/Client$PrefsContent;

    .line 18700
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$AccountData$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$AccountData$Builder;->bitField0_:I

    .line 18701
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$StreamPrefsContent;->getDefaultInstance()Lcom/google/feedreader/extrpc/Client$StreamPrefsContent;

    move-result-object v0

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$AccountData$Builder;->streamPrefs_:Lcom/google/feedreader/extrpc/Client$StreamPrefsContent;

    .line 18702
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$AccountData$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$AccountData$Builder;->bitField0_:I

    .line 18703
    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 18674
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$AccountData$Builder;->clear()Lcom/google/feedreader/extrpc/Client$AccountData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 18674
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$AccountData$Builder;->clear()Lcom/google/feedreader/extrpc/Client$AccountData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearFriendsList()Lcom/google/feedreader/extrpc/Client$AccountData$Builder;
    .registers 2

    .prologue
    .line 18996
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$FriendsList;->getDefaultInstance()Lcom/google/feedreader/extrpc/Client$FriendsList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$AccountData$Builder;->friendsList_:Lcom/google/feedreader/extrpc/Client$FriendsList;

    .line 18998
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$AccountData$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$AccountData$Builder;->bitField0_:I

    .line 18999
    return-object p0
.end method

.method public clearPrefs()Lcom/google/feedreader/extrpc/Client$AccountData$Builder;
    .registers 2

    .prologue
    .line 19125
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$PrefsContent;->getDefaultInstance()Lcom/google/feedreader/extrpc/Client$PrefsContent;

    move-result-object v0

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$AccountData$Builder;->prefs_:Lcom/google/feedreader/extrpc/Client$PrefsContent;

    .line 19127
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$AccountData$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$AccountData$Builder;->bitField0_:I

    .line 19128
    return-object p0
.end method

.method public clearStreamPrefs()Lcom/google/feedreader/extrpc/Client$AccountData$Builder;
    .registers 2

    .prologue
    .line 19168
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$StreamPrefsContent;->getDefaultInstance()Lcom/google/feedreader/extrpc/Client$StreamPrefsContent;

    move-result-object v0

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$AccountData$Builder;->streamPrefs_:Lcom/google/feedreader/extrpc/Client$StreamPrefsContent;

    .line 19170
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$AccountData$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$AccountData$Builder;->bitField0_:I

    .line 19171
    return-object p0
.end method

.method public clearSubscriptionList()Lcom/google/feedreader/extrpc/Client$AccountData$Builder;
    .registers 2

    .prologue
    .line 19039
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$SubscriptionList;->getDefaultInstance()Lcom/google/feedreader/extrpc/Client$SubscriptionList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$AccountData$Builder;->subscriptionList_:Lcom/google/feedreader/extrpc/Client$SubscriptionList;

    .line 19041
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$AccountData$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$AccountData$Builder;->bitField0_:I

    .line 19042
    return-object p0
.end method

.method public clearUnreadCounts()Lcom/google/feedreader/extrpc/Client$AccountData$Builder;
    .registers 2

    .prologue
    .line 19082
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$UnreadCountsContent;->getDefaultInstance()Lcom/google/feedreader/extrpc/Client$UnreadCountsContent;

    move-result-object v0

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$AccountData$Builder;->unreadCounts_:Lcom/google/feedreader/extrpc/Client$UnreadCountsContent;

    .line 19084
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$AccountData$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$AccountData$Builder;->bitField0_:I

    .line 19085
    return-object p0
.end method

.method public clearUserInfo()Lcom/google/feedreader/extrpc/Client$AccountData$Builder;
    .registers 2

    .prologue
    .line 18953
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$UserInfo;->getDefaultInstance()Lcom/google/feedreader/extrpc/Client$UserInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$AccountData$Builder;->userInfo_:Lcom/google/feedreader/extrpc/Client$UserInfo;

    .line 18955
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$AccountData$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$AccountData$Builder;->bitField0_:I

    .line 18956
    return-object p0
.end method

.method public clone()Lcom/google/feedreader/extrpc/Client$AccountData$Builder;
    .registers 3

    .prologue
    .line 18707
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$AccountData$Builder;->create()Lcom/google/feedreader/extrpc/Client$AccountData$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$AccountData$Builder;->buildPartial()Lcom/google/feedreader/extrpc/Client$AccountData;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/feedreader/extrpc/Client$AccountData$Builder;->mergeFrom(Lcom/google/feedreader/extrpc/Client$AccountData;)Lcom/google/feedreader/extrpc/Client$AccountData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 18674
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$AccountData$Builder;->clone()Lcom/google/feedreader/extrpc/Client$AccountData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 18674
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$AccountData$Builder;->clone()Lcom/google/feedreader/extrpc/Client$AccountData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 18674
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$AccountData$Builder;->clone()Lcom/google/feedreader/extrpc/Client$AccountData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 18674
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$AccountData$Builder;->clone()Lcom/google/feedreader/extrpc/Client$AccountData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/feedreader/extrpc/Client$AccountData;
    .registers 2

    .prologue
    .line 18711
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$AccountData;->getDefaultInstance()Lcom/google/feedreader/extrpc/Client$AccountData;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 18674
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$AccountData$Builder;->getDefaultInstanceForType()Lcom/google/feedreader/extrpc/Client$AccountData;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 18674
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$AccountData$Builder;->getDefaultInstanceForType()Lcom/google/feedreader/extrpc/Client$AccountData;

    move-result-object v0

    return-object v0
.end method

.method public getFriendsList()Lcom/google/feedreader/extrpc/Client$FriendsList;
    .registers 2

    .prologue
    .line 18965
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$AccountData$Builder;->friendsList_:Lcom/google/feedreader/extrpc/Client$FriendsList;

    return-object v0
.end method

.method public getPrefs()Lcom/google/feedreader/extrpc/Client$PrefsContent;
    .registers 2

    .prologue
    .line 19094
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$AccountData$Builder;->prefs_:Lcom/google/feedreader/extrpc/Client$PrefsContent;

    return-object v0
.end method

.method public getStreamPrefs()Lcom/google/feedreader/extrpc/Client$StreamPrefsContent;
    .registers 2

    .prologue
    .line 19137
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$AccountData$Builder;->streamPrefs_:Lcom/google/feedreader/extrpc/Client$StreamPrefsContent;

    return-object v0
.end method

.method public getSubscriptionList()Lcom/google/feedreader/extrpc/Client$SubscriptionList;
    .registers 2

    .prologue
    .line 19008
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$AccountData$Builder;->subscriptionList_:Lcom/google/feedreader/extrpc/Client$SubscriptionList;

    return-object v0
.end method

.method public getUnreadCounts()Lcom/google/feedreader/extrpc/Client$UnreadCountsContent;
    .registers 2

    .prologue
    .line 19051
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$AccountData$Builder;->unreadCounts_:Lcom/google/feedreader/extrpc/Client$UnreadCountsContent;

    return-object v0
.end method

.method public getUserInfo()Lcom/google/feedreader/extrpc/Client$UserInfo;
    .registers 2

    .prologue
    .line 18922
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$AccountData$Builder;->userInfo_:Lcom/google/feedreader/extrpc/Client$UserInfo;

    return-object v0
.end method

.method public hasFriendsList()Z
    .registers 3

    .prologue
    .line 18962
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$AccountData$Builder;->bitField0_:I

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
    .line 19091
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$AccountData$Builder;->bitField0_:I

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
    .line 19134
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$AccountData$Builder;->bitField0_:I

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
    .line 19005
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$AccountData$Builder;->bitField0_:I

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
    .line 19048
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$AccountData$Builder;->bitField0_:I

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

    .line 18919
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$AccountData$Builder;->bitField0_:I

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
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 18788
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$AccountData$Builder;->hasUserInfo()Z

    move-result v0

    if-nez v0, :cond_9

    move v0, v1

    .line 18836
    :goto_8
    return v0

    .line 18792
    :cond_9
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$AccountData$Builder;->hasFriendsList()Z

    move-result v0

    if-nez v0, :cond_11

    move v0, v1

    .line 18794
    goto :goto_8

    .line 18796
    :cond_11
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$AccountData$Builder;->hasSubscriptionList()Z

    move-result v0

    if-nez v0, :cond_19

    move v0, v1

    .line 18798
    goto :goto_8

    .line 18800
    :cond_19
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$AccountData$Builder;->hasUnreadCounts()Z

    move-result v0

    if-nez v0, :cond_21

    move v0, v1

    .line 18802
    goto :goto_8

    .line 18804
    :cond_21
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$AccountData$Builder;->hasPrefs()Z

    move-result v0

    if-nez v0, :cond_29

    move v0, v1

    .line 18806
    goto :goto_8

    .line 18808
    :cond_29
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$AccountData$Builder;->hasStreamPrefs()Z

    move-result v0

    if-nez v0, :cond_31

    move v0, v1

    .line 18810
    goto :goto_8

    .line 18812
    :cond_31
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$AccountData$Builder;->getUserInfo()Lcom/google/feedreader/extrpc/Client$UserInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/feedreader/extrpc/Client$UserInfo;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_3d

    move v0, v1

    .line 18814
    goto :goto_8

    .line 18816
    :cond_3d
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$AccountData$Builder;->getFriendsList()Lcom/google/feedreader/extrpc/Client$FriendsList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/feedreader/extrpc/Client$FriendsList;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_49

    move v0, v1

    .line 18818
    goto :goto_8

    .line 18820
    :cond_49
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$AccountData$Builder;->getSubscriptionList()Lcom/google/feedreader/extrpc/Client$SubscriptionList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/feedreader/extrpc/Client$SubscriptionList;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_55

    move v0, v1

    .line 18822
    goto :goto_8

    .line 18824
    :cond_55
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$AccountData$Builder;->getUnreadCounts()Lcom/google/feedreader/extrpc/Client$UnreadCountsContent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/feedreader/extrpc/Client$UnreadCountsContent;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_61

    move v0, v1

    .line 18826
    goto :goto_8

    .line 18828
    :cond_61
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$AccountData$Builder;->getPrefs()Lcom/google/feedreader/extrpc/Client$PrefsContent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/feedreader/extrpc/Client$PrefsContent;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_6d

    move v0, v1

    .line 18830
    goto :goto_8

    .line 18832
    :cond_6d
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$AccountData$Builder;->getStreamPrefs()Lcom/google/feedreader/extrpc/Client$StreamPrefsContent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/feedreader/extrpc/Client$StreamPrefsContent;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_79

    move v0, v1

    .line 18834
    goto :goto_8

    .line 18836
    :cond_79
    const/4 v0, 0x1

    goto :goto_8
.end method

.method public mergeFriendsList(Lcom/google/feedreader/extrpc/Client$FriendsList;)Lcom/google/feedreader/extrpc/Client$AccountData$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 18984
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$AccountData$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_26

    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$AccountData$Builder;->friendsList_:Lcom/google/feedreader/extrpc/Client$FriendsList;

    invoke-static {}, Lcom/google/feedreader/extrpc/Client$FriendsList;->getDefaultInstance()Lcom/google/feedreader/extrpc/Client$FriendsList;

    move-result-object v1

    if-eq v0, v1, :cond_26

    .line 18986
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$AccountData$Builder;->friendsList_:Lcom/google/feedreader/extrpc/Client$FriendsList;

    invoke-static {v0}, Lcom/google/feedreader/extrpc/Client$FriendsList;->newBuilder(Lcom/google/feedreader/extrpc/Client$FriendsList;)Lcom/google/feedreader/extrpc/Client$FriendsList$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/feedreader/extrpc/Client$FriendsList$Builder;->mergeFrom(Lcom/google/feedreader/extrpc/Client$FriendsList;)Lcom/google/feedreader/extrpc/Client$FriendsList$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/feedreader/extrpc/Client$FriendsList$Builder;->buildPartial()Lcom/google/feedreader/extrpc/Client$FriendsList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$AccountData$Builder;->friendsList_:Lcom/google/feedreader/extrpc/Client$FriendsList;

    .line 18992
    :goto_1f
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$AccountData$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$AccountData$Builder;->bitField0_:I

    .line 18993
    return-object p0

    .line 18989
    :cond_26
    iput-object p1, p0, Lcom/google/feedreader/extrpc/Client$AccountData$Builder;->friendsList_:Lcom/google/feedreader/extrpc/Client$FriendsList;

    goto :goto_1f
.end method

.method public mergeFrom(Lcom/google/feedreader/extrpc/Client$AccountData;)Lcom/google/feedreader/extrpc/Client$AccountData$Builder;
    .registers 3
    .parameter

    .prologue
    .line 18765
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$AccountData;->getDefaultInstance()Lcom/google/feedreader/extrpc/Client$AccountData;

    move-result-object v0

    if-ne p1, v0, :cond_8

    move-object v0, p0

    .line 18784
    :goto_7
    return-object v0

    .line 18766
    :cond_8
    invoke-virtual {p1}, Lcom/google/feedreader/extrpc/Client$AccountData;->hasUserInfo()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 18767
    invoke-virtual {p1}, Lcom/google/feedreader/extrpc/Client$AccountData;->getUserInfo()Lcom/google/feedreader/extrpc/Client$UserInfo;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/feedreader/extrpc/Client$AccountData$Builder;->mergeUserInfo(Lcom/google/feedreader/extrpc/Client$UserInfo;)Lcom/google/feedreader/extrpc/Client$AccountData$Builder;

    .line 18769
    :cond_15
    invoke-virtual {p1}, Lcom/google/feedreader/extrpc/Client$AccountData;->hasFriendsList()Z

    move-result v0

    if-eqz v0, :cond_22

    .line 18770
    invoke-virtual {p1}, Lcom/google/feedreader/extrpc/Client$AccountData;->getFriendsList()Lcom/google/feedreader/extrpc/Client$FriendsList;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/feedreader/extrpc/Client$AccountData$Builder;->mergeFriendsList(Lcom/google/feedreader/extrpc/Client$FriendsList;)Lcom/google/feedreader/extrpc/Client$AccountData$Builder;

    .line 18772
    :cond_22
    invoke-virtual {p1}, Lcom/google/feedreader/extrpc/Client$AccountData;->hasSubscriptionList()Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 18773
    invoke-virtual {p1}, Lcom/google/feedreader/extrpc/Client$AccountData;->getSubscriptionList()Lcom/google/feedreader/extrpc/Client$SubscriptionList;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/feedreader/extrpc/Client$AccountData$Builder;->mergeSubscriptionList(Lcom/google/feedreader/extrpc/Client$SubscriptionList;)Lcom/google/feedreader/extrpc/Client$AccountData$Builder;

    .line 18775
    :cond_2f
    invoke-virtual {p1}, Lcom/google/feedreader/extrpc/Client$AccountData;->hasUnreadCounts()Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 18776
    invoke-virtual {p1}, Lcom/google/feedreader/extrpc/Client$AccountData;->getUnreadCounts()Lcom/google/feedreader/extrpc/Client$UnreadCountsContent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/feedreader/extrpc/Client$AccountData$Builder;->mergeUnreadCounts(Lcom/google/feedreader/extrpc/Client$UnreadCountsContent;)Lcom/google/feedreader/extrpc/Client$AccountData$Builder;

    .line 18778
    :cond_3c
    invoke-virtual {p1}, Lcom/google/feedreader/extrpc/Client$AccountData;->hasPrefs()Z

    move-result v0

    if-eqz v0, :cond_49

    .line 18779
    invoke-virtual {p1}, Lcom/google/feedreader/extrpc/Client$AccountData;->getPrefs()Lcom/google/feedreader/extrpc/Client$PrefsContent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/feedreader/extrpc/Client$AccountData$Builder;->mergePrefs(Lcom/google/feedreader/extrpc/Client$PrefsContent;)Lcom/google/feedreader/extrpc/Client$AccountData$Builder;

    .line 18781
    :cond_49
    invoke-virtual {p1}, Lcom/google/feedreader/extrpc/Client$AccountData;->hasStreamPrefs()Z

    move-result v0

    if-eqz v0, :cond_56

    .line 18782
    invoke-virtual {p1}, Lcom/google/feedreader/extrpc/Client$AccountData;->getStreamPrefs()Lcom/google/feedreader/extrpc/Client$StreamPrefsContent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/feedreader/extrpc/Client$AccountData$Builder;->mergeStreamPrefs(Lcom/google/feedreader/extrpc/Client$StreamPrefsContent;)Lcom/google/feedreader/extrpc/Client$AccountData$Builder;

    :cond_56
    move-object v0, p0

    .line 18784
    goto :goto_7
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/feedreader/extrpc/Client$AccountData$Builder;
    .registers 5
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 18844
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v0

    .line 18845
    sparse-switch v0, :sswitch_data_bc

    .line 18850
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/feedreader/extrpc/Client$AccountData$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v0

    if-nez v0, :cond_0

    move-object v0, p0

    .line 18852
    :goto_e
    return-object v0

    :sswitch_f
    move-object v0, p0

    .line 18848
    goto :goto_e

    .line 18857
    :sswitch_11
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$UserInfo;->newBuilder()Lcom/google/feedreader/extrpc/Client$UserInfo$Builder;

    move-result-object v0

    .line 18858
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$AccountData$Builder;->hasUserInfo()Z

    move-result v1

    if-eqz v1, :cond_22

    .line 18859
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$AccountData$Builder;->getUserInfo()Lcom/google/feedreader/extrpc/Client$UserInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/feedreader/extrpc/Client$UserInfo$Builder;->mergeFrom(Lcom/google/feedreader/extrpc/Client$UserInfo;)Lcom/google/feedreader/extrpc/Client$UserInfo$Builder;

    .line 18861
    :cond_22
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 18862
    invoke-virtual {v0}, Lcom/google/feedreader/extrpc/Client$UserInfo$Builder;->buildPartial()Lcom/google/feedreader/extrpc/Client$UserInfo;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/feedreader/extrpc/Client$AccountData$Builder;->setUserInfo(Lcom/google/feedreader/extrpc/Client$UserInfo;)Lcom/google/feedreader/extrpc/Client$AccountData$Builder;

    goto :goto_0

    .line 18866
    :sswitch_2d
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$FriendsList;->newBuilder()Lcom/google/feedreader/extrpc/Client$FriendsList$Builder;

    move-result-object v0

    .line 18867
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$AccountData$Builder;->hasFriendsList()Z

    move-result v1

    if-eqz v1, :cond_3e

    .line 18868
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$AccountData$Builder;->getFriendsList()Lcom/google/feedreader/extrpc/Client$FriendsList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/feedreader/extrpc/Client$FriendsList$Builder;->mergeFrom(Lcom/google/feedreader/extrpc/Client$FriendsList;)Lcom/google/feedreader/extrpc/Client$FriendsList$Builder;

    .line 18870
    :cond_3e
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 18871
    invoke-virtual {v0}, Lcom/google/feedreader/extrpc/Client$FriendsList$Builder;->buildPartial()Lcom/google/feedreader/extrpc/Client$FriendsList;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/feedreader/extrpc/Client$AccountData$Builder;->setFriendsList(Lcom/google/feedreader/extrpc/Client$FriendsList;)Lcom/google/feedreader/extrpc/Client$AccountData$Builder;

    goto :goto_0

    .line 18875
    :sswitch_49
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$SubscriptionList;->newBuilder()Lcom/google/feedreader/extrpc/Client$SubscriptionList$Builder;

    move-result-object v0

    .line 18876
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$AccountData$Builder;->hasSubscriptionList()Z

    move-result v1

    if-eqz v1, :cond_5a

    .line 18877
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$AccountData$Builder;->getSubscriptionList()Lcom/google/feedreader/extrpc/Client$SubscriptionList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/feedreader/extrpc/Client$SubscriptionList$Builder;->mergeFrom(Lcom/google/feedreader/extrpc/Client$SubscriptionList;)Lcom/google/feedreader/extrpc/Client$SubscriptionList$Builder;

    .line 18879
    :cond_5a
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 18880
    invoke-virtual {v0}, Lcom/google/feedreader/extrpc/Client$SubscriptionList$Builder;->buildPartial()Lcom/google/feedreader/extrpc/Client$SubscriptionList;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/feedreader/extrpc/Client$AccountData$Builder;->setSubscriptionList(Lcom/google/feedreader/extrpc/Client$SubscriptionList;)Lcom/google/feedreader/extrpc/Client$AccountData$Builder;

    goto :goto_0

    .line 18884
    :sswitch_65
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$UnreadCountsContent;->newBuilder()Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$Builder;

    move-result-object v0

    .line 18885
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$AccountData$Builder;->hasUnreadCounts()Z

    move-result v1

    if-eqz v1, :cond_76

    .line 18886
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$AccountData$Builder;->getUnreadCounts()Lcom/google/feedreader/extrpc/Client$UnreadCountsContent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$Builder;->mergeFrom(Lcom/google/feedreader/extrpc/Client$UnreadCountsContent;)Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$Builder;

    .line 18888
    :cond_76
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 18889
    invoke-virtual {v0}, Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$Builder;->buildPartial()Lcom/google/feedreader/extrpc/Client$UnreadCountsContent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/feedreader/extrpc/Client$AccountData$Builder;->setUnreadCounts(Lcom/google/feedreader/extrpc/Client$UnreadCountsContent;)Lcom/google/feedreader/extrpc/Client$AccountData$Builder;

    goto :goto_0

    .line 18893
    :sswitch_81
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$PrefsContent;->newBuilder()Lcom/google/feedreader/extrpc/Client$PrefsContent$Builder;

    move-result-object v0

    .line 18894
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$AccountData$Builder;->hasPrefs()Z

    move-result v1

    if-eqz v1, :cond_92

    .line 18895
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$AccountData$Builder;->getPrefs()Lcom/google/feedreader/extrpc/Client$PrefsContent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/feedreader/extrpc/Client$PrefsContent$Builder;->mergeFrom(Lcom/google/feedreader/extrpc/Client$PrefsContent;)Lcom/google/feedreader/extrpc/Client$PrefsContent$Builder;

    .line 18897
    :cond_92
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 18898
    invoke-virtual {v0}, Lcom/google/feedreader/extrpc/Client$PrefsContent$Builder;->buildPartial()Lcom/google/feedreader/extrpc/Client$PrefsContent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/feedreader/extrpc/Client$AccountData$Builder;->setPrefs(Lcom/google/feedreader/extrpc/Client$PrefsContent;)Lcom/google/feedreader/extrpc/Client$AccountData$Builder;

    goto/16 :goto_0

    .line 18902
    :sswitch_9e
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$StreamPrefsContent;->newBuilder()Lcom/google/feedreader/extrpc/Client$StreamPrefsContent$Builder;

    move-result-object v0

    .line 18903
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$AccountData$Builder;->hasStreamPrefs()Z

    move-result v1

    if-eqz v1, :cond_af

    .line 18904
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$AccountData$Builder;->getStreamPrefs()Lcom/google/feedreader/extrpc/Client$StreamPrefsContent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/feedreader/extrpc/Client$StreamPrefsContent$Builder;->mergeFrom(Lcom/google/feedreader/extrpc/Client$StreamPrefsContent;)Lcom/google/feedreader/extrpc/Client$StreamPrefsContent$Builder;

    .line 18906
    :cond_af
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 18907
    invoke-virtual {v0}, Lcom/google/feedreader/extrpc/Client$StreamPrefsContent$Builder;->buildPartial()Lcom/google/feedreader/extrpc/Client$StreamPrefsContent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/feedreader/extrpc/Client$AccountData$Builder;->setStreamPrefs(Lcom/google/feedreader/extrpc/Client$StreamPrefsContent;)Lcom/google/feedreader/extrpc/Client$AccountData$Builder;

    goto/16 :goto_0

    .line 18845
    nop

    :sswitch_data_bc
    .sparse-switch
        0x0 -> :sswitch_f
        0xa -> :sswitch_11
        0x12 -> :sswitch_2d
        0x1a -> :sswitch_49
        0x22 -> :sswitch_65
        0x2a -> :sswitch_81
        0x32 -> :sswitch_9e
    .end sparse-switch
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 18674
    invoke-virtual {p0, p1, p2}, Lcom/google/feedreader/extrpc/Client$AccountData$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/feedreader/extrpc/Client$AccountData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 3
    .parameter "x0"

    .prologue
    .line 18674
    check-cast p1, Lcom/google/feedreader/extrpc/Client$AccountData;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/feedreader/extrpc/Client$AccountData$Builder;->mergeFrom(Lcom/google/feedreader/extrpc/Client$AccountData;)Lcom/google/feedreader/extrpc/Client$AccountData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite$Builder;
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 18674
    invoke-virtual {p0, p1, p2}, Lcom/google/feedreader/extrpc/Client$AccountData$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/feedreader/extrpc/Client$AccountData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergePrefs(Lcom/google/feedreader/extrpc/Client$PrefsContent;)Lcom/google/feedreader/extrpc/Client$AccountData$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 19113
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$AccountData$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_27

    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$AccountData$Builder;->prefs_:Lcom/google/feedreader/extrpc/Client$PrefsContent;

    invoke-static {}, Lcom/google/feedreader/extrpc/Client$PrefsContent;->getDefaultInstance()Lcom/google/feedreader/extrpc/Client$PrefsContent;

    move-result-object v1

    if-eq v0, v1, :cond_27

    .line 19115
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$AccountData$Builder;->prefs_:Lcom/google/feedreader/extrpc/Client$PrefsContent;

    invoke-static {v0}, Lcom/google/feedreader/extrpc/Client$PrefsContent;->newBuilder(Lcom/google/feedreader/extrpc/Client$PrefsContent;)Lcom/google/feedreader/extrpc/Client$PrefsContent$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/feedreader/extrpc/Client$PrefsContent$Builder;->mergeFrom(Lcom/google/feedreader/extrpc/Client$PrefsContent;)Lcom/google/feedreader/extrpc/Client$PrefsContent$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/feedreader/extrpc/Client$PrefsContent$Builder;->buildPartial()Lcom/google/feedreader/extrpc/Client$PrefsContent;

    move-result-object v0

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$AccountData$Builder;->prefs_:Lcom/google/feedreader/extrpc/Client$PrefsContent;

    .line 19121
    :goto_20
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$AccountData$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$AccountData$Builder;->bitField0_:I

    .line 19122
    return-object p0

    .line 19118
    :cond_27
    iput-object p1, p0, Lcom/google/feedreader/extrpc/Client$AccountData$Builder;->prefs_:Lcom/google/feedreader/extrpc/Client$PrefsContent;

    goto :goto_20
.end method

.method public mergeStreamPrefs(Lcom/google/feedreader/extrpc/Client$StreamPrefsContent;)Lcom/google/feedreader/extrpc/Client$AccountData$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 19156
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$AccountData$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_27

    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$AccountData$Builder;->streamPrefs_:Lcom/google/feedreader/extrpc/Client$StreamPrefsContent;

    invoke-static {}, Lcom/google/feedreader/extrpc/Client$StreamPrefsContent;->getDefaultInstance()Lcom/google/feedreader/extrpc/Client$StreamPrefsContent;

    move-result-object v1

    if-eq v0, v1, :cond_27

    .line 19158
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$AccountData$Builder;->streamPrefs_:Lcom/google/feedreader/extrpc/Client$StreamPrefsContent;

    invoke-static {v0}, Lcom/google/feedreader/extrpc/Client$StreamPrefsContent;->newBuilder(Lcom/google/feedreader/extrpc/Client$StreamPrefsContent;)Lcom/google/feedreader/extrpc/Client$StreamPrefsContent$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/feedreader/extrpc/Client$StreamPrefsContent$Builder;->mergeFrom(Lcom/google/feedreader/extrpc/Client$StreamPrefsContent;)Lcom/google/feedreader/extrpc/Client$StreamPrefsContent$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/feedreader/extrpc/Client$StreamPrefsContent$Builder;->buildPartial()Lcom/google/feedreader/extrpc/Client$StreamPrefsContent;

    move-result-object v0

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$AccountData$Builder;->streamPrefs_:Lcom/google/feedreader/extrpc/Client$StreamPrefsContent;

    .line 19164
    :goto_20
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$AccountData$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$AccountData$Builder;->bitField0_:I

    .line 19165
    return-object p0

    .line 19161
    :cond_27
    iput-object p1, p0, Lcom/google/feedreader/extrpc/Client$AccountData$Builder;->streamPrefs_:Lcom/google/feedreader/extrpc/Client$StreamPrefsContent;

    goto :goto_20
.end method

.method public mergeSubscriptionList(Lcom/google/feedreader/extrpc/Client$SubscriptionList;)Lcom/google/feedreader/extrpc/Client$AccountData$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 19027
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$AccountData$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_26

    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$AccountData$Builder;->subscriptionList_:Lcom/google/feedreader/extrpc/Client$SubscriptionList;

    invoke-static {}, Lcom/google/feedreader/extrpc/Client$SubscriptionList;->getDefaultInstance()Lcom/google/feedreader/extrpc/Client$SubscriptionList;

    move-result-object v1

    if-eq v0, v1, :cond_26

    .line 19029
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$AccountData$Builder;->subscriptionList_:Lcom/google/feedreader/extrpc/Client$SubscriptionList;

    invoke-static {v0}, Lcom/google/feedreader/extrpc/Client$SubscriptionList;->newBuilder(Lcom/google/feedreader/extrpc/Client$SubscriptionList;)Lcom/google/feedreader/extrpc/Client$SubscriptionList$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/feedreader/extrpc/Client$SubscriptionList$Builder;->mergeFrom(Lcom/google/feedreader/extrpc/Client$SubscriptionList;)Lcom/google/feedreader/extrpc/Client$SubscriptionList$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/feedreader/extrpc/Client$SubscriptionList$Builder;->buildPartial()Lcom/google/feedreader/extrpc/Client$SubscriptionList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$AccountData$Builder;->subscriptionList_:Lcom/google/feedreader/extrpc/Client$SubscriptionList;

    .line 19035
    :goto_1f
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$AccountData$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$AccountData$Builder;->bitField0_:I

    .line 19036
    return-object p0

    .line 19032
    :cond_26
    iput-object p1, p0, Lcom/google/feedreader/extrpc/Client$AccountData$Builder;->subscriptionList_:Lcom/google/feedreader/extrpc/Client$SubscriptionList;

    goto :goto_1f
.end method

.method public mergeUnreadCounts(Lcom/google/feedreader/extrpc/Client$UnreadCountsContent;)Lcom/google/feedreader/extrpc/Client$AccountData$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 19070
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$AccountData$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_27

    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$AccountData$Builder;->unreadCounts_:Lcom/google/feedreader/extrpc/Client$UnreadCountsContent;

    invoke-static {}, Lcom/google/feedreader/extrpc/Client$UnreadCountsContent;->getDefaultInstance()Lcom/google/feedreader/extrpc/Client$UnreadCountsContent;

    move-result-object v1

    if-eq v0, v1, :cond_27

    .line 19072
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$AccountData$Builder;->unreadCounts_:Lcom/google/feedreader/extrpc/Client$UnreadCountsContent;

    invoke-static {v0}, Lcom/google/feedreader/extrpc/Client$UnreadCountsContent;->newBuilder(Lcom/google/feedreader/extrpc/Client$UnreadCountsContent;)Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$Builder;->mergeFrom(Lcom/google/feedreader/extrpc/Client$UnreadCountsContent;)Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$Builder;->buildPartial()Lcom/google/feedreader/extrpc/Client$UnreadCountsContent;

    move-result-object v0

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$AccountData$Builder;->unreadCounts_:Lcom/google/feedreader/extrpc/Client$UnreadCountsContent;

    .line 19078
    :goto_20
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$AccountData$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$AccountData$Builder;->bitField0_:I

    .line 19079
    return-object p0

    .line 19075
    :cond_27
    iput-object p1, p0, Lcom/google/feedreader/extrpc/Client$AccountData$Builder;->unreadCounts_:Lcom/google/feedreader/extrpc/Client$UnreadCountsContent;

    goto :goto_20
.end method

.method public mergeUserInfo(Lcom/google/feedreader/extrpc/Client$UserInfo;)Lcom/google/feedreader/extrpc/Client$AccountData$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 18941
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$AccountData$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_26

    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$AccountData$Builder;->userInfo_:Lcom/google/feedreader/extrpc/Client$UserInfo;

    invoke-static {}, Lcom/google/feedreader/extrpc/Client$UserInfo;->getDefaultInstance()Lcom/google/feedreader/extrpc/Client$UserInfo;

    move-result-object v1

    if-eq v0, v1, :cond_26

    .line 18943
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$AccountData$Builder;->userInfo_:Lcom/google/feedreader/extrpc/Client$UserInfo;

    invoke-static {v0}, Lcom/google/feedreader/extrpc/Client$UserInfo;->newBuilder(Lcom/google/feedreader/extrpc/Client$UserInfo;)Lcom/google/feedreader/extrpc/Client$UserInfo$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/feedreader/extrpc/Client$UserInfo$Builder;->mergeFrom(Lcom/google/feedreader/extrpc/Client$UserInfo;)Lcom/google/feedreader/extrpc/Client$UserInfo$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/feedreader/extrpc/Client$UserInfo$Builder;->buildPartial()Lcom/google/feedreader/extrpc/Client$UserInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$AccountData$Builder;->userInfo_:Lcom/google/feedreader/extrpc/Client$UserInfo;

    .line 18949
    :goto_1f
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$AccountData$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$AccountData$Builder;->bitField0_:I

    .line 18950
    return-object p0

    .line 18946
    :cond_26
    iput-object p1, p0, Lcom/google/feedreader/extrpc/Client$AccountData$Builder;->userInfo_:Lcom/google/feedreader/extrpc/Client$UserInfo;

    goto :goto_1f
.end method

.method public setFriendsList(Lcom/google/feedreader/extrpc/Client$FriendsList$Builder;)Lcom/google/feedreader/extrpc/Client$AccountData$Builder;
    .registers 3
    .parameter "builderForValue"

    .prologue
    .line 18978
    invoke-virtual {p1}, Lcom/google/feedreader/extrpc/Client$FriendsList$Builder;->build()Lcom/google/feedreader/extrpc/Client$FriendsList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$AccountData$Builder;->friendsList_:Lcom/google/feedreader/extrpc/Client$FriendsList;

    .line 18980
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$AccountData$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$AccountData$Builder;->bitField0_:I

    .line 18981
    return-object p0
.end method

.method public setFriendsList(Lcom/google/feedreader/extrpc/Client$FriendsList;)Lcom/google/feedreader/extrpc/Client$AccountData$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 18968
    if-nez p1, :cond_8

    .line 18969
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 18971
    :cond_8
    iput-object p1, p0, Lcom/google/feedreader/extrpc/Client$AccountData$Builder;->friendsList_:Lcom/google/feedreader/extrpc/Client$FriendsList;

    .line 18973
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$AccountData$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$AccountData$Builder;->bitField0_:I

    .line 18974
    return-object p0
.end method

.method public setPrefs(Lcom/google/feedreader/extrpc/Client$PrefsContent$Builder;)Lcom/google/feedreader/extrpc/Client$AccountData$Builder;
    .registers 3
    .parameter "builderForValue"

    .prologue
    .line 19107
    invoke-virtual {p1}, Lcom/google/feedreader/extrpc/Client$PrefsContent$Builder;->build()Lcom/google/feedreader/extrpc/Client$PrefsContent;

    move-result-object v0

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$AccountData$Builder;->prefs_:Lcom/google/feedreader/extrpc/Client$PrefsContent;

    .line 19109
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$AccountData$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$AccountData$Builder;->bitField0_:I

    .line 19110
    return-object p0
.end method

.method public setPrefs(Lcom/google/feedreader/extrpc/Client$PrefsContent;)Lcom/google/feedreader/extrpc/Client$AccountData$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 19097
    if-nez p1, :cond_8

    .line 19098
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 19100
    :cond_8
    iput-object p1, p0, Lcom/google/feedreader/extrpc/Client$AccountData$Builder;->prefs_:Lcom/google/feedreader/extrpc/Client$PrefsContent;

    .line 19102
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$AccountData$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$AccountData$Builder;->bitField0_:I

    .line 19103
    return-object p0
.end method

.method public setStreamPrefs(Lcom/google/feedreader/extrpc/Client$StreamPrefsContent$Builder;)Lcom/google/feedreader/extrpc/Client$AccountData$Builder;
    .registers 3
    .parameter "builderForValue"

    .prologue
    .line 19150
    invoke-virtual {p1}, Lcom/google/feedreader/extrpc/Client$StreamPrefsContent$Builder;->build()Lcom/google/feedreader/extrpc/Client$StreamPrefsContent;

    move-result-object v0

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$AccountData$Builder;->streamPrefs_:Lcom/google/feedreader/extrpc/Client$StreamPrefsContent;

    .line 19152
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$AccountData$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$AccountData$Builder;->bitField0_:I

    .line 19153
    return-object p0
.end method

.method public setStreamPrefs(Lcom/google/feedreader/extrpc/Client$StreamPrefsContent;)Lcom/google/feedreader/extrpc/Client$AccountData$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 19140
    if-nez p1, :cond_8

    .line 19141
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 19143
    :cond_8
    iput-object p1, p0, Lcom/google/feedreader/extrpc/Client$AccountData$Builder;->streamPrefs_:Lcom/google/feedreader/extrpc/Client$StreamPrefsContent;

    .line 19145
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$AccountData$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$AccountData$Builder;->bitField0_:I

    .line 19146
    return-object p0
.end method

.method public setSubscriptionList(Lcom/google/feedreader/extrpc/Client$SubscriptionList$Builder;)Lcom/google/feedreader/extrpc/Client$AccountData$Builder;
    .registers 3
    .parameter "builderForValue"

    .prologue
    .line 19021
    invoke-virtual {p1}, Lcom/google/feedreader/extrpc/Client$SubscriptionList$Builder;->build()Lcom/google/feedreader/extrpc/Client$SubscriptionList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$AccountData$Builder;->subscriptionList_:Lcom/google/feedreader/extrpc/Client$SubscriptionList;

    .line 19023
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$AccountData$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$AccountData$Builder;->bitField0_:I

    .line 19024
    return-object p0
.end method

.method public setSubscriptionList(Lcom/google/feedreader/extrpc/Client$SubscriptionList;)Lcom/google/feedreader/extrpc/Client$AccountData$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 19011
    if-nez p1, :cond_8

    .line 19012
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 19014
    :cond_8
    iput-object p1, p0, Lcom/google/feedreader/extrpc/Client$AccountData$Builder;->subscriptionList_:Lcom/google/feedreader/extrpc/Client$SubscriptionList;

    .line 19016
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$AccountData$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$AccountData$Builder;->bitField0_:I

    .line 19017
    return-object p0
.end method

.method public setUnreadCounts(Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$Builder;)Lcom/google/feedreader/extrpc/Client$AccountData$Builder;
    .registers 3
    .parameter "builderForValue"

    .prologue
    .line 19064
    invoke-virtual {p1}, Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$Builder;->build()Lcom/google/feedreader/extrpc/Client$UnreadCountsContent;

    move-result-object v0

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$AccountData$Builder;->unreadCounts_:Lcom/google/feedreader/extrpc/Client$UnreadCountsContent;

    .line 19066
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$AccountData$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$AccountData$Builder;->bitField0_:I

    .line 19067
    return-object p0
.end method

.method public setUnreadCounts(Lcom/google/feedreader/extrpc/Client$UnreadCountsContent;)Lcom/google/feedreader/extrpc/Client$AccountData$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 19054
    if-nez p1, :cond_8

    .line 19055
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 19057
    :cond_8
    iput-object p1, p0, Lcom/google/feedreader/extrpc/Client$AccountData$Builder;->unreadCounts_:Lcom/google/feedreader/extrpc/Client$UnreadCountsContent;

    .line 19059
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$AccountData$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$AccountData$Builder;->bitField0_:I

    .line 19060
    return-object p0
.end method

.method public setUserInfo(Lcom/google/feedreader/extrpc/Client$UserInfo$Builder;)Lcom/google/feedreader/extrpc/Client$AccountData$Builder;
    .registers 3
    .parameter "builderForValue"

    .prologue
    .line 18935
    invoke-virtual {p1}, Lcom/google/feedreader/extrpc/Client$UserInfo$Builder;->build()Lcom/google/feedreader/extrpc/Client$UserInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$AccountData$Builder;->userInfo_:Lcom/google/feedreader/extrpc/Client$UserInfo;

    .line 18937
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$AccountData$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$AccountData$Builder;->bitField0_:I

    .line 18938
    return-object p0
.end method

.method public setUserInfo(Lcom/google/feedreader/extrpc/Client$UserInfo;)Lcom/google/feedreader/extrpc/Client$AccountData$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 18925
    if-nez p1, :cond_8

    .line 18926
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 18928
    :cond_8
    iput-object p1, p0, Lcom/google/feedreader/extrpc/Client$AccountData$Builder;->userInfo_:Lcom/google/feedreader/extrpc/Client$UserInfo;

    .line 18930
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$AccountData$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$AccountData$Builder;->bitField0_:I

    .line 18931
    return-object p0
.end method
