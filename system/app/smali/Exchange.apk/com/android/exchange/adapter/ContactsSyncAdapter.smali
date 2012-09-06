.class public Lcom/android/exchange/adapter/ContactsSyncAdapter;
.super Lcom/android/exchange/adapter/AbstractSyncAdapter;
.source "ContactsSyncAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/exchange/adapter/ContactsSyncAdapter$1;,
        Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;,
        Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;,
        Lcom/android/exchange/adapter/ContactsSyncAdapter$EasContactsSyncParser;,
        Lcom/android/exchange/adapter/ContactsSyncAdapter$PhoneRow;,
        Lcom/android/exchange/adapter/ContactsSyncAdapter$ImRow;,
        Lcom/android/exchange/adapter/ContactsSyncAdapter$EmailRow;,
        Lcom/android/exchange/adapter/ContactsSyncAdapter$Address;,
        Lcom/android/exchange/adapter/ContactsSyncAdapter$EasBusiness;,
        Lcom/android/exchange/adapter/ContactsSyncAdapter$EasPersonal;,
        Lcom/android/exchange/adapter/ContactsSyncAdapter$EasChildren;,
        Lcom/android/exchange/adapter/ContactsSyncAdapter$UntypedRow;
    }
.end annotation


# static fields
.field private static final EMAIL_TAGS:[I

.field private static final EMPTY_ARRAY_NAMEDCONTENTVALUES:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/Entity$NamedContentValues;",
            ">;"
        }
    .end annotation
.end field

.field private static final GROUPS_ID_PROJECTION:[Ljava/lang/String;

.field private static final GROUP_TITLE_PROJECTION:[Ljava/lang/String;

.field private static final HOME_ADDRESS_TAGS:[I

.field private static final HOME_PHONE_TAGS:[I

.field private static final ID_PROJECTION:[Ljava/lang/String;

.field private static final IM_TAGS:[I

.field private static final OTHER_ADDRESS_TAGS:[I

.field private static final WORK_ADDRESS_TAGS:[I

.field private static final WORK_PHONE_TAGS:[I

.field private static final sSyncKeyLock:Ljava/lang/Object;


# instance fields
.field private final mAccountUri:Landroid/net/Uri;

.field private final mContentResolver:Landroid/content/ContentResolver;

.field mDeletedIdList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mGroupsUsed:Z

.field mUpdatedIdList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x5

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 78
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/exchange/adapter/ContactsSyncAdapter;->ID_PROJECTION:[Ljava/lang/String;

    .line 79
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "title"

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/exchange/adapter/ContactsSyncAdapter;->GROUP_TITLE_PROJECTION:[Ljava/lang/String;

    .line 82
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/exchange/adapter/ContactsSyncAdapter;->GROUPS_ID_PROJECTION:[Ljava/lang/String;

    .line 84
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/exchange/adapter/ContactsSyncAdapter;->EMPTY_ARRAY_NAMEDCONTENTVALUES:Ljava/util/ArrayList;

    .line 89
    new-array v0, v4, [I

    fill-array-data v0, :array_5e

    sput-object v0, Lcom/android/exchange/adapter/ContactsSyncAdapter;->HOME_ADDRESS_TAGS:[I

    .line 95
    new-array v0, v4, [I

    fill-array-data v0, :array_6c

    sput-object v0, Lcom/android/exchange/adapter/ContactsSyncAdapter;->WORK_ADDRESS_TAGS:[I

    .line 101
    new-array v0, v4, [I

    fill-array-data v0, :array_7a

    sput-object v0, Lcom/android/exchange/adapter/ContactsSyncAdapter;->OTHER_ADDRESS_TAGS:[I

    .line 113
    new-array v0, v6, [I

    fill-array-data v0, :array_88

    sput-object v0, Lcom/android/exchange/adapter/ContactsSyncAdapter;->IM_TAGS:[I

    .line 116
    new-array v0, v6, [I

    fill-array-data v0, :array_92

    sput-object v0, Lcom/android/exchange/adapter/ContactsSyncAdapter;->EMAIL_TAGS:[I

    .line 119
    new-array v0, v5, [I

    fill-array-data v0, :array_9c

    sput-object v0, Lcom/android/exchange/adapter/ContactsSyncAdapter;->WORK_PHONE_TAGS:[I

    .line 122
    new-array v0, v5, [I

    fill-array-data v0, :array_a4

    sput-object v0, Lcom/android/exchange/adapter/ContactsSyncAdapter;->HOME_PHONE_TAGS:[I

    .line 125
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/exchange/adapter/ContactsSyncAdapter;->sSyncKeyLock:Ljava/lang/Object;

    return-void

    .line 89
    nop

    :array_5e
    .array-data 0x4
        0x61t 0x0t 0x0t 0x0t
        0x62t 0x0t 0x0t 0x0t
        0x63t 0x0t 0x0t 0x0t
        0x64t 0x0t 0x0t 0x0t
        0x65t 0x0t 0x0t 0x0t
    .end array-data

    .line 95
    :array_6c
    .array-data 0x4
        0x4dt 0x0t 0x0t 0x0t
        0x4et 0x0t 0x0t 0x0t
        0x4ft 0x0t 0x0t 0x0t
        0x50t 0x0t 0x0t 0x0t
        0x51t 0x0t 0x0t 0x0t
    .end array-data

    .line 101
    :array_7a
    .array-data 0x4
        0x61t 0x0t 0x0t 0x0t
        0x6et 0x0t 0x0t 0x0t
        0x6ft 0x0t 0x0t 0x0t
        0x70t 0x0t 0x0t 0x0t
        0x71t 0x0t 0x0t 0x0t
    .end array-data

    .line 113
    :array_88
    .array-data 0x4
        0x7t 0x3t 0x0t 0x0t
        0x8t 0x3t 0x0t 0x0t
        0x9t 0x3t 0x0t 0x0t
    .end array-data

    .line 116
    :array_92
    .array-data 0x4
        0x5bt 0x0t 0x0t 0x0t
        0x5ct 0x0t 0x0t 0x0t
        0x5dt 0x0t 0x0t 0x0t
    .end array-data

    .line 119
    :array_9c
    .array-data 0x4
        0x53t 0x0t 0x0t 0x0t
        0x4ct 0x0t 0x0t 0x0t
    .end array-data

    .line 122
    :array_a4
    .array-data 0x4
        0x67t 0x0t 0x0t 0x0t
        0x60t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>(Lcom/android/exchange/EasSyncService;)V
    .registers 3
    .parameter "service"

    .prologue
    .line 135
    invoke-direct {p0, p1}, Lcom/android/exchange/adapter/AbstractSyncAdapter;-><init>(Lcom/android/exchange/EasSyncService;)V

    .line 127
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/exchange/adapter/ContactsSyncAdapter;->mDeletedIdList:Ljava/util/ArrayList;

    .line 128
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/exchange/adapter/ContactsSyncAdapter;->mUpdatedIdList:Ljava/util/ArrayList;

    .line 132
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/exchange/adapter/ContactsSyncAdapter;->mGroupsUsed:Z

    .line 136
    sget-object v0, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {p0, v0}, Lcom/android/exchange/adapter/ContactsSyncAdapter;->uriWithAccountAndIsSyncAdapter(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/exchange/adapter/ContactsSyncAdapter;->mAccountUri:Landroid/net/Uri;

    .line 137
    iget-object v0, p0, Lcom/android/exchange/adapter/ContactsSyncAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/exchange/adapter/ContactsSyncAdapter;->mContentResolver:Landroid/content/ContentResolver;

    .line 138
    return-void
.end method

.method static synthetic access$102(Lcom/android/exchange/adapter/ContactsSyncAdapter;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 73
    iput-boolean p1, p0, Lcom/android/exchange/adapter/ContactsSyncAdapter;->mGroupsUsed:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/exchange/adapter/ContactsSyncAdapter;)Landroid/net/Uri;
    .registers 2
    .parameter "x0"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/exchange/adapter/ContactsSyncAdapter;->mAccountUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$300()[Ljava/lang/String;
    .registers 1

    .prologue
    .line 73
    sget-object v0, Lcom/android/exchange/adapter/ContactsSyncAdapter;->ID_PROJECTION:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/exchange/adapter/ContactsSyncAdapter;Landroid/net/Uri;)Landroid/net/Uri;
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 73
    invoke-direct {p0, p1}, Lcom/android/exchange/adapter/ContactsSyncAdapter;->uriWithAccountAndIsSyncAdapter(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800()Ljava/util/ArrayList;
    .registers 1

    .prologue
    .line 73
    sget-object v0, Lcom/android/exchange/adapter/ContactsSyncAdapter;->EMPTY_ARRAY_NAMEDCONTENTVALUES:Ljava/util/ArrayList;

    return-object v0
.end method

.method static addCallerIsSyncAdapterParameter(Landroid/net/Uri;)Landroid/net/Uri;
    .registers 4
    .parameter "uri"

    .prologue
    .line 141
    invoke-virtual {p0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "caller_is_syncadapter"

    const-string v2, "true"

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method private dirtyContactsWithinDirtyGroups()V
    .registers 12

    .prologue
    const/4 v4, 0x0

    .line 1748
    iget-object v1, p0, Lcom/android/exchange/adapter/ContactsSyncAdapter;->mService:Lcom/android/exchange/EasSyncService;

    iget-object v0, v1, Lcom/android/exchange/EasSyncService;->mContentResolver:Landroid/content/ContentResolver;

    .line 1749
    .local v0, cr:Landroid/content/ContentResolver;
    sget-object v1, Landroid/provider/ContactsContract$Groups;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {p0, v1}, Lcom/android/exchange/adapter/ContactsSyncAdapter;->uriWithAccountAndIsSyncAdapter(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v1

    sget-object v2, Lcom/android/exchange/adapter/ContactsSyncAdapter;->GROUPS_ID_PROJECTION:[Ljava/lang/String;

    const-string v3, "dirty=1"

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1752
    .local v6, c:Landroid/database/Cursor;
    :try_start_14
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_6e

    .line 1753
    const/4 v1, 0x1

    new-array v9, v1, [Ljava/lang/String;

    .line 1754
    .local v9, updateArgs:[Ljava/lang/String;
    new-instance v10, Landroid/content/ContentValues;

    invoke-direct {v10}, Landroid/content/ContentValues;-><init>()V

    .line 1755
    .local v10, updateValues:Landroid/content/ContentValues;
    :goto_22
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_4a

    .line 1759
    const/4 v1, 0x0

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    .line 1760
    .local v7, id:J
    const-string v1, "data1"

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v10, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1761
    const/4 v1, 0x0

    invoke-static {v7, v8}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v9, v1

    .line 1762
    sget-object v1, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    const-string v2, "mimetype=\'vnd.android.cursor.item/group_membership\' AND data1=?"

    invoke-virtual {v0, v1, v10, v2, v9}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_44
    .catchall {:try_start_14 .. :try_end_44} :catchall_45

    goto :goto_22

    .line 1775
    .end local v7           #id:J
    .end local v9           #updateArgs:[Ljava/lang/String;
    .end local v10           #updateValues:Landroid/content/ContentValues;
    :catchall_45
    move-exception v1

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v1

    .line 1766
    .restart local v9       #updateArgs:[Ljava/lang/String;
    .restart local v10       #updateValues:Landroid/content/ContentValues;
    :cond_4a
    :try_start_4a
    sget-object v1, Landroid/provider/ContactsContract$Groups;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {p0, v1}, Lcom/android/exchange/adapter/ContactsSyncAdapter;->uriWithAccountAndIsSyncAdapter(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "deleted=1"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1769
    invoke-virtual {v10}, Landroid/content/ContentValues;->clear()V

    .line 1770
    const-string v1, "dirty"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v10, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1771
    sget-object v1, Landroid/provider/ContactsContract$Groups;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {p0, v1}, Lcom/android/exchange/adapter/ContactsSyncAdapter;->uriWithAccountAndIsSyncAdapter(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v10, v2, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_6e
    .catchall {:try_start_4a .. :try_end_6e} :catchall_45

    .line 1775
    .end local v9           #updateArgs:[Ljava/lang/String;
    .end local v10           #updateValues:Landroid/content/ContentValues;
    :cond_6e
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1777
    return-void
.end method

.method private sendBirthday(Lcom/android/exchange/adapter/Serializer;Landroid/content/ContentValues;)V
    .registers 5
    .parameter "s"
    .parameter "cv"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1618
    const-string v0, "data1"

    const/16 v1, 0x48

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/exchange/adapter/ContactsSyncAdapter;->sendStringData(Lcom/android/exchange/adapter/Serializer;Landroid/content/ContentValues;Ljava/lang/String;I)V

    .line 1619
    return-void
.end method

.method private sendBusiness(Lcom/android/exchange/adapter/Serializer;Landroid/content/ContentValues;)V
    .registers 5
    .parameter "s"
    .parameter "cv"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1607
    const-string v0, "data8"

    const/16 v1, 0x30c

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/exchange/adapter/ContactsSyncAdapter;->sendStringData(Lcom/android/exchange/adapter/Serializer;Landroid/content/ContentValues;Ljava/lang/String;I)V

    .line 1608
    const-string v0, "data6"

    const/16 v1, 0x305

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/exchange/adapter/ContactsSyncAdapter;->sendStringData(Lcom/android/exchange/adapter/Serializer;Landroid/content/ContentValues;Ljava/lang/String;I)V

    .line 1609
    const-string v0, "data7"

    const/16 v1, 0x306

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/exchange/adapter/ContactsSyncAdapter;->sendStringData(Lcom/android/exchange/adapter/Serializer;Landroid/content/ContentValues;Ljava/lang/String;I)V

    .line 1610
    return-void
.end method

.method private sendChildren(Lcom/android/exchange/adapter/Serializer;Landroid/content/ContentValues;)V
    .registers 8
    .parameter "s"
    .parameter "cv"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1666
    const/4 v0, 0x1

    .line 1667
    .local v0, first:Z
    const/4 v1, 0x0

    .local v1, i:I
    :goto_2
    const/16 v3, 0x8

    if-ge v1, v3, :cond_24

    .line 1668
    sget-object v3, Lcom/android/exchange/adapter/ContactsSyncAdapter$EasChildren;->ROWS:[Ljava/lang/String;

    aget-object v2, v3, v1

    .line 1669
    .local v2, row:Ljava/lang/String;
    invoke-virtual {p2, v2}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_21

    .line 1670
    if-eqz v0, :cond_18

    .line 1671
    const/16 v3, 0x57

    invoke-virtual {p1, v3}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    .line 1672
    const/4 v0, 0x0

    .line 1674
    :cond_18
    const/16 v3, 0x58

    invoke-virtual {p2, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v3, v4}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 1667
    :cond_21
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1677
    .end local v2           #row:Ljava/lang/String;
    :cond_24
    if-nez v0, :cond_29

    .line 1678
    invoke-virtual {p1}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    .line 1680
    :cond_29
    return-void
.end method

.method private sendEmail(Lcom/android/exchange/adapter/Serializer;Landroid/content/ContentValues;ILjava/lang/String;)V
    .registers 10
    .parameter "s"
    .parameter "cv"
    .parameter "count"
    .parameter "displayName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1527
    const-string v3, "data1"

    invoke-virtual {p2, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1528
    .local v0, addr:Ljava/lang/String;
    const-string v3, "data4"

    invoke-virtual {p2, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1529
    .local v1, name:Ljava/lang/String;
    if-nez v1, :cond_11

    .line 1530
    if-eqz p4, :cond_41

    .line 1531
    move-object v1, p4

    .line 1537
    :cond_11
    :goto_11
    if-eqz v0, :cond_40

    .line 1538
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v4, 0x22

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\" <"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x3e

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1539
    .local v2, value:Ljava/lang/String;
    const/4 v3, 0x3

    if-ge p3, v3, :cond_40

    .line 1540
    sget-object v3, Lcom/android/exchange/adapter/ContactsSyncAdapter;->EMAIL_TAGS:[I

    aget v3, v3, p3

    invoke-virtual {p1, v3, v2}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 1543
    .end local v2           #value:Ljava/lang/String;
    :cond_40
    return-void

    .line 1533
    :cond_41
    move-object v1, v0

    goto :goto_11
.end method

.method private sendIm(Lcom/android/exchange/adapter/Serializer;Landroid/content/ContentValues;I)V
    .registers 6
    .parameter "s"
    .parameter "cv"
    .parameter "count"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1546
    const-string v1, "data1"

    invoke-virtual {p2, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1547
    .local v0, value:Ljava/lang/String;
    if-nez v0, :cond_9

    .line 1551
    :cond_8
    :goto_8
    return-void

    .line 1548
    :cond_9
    const/4 v1, 0x3

    if-ge p3, v1, :cond_8

    .line 1549
    sget-object v1, Lcom/android/exchange/adapter/ContactsSyncAdapter;->IM_TAGS:[I

    aget v1, v1, p3

    invoke-virtual {p1, v1, v0}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    goto :goto_8
.end method

.method private sendNickname(Lcom/android/exchange/adapter/Serializer;Landroid/content/ContentValues;)V
    .registers 5
    .parameter "s"
    .parameter "cv"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1640
    const-string v0, "data1"

    const/16 v1, 0x30d

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/exchange/adapter/ContactsSyncAdapter;->sendStringData(Lcom/android/exchange/adapter/Serializer;Landroid/content/ContentValues;Ljava/lang/String;I)V

    .line 1641
    return-void
.end method

.method private sendNote(Lcom/android/exchange/adapter/Serializer;Landroid/content/ContentValues;)V
    .registers 8
    .parameter "s"
    .parameter "cv"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1650
    const-string v0, ""

    .line 1651
    .local v0, note:Ljava/lang/String;
    const-string v1, "data1"

    invoke-virtual {p2, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 1653
    const-string v1, "data1"

    invoke-virtual {p2, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "\n"

    const-string v3, "\r\n"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1656
    :cond_18
    iget-object v1, p0, Lcom/android/exchange/adapter/ContactsSyncAdapter;->mService:Lcom/android/exchange/EasSyncService;

    iget-object v1, v1, Lcom/android/exchange/EasSyncService;->mProtocolVersionDouble:Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    const-wide/high16 v3, 0x4028

    cmpl-double v1, v1, v3

    if-ltz v1, :cond_3c

    .line 1657
    const/16 v1, 0x44a

    invoke-virtual {p1, v1}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    .line 1658
    const/16 v1, 0x446

    const-string v2, "1"

    invoke-virtual {p1, v1, v2}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    move-result-object v1

    const/16 v2, 0x44b

    invoke-virtual {v1, v2, v0}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 1659
    invoke-virtual {p1}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    .line 1663
    :goto_3b
    return-void

    .line 1661
    :cond_3c
    const/16 v1, 0x49

    invoke-virtual {p1, v1, v0}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    goto :goto_3b
.end method

.method private sendOnePostal(Lcom/android/exchange/adapter/Serializer;Landroid/content/ContentValues;[I)V
    .registers 6
    .parameter "s"
    .parameter "cv"
    .parameter "fieldNames"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1555
    const-string v0, "data7"

    const/4 v1, 0x0

    aget v1, p3, v1

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/exchange/adapter/ContactsSyncAdapter;->sendStringData(Lcom/android/exchange/adapter/Serializer;Landroid/content/ContentValues;Ljava/lang/String;I)V

    .line 1556
    const-string v0, "data10"

    const/4 v1, 0x1

    aget v1, p3, v1

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/exchange/adapter/ContactsSyncAdapter;->sendStringData(Lcom/android/exchange/adapter/Serializer;Landroid/content/ContentValues;Ljava/lang/String;I)V

    .line 1557
    const-string v0, "data9"

    const/4 v1, 0x2

    aget v1, p3, v1

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/exchange/adapter/ContactsSyncAdapter;->sendStringData(Lcom/android/exchange/adapter/Serializer;Landroid/content/ContentValues;Ljava/lang/String;I)V

    .line 1558
    const-string v0, "data8"

    const/4 v1, 0x3

    aget v1, p3, v1

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/exchange/adapter/ContactsSyncAdapter;->sendStringData(Lcom/android/exchange/adapter/Serializer;Landroid/content/ContentValues;Ljava/lang/String;I)V

    .line 1559
    const-string v0, "data4"

    const/4 v1, 0x4

    aget v1, p3, v1

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/exchange/adapter/ContactsSyncAdapter;->sendStringData(Lcom/android/exchange/adapter/Serializer;Landroid/content/ContentValues;Ljava/lang/String;I)V

    .line 1560
    return-void
.end method

.method private sendOrganization(Lcom/android/exchange/adapter/Serializer;Landroid/content/ContentValues;)V
    .registers 5
    .parameter "s"
    .parameter "cv"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1633
    const-string v0, "data4"

    const/16 v1, 0x68

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/exchange/adapter/ContactsSyncAdapter;->sendStringData(Lcom/android/exchange/adapter/Serializer;Landroid/content/ContentValues;Ljava/lang/String;I)V

    .line 1634
    const-string v0, "data1"

    const/16 v1, 0x59

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/exchange/adapter/ContactsSyncAdapter;->sendStringData(Lcom/android/exchange/adapter/Serializer;Landroid/content/ContentValues;Ljava/lang/String;I)V

    .line 1635
    const-string v0, "data5"

    const/16 v1, 0x5a

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/exchange/adapter/ContactsSyncAdapter;->sendStringData(Lcom/android/exchange/adapter/Serializer;Landroid/content/ContentValues;Ljava/lang/String;I)V

    .line 1636
    const-string v0, "data9"

    const/16 v1, 0x6c

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/exchange/adapter/ContactsSyncAdapter;->sendStringData(Lcom/android/exchange/adapter/Serializer;Landroid/content/ContentValues;Ljava/lang/String;I)V

    .line 1637
    return-void
.end method

.method private sendPersonal(Lcom/android/exchange/adapter/Serializer;Landroid/content/ContentValues;)V
    .registers 5
    .parameter "s"
    .parameter "cv"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1613
    const-string v0, "data2"

    const/16 v1, 0x45

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/exchange/adapter/ContactsSyncAdapter;->sendStringData(Lcom/android/exchange/adapter/Serializer;Landroid/content/ContentValues;Ljava/lang/String;I)V

    .line 1614
    const-string v0, "data4"

    const/16 v1, 0x5e

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/exchange/adapter/ContactsSyncAdapter;->sendStringData(Lcom/android/exchange/adapter/Serializer;Landroid/content/ContentValues;Ljava/lang/String;I)V

    .line 1615
    return-void
.end method

.method private sendPhone(Lcom/android/exchange/adapter/Serializer;Landroid/content/ContentValues;II)V
    .registers 8
    .parameter "s"
    .parameter "cv"
    .parameter "workCount"
    .parameter "homeCount"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x2

    .line 1684
    const-string v1, "data1"

    invoke-virtual {p2, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1685
    .local v0, value:Ljava/lang/String;
    if-nez v0, :cond_a

    .line 1727
    :cond_9
    :goto_9
    return-void

    .line 1686
    :cond_a
    const-string v1, "data2"

    invoke-virtual {p2, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    packed-switch v1, :pswitch_data_62

    :pswitch_17
    goto :goto_9

    .line 1705
    :pswitch_18
    if-ge p4, v2, :cond_9

    .line 1706
    sget-object v1, Lcom/android/exchange/adapter/ContactsSyncAdapter;->HOME_PHONE_TAGS:[I

    aget v1, v1, p4

    invoke-virtual {p1, v1, v0}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    goto :goto_9

    .line 1688
    :pswitch_22
    if-ge p3, v2, :cond_9

    .line 1689
    sget-object v1, Lcom/android/exchange/adapter/ContactsSyncAdapter;->WORK_PHONE_TAGS:[I

    aget v1, v1, p3

    invoke-virtual {p1, v1, v0}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    goto :goto_9

    .line 1693
    :pswitch_2c
    const/16 v1, 0x30e

    invoke-virtual {p1, v1, v0}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    goto :goto_9

    .line 1696
    :pswitch_32
    const/16 v1, 0x47

    invoke-virtual {p1, v1, v0}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    goto :goto_9

    .line 1699
    :pswitch_38
    const/16 v1, 0x52

    invoke-virtual {p1, v1, v0}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    goto :goto_9

    .line 1702
    :pswitch_3e
    const/16 v1, 0x30b

    invoke-virtual {p1, v1, v0}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    goto :goto_9

    .line 1710
    :pswitch_44
    const/16 v1, 0x6b

    invoke-virtual {p1, v1, v0}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    goto :goto_9

    .line 1713
    :pswitch_4a
    const/16 v1, 0x54

    invoke-virtual {p1, v1, v0}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    goto :goto_9

    .line 1716
    :pswitch_50
    const/16 v1, 0x72

    invoke-virtual {p1, v1, v0}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    goto :goto_9

    .line 1719
    :pswitch_56
    const/16 v1, 0x73

    invoke-virtual {p1, v1, v0}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    goto :goto_9

    .line 1722
    :pswitch_5c
    const/16 v1, 0x66

    invoke-virtual {p1, v1, v0}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    goto :goto_9

    .line 1686
    :pswitch_data_62
    .packed-switch 0x1
        :pswitch_18
        :pswitch_44
        :pswitch_22
        :pswitch_38
        :pswitch_5c
        :pswitch_50
        :pswitch_17
        :pswitch_17
        :pswitch_4a
        :pswitch_3e
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_56
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_32
        :pswitch_2c
    .end packed-switch
.end method

.method private sendPhoto(Lcom/android/exchange/adapter/Serializer;Landroid/content/ContentValues;)V
    .registers 7
    .parameter "s"
    .parameter "cv"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v3, 0x7c

    .line 1622
    const-string v2, "data15"

    invoke-virtual {p2, v2}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_19

    .line 1623
    const-string v2, "data15"

    invoke-virtual {p2, v2}, Landroid/content/ContentValues;->getAsByteArray(Ljava/lang/String;)[B

    move-result-object v0

    .line 1624
    .local v0, bytes:[B
    const/4 v2, 0x2

    invoke-static {v0, v2}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v1

    .line 1625
    .local v1, pic:Ljava/lang/String;
    invoke-virtual {p1, v3, v1}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 1630
    .end local v0           #bytes:[B
    .end local v1           #pic:Ljava/lang/String;
    :goto_18
    return-void

    .line 1628
    :cond_19
    invoke-virtual {p1, v3}, Lcom/android/exchange/adapter/Serializer;->tag(I)Lcom/android/exchange/adapter/Serializer;

    goto :goto_18
.end method

.method private sendRelation(Lcom/android/exchange/adapter/Serializer;Landroid/content/ContentValues;)V
    .registers 5
    .parameter "s"
    .parameter "cv"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1730
    const-string v1, "data1"

    invoke-virtual {p2, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1731
    .local v0, value:Ljava/lang/String;
    if-nez v0, :cond_9

    .line 1745
    :goto_8
    return-void

    .line 1732
    :cond_9
    const-string v1, "data2"

    invoke-virtual {p2, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sparse-switch v1, :sswitch_data_2a

    goto :goto_8

    .line 1734
    :sswitch_17
    const/16 v1, 0x46

    invoke-virtual {p1, v1, v0}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    goto :goto_8

    .line 1737
    :sswitch_1d
    const/16 v1, 0x30a

    invoke-virtual {p1, v1, v0}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    goto :goto_8

    .line 1740
    :sswitch_23
    const/16 v1, 0x74

    invoke-virtual {p1, v1, v0}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    goto :goto_8

    .line 1732
    nop

    :sswitch_data_2a
    .sparse-switch
        0x1 -> :sswitch_17
        0x7 -> :sswitch_1d
        0xe -> :sswitch_23
    .end sparse-switch
.end method

.method private sendStringData(Lcom/android/exchange/adapter/Serializer;Landroid/content/ContentValues;Ljava/lang/String;I)V
    .registers 7
    .parameter "s"
    .parameter "cv"
    .parameter "column"
    .parameter "tag"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1580
    invoke-virtual {p2, p3}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 1581
    invoke-virtual {p2, p3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1582
    .local v0, value:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_13

    .line 1583
    invoke-virtual {p1, p4, v0}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 1586
    .end local v0           #value:Ljava/lang/String;
    :cond_13
    return-void
.end method

.method private sendStructuredName(Lcom/android/exchange/adapter/Serializer;Landroid/content/ContentValues;)Ljava/lang/String;
    .registers 6
    .parameter "s"
    .parameter "cv"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1589
    const/4 v0, 0x0

    .line 1590
    .local v0, displayName:Ljava/lang/String;
    const-string v1, "data3"

    const/16 v2, 0x69

    invoke-direct {p0, p1, p2, v1, v2}, Lcom/android/exchange/adapter/ContactsSyncAdapter;->sendStringData(Lcom/android/exchange/adapter/Serializer;Landroid/content/ContentValues;Ljava/lang/String;I)V

    .line 1591
    const-string v1, "data2"

    const/16 v2, 0x5f

    invoke-direct {p0, p1, p2, v1, v2}, Lcom/android/exchange/adapter/ContactsSyncAdapter;->sendStringData(Lcom/android/exchange/adapter/Serializer;Landroid/content/ContentValues;Ljava/lang/String;I)V

    .line 1592
    const-string v1, "data5"

    const/16 v2, 0x6a

    invoke-direct {p0, p1, p2, v1, v2}, Lcom/android/exchange/adapter/ContactsSyncAdapter;->sendStringData(Lcom/android/exchange/adapter/Serializer;Landroid/content/ContentValues;Ljava/lang/String;I)V

    .line 1593
    const-string v1, "data6"

    const/16 v2, 0x75

    invoke-direct {p0, p1, p2, v1, v2}, Lcom/android/exchange/adapter/ContactsSyncAdapter;->sendStringData(Lcom/android/exchange/adapter/Serializer;Landroid/content/ContentValues;Ljava/lang/String;I)V

    .line 1594
    const-string v1, "data7"

    const/16 v2, 0x79

    invoke-direct {p0, p1, p2, v1, v2}, Lcom/android/exchange/adapter/ContactsSyncAdapter;->sendStringData(Lcom/android/exchange/adapter/Serializer;Landroid/content/ContentValues;Ljava/lang/String;I)V

    .line 1595
    const-string v1, "data9"

    const/16 v2, 0x7a

    invoke-direct {p0, p1, p2, v1, v2}, Lcom/android/exchange/adapter/ContactsSyncAdapter;->sendStringData(Lcom/android/exchange/adapter/Serializer;Landroid/content/ContentValues;Ljava/lang/String;I)V

    .line 1596
    const-string v1, "data4"

    const/16 v2, 0x76

    invoke-direct {p0, p1, p2, v1, v2}, Lcom/android/exchange/adapter/ContactsSyncAdapter;->sendStringData(Lcom/android/exchange/adapter/Serializer;Landroid/content/ContentValues;Ljava/lang/String;I)V

    .line 1597
    const-string v1, "data1"

    invoke-virtual {p2, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4b

    .line 1598
    const-string v1, "data1"

    invoke-virtual {p2, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1599
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4b

    .line 1600
    const/16 v1, 0x5e

    invoke-virtual {p1, v1, v0}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 1603
    :cond_4b
    return-object v0
.end method

.method private sendStructuredPostal(Lcom/android/exchange/adapter/Serializer;Landroid/content/ContentValues;)V
    .registers 4
    .parameter "s"
    .parameter "cv"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1563
    const-string v0, "data2"

    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    packed-switch v0, :pswitch_data_20

    .line 1576
    :goto_d
    return-void

    .line 1565
    :pswitch_e
    sget-object v0, Lcom/android/exchange/adapter/ContactsSyncAdapter;->HOME_ADDRESS_TAGS:[I

    invoke-direct {p0, p1, p2, v0}, Lcom/android/exchange/adapter/ContactsSyncAdapter;->sendOnePostal(Lcom/android/exchange/adapter/Serializer;Landroid/content/ContentValues;[I)V

    goto :goto_d

    .line 1568
    :pswitch_14
    sget-object v0, Lcom/android/exchange/adapter/ContactsSyncAdapter;->WORK_ADDRESS_TAGS:[I

    invoke-direct {p0, p1, p2, v0}, Lcom/android/exchange/adapter/ContactsSyncAdapter;->sendOnePostal(Lcom/android/exchange/adapter/Serializer;Landroid/content/ContentValues;[I)V

    goto :goto_d

    .line 1571
    :pswitch_1a
    sget-object v0, Lcom/android/exchange/adapter/ContactsSyncAdapter;->OTHER_ADDRESS_TAGS:[I

    invoke-direct {p0, p1, p2, v0}, Lcom/android/exchange/adapter/ContactsSyncAdapter;->sendOnePostal(Lcom/android/exchange/adapter/Serializer;Landroid/content/ContentValues;[I)V

    goto :goto_d

    .line 1563
    :pswitch_data_20
    .packed-switch 0x1
        :pswitch_e
        :pswitch_14
        :pswitch_1a
    .end packed-switch
.end method

.method private sendWebpage(Lcom/android/exchange/adapter/Serializer;Landroid/content/ContentValues;)V
    .registers 5
    .parameter "s"
    .parameter "cv"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1644
    const-string v0, "data1"

    const/16 v1, 0x77

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/exchange/adapter/ContactsSyncAdapter;->sendStringData(Lcom/android/exchange/adapter/Serializer;Landroid/content/ContentValues;Ljava/lang/String;I)V

    .line 1645
    return-void
.end method

.method private uriWithAccountAndIsSyncAdapter(Landroid/net/Uri;)Landroid/net/Uri;
    .registers 5
    .parameter "uri"

    .prologue
    .line 903
    invoke-virtual {p1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "account_name"

    iget-object v2, p0, Lcom/android/exchange/adapter/ContactsSyncAdapter;->mAccount:Lcom/android/emailcommon/provider/Account;

    iget-object v2, v2, Lcom/android/emailcommon/provider/Account;->mEmailAddress:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "account_type"

    const-string v2, "com.android.exchange"

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "caller_is_syncadapter"

    const-string v2, "true"

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public cleanup()V
    .registers 13

    .prologue
    .line 1477
    new-instance v9, Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;

    const/4 v2, 0x0

    invoke-direct {v9, p0, v2}, Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;-><init>(Lcom/android/exchange/adapter/ContactsSyncAdapter;Lcom/android/exchange/adapter/ContactsSyncAdapter$1;)V

    .line 1478
    .local v9, ops:Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;
    iget-object v2, p0, Lcom/android/exchange/adapter/ContactsSyncAdapter;->mUpdatedIdList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, i$:Ljava/util/Iterator;
    :goto_c
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_49

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Long;

    .line 1479
    .local v8, id:Ljava/lang/Long;
    sget-object v2, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v3, "caller_is_syncadapter"

    const-string v4, "true"

    invoke-virtual {v2, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    invoke-static {v2}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    const-string v3, "dirty"

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v2

    invoke-virtual {v9, v2}, Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;->add(Landroid/content/ContentProviderOperation;)Z

    goto :goto_c

    .line 1486
    .end local v8           #id:Ljava/lang/Long;
    :cond_49
    iget-object v2, p0, Lcom/android/exchange/adapter/ContactsSyncAdapter;->mDeletedIdList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_4f
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_81

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Long;

    .line 1487
    .restart local v8       #id:Ljava/lang/Long;
    sget-object v2, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v3, "caller_is_syncadapter"

    const-string v4, "true"

    invoke-virtual {v2, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    invoke-static {v2}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v2

    invoke-virtual {v9, v2}, Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;->add(Landroid/content/ContentProviderOperation;)Z

    goto :goto_4f

    .line 1494
    .end local v8           #id:Ljava/lang/Long;
    :cond_81
    invoke-virtual {v9}, Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;->execute()V

    .line 1495
    iget-object v2, p0, Lcom/android/exchange/adapter/ContactsSyncAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1496
    .local v0, cr:Landroid/content/ContentResolver;
    iget-boolean v2, p0, Lcom/android/exchange/adapter/ContactsSyncAdapter;->mGroupsUsed:Z

    if-eqz v2, :cond_e0

    .line 1501
    sget-object v2, Landroid/provider/ContactsContract$Groups;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {p0, v2}, Lcom/android/exchange/adapter/ContactsSyncAdapter;->uriWithAccountAndIsSyncAdapter(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v1

    .line 1502
    .local v1, groupsUri:Landroid/net/Uri;
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "sourceid"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "title"

    aput-object v4, v2, v3

    const-string v3, "title IS NULL"

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1504
    .local v6, c:Landroid/database/Cursor;
    new-instance v11, Landroid/content/ContentValues;

    invoke-direct {v11}, Landroid/content/ContentValues;-><init>()V

    .line 1505
    .local v11, values:Landroid/content/ContentValues;
    const-string v2, "group_visible"

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v11, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1507
    :goto_b8
    :try_start_b8
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_dd

    .line 1508
    const/4 v2, 0x0

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 1509
    .local v10, sourceId:Ljava/lang/String;
    const-string v2, "title"

    invoke-virtual {v11, v2, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1510
    invoke-direct {p0, v1}, Lcom/android/exchange/adapter/ContactsSyncAdapter;->uriWithAccountAndIsSyncAdapter(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v2

    const-string v3, "sourceid=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v10, v4, v5

    invoke-virtual {v0, v2, v11, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_d7
    .catchall {:try_start_b8 .. :try_end_d7} :catchall_d8

    goto :goto_b8

    .line 1514
    .end local v10           #sourceId:Ljava/lang/String;
    :catchall_d8
    move-exception v2

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v2

    :cond_dd
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1517
    .end local v1           #groupsUri:Landroid/net/Uri;
    .end local v6           #c:Landroid/database/Cursor;
    .end local v11           #values:Landroid/content/ContentValues;
    :cond_e0
    return-void
.end method

.method public dataUriFromNamedContentValues(Landroid/content/Entity$NamedContentValues;)Landroid/net/Uri;
    .registers 7
    .parameter "ncv"

    .prologue
    .line 1468
    iget-object v3, p1, Landroid/content/Entity$NamedContentValues;->values:Landroid/content/ContentValues;

    const-string v4, "_id"

    invoke-virtual {v3, v4}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 1469
    .local v1, id:J
    iget-object v3, p1, Landroid/content/Entity$NamedContentValues;->uri:Landroid/net/Uri;

    invoke-static {v3, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    .line 1470
    .local v0, dataUri:Landroid/net/Uri;
    return-object v0
.end method

.method public getCollectionName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1521
    const-string v0, "Contacts"

    return-object v0
.end method

.method public getSyncKey()Ljava/lang/String;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 180
    sget-object v5, Lcom/android/exchange/adapter/ContactsSyncAdapter;->sSyncKeyLock:Ljava/lang/Object;

    monitor-enter v5

    .line 181
    :try_start_3
    iget-object v4, p0, Lcom/android/exchange/adapter/ContactsSyncAdapter;->mService:Lcom/android/exchange/EasSyncService;

    iget-object v4, v4, Lcom/android/exchange/EasSyncService;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v6, Landroid/provider/ContactsContract;->AUTHORITY_URI:Landroid/net/Uri;

    invoke-virtual {v4, v6}, Landroid/content/ContentResolver;->acquireContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_53

    move-result-object v0

    .line 184
    .local v0, client:Landroid/content/ContentProviderClient;
    :try_start_d
    sget-object v4, Landroid/provider/ContactsContract$SyncState;->CONTENT_URI:Landroid/net/Uri;

    iget-object v6, p0, Lcom/android/exchange/adapter/ContactsSyncAdapter;->mAccountManagerAccount:Landroid/accounts/Account;

    invoke-static {v0, v4, v6}, Landroid/provider/SyncStateContract$Helpers;->get(Landroid/content/ContentProviderClient;Landroid/net/Uri;Landroid/accounts/Account;)[B

    move-result-object v2

    .line 186
    .local v2, data:[B
    if-eqz v2, :cond_1a

    array-length v4, v2

    if-nez v4, :cond_4c

    .line 188
    :cond_1a
    const-string v4, "0"

    const/4 v6, 0x0

    invoke-virtual {p0, v4, v6}, Lcom/android/exchange/adapter/ContactsSyncAdapter;->setSyncKey(Ljava/lang/String;Z)V

    .line 190
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 191
    .local v1, cv:Landroid/content/ContentValues;
    const-string v4, "account_name"

    iget-object v6, p0, Lcom/android/exchange/adapter/ContactsSyncAdapter;->mAccount:Lcom/android/emailcommon/provider/Account;

    iget-object v6, v6, Lcom/android/emailcommon/provider/Account;->mEmailAddress:Ljava/lang/String;

    invoke-virtual {v1, v4, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    const-string v4, "account_type"

    const-string v6, "com.android.exchange"

    invoke-virtual {v1, v4, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    const-string v4, "ungrouped_visible"

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v1, v4, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 194
    sget-object v4, Landroid/provider/ContactsContract$Settings;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v4}, Lcom/android/exchange/adapter/ContactsSyncAdapter;->addCallerIsSyncAdapterParameter(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v0, v4, v1}, Landroid/content/ContentProviderClient;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 195
    const-string v4, "0"
    :try_end_4a
    .catchall {:try_start_d .. :try_end_4a} :catchall_53
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_4a} :catch_56

    :try_start_4a
    monitor-exit v5
    :try_end_4b
    .catchall {:try_start_4a .. :try_end_4b} :catchall_53

    .line 197
    .end local v1           #cv:Landroid/content/ContentValues;
    :goto_4b
    return-object v4

    :cond_4c
    :try_start_4c
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v2}, Ljava/lang/String;-><init>([B)V
    :try_end_51
    .catchall {:try_start_4c .. :try_end_51} :catchall_53
    .catch Landroid/os/RemoteException; {:try_start_4c .. :try_end_51} :catch_56

    :try_start_51
    monitor-exit v5

    goto :goto_4b

    .line 202
    .end local v0           #client:Landroid/content/ContentProviderClient;
    .end local v2           #data:[B
    :catchall_53
    move-exception v4

    monitor-exit v5
    :try_end_55
    .catchall {:try_start_51 .. :try_end_55} :catchall_53

    throw v4

    .line 199
    .restart local v0       #client:Landroid/content/ContentProviderClient;
    :catch_56
    move-exception v3

    .line 200
    .local v3, e:Landroid/os/RemoteException;
    :try_start_57
    new-instance v4, Ljava/io/IOException;

    const-string v6, "Can\'t get SyncKey from ContactsProvider"

    invoke-direct {v4, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_5f
    .catchall {:try_start_57 .. :try_end_5f} :catchall_53
.end method

.method public isSyncable()Z
    .registers 3

    .prologue
    .line 153
    iget-object v0, p0, Lcom/android/exchange/adapter/ContactsSyncAdapter;->mAccountManagerAccount:Landroid/accounts/Account;

    const-string v1, "com.android.contacts"

    invoke-static {v0, v1}, Landroid/content/ContentResolver;->getSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public parse(Ljava/io/InputStream;)Z
    .registers 4
    .parameter "is"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/exchange/CommandStatusException;
        }
    .end annotation

    .prologue
    .line 159
    new-instance v0, Lcom/android/exchange/adapter/ContactsSyncAdapter$EasContactsSyncParser;

    invoke-direct {v0, p0, p1, p0}, Lcom/android/exchange/adapter/ContactsSyncAdapter$EasContactsSyncParser;-><init>(Lcom/android/exchange/adapter/ContactsSyncAdapter;Ljava/io/InputStream;Lcom/android/exchange/adapter/ContactsSyncAdapter;)V

    .line 160
    .local v0, p:Lcom/android/exchange/adapter/ContactsSyncAdapter$EasContactsSyncParser;
    invoke-virtual {v0}, Lcom/android/exchange/adapter/ContactsSyncAdapter$EasContactsSyncParser;->parse()Z

    move-result v1

    return v1
.end method

.method public sendLocalChanges(Lcom/android/exchange/adapter/Serializer;)Z
    .registers 40
    .parameter "s"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1781
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/exchange/adapter/ContactsSyncAdapter;->mService:Lcom/android/exchange/EasSyncService;

    iget-object v4, v6, Lcom/android/exchange/EasSyncService;->mContentResolver:Landroid/content/ContentResolver;

    .line 1784
    .local v4, cr:Landroid/content/ContentResolver;
    invoke-direct/range {p0 .. p0}, Lcom/android/exchange/adapter/ContactsSyncAdapter;->dirtyContactsWithinDirtyGroups()V

    .line 1787
    sget-object v6, Landroid/provider/ContactsContract$RawContactsEntity;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/android/exchange/adapter/ContactsSyncAdapter;->uriWithAccountAndIsSyncAdapter(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v5

    .line 1788
    .local v5, uri:Landroid/net/Uri;
    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/ContactsSyncAdapter;->getSyncKey()Ljava/lang/String;

    move-result-object v6

    const-string v7, "0"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1f

    .line 1789
    const/4 v6, 0x0

    .line 1926
    :goto_1e
    return v6

    .line 1793
    :cond_1f
    const/4 v6, 0x0

    const-string v7, "dirty=1"

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    invoke-static {v6}, Landroid/provider/ContactsContract$RawContacts;->newEntityIterator(Landroid/database/Cursor;)Landroid/content/EntityIterator;

    move-result-object v17

    .line 1795
    .local v17, ei:Landroid/content/EntityIterator;
    new-instance v13, Landroid/content/ContentValues;

    invoke-direct {v13}, Landroid/content/ContentValues;-><init>()V

    .line 1797
    .local v13, cidValues:Landroid/content/ContentValues;
    const/16 v24, 0x1

    .line 1798
    .local v24, first:Z
    :try_start_33
    sget-object v6, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v6}, Lcom/android/exchange/adapter/ContactsSyncAdapter;->addCallerIsSyncAdapterParameter(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v34

    .line 1799
    .local v34, rawContactUri:Landroid/net/Uri;
    :goto_39
    invoke-interface/range {v17 .. v17}, Landroid/content/EntityIterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3ad

    .line 1800
    invoke-interface/range {v17 .. v17}, Landroid/content/EntityIterator;->next()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Landroid/content/Entity;

    .line 1802
    .local v21, entity:Landroid/content/Entity;
    invoke-virtual/range {v21 .. v21}, Landroid/content/Entity;->getEntityValues()Landroid/content/ContentValues;

    move-result-object v22

    .line 1803
    .local v22, entityValues:Landroid/content/ContentValues;
    const-string v6, "sourceid"

    move-object/from16 v0, v22

    invoke-virtual {v0, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v35

    .line 1804
    .local v35, serverId:Ljava/lang/String;
    new-instance v26, Ljava/util/ArrayList;

    invoke-direct/range {v26 .. v26}, Ljava/util/ArrayList;-><init>()V

    .line 1805
    .local v26, groupIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    if-eqz v24, :cond_6e

    .line 1806
    const/16 v6, 0x16

    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    .line 1807
    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v8, "Sending Contacts changes to the server"

    aput-object v8, v6, v7

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/android/exchange/adapter/ContactsSyncAdapter;->userLog([Ljava/lang/String;)V

    .line 1808
    const/16 v24, 0x0

    .line 1810
    :cond_6e
    if-nez v35, :cond_119

    .line 1812
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "new_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/exchange/adapter/ContactsSyncAdapter;->mMailbox:Lcom/android/emailcommon/provider/Mailbox;

    iget-wide v7, v7, Lcom/android/emailcommon/provider/Mailbox;->mId:J

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const/16 v7, 0x5f

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 1813
    .local v14, clientId:Ljava/lang/String;
    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v8, "Creating new contact with clientId: "

    aput-object v8, v6, v7

    const/4 v7, 0x1

    aput-object v14, v6, v7

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/android/exchange/adapter/ContactsSyncAdapter;->userLog([Ljava/lang/String;)V

    .line 1814
    const/4 v6, 0x7

    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    move-result-object v6

    const/16 v7, 0xc

    invoke-virtual {v6, v7, v14}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 1816
    const-string v6, "sync1"

    invoke-virtual {v13, v6, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1817
    const-string v6, "_id"

    move-object/from16 v0, v22

    invoke-virtual {v0, v6}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    move-object/from16 v0, v34

    invoke-static {v0, v6, v7}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v4, v6, v13, v7, v8}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1831
    .end local v14           #clientId:Ljava/lang/String;
    :goto_cf
    const/16 v6, 0x1d

    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    .line 1833
    const/16 v30, 0x0

    .line 1834
    .local v30, imCount:I
    const/16 v18, 0x0

    .line 1835
    .local v18, emailCount:I
    const/16 v27, 0x0

    .line 1836
    .local v27, homePhoneCount:I
    const/16 v37, 0x0

    .line 1837
    .local v37, workPhoneCount:I
    const/16 v16, 0x0

    .line 1838
    .local v16, displayName:Ljava/lang/String;
    new-instance v20, Ljava/util/ArrayList;

    invoke-direct/range {v20 .. v20}, Ljava/util/ArrayList;-><init>()V

    .line 1839
    .local v20, emailValues:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    invoke-virtual/range {v21 .. v21}, Landroid/content/Entity;->getSubValues()Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v28

    .local v28, i$:Ljava/util/Iterator;
    move/from16 v31, v30

    .end local v30           #imCount:I
    .local v31, imCount:I
    :goto_ef
    invoke-interface/range {v28 .. v28}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_319

    invoke-interface/range {v28 .. v28}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v33

    check-cast v33, Landroid/content/Entity$NamedContentValues;

    .line 1840
    .local v33, ncv:Landroid/content/Entity$NamedContentValues;
    move-object/from16 v0, v33

    iget-object v15, v0, Landroid/content/Entity$NamedContentValues;->values:Landroid/content/ContentValues;

    .line 1841
    .local v15, cv:Landroid/content/ContentValues;
    const-string v6, "mimetype"

    invoke-virtual {v15, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v32

    .line 1842
    .local v32, mimeType:Ljava/lang/String;
    const-string v6, "vnd.android.cursor.item/email_v2"

    move-object/from16 v0, v32

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_192

    .line 1843
    move-object/from16 v0, v20

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move/from16 v30, v31

    .end local v31           #imCount:I
    .restart local v30       #imCount:I
    :goto_116
    move/from16 v31, v30

    .line 1884
    .end local v30           #imCount:I
    .restart local v31       #imCount:I
    goto :goto_ef

    .line 1822
    .end local v15           #cv:Landroid/content/ContentValues;
    .end local v16           #displayName:Ljava/lang/String;
    .end local v18           #emailCount:I
    .end local v20           #emailValues:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    .end local v27           #homePhoneCount:I
    .end local v28           #i$:Ljava/util/Iterator;
    .end local v31           #imCount:I
    .end local v32           #mimeType:Ljava/lang/String;
    .end local v33           #ncv:Landroid/content/Entity$NamedContentValues;
    .end local v37           #workPhoneCount:I
    :cond_119
    const-string v6, "deleted"

    move-object/from16 v0, v22

    invoke-virtual {v0, v6}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_161

    .line 1823
    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v8, "Deleting contact with serverId: "

    aput-object v8, v6, v7

    const/4 v7, 0x1

    aput-object v35, v6, v7

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/android/exchange/adapter/ContactsSyncAdapter;->userLog([Ljava/lang/String;)V

    .line 1824
    const/16 v6, 0x9

    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    move-result-object v6

    const/16 v7, 0xd

    move-object/from16 v0, v35

    invoke-virtual {v6, v7, v0}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    .line 1825
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/exchange/adapter/ContactsSyncAdapter;->mDeletedIdList:Ljava/util/ArrayList;

    const-string v7, "_id"

    move-object/from16 v0, v22

    invoke-virtual {v0, v7}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_15a
    .catchall {:try_start_33 .. :try_end_15a} :catchall_15c

    goto/16 :goto_39

    .line 1923
    .end local v21           #entity:Landroid/content/Entity;
    .end local v22           #entityValues:Landroid/content/ContentValues;
    .end local v26           #groupIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v34           #rawContactUri:Landroid/net/Uri;
    .end local v35           #serverId:Ljava/lang/String;
    :catchall_15c
    move-exception v6

    invoke-interface/range {v17 .. v17}, Landroid/content/EntityIterator;->close()V

    throw v6

    .line 1828
    .restart local v21       #entity:Landroid/content/Entity;
    .restart local v22       #entityValues:Landroid/content/ContentValues;
    .restart local v26       #groupIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .restart local v34       #rawContactUri:Landroid/net/Uri;
    .restart local v35       #serverId:Ljava/lang/String;
    :cond_161
    const/4 v6, 0x1

    :try_start_162
    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Upsync change to contact with serverId: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, v35

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/android/exchange/adapter/ContactsSyncAdapter;->userLog([Ljava/lang/String;)V

    .line 1829
    const/16 v6, 0x8

    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    move-result-object v6

    const/16 v7, 0xd

    move-object/from16 v0, v35

    invoke-virtual {v6, v7, v0}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    goto/16 :goto_cf

    .line 1844
    .restart local v15       #cv:Landroid/content/ContentValues;
    .restart local v16       #displayName:Ljava/lang/String;
    .restart local v18       #emailCount:I
    .restart local v20       #emailValues:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    .restart local v27       #homePhoneCount:I
    .restart local v28       #i$:Ljava/util/Iterator;
    .restart local v31       #imCount:I
    .restart local v32       #mimeType:Ljava/lang/String;
    .restart local v33       #ncv:Landroid/content/Entity$NamedContentValues;
    .restart local v37       #workPhoneCount:I
    :cond_192
    const-string v6, "vnd.android.cursor.item/nickname"

    move-object/from16 v0, v32

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1a7

    .line 1845
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v15}, Lcom/android/exchange/adapter/ContactsSyncAdapter;->sendNickname(Lcom/android/exchange/adapter/Serializer;Landroid/content/ContentValues;)V

    move/from16 v30, v31

    .end local v31           #imCount:I
    .restart local v30       #imCount:I
    goto/16 :goto_116

    .line 1846
    .end local v30           #imCount:I
    .restart local v31       #imCount:I
    :cond_1a7
    const-string v6, "vnd.android.cursor.item/eas_children"

    move-object/from16 v0, v32

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1bc

    .line 1847
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v15}, Lcom/android/exchange/adapter/ContactsSyncAdapter;->sendChildren(Lcom/android/exchange/adapter/Serializer;Landroid/content/ContentValues;)V

    move/from16 v30, v31

    .end local v31           #imCount:I
    .restart local v30       #imCount:I
    goto/16 :goto_116

    .line 1848
    .end local v30           #imCount:I
    .restart local v31       #imCount:I
    :cond_1bc
    const-string v6, "vnd.android.cursor.item/eas_business"

    move-object/from16 v0, v32

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1d1

    .line 1849
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v15}, Lcom/android/exchange/adapter/ContactsSyncAdapter;->sendBusiness(Lcom/android/exchange/adapter/Serializer;Landroid/content/ContentValues;)V

    move/from16 v30, v31

    .end local v31           #imCount:I
    .restart local v30       #imCount:I
    goto/16 :goto_116

    .line 1850
    .end local v30           #imCount:I
    .restart local v31       #imCount:I
    :cond_1d1
    const-string v6, "vnd.android.cursor.item/website"

    move-object/from16 v0, v32

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1e6

    .line 1851
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v15}, Lcom/android/exchange/adapter/ContactsSyncAdapter;->sendWebpage(Lcom/android/exchange/adapter/Serializer;Landroid/content/ContentValues;)V

    move/from16 v30, v31

    .end local v31           #imCount:I
    .restart local v30       #imCount:I
    goto/16 :goto_116

    .line 1852
    .end local v30           #imCount:I
    .restart local v31       #imCount:I
    :cond_1e6
    const-string v6, "vnd.android.cursor.item/eas_personal"

    move-object/from16 v0, v32

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1fb

    .line 1853
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v15}, Lcom/android/exchange/adapter/ContactsSyncAdapter;->sendPersonal(Lcom/android/exchange/adapter/Serializer;Landroid/content/ContentValues;)V

    move/from16 v30, v31

    .end local v31           #imCount:I
    .restart local v30       #imCount:I
    goto/16 :goto_116

    .line 1854
    .end local v30           #imCount:I
    .restart local v31       #imCount:I
    :cond_1fb
    const-string v6, "vnd.android.cursor.item/phone_v2"

    move-object/from16 v0, v32

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_22c

    .line 1855
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v37

    move/from16 v3, v27

    invoke-direct {v0, v1, v15, v2, v3}, Lcom/android/exchange/adapter/ContactsSyncAdapter;->sendPhone(Lcom/android/exchange/adapter/Serializer;Landroid/content/ContentValues;II)V

    .line 1856
    const-string v6, "data2"

    invoke-virtual {v15, v6}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v36

    .line 1857
    .local v36, type:I
    const/4 v6, 0x1

    move/from16 v0, v36

    if-ne v0, v6, :cond_221

    add-int/lit8 v27, v27, 0x1

    .line 1858
    :cond_221
    const/4 v6, 0x3

    move/from16 v0, v36

    if-ne v0, v6, :cond_228

    add-int/lit8 v37, v37, 0x1

    :cond_228
    move/from16 v30, v31

    .line 1859
    .end local v31           #imCount:I
    .restart local v30       #imCount:I
    goto/16 :goto_116

    .end local v30           #imCount:I
    .end local v36           #type:I
    .restart local v31       #imCount:I
    :cond_22c
    const-string v6, "vnd.android.cursor.item/relation"

    move-object/from16 v0, v32

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_241

    .line 1860
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v15}, Lcom/android/exchange/adapter/ContactsSyncAdapter;->sendRelation(Lcom/android/exchange/adapter/Serializer;Landroid/content/ContentValues;)V

    move/from16 v30, v31

    .end local v31           #imCount:I
    .restart local v30       #imCount:I
    goto/16 :goto_116

    .line 1861
    .end local v30           #imCount:I
    .restart local v31       #imCount:I
    :cond_241
    const-string v6, "vnd.android.cursor.item/name"

    move-object/from16 v0, v32

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_257

    .line 1862
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v15}, Lcom/android/exchange/adapter/ContactsSyncAdapter;->sendStructuredName(Lcom/android/exchange/adapter/Serializer;Landroid/content/ContentValues;)Ljava/lang/String;

    move-result-object v16

    move/from16 v30, v31

    .end local v31           #imCount:I
    .restart local v30       #imCount:I
    goto/16 :goto_116

    .line 1863
    .end local v30           #imCount:I
    .restart local v31       #imCount:I
    :cond_257
    const-string v6, "vnd.android.cursor.item/postal-address_v2"

    move-object/from16 v0, v32

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_26c

    .line 1864
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v15}, Lcom/android/exchange/adapter/ContactsSyncAdapter;->sendStructuredPostal(Lcom/android/exchange/adapter/Serializer;Landroid/content/ContentValues;)V

    move/from16 v30, v31

    .end local v31           #imCount:I
    .restart local v30       #imCount:I
    goto/16 :goto_116

    .line 1865
    .end local v30           #imCount:I
    .restart local v31       #imCount:I
    :cond_26c
    const-string v6, "vnd.android.cursor.item/organization"

    move-object/from16 v0, v32

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_281

    .line 1866
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v15}, Lcom/android/exchange/adapter/ContactsSyncAdapter;->sendOrganization(Lcom/android/exchange/adapter/Serializer;Landroid/content/ContentValues;)V

    move/from16 v30, v31

    .end local v31           #imCount:I
    .restart local v30       #imCount:I
    goto/16 :goto_116

    .line 1867
    .end local v30           #imCount:I
    .restart local v31       #imCount:I
    :cond_281
    const-string v6, "vnd.android.cursor.item/im"

    move-object/from16 v0, v32

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_298

    .line 1868
    add-int/lit8 v30, v31, 0x1

    .end local v31           #imCount:I
    .restart local v30       #imCount:I
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v31

    invoke-direct {v0, v1, v15, v2}, Lcom/android/exchange/adapter/ContactsSyncAdapter;->sendIm(Lcom/android/exchange/adapter/Serializer;Landroid/content/ContentValues;I)V

    goto/16 :goto_116

    .line 1869
    .end local v30           #imCount:I
    .restart local v31       #imCount:I
    :cond_298
    const-string v6, "vnd.android.cursor.item/contact_event"

    move-object/from16 v0, v32

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2c2

    .line 1870
    const-string v6, "data2"

    invoke-virtual {v15, v6}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v23

    .line 1871
    .local v23, eventType:Ljava/lang/Integer;
    if-eqz v23, :cond_2be

    const/4 v6, 0x3

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v0, v23

    invoke-virtual {v0, v6}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2be

    .line 1872
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v15}, Lcom/android/exchange/adapter/ContactsSyncAdapter;->sendBirthday(Lcom/android/exchange/adapter/Serializer;Landroid/content/ContentValues;)V

    :cond_2be
    move/from16 v30, v31

    .line 1874
    .end local v31           #imCount:I
    .restart local v30       #imCount:I
    goto/16 :goto_116

    .end local v23           #eventType:Ljava/lang/Integer;
    .end local v30           #imCount:I
    .restart local v31       #imCount:I
    :cond_2c2
    const-string v6, "vnd.android.cursor.item/group_membership"

    move-object/from16 v0, v32

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2db

    .line 1876
    const-string v6, "data1"

    invoke-virtual {v15, v6}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v0, v26

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move/from16 v30, v31

    .end local v31           #imCount:I
    .restart local v30       #imCount:I
    goto/16 :goto_116

    .line 1877
    .end local v30           #imCount:I
    .restart local v31       #imCount:I
    :cond_2db
    const-string v6, "vnd.android.cursor.item/note"

    move-object/from16 v0, v32

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2f0

    .line 1878
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v15}, Lcom/android/exchange/adapter/ContactsSyncAdapter;->sendNote(Lcom/android/exchange/adapter/Serializer;Landroid/content/ContentValues;)V

    move/from16 v30, v31

    .end local v31           #imCount:I
    .restart local v30       #imCount:I
    goto/16 :goto_116

    .line 1879
    .end local v30           #imCount:I
    .restart local v31       #imCount:I
    :cond_2f0
    const-string v6, "vnd.android.cursor.item/photo"

    move-object/from16 v0, v32

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_305

    .line 1880
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v15}, Lcom/android/exchange/adapter/ContactsSyncAdapter;->sendPhoto(Lcom/android/exchange/adapter/Serializer;Landroid/content/ContentValues;)V

    move/from16 v30, v31

    .end local v31           #imCount:I
    .restart local v30       #imCount:I
    goto/16 :goto_116

    .line 1882
    .end local v30           #imCount:I
    .restart local v31       #imCount:I
    :cond_305
    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v8, "Contacts upsync, unknown data: "

    aput-object v8, v6, v7

    const/4 v7, 0x1

    aput-object v32, v6, v7

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/android/exchange/adapter/ContactsSyncAdapter;->userLog([Ljava/lang/String;)V

    move/from16 v30, v31

    .end local v31           #imCount:I
    .restart local v30       #imCount:I
    goto/16 :goto_116

    .line 1888
    .end local v15           #cv:Landroid/content/ContentValues;
    .end local v30           #imCount:I
    .end local v32           #mimeType:Ljava/lang/String;
    .end local v33           #ncv:Landroid/content/Entity$NamedContentValues;
    .restart local v31       #imCount:I
    :cond_319
    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v28

    move/from16 v19, v18

    .end local v18           #emailCount:I
    .local v19, emailCount:I
    :goto_31f
    invoke-interface/range {v28 .. v28}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_33b

    invoke-interface/range {v28 .. v28}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/content/ContentValues;

    .line 1889
    .restart local v15       #cv:Landroid/content/ContentValues;
    add-int/lit8 v18, v19, 0x1

    .end local v19           #emailCount:I
    .restart local v18       #emailCount:I
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v19

    move-object/from16 v3, v16

    invoke-direct {v0, v1, v15, v2, v3}, Lcom/android/exchange/adapter/ContactsSyncAdapter;->sendEmail(Lcom/android/exchange/adapter/Serializer;Landroid/content/ContentValues;ILjava/lang/String;)V

    move/from16 v19, v18

    .end local v18           #emailCount:I
    .restart local v19       #emailCount:I
    goto :goto_31f

    .line 1893
    .end local v15           #cv:Landroid/content/ContentValues;
    :cond_33b
    invoke-virtual/range {v26 .. v26}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_395

    .line 1894
    const/16 v25, 0x1

    .line 1895
    .local v25, groupFirst:Z
    invoke-virtual/range {v26 .. v26}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v28

    :goto_347
    invoke-interface/range {v28 .. v28}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_390

    invoke-interface/range {v28 .. v28}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v29

    .line 1897
    .local v29, id:I
    sget-object v6, Landroid/provider/ContactsContract$Groups;->CONTENT_URI:Landroid/net/Uri;

    move/from16 v0, v29

    int-to-long v7, v0

    invoke-static {v6, v7, v8}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v7

    sget-object v8, Lcom/android/exchange/adapter/ContactsSyncAdapter;->GROUP_TITLE_PROJECTION:[Ljava/lang/String;

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v6, v4

    invoke-virtual/range {v6 .. v11}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_369
    .catchall {:try_start_162 .. :try_end_369} :catchall_15c

    move-result-object v12

    .line 1901
    .local v12, c:Landroid/database/Cursor;
    :try_start_36a
    invoke-interface {v12}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v6

    if-eqz v6, :cond_387

    .line 1902
    if-eqz v25, :cond_37b

    .line 1903
    const/16 v6, 0x55

    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    .line 1904
    const/16 v25, 0x0

    .line 1906
    :cond_37b
    const/16 v6, 0x56

    const/4 v7, 0x0

    invoke-interface {v12, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p1

    invoke-virtual {v0, v6, v7}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;
    :try_end_387
    .catchall {:try_start_36a .. :try_end_387} :catchall_38b

    .line 1909
    :cond_387
    :try_start_387
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    goto :goto_347

    :catchall_38b
    move-exception v6

    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    throw v6

    .line 1912
    .end local v12           #c:Landroid/database/Cursor;
    .end local v29           #id:I
    :cond_390
    if-nez v25, :cond_395

    .line 1913
    invoke-virtual/range {p1 .. p1}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    .line 1916
    .end local v25           #groupFirst:Z
    :cond_395
    invoke-virtual/range {p1 .. p1}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    .line 1917
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/exchange/adapter/ContactsSyncAdapter;->mUpdatedIdList:Ljava/util/ArrayList;

    const-string v7, "_id"

    move-object/from16 v0, v22

    invoke-virtual {v0, v7}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_39

    .line 1919
    .end local v16           #displayName:Ljava/lang/String;
    .end local v19           #emailCount:I
    .end local v20           #emailValues:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    .end local v21           #entity:Landroid/content/Entity;
    .end local v22           #entityValues:Landroid/content/ContentValues;
    .end local v26           #groupIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v27           #homePhoneCount:I
    .end local v28           #i$:Ljava/util/Iterator;
    .end local v31           #imCount:I
    .end local v35           #serverId:Ljava/lang/String;
    .end local v37           #workPhoneCount:I
    :cond_3ad
    if-nez v24, :cond_3b2

    .line 1920
    invoke-virtual/range {p1 .. p1}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;
    :try_end_3b2
    .catchall {:try_start_387 .. :try_end_3b2} :catchall_15c

    .line 1923
    :cond_3b2
    invoke-interface/range {v17 .. v17}, Landroid/content/EntityIterator;->close()V

    .line 1926
    const/4 v6, 0x0

    goto/16 :goto_1e
.end method

.method public sendSyncOptions(Ljava/lang/Double;Lcom/android/exchange/adapter/Serializer;)V
    .registers 4
    .parameter "protocolVersion"
    .parameter "s"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 148
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lcom/android/exchange/adapter/ContactsSyncAdapter;->setPimSyncOptions(Ljava/lang/Double;Ljava/lang/String;Lcom/android/exchange/adapter/Serializer;)V

    .line 149
    return-void
.end method

.method public setSyncKey(Ljava/lang/String;Z)V
    .registers 9
    .parameter "syncKey"
    .parameter "inCommands"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 211
    sget-object v3, Lcom/android/exchange/adapter/ContactsSyncAdapter;->sSyncKeyLock:Ljava/lang/Object;

    monitor-enter v3

    .line 212
    :try_start_3
    const-string v2, "0"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_d

    if-nez p2, :cond_35

    .line 213
    :cond_d
    iget-object v2, p0, Lcom/android/exchange/adapter/ContactsSyncAdapter;->mService:Lcom/android/exchange/EasSyncService;

    iget-object v2, v2, Lcom/android/exchange/EasSyncService;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v4, Landroid/provider/ContactsContract;->AUTHORITY_URI:Landroid/net/Uri;

    invoke-virtual {v2, v4}, Landroid/content/ContentResolver;->acquireContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_44

    move-result-object v0

    .line 216
    .local v0, client:Landroid/content/ContentProviderClient;
    :try_start_17
    sget-object v2, Landroid/provider/ContactsContract$SyncState;->CONTENT_URI:Landroid/net/Uri;

    iget-object v4, p0, Lcom/android/exchange/adapter/ContactsSyncAdapter;->mAccountManagerAccount:Landroid/accounts/Account;

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-static {v0, v2, v4, v5}, Landroid/provider/SyncStateContract$Helpers;->set(Landroid/content/ContentProviderClient;Landroid/net/Uri;Landroid/accounts/Account;[B)V

    .line 218
    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "SyncKey set to "

    aput-object v5, v2, v4

    const/4 v4, 0x1

    aput-object p1, v2, v4

    const/4 v4, 0x2

    const-string v5, " in ContactsProvider"

    aput-object v5, v2, v4

    invoke-virtual {p0, v2}, Lcom/android/exchange/adapter/ContactsSyncAdapter;->userLog([Ljava/lang/String;)V
    :try_end_35
    .catchall {:try_start_17 .. :try_end_35} :catchall_44
    .catch Landroid/os/RemoteException; {:try_start_17 .. :try_end_35} :catch_3b

    .line 223
    .end local v0           #client:Landroid/content/ContentProviderClient;
    :cond_35
    :try_start_35
    iget-object v2, p0, Lcom/android/exchange/adapter/ContactsSyncAdapter;->mMailbox:Lcom/android/emailcommon/provider/Mailbox;

    iput-object p1, v2, Lcom/android/emailcommon/provider/Mailbox;->mSyncKey:Ljava/lang/String;

    .line 224
    monitor-exit v3

    .line 225
    return-void

    .line 219
    .restart local v0       #client:Landroid/content/ContentProviderClient;
    :catch_3b
    move-exception v1

    .line 220
    .local v1, e:Landroid/os/RemoteException;
    new-instance v2, Ljava/io/IOException;

    const-string v4, "Can\'t set SyncKey in ContactsProvider"

    invoke-direct {v2, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 224
    .end local v0           #client:Landroid/content/ContentProviderClient;
    .end local v1           #e:Landroid/os/RemoteException;
    :catchall_44
    move-exception v2

    monitor-exit v3
    :try_end_46
    .catchall {:try_start_35 .. :try_end_46} :catchall_44

    throw v2
.end method

.method public wipe()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 166
    iget-object v0, p0, Lcom/android/exchange/adapter/ContactsSyncAdapter;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/android/exchange/adapter/ContactsSyncAdapter;->mAccountUri:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 167
    return-void
.end method
