.class public abstract Lcom/android/ex/chips/BaseRecipientAdapter;
.super Landroid/widget/BaseAdapter;
.source "BaseRecipientAdapter.java"

# interfaces
.implements Landroid/widget/Filterable;
.implements Lcom/android/ex/chips/AccountSpecifier;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/ex/chips/BaseRecipientAdapter$DelayedMessageHandler;,
        Lcom/android/ex/chips/BaseRecipientAdapter$DirectoryFilter;,
        Lcom/android/ex/chips/BaseRecipientAdapter$DefaultFilter;,
        Lcom/android/ex/chips/BaseRecipientAdapter$DefaultFilterResult;,
        Lcom/android/ex/chips/BaseRecipientAdapter$TemporaryEntry;,
        Lcom/android/ex/chips/BaseRecipientAdapter$DirectoryListQuery;,
        Lcom/android/ex/chips/BaseRecipientAdapter$PhotoQuery;,
        Lcom/android/ex/chips/BaseRecipientAdapter$EmailQuery;,
        Lcom/android/ex/chips/BaseRecipientAdapter$DirectorySearchParams;
    }
.end annotation


# instance fields
.field private mAccount:Landroid/accounts/Account;

.field private final mContentResolver:Landroid/content/ContentResolver;

.field private final mContext:Landroid/content/Context;

.field private mCurrentConstraint:Ljava/lang/CharSequence;

.field private final mDelayedMessageHandler:Lcom/android/ex/chips/BaseRecipientAdapter$DelayedMessageHandler;

.field private mEntries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/ex/chips/RecipientEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mEntryMap:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/util/List",
            "<",
            "Lcom/android/ex/chips/RecipientEntry;",
            ">;>;"
        }
    .end annotation
.end field

.field private mExistingDestinations:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mHandler:Landroid/os/Handler;

.field private final mInflater:Landroid/view/LayoutInflater;

.field private mNonAggregatedEntries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/ex/chips/RecipientEntry;",
            ">;"
        }
    .end annotation
.end field

.field private final mPhotoCacheMap:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache",
            "<",
            "Landroid/net/Uri;",
            "[B>;"
        }
    .end annotation
.end field

.field private final mPreferredMaxResultCount:I

.field private mRemainingDirectoryCount:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 506
    const/16 v0, 0xa

    invoke-direct {p0, p1, v0}, Lcom/android/ex/chips/BaseRecipientAdapter;-><init>(Landroid/content/Context;I)V

    .line 507
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .registers 5
    .parameter "context"
    .parameter "preferredMaxResultCount"

    .prologue
    .line 509
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 438
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/ex/chips/BaseRecipientAdapter;->mHandler:Landroid/os/Handler;

    .line 500
    new-instance v0, Lcom/android/ex/chips/BaseRecipientAdapter$DelayedMessageHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/ex/chips/BaseRecipientAdapter$DelayedMessageHandler;-><init>(Lcom/android/ex/chips/BaseRecipientAdapter;Lcom/android/ex/chips/BaseRecipientAdapter$1;)V

    iput-object v0, p0, Lcom/android/ex/chips/BaseRecipientAdapter;->mDelayedMessageHandler:Lcom/android/ex/chips/BaseRecipientAdapter$DelayedMessageHandler;

    .line 510
    iput-object p1, p0, Lcom/android/ex/chips/BaseRecipientAdapter;->mContext:Landroid/content/Context;

    .line 511
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/ex/chips/BaseRecipientAdapter;->mContentResolver:Landroid/content/ContentResolver;

    .line 512
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/android/ex/chips/BaseRecipientAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 513
    iput p2, p0, Lcom/android/ex/chips/BaseRecipientAdapter;->mPreferredMaxResultCount:I

    .line 514
    new-instance v0, Landroid/util/LruCache;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Landroid/util/LruCache;-><init>(I)V

    iput-object v0, p0, Lcom/android/ex/chips/BaseRecipientAdapter;->mPhotoCacheMap:Landroid/util/LruCache;

    .line 515
    return-void
.end method

.method static synthetic access$000(Lcom/android/ex/chips/BaseRecipientAdapter;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 62
    iget v0, p0, Lcom/android/ex/chips/BaseRecipientAdapter;->mPreferredMaxResultCount:I

    return v0
.end method

.method static synthetic access$100(Lcom/android/ex/chips/BaseRecipientAdapter;Ljava/lang/CharSequence;ILjava/lang/Long;)Landroid/database/Cursor;
    .registers 5
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 62
    invoke-direct {p0, p1, p2, p3}, Lcom/android/ex/chips/BaseRecipientAdapter;->doQuery(Ljava/lang/CharSequence;ILjava/lang/Long;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/ex/chips/BaseRecipientAdapter;)Ljava/util/Set;
    .registers 2
    .parameter "x0"

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/ex/chips/BaseRecipientAdapter;->mExistingDestinations:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/android/ex/chips/BaseRecipientAdapter;Ljava/util/Set;)Ljava/util/Set;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 62
    iput-object p1, p0, Lcom/android/ex/chips/BaseRecipientAdapter;->mExistingDestinations:Ljava/util/Set;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/android/ex/chips/BaseRecipientAdapter;Ljava/util/List;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 62
    invoke-direct {p0, p1}, Lcom/android/ex/chips/BaseRecipientAdapter;->updateEntries(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/ex/chips/BaseRecipientAdapter;Ljava/lang/CharSequence;Ljava/util/List;I)V
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 62
    invoke-direct {p0, p1, p2, p3}, Lcom/android/ex/chips/BaseRecipientAdapter;->startSearchOtherDirectories(Ljava/lang/CharSequence;Ljava/util/List;I)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/ex/chips/BaseRecipientAdapter;)Lcom/android/ex/chips/BaseRecipientAdapter$DelayedMessageHandler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/ex/chips/BaseRecipientAdapter;->mDelayedMessageHandler:Lcom/android/ex/chips/BaseRecipientAdapter$DelayedMessageHandler;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/ex/chips/BaseRecipientAdapter;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 62
    iget v0, p0, Lcom/android/ex/chips/BaseRecipientAdapter;->mRemainingDirectoryCount:I

    return v0
.end method

.method static synthetic access$1410(Lcom/android/ex/chips/BaseRecipientAdapter;)I
    .registers 3
    .parameter "x0"

    .prologue
    .line 62
    iget v0, p0, Lcom/android/ex/chips/BaseRecipientAdapter;->mRemainingDirectoryCount:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/android/ex/chips/BaseRecipientAdapter;->mRemainingDirectoryCount:I

    return v0
.end method

.method static synthetic access$1700(Lcom/android/ex/chips/BaseRecipientAdapter;)Landroid/util/LruCache;
    .registers 2
    .parameter "x0"

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/ex/chips/BaseRecipientAdapter;->mPhotoCacheMap:Landroid/util/LruCache;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/ex/chips/BaseRecipientAdapter;)Landroid/os/Handler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/ex/chips/BaseRecipientAdapter;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/ex/chips/BaseRecipientAdapter;Landroid/database/Cursor;)Lcom/android/ex/chips/BaseRecipientAdapter$TemporaryEntry;
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 62
    invoke-direct {p0, p1}, Lcom/android/ex/chips/BaseRecipientAdapter;->constructTemporaryEntryFromCursor(Landroid/database/Cursor;)Lcom/android/ex/chips/BaseRecipientAdapter$TemporaryEntry;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/ex/chips/BaseRecipientAdapter;Lcom/android/ex/chips/BaseRecipientAdapter$TemporaryEntry;ZLjava/util/LinkedHashMap;Ljava/util/List;Ljava/util/Set;)V
    .registers 6
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"

    .prologue
    .line 62
    invoke-direct/range {p0 .. p5}, Lcom/android/ex/chips/BaseRecipientAdapter;->putOneEntry(Lcom/android/ex/chips/BaseRecipientAdapter$TemporaryEntry;ZLjava/util/LinkedHashMap;Ljava/util/List;Ljava/util/Set;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/ex/chips/BaseRecipientAdapter;ZLjava/util/LinkedHashMap;Ljava/util/List;Ljava/util/Set;)Ljava/util/List;
    .registers 6
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 62
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/ex/chips/BaseRecipientAdapter;->constructEntryList(ZLjava/util/LinkedHashMap;Ljava/util/List;Ljava/util/Set;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/ex/chips/BaseRecipientAdapter;)Landroid/content/ContentResolver;
    .registers 2
    .parameter "x0"

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/ex/chips/BaseRecipientAdapter;->mContentResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/ex/chips/BaseRecipientAdapter;Landroid/database/Cursor;)Ljava/util/List;
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 62
    invoke-direct {p0, p1}, Lcom/android/ex/chips/BaseRecipientAdapter;->setupOtherDirectories(Landroid/database/Cursor;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/ex/chips/BaseRecipientAdapter;)Ljava/lang/CharSequence;
    .registers 2
    .parameter "x0"

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/ex/chips/BaseRecipientAdapter;->mCurrentConstraint:Ljava/lang/CharSequence;

    return-object v0
.end method

.method static synthetic access$702(Lcom/android/ex/chips/BaseRecipientAdapter;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 62
    iput-object p1, p0, Lcom/android/ex/chips/BaseRecipientAdapter;->mCurrentConstraint:Ljava/lang/CharSequence;

    return-object p1
.end method

.method static synthetic access$800(Lcom/android/ex/chips/BaseRecipientAdapter;)Ljava/util/LinkedHashMap;
    .registers 2
    .parameter "x0"

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/ex/chips/BaseRecipientAdapter;->mEntryMap:Ljava/util/LinkedHashMap;

    return-object v0
.end method

.method static synthetic access$802(Lcom/android/ex/chips/BaseRecipientAdapter;Ljava/util/LinkedHashMap;)Ljava/util/LinkedHashMap;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 62
    iput-object p1, p0, Lcom/android/ex/chips/BaseRecipientAdapter;->mEntryMap:Ljava/util/LinkedHashMap;

    return-object p1
.end method

.method static synthetic access$900(Lcom/android/ex/chips/BaseRecipientAdapter;)Ljava/util/List;
    .registers 2
    .parameter "x0"

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/ex/chips/BaseRecipientAdapter;->mNonAggregatedEntries:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$902(Lcom/android/ex/chips/BaseRecipientAdapter;Ljava/util/List;)Ljava/util/List;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 62
    iput-object p1, p0, Lcom/android/ex/chips/BaseRecipientAdapter;->mNonAggregatedEntries:Ljava/util/List;

    return-object p1
.end method

.method private constructEntryList(ZLjava/util/LinkedHashMap;Ljava/util/List;Ljava/util/Set;)Ljava/util/List;
    .registers 14
    .parameter "showMessageIfDirectoryLoadRemaining"
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/util/List",
            "<",
            "Lcom/android/ex/chips/RecipientEntry;",
            ">;>;",
            "Ljava/util/List",
            "<",
            "Lcom/android/ex/chips/RecipientEntry;",
            ">;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/android/ex/chips/RecipientEntry;",
            ">;"
        }
    .end annotation

    .prologue
    .line 659
    .local p2, entryMap:Ljava/util/LinkedHashMap;,"Ljava/util/LinkedHashMap<Ljava/lang/Long;Ljava/util/List<Lcom/android/ex/chips/RecipientEntry;>;>;"
    .local p3, nonAggregatedEntries:Ljava/util/List;,"Ljava/util/List<Lcom/android/ex/chips/RecipientEntry;>;"
    .local p4, existingDestinations:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 660
    .local v0, entries:Ljava/util/List;,"Ljava/util/List<Lcom/android/ex/chips/RecipientEntry;>;"
    const/4 v7, 0x0

    .line 661
    .local v7, validEntryCount:I
    invoke-virtual {p2}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :cond_e
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3c

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 662
    .local v5, mapEntry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Long;Ljava/util/List<Lcom/android/ex/chips/RecipientEntry;>;>;"
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 663
    .local v2, entryList:Ljava/util/List;,"Ljava/util/List<Lcom/android/ex/chips/RecipientEntry;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    .line 664
    .local v6, size:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_25
    if-ge v3, v6, :cond_38

    .line 665
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/ex/chips/RecipientEntry;

    .line 666
    .local v1, entry:Lcom/android/ex/chips/RecipientEntry;
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 667
    invoke-direct {p0, v1}, Lcom/android/ex/chips/BaseRecipientAdapter;->tryFetchPhoto(Lcom/android/ex/chips/RecipientEntry;)V

    .line 668
    add-int/lit8 v7, v7, 0x1

    .line 664
    add-int/lit8 v3, v3, 0x1

    goto :goto_25

    .line 670
    .end local v1           #entry:Lcom/android/ex/chips/RecipientEntry;
    :cond_38
    iget v8, p0, Lcom/android/ex/chips/BaseRecipientAdapter;->mPreferredMaxResultCount:I

    if-le v7, v8, :cond_e

    .line 674
    .end local v2           #entryList:Ljava/util/List;,"Ljava/util/List<Lcom/android/ex/chips/RecipientEntry;>;"
    .end local v3           #i:I
    .end local v5           #mapEntry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Long;Ljava/util/List<Lcom/android/ex/chips/RecipientEntry;>;>;"
    .end local v6           #size:I
    :cond_3c
    iget v8, p0, Lcom/android/ex/chips/BaseRecipientAdapter;->mPreferredMaxResultCount:I

    if-gt v7, v8, :cond_54

    .line 675
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_44
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_54

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/ex/chips/RecipientEntry;

    .line 676
    .restart local v1       #entry:Lcom/android/ex/chips/RecipientEntry;
    iget v8, p0, Lcom/android/ex/chips/BaseRecipientAdapter;->mPreferredMaxResultCount:I

    if-le v7, v8, :cond_60

    .line 686
    .end local v1           #entry:Lcom/android/ex/chips/RecipientEntry;
    :cond_54
    if-eqz p1, :cond_5f

    iget v8, p0, Lcom/android/ex/chips/BaseRecipientAdapter;->mRemainingDirectoryCount:I

    if-lez v8, :cond_5f

    .line 687
    sget-object v8, Lcom/android/ex/chips/RecipientEntry;->WAITING_FOR_DIRECTORY_SEARCH:Lcom/android/ex/chips/RecipientEntry;

    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 690
    :cond_5f
    return-object v0

    .line 679
    .restart local v1       #entry:Lcom/android/ex/chips/RecipientEntry;
    :cond_60
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 680
    invoke-direct {p0, v1}, Lcom/android/ex/chips/BaseRecipientAdapter;->tryFetchPhoto(Lcom/android/ex/chips/RecipientEntry;)V

    .line 682
    add-int/lit8 v7, v7, 0x1

    goto :goto_44
.end method

.method private constructTemporaryEntryFromCursor(Landroid/database/Cursor;)Lcom/android/ex/chips/BaseRecipientAdapter$TemporaryEntry;
    .registers 12
    .parameter "cursor"

    .prologue
    .line 608
    new-instance v0, Lcom/android/ex/chips/BaseRecipientAdapter$TemporaryEntry;

    const/4 v1, 0x0

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    const/4 v4, 0x3

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x4

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    const/4 v7, 0x5

    invoke-interface {p1, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    const/4 v9, 0x6

    invoke-interface {p1, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-direct/range {v0 .. v9}, Lcom/android/ex/chips/BaseRecipientAdapter$TemporaryEntry;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;JJLjava/lang/String;)V

    return-object v0
.end method

.method private doQuery(Ljava/lang/CharSequence;ILjava/lang/Long;)Landroid/database/Cursor;
    .registers 16
    .parameter "constraint"
    .parameter "limit"
    .parameter "directoryId"

    .prologue
    const/4 v3, 0x0

    .line 768
    sget-object v0, Landroid/provider/ContactsContract$CommonDataKinds$Email;->CONTENT_FILTER_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "limit"

    add-int/lit8 v2, p2, 0x5

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v6

    .line 772
    .local v6, builder:Landroid/net/Uri$Builder;
    if-eqz p3, :cond_26

    .line 773
    const-string v0, "directory"

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 776
    :cond_26
    iget-object v0, p0, Lcom/android/ex/chips/BaseRecipientAdapter;->mAccount:Landroid/accounts/Account;

    if-eqz v0, :cond_3c

    .line 777
    const-string v0, "name_for_primary_account"

    iget-object v1, p0, Lcom/android/ex/chips/BaseRecipientAdapter;->mAccount:Landroid/accounts/Account;

    iget-object v1, v1, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v6, v0, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 778
    const-string v0, "type_for_primary_account"

    iget-object v1, p0, Lcom/android/ex/chips/BaseRecipientAdapter;->mAccount:Landroid/accounts/Account;

    iget-object v1, v1, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v6, v0, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 780
    :cond_3c
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 781
    .local v10, start:J
    iget-object v0, p0, Lcom/android/ex/chips/BaseRecipientAdapter;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {v6}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    sget-object v2, Lcom/android/ex/chips/BaseRecipientAdapter$EmailQuery;->PROJECTION:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 783
    .local v7, cursor:Landroid/database/Cursor;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 790
    .local v8, end:J
    return-object v7
.end method

.method private fetchPhotoAsync(Lcom/android/ex/chips/RecipientEntry;Landroid/net/Uri;)V
    .registers 6
    .parameter "entry"
    .parameter "photoThumbnailUri"

    .prologue
    .line 717
    new-instance v0, Lcom/android/ex/chips/BaseRecipientAdapter$1;

    invoke-direct {v0, p0, p2, p1}, Lcom/android/ex/chips/BaseRecipientAdapter$1;-><init>(Lcom/android/ex/chips/BaseRecipientAdapter;Landroid/net/Uri;Lcom/android/ex/chips/RecipientEntry;)V

    .line 743
    .local v0, photoLoadTask:Landroid/os/AsyncTask;,"Landroid/os/AsyncTask<Ljava/lang/Void;Ljava/lang/Void;Ljava/lang/Void;>;"
    sget-object v1, Landroid/os/AsyncTask;->SERIAL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 744
    return-void
.end method

.method private putOneEntry(Lcom/android/ex/chips/BaseRecipientAdapter$TemporaryEntry;ZLjava/util/LinkedHashMap;Ljava/util/List;Ljava/util/Set;)V
    .registers 16
    .parameter "entry"
    .parameter "isAggregatedEntry"
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/ex/chips/BaseRecipientAdapter$TemporaryEntry;",
            "Z",
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/util/List",
            "<",
            "Lcom/android/ex/chips/RecipientEntry;",
            ">;>;",
            "Ljava/util/List",
            "<",
            "Lcom/android/ex/chips/RecipientEntry;",
            ">;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 621
    .local p3, entryMap:Ljava/util/LinkedHashMap;,"Ljava/util/LinkedHashMap<Ljava/lang/Long;Ljava/util/List<Lcom/android/ex/chips/RecipientEntry;>;>;"
    .local p4, nonAggregatedEntries:Ljava/util/List;,"Ljava/util/List<Lcom/android/ex/chips/RecipientEntry;>;"
    .local p5, existingDestinations:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v0, p1, Lcom/android/ex/chips/BaseRecipientAdapter$TemporaryEntry;->destination:Ljava/lang/String;

    invoke-interface {p5, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 647
    :goto_8
    return-void

    .line 625
    :cond_9
    iget-object v0, p1, Lcom/android/ex/chips/BaseRecipientAdapter$TemporaryEntry;->destination:Ljava/lang/String;

    invoke-interface {p5, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 627
    if-nez p2, :cond_26

    .line 628
    iget-object v0, p1, Lcom/android/ex/chips/BaseRecipientAdapter$TemporaryEntry;->displayName:Ljava/lang/String;

    iget-object v1, p1, Lcom/android/ex/chips/BaseRecipientAdapter$TemporaryEntry;->destination:Ljava/lang/String;

    iget v2, p1, Lcom/android/ex/chips/BaseRecipientAdapter$TemporaryEntry;->destinationType:I

    iget-object v3, p1, Lcom/android/ex/chips/BaseRecipientAdapter$TemporaryEntry;->destinationLabel:Ljava/lang/String;

    iget-wide v4, p1, Lcom/android/ex/chips/BaseRecipientAdapter$TemporaryEntry;->contactId:J

    iget-wide v6, p1, Lcom/android/ex/chips/BaseRecipientAdapter$TemporaryEntry;->dataId:J

    iget-object v8, p1, Lcom/android/ex/chips/BaseRecipientAdapter$TemporaryEntry;->thumbnailUriString:Ljava/lang/String;

    invoke-static/range {v0 .. v8}, Lcom/android/ex/chips/RecipientEntry;->constructTopLevelEntry(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;JJLjava/lang/String;)Lcom/android/ex/chips/RecipientEntry;

    move-result-object v0

    invoke-interface {p4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_8

    .line 632
    :cond_26
    iget-wide v0, p1, Lcom/android/ex/chips/BaseRecipientAdapter$TemporaryEntry;->contactId:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_54

    .line 634
    iget-wide v0, p1, Lcom/android/ex/chips/BaseRecipientAdapter$TemporaryEntry;->contactId:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 635
    .local v9, entryList:Ljava/util/List;,"Ljava/util/List<Lcom/android/ex/chips/RecipientEntry;>;"
    iget-object v0, p1, Lcom/android/ex/chips/BaseRecipientAdapter$TemporaryEntry;->displayName:Ljava/lang/String;

    iget-object v1, p1, Lcom/android/ex/chips/BaseRecipientAdapter$TemporaryEntry;->destination:Ljava/lang/String;

    iget v2, p1, Lcom/android/ex/chips/BaseRecipientAdapter$TemporaryEntry;->destinationType:I

    iget-object v3, p1, Lcom/android/ex/chips/BaseRecipientAdapter$TemporaryEntry;->destinationLabel:Ljava/lang/String;

    iget-wide v4, p1, Lcom/android/ex/chips/BaseRecipientAdapter$TemporaryEntry;->contactId:J

    iget-wide v6, p1, Lcom/android/ex/chips/BaseRecipientAdapter$TemporaryEntry;->dataId:J

    iget-object v8, p1, Lcom/android/ex/chips/BaseRecipientAdapter$TemporaryEntry;->thumbnailUriString:Ljava/lang/String;

    invoke-static/range {v0 .. v8}, Lcom/android/ex/chips/RecipientEntry;->constructSecondLevelEntry(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;JJLjava/lang/String;)Lcom/android/ex/chips/RecipientEntry;

    move-result-object v0

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_8

    .line 640
    .end local v9           #entryList:Ljava/util/List;,"Ljava/util/List<Lcom/android/ex/chips/RecipientEntry;>;"
    :cond_54
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 641
    .restart local v9       #entryList:Ljava/util/List;,"Ljava/util/List<Lcom/android/ex/chips/RecipientEntry;>;"
    iget-object v0, p1, Lcom/android/ex/chips/BaseRecipientAdapter$TemporaryEntry;->displayName:Ljava/lang/String;

    iget-object v1, p1, Lcom/android/ex/chips/BaseRecipientAdapter$TemporaryEntry;->destination:Ljava/lang/String;

    iget v2, p1, Lcom/android/ex/chips/BaseRecipientAdapter$TemporaryEntry;->destinationType:I

    iget-object v3, p1, Lcom/android/ex/chips/BaseRecipientAdapter$TemporaryEntry;->destinationLabel:Ljava/lang/String;

    iget-wide v4, p1, Lcom/android/ex/chips/BaseRecipientAdapter$TemporaryEntry;->contactId:J

    iget-wide v6, p1, Lcom/android/ex/chips/BaseRecipientAdapter$TemporaryEntry;->dataId:J

    iget-object v8, p1, Lcom/android/ex/chips/BaseRecipientAdapter$TemporaryEntry;->thumbnailUriString:Ljava/lang/String;

    invoke-static/range {v0 .. v8}, Lcom/android/ex/chips/RecipientEntry;->constructTopLevelEntry(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;JJLjava/lang/String;)Lcom/android/ex/chips/RecipientEntry;

    move-result-object v0

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 645
    iget-wide v0, p1, Lcom/android/ex/chips/BaseRecipientAdapter$TemporaryEntry;->contactId:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p3, v0, v9}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_8
.end method

.method private setupOtherDirectories(Landroid/database/Cursor;)Ljava/util/List;
    .registers 16
    .parameter "directoryCursor"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/android/ex/chips/BaseRecipientAdapter$DirectorySearchParams;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v13, 0x1

    .line 531
    iget-object v10, p0, Lcom/android/ex/chips/BaseRecipientAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 532
    .local v3, packageManager:Landroid/content/pm/PackageManager;
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 533
    .local v6, paramsList:Ljava/util/List;,"Ljava/util/List<Lcom/android/ex/chips/BaseRecipientAdapter$DirectorySearchParams;>;"
    const/4 v7, 0x0

    .line 534
    .local v7, preferredDirectory:Lcom/android/ex/chips/BaseRecipientAdapter$DirectorySearchParams;
    :cond_d
    :goto_d
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v10

    if-eqz v10, :cond_bf

    .line 535
    const/4 v10, 0x0

    invoke-interface {p1, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 539
    .local v1, id:J
    const-wide/16 v10, 0x1

    cmp-long v10, v1, v10

    if-eqz v10, :cond_d

    .line 543
    new-instance v5, Lcom/android/ex/chips/BaseRecipientAdapter$DirectorySearchParams;

    invoke-direct {v5}, Lcom/android/ex/chips/BaseRecipientAdapter$DirectorySearchParams;-><init>()V

    .line 544
    .local v5, params:Lcom/android/ex/chips/BaseRecipientAdapter$DirectorySearchParams;
    const/4 v10, 0x4

    invoke-interface {p1, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 545
    .local v4, packageName:Ljava/lang/String;
    const/4 v10, 0x5

    invoke-interface {p1, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 546
    .local v8, resourceId:I
    iput-wide v1, v5, Lcom/android/ex/chips/BaseRecipientAdapter$DirectorySearchParams;->directoryId:J

    .line 547
    const/4 v10, 0x3

    invoke-interface {p1, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v5, Lcom/android/ex/chips/BaseRecipientAdapter$DirectorySearchParams;->displayName:Ljava/lang/String;

    .line 548
    invoke-interface {p1, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v5, Lcom/android/ex/chips/BaseRecipientAdapter$DirectorySearchParams;->accountName:Ljava/lang/String;

    .line 549
    const/4 v10, 0x2

    invoke-interface {p1, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v5, Lcom/android/ex/chips/BaseRecipientAdapter$DirectorySearchParams;->accountType:Ljava/lang/String;

    .line 550
    if-eqz v4, :cond_77

    if-eqz v8, :cond_77

    .line 552
    :try_start_47
    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v9

    .line 554
    .local v9, resources:Landroid/content/res/Resources;
    invoke-virtual {v9, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v5, Lcom/android/ex/chips/BaseRecipientAdapter$DirectorySearchParams;->directoryType:Ljava/lang/String;

    .line 555
    iget-object v10, v5, Lcom/android/ex/chips/BaseRecipientAdapter$DirectorySearchParams;->directoryType:Ljava/lang/String;

    if-nez v10, :cond_77

    .line 556
    const-string v10, "BaseRecipientAdapter"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Cannot resolve directory name: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "@"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_77
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_47 .. :try_end_77} :catch_96

    .line 568
    .end local v9           #resources:Landroid/content/res/Resources;
    :cond_77
    :goto_77
    iget-object v10, p0, Lcom/android/ex/chips/BaseRecipientAdapter;->mAccount:Landroid/accounts/Account;

    if-eqz v10, :cond_ba

    iget-object v10, p0, Lcom/android/ex/chips/BaseRecipientAdapter;->mAccount:Landroid/accounts/Account;

    iget-object v10, v10, Landroid/accounts/Account;->name:Ljava/lang/String;

    iget-object v11, v5, Lcom/android/ex/chips/BaseRecipientAdapter$DirectorySearchParams;->accountName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_ba

    iget-object v10, p0, Lcom/android/ex/chips/BaseRecipientAdapter;->mAccount:Landroid/accounts/Account;

    iget-object v10, v10, Landroid/accounts/Account;->type:Ljava/lang/String;

    iget-object v11, v5, Lcom/android/ex/chips/BaseRecipientAdapter$DirectorySearchParams;->accountType:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_ba

    .line 570
    move-object v7, v5

    goto/16 :goto_d

    .line 559
    :catch_96
    move-exception v0

    .line 560
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v10, "BaseRecipientAdapter"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Cannot resolve directory name: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "@"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_77

    .line 572
    .end local v0           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_ba
    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_d

    .line 576
    .end local v1           #id:J
    .end local v4           #packageName:Ljava/lang/String;
    .end local v5           #params:Lcom/android/ex/chips/BaseRecipientAdapter$DirectorySearchParams;
    .end local v8           #resourceId:I
    :cond_bf
    if-eqz v7, :cond_c4

    .line 577
    invoke-interface {v6, v13, v7}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 580
    :cond_c4
    return-object v6
.end method

.method private startSearchOtherDirectories(Ljava/lang/CharSequence;Ljava/util/List;I)V
    .registers 8
    .parameter "constraint"
    .parameter
    .parameter "limit"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "Ljava/util/List",
            "<",
            "Lcom/android/ex/chips/BaseRecipientAdapter$DirectorySearchParams;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 589
    .local p2, paramsList:Ljava/util/List;,"Ljava/util/List<Lcom/android/ex/chips/BaseRecipientAdapter$DirectorySearchParams;>;"
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    .line 591
    .local v0, count:I
    const/4 v1, 0x1

    .local v1, i:I
    :goto_5
    if-ge v1, v0, :cond_27

    .line 592
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/ex/chips/BaseRecipientAdapter$DirectorySearchParams;

    .line 593
    .local v2, params:Lcom/android/ex/chips/BaseRecipientAdapter$DirectorySearchParams;
    iput-object p1, v2, Lcom/android/ex/chips/BaseRecipientAdapter$DirectorySearchParams;->constraint:Ljava/lang/CharSequence;

    .line 594
    iget-object v3, v2, Lcom/android/ex/chips/BaseRecipientAdapter$DirectorySearchParams;->filter:Lcom/android/ex/chips/BaseRecipientAdapter$DirectoryFilter;

    if-nez v3, :cond_1a

    .line 595
    new-instance v3, Lcom/android/ex/chips/BaseRecipientAdapter$DirectoryFilter;

    invoke-direct {v3, p0, v2}, Lcom/android/ex/chips/BaseRecipientAdapter$DirectoryFilter;-><init>(Lcom/android/ex/chips/BaseRecipientAdapter;Lcom/android/ex/chips/BaseRecipientAdapter$DirectorySearchParams;)V

    iput-object v3, v2, Lcom/android/ex/chips/BaseRecipientAdapter$DirectorySearchParams;->filter:Lcom/android/ex/chips/BaseRecipientAdapter$DirectoryFilter;

    .line 597
    :cond_1a
    iget-object v3, v2, Lcom/android/ex/chips/BaseRecipientAdapter$DirectorySearchParams;->filter:Lcom/android/ex/chips/BaseRecipientAdapter$DirectoryFilter;

    invoke-virtual {v3, p3}, Lcom/android/ex/chips/BaseRecipientAdapter$DirectoryFilter;->setLimit(I)V

    .line 598
    iget-object v3, v2, Lcom/android/ex/chips/BaseRecipientAdapter$DirectorySearchParams;->filter:Lcom/android/ex/chips/BaseRecipientAdapter$DirectoryFilter;

    invoke-virtual {v3, p1}, Lcom/android/ex/chips/BaseRecipientAdapter$DirectoryFilter;->filter(Ljava/lang/CharSequence;)V

    .line 591
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 603
    .end local v2           #params:Lcom/android/ex/chips/BaseRecipientAdapter$DirectorySearchParams;
    :cond_27
    add-int/lit8 v3, v0, -0x1

    iput v3, p0, Lcom/android/ex/chips/BaseRecipientAdapter;->mRemainingDirectoryCount:I

    .line 604
    iget-object v3, p0, Lcom/android/ex/chips/BaseRecipientAdapter;->mDelayedMessageHandler:Lcom/android/ex/chips/BaseRecipientAdapter$DelayedMessageHandler;

    invoke-virtual {v3}, Lcom/android/ex/chips/BaseRecipientAdapter$DelayedMessageHandler;->sendDelayedLoadMessage()V

    .line 605
    return-void
.end method

.method private tryFetchPhoto(Lcom/android/ex/chips/RecipientEntry;)V
    .registers 5
    .parameter "entry"

    .prologue
    .line 700
    invoke-virtual {p1}, Lcom/android/ex/chips/RecipientEntry;->getPhotoThumbnailUri()Landroid/net/Uri;

    move-result-object v1

    .line 701
    .local v1, photoThumbnailUri:Landroid/net/Uri;
    if-eqz v1, :cond_13

    .line 702
    iget-object v2, p0, Lcom/android/ex/chips/BaseRecipientAdapter;->mPhotoCacheMap:Landroid/util/LruCache;

    invoke-virtual {v2, v1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 703
    .local v0, photoBytes:[B
    if-eqz v0, :cond_14

    .line 704
    invoke-virtual {p1, v0}, Lcom/android/ex/chips/RecipientEntry;->setPhotoBytes([B)V

    .line 714
    .end local v0           #photoBytes:[B
    :cond_13
    :goto_13
    return-void

    .line 711
    .restart local v0       #photoBytes:[B
    :cond_14
    invoke-direct {p0, p1, v1}, Lcom/android/ex/chips/BaseRecipientAdapter;->fetchPhotoAsync(Lcom/android/ex/chips/RecipientEntry;Landroid/net/Uri;)V

    goto :goto_13
.end method

.method private updateEntries(Ljava/util/List;)V
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/ex/chips/RecipientEntry;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 695
    .local p1, newEntries:Ljava/util/List;,"Ljava/util/List<Lcom/android/ex/chips/RecipientEntry;>;"
    iput-object p1, p0, Lcom/android/ex/chips/BaseRecipientAdapter;->mEntries:Ljava/util/List;

    .line 696
    invoke-virtual {p0}, Lcom/android/ex/chips/BaseRecipientAdapter;->notifyDataSetChanged()V

    .line 697
    return-void
.end method


# virtual methods
.method protected fetchPhoto(Lcom/android/ex/chips/RecipientEntry;Landroid/net/Uri;)V
    .registers 11
    .parameter "entry"
    .parameter "photoThumbnailUri"

    .prologue
    const/4 v3, 0x0

    .line 747
    iget-object v0, p0, Lcom/android/ex/chips/BaseRecipientAdapter;->mPhotoCacheMap:Landroid/util/LruCache;

    invoke-virtual {v0, p2}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [B

    .line 748
    .local v6, photoBytes:[B
    if-eqz v6, :cond_f

    .line 749
    invoke-virtual {p1, v6}, Lcom/android/ex/chips/RecipientEntry;->setPhotoBytes([B)V

    .line 765
    :cond_e
    :goto_e
    return-void

    .line 752
    :cond_f
    iget-object v0, p0, Lcom/android/ex/chips/BaseRecipientAdapter;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v2, Lcom/android/ex/chips/BaseRecipientAdapter$PhotoQuery;->PROJECTION:[Ljava/lang/String;

    move-object v1, p2

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 754
    .local v7, photoCursor:Landroid/database/Cursor;
    if-eqz v7, :cond_e

    .line 756
    :try_start_1c
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 757
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v6

    .line 758
    invoke-virtual {p1, v6}, Lcom/android/ex/chips/RecipientEntry;->setPhotoBytes([B)V

    .line 759
    iget-object v0, p0, Lcom/android/ex/chips/BaseRecipientAdapter;->mPhotoCacheMap:Landroid/util/LruCache;

    invoke-virtual {v0, p2, v6}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2f
    .catchall {:try_start_1c .. :try_end_2f} :catchall_33

    .line 762
    :cond_2f
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_e

    :catchall_33
    move-exception v0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public getCount()I
    .registers 2

    .prologue
    .line 804
    iget-object v0, p0, Lcom/android/ex/chips/BaseRecipientAdapter;->mEntries:Ljava/util/List;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/android/ex/chips/BaseRecipientAdapter;->mEntries:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method protected abstract getDefaultPhotoResource()I
.end method

.method protected getDestinationId()I
    .registers 2

    .prologue
    .line 930
    const v0, 0x1020014

    return v0
.end method

.method protected getDestinationTypeId()I
    .registers 2

    .prologue
    .line 938
    const v0, 0x1020015

    return v0
.end method

.method protected getDisplayNameId()I
    .registers 2

    .prologue
    .line 921
    const v0, 0x1020016

    return v0
.end method

.method public getFilter()Landroid/widget/Filter;
    .registers 3

    .prologue
    .line 527
    new-instance v0, Lcom/android/ex/chips/BaseRecipientAdapter$DefaultFilter;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/ex/chips/BaseRecipientAdapter$DefaultFilter;-><init>(Lcom/android/ex/chips/BaseRecipientAdapter;Lcom/android/ex/chips/BaseRecipientAdapter$1;)V

    return-object v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .registers 3
    .parameter "position"

    .prologue
    .line 809
    iget-object v0, p0, Lcom/android/ex/chips/BaseRecipientAdapter;->mEntries:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .registers 4
    .parameter "position"

    .prologue
    .line 814
    int-to-long v0, p1

    return-wide v0
.end method

.method protected abstract getItemLayout()I
.end method

.method public getItemViewType(I)I
    .registers 3
    .parameter "position"

    .prologue
    .line 824
    iget-object v0, p0, Lcom/android/ex/chips/BaseRecipientAdapter;->mEntries:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/ex/chips/RecipientEntry;

    invoke-virtual {v0}, Lcom/android/ex/chips/RecipientEntry;->getEntryType()I

    move-result v0

    return v0
.end method

.method protected getPhotoId()I
    .registers 2

    .prologue
    .line 946
    const v0, 0x1020006

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 19
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 834
    iget-object v12, p0, Lcom/android/ex/chips/BaseRecipientAdapter;->mEntries:Ljava/util/List;

    move/from16 v0, p1

    invoke-interface {v12, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/ex/chips/RecipientEntry;

    .line 835
    .local v7, entry:Lcom/android/ex/chips/RecipientEntry;
    invoke-virtual {v7}, Lcom/android/ex/chips/RecipientEntry;->getEntryType()I

    move-result v12

    packed-switch v12, :pswitch_data_da

    .line 841
    invoke-virtual {v7}, Lcom/android/ex/chips/RecipientEntry;->getDisplayName()Ljava/lang/String;

    move-result-object v5

    .line 842
    .local v5, displayName:Ljava/lang/String;
    invoke-virtual {v7}, Lcom/android/ex/chips/RecipientEntry;->getDestination()Ljava/lang/String;

    move-result-object v1

    .line 843
    .local v1, destination:Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_25

    invoke-static {v5, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_27

    .line 845
    :cond_25
    move-object v5, v1

    .line 846
    const/4 v1, 0x0

    .line 849
    :cond_27
    if-eqz p2, :cond_b2

    move-object/from16 v9, p2

    .line 851
    .local v9, itemView:Landroid/view/View;
    :goto_2b
    invoke-virtual {p0}, Lcom/android/ex/chips/BaseRecipientAdapter;->getDisplayNameId()I

    move-result v12

    invoke-virtual {v9, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 853
    .local v6, displayNameView:Landroid/widget/TextView;
    invoke-virtual {p0}, Lcom/android/ex/chips/BaseRecipientAdapter;->getDestinationId()I

    move-result v12

    invoke-virtual {v9, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 855
    .local v4, destinationView:Landroid/widget/TextView;
    invoke-virtual {p0}, Lcom/android/ex/chips/BaseRecipientAdapter;->getDestinationTypeId()I

    move-result v12

    invoke-virtual {v9, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 857
    .local v3, destinationTypeView:Landroid/widget/TextView;
    invoke-virtual {p0}, Lcom/android/ex/chips/BaseRecipientAdapter;->getPhotoId()I

    move-result v12

    invoke-virtual {v9, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    .line 858
    .local v8, imageView:Landroid/widget/ImageView;
    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 859
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_c1

    .line 860
    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 864
    :goto_5f
    if-eqz v3, :cond_7e

    .line 865
    iget-object v12, p0, Lcom/android/ex/chips/BaseRecipientAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    invoke-virtual {v7}, Lcom/android/ex/chips/RecipientEntry;->getDestinationType()I

    move-result v13

    invoke-virtual {v7}, Lcom/android/ex/chips/RecipientEntry;->getDestinationLabel()Ljava/lang/String;

    move-result-object v14

    invoke-static {v12, v13, v14}, Landroid/provider/ContactsContract$CommonDataKinds$Email;->getTypeLabel(Landroid/content/res/Resources;ILjava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    .line 869
    .local v2, destinationType:Ljava/lang/CharSequence;
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 872
    .end local v2           #destinationType:Ljava/lang/CharSequence;
    :cond_7e
    invoke-virtual {v7}, Lcom/android/ex/chips/RecipientEntry;->isFirstLevel()Z

    move-result v12

    if-eqz v12, :cond_ce

    .line 873
    const/4 v12, 0x0

    invoke-virtual {v6, v12}, Landroid/widget/TextView;->setVisibility(I)V

    .line 874
    if-eqz v8, :cond_9f

    .line 875
    const/4 v12, 0x0

    invoke-virtual {v8, v12}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 876
    invoke-virtual {v7}, Lcom/android/ex/chips/RecipientEntry;->getPhotoBytes()[B

    move-result-object v11

    .line 877
    .local v11, photoBytes:[B
    if-eqz v11, :cond_c6

    if-eqz v8, :cond_c6

    .line 878
    const/4 v12, 0x0

    array-length v13, v11

    invoke-static {v11, v12, v13}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v10

    .line 880
    .local v10, photo:Landroid/graphics/Bitmap;
    invoke-virtual {v8, v10}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .end local v10           #photo:Landroid/graphics/Bitmap;
    .end local v11           #photoBytes:[B
    :cond_9f
    :goto_9f
    move-object/from16 p2, v9

    .line 891
    .end local v1           #destination:Ljava/lang/String;
    .end local v3           #destinationTypeView:Landroid/widget/TextView;
    .end local v4           #destinationView:Landroid/widget/TextView;
    .end local v5           #displayName:Ljava/lang/String;
    .end local v6           #displayNameView:Landroid/widget/TextView;
    .end local v8           #imageView:Landroid/widget/ImageView;
    .end local v9           #itemView:Landroid/view/View;
    .end local p2
    :cond_a1
    :goto_a1
    return-object p2

    .line 837
    .restart local p2
    :pswitch_a2
    if-nez p2, :cond_a1

    iget-object v12, p0, Lcom/android/ex/chips/BaseRecipientAdapter;->mInflater:Landroid/view/LayoutInflater;

    invoke-virtual {p0}, Lcom/android/ex/chips/BaseRecipientAdapter;->getWaitingForDirectorySearchLayout()I

    move-result v13

    const/4 v14, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v12, v13, v0, v14}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    goto :goto_a1

    .line 849
    .restart local v1       #destination:Ljava/lang/String;
    .restart local v5       #displayName:Ljava/lang/String;
    :cond_b2
    iget-object v12, p0, Lcom/android/ex/chips/BaseRecipientAdapter;->mInflater:Landroid/view/LayoutInflater;

    invoke-virtual {p0}, Lcom/android/ex/chips/BaseRecipientAdapter;->getItemLayout()I

    move-result v13

    const/4 v14, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v12, v13, v0, v14}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v9

    goto/16 :goto_2b

    .line 862
    .restart local v3       #destinationTypeView:Landroid/widget/TextView;
    .restart local v4       #destinationView:Landroid/widget/TextView;
    .restart local v6       #displayNameView:Landroid/widget/TextView;
    .restart local v8       #imageView:Landroid/widget/ImageView;
    .restart local v9       #itemView:Landroid/view/View;
    :cond_c1
    const/4 v12, 0x0

    invoke-virtual {v4, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_5f

    .line 882
    .restart local v11       #photoBytes:[B
    :cond_c6
    invoke-virtual {p0}, Lcom/android/ex/chips/BaseRecipientAdapter;->getDefaultPhotoResource()I

    move-result v12

    invoke-virtual {v8, v12}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_9f

    .line 886
    .end local v11           #photoBytes:[B
    :cond_ce
    const/16 v12, 0x8

    invoke-virtual {v6, v12}, Landroid/widget/TextView;->setVisibility(I)V

    .line 887
    if-eqz v8, :cond_9f

    .line 888
    const/4 v12, 0x4

    invoke-virtual {v8, v12}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_9f

    .line 835
    :pswitch_data_da
    .packed-switch 0x1
        :pswitch_a2
    .end packed-switch
.end method

.method public getViewTypeCount()I
    .registers 2

    .prologue
    .line 819
    const/4 v0, 0x2

    return v0
.end method

.method protected abstract getWaitingForDirectorySearchLayout()I
.end method

.method public isEnabled(I)Z
    .registers 3
    .parameter "position"

    .prologue
    .line 829
    iget-object v0, p0, Lcom/android/ex/chips/BaseRecipientAdapter;->mEntries:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/ex/chips/RecipientEntry;

    invoke-virtual {v0}, Lcom/android/ex/chips/RecipientEntry;->isSelectable()Z

    move-result v0

    return v0
.end method

.method public setAccount(Landroid/accounts/Account;)V
    .registers 2
    .parameter "account"

    .prologue
    .line 521
    iput-object p1, p0, Lcom/android/ex/chips/BaseRecipientAdapter;->mAccount:Landroid/accounts/Account;

    .line 522
    return-void
.end method
