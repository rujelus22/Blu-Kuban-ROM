.class public Lcom/vlingo/client/util/ServerLogProvider;
.super Landroid/content/ContentProvider;
.source "ServerLogProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vlingo/client/util/ServerLogProvider$DatabaseHelper;
    }
.end annotation


# static fields
.field public static final ACTIONCOUNT:Ljava/lang/String; = "actionCount"

.field public static final ACTIONNOEDITCOUNT:Ljava/lang/String; = "actionNoEditCount"

.field public static final ACTIONUTTERANCECOUNT:Ljava/lang/String; = "actionUtteranceCount"

.field public static final ALTERNATIVEPHRASEPICKEDCOUNT:Ljava/lang/String; = "alternativePhrasePickedCount"

.field public static final BACKCOUNT:Ljava/lang/String; = "backCount"

.field public static final BACKNOTEDITCOUNT:Ljava/lang/String; = "backNoEditCount"

.field public static final BACKUTTERANCECOUNT:Ljava/lang/String; = "backUtteranceCount"

.field public static final CONTACTCHANGECOUNT:Ljava/lang/String; = "contactChangeCount"

.field public static final CONTENTID:Ljava/lang/String; = "contentID"

.field public static final CONTENT_URI:Landroid/net/Uri; = null

.field private static final DATABASE_NAME:Ljava/lang/String; = "Logs"

.field private static final DATABASE_VERSION:I = 0x2

.field public static final ERRORID:Ljava/lang/String; = "errorId"

.field private static final ERRORRECORDSCOUNT:I = 0xa

.field public static final ERRORRECORDSCOUNT_CONTENT_DIR:Ljava/lang/String; = "errorrecordsCount"

.field public static final ERRORRECORDS_CONTENT_DIR:Ljava/lang/String; = "errorrecords"

.field private static final ERROR_RECORDS:I = 0x3

.field private static final ERROR_RECORD_CREATE:Ljava/lang/String; = "create table errorRecords (_id integer primary key autoincrement, errorId text not null, viewCount INTEGER DEFAULT 0, uploaded INTEGER DEFAULT 0);"

.field private static final ERROR_RECORD_ID:I = 0x7

.field private static final ERROR_RECORD_TABLE:Ljava/lang/String; = "errorRecords"

.field private static final EVENTLOGCOUNT:I = 0xc

.field public static final EVENTLOGCOUNT_CONTENT_DIR:Ljava/lang/String; = "eventLogCount"

.field private static final EVENTS:I = 0x1

.field public static final EVENTS_CONTENT_DIR:Ljava/lang/String; = "events"

.field private static final EVENTS_CREATE:Ljava/lang/String; = "create table events (_id integer primary key autoincrement, type text not null, subtype text not null, occued text not null, guttID text not null, contentID text not null, location text not null, payload text not null, uploaded INTEGER DEFAULT 0);"

.field private static final EVENTS_TABLE:Ljava/lang/String; = "events"

.field private static final EVENT_ID:I = 0x5

.field public static final FROMEMAILCHANGEDCOUNT:Ljava/lang/String; = "fromEmailChangedCount"

.field public static final GUTTID:Ljava/lang/String; = "guttID"

.field private static final HELPPAGELOGCOUNT:I = 0x9

.field public static final HELPPAGELOGCOUNT_CONTENT_DIR:Ljava/lang/String; = "helppageLogCount"

.field public static final HELPPAGES_CONTENT_DIR:Ljava/lang/String; = "helppages"

.field private static final HELP_PAGES:I = 0x2

.field private static final HELP_PAGES_CREATE:Ljava/lang/String; = "create table helpPages (_id integer primary key autoincrement, pageId text not null, viewCount INTEGER DEFAULT 0, uploaded INTEGER DEFAULT 0);"

.field private static final HELP_PAGES_TABLE:Ljava/lang/String; = "helpPages"

.field private static final HELP_PAGE_ID:I = 0x6

.field private static final LANDINGPAGESCOUNT:I = 0xb

.field public static final LANDINGPAGESCOUNT_CONTENT_DIR:Ljava/lang/String; = "landingpagesCount"

.field public static final LANDINGPAGES_CONTENT_DIR:Ljava/lang/String; = "landingpages"

.field private static final LANDING_PAGES:I = 0x4

.field private static final LANDING_PAGES_CREATE:Ljava/lang/String; = "create table landingPages (_id integer primary key autoincrement, pageId text not null, viewCount INTEGER DEFAULT 0,launchTimeTotal INTEGER DEFAULT 0, launchCount INTEGER DEFAULT 0, backCount INTEGER DEFAULT 0, backNoEditCount INTEGER DEFAULT 0, backUtteranceCount INTEGER DEFAULT 0, actionCount INTEGER DEFAULT 0, actionNoEditCount INTEGER DEFAULT 0, actionUtteranceCount INTEGER DEFAULT 0, fromEmailChangedCount INTEGER DEFAULT 0, alternativePhrasePickedCount INTEGER DEFAULT 0, contactChangeCount INTEGER DEFAULT 0, phoneChangeCount INTEGER DEFAULT 0, noteTypeChangeCount INTEGER DEFAULT 0, undoCount INTEGER DEFAULT 0, uploaded INTEGER DEFAULT 0);"

.field private static final LANDING_PAGES_TABLE:Ljava/lang/String; = "landingPages"

.field private static final LANDING_PAGE_ID:I = 0x8

.field public static final LAUNCHCOUNT:Ljava/lang/String; = "launchCount"

.field public static final LAUNCHTIMETOTAL:Ljava/lang/String; = "launchTimeTotal"

.field public static final LOCATION:Ljava/lang/String; = "location"

.field public static final NOTETYPECHANGECOUNT:Ljava/lang/String; = "noteTypeChangeCount"

.field public static final OCCURED:Ljava/lang/String; = "occued"

.field public static final PAGEID:Ljava/lang/String; = "pageId"

.field public static final PAYLOAD:Ljava/lang/String; = "payload"

.field public static final PHONECHANGECOUNT:Ljava/lang/String; = "phoneChangeCount"

.field public static final PROVIDER_NAME:Ljava/lang/String; = "com.vlingo.client.util.ServerLogProvider"

.field public static final SUBDIR:Ljava/lang/String; = "logs"

.field public static final SUBTYPE:Ljava/lang/String; = "subtype"

.field public static final TYPE:Ljava/lang/String; = "type"

.field public static final UNDOCOUNT:Ljava/lang/String; = "undoCount"

.field public static final UPLOADED:Ljava/lang/String; = "uploaded"

.field public static final VIEWCOUNT:Ljava/lang/String; = "viewCount"

.field public static final _ID:Ljava/lang/String; = "_id"

.field private static final uriMatcher:Landroid/content/UriMatcher;


# instance fields
.field private logsDB:Landroid/database/sqlite/SQLiteDatabase;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    .line 31
    const-string v0, "content://com.vlingo.client.util.ServerLogProvider/logs"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/vlingo/client/util/ServerLogProvider;->CONTENT_URI:Landroid/net/Uri;

    .line 91
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lcom/vlingo/client/util/ServerLogProvider;->uriMatcher:Landroid/content/UriMatcher;

    .line 92
    sget-object v0, Lcom/vlingo/client/util/ServerLogProvider;->uriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.vlingo.client.util.ServerLogProvider"

    const-string v2, "logs/events"

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 93
    sget-object v0, Lcom/vlingo/client/util/ServerLogProvider;->uriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.vlingo.client.util.ServerLogProvider"

    const-string v2, "logs/helppages"

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 94
    sget-object v0, Lcom/vlingo/client/util/ServerLogProvider;->uriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.vlingo.client.util.ServerLogProvider"

    const-string v2, "logs/errorrecords"

    const/4 v3, 0x3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 95
    sget-object v0, Lcom/vlingo/client/util/ServerLogProvider;->uriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.vlingo.client.util.ServerLogProvider"

    const-string v2, "logs/landingpages"

    const/4 v3, 0x4

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 96
    sget-object v0, Lcom/vlingo/client/util/ServerLogProvider;->uriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.vlingo.client.util.ServerLogProvider"

    const-string v2, "logs/events/#"

    const/4 v3, 0x5

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 97
    sget-object v0, Lcom/vlingo/client/util/ServerLogProvider;->uriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.vlingo.client.util.ServerLogProvider"

    const-string v2, "logs/helppages/#"

    const/4 v3, 0x6

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 98
    sget-object v0, Lcom/vlingo/client/util/ServerLogProvider;->uriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.vlingo.client.util.ServerLogProvider"

    const-string v2, "logs/errorrecords/#"

    const/4 v3, 0x7

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 99
    sget-object v0, Lcom/vlingo/client/util/ServerLogProvider;->uriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.vlingo.client.util.ServerLogProvider"

    const-string v2, "logs/landingpages/#"

    const/16 v3, 0x8

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 100
    sget-object v0, Lcom/vlingo/client/util/ServerLogProvider;->uriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.vlingo.client.util.ServerLogProvider"

    const-string v2, "logs/helppageLogCount"

    const/16 v3, 0x9

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 101
    sget-object v0, Lcom/vlingo/client/util/ServerLogProvider;->uriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.vlingo.client.util.ServerLogProvider"

    const-string v2, "logs/errorrecordsCount"

    const/16 v3, 0xa

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 102
    sget-object v0, Lcom/vlingo/client/util/ServerLogProvider;->uriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.vlingo.client.util.ServerLogProvider"

    const-string v2, "logs/landingpagesCount"

    const/16 v3, 0xb

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 103
    sget-object v0, Lcom/vlingo/client/util/ServerLogProvider;->uriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.vlingo.client.util.ServerLogProvider"

    const-string v2, "logs/eventLogCount"

    const/16 v3, 0xc

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 104
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 25
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    .line 137
    return-void
.end method

.method private getTable(I)Ljava/lang/String;
    .registers 4
    .parameter "uri_id"

    .prologue
    .line 164
    packed-switch p1, :pswitch_data_18

    .line 178
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unknown URI"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 167
    :pswitch_b
    const-string v0, "events"

    .line 176
    :goto_d
    return-object v0

    .line 170
    :pswitch_e
    const-string v0, "helpPages"

    goto :goto_d

    .line 173
    :pswitch_11
    const-string v0, "errorRecords"

    goto :goto_d

    .line 176
    :pswitch_14
    const-string v0, "landingPages"

    goto :goto_d

    .line 164
    nop

    :pswitch_data_18
    .packed-switch 0x1
        :pswitch_b
        :pswitch_e
        :pswitch_11
        :pswitch_14
        :pswitch_b
        :pswitch_e
        :pswitch_11
        :pswitch_14
    .end packed-switch
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 9
    .parameter "uri"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    .line 184
    const/4 v0, 0x0

    .line 185
    .local v0, count:I
    sget-object v2, Lcom/vlingo/client/util/ServerLogProvider;->uriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v2, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v1

    .line 187
    .local v1, uri_id:I
    packed-switch v1, :pswitch_data_3a

    .line 197
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown URI "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 192
    :pswitch_23
    iget-object v2, p0, Lcom/vlingo/client/util/ServerLogProvider;->logsDB:Landroid/database/sqlite/SQLiteDatabase;

    invoke-direct {p0, v1}, Lcom/vlingo/client/util/ServerLogProvider;->getTable(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 200
    invoke-virtual {p0}, Lcom/vlingo/client/util/ServerLogProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, p1, v3}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 201
    return v0

    .line 187
    :pswitch_data_3a
    .packed-switch 0x1
        :pswitch_23
        :pswitch_23
        :pswitch_23
        :pswitch_23
    .end packed-switch
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .registers 5
    .parameter "uri"

    .prologue
    .line 206
    sget-object v0, Lcom/vlingo/client/util/ServerLogProvider;->uriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    packed-switch v0, :pswitch_data_46

    .line 233
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported URI: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 209
    :pswitch_22
    const-string v0, "vnd.android.cursor.dir/vnd.vlingo.events"

    .line 231
    :goto_24
    return-object v0

    .line 211
    :pswitch_25
    const-string v0, "vnd.android.cursor.dir/vnd.vlingo.helppages"

    goto :goto_24

    .line 213
    :pswitch_28
    const-string v0, "vnd.android.cursor.dir/vnd.vlingo.errors"

    goto :goto_24

    .line 215
    :pswitch_2b
    const-string v0, "vnd.android.cursor.dir/vnd.vlingo.landingpages"

    goto :goto_24

    .line 217
    :pswitch_2e
    const-string v0, "vnd.android.cursor.item/vnd.vlingo.events"

    goto :goto_24

    .line 219
    :pswitch_31
    const-string v0, "vnd.android.cursor.item/vnd.vlingo.helppages"

    goto :goto_24

    .line 221
    :pswitch_34
    const-string v0, "vnd.android.cursor.item/vnd.vlingo.errors"

    goto :goto_24

    .line 223
    :pswitch_37
    const-string v0, "vnd.android.cursor.item/vnd.vlingo.landingpages"

    goto :goto_24

    .line 225
    :pswitch_3a
    const-string v0, "vnd.android.cursor.dir/vnd.vlingo.helppagelogcount"

    goto :goto_24

    .line 227
    :pswitch_3d
    const-string v0, "vnd.android.cursor.dir/vnd.vlingo.errorrecordscount"

    goto :goto_24

    .line 229
    :pswitch_40
    const-string v0, "vnd.android.cursor.dir/vnd.vlingo.landingpagescount"

    goto :goto_24

    .line 231
    :pswitch_43
    const-string v0, "vnd.android.cursor.dir/vnd.vlingo.eventlogcount"

    goto :goto_24

    .line 206
    :pswitch_data_46
    .packed-switch 0x1
        :pswitch_22
        :pswitch_25
        :pswitch_28
        :pswitch_2b
        :pswitch_2e
        :pswitch_31
        :pswitch_34
        :pswitch_37
        :pswitch_3a
        :pswitch_3d
        :pswitch_40
        :pswitch_43
    .end packed-switch
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .registers 10
    .parameter "uri"
    .parameter "values"

    .prologue
    .line 239
    const-wide/16 v1, -0x1

    .line 241
    .local v1, rowID:J
    sget-object v4, Lcom/vlingo/client/util/ServerLogProvider;->uriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v4, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v3

    .line 242
    .local v3, uri_id:I
    packed-switch v3, :pswitch_data_82

    .line 259
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown URI "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 244
    :pswitch_24
    iget-object v4, p0, Lcom/vlingo/client/util/ServerLogProvider;->logsDB:Landroid/database/sqlite/SQLiteDatabase;

    const-string v5, "events"

    const-string v6, ""

    invoke-virtual {v4, v5, v6, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v1

    .line 264
    :goto_2e
    const-wide/16 v4, 0x0

    cmp-long v4, v1, v4

    if-lez v4, :cond_68

    .line 266
    sget-object v4, Lcom/vlingo/client/util/ServerLogProvider;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v4, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    .line 267
    .local v0, _uri:Landroid/net/Uri;
    invoke-virtual {p0}, Lcom/vlingo/client/util/ServerLogProvider;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v0, v5}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 268
    return-object v0

    .line 248
    .end local v0           #_uri:Landroid/net/Uri;
    :pswitch_47
    iget-object v4, p0, Lcom/vlingo/client/util/ServerLogProvider;->logsDB:Landroid/database/sqlite/SQLiteDatabase;

    const-string v5, "helpPages"

    const-string v6, ""

    invoke-virtual {v4, v5, v6, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v1

    .line 250
    goto :goto_2e

    .line 252
    :pswitch_52
    iget-object v4, p0, Lcom/vlingo/client/util/ServerLogProvider;->logsDB:Landroid/database/sqlite/SQLiteDatabase;

    const-string v5, "errorRecords"

    const-string v6, ""

    invoke-virtual {v4, v5, v6, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v1

    .line 254
    goto :goto_2e

    .line 256
    :pswitch_5d
    iget-object v4, p0, Lcom/vlingo/client/util/ServerLogProvider;->logsDB:Landroid/database/sqlite/SQLiteDatabase;

    const-string v5, "landingPages"

    const-string v6, ""

    invoke-virtual {v4, v5, v6, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v1

    .line 258
    goto :goto_2e

    .line 270
    :cond_68
    new-instance v4, Landroid/database/SQLException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to insert row into "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/database/SQLException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 242
    nop

    :pswitch_data_82
    .packed-switch 0x1
        :pswitch_24
        :pswitch_47
        :pswitch_52
        :pswitch_5d
    .end packed-switch
.end method

.method public onCreate()Z
    .registers 4

    .prologue
    .line 275
    invoke-virtual {p0}, Lcom/vlingo/client/util/ServerLogProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 276
    .local v0, context:Landroid/content/Context;
    new-instance v1, Lcom/vlingo/client/util/ServerLogProvider$DatabaseHelper;

    invoke-direct {v1, v0}, Lcom/vlingo/client/util/ServerLogProvider$DatabaseHelper;-><init>(Landroid/content/Context;)V

    .line 277
    .local v1, dbHelper:Lcom/vlingo/client/util/ServerLogProvider$DatabaseHelper;
    invoke-virtual {v1}, Lcom/vlingo/client/util/ServerLogProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    iput-object v2, p0, Lcom/vlingo/client/util/ServerLogProvider;->logsDB:Landroid/database/sqlite/SQLiteDatabase;

    .line 278
    iget-object v2, p0, Lcom/vlingo/client/util/ServerLogProvider;->logsDB:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v2, :cond_15

    const/4 v2, 0x0

    :goto_14
    return v2

    :cond_15
    const/4 v2, 0x1

    goto :goto_14
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .registers 11
    .parameter "uri"
    .parameter "projection"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sortOrder"

    .prologue
    .line 285
    const/4 v1, 0x0

    .line 286
    .local v1, query:Ljava/lang/String;
    sget-object v3, Lcom/vlingo/client/util/ServerLogProvider;->uriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v3, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v2

    .line 287
    .local v2, uri_id:I
    packed-switch v2, :pswitch_data_36

    .line 330
    :goto_a
    :pswitch_a
    iget-object v3, p0, Lcom/vlingo/client/util/ServerLogProvider;->logsDB:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v4, 0x0

    invoke-virtual {v3, v1, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 333
    .local v0, c:Landroid/database/Cursor;
    invoke-virtual {p0}, Lcom/vlingo/client/util/ServerLogProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-interface {v0, v3, p1}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    .line 334
    return-object v0

    .line 289
    .end local v0           #c:Landroid/database/Cursor;
    :pswitch_1d
    const-string v1, "select * FROM events"

    .line 290
    goto :goto_a

    .line 292
    :pswitch_20
    const-string v1, "SELECT pageId, SUM(viewCount) AS viewCount FROM helpPages GROUP BY pageId"

    .line 293
    goto :goto_a

    .line 295
    :pswitch_23
    const-string v1, "SELECT errorId, SUM(viewCount) AS viewCount FROM errorRecords GROUP BY errorId"

    .line 296
    goto :goto_a

    .line 298
    :pswitch_26
    const-string v1, "SELECT pageId, SUM(viewCount) AS viewCount, SUM(launchTimeTotal) AS launchTimeTotal, SUM(launchCount) AS launchCount, SUM(backCount) AS backCount, SUM(backNoEditCount) AS backNoEditCount, SUM(backUtteranceCount) AS backUtteranceCount, SUM(actionCount) AS actionCount, SUM(actionNoEditCount) AS actionNoEditCount, SUM(actionUtteranceCount) AS actionUtteranceCount, SUM(fromEmailChangedCount) AS fromEmailChangedCount, SUM(alternativePhrasePickedCount) AS alternativePhrasePickedCount, SUM(contactChangeCount) AS contactChangeCount, SUM(phoneChangeCount) AS phoneChangeCount, SUM(noteTypeChangeCount) AS noteTypeChangeCount, SUM(undoCount) AS undoCount FROM landingPages GROUP BY pageId"

    .line 315
    goto :goto_a

    .line 317
    :pswitch_29
    const-string v1, "SELECT COUNT(pageId) FROM (SELECT DISTINCT pageId FROM helpPages);"

    .line 318
    goto :goto_a

    .line 320
    :pswitch_2c
    const-string v1, "SELECT COUNT(errorId) FROM (SELECT DISTINCT errorId FROM errorRecords);"

    .line 321
    goto :goto_a

    .line 323
    :pswitch_2f
    const-string v1, "SELECT COUNT(pageId) FROM (SELECT DISTINCT errorId FROM landingPages);"

    .line 324
    goto :goto_a

    .line 326
    :pswitch_32
    const-string v1, "select COUNT(*) AS Count FROM events"

    goto :goto_a

    .line 287
    nop

    :pswitch_data_36
    .packed-switch 0x1
        :pswitch_1d
        :pswitch_20
        :pswitch_23
        :pswitch_26
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_29
        :pswitch_2c
        :pswitch_2f
        :pswitch_32
    .end packed-switch
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 12
    .parameter "uri"
    .parameter "values"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    .line 339
    const/4 v0, 0x0

    .line 341
    .local v0, count:I
    sget-object v3, Lcom/vlingo/client/util/ServerLogProvider;->uriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v3, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v2

    .line 343
    .local v2, uri_id:I
    invoke-direct {p0, v2}, Lcom/vlingo/client/util/ServerLogProvider;->getTable(I)Ljava/lang/String;

    move-result-object v1

    .line 345
    .local v1, table:Ljava/lang/String;
    packed-switch v2, :pswitch_data_86

    .line 368
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown URI "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 350
    :pswitch_27
    iget-object v3, p0, Lcom/vlingo/client/util/ServerLogProvider;->logsDB:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v3, v1, p2, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 371
    :goto_2d
    invoke-virtual {p0}, Lcom/vlingo/client/util/ServerLogProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, p1, v4}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 372
    return v0

    .line 360
    :pswitch_3a
    iget-object v4, p0, Lcom/vlingo/client/util/ServerLogProvider;->logsDB:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_id = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v3

    const/4 v6, 0x1

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_82

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " AND ("

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v6, 0x29

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_75
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v1, p2, v3, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 367
    goto :goto_2d

    .line 360
    :cond_82
    const-string v3, ""

    goto :goto_75

    .line 345
    nop

    :pswitch_data_86
    .packed-switch 0x1
        :pswitch_27
        :pswitch_27
        :pswitch_27
        :pswitch_27
        :pswitch_3a
        :pswitch_3a
        :pswitch_3a
        :pswitch_3a
    .end packed-switch
.end method
