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

    .line 89
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/exchange/adapter/ContactsSyncAdapter;->ID_PROJECTION:[Ljava/lang/String;

    .line 93
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "title"

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/exchange/adapter/ContactsSyncAdapter;->GROUP_TITLE_PROJECTION:[Ljava/lang/String;

    .line 100
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/exchange/adapter/ContactsSyncAdapter;->GROUPS_ID_PROJECTION:[Ljava/lang/String;

    .line 104
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/exchange/adapter/ContactsSyncAdapter;->EMPTY_ARRAY_NAMEDCONTENTVALUES:Ljava/util/ArrayList;

    .line 108
    new-array v0, v4, [I

    fill-array-data v0, :array_5e

    sput-object v0, Lcom/android/exchange/adapter/ContactsSyncAdapter;->HOME_ADDRESS_TAGS:[I

    .line 114
    new-array v0, v4, [I

    fill-array-data v0, :array_6c

    sput-object v0, Lcom/android/exchange/adapter/ContactsSyncAdapter;->WORK_ADDRESS_TAGS:[I

    .line 120
    new-array v0, v4, [I

    fill-array-data v0, :array_7a

    sput-object v0, Lcom/android/exchange/adapter/ContactsSyncAdapter;->OTHER_ADDRESS_TAGS:[I

    .line 138
    new-array v0, v6, [I

    fill-array-data v0, :array_88

    sput-object v0, Lcom/android/exchange/adapter/ContactsSyncAdapter;->IM_TAGS:[I

    .line 142
    new-array v0, v6, [I

    fill-array-data v0, :array_92

    sput-object v0, Lcom/android/exchange/adapter/ContactsSyncAdapter;->EMAIL_TAGS:[I

    .line 147
    new-array v0, v5, [I

    fill-array-data v0, :array_9c

    sput-object v0, Lcom/android/exchange/adapter/ContactsSyncAdapter;->WORK_PHONE_TAGS:[I

    .line 151
    new-array v0, v5, [I

    fill-array-data v0, :array_a4

    sput-object v0, Lcom/android/exchange/adapter/ContactsSyncAdapter;->HOME_PHONE_TAGS:[I

    .line 155
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/exchange/adapter/ContactsSyncAdapter;->sSyncKeyLock:Ljava/lang/Object;

    return-void

    .line 108
    nop

    :array_5e
    .array-data 0x4
        0x61t 0x0t 0x0t 0x0t
        0x62t 0x0t 0x0t 0x0t
        0x63t 0x0t 0x0t 0x0t
        0x64t 0x0t 0x0t 0x0t
        0x65t 0x0t 0x0t 0x0t
    .end array-data

    .line 114
    :array_6c
    .array-data 0x4
        0x4dt 0x0t 0x0t 0x0t
        0x4et 0x0t 0x0t 0x0t
        0x4ft 0x0t 0x0t 0x0t
        0x50t 0x0t 0x0t 0x0t
        0x51t 0x0t 0x0t 0x0t
    .end array-data

    .line 120
    :array_7a
    .array-data 0x4
        0x6dt 0x0t 0x0t 0x0t
        0x6et 0x0t 0x0t 0x0t
        0x6ft 0x0t 0x0t 0x0t
        0x70t 0x0t 0x0t 0x0t
        0x71t 0x0t 0x0t 0x0t
    .end array-data

    .line 138
    :array_88
    .array-data 0x4
        0x7t 0x3t 0x0t 0x0t
        0x8t 0x3t 0x0t 0x0t
        0x9t 0x3t 0x0t 0x0t
    .end array-data

    .line 142
    :array_92
    .array-data 0x4
        0x5bt 0x0t 0x0t 0x0t
        0x5ct 0x0t 0x0t 0x0t
        0x5dt 0x0t 0x0t 0x0t
    .end array-data

    .line 147
    :array_9c
    .array-data 0x4
        0x53t 0x0t 0x0t 0x0t
        0x4ct 0x0t 0x0t 0x0t
    .end array-data

    .line 151
    :array_a4
    .array-data 0x4
        0x67t 0x0t 0x0t 0x0t
        0x60t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>(Lcom/android/emailcommon/provider/EmailContent$Mailbox;Lcom/android/exchange/EasSyncService;)V
    .registers 4
    .parameter "mailbox"
    .parameter "service"

    .prologue
    .line 175
    invoke-direct {p0, p1, p2}, Lcom/android/exchange/adapter/AbstractSyncAdapter;-><init>(Lcom/android/emailcommon/provider/EmailContent$Mailbox;Lcom/android/exchange/EasSyncService;)V

    .line 157
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/exchange/adapter/ContactsSyncAdapter;->mDeletedIdList:Ljava/util/ArrayList;

    .line 159
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/exchange/adapter/ContactsSyncAdapter;->mUpdatedIdList:Ljava/util/ArrayList;

    .line 165
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/exchange/adapter/ContactsSyncAdapter;->mGroupsUsed:Z

    .line 176
    sget-object v0, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {p0, v0}, Lcom/android/exchange/adapter/ContactsSyncAdapter;->uriWithAccountAndIsSyncAdapter(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/exchange/adapter/ContactsSyncAdapter;->mAccountUri:Landroid/net/Uri;

    .line 177
    iget-object v0, p0, Lcom/android/exchange/adapter/AbstractSyncAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/exchange/adapter/ContactsSyncAdapter;->mContentResolver:Landroid/content/ContentResolver;

    .line 178
    return-void
.end method

.method public constructor <init>(Lcom/android/exchange/EasSyncService;)V
    .registers 3
    .parameter "service"

    .prologue
    .line 168
    invoke-direct {p0, p1}, Lcom/android/exchange/adapter/AbstractSyncAdapter;-><init>(Lcom/android/exchange/EasSyncService;)V

    .line 157
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/exchange/adapter/ContactsSyncAdapter;->mDeletedIdList:Ljava/util/ArrayList;

    .line 159
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/exchange/adapter/ContactsSyncAdapter;->mUpdatedIdList:Ljava/util/ArrayList;

    .line 165
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/exchange/adapter/ContactsSyncAdapter;->mGroupsUsed:Z

    .line 169
    sget-object v0, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {p0, v0}, Lcom/android/exchange/adapter/ContactsSyncAdapter;->uriWithAccountAndIsSyncAdapter(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/exchange/adapter/ContactsSyncAdapter;->mAccountUri:Landroid/net/Uri;

    .line 170
    iget-object v0, p0, Lcom/android/exchange/adapter/AbstractSyncAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/exchange/adapter/ContactsSyncAdapter;->mContentResolver:Landroid/content/ContentResolver;

    .line 171
    return-void
.end method

.method static synthetic access$102(Lcom/android/exchange/adapter/ContactsSyncAdapter;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 81
    iput-boolean p1, p0, Lcom/android/exchange/adapter/ContactsSyncAdapter;->mGroupsUsed:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/exchange/adapter/ContactsSyncAdapter;)Landroid/net/Uri;
    .registers 2
    .parameter "x0"

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/exchange/adapter/ContactsSyncAdapter;->mAccountUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$300()[Ljava/lang/String;
    .registers 1

    .prologue
    .line 81
    sget-object v0, Lcom/android/exchange/adapter/ContactsSyncAdapter;->ID_PROJECTION:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/exchange/adapter/ContactsSyncAdapter;Landroid/net/Uri;)Landroid/net/Uri;
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 81
    invoke-direct {p0, p1}, Lcom/android/exchange/adapter/ContactsSyncAdapter;->uriWithAccountAndIsSyncAdapter(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800()Ljava/util/ArrayList;
    .registers 1

    .prologue
    .line 81
    sget-object v0, Lcom/android/exchange/adapter/ContactsSyncAdapter;->EMPTY_ARRAY_NAMEDCONTENTVALUES:Ljava/util/ArrayList;

    return-object v0
.end method

.method static addCallerIsSyncAdapterParameter(Landroid/net/Uri;)Landroid/net/Uri;
    .registers 4
    .parameter "uri"

    .prologue
    .line 182
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

    .line 1981
    iget-object v1, p0, Lcom/android/exchange/adapter/AbstractSyncAdapter;->mService:Lcom/android/exchange/EasSyncService;

    iget-object v0, v1, Lcom/android/exchange/EasSyncService;->mContentResolver:Landroid/content/ContentResolver;

    .line 1982
    .local v0, cr:Landroid/content/ContentResolver;
    sget-object v1, Landroid/provider/ContactsContract$Groups;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {p0, v1}, Lcom/android/exchange/adapter/ContactsSyncAdapter;->uriWithAccountAndIsSyncAdapter(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v1

    sget-object v2, Lcom/android/exchange/adapter/ContactsSyncAdapter;->GROUPS_ID_PROJECTION:[Ljava/lang/String;

    const-string v3, "dirty=1"

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1985
    .local v6, c:Landroid/database/Cursor;
    :try_start_14
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_6e

    .line 1986
    const/4 v1, 0x1

    new-array v9, v1, [Ljava/lang/String;

    .line 1987
    .local v9, updateArgs:[Ljava/lang/String;
    new-instance v10, Landroid/content/ContentValues;

    invoke-direct {v10}, Landroid/content/ContentValues;-><init>()V

    .line 1988
    .local v10, updateValues:Landroid/content/ContentValues;
    :goto_22
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_4a

    .line 1994
    const/4 v1, 0x0

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    .line 1995
    .local v7, id:J
    const-string v1, "data1"

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v10, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1996
    const/4 v1, 0x0

    invoke-static {v7, v8}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v9, v1

    .line 1997
    sget-object v1, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    const-string v2, "mimetype=\'vnd.android.cursor.item/group_membership\' AND data1=?"

    invoke-virtual {v0, v1, v10, v2, v9}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_44
    .catchall {:try_start_14 .. :try_end_44} :catchall_45

    goto :goto_22

    .line 2010
    .end local v7           #id:J
    .end local v9           #updateArgs:[Ljava/lang/String;
    .end local v10           #updateValues:Landroid/content/ContentValues;
    :catchall_45
    move-exception v1

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v1

    .line 2001
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

    .line 2004
    invoke-virtual {v10}, Landroid/content/ContentValues;->clear()V

    .line 2005
    const-string v1, "dirty"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v10, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2006
    sget-object v1, Landroid/provider/ContactsContract$Groups;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {p0, v1}, Lcom/android/exchange/adapter/ContactsSyncAdapter;->uriWithAccountAndIsSyncAdapter(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v10, v2, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_6e
    .catchall {:try_start_4a .. :try_end_6e} :catchall_45

    .line 2010
    .end local v9           #updateArgs:[Ljava/lang/String;
    .end local v10           #updateValues:Landroid/content/ContentValues;
    :cond_6e
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 2012
    return-void
.end method

.method private sendBirthday(Lcom/android/exchange/adapter/Serializer;Landroid/content/ContentValues;)V
    .registers 14
    .parameter "s"
    .parameter "cv"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1821
    const-string v9, "data1"

    invoke-virtual {p2, v9}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_60

    .line 1822
    const/4 v9, 0x7

    new-array v4, v9, [Ljava/lang/String;

    const/4 v9, 0x0

    const-string v10, "yyyyMMdd"

    aput-object v10, v4, v9

    const/4 v9, 0x1

    const-string v10, "yyyy-MM-dd"

    aput-object v10, v4, v9

    const/4 v9, 0x2

    const-string v10, "yyyy-MM-dd HH:mm"

    aput-object v10, v4, v9

    const/4 v9, 0x3

    const-string v10, "yyyy-MM-dd HH:mmZ"

    aput-object v10, v4, v9

    const/4 v9, 0x4

    const-string v10, "yyyy-MM-dd HH:mm:ss.SSSZ"

    aput-object v10, v4, v9

    const/4 v9, 0x5

    const-string v10, "yyyy-MM-dd\'T\'HH:mm:ss.SSSZ"

    aput-object v10, v4, v9

    const/4 v9, 0x6

    const-string v10, "yyyy-MM-dd\'T\'HH:mm:ss.SSS\'Z\'"

    aput-object v10, v4, v9

    .line 1826
    .local v4, formats:[Ljava/lang/String;
    const-string v9, "data1"

    invoke-virtual {p2, v9}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1827
    .local v2, dateString:Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_60

    .line 1828
    const/4 v1, 0x0

    .line 1829
    .local v1, birthDate:Ljava/util/Date;
    move-object v0, v4

    .local v0, arr$:[Ljava/lang/String;
    array-length v6, v0

    .local v6, len$:I
    const/4 v5, 0x0

    .local v5, i$:I
    :goto_3e
    if-ge v5, v6, :cond_4e

    aget-object v3, v0, v5

    .line 1830
    .local v3, format:Ljava/lang/String;
    new-instance v7, Ljava/text/SimpleDateFormat;

    invoke-direct {v7, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 1832
    .local v7, sdf:Ljava/text/SimpleDateFormat;
    :try_start_47
    invoke-virtual {v7, v2}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_4a
    .catch Ljava/lang/Exception; {:try_start_47 .. :try_end_4a} :catch_61

    move-result-object v1

    .line 1829
    :goto_4b
    add-int/lit8 v5, v5, 0x1

    goto :goto_3e

    .line 1836
    .end local v3           #format:Ljava/lang/String;
    .end local v7           #sdf:Ljava/text/SimpleDateFormat;
    :cond_4e
    if-eqz v1, :cond_60

    .line 1837
    new-instance v8, Ljava/text/SimpleDateFormat;

    const-string v9, "yyyy-MM-dd\'T\'HH:mm:ss.SSS\'Z\'"

    invoke-direct {v8, v9}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 1839
    .local v8, sdf2:Ljava/text/SimpleDateFormat;
    const/16 v9, 0x48

    invoke-virtual {v8, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p1, v9, v10}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 1843
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v1           #birthDate:Ljava/util/Date;
    .end local v2           #dateString:Ljava/lang/String;
    .end local v4           #formats:[Ljava/lang/String;
    .end local v5           #i$:I
    .end local v6           #len$:I
    .end local v8           #sdf2:Ljava/text/SimpleDateFormat;
    :cond_60
    return-void

    .line 1833
    .restart local v0       #arr$:[Ljava/lang/String;
    .restart local v1       #birthDate:Ljava/util/Date;
    .restart local v2       #dateString:Ljava/lang/String;
    .restart local v3       #format:Ljava/lang/String;
    .restart local v4       #formats:[Ljava/lang/String;
    .restart local v5       #i$:I
    .restart local v6       #len$:I
    .restart local v7       #sdf:Ljava/text/SimpleDateFormat;
    :catch_61
    move-exception v9

    goto :goto_4b
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
    .line 1810
    const-string v0, "data8"

    const/16 v1, 0x30c

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/exchange/adapter/ContactsSyncAdapter;->sendStringData(Lcom/android/exchange/adapter/Serializer;Landroid/content/ContentValues;Ljava/lang/String;I)V

    .line 1811
    const-string v0, "data6"

    const/16 v1, 0x305

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/exchange/adapter/ContactsSyncAdapter;->sendStringData(Lcom/android/exchange/adapter/Serializer;Landroid/content/ContentValues;Ljava/lang/String;I)V

    .line 1812
    const-string v0, "data7"

    const/16 v1, 0x306

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/exchange/adapter/ContactsSyncAdapter;->sendStringData(Lcom/android/exchange/adapter/Serializer;Landroid/content/ContentValues;Ljava/lang/String;I)V

    .line 1813
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
    .line 1897
    const/4 v0, 0x1

    .line 1898
    .local v0, first:Z
    const/4 v1, 0x0

    .local v1, i:I
    :goto_2
    const/16 v3, 0x8

    if-ge v1, v3, :cond_24

    .line 1899
    sget-object v3, Lcom/android/exchange/adapter/ContactsSyncAdapter$EasChildren;->ROWS:[Ljava/lang/String;

    aget-object v2, v3, v1

    .line 1900
    .local v2, row:Ljava/lang/String;
    invoke-virtual {p2, v2}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_21

    .line 1901
    if-eqz v0, :cond_18

    .line 1902
    const/16 v3, 0x57

    invoke-virtual {p1, v3}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    .line 1903
    const/4 v0, 0x0

    .line 1905
    :cond_18
    const/16 v3, 0x58

    invoke-virtual {p2, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v3, v4}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 1898
    :cond_21
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1908
    .end local v2           #row:Ljava/lang/String;
    :cond_24
    if-nez v0, :cond_29

    .line 1909
    invoke-virtual {p1}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    .line 1911
    :cond_29
    return-void
.end method

.method private sendEmail(Lcom/android/exchange/adapter/Serializer;Landroid/content/ContentValues;ILjava/lang/String;)V
    .registers 12
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
    .line 1725
    const-string v3, "data1"

    invoke-virtual {p2, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1726
    .local v0, addr:Ljava/lang/String;
    const-string v3, "data4"

    invoke-virtual {p2, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1727
    .local v1, name:Ljava/lang/String;
    if-nez v1, :cond_11

    .line 1728
    if-eqz p4, :cond_4f

    .line 1729
    move-object v1, p4

    .line 1735
    :cond_11
    :goto_11
    if-eqz v0, :cond_4e

    .line 1736
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

    .line 1738
    .local v2, value:Ljava/lang/String;
    const/4 v3, 0x3

    if-ge p3, v3, :cond_4e

    .line 1739
    iget-object v3, p0, Lcom/android/exchange/adapter/AbstractSyncAdapter;->mService:Lcom/android/exchange/EasSyncService;

    iget-object v3, v3, Lcom/android/exchange/EasSyncService;->mProtocolVersionDouble:Ljava/lang/Double;

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    const-wide/high16 v5, 0x4028

    cmpl-double v3, v3, v5

    if-ltz v3, :cond_51

    .line 1740
    sget-object v3, Lcom/android/exchange/adapter/ContactsSyncAdapter;->EMAIL_TAGS:[I

    aget v3, v3, p3

    invoke-virtual {p1, v3, v2}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 1746
    .end local v2           #value:Ljava/lang/String;
    :cond_4e
    :goto_4e
    return-void

    .line 1731
    :cond_4f
    move-object v1, v0

    goto :goto_11

    .line 1742
    .restart local v2       #value:Ljava/lang/String;
    :cond_51
    sget-object v3, Lcom/android/exchange/adapter/ContactsSyncAdapter;->EMAIL_TAGS:[I

    aget v3, v3, p3

    invoke-virtual {p1, v3, v0}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    goto :goto_4e
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
    .line 1749
    const-string v1, "data1"

    invoke-virtual {p2, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1750
    .local v0, value:Ljava/lang/String;
    if-nez v0, :cond_9

    .line 1755
    :cond_8
    :goto_8
    return-void

    .line 1752
    :cond_9
    const/4 v1, 0x3

    if-ge p3, v1, :cond_8

    .line 1753
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
    .line 1865
    const-string v0, "data1"

    const/16 v1, 0x30d

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/exchange/adapter/ContactsSyncAdapter;->sendStringData(Lcom/android/exchange/adapter/Serializer;Landroid/content/ContentValues;Ljava/lang/String;I)V

    .line 1866
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
    .line 1877
    const-string v0, ""

    .line 1878
    .local v0, note:Ljava/lang/String;
    const-string v1, "data1"

    invoke-virtual {p2, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 1880
    const-string v1, "data1"

    invoke-virtual {p2, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "\n"

    const-string v3, "\r\n"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1883
    :cond_18
    iget-object v1, p0, Lcom/android/exchange/adapter/AbstractSyncAdapter;->mService:Lcom/android/exchange/EasSyncService;

    iget-object v1, v1, Lcom/android/exchange/EasSyncService;->mProtocolVersionDouble:Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    const-wide/high16 v3, 0x4028

    cmpl-double v1, v1, v3

    if-ltz v1, :cond_3c

    .line 1884
    const/16 v1, 0x44a

    invoke-virtual {p1, v1}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    .line 1885
    const/16 v1, 0x446

    const-string v2, "1"

    invoke-virtual {p1, v1, v2}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    move-result-object v1

    const/16 v2, 0x44b

    invoke-virtual {v1, v2, v0}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 1886
    invoke-virtual {p1}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    .line 1894
    :cond_3b
    :goto_3b
    return-void

    .line 1887
    :cond_3c
    iget-object v1, p0, Lcom/android/exchange/adapter/AbstractSyncAdapter;->mService:Lcom/android/exchange/EasSyncService;

    iget-object v1, v1, Lcom/android/exchange/EasSyncService;->mProtocolVersionDouble:Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    const-wide/high16 v3, 0x4004

    cmpl-double v1, v1, v3

    if-nez v1, :cond_3b

    .line 1889
    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_54

    .line 1890
    const-string v0, "\r\n"

    .line 1892
    :cond_54
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
    .line 1758
    const-string v0, "data7"

    const/4 v1, 0x0

    aget v1, p3, v1

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/exchange/adapter/ContactsSyncAdapter;->sendStringData(Lcom/android/exchange/adapter/Serializer;Landroid/content/ContentValues;Ljava/lang/String;I)V

    .line 1759
    const-string v0, "data10"

    const/4 v1, 0x1

    aget v1, p3, v1

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/exchange/adapter/ContactsSyncAdapter;->sendStringData(Lcom/android/exchange/adapter/Serializer;Landroid/content/ContentValues;Ljava/lang/String;I)V

    .line 1760
    const-string v0, "data9"

    const/4 v1, 0x2

    aget v1, p3, v1

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/exchange/adapter/ContactsSyncAdapter;->sendStringData(Lcom/android/exchange/adapter/Serializer;Landroid/content/ContentValues;Ljava/lang/String;I)V

    .line 1761
    const-string v0, "data8"

    const/4 v1, 0x3

    aget v1, p3, v1

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/exchange/adapter/ContactsSyncAdapter;->sendStringData(Lcom/android/exchange/adapter/Serializer;Landroid/content/ContentValues;Ljava/lang/String;I)V

    .line 1762
    const-string v0, "data4"

    const/4 v1, 0x4

    aget v1, p3, v1

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/exchange/adapter/ContactsSyncAdapter;->sendStringData(Lcom/android/exchange/adapter/Serializer;Landroid/content/ContentValues;Ljava/lang/String;I)V

    .line 1763
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
    .line 1858
    const-string v0, "data4"

    const/16 v1, 0x68

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/exchange/adapter/ContactsSyncAdapter;->sendStringData(Lcom/android/exchange/adapter/Serializer;Landroid/content/ContentValues;Ljava/lang/String;I)V

    .line 1859
    const-string v0, "data1"

    const/16 v1, 0x59

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/exchange/adapter/ContactsSyncAdapter;->sendStringData(Lcom/android/exchange/adapter/Serializer;Landroid/content/ContentValues;Ljava/lang/String;I)V

    .line 1860
    const-string v0, "data5"

    const/16 v1, 0x5a

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/exchange/adapter/ContactsSyncAdapter;->sendStringData(Lcom/android/exchange/adapter/Serializer;Landroid/content/ContentValues;Ljava/lang/String;I)V

    .line 1861
    const-string v0, "data9"

    const/16 v1, 0x6c

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/exchange/adapter/ContactsSyncAdapter;->sendStringData(Lcom/android/exchange/adapter/Serializer;Landroid/content/ContentValues;Ljava/lang/String;I)V

    .line 1862
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
    .line 1816
    const-string v0, "data2"

    const/16 v1, 0x45

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/exchange/adapter/ContactsSyncAdapter;->sendStringData(Lcom/android/exchange/adapter/Serializer;Landroid/content/ContentValues;Ljava/lang/String;I)V

    .line 1817
    const-string v0, "data4"

    const/16 v1, 0x5e

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/exchange/adapter/ContactsSyncAdapter;->sendStringData(Lcom/android/exchange/adapter/Serializer;Landroid/content/ContentValues;Ljava/lang/String;I)V

    .line 1818
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

    .line 1915
    const-string v1, "data1"

    invoke-virtual {p2, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1916
    .local v0, value:Ljava/lang/String;
    if-nez v0, :cond_a

    .line 1959
    :cond_9
    :goto_9
    return-void

    .line 1918
    :cond_a
    const-string v1, "data2"

    invoke-virtual {p2, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    packed-switch v1, :pswitch_data_62

    :pswitch_17
    goto :goto_9

    .line 1937
    :pswitch_18
    if-ge p4, v2, :cond_9

    .line 1938
    sget-object v1, Lcom/android/exchange/adapter/ContactsSyncAdapter;->HOME_PHONE_TAGS:[I

    aget v1, v1, p4

    invoke-virtual {p1, v1, v0}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    goto :goto_9

    .line 1920
    :pswitch_22
    if-ge p3, v2, :cond_9

    .line 1921
    sget-object v1, Lcom/android/exchange/adapter/ContactsSyncAdapter;->WORK_PHONE_TAGS:[I

    aget v1, v1, p3

    invoke-virtual {p1, v1, v0}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    goto :goto_9

    .line 1925
    :pswitch_2c
    const/16 v1, 0x30e

    invoke-virtual {p1, v1, v0}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    goto :goto_9

    .line 1928
    :pswitch_32
    const/16 v1, 0x47

    invoke-virtual {p1, v1, v0}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    goto :goto_9

    .line 1931
    :pswitch_38
    const/16 v1, 0x52

    invoke-virtual {p1, v1, v0}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    goto :goto_9

    .line 1934
    :pswitch_3e
    const/16 v1, 0x30b

    invoke-virtual {p1, v1, v0}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    goto :goto_9

    .line 1942
    :pswitch_44
    const/16 v1, 0x6b

    invoke-virtual {p1, v1, v0}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    goto :goto_9

    .line 1945
    :pswitch_4a
    const/16 v1, 0x54

    invoke-virtual {p1, v1, v0}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    goto :goto_9

    .line 1948
    :pswitch_50
    const/16 v1, 0x72

    invoke-virtual {p1, v1, v0}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    goto :goto_9

    .line 1951
    :pswitch_56
    const/16 v1, 0x73

    invoke-virtual {p1, v1, v0}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    goto :goto_9

    .line 1954
    :pswitch_5c
    const/16 v1, 0x66

    invoke-virtual {p1, v1, v0}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    goto :goto_9

    .line 1918
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

    .line 1846
    const-string v2, "data15"

    invoke-virtual {p2, v2}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_19

    .line 1847
    const-string v2, "data15"

    invoke-virtual {p2, v2}, Landroid/content/ContentValues;->getAsByteArray(Ljava/lang/String;)[B

    move-result-object v0

    .line 1848
    .local v0, bytes:[B
    const/4 v2, 0x2

    invoke-static {v0, v2}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v1

    .line 1849
    .local v1, pic:Ljava/lang/String;
    invoke-virtual {p1, v3, v1}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 1855
    .end local v0           #bytes:[B
    .end local v1           #pic:Ljava/lang/String;
    :goto_18
    return-void

    .line 1853
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
    .line 1962
    const-string v1, "data1"

    invoke-virtual {p2, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1963
    .local v0, value:Ljava/lang/String;
    if-nez v0, :cond_9

    .line 1978
    :goto_8
    return-void

    .line 1965
    :cond_9
    const-string v1, "data2"

    invoke-virtual {p2, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sparse-switch v1, :sswitch_data_2a

    goto :goto_8

    .line 1967
    :sswitch_17
    const/16 v1, 0x46

    invoke-virtual {p1, v1, v0}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    goto :goto_8

    .line 1970
    :sswitch_1d
    const/16 v1, 0x30a

    invoke-virtual {p1, v1, v0}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    goto :goto_8

    .line 1973
    :sswitch_23
    const/16 v1, 0x74

    invoke-virtual {p1, v1, v0}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    goto :goto_8

    .line 1965
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
    .line 1783
    invoke-virtual {p2, p3}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 1784
    invoke-virtual {p2, p3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1785
    .local v0, value:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_13

    .line 1786
    invoke-virtual {p1, p4, v0}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 1789
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
    .line 1792
    const/4 v0, 0x0

    .line 1793
    .local v0, displayName:Ljava/lang/String;
    const-string v1, "data3"

    const/16 v2, 0x69

    invoke-direct {p0, p1, p2, v1, v2}, Lcom/android/exchange/adapter/ContactsSyncAdapter;->sendStringData(Lcom/android/exchange/adapter/Serializer;Landroid/content/ContentValues;Ljava/lang/String;I)V

    .line 1794
    const-string v1, "data2"

    const/16 v2, 0x5f

    invoke-direct {p0, p1, p2, v1, v2}, Lcom/android/exchange/adapter/ContactsSyncAdapter;->sendStringData(Lcom/android/exchange/adapter/Serializer;Landroid/content/ContentValues;Ljava/lang/String;I)V

    .line 1795
    const-string v1, "data5"

    const/16 v2, 0x6a

    invoke-direct {p0, p1, p2, v1, v2}, Lcom/android/exchange/adapter/ContactsSyncAdapter;->sendStringData(Lcom/android/exchange/adapter/Serializer;Landroid/content/ContentValues;Ljava/lang/String;I)V

    .line 1796
    const-string v1, "data6"

    const/16 v2, 0x75

    invoke-direct {p0, p1, p2, v1, v2}, Lcom/android/exchange/adapter/ContactsSyncAdapter;->sendStringData(Lcom/android/exchange/adapter/Serializer;Landroid/content/ContentValues;Ljava/lang/String;I)V

    .line 1797
    const-string v1, "data7"

    const/16 v2, 0x79

    invoke-direct {p0, p1, p2, v1, v2}, Lcom/android/exchange/adapter/ContactsSyncAdapter;->sendStringData(Lcom/android/exchange/adapter/Serializer;Landroid/content/ContentValues;Ljava/lang/String;I)V

    .line 1798
    const-string v1, "data9"

    const/16 v2, 0x7a

    invoke-direct {p0, p1, p2, v1, v2}, Lcom/android/exchange/adapter/ContactsSyncAdapter;->sendStringData(Lcom/android/exchange/adapter/Serializer;Landroid/content/ContentValues;Ljava/lang/String;I)V

    .line 1799
    const-string v1, "data4"

    const/16 v2, 0x76

    invoke-direct {p0, p1, p2, v1, v2}, Lcom/android/exchange/adapter/ContactsSyncAdapter;->sendStringData(Lcom/android/exchange/adapter/Serializer;Landroid/content/ContentValues;Ljava/lang/String;I)V

    .line 1800
    const-string v1, "data1"

    invoke-virtual {p2, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4b

    .line 1801
    const-string v1, "data1"

    invoke-virtual {p2, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1802
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4b

    .line 1803
    const/16 v1, 0x5e

    invoke-virtual {p1, v1, v0}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 1806
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
    .line 1766
    const-string v0, "data2"

    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    packed-switch v0, :pswitch_data_20

    .line 1779
    :goto_d
    return-void

    .line 1768
    :pswitch_e
    sget-object v0, Lcom/android/exchange/adapter/ContactsSyncAdapter;->HOME_ADDRESS_TAGS:[I

    invoke-direct {p0, p1, p2, v0}, Lcom/android/exchange/adapter/ContactsSyncAdapter;->sendOnePostal(Lcom/android/exchange/adapter/Serializer;Landroid/content/ContentValues;[I)V

    goto :goto_d

    .line 1771
    :pswitch_14
    sget-object v0, Lcom/android/exchange/adapter/ContactsSyncAdapter;->WORK_ADDRESS_TAGS:[I

    invoke-direct {p0, p1, p2, v0}, Lcom/android/exchange/adapter/ContactsSyncAdapter;->sendOnePostal(Lcom/android/exchange/adapter/Serializer;Landroid/content/ContentValues;[I)V

    goto :goto_d

    .line 1774
    :pswitch_1a
    sget-object v0, Lcom/android/exchange/adapter/ContactsSyncAdapter;->OTHER_ADDRESS_TAGS:[I

    invoke-direct {p0, p1, p2, v0}, Lcom/android/exchange/adapter/ContactsSyncAdapter;->sendOnePostal(Lcom/android/exchange/adapter/Serializer;Landroid/content/ContentValues;[I)V

    goto :goto_d

    .line 1766
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
    .line 1869
    const-string v0, "data1"

    const/16 v1, 0x77

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/exchange/adapter/ContactsSyncAdapter;->sendStringData(Lcom/android/exchange/adapter/Serializer;Landroid/content/ContentValues;Ljava/lang/String;I)V

    .line 1870
    return-void
.end method

.method private uriWithAccountAndIsSyncAdapter(Landroid/net/Uri;)Landroid/net/Uri;
    .registers 5
    .parameter "uri"

    .prologue
    .line 1065
    invoke-virtual {p1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "account_name"

    iget-object v2, p0, Lcom/android/exchange/adapter/AbstractSyncAdapter;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-object v2, v2, Lcom/android/emailcommon/provider/EmailContent$Account;->mEmailAddress:Ljava/lang/String;

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
    .registers 14

    .prologue
    .line 1667
    new-instance v10, Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;

    const/4 v2, 0x0

    invoke-direct {v10, p0, v2}, Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;-><init>(Lcom/android/exchange/adapter/ContactsSyncAdapter;Lcom/android/exchange/adapter/ContactsSyncAdapter$1;)V

    .line 1668
    .local v10, ops:Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;
    iget-object v2, p0, Lcom/android/exchange/adapter/ContactsSyncAdapter;->mUpdatedIdList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, i$:Ljava/util/Iterator;
    :goto_c
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_49

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Long;

    .line 1669
    .local v9, id:Ljava/lang/Long;
    sget-object v2, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

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

    invoke-virtual {v10, v2}, Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;->add(Landroid/content/ContentProviderOperation;)Z

    goto :goto_c

    .line 1674
    .end local v9           #id:Ljava/lang/Long;
    :cond_49
    iget-object v2, p0, Lcom/android/exchange/adapter/ContactsSyncAdapter;->mDeletedIdList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_4f
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_81

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Long;

    .line 1675
    .restart local v9       #id:Ljava/lang/Long;
    sget-object v2, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

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

    invoke-virtual {v10, v2}, Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;->add(Landroid/content/ContentProviderOperation;)Z

    goto :goto_4f

    .line 1680
    .end local v9           #id:Ljava/lang/Long;
    :cond_81
    invoke-virtual {v10}, Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;->execute()V

    .line 1681
    iget-object v2, p0, Lcom/android/exchange/adapter/AbstractSyncAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1682
    .local v0, cr:Landroid/content/ContentResolver;
    iget-boolean v2, p0, Lcom/android/exchange/adapter/ContactsSyncAdapter;->mGroupsUsed:Z

    if-eqz v2, :cond_ee

    .line 1688
    sget-object v2, Landroid/provider/ContactsContract$Groups;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {p0, v2}, Lcom/android/exchange/adapter/ContactsSyncAdapter;->uriWithAccountAndIsSyncAdapter(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v1

    .line 1689
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

    move-result-object v7

    .line 1692
    .local v7, c:Landroid/database/Cursor;
    new-instance v12, Landroid/content/ContentValues;

    invoke-direct {v12}, Landroid/content/ContentValues;-><init>()V

    .line 1693
    .local v12, values:Landroid/content/ContentValues;
    const-string v2, "group_visible"

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v12, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1695
    new-instance v6, Ljava/lang/StringBuffer;

    const-string v2, "sourceid"

    invoke-direct {v6, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 1699
    .local v6, argTemp:Ljava/lang/StringBuffer;
    const-string v2, "=?"

    invoke-virtual {v6, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1701
    :goto_c4
    :try_start_c4
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_eb

    .line 1702
    const/4 v2, 0x0

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 1703
    .local v11, sourceId:Ljava/lang/String;
    const-string v2, "title"

    invoke-virtual {v12, v2, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1704
    invoke-direct {p0, v1}, Lcom/android/exchange/adapter/ContactsSyncAdapter;->uriWithAccountAndIsSyncAdapter(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v11, v4, v5

    invoke-virtual {v0, v2, v12, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_e5
    .catchall {:try_start_c4 .. :try_end_e5} :catchall_e6

    goto :goto_c4

    .line 1711
    .end local v11           #sourceId:Ljava/lang/String;
    :catchall_e6
    move-exception v2

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v2

    :cond_eb
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 1714
    .end local v1           #groupsUri:Landroid/net/Uri;
    .end local v6           #argTemp:Ljava/lang/StringBuffer;
    .end local v7           #c:Landroid/database/Cursor;
    .end local v12           #values:Landroid/content/ContentValues;
    :cond_ee
    return-void
.end method

.method public dataUriFromNamedContentValues(Landroid/content/Entity$NamedContentValues;)Landroid/net/Uri;
    .registers 7
    .parameter "ncv"

    .prologue
    .line 1658
    iget-object v3, p1, Landroid/content/Entity$NamedContentValues;->values:Landroid/content/ContentValues;

    const-string v4, "_id"

    invoke-virtual {v3, v4}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 1659
    .local v1, id:J
    iget-object v3, p1, Landroid/content/Entity$NamedContentValues;->uri:Landroid/net/Uri;

    invoke-static {v3, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    .line 1660
    .local v0, dataUri:Landroid/net/Uri;
    return-object v0
.end method

.method public getCollectionName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1718
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
    .line 266
    sget-object v5, Lcom/android/exchange/adapter/ContactsSyncAdapter;->sSyncKeyLock:Ljava/lang/Object;

    monitor-enter v5

    .line 267
    :try_start_3
    iget-object v4, p0, Lcom/android/exchange/adapter/AbstractSyncAdapter;->mService:Lcom/android/exchange/EasSyncService;

    iget-object v4, v4, Lcom/android/exchange/EasSyncService;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v6, Landroid/provider/ContactsContract;->AUTHORITY_URI:Landroid/net/Uri;

    invoke-virtual {v4, v6}, Landroid/content/ContentResolver;->acquireContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_53

    move-result-object v0

    .line 270
    .local v0, client:Landroid/content/ContentProviderClient;
    :try_start_d
    sget-object v4, Landroid/provider/ContactsContract$SyncState;->CONTENT_URI:Landroid/net/Uri;

    iget-object v6, p0, Lcom/android/exchange/adapter/AbstractSyncAdapter;->mAccountManagerAccount:Landroid/accounts/Account;

    invoke-static {v0, v4, v6}, Landroid/provider/SyncStateContract$Helpers;->get(Landroid/content/ContentProviderClient;Landroid/net/Uri;Landroid/accounts/Account;)[B

    move-result-object v2

    .line 272
    .local v2, data:[B
    if-eqz v2, :cond_1a

    array-length v4, v2

    if-nez v4, :cond_4c

    .line 274
    :cond_1a
    const-string v4, "0"

    const/4 v6, 0x0

    invoke-virtual {p0, v4, v6}, Lcom/android/exchange/adapter/ContactsSyncAdapter;->setSyncKey(Ljava/lang/String;Z)V

    .line 277
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 278
    .local v1, cv:Landroid/content/ContentValues;
    const-string v4, "account_name"

    iget-object v6, p0, Lcom/android/exchange/adapter/AbstractSyncAdapter;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-object v6, v6, Lcom/android/emailcommon/provider/EmailContent$Account;->mEmailAddress:Ljava/lang/String;

    invoke-virtual {v1, v4, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 281
    const-string v4, "account_type"

    const-string v6, "com.android.exchange"

    invoke-virtual {v1, v4, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 282
    const-string v4, "ungrouped_visible"

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v1, v4, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 283
    sget-object v4, Landroid/provider/ContactsContract$Settings;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v4}, Lcom/android/exchange/adapter/ContactsSyncAdapter;->addCallerIsSyncAdapterParameter(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v0, v4, v1}, Landroid/content/ContentProviderClient;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 284
    const-string v4, "0"
    :try_end_4a
    .catchall {:try_start_d .. :try_end_4a} :catchall_53
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_4a} :catch_56

    :try_start_4a
    monitor-exit v5
    :try_end_4b
    .catchall {:try_start_4a .. :try_end_4b} :catchall_53

    .line 286
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

    .line 291
    .end local v0           #client:Landroid/content/ContentProviderClient;
    .end local v2           #data:[B
    :catchall_53
    move-exception v4

    monitor-exit v5
    :try_end_55
    .catchall {:try_start_51 .. :try_end_55} :catchall_53

    throw v4

    .line 288
    .restart local v0       #client:Landroid/content/ContentProviderClient;
    :catch_56
    move-exception v3

    .line 289
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
    .line 193
    iget-object v0, p0, Lcom/android/exchange/adapter/AbstractSyncAdapter;->mAccountManagerAccount:Landroid/accounts/Account;

    const-string v1, "com.android.contacts"

    invoke-static {v0, v1}, Landroid/content/ContentResolver;->getSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public parse(Ljava/io/InputStream;)Z
    .registers 9
    .parameter "is"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/emailcommon/utility/DeviceAccessException;,
            Lcom/android/exchange/CommandStatusException;
        }
    .end annotation

    .prologue
    .line 203
    const/4 v1, 0x0

    .line 205
    .local v1, p:Lcom/android/exchange/adapter/ContactsSyncAdapter$EasContactsSyncParser;
    :try_start_1
    new-instance v2, Lcom/android/exchange/adapter/ContactsSyncAdapter$EasContactsSyncParser;

    invoke-direct {v2, p0, p1, p0}, Lcom/android/exchange/adapter/ContactsSyncAdapter$EasContactsSyncParser;-><init>(Lcom/android/exchange/adapter/ContactsSyncAdapter;Ljava/io/InputStream;Lcom/android/exchange/adapter/ContactsSyncAdapter;)V
    :try_end_6
    .catch Lcom/android/exchange/adapter/Parser$EofException; {:try_start_1 .. :try_end_6} :catch_c

    .line 216
    .end local v1           #p:Lcom/android/exchange/adapter/ContactsSyncAdapter$EasContactsSyncParser;
    .local v2, p:Lcom/android/exchange/adapter/ContactsSyncAdapter$EasContactsSyncParser;
    invoke-virtual {v2}, Lcom/android/exchange/adapter/ContactsSyncAdapter$EasContactsSyncParser;->parse()Z

    move-result v3

    move-object v1, v2

    .end local v2           #p:Lcom/android/exchange/adapter/ContactsSyncAdapter$EasContactsSyncParser;
    .restart local v1       #p:Lcom/android/exchange/adapter/ContactsSyncAdapter$EasContactsSyncParser;
    :goto_b
    return v3

    .line 206
    :catch_c
    move-exception v0

    .line 208
    .local v0, e:Lcom/android/exchange/adapter/Parser$EofException;
    iget-object v3, p0, Lcom/android/exchange/adapter/AbstractSyncAdapter;->mService:Lcom/android/exchange/EasSyncService;

    iget-object v3, v3, Lcom/android/exchange/EasSyncService;->mProtocolVersionDouble:Ljava/lang/Double;

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    const-wide v5, 0x4028333333333333L

    cmpl-double v3, v3, v5

    if-nez v3, :cond_23

    .line 209
    invoke-virtual {p0}, Lcom/android/exchange/adapter/ContactsSyncAdapter;->setIntervalPing()V

    .line 210
    const/4 v3, 0x0

    goto :goto_b

    .line 212
    :cond_23
    throw v0
.end method

.method public sendLocalChanges(Lcom/android/exchange/adapter/Serializer;)Z
    .registers 41
    .parameter "s"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2016
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/exchange/adapter/AbstractSyncAdapter;->mService:Lcom/android/exchange/EasSyncService;

    iget-object v4, v6, Lcom/android/exchange/EasSyncService;->mContentResolver:Landroid/content/ContentResolver;

    .line 2020
    .local v4, cr:Landroid/content/ContentResolver;
    invoke-direct/range {p0 .. p0}, Lcom/android/exchange/adapter/ContactsSyncAdapter;->dirtyContactsWithinDirtyGroups()V

    .line 2023
    sget-object v6, Landroid/provider/ContactsContract$RawContactsEntity;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/android/exchange/adapter/ContactsSyncAdapter;->uriWithAccountAndIsSyncAdapter(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v5

    .line 2024
    .local v5, uri:Landroid/net/Uri;
    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/ContactsSyncAdapter;->getSyncKey()Ljava/lang/String;

    move-result-object v6

    const-string v7, "0"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1f

    .line 2025
    const/4 v6, 0x0

    .line 2192
    :goto_1e
    return v6

    .line 2029
    :cond_1f
    const/4 v6, 0x0

    const-string v7, "dirty=1"

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    invoke-static {v6}, Landroid/provider/ContactsContract$RawContacts;->newEntityIterator(Landroid/database/Cursor;)Landroid/content/EntityIterator;

    move-result-object v16

    .line 2031
    .local v16, ei:Landroid/content/EntityIterator;
    new-instance v13, Landroid/content/ContentValues;

    invoke-direct {v13}, Landroid/content/ContentValues;-><init>()V

    .line 2033
    .local v13, cidValues:Landroid/content/ContentValues;
    const/16 v23, 0x1

    .line 2034
    .local v23, first:Z
    :try_start_33
    sget-object v6, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v6}, Lcom/android/exchange/adapter/ContactsSyncAdapter;->addCallerIsSyncAdapterParameter(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v34

    .line 2035
    .local v34, rawContactUri:Landroid/net/Uri;
    new-instance v36, Ljava/lang/StringBuffer;

    invoke-direct/range {v36 .. v36}, Ljava/lang/StringBuffer;-><init>()V

    .line 2036
    .local v36, tempClientId:Ljava/lang/StringBuffer;
    :goto_3e
    invoke-interface/range {v16 .. v16}, Landroid/content/EntityIterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3cf

    .line 2037
    invoke-interface/range {v16 .. v16}, Landroid/content/EntityIterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Landroid/content/Entity;

    .line 2039
    .local v20, entity:Landroid/content/Entity;
    invoke-virtual/range {v20 .. v20}, Landroid/content/Entity;->getEntityValues()Landroid/content/ContentValues;

    move-result-object v21

    .line 2040
    .local v21, entityValues:Landroid/content/ContentValues;
    const-string v6, "sourceid"

    move-object/from16 v0, v21

    invoke-virtual {v0, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v35

    .line 2041
    .local v35, serverId:Ljava/lang/String;
    new-instance v25, Ljava/util/ArrayList;

    invoke-direct/range {v25 .. v25}, Ljava/util/ArrayList;-><init>()V

    .line 2042
    .local v25, groupIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    if-eqz v23, :cond_73

    .line 2043
    const/16 v6, 0x16

    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    .line 2044
    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v8, "Sending Contacts changes to the server"

    aput-object v8, v6, v7

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/android/exchange/adapter/ContactsSyncAdapter;->userLog([Ljava/lang/String;)V

    .line 2045
    const/16 v23, 0x0

    .line 2047
    :cond_73
    if-nez v35, :cond_12d

    .line 2052
    const-string v6, "new_"

    move-object/from16 v0, v36

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/exchange/adapter/AbstractSyncAdapter;->mMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    iget-wide v7, v7, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v6

    const/16 v7, 0x5f

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 2055
    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v8, "Creating new contact with clientId: "

    aput-object v8, v6, v7

    const/4 v7, 0x1

    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/android/exchange/adapter/ContactsSyncAdapter;->userLog([Ljava/lang/String;)V

    .line 2060
    const/4 v6, 0x7

    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    move-result-object v6

    const/16 v7, 0xc

    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 2066
    const-string v6, "sync1"

    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v13, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2071
    const-string v6, "_id"

    move-object/from16 v0, v21

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

    .line 2073
    const/4 v6, 0x0

    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuffer;->length()I

    move-result v7

    move-object/from16 v0, v36

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    .line 2084
    :goto_e2
    const/16 v6, 0x1d

    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    .line 2086
    const/16 v30, 0x0

    .line 2087
    .local v30, imCount:I
    const/16 v17, 0x0

    .line 2088
    .local v17, emailCount:I
    const/16 v27, 0x0

    .line 2089
    .local v27, homePhoneCount:I
    const/16 v38, 0x0

    .line 2090
    .local v38, workPhoneCount:I
    const/4 v15, 0x0

    .line 2091
    .local v15, displayName:Ljava/lang/String;
    new-instance v19, Ljava/util/ArrayList;

    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    .line 2092
    .local v19, emailValues:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    const/16 v26, 0x0

    .line 2093
    .local v26, hasNote:Z
    invoke-virtual/range {v20 .. v20}, Landroid/content/Entity;->getSubValues()Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v28

    .local v28, i$:Ljava/util/Iterator;
    move/from16 v31, v30

    .end local v30           #imCount:I
    .local v31, imCount:I
    :goto_103
    invoke-interface/range {v28 .. v28}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_32f

    invoke-interface/range {v28 .. v28}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v33

    check-cast v33, Landroid/content/Entity$NamedContentValues;

    .line 2094
    .local v33, ncv:Landroid/content/Entity$NamedContentValues;
    move-object/from16 v0, v33

    iget-object v14, v0, Landroid/content/Entity$NamedContentValues;->values:Landroid/content/ContentValues;

    .line 2095
    .local v14, cv:Landroid/content/ContentValues;
    const-string v6, "mimetype"

    invoke-virtual {v14, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v32

    .line 2096
    .local v32, mimeType:Ljava/lang/String;
    const-string v6, "vnd.android.cursor.item/email_v2"

    move-object/from16 v0, v32

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1a6

    .line 2097
    move-object/from16 v0, v19

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move/from16 v30, v31

    .end local v31           #imCount:I
    .restart local v30       #imCount:I
    :goto_12a
    move/from16 v31, v30

    .line 2141
    .end local v30           #imCount:I
    .restart local v31       #imCount:I
    goto :goto_103

    .line 2075
    .end local v14           #cv:Landroid/content/ContentValues;
    .end local v15           #displayName:Ljava/lang/String;
    .end local v17           #emailCount:I
    .end local v19           #emailValues:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    .end local v26           #hasNote:Z
    .end local v27           #homePhoneCount:I
    .end local v28           #i$:Ljava/util/Iterator;
    .end local v31           #imCount:I
    .end local v32           #mimeType:Ljava/lang/String;
    .end local v33           #ncv:Landroid/content/Entity$NamedContentValues;
    .end local v38           #workPhoneCount:I
    :cond_12d
    const-string v6, "deleted"

    move-object/from16 v0, v21

    invoke-virtual {v0, v6}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_175

    .line 2076
    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v8, "Deleting contact with serverId: "

    aput-object v8, v6, v7

    const/4 v7, 0x1

    aput-object v35, v6, v7

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/android/exchange/adapter/ContactsSyncAdapter;->userLog([Ljava/lang/String;)V

    .line 2077
    const/16 v6, 0x9

    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    move-result-object v6

    const/16 v7, 0xd

    move-object/from16 v0, v35

    invoke-virtual {v6, v7, v0}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    .line 2078
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/exchange/adapter/ContactsSyncAdapter;->mDeletedIdList:Ljava/util/ArrayList;

    const-string v7, "_id"

    move-object/from16 v0, v21

    invoke-virtual {v0, v7}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_16e
    .catchall {:try_start_33 .. :try_end_16e} :catchall_170

    goto/16 :goto_3e

    .line 2189
    .end local v20           #entity:Landroid/content/Entity;
    .end local v21           #entityValues:Landroid/content/ContentValues;
    .end local v25           #groupIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v34           #rawContactUri:Landroid/net/Uri;
    .end local v35           #serverId:Ljava/lang/String;
    .end local v36           #tempClientId:Ljava/lang/StringBuffer;
    :catchall_170
    move-exception v6

    invoke-interface/range {v16 .. v16}, Landroid/content/EntityIterator;->close()V

    throw v6

    .line 2081
    .restart local v20       #entity:Landroid/content/Entity;
    .restart local v21       #entityValues:Landroid/content/ContentValues;
    .restart local v25       #groupIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .restart local v34       #rawContactUri:Landroid/net/Uri;
    .restart local v35       #serverId:Ljava/lang/String;
    .restart local v36       #tempClientId:Ljava/lang/StringBuffer;
    :cond_175
    const/4 v6, 0x1

    :try_start_176
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

    .line 2082
    const/16 v6, 0x8

    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    move-result-object v6

    const/16 v7, 0xd

    move-object/from16 v0, v35

    invoke-virtual {v6, v7, v0}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    goto/16 :goto_e2

    .line 2098
    .restart local v14       #cv:Landroid/content/ContentValues;
    .restart local v15       #displayName:Ljava/lang/String;
    .restart local v17       #emailCount:I
    .restart local v19       #emailValues:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    .restart local v26       #hasNote:Z
    .restart local v27       #homePhoneCount:I
    .restart local v28       #i$:Ljava/util/Iterator;
    .restart local v31       #imCount:I
    .restart local v32       #mimeType:Ljava/lang/String;
    .restart local v33       #ncv:Landroid/content/Entity$NamedContentValues;
    .restart local v38       #workPhoneCount:I
    :cond_1a6
    const-string v6, "vnd.android.cursor.item/nickname"

    move-object/from16 v0, v32

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1bb

    .line 2099
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v14}, Lcom/android/exchange/adapter/ContactsSyncAdapter;->sendNickname(Lcom/android/exchange/adapter/Serializer;Landroid/content/ContentValues;)V

    move/from16 v30, v31

    .end local v31           #imCount:I
    .restart local v30       #imCount:I
    goto/16 :goto_12a

    .line 2100
    .end local v30           #imCount:I
    .restart local v31       #imCount:I
    :cond_1bb
    const-string v6, "vnd.android.cursor.item/eas_children"

    move-object/from16 v0, v32

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1d0

    .line 2101
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v14}, Lcom/android/exchange/adapter/ContactsSyncAdapter;->sendChildren(Lcom/android/exchange/adapter/Serializer;Landroid/content/ContentValues;)V

    move/from16 v30, v31

    .end local v31           #imCount:I
    .restart local v30       #imCount:I
    goto/16 :goto_12a

    .line 2102
    .end local v30           #imCount:I
    .restart local v31       #imCount:I
    :cond_1d0
    const-string v6, "vnd.android.cursor.item/eas_business"

    move-object/from16 v0, v32

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1e5

    .line 2103
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v14}, Lcom/android/exchange/adapter/ContactsSyncAdapter;->sendBusiness(Lcom/android/exchange/adapter/Serializer;Landroid/content/ContentValues;)V

    move/from16 v30, v31

    .end local v31           #imCount:I
    .restart local v30       #imCount:I
    goto/16 :goto_12a

    .line 2104
    .end local v30           #imCount:I
    .restart local v31       #imCount:I
    :cond_1e5
    const-string v6, "vnd.android.cursor.item/website"

    move-object/from16 v0, v32

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1fa

    .line 2105
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v14}, Lcom/android/exchange/adapter/ContactsSyncAdapter;->sendWebpage(Lcom/android/exchange/adapter/Serializer;Landroid/content/ContentValues;)V

    move/from16 v30, v31

    .end local v31           #imCount:I
    .restart local v30       #imCount:I
    goto/16 :goto_12a

    .line 2106
    .end local v30           #imCount:I
    .restart local v31       #imCount:I
    :cond_1fa
    const-string v6, "vnd.android.cursor.item/eas_personal"

    move-object/from16 v0, v32

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_20f

    .line 2107
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v14}, Lcom/android/exchange/adapter/ContactsSyncAdapter;->sendPersonal(Lcom/android/exchange/adapter/Serializer;Landroid/content/ContentValues;)V

    move/from16 v30, v31

    .end local v31           #imCount:I
    .restart local v30       #imCount:I
    goto/16 :goto_12a

    .line 2108
    .end local v30           #imCount:I
    .restart local v31       #imCount:I
    :cond_20f
    const-string v6, "vnd.android.cursor.item/phone_v2"

    move-object/from16 v0, v32

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_240

    .line 2109
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v38

    move/from16 v3, v27

    invoke-direct {v0, v1, v14, v2, v3}, Lcom/android/exchange/adapter/ContactsSyncAdapter;->sendPhone(Lcom/android/exchange/adapter/Serializer;Landroid/content/ContentValues;II)V

    .line 2110
    const-string v6, "data2"

    invoke-virtual {v14, v6}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v37

    .line 2111
    .local v37, type:I
    const/4 v6, 0x1

    move/from16 v0, v37

    if-ne v0, v6, :cond_235

    .line 2112
    add-int/lit8 v27, v27, 0x1

    .line 2113
    :cond_235
    const/4 v6, 0x3

    move/from16 v0, v37

    if-ne v0, v6, :cond_23c

    .line 2114
    add-int/lit8 v38, v38, 0x1

    :cond_23c
    move/from16 v30, v31

    .line 2115
    .end local v31           #imCount:I
    .restart local v30       #imCount:I
    goto/16 :goto_12a

    .end local v30           #imCount:I
    .end local v37           #type:I
    .restart local v31       #imCount:I
    :cond_240
    const-string v6, "vnd.android.cursor.item/relation"

    move-object/from16 v0, v32

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_255

    .line 2116
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v14}, Lcom/android/exchange/adapter/ContactsSyncAdapter;->sendRelation(Lcom/android/exchange/adapter/Serializer;Landroid/content/ContentValues;)V

    move/from16 v30, v31

    .end local v31           #imCount:I
    .restart local v30       #imCount:I
    goto/16 :goto_12a

    .line 2117
    .end local v30           #imCount:I
    .restart local v31       #imCount:I
    :cond_255
    const-string v6, "vnd.android.cursor.item/name"

    move-object/from16 v0, v32

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_26b

    .line 2118
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v14}, Lcom/android/exchange/adapter/ContactsSyncAdapter;->sendStructuredName(Lcom/android/exchange/adapter/Serializer;Landroid/content/ContentValues;)Ljava/lang/String;

    move-result-object v15

    move/from16 v30, v31

    .end local v31           #imCount:I
    .restart local v30       #imCount:I
    goto/16 :goto_12a

    .line 2119
    .end local v30           #imCount:I
    .restart local v31       #imCount:I
    :cond_26b
    const-string v6, "vnd.android.cursor.item/postal-address_v2"

    move-object/from16 v0, v32

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_280

    .line 2120
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v14}, Lcom/android/exchange/adapter/ContactsSyncAdapter;->sendStructuredPostal(Lcom/android/exchange/adapter/Serializer;Landroid/content/ContentValues;)V

    move/from16 v30, v31

    .end local v31           #imCount:I
    .restart local v30       #imCount:I
    goto/16 :goto_12a

    .line 2121
    .end local v30           #imCount:I
    .restart local v31       #imCount:I
    :cond_280
    const-string v6, "vnd.android.cursor.item/organization"

    move-object/from16 v0, v32

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_295

    .line 2122
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v14}, Lcom/android/exchange/adapter/ContactsSyncAdapter;->sendOrganization(Lcom/android/exchange/adapter/Serializer;Landroid/content/ContentValues;)V

    move/from16 v30, v31

    .end local v31           #imCount:I
    .restart local v30       #imCount:I
    goto/16 :goto_12a

    .line 2123
    .end local v30           #imCount:I
    .restart local v31       #imCount:I
    :cond_295
    const-string v6, "vnd.android.cursor.item/im"

    move-object/from16 v0, v32

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2ac

    .line 2124
    add-int/lit8 v30, v31, 0x1

    .end local v31           #imCount:I
    .restart local v30       #imCount:I
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v31

    invoke-direct {v0, v1, v14, v2}, Lcom/android/exchange/adapter/ContactsSyncAdapter;->sendIm(Lcom/android/exchange/adapter/Serializer;Landroid/content/ContentValues;I)V

    goto/16 :goto_12a

    .line 2125
    .end local v30           #imCount:I
    .restart local v31       #imCount:I
    :cond_2ac
    const-string v6, "vnd.android.cursor.item/contact_event"

    move-object/from16 v0, v32

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2d6

    .line 2126
    const-string v6, "data2"

    invoke-virtual {v14, v6}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v22

    .line 2127
    .local v22, eventType:Ljava/lang/Integer;
    if-eqz v22, :cond_2d2

    const/4 v6, 0x3

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v0, v22

    invoke-virtual {v0, v6}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2d2

    .line 2128
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v14}, Lcom/android/exchange/adapter/ContactsSyncAdapter;->sendBirthday(Lcom/android/exchange/adapter/Serializer;Landroid/content/ContentValues;)V

    :cond_2d2
    move/from16 v30, v31

    .line 2130
    .end local v31           #imCount:I
    .restart local v30       #imCount:I
    goto/16 :goto_12a

    .end local v22           #eventType:Ljava/lang/Integer;
    .end local v30           #imCount:I
    .restart local v31       #imCount:I
    :cond_2d6
    const-string v6, "vnd.android.cursor.item/group_membership"

    move-object/from16 v0, v32

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2ef

    .line 2132
    const-string v6, "data1"

    invoke-virtual {v14, v6}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v0, v25

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move/from16 v30, v31

    .end local v31           #imCount:I
    .restart local v30       #imCount:I
    goto/16 :goto_12a

    .line 2133
    .end local v30           #imCount:I
    .restart local v31       #imCount:I
    :cond_2ef
    const-string v6, "vnd.android.cursor.item/note"

    move-object/from16 v0, v32

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_306

    .line 2134
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v14}, Lcom/android/exchange/adapter/ContactsSyncAdapter;->sendNote(Lcom/android/exchange/adapter/Serializer;Landroid/content/ContentValues;)V

    .line 2135
    const/16 v26, 0x1

    move/from16 v30, v31

    .end local v31           #imCount:I
    .restart local v30       #imCount:I
    goto/16 :goto_12a

    .line 2136
    .end local v30           #imCount:I
    .restart local v31       #imCount:I
    :cond_306
    const-string v6, "vnd.android.cursor.item/photo"

    move-object/from16 v0, v32

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_31b

    .line 2137
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v14}, Lcom/android/exchange/adapter/ContactsSyncAdapter;->sendPhoto(Lcom/android/exchange/adapter/Serializer;Landroid/content/ContentValues;)V

    move/from16 v30, v31

    .end local v31           #imCount:I
    .restart local v30       #imCount:I
    goto/16 :goto_12a

    .line 2139
    .end local v30           #imCount:I
    .restart local v31       #imCount:I
    :cond_31b
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
    goto/16 :goto_12a

    .line 2144
    .end local v14           #cv:Landroid/content/ContentValues;
    .end local v30           #imCount:I
    .end local v32           #mimeType:Ljava/lang/String;
    .end local v33           #ncv:Landroid/content/Entity$NamedContentValues;
    .restart local v31       #imCount:I
    :cond_32f
    if-nez v26, :cond_33d

    .line 2145
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v6}, Lcom/android/exchange/adapter/ContactsSyncAdapter;->sendNote(Lcom/android/exchange/adapter/Serializer;Landroid/content/ContentValues;)V

    .line 2153
    :cond_33d
    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v28

    move/from16 v18, v17

    .end local v17           #emailCount:I
    .local v18, emailCount:I
    :goto_343
    invoke-interface/range {v28 .. v28}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_35d

    invoke-interface/range {v28 .. v28}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/content/ContentValues;

    .line 2154
    .restart local v14       #cv:Landroid/content/ContentValues;
    add-int/lit8 v17, v18, 0x1

    .end local v18           #emailCount:I
    .restart local v17       #emailCount:I
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v18

    invoke-direct {v0, v1, v14, v2, v15}, Lcom/android/exchange/adapter/ContactsSyncAdapter;->sendEmail(Lcom/android/exchange/adapter/Serializer;Landroid/content/ContentValues;ILjava/lang/String;)V

    move/from16 v18, v17

    .end local v17           #emailCount:I
    .restart local v18       #emailCount:I
    goto :goto_343

    .line 2158
    .end local v14           #cv:Landroid/content/ContentValues;
    :cond_35d
    invoke-virtual/range {v25 .. v25}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_3b7

    .line 2159
    const/16 v24, 0x1

    .line 2160
    .local v24, groupFirst:Z
    invoke-virtual/range {v25 .. v25}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v28

    :goto_369
    invoke-interface/range {v28 .. v28}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3b2

    invoke-interface/range {v28 .. v28}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v29

    .line 2163
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
    :try_end_38b
    .catchall {:try_start_176 .. :try_end_38b} :catchall_170

    move-result-object v12

    .line 2167
    .local v12, c:Landroid/database/Cursor;
    :try_start_38c
    invoke-interface {v12}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v6

    if-eqz v6, :cond_3a9

    .line 2168
    if-eqz v24, :cond_39d

    .line 2169
    const/16 v6, 0x55

    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    .line 2170
    const/16 v24, 0x0

    .line 2172
    :cond_39d
    const/16 v6, 0x56

    const/4 v7, 0x0

    invoke-interface {v12, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p1

    invoke-virtual {v0, v6, v7}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;
    :try_end_3a9
    .catchall {:try_start_38c .. :try_end_3a9} :catchall_3ad

    .line 2175
    :cond_3a9
    :try_start_3a9
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    goto :goto_369

    :catchall_3ad
    move-exception v6

    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    throw v6

    .line 2178
    .end local v12           #c:Landroid/database/Cursor;
    .end local v29           #id:I
    :cond_3b2
    if-nez v24, :cond_3b7

    .line 2179
    invoke-virtual/range {p1 .. p1}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    .line 2182
    .end local v24           #groupFirst:Z
    :cond_3b7
    invoke-virtual/range {p1 .. p1}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    .line 2183
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/exchange/adapter/ContactsSyncAdapter;->mUpdatedIdList:Ljava/util/ArrayList;

    const-string v7, "_id"

    move-object/from16 v0, v21

    invoke-virtual {v0, v7}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3e

    .line 2185
    .end local v15           #displayName:Ljava/lang/String;
    .end local v18           #emailCount:I
    .end local v19           #emailValues:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    .end local v20           #entity:Landroid/content/Entity;
    .end local v21           #entityValues:Landroid/content/ContentValues;
    .end local v25           #groupIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v26           #hasNote:Z
    .end local v27           #homePhoneCount:I
    .end local v28           #i$:Ljava/util/Iterator;
    .end local v31           #imCount:I
    .end local v35           #serverId:Ljava/lang/String;
    .end local v38           #workPhoneCount:I
    :cond_3cf
    if-nez v23, :cond_3d4

    .line 2186
    invoke-virtual/range {p1 .. p1}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;
    :try_end_3d4
    .catchall {:try_start_3a9 .. :try_end_3d4} :catchall_170

    .line 2189
    :cond_3d4
    invoke-interface/range {v16 .. v16}, Landroid/content/EntityIterator;->close()V

    .line 2192
    const/4 v6, 0x0

    goto/16 :goto_1e
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
    .line 300
    sget-object v3, Lcom/android/exchange/adapter/ContactsSyncAdapter;->sSyncKeyLock:Ljava/lang/Object;

    monitor-enter v3

    .line 301
    :try_start_3
    const-string v2, "0"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_d

    if-nez p2, :cond_35

    .line 302
    :cond_d
    iget-object v2, p0, Lcom/android/exchange/adapter/AbstractSyncAdapter;->mService:Lcom/android/exchange/EasSyncService;

    iget-object v2, v2, Lcom/android/exchange/EasSyncService;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v4, Landroid/provider/ContactsContract;->AUTHORITY_URI:Landroid/net/Uri;

    invoke-virtual {v2, v4}, Landroid/content/ContentResolver;->acquireContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_44

    move-result-object v0

    .line 305
    .local v0, client:Landroid/content/ContentProviderClient;
    :try_start_17
    sget-object v2, Landroid/provider/ContactsContract$SyncState;->CONTENT_URI:Landroid/net/Uri;

    iget-object v4, p0, Lcom/android/exchange/adapter/AbstractSyncAdapter;->mAccountManagerAccount:Landroid/accounts/Account;

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-static {v0, v2, v4, v5}, Landroid/provider/SyncStateContract$Helpers;->set(Landroid/content/ContentProviderClient;Landroid/net/Uri;Landroid/accounts/Account;[B)V

    .line 307
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

    .line 312
    .end local v0           #client:Landroid/content/ContentProviderClient;
    :cond_35
    :try_start_35
    iget-object v2, p0, Lcom/android/exchange/adapter/AbstractSyncAdapter;->mMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    iput-object p1, v2, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mSyncKey:Ljava/lang/String;

    .line 313
    monitor-exit v3

    .line 314
    return-void

    .line 308
    .restart local v0       #client:Landroid/content/ContentProviderClient;
    :catch_3b
    move-exception v1

    .line 309
    .local v1, e:Landroid/os/RemoteException;
    new-instance v2, Ljava/io/IOException;

    const-string v4, "Can\'t set SyncKey in ContactsProvider"

    invoke-direct {v2, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 313
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
    .registers 11

    .prologue
    const/4 v9, 0x0

    .line 233
    const-string v6, "EasContactsSyncAdapter"

    const-string v7, "CONTACTS BAD SYNC KEY"

    invoke-static {v6, v7}, Lcom/android/exchange/ExchangeService;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 236
    .local v1, cvx:Landroid/content/ContentValues;
    const-string v6, "syncKey"

    const-string v7, "0"

    invoke-virtual {v1, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    sget-object v6, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->CONTENT_URI:Landroid/net/Uri;

    iget-object v7, p0, Lcom/android/exchange/adapter/AbstractSyncAdapter;->mMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    iget-wide v7, v7, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v6, v7, v8}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    .line 238
    .local v4, mMailboxUri:Landroid/net/Uri;
    iget-object v6, p0, Lcom/android/exchange/adapter/ContactsSyncAdapter;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {v6, v4, v1, v9, v9}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v5

    .line 239
    .local v5, mailboxCount:I
    const-string v6, "EasContactsSyncAdapter"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Updating Contacts mailbox with sync key 0. Count = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/exchange/ExchangeService;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    iget-object v6, p0, Lcom/android/exchange/adapter/ContactsSyncAdapter;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v7, p0, Lcom/android/exchange/adapter/ContactsSyncAdapter;->mAccountUri:Landroid/net/Uri;

    invoke-virtual {v6, v7, v9, v9}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 243
    .local v0, contactsCount:I
    const-string v6, "EasContactsSyncAdapter"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Contacts RawContacts table rows deleted count = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/exchange/ExchangeService;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    sget-object v6, Landroid/provider/ContactsContract$SyncState;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {p0, v6}, Lcom/android/exchange/adapter/ContactsSyncAdapter;->uriWithAccountAndIsSyncAdapter(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v3

    .line 248
    .local v3, mContactsSyncStateUri:Landroid/net/Uri;
    iget-object v6, p0, Lcom/android/exchange/adapter/ContactsSyncAdapter;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {v6, v3, v9, v9}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    .line 249
    .local v2, mContactsSyncStateCount:I
    const-string v6, "EasContactsSyncAdapter"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Contacts _sync_state table row deleted. rowCount = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/exchange/ExchangeService;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    return-void
.end method
