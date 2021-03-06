.class public Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter;
.super Lcom/google/android/common/LoggingThreadedSyncAdapter;
.source "CalendarSyncAdapter.java"

# interfaces
.implements Landroid/accounts/OnAccountsUpdateListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter$CalendarGDataFeedFetcher;,
        Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter$Operation;,
        Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter$AuthInfo;,
        Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter$SyncInfo;
    }
.end annotation


# static fields
.field private static final CALENDARS_ID_PROJECTION:[Ljava/lang/String;

.field static final CALENDARS_PROJECTION:[Ljava/lang/String;

.field private static CALENDARS_PROJECTION_ACCESS_LEVEL_INDEX:I

.field private static CALENDARS_PROJECTION_COLOR_INDEX:I

.field private static CALENDARS_PROJECTION_DISPLAY_NAME_INDEX:I

.field private static CALENDARS_PROJECTION_EDIT_URL_INDEX:I

.field private static CALENDARS_PROJECTION_EVENTS_URL_INDEX:I

.field private static CALENDARS_PROJECTION_HIDDEN_ON_SERVER_INDEX:I

.field private static CALENDARS_PROJECTION_ID_INDEX:I

.field private static CALENDARS_PROJECTION_NAME_INDEX:I

.field private static CALENDARS_PROJECTION_SELECTED_ON_SERVER_INDEX:I

.field private static CALENDARS_PROJECTION_SELF_URL_INDEX:I

.field private static CALENDARS_PROJECTION_SYNC_ACCOUNT_INDEX:I

.field private static CALENDARS_PROJECTION_SYNC_ACCOUNT_TYPE_INDEX:I

.field private static CALENDARS_PROJECTION_SYNC_DIRTY_INDEX:I

.field private static CALENDARS_PROJECTION_SYNC_EVENTS_INDEX:I

.field private static CALENDARS_PROJECTION_TIMEZONE_INDEX:I

.field private static CALENDARS_PROJECTION_VISIBLE_INDEX:I

.field private static final CALENDAR_KEY_COLUMNS:[Ljava/lang/String;

.field static final sCalendarHandler:Lcom/google/android/syncadapters/calendar/CalendarHandler;

.field static final sEntityEndMarker:Lcom/google/android/syncadapters/EntityReader$EntryEntityItem;

.field static final sEntryEndMarker:Landroid/util/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/google/wireless/gdata2/data/Entry;",
            ">;"
        }
    .end annotation
.end field

.field static final sEventHandler:Lcom/google/android/syncadapters/calendar/EventHandler;


# instance fields
.field private mAccountManager:Landroid/accounts/AccountManager;

.field mCalendarClient:Lcom/google/wireless/gdata2/calendar/client/CalendarClient;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v1, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 107
    new-instance v0, Landroid/util/Pair;

    invoke-direct {v0, v1, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    sput-object v0, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter;->sEntryEndMarker:Landroid/util/Pair;

    .line 108
    new-instance v0, Lcom/google/android/syncadapters/EntityReader$EntryEntityItem;

    invoke-direct {v0, v1, v3, v1}, Lcom/google/android/syncadapters/EntityReader$EntryEntityItem;-><init>(Lcom/google/wireless/gdata2/data/Entry;ILandroid/content/Entity;)V

    sput-object v0, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter;->sEntityEndMarker:Lcom/google/android/syncadapters/EntityReader$EntryEntityItem;

    .line 124
    new-instance v0, Lcom/google/android/syncadapters/calendar/EventHandler;

    invoke-direct {v0}, Lcom/google/android/syncadapters/calendar/EventHandler;-><init>()V

    sput-object v0, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter;->sEventHandler:Lcom/google/android/syncadapters/calendar/EventHandler;

    .line 125
    new-instance v0, Lcom/google/android/syncadapters/calendar/CalendarHandler;

    invoke-direct {v0}, Lcom/google/android/syncadapters/calendar/CalendarHandler;-><init>()V

    sput-object v0, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter;->sCalendarHandler:Lcom/google/android/syncadapters/calendar/CalendarHandler;

    .line 163
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "account_name"

    aput-object v1, v0, v3

    const-string v1, "account_type"

    aput-object v1, v0, v4

    const-string v1, "cal_sync1"

    aput-object v1, v0, v5

    sput-object v0, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter;->CALENDAR_KEY_COLUMNS:[Ljava/lang/String;

    .line 182
    const/16 v0, 0x10

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "visible"

    aput-object v1, v0, v4

    const-string v1, "name"

    aput-object v1, v0, v5

    const-string v1, "calendar_displayName"

    aput-object v1, v0, v6

    const/4 v1, 0x4

    const-string v2, "calendar_timezone"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "sync_events"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "account_name"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "account_type"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "calendar_access_level"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "calendar_color"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "dirty"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "cal_sync1"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "cal_sync2"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "cal_sync3"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "cal_sync4"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "cal_sync5"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter;->CALENDARS_PROJECTION:[Ljava/lang/String;

    .line 202
    sput v3, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter;->CALENDARS_PROJECTION_ID_INDEX:I

    .line 203
    sput v4, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter;->CALENDARS_PROJECTION_VISIBLE_INDEX:I

    .line 204
    sput v5, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter;->CALENDARS_PROJECTION_NAME_INDEX:I

    .line 205
    sput v6, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter;->CALENDARS_PROJECTION_DISPLAY_NAME_INDEX:I

    .line 206
    const/4 v0, 0x4

    sput v0, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter;->CALENDARS_PROJECTION_TIMEZONE_INDEX:I

    .line 207
    const/4 v0, 0x5

    sput v0, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter;->CALENDARS_PROJECTION_SYNC_EVENTS_INDEX:I

    .line 208
    const/4 v0, 0x6

    sput v0, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter;->CALENDARS_PROJECTION_SYNC_ACCOUNT_INDEX:I

    .line 209
    const/4 v0, 0x7

    sput v0, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter;->CALENDARS_PROJECTION_SYNC_ACCOUNT_TYPE_INDEX:I

    .line 210
    const/16 v0, 0x8

    sput v0, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter;->CALENDARS_PROJECTION_ACCESS_LEVEL_INDEX:I

    .line 211
    const/16 v0, 0x9

    sput v0, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter;->CALENDARS_PROJECTION_COLOR_INDEX:I

    .line 212
    const/16 v0, 0xa

    sput v0, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter;->CALENDARS_PROJECTION_SYNC_DIRTY_INDEX:I

    .line 213
    const/16 v0, 0xb

    sput v0, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter;->CALENDARS_PROJECTION_EVENTS_URL_INDEX:I

    .line 214
    const/16 v0, 0xc

    sput v0, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter;->CALENDARS_PROJECTION_EDIT_URL_INDEX:I

    .line 215
    const/16 v0, 0xd

    sput v0, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter;->CALENDARS_PROJECTION_SELF_URL_INDEX:I

    .line 216
    const/16 v0, 0xe

    sput v0, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter;->CALENDARS_PROJECTION_SELECTED_ON_SERVER_INDEX:I

    .line 217
    const/16 v0, 0xf

    sput v0, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter;->CALENDARS_PROJECTION_HIDDEN_ON_SERVER_INDEX:I

    .line 219
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    sput-object v0, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter;->CALENDARS_ID_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 6
    .parameter "context"

    .prologue
    .line 279
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/common/LoggingThreadedSyncAdapter;-><init>(Landroid/content/Context;Z)V

    .line 280
    new-instance v0, Lcom/google/wireless/gdata2/calendar/client/CalendarClient;

    new-instance v1, Lcom/google/android/syncadapters/HttpsOnlyAndroidGDataClient;

    const-string v2, "Android-GData-Calendar/1.6"

    const-string v3, "2.0"

    invoke-direct {v1, p1, v2, v3}, Lcom/google/android/syncadapters/HttpsOnlyAndroidGDataClient;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Lcom/google/wireless/gdata2/calendar/parser/xml/XmlCalendarGDataParserFactory;

    new-instance v3, Lcom/google/android/common/gdata2/AndroidXmlParserFactory;

    invoke-direct {v3}, Lcom/google/android/common/gdata2/AndroidXmlParserFactory;-><init>()V

    invoke-direct {v2, v3}, Lcom/google/wireless/gdata2/calendar/parser/xml/XmlCalendarGDataParserFactory;-><init>(Lcom/google/wireless/gdata2/parser/xml/XmlParserFactory;)V

    invoke-direct {v0, v1, v2}, Lcom/google/wireless/gdata2/calendar/client/CalendarClient;-><init>(Lcom/google/wireless/gdata2/client/GDataClient;Lcom/google/wireless/gdata2/client/GDataParserFactory;)V

    iput-object v0, p0, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter;->mCalendarClient:Lcom/google/wireless/gdata2/calendar/client/CalendarClient;

    .line 284
    invoke-static {p1}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter;->mAccountManager:Landroid/accounts/AccountManager;

    .line 285
    new-instance v0, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter$1;

    const-string v1, "CalendarSyncAdapterAccountMonitor"

    const/16 v2, 0xa

    invoke-direct {v0, p0, v1, v2}, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter$1;-><init>(Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter;Ljava/lang/String;I)V

    invoke-virtual {v0}, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter$1;->start()V

    .line 293
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter;)Landroid/accounts/AccountManager;
    .registers 2
    .parameter "x0"

    .prologue
    .line 104
    iget-object v0, p0, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter;->mAccountManager:Landroid/accounts/AccountManager;

    return-object v0
.end method

.method static synthetic access$500(Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter;Landroid/accounts/Account;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 104
    invoke-direct {p0, p1}, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter;->addDefaultCalendar(Landroid/accounts/Account;)V

    return-void
.end method

.method private addDefaultCalendar(Landroid/accounts/Account;)V
    .registers 11
    .parameter

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v1, 0x0

    .line 1170
    iget-object v0, p0, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter;->mCalendarClient:Lcom/google/wireless/gdata2/calendar/client/CalendarClient;

    iget-object v2, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    const-string v3, "/private/full"

    invoke-virtual {v0, v2, v3, v1}, Lcom/google/wireless/gdata2/calendar/client/CalendarClient;->getDefaultCalendarUrl(Ljava/lang/String;Ljava/lang/String;Lcom/google/wireless/gdata2/client/QueryParams;)Ljava/lang/String;

    move-result-object v0

    .line 1172
    invoke-static {p1, v0}, Lcom/google/android/syncadapters/SyncAdapterUtils;->rewriteUrlForAccount(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1173
    const-string v2, "CalendarSyncAdapter"

    const/4 v3, 0x2

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_32

    .line 1174
    const-string v2, "CalendarSyncAdapter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Adding default calendar for account "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1176
    :cond_32
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 1177
    const-string v3, "account_name"

    iget-object v4, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1178
    const-string v3, "account_type"

    iget-object v4, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1179
    const-string v3, "cal_sync1"

    invoke-virtual {v2, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1180
    const-string v3, "cal_sync2"

    invoke-static {v0}, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter;->getEditUrlFromEventsUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1181
    const-string v3, "cal_sync3"

    invoke-static {v0}, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter;->getSelfUrlFromEventsUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1182
    const-string v3, "ownerAccount"

    invoke-static {v0}, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter;->calendarEmailAddressFromFeedUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1184
    const-string v3, "calendar_displayName"

    iget-object v4, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1185
    const-string v3, "sync_events"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1186
    const-string v3, "visible"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1187
    const-string v3, "cal_sync4"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1188
    const-string v3, "cal_sync5"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1189
    const-string v3, "allowedReminders"

    const-string v4, "0,1,2"

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1190
    const-string v3, "allowedAttendeeTypes"

    const-string v4, "0,1,2,3"

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1191
    const-string v3, "allowedAvailability"

    const-string v4, "0,1"

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1192
    const-string v3, "calendar_color"

    sget v4, Lcom/google/android/syncadapters/calendar/HandlerUtils;->DEFAULT_CALENDAR_INT_COLOR:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1196
    const-string v3, "calendar_timezone"

    invoke-static {}, Landroid/text/format/Time;->getCurrentTimezone()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1197
    const-string v3, "calendar_access_level"

    const/16 v4, 0x2bc

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1200
    invoke-virtual {p0}, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 1203
    sget-object v4, Landroid/provider/CalendarContract$Calendars;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v4, p1}, Lcom/google/android/syncadapters/SyncAdapterUtils;->addQueryParameters(Landroid/net/Uri;Landroid/accounts/Account;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v2

    .line 1205
    if-nez v2, :cond_f1

    .line 1206
    const-string v0, "CalendarSyncAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot add default calendar for account "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1237
    :cond_f0
    :goto_f0
    return-void

    .line 1210
    :cond_f1
    invoke-static {v2}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v4

    .line 1215
    :try_start_f5
    invoke-virtual {p0}, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v6, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-direct {p0, v2, v0, v6}, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter;->getCursorForSimilarFeeds(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 1217
    if-eqz v1, :cond_141

    .line 1218
    :cond_105
    :goto_105
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_141

    .line 1219
    sget v0, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter;->CALENDARS_PROJECTION_ID_INDEX:I

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 1221
    cmp-long v0, v6, v4

    if-eqz v0, :cond_105

    .line 1224
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1225
    const-string v2, "sync_events"

    const/4 v8, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v0, v2, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1226
    const-string v2, "visible"

    const/4 v8, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v0, v2, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1228
    sget-object v2, Landroid/provider/CalendarContract$Calendars;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2, v6, v7}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v3, v2, v0, v6, v7}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_139
    .catchall {:try_start_f5 .. :try_end_139} :catchall_13a

    goto :goto_105

    .line 1233
    :catchall_13a
    move-exception v0

    if-eqz v1, :cond_140

    .line 1234
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_140
    throw v0

    .line 1233
    :cond_141
    if-eqz v1, :cond_f0

    .line 1234
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_f0
.end method

.method static addDeleteOperation(Ljava/util/ArrayList;Landroid/net/Uri;Ljava/lang/Long;Z)V
    .registers 7
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;",
            "Landroid/net/Uri;",
            "Ljava/lang/Long;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 2405
    invoke-static {p1}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 2406
    if-eqz p2, :cond_1d

    .line 2407
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "event_id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    .line 2409
    :cond_1d
    invoke-virtual {v0, p3}, Landroid/content/ContentProviderOperation$Builder;->withYieldAllowed(Z)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2412
    return-void
.end method

.method static addInsertOperation(Ljava/util/ArrayList;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/Long;Ljava/lang/Integer;Z)V
    .registers 9
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;",
            "Landroid/net/Uri;",
            "Landroid/content/ContentValues;",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 2363
    invoke-static {p1}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 2365
    if-eqz p3, :cond_f

    .line 2366
    const-string v1, "event_id"

    invoke-virtual {v0, v1, p3}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 2368
    :cond_f
    if-eqz p4, :cond_1a

    .line 2370
    const-string v1, "event_id"

    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    .line 2373
    :cond_1a
    invoke-virtual {v0, p5}, Landroid/content/ContentProviderOperation$Builder;->withYieldAllowed(Z)Landroid/content/ContentProviderOperation$Builder;

    .line 2374
    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2375
    return-void
.end method

.method static addUpdateOperation(Ljava/util/ArrayList;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/Long;Ljava/lang/Integer;Z)V
    .registers 12
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;",
            "Landroid/net/Uri;",
            "Landroid/content/ContentValues;",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            "Z)V"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 2380
    invoke-static {p1}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 2383
    if-eqz p3, :cond_23

    .line 2384
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "_id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v5}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    .line 2386
    :cond_23
    if-eqz p4, :cond_35

    .line 2387
    const-string v1, "_id=?"

    new-array v2, v4, [Ljava/lang/String;

    aput-object v5, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    .line 2388
    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v3, v1}, Landroid/content/ContentProviderOperation$Builder;->withSelectionBackReference(II)Landroid/content/ContentProviderOperation$Builder;

    .line 2390
    :cond_35
    invoke-virtual {v0, v4}, Landroid/content/ContentProviderOperation$Builder;->withExpectedCount(I)Landroid/content/ContentProviderOperation$Builder;

    .line 2391
    invoke-virtual {v0, p5}, Landroid/content/ContentProviderOperation$Builder;->withYieldAllowed(Z)Landroid/content/ContentProviderOperation$Builder;

    .line 2392
    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2393
    return-void
.end method

.method private applyOperations(Ljava/util/ArrayList;Landroid/content/ContentProviderClient;Landroid/accounts/Account;)V
    .registers 8
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;",
            "Landroid/content/ContentProviderClient;",
            "Landroid/accounts/Account;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2342
    :try_start_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_32

    .line 2343
    invoke-virtual {p2, p1}, Landroid/content/ContentProviderClient;->applyBatch(Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    move-result-object v0

    .line 2344
    const-string v1, "CalendarSyncAdapter"

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_32

    .line 2345
    const-string v1, "CalendarSyncAdapter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Batch applied successfully, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    array-length v0, v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " results"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_32
    .catchall {:try_start_0 .. :try_end_32} :catchall_46
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_32} :catch_36
    .catch Landroid/content/OperationApplicationException; {:try_start_0 .. :try_end_32} :catch_4b

    .line 2356
    :cond_32
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 2358
    return-void

    .line 2348
    :catch_36
    move-exception v0

    .line 2349
    :try_start_37
    const-string v1, "CalendarSyncAdapter"

    const-string v2, "Error applying batch, an unknown number of yield points succeeded"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2350
    new-instance v0, Ljava/io/IOException;

    const-string v1, "error while applying batch"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_46
    .catchall {:try_start_37 .. :try_end_46} :catchall_46

    .line 2356
    :catchall_46
    move-exception v0

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    throw v0

    .line 2351
    :catch_4b
    move-exception v0

    .line 2352
    :try_start_4c
    const-string v1, "CalendarSyncAdapter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error applying batch, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/content/OperationApplicationException;->getNumSuccessfulYieldPoints()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " yield points succeeded"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2354
    new-instance v0, Ljava/io/IOException;

    const-string v1, "error while applying batch"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_76
    .catchall {:try_start_4c .. :try_end_76} :catchall_46
.end method

.method public static calendarEmailAddressFromFeedUrl(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 2469
    invoke-static {p0}, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter;->encodedCalendarEmailAddressFromFeedUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2470
    if-nez v1, :cond_8

    .line 2477
    :goto_7
    return-object v0

    .line 2474
    :cond_8
    :try_start_8
    const-string v2, "UTF-8"

    invoke-static {v1, v2}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_d
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_8 .. :try_end_d} :catch_f

    move-result-object v0

    goto :goto_7

    .line 2475
    :catch_f
    move-exception v1

    .line 2476
    const-string v1, "CalendarSyncAdapter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to url decode the email address in calendar "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7
.end method

.method private calendarEntryToContentValues(Landroid/accounts/Account;Lcom/google/wireless/gdata2/calendar/data/CalendarEntry;Landroid/content/ContentValues;)Ljava/lang/String;
    .registers 10
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    const/4 v5, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1537
    invoke-virtual {p3}, Landroid/content/ContentValues;->clear()V

    .line 1539
    invoke-virtual {p2}, Lcom/google/wireless/gdata2/calendar/data/CalendarEntry;->getSelfUri()Ljava/lang/String;

    move-result-object v3

    .line 1540
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_21

    .line 1542
    const-string v1, "CalendarSyncAdapter"

    invoke-static {v1, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_20

    .line 1543
    const-string v1, "CalendarSyncAdapter"

    const-string v2, "Calendar Self Uri cannot be null"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1594
    :cond_20
    :goto_20
    return-object v0

    .line 1547
    :cond_21
    const-string v4, "cal_sync3"

    invoke-static {v3}, Lcom/google/android/syncadapters/SyncAdapterUtils;->rewriteUrlFromHttpToHttps(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1549
    invoke-virtual {p2}, Lcom/google/wireless/gdata2/calendar/data/CalendarEntry;->getEditUri()Ljava/lang/String;

    move-result-object v3

    .line 1550
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3d

    .line 1551
    const-string v4, "cal_sync2"

    invoke-static {v3}, Lcom/google/android/syncadapters/SyncAdapterUtils;->rewriteUrlFromHttpToHttps(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1554
    :cond_3d
    invoke-virtual {p2}, Lcom/google/wireless/gdata2/calendar/data/CalendarEntry;->getEventsUri()Ljava/lang/String;

    move-result-object v3

    .line 1555
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_57

    .line 1557
    const-string v1, "CalendarSyncAdapter"

    invoke-static {v1, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_20

    .line 1558
    const-string v1, "CalendarSyncAdapter"

    const-string v2, "Calendar Events Uri cannot be null"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_20

    .line 1562
    :cond_57
    const-string v0, "cal_sync1"

    invoke-static {v3}, Lcom/google/android/syncadapters/SyncAdapterUtils;->rewriteUrlFromHttpToHttps(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p3, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1564
    const-string v0, "ownerAccount"

    invoke-static {v3}, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter;->calendarEmailAddressFromFeedUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p3, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1565
    const-string v0, "name"

    invoke-virtual {p2}, Lcom/google/wireless/gdata2/calendar/data/CalendarEntry;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p3, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1567
    invoke-virtual {p2}, Lcom/google/wireless/gdata2/calendar/data/CalendarEntry;->getOverrideName()Ljava/lang/String;

    move-result-object v0

    .line 1568
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_e8

    .line 1569
    const-string v0, "calendar_displayName"

    invoke-virtual {p2}, Lcom/google/wireless/gdata2/calendar/data/CalendarEntry;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p3, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1574
    :goto_85
    const-string v0, "calendar_timezone"

    invoke-virtual {p2}, Lcom/google/wireless/gdata2/calendar/data/CalendarEntry;->getTimezone()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p3, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1576
    invoke-virtual {p2}, Lcom/google/wireless/gdata2/calendar/data/CalendarEntry;->getColor()Ljava/lang/String;

    move-result-object v0

    .line 1577
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_a8

    .line 1578
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    .line 1580
    const/high16 v4, -0x100

    or-int/2addr v0, v4

    .line 1581
    const-string v4, "calendar_color"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p3, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1584
    :cond_a8
    const-string v4, "cal_sync4"

    invoke-virtual {p2}, Lcom/google/wireless/gdata2/calendar/data/CalendarEntry;->isSelected()Z

    move-result v0

    if-eqz v0, :cond_ee

    move v0, v1

    :goto_b1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p3, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1585
    const-string v0, "cal_sync5"

    invoke-virtual {p2}, Lcom/google/wireless/gdata2/calendar/data/CalendarEntry;->isHidden()Z

    move-result v4

    if-eqz v4, :cond_f0

    :goto_c0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1587
    const-string v0, "calendar_access_level"

    invoke-virtual {p2}, Lcom/google/wireless/gdata2/calendar/data/CalendarEntry;->getAccessLevel()B

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter;->getCalendarAccessLevelFromEntry(B)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1591
    const-string v0, "cal_sync8"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    move-object v0, v3

    .line 1594
    goto/16 :goto_20

    .line 1571
    :cond_e8
    const-string v4, "calendar_displayName"

    invoke-virtual {p3, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_85

    :cond_ee
    move v0, v2

    .line 1584
    goto :goto_b1

    :cond_f0
    move v1, v2

    .line 1585
    goto :goto_c0
.end method

.method private cleanupForUnsyncedCalendars(Landroid/accounts/Account;Landroid/content/ContentProviderClient;)V
    .registers 16
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 2491
    invoke-static {p2, p1}, Lcom/google/android/syncadapters/calendar/GDataSyncStateCalendar;->getOrCreate(Landroid/content/ContentProviderClient;Landroid/accounts/Account;)Lcom/google/android/syncadapters/calendar/GDataSyncStateCalendar;

    move-result-object v8

    .line 2495
    sget-object v1, Landroid/provider/CalendarContract$Calendars;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter;->CALENDARS_PROJECTION:[Ljava/lang/String;

    const-string v3, "account_name=? AND account_type=? AND sync_events=0"

    const/4 v0, 0x2

    new-array v4, v0, [Ljava/lang/String;

    iget-object v0, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    aput-object v0, v4, v7

    iget-object v0, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    aput-object v0, v4, v6

    const-string v5, "_id"

    move-object v0, p2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 2501
    sget-object v0, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p1}, Lcom/google/android/syncadapters/SyncAdapterUtils;->addQueryParameters(Landroid/net/Uri;Landroid/accounts/Account;)Landroid/net/Uri;

    move-result-object v3

    .line 2503
    const/4 v0, 0x0

    move-object v1, v0

    .line 2506
    :cond_26
    :goto_26
    :try_start_26
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_d8

    .line 2507
    sget v0, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter;->CALENDARS_PROJECTION_ID_INDEX:I

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 2508
    const-wide/16 v9, 0x0

    cmp-long v0, v4, v9

    if-gez v0, :cond_66

    .line 2509
    const-string v0, "CalendarSyncAdapter"

    const/4 v9, 0x5

    invoke-static {v0, v9}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_26

    .line 2510
    const-string v0, "CalendarSyncAdapter"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Found a non valid CalendarId: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_59
    .catchall {:try_start_26 .. :try_end_59} :catchall_e6
    .catch Landroid/content/OperationApplicationException; {:try_start_26 .. :try_end_59} :catch_5a

    goto :goto_26

    .line 2565
    :catch_5a
    move-exception v0

    .line 2566
    :try_start_5b
    const-string v1, "CalendarSyncAdapter"

    const-string v3, "Cannot process cleanup Events operations"

    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_62
    .catchall {:try_start_5b .. :try_end_62} :catchall_e6

    .line 2568
    :cond_62
    :goto_62
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 2570
    return-void

    .line 2514
    :cond_66
    :try_start_66
    sget v0, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter;->CALENDARS_PROJECTION_SYNC_EVENTS_INDEX:I

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 2515
    sget v0, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter;->CALENDARS_PROJECTION_EVENTS_URL_INDEX:I

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 2518
    iget-object v0, v8, Lcom/google/android/syncadapters/calendar/GDataSyncStateCalendar;->feedData:Landroid/os/Bundle;

    invoke-virtual {v0, v10}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v11

    .line 2519
    if-eqz v11, :cond_80

    invoke-virtual {v11}, Landroid/os/Bundle;->size()I

    move-result v0

    if-nez v0, :cond_d6

    :cond_80
    move v0, v7

    .line 2522
    :goto_81
    if-eq v9, v0, :cond_26

    .line 2528
    if-nez v1, :cond_eb

    .line 2529
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    .line 2533
    :goto_89
    if-eqz v11, :cond_b9

    .line 2534
    const-string v1, "CalendarSyncAdapter"

    const/4 v9, 0x3

    invoke-static {v1, v9}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_b6

    .line 2535
    const-string v1, "CalendarSyncAdapter"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Will clean feedSyncState for CalendarId: "

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v12, " and Feed: "

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v1, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2538
    :cond_b6
    invoke-virtual {v11}, Landroid/os/Bundle;->clear()V

    .line 2542
    :cond_b9
    invoke-static {v3}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    .line 2552
    const-string v9, "calendar_id=? AND _sync_id IS NOT NULL AND dirty=0 AND deleted=0"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v10, v11

    invoke-virtual {v1, v9, v10}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    .line 2555
    invoke-virtual {v1}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v1, v0

    .line 2556
    goto/16 :goto_26

    :cond_d6
    move v0, v6

    .line 2519
    goto :goto_81

    .line 2559
    :cond_d8
    if-eqz v1, :cond_62

    .line 2561
    invoke-virtual {v8}, Lcom/google/android/syncadapters/calendar/GDataSyncStateCalendar;->newUpdateOperation()Landroid/content/ContentProviderOperation;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2563
    invoke-virtual {p2, v1}, Landroid/content/ContentProviderClient;->applyBatch(Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    :try_end_e4
    .catchall {:try_start_66 .. :try_end_e4} :catchall_e6
    .catch Landroid/content/OperationApplicationException; {:try_start_66 .. :try_end_e4} :catch_5a

    goto/16 :goto_62

    .line 2568
    :catchall_e6
    move-exception v0

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_eb
    move-object v0, v1

    goto :goto_89
.end method

.method private doServerOperation(Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter$Operation;Ljava/lang/Class;Lcom/google/wireless/gdata2/client/GDataServiceClient;Ljava/lang/String;)V
    .registers 14
    .parameter "operation"
    .parameter "entryClass"
    .parameter "client"
    .parameter "authToken"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/wireless/gdata2/client/AuthenticationException;,
            Lcom/google/wireless/gdata2/parser/ParseException;,
            Ljava/io/IOException;,
            Lcom/google/wireless/gdata2/ConflictDetectedException;,
            Lcom/google/wireless/gdata2/client/ResourceUnavailableException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    .line 736
    invoke-static {}, Landroid/net/TrafficStats;->getThreadStatsTag()I

    move-result v0

    .line 737
    .local v0, activeTag:I
    const/4 v2, 0x0

    .line 739
    .local v2, tag:I
    :try_start_8
    #getter for: Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter$Operation;->type:I
    invoke-static {p1}, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter$Operation;->access$100(Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter$Operation;)I

    move-result v3

    packed-switch v3, :pswitch_data_1c8

    .line 770
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Bad operation type: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    #getter for: Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter$Operation;->type:I
    invoke-static {p1}, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter$Operation;->access$100(Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter$Operation;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_2c
    .catchall {:try_start_8 .. :try_end_2c} :catchall_136
    .catch Lcom/google/wireless/gdata2/ConflictDetectedException; {:try_start_8 .. :try_end_2c} :catch_2c
    .catch Lcom/google/wireless/gdata2/client/PreconditionFailedException; {:try_start_8 .. :try_end_2c} :catch_bb
    .catch Lcom/google/wireless/gdata2/client/ForbiddenException; {:try_start_8 .. :try_end_2c} :catch_114
    .catch Lcom/google/wireless/gdata2/client/BadRequestException; {:try_start_8 .. :try_end_2c} :catch_152
    .catch Lcom/google/wireless/gdata2/client/ResourceNotFoundException; {:try_start_8 .. :try_end_2c} :catch_17c
    .catch Lcom/google/wireless/gdata2/client/HttpException; {:try_start_8 .. :try_end_2c} :catch_198

    .line 772
    :catch_2c
    move-exception v1

    .line 782
    .local v1, e:Lcom/google/wireless/gdata2/ConflictDetectedException;
    :try_start_2d
    invoke-static {p1, p2, p3, p4}, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter;->fetchEntry(Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter$Operation;Ljava/lang/Class;Lcom/google/wireless/gdata2/client/GDataServiceClient;Ljava/lang/String;)Lcom/google/wireless/gdata2/data/Entry;

    move-result-object v3

    #setter for: Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter$Operation;->entry:Lcom/google/wireless/gdata2/data/Entry;
    invoke-static {p1, v3}, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter$Operation;->access$202(Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter$Operation;Lcom/google/wireless/gdata2/data/Entry;)Lcom/google/wireless/gdata2/data/Entry;

    .line 788
    const/4 v3, 0x2

    #setter for: Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter$Operation;->type:I
    invoke-static {p1, v3}, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter$Operation;->access$102(Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter$Operation;I)I
    :try_end_38
    .catchall {:try_start_2d .. :try_end_38} :catchall_136

    .line 841
    if-eqz v2, :cond_3d

    .line 842
    invoke-static {v2, v6}, Landroid/net/TrafficStats;->incrementOperationCount(II)V

    .line 844
    :cond_3d
    invoke-static {v0}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    .line 846
    .end local v1           #e:Lcom/google/wireless/gdata2/ConflictDetectedException;
    :goto_40
    return-void

    .line 741
    :pswitch_41
    :try_start_41
    const-string v3, "CalendarSyncAdapter"

    const/4 v4, 0x2

    invoke-static {v3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_66

    .line 742
    const-string v3, "CalendarSyncAdapter"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Inserting with entry =====\n "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    #getter for: Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter$Operation;->entry:Lcom/google/wireless/gdata2/data/Entry;
    invoke-static {p1}, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter$Operation;->access$200(Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter$Operation;)Lcom/google/wireless/gdata2/data/Entry;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 744
    :cond_66
    or-int/lit8 v2, v0, 0x1

    .line 745
    invoke-static {v2}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    .line 746
    #getter for: Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter$Operation;->url:Ljava/lang/String;
    invoke-static {p1}, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter$Operation;->access$300(Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter$Operation;)Ljava/lang/String;

    move-result-object v3

    #getter for: Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter$Operation;->entry:Lcom/google/wireless/gdata2/data/Entry;
    invoke-static {p1}, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter$Operation;->access$200(Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter$Operation;)Lcom/google/wireless/gdata2/data/Entry;

    move-result-object v4

    invoke-virtual {p3, v3, p4, v4}, Lcom/google/wireless/gdata2/client/GDataServiceClient;->createEntry(Ljava/lang/String;Ljava/lang/String;Lcom/google/wireless/gdata2/data/Entry;)Lcom/google/wireless/gdata2/data/Entry;

    move-result-object v3

    #setter for: Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter$Operation;->entry:Lcom/google/wireless/gdata2/data/Entry;
    invoke-static {p1, v3}, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter$Operation;->access$202(Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter$Operation;Lcom/google/wireless/gdata2/data/Entry;)Lcom/google/wireless/gdata2/data/Entry;
    :try_end_7a
    .catchall {:try_start_41 .. :try_end_7a} :catchall_136
    .catch Lcom/google/wireless/gdata2/ConflictDetectedException; {:try_start_41 .. :try_end_7a} :catch_2c
    .catch Lcom/google/wireless/gdata2/client/PreconditionFailedException; {:try_start_41 .. :try_end_7a} :catch_bb
    .catch Lcom/google/wireless/gdata2/client/ForbiddenException; {:try_start_41 .. :try_end_7a} :catch_114
    .catch Lcom/google/wireless/gdata2/client/BadRequestException; {:try_start_41 .. :try_end_7a} :catch_152
    .catch Lcom/google/wireless/gdata2/client/ResourceNotFoundException; {:try_start_41 .. :try_end_7a} :catch_17c
    .catch Lcom/google/wireless/gdata2/client/HttpException; {:try_start_41 .. :try_end_7a} :catch_198

    .line 841
    :goto_7a
    if-eqz v2, :cond_7f

    .line 842
    invoke-static {v2, v6}, Landroid/net/TrafficStats;->incrementOperationCount(II)V

    .line 844
    :cond_7f
    invoke-static {v0}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    goto :goto_40

    .line 751
    :pswitch_83
    :try_start_83
    const-string v3, "CalendarSyncAdapter"

    const/4 v4, 0x2

    invoke-static {v3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_a8

    .line 752
    const-string v3, "CalendarSyncAdapter"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Updating with entry =====\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    #getter for: Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter$Operation;->entry:Lcom/google/wireless/gdata2/data/Entry;
    invoke-static {p1}, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter$Operation;->access$200(Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter$Operation;)Lcom/google/wireless/gdata2/data/Entry;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 754
    :cond_a8
    or-int/lit8 v2, v0, 0x2

    .line 755
    invoke-static {v2}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    .line 756
    #getter for: Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter$Operation;->entry:Lcom/google/wireless/gdata2/data/Entry;
    invoke-static {p1}, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter$Operation;->access$200(Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter$Operation;)Lcom/google/wireless/gdata2/data/Entry;

    move-result-object v3

    iget-object v4, p1, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter$Operation;->oldEntry:Lcom/google/wireless/gdata2/data/Entry;

    invoke-virtual {p3, v3, v4, p4}, Lcom/google/wireless/gdata2/client/GDataServiceClient;->updateEntry(Lcom/google/wireless/gdata2/data/Entry;Lcom/google/wireless/gdata2/data/Entry;Ljava/lang/String;)Lcom/google/wireless/gdata2/data/Entry;

    move-result-object v3

    #setter for: Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter$Operation;->entry:Lcom/google/wireless/gdata2/data/Entry;
    invoke-static {p1, v3}, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter$Operation;->access$202(Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter$Operation;Lcom/google/wireless/gdata2/data/Entry;)Lcom/google/wireless/gdata2/data/Entry;
    :try_end_ba
    .catchall {:try_start_83 .. :try_end_ba} :catchall_136
    .catch Lcom/google/wireless/gdata2/ConflictDetectedException; {:try_start_83 .. :try_end_ba} :catch_2c
    .catch Lcom/google/wireless/gdata2/client/PreconditionFailedException; {:try_start_83 .. :try_end_ba} :catch_bb
    .catch Lcom/google/wireless/gdata2/client/ForbiddenException; {:try_start_83 .. :try_end_ba} :catch_114
    .catch Lcom/google/wireless/gdata2/client/BadRequestException; {:try_start_83 .. :try_end_ba} :catch_152
    .catch Lcom/google/wireless/gdata2/client/ResourceNotFoundException; {:try_start_83 .. :try_end_ba} :catch_17c
    .catch Lcom/google/wireless/gdata2/client/HttpException; {:try_start_83 .. :try_end_ba} :catch_198

    goto :goto_7a

    .line 789
    :catch_bb
    move-exception v1

    .line 790
    .local v1, e:Lcom/google/wireless/gdata2/client/PreconditionFailedException;
    :try_start_bc
    #getter for: Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter$Operation;->type:I
    invoke-static {p1}, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter$Operation;->access$100(Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter$Operation;)I

    move-result v3

    if-eq v3, v7, :cond_c8

    #getter for: Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter$Operation;->type:I
    invoke-static {p1}, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter$Operation;->access$100(Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter$Operation;)I

    move-result v3

    if-ne v3, v8, :cond_12c

    .line 796
    :cond_c8
    invoke-static {p1, p2, p3, p4}, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter;->fetchEntry(Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter$Operation;Ljava/lang/Class;Lcom/google/wireless/gdata2/client/GDataServiceClient;Ljava/lang/String;)Lcom/google/wireless/gdata2/data/Entry;

    move-result-object v3

    #setter for: Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter$Operation;->entry:Lcom/google/wireless/gdata2/data/Entry;
    invoke-static {p1, v3}, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter$Operation;->access$202(Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter$Operation;Lcom/google/wireless/gdata2/data/Entry;)Lcom/google/wireless/gdata2/data/Entry;

    .line 802
    const/4 v3, 0x2

    #setter for: Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter$Operation;->type:I
    invoke-static {p1, v3}, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter$Operation;->access$102(Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter$Operation;I)I
    :try_end_d3
    .catchall {:try_start_bc .. :try_end_d3} :catchall_136

    .line 841
    if-eqz v2, :cond_d8

    .line 842
    invoke-static {v2, v6}, Landroid/net/TrafficStats;->incrementOperationCount(II)V

    .line 844
    :cond_d8
    invoke-static {v0}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    goto/16 :goto_40

    .line 761
    .end local v1           #e:Lcom/google/wireless/gdata2/client/PreconditionFailedException;
    :pswitch_dd
    or-int/lit8 v2, v0, 0x3

    .line 762
    :try_start_df
    invoke-static {v2}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    .line 763
    const-string v3, "CalendarSyncAdapter"

    const/4 v4, 0x2

    invoke-static {v3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_107

    .line 764
    const-string v3, "CalendarSyncAdapter"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Deleting "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    #getter for: Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter$Operation;->url:Ljava/lang/String;
    invoke-static {p1}, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter$Operation;->access$300(Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter$Operation;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 766
    :cond_107
    #getter for: Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter$Operation;->url:Ljava/lang/String;
    invoke-static {p1}, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter$Operation;->access$300(Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter$Operation;)Ljava/lang/String;

    move-result-object v3

    #getter for: Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter$Operation;->etag:Ljava/lang/String;
    invoke-static {p1}, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter$Operation;->access$400(Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter$Operation;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p3, v3, p4, v4}, Lcom/google/wireless/gdata2/client/GDataServiceClient;->deleteEntry(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_112
    .catchall {:try_start_df .. :try_end_112} :catchall_136
    .catch Lcom/google/wireless/gdata2/ConflictDetectedException; {:try_start_df .. :try_end_112} :catch_2c
    .catch Lcom/google/wireless/gdata2/client/PreconditionFailedException; {:try_start_df .. :try_end_112} :catch_bb
    .catch Lcom/google/wireless/gdata2/client/ForbiddenException; {:try_start_df .. :try_end_112} :catch_114
    .catch Lcom/google/wireless/gdata2/client/BadRequestException; {:try_start_df .. :try_end_112} :catch_152
    .catch Lcom/google/wireless/gdata2/client/ResourceNotFoundException; {:try_start_df .. :try_end_112} :catch_17c
    .catch Lcom/google/wireless/gdata2/client/HttpException; {:try_start_df .. :try_end_112} :catch_198

    goto/16 :goto_7a

    .line 807
    :catch_114
    move-exception v1

    .line 808
    .local v1, e:Lcom/google/wireless/gdata2/client/ForbiddenException;
    :try_start_115
    #getter for: Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter$Operation;->type:I
    invoke-static {p1}, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter$Operation;->access$100(Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter$Operation;)I

    move-result v3

    if-ne v3, v7, :cond_140

    .line 810
    invoke-static {p1, p2, p3, p4}, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter;->fetchEntry(Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter$Operation;Ljava/lang/Class;Lcom/google/wireless/gdata2/client/GDataServiceClient;Ljava/lang/String;)Lcom/google/wireless/gdata2/data/Entry;

    move-result-object v3

    #setter for: Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter$Operation;->entry:Lcom/google/wireless/gdata2/data/Entry;
    invoke-static {p1, v3}, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter$Operation;->access$202(Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter$Operation;Lcom/google/wireless/gdata2/data/Entry;)Lcom/google/wireless/gdata2/data/Entry;
    :try_end_122
    .catchall {:try_start_115 .. :try_end_122} :catchall_136

    .line 841
    :cond_122
    :goto_122
    if-eqz v2, :cond_127

    .line 842
    invoke-static {v2, v6}, Landroid/net/TrafficStats;->incrementOperationCount(II)V

    .line 844
    :cond_127
    invoke-static {v0}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    goto/16 :goto_40

    .line 805
    .local v1, e:Lcom/google/wireless/gdata2/client/PreconditionFailedException;
    :cond_12c
    :try_start_12c
    new-instance v3, Lcom/google/wireless/gdata2/ConflictDetectedException;

    #getter for: Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter$Operation;->entry:Lcom/google/wireless/gdata2/data/Entry;
    invoke-static {p1}, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter$Operation;->access$200(Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter$Operation;)Lcom/google/wireless/gdata2/data/Entry;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/google/wireless/gdata2/ConflictDetectedException;-><init>(Lcom/google/wireless/gdata2/data/Entry;)V

    throw v3
    :try_end_136
    .catchall {:try_start_12c .. :try_end_136} :catchall_136

    .line 841
    .end local v1           #e:Lcom/google/wireless/gdata2/client/PreconditionFailedException;
    :catchall_136
    move-exception v3

    if-eqz v2, :cond_13c

    .line 842
    invoke-static {v2, v6}, Landroid/net/TrafficStats;->incrementOperationCount(II)V

    .line 844
    :cond_13c
    invoke-static {v0}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    throw v3

    .line 811
    .local v1, e:Lcom/google/wireless/gdata2/client/ForbiddenException;
    :cond_140
    :try_start_140
    #getter for: Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter$Operation;->type:I
    invoke-static {p1}, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter$Operation;->access$100(Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter$Operation;)I

    move-result v3

    if-ne v3, v6, :cond_14b

    .line 813
    const/4 v3, 0x3

    #setter for: Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter$Operation;->type:I
    invoke-static {p1, v3}, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter$Operation;->access$102(Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter$Operation;I)I

    goto :goto_122

    .line 814
    :cond_14b
    #getter for: Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter$Operation;->type:I
    invoke-static {p1}, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter$Operation;->access$100(Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter$Operation;)I

    move-result v3

    if-ne v3, v8, :cond_122

    goto :goto_122

    .line 817
    .end local v1           #e:Lcom/google/wireless/gdata2/client/ForbiddenException;
    :catch_152
    move-exception v1

    .line 818
    .local v1, e:Lcom/google/wireless/gdata2/client/BadRequestException;
    #getter for: Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter$Operation;->type:I
    invoke-static {p1}, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter$Operation;->access$100(Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter$Operation;)I

    move-result v3

    if-ne v3, v7, :cond_16a

    .line 820
    invoke-static {p1, p2, p3, p4}, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter;->fetchEntry(Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter$Operation;Ljava/lang/Class;Lcom/google/wireless/gdata2/client/GDataServiceClient;Ljava/lang/String;)Lcom/google/wireless/gdata2/data/Entry;

    move-result-object v3

    #setter for: Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter$Operation;->entry:Lcom/google/wireless/gdata2/data/Entry;
    invoke-static {p1, v3}, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter$Operation;->access$202(Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter$Operation;Lcom/google/wireless/gdata2/data/Entry;)Lcom/google/wireless/gdata2/data/Entry;
    :try_end_160
    .catchall {:try_start_140 .. :try_end_160} :catchall_136

    .line 841
    :cond_160
    :goto_160
    if-eqz v2, :cond_165

    .line 842
    invoke-static {v2, v6}, Landroid/net/TrafficStats;->incrementOperationCount(II)V

    .line 844
    :cond_165
    invoke-static {v0}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    goto/16 :goto_40

    .line 821
    :cond_16a
    :try_start_16a
    #getter for: Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter$Operation;->type:I
    invoke-static {p1}, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter$Operation;->access$100(Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter$Operation;)I

    move-result v3

    if-ne v3, v6, :cond_175

    .line 823
    const/4 v3, 0x3

    #setter for: Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter$Operation;->type:I
    invoke-static {p1, v3}, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter$Operation;->access$102(Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter$Operation;I)I

    goto :goto_160

    .line 824
    :cond_175
    #getter for: Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter$Operation;->type:I
    invoke-static {p1}, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter$Operation;->access$100(Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter$Operation;)I

    move-result v3

    if-ne v3, v8, :cond_160

    goto :goto_160

    .line 827
    .end local v1           #e:Lcom/google/wireless/gdata2/client/BadRequestException;
    :catch_17c
    move-exception v1

    .line 828
    .local v1, e:Lcom/google/wireless/gdata2/client/ResourceNotFoundException;
    #getter for: Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter$Operation;->type:I
    invoke-static {p1}, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter$Operation;->access$100(Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter$Operation;)I

    move-result v3

    if-ne v3, v7, :cond_191

    .line 830
    const/4 v3, 0x3

    #setter for: Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter$Operation;->type:I
    invoke-static {p1, v3}, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter$Operation;->access$102(Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter$Operation;I)I
    :try_end_187
    .catchall {:try_start_16a .. :try_end_187} :catchall_136

    .line 841
    :cond_187
    :goto_187
    if-eqz v2, :cond_18c

    .line 842
    invoke-static {v2, v6}, Landroid/net/TrafficStats;->incrementOperationCount(II)V

    .line 844
    :cond_18c
    invoke-static {v0}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    goto/16 :goto_40

    .line 831
    :cond_191
    :try_start_191
    #getter for: Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter$Operation;->type:I
    invoke-static {p1}, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter$Operation;->access$100(Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter$Operation;)I

    move-result v3

    if-ne v3, v8, :cond_187

    goto :goto_187

    .line 834
    .end local v1           #e:Lcom/google/wireless/gdata2/client/ResourceNotFoundException;
    :catch_198
    move-exception v1

    .line 835
    .local v1, e:Lcom/google/wireless/gdata2/client/HttpException;
    invoke-virtual {v1}, Lcom/google/wireless/gdata2/client/HttpException;->getStatusCode()I

    move-result v3

    const/16 v4, 0x1f7

    if-ne v3, v4, :cond_1ab

    .line 836
    new-instance v3, Lcom/google/wireless/gdata2/client/ResourceUnavailableException;

    invoke-virtual {v1}, Lcom/google/wireless/gdata2/client/HttpException;->getRetryAfter()J

    move-result-wide v4

    invoke-direct {v3, v4, v5}, Lcom/google/wireless/gdata2/client/ResourceUnavailableException;-><init>(J)V

    throw v3

    .line 838
    :cond_1ab
    new-instance v3, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Received unhandled http error: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Lcom/google/wireless/gdata2/client/HttpException;->getStatusCode()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_1c8
    .catchall {:try_start_191 .. :try_end_1c8} :catchall_136

    .line 739
    :pswitch_data_1c8
    .packed-switch 0x1
        :pswitch_41
        :pswitch_83
        :pswitch_dd
    .end packed-switch
.end method

.method public static encodedCalendarEmailAddressFromFeedUrl(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .parameter

    .prologue
    const/4 v3, 0x5

    .line 2454
    const-string v0, "/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 2455
    array-length v1, v0

    if-le v1, v3, :cond_18

    const-string v1, "feeds"

    const/4 v2, 0x4

    aget-object v2, v0, v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 2456
    aget-object v0, v0, v3

    .line 2459
    :goto_17
    return-object v0

    .line 2458
    :cond_18
    const-string v0, "CalendarSyncAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to find the email address in calendar "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2459
    const/4 v0, 0x0

    goto :goto_17
.end method

.method private static fetchEntry(Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter$Operation;Ljava/lang/Class;Lcom/google/wireless/gdata2/client/GDataServiceClient;Ljava/lang/String;)Lcom/google/wireless/gdata2/data/Entry;
    .registers 8
    .parameter "operation"
    .parameter "entryClass"
    .parameter "client"
    .parameter "authToken"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/wireless/gdata2/parser/ParseException;,
            Ljava/io/IOException;,
            Lcom/google/wireless/gdata2/client/ResourceUnavailableException;
        }
    .end annotation

    .prologue
    .line 852
    :try_start_0
    #getter for: Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter$Operation;->url:Ljava/lang/String;
    invoke-static {p0}, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter$Operation;->access$300(Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter$Operation;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p2, p1, v1, p3, v2}, Lcom/google/wireless/gdata2/client/GDataServiceClient;->getEntry(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/wireless/gdata2/data/Entry;
    :try_end_8
    .catch Lcom/google/wireless/gdata2/client/HttpException; {:try_start_0 .. :try_end_8} :catch_a
    .catch Lcom/google/wireless/gdata2/GDataException; {:try_start_0 .. :try_end_8} :catch_44

    move-result-object v1

    return-object v1

    .line 854
    :catch_a
    move-exception v0

    .line 855
    .local v0, e:Lcom/google/wireless/gdata2/client/HttpException;
    invoke-virtual {v0}, Lcom/google/wireless/gdata2/client/HttpException;->getStatusCode()I

    move-result v1

    const/16 v2, 0x1f7

    if-ne v1, v2, :cond_1d

    .line 856
    new-instance v1, Lcom/google/wireless/gdata2/client/ResourceUnavailableException;

    invoke-virtual {v0}, Lcom/google/wireless/gdata2/client/HttpException;->getRetryAfter()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Lcom/google/wireless/gdata2/client/ResourceUnavailableException;-><init>(J)V

    throw v1

    .line 858
    :cond_1d
    new-instance v1, Lcom/google/wireless/gdata2/parser/ParseException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error when redownloading the entry due to exception "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " in response to an operation of type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter$Operation;->getType()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/google/wireless/gdata2/parser/ParseException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 861
    .end local v0           #e:Lcom/google/wireless/gdata2/client/HttpException;
    :catch_44
    move-exception v0

    .line 862
    .local v0, e:Lcom/google/wireless/gdata2/GDataException;
    new-instance v1, Lcom/google/wireless/gdata2/parser/ParseException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error when redownloading the entry due to exception "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " in response to an operation of type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter$Operation;->getType()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/google/wireless/gdata2/parser/ParseException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method static getAllCalendarsUrlFromEventsUrl(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .parameter

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x3

    .line 2760
    if-nez p0, :cond_14

    .line 2761
    const-string v1, "CalendarSyncAdapter"

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 2762
    const-string v1, "CalendarSyncAdapter"

    const-string v2, "Cannot get AllCalendars url from a NULL url"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2778
    :cond_13
    :goto_13
    return-object v0

    .line 2766
    :cond_14
    const-string v1, "/private/full"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2d

    .line 2767
    const-string v0, "/private/full"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "/calendar/feeds"

    const-string v2, "/calendar/feeds/default/allcalendars/full"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    goto :goto_13

    .line 2770
    :cond_2d
    const-string v1, "/private/free-busy"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_46

    .line 2771
    const-string v0, "/private/free-busy"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "/calendar/feeds"

    const-string v2, "/calendar/feeds/default/allcalendars/full"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    goto :goto_13

    .line 2775
    :cond_46
    const-string v1, "CalendarSyncAdapter"

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 2776
    const-string v1, "CalendarSyncAdapter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot get AllCalendars url from the following url: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_13
.end method

.method private getCount(Landroid/content/ContentProviderClient;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 12
    .parameter "client"
    .parameter "uri"
    .parameter "selection"
    .parameter "selectionArgs"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 642
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "_count"

    aput-object v0, v2, v1

    const/4 v5, 0x0

    move-object v0, p1

    move-object v1, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 645
    .local v6, c:Landroid/database/Cursor;
    :try_start_11
    invoke-interface {v6}, Landroid/database/Cursor;->moveToLast()Z

    .line 646
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_18
    .catchall {:try_start_11 .. :try_end_18} :catchall_1d

    move-result v0

    .line 648
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    return v0

    :catchall_1d
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private getCurrentCalendars(Landroid/accounts/Account;)Ljava/util/HashSet;
    .registers 11
    .parameter "account"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/accounts/Account;",
            ")",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 1056
    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    .line 1057
    .local v6, calendarIds:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Long;>;"
    invoke-virtual {p0}, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1058
    .local v0, cr:Landroid/content/ContentResolver;
    sget-object v1, Landroid/provider/CalendarContract$Calendars;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter;->CALENDARS_ID_PROJECTION:[Ljava/lang/String;

    const-string v3, "account_name=? AND account_type=?"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    iget-object v5, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    aput-object v5, v4, v8

    const/4 v5, 0x1

    iget-object v8, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    aput-object v8, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 1063
    .local v7, cursor:Landroid/database/Cursor;
    if-eqz v7, :cond_42

    .line 1065
    :goto_27
    :try_start_27
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_3f

    .line 1066
    const/4 v1, 0x0

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_39
    .catchall {:try_start_27 .. :try_end_39} :catchall_3a

    goto :goto_27

    .line 1069
    :catchall_3a
    move-exception v1

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v1

    :cond_3f
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 1072
    :cond_42
    return-object v6
.end method

.method private getCursorForSimilarFeeds(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .registers 10
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1241
    invoke-static {p2}, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter;->encodedCalendarEmailAddressFromFeedUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1247
    const-string v1, "%40"

    const-string v2, "#%40"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1249
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cal_sync1 LIKE \'%/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/%\' "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "ESCAPE \'#\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1266
    sget-object v1, Landroid/provider/CalendarContract$Calendars;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter;->CALENDARS_PROJECTION:[Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "account_type=? AND "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p3, v4, v0

    const-string v5, "calendar_access_level"

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method private static getEditUrlFromEventsUrl(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter "url"

    .prologue
    .line 2796
    invoke-static {p0}, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter;->getAllCalendarsUrlFromEventsUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter;->rewriteUrlFromHttpToHttps(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getExpectedFeeds(Landroid/accounts/Account;)Ljava/util/HashSet;
    .registers 11
    .parameter "account"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/accounts/Account;",
            ")",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x2

    .line 542
    invoke-static {}, Lcom/google/common/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v7

    .line 543
    .local v7, expectedFeeds:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-static {}, Landroid/content/ContentResolver;->getMasterSyncAutomatically()Z

    move-result v1

    if-eqz v1, :cond_13

    const-string v1, "com.android.calendar"

    invoke-static {p1, v1}, Landroid/content/ContentResolver;->getSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_14

    .line 562
    :cond_13
    :goto_13
    return-object v7

    .line 547
    :cond_14
    invoke-virtual {p0}, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 549
    .local v0, cr:Landroid/content/ContentResolver;
    sget-object v1, Landroid/provider/CalendarContract$Calendars;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter;->CALENDAR_KEY_COLUMNS:[Ljava/lang/String;

    const-string v3, "account_name=? AND account_type=? AND sync_events=1"

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    iget-object v8, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    aput-object v8, v4, v5

    const/4 v5, 0x1

    iget-object v8, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    aput-object v8, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 552
    .local v6, c:Landroid/database/Cursor;
    if-nez v6, :cond_3b

    .line 553
    new-instance v1, Landroid/os/RemoteException;

    invoke-direct {v1}, Landroid/os/RemoteException;-><init>()V

    throw v1

    .line 556
    :cond_3b
    :goto_3b
    :try_start_3b
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_4f

    .line 557
    const/4 v1, 0x2

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_49
    .catchall {:try_start_3b .. :try_end_49} :catchall_4a

    goto :goto_3b

    .line 560
    :catchall_4a
    move-exception v1

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v1

    :cond_4f
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_13
.end method

.method private getIsSyncable(Landroid/accounts/Account;)Z
    .registers 15
    .parameter "account"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Landroid/accounts/OperationCanceledException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 337
    :try_start_2
    invoke-virtual {p0}, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v8

    const-string v9, "com.google"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    const-string v12, "service_cl"

    aput-object v12, v10, v11

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual {v8, v9, v10, v11, v12}, Landroid/accounts/AccountManager;->getAccountsByTypeAndFeatures(Ljava/lang/String;[Ljava/lang/String;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    move-result-object v8

    invoke-interface {v8}, Landroid/accounts/AccountManagerFuture;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/accounts/Account;

    .line 344
    .local v0, accounts:[Landroid/accounts/Account;
    move-object v1, v0

    .local v1, arr$:[Landroid/accounts/Account;
    array-length v5, v1

    .local v5, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_23
    if-ge v4, v5, :cond_31

    aget-object v2, v1, v4

    .line 345
    .local v2, calendarAccount:Landroid/accounts/Account;
    invoke-virtual {p1, v2}, Landroid/accounts/Account;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2e

    .line 352
    .end local v2           #calendarAccount:Landroid/accounts/Account;
    :goto_2d
    return v6

    .line 344
    .restart local v2       #calendarAccount:Landroid/accounts/Account;
    :cond_2e
    add-int/lit8 v4, v4, 0x1

    goto :goto_23

    .line 349
    .end local v2           #calendarAccount:Landroid/accounts/Account;
    :cond_31
    const-string v6, "CalendarSyncAdapter"

    const/4 v8, 0x3

    invoke-static {v6, v8}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_52

    .line 350
    const-string v6, "CalendarSyncAdapter"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Account missing calendar service "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_52
    .catch Landroid/accounts/AuthenticatorException; {:try_start_2 .. :try_end_52} :catch_54

    :cond_52
    move v6, v7

    .line 352
    goto :goto_2d

    .line 353
    .end local v0           #accounts:[Landroid/accounts/Account;
    .end local v1           #arr$:[Landroid/accounts/Account;
    .end local v4           #i$:I
    .end local v5           #len$:I
    :catch_54
    move-exception v3

    .line 354
    .local v3, e:Landroid/accounts/AuthenticatorException;
    new-instance v6, Ljava/io/IOException;

    invoke-virtual {v3}, Landroid/accounts/AuthenticatorException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6
.end method

.method private getOperationForCalendarEntry(Lcom/google/wireless/gdata2/data/Entry;)Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter$Operation;
    .registers 6
    .parameter

    .prologue
    const/4 v0, 0x0

    const/4 v3, 0x2

    .line 1721
    .line 1722
    invoke-virtual {p1}, Lcom/google/wireless/gdata2/data/Entry;->getEditUri()Ljava/lang/String;

    move-result-object v1

    .line 1723
    invoke-virtual {p1}, Lcom/google/wireless/gdata2/data/Entry;->isDeleted()Z

    move-result v2

    if-eqz v2, :cond_27

    .line 1724
    if-nez v1, :cond_1e

    .line 1726
    const-string v1, "CalendarSyncAdapter"

    invoke-static {v1, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 1727
    const-string v1, "CalendarSyncAdapter"

    const-string v2, "DELETE operation cannot be sent to the server with a null editUri"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1740
    :cond_1d
    :goto_1d
    return-object v0

    .line 1731
    :cond_1e
    invoke-virtual {p1}, Lcom/google/wireless/gdata2/data/Entry;->getETag()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter$Operation;->newDelete(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter$Operation;

    move-result-object v0

    goto :goto_1d

    .line 1732
    :cond_27
    if-eqz v1, :cond_2e

    .line 1733
    invoke-static {v1, p1}, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter$Operation;->newUpdate(Ljava/lang/String;Lcom/google/wireless/gdata2/data/Entry;)Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter$Operation;

    move-result-object v0

    goto :goto_1d

    .line 1735
    :cond_2e
    const-string v1, "CalendarSyncAdapter"

    invoke-static {v1, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 1736
    const-string v1, "CalendarSyncAdapter"

    const-string v2, "INSERT operation not supported for Calendar entries"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1d
.end method

.method private getOperationForEventEntry(Lcom/google/wireless/gdata2/data/Entry;Lcom/google/android/syncadapters/EntryAndEntityHandler;Landroid/accounts/Account;Landroid/content/ContentProviderClient;)Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter$Operation;
    .registers 12
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Lcom/google/wireless/gdata2/parser/ParseException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x2

    const/4 v3, 0x0

    .line 1658
    .line 1659
    invoke-virtual {p1}, Lcom/google/wireless/gdata2/data/Entry;->getEditUri()Ljava/lang/String;

    move-result-object v6

    .line 1660
    invoke-virtual {p1}, Lcom/google/wireless/gdata2/data/Entry;->isDeleted()Z

    move-result v0

    if-eqz v0, :cond_48

    .line 1661
    if-nez v6, :cond_1f

    .line 1663
    const-string v0, "CalendarSyncAdapter"

    invoke-static {v0, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 1664
    const-string v0, "CalendarSyncAdapter"

    const-string v1, "DELETE operation cannot be sent to the server with a null editUri"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1717
    :cond_1e
    :goto_1e
    return-object v3

    :cond_1f
    move-object v0, p1

    .line 1668
    check-cast v0, Lcom/google/wireless/gdata2/calendar/data/EventEntry;

    .line 1669
    iget-object v1, p3, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->getOrganizer()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3f

    .line 1674
    new-instance v1, Lcom/google/wireless/gdata2/calendar/data/EventEntry;

    invoke-direct {v1, v0}, Lcom/google/wireless/gdata2/calendar/data/EventEntry;-><init>(Lcom/google/wireless/gdata2/calendar/data/EventEntry;)V

    .line 1675
    invoke-virtual {v0, v4}, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->setStatus(B)V

    .line 1676
    invoke-virtual {v0, v5}, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->setSendEventNotifications(Z)V

    .line 1677
    invoke-static {v6, p1, v1}, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter$Operation;->newUpdate(Ljava/lang/String;Lcom/google/wireless/gdata2/data/Entry;Lcom/google/wireless/gdata2/calendar/data/EventEntry;)Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter$Operation;

    move-result-object v0

    :goto_3d
    move-object v3, v0

    .line 1717
    goto :goto_1e

    .line 1679
    :cond_3f
    invoke-virtual {p1}, Lcom/google/wireless/gdata2/data/Entry;->getETag()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter$Operation;->newDelete(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter$Operation;

    move-result-object v0

    goto :goto_3d

    .line 1681
    :cond_48
    invoke-virtual {p1}, Lcom/google/wireless/gdata2/data/Entry;->getId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_6c

    move-object v0, p1

    .line 1682
    check-cast v0, Lcom/google/wireless/gdata2/calendar/data/EventEntry;

    invoke-virtual {v0}, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->getCalendarUrl()Ljava/lang/String;

    move-result-object v0

    .line 1683
    if-nez v0, :cond_67

    .line 1685
    const-string v0, "CalendarSyncAdapter"

    invoke-static {v0, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 1686
    const-string v0, "CalendarSyncAdapter"

    const-string v1, "INSERT operation cannot be sent to the server with a null feedUrl"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1e

    .line 1690
    :cond_67
    invoke-static {v0, p1}, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter$Operation;->newInsert(Ljava/lang/String;Lcom/google/wireless/gdata2/data/Entry;)Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter$Operation;

    move-result-object v0

    goto :goto_3d

    .line 1692
    :cond_6c
    if-nez v6, :cond_7e

    .line 1694
    const-string v0, "CalendarSyncAdapter"

    invoke-static {v0, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 1695
    const-string v0, "CalendarSyncAdapter"

    const-string v1, "UPDATE operation cannot be sent to the server with a null editUri"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1e

    .line 1699
    :cond_7e
    const-string v0, "_sync_id = ? AND lastSynced = 1"

    .line 1701
    const-string v4, "_sync_id = ? AND lastSynced = 1"

    new-array v5, v5, [Ljava/lang/String;

    const/4 v0, 0x0

    invoke-virtual {p1}, Lcom/google/wireless/gdata2/data/Entry;->getId()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v5, v0

    move-object v0, p2

    move-object v1, p4

    move-object v2, p3

    invoke-interface/range {v0 .. v5}, Lcom/google/android/syncadapters/EntryAndEntityHandler;->newEntityIterator(Landroid/content/ContentProviderClient;Landroid/accounts/Account;Ljava/lang/Long;Ljava/lang/String;[Ljava/lang/String;)Landroid/content/EntityIterator;

    move-result-object v1

    .line 1705
    :try_start_92
    invoke-interface {v1}, Landroid/content/EntityIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_ad

    .line 1706
    invoke-interface {v1}, Landroid/content/EntityIterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Entity;

    .line 1707
    const/4 v2, 0x1

    invoke-interface {p2, v0, p3, p4, v2}, Lcom/google/android/syncadapters/EntryAndEntityHandler;->convertEntityToEntry(Landroid/content/Entity;Landroid/accounts/Account;Landroid/content/ContentProviderClient;Z)Lcom/google/wireless/gdata2/data/Entry;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/gdata2/calendar/data/EventEntry;
    :try_end_a5
    .catchall {:try_start_92 .. :try_end_a5} :catchall_af

    .line 1713
    :goto_a5
    invoke-interface {v1}, Landroid/content/EntityIterator;->close()V

    .line 1715
    invoke-static {v6, p1, v0}, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter$Operation;->newUpdate(Ljava/lang/String;Lcom/google/wireless/gdata2/data/Entry;Lcom/google/wireless/gdata2/calendar/data/EventEntry;)Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter$Operation;

    move-result-object v0

    goto :goto_3d

    :cond_ad
    move-object v0, v3

    .line 1710
    goto :goto_a5

    .line 1713
    :catchall_af
    move-exception v0

    invoke-interface {v1}, Landroid/content/EntityIterator;->close()V

    throw v0
.end method

.method private getOperationFromEntry(Lcom/google/wireless/gdata2/data/Entry;Lcom/google/android/syncadapters/EntryAndEntityHandler;Landroid/accounts/Account;Landroid/content/ContentProviderClient;)Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter$Operation;
    .registers 6
    .parameter "entry"
    .parameter "handler"
    .parameter "account"
    .parameter "provider"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/wireless/gdata2/parser/ParseException;,
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1646
    instance-of v0, p1, Lcom/google/wireless/gdata2/calendar/data/EventEntry;

    if-eqz v0, :cond_9

    .line 1647
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter;->getOperationForEventEntry(Lcom/google/wireless/gdata2/data/Entry;Lcom/google/android/syncadapters/EntryAndEntityHandler;Landroid/accounts/Account;Landroid/content/ContentProviderClient;)Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter$Operation;

    move-result-object v0

    .line 1652
    :goto_8
    return-object v0

    .line 1649
    :cond_9
    instance-of v0, p1, Lcom/google/wireless/gdata2/calendar/data/CalendarEntry;

    if-eqz v0, :cond_12

    .line 1650
    invoke-direct {p0, p1}, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter;->getOperationForCalendarEntry(Lcom/google/wireless/gdata2/data/Entry;)Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter$Operation;

    move-result-object v0

    goto :goto_8

    .line 1652
    :cond_12
    const/4 v0, 0x0

    goto :goto_8
.end method

.method private static getOrCreateGDataSyncState(Landroid/accounts/Account;Landroid/content/ContentProviderClient;Ljava/lang/String;)Lcom/google/android/syncadapters/calendar/GDataSyncStateCalendar;
    .registers 7
    .parameter "account"
    .parameter "provider"
    .parameter "feed"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 486
    const/4 v2, 0x0

    .line 487
    .local v2, syncStateChanged:Z
    invoke-static {p1, p0}, Lcom/google/android/syncadapters/calendar/GDataSyncStateCalendar;->getOrCreate(Landroid/content/ContentProviderClient;Landroid/accounts/Account;)Lcom/google/android/syncadapters/calendar/GDataSyncStateCalendar;

    move-result-object v1

    .line 491
    .local v1, syncState:Lcom/google/android/syncadapters/calendar/GDataSyncStateCalendar;
    iget-object v3, v1, Lcom/google/android/syncadapters/calendar/GDataSyncStateCalendar;->feedData:Landroid/os/Bundle;

    invoke-virtual {v3, p2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_18

    .line 492
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 493
    .local v0, feedSyncState:Landroid/os/Bundle;
    iget-object v3, v1, Lcom/google/android/syncadapters/calendar/GDataSyncStateCalendar;->feedData:Landroid/os/Bundle;

    invoke-virtual {v3, p2, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 494
    const/4 v2, 0x1

    .line 497
    .end local v0           #feedSyncState:Landroid/os/Bundle;
    :cond_18
    if-eqz v2, :cond_1d

    .line 498
    invoke-virtual {v1, p1}, Lcom/google/android/syncadapters/calendar/GDataSyncStateCalendar;->updateInProvider(Landroid/content/ContentProviderClient;)V

    .line 500
    :cond_1d
    return-object v1
.end method

.method private static getSelfUrlFromEventsUrl(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter "url"

    .prologue
    .line 2787
    invoke-static {p0}, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter;->getAllCalendarsUrlFromEventsUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter;->rewriteUrlFromHttpToHttps(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getServerDiffsForFeed(Landroid/accounts/Account;Ljava/lang/String;Landroid/content/ContentProviderClient;Landroid/content/SyncResult;Ljava/lang/String;Z)V
    .registers 23
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Landroid/accounts/OperationCanceledException;,
            Lcom/google/wireless/gdata2/client/AuthenticationException;
        }
    .end annotation

    .prologue
    .line 1923
    move-object/from16 v0, p1

    move-object/from16 v1, p3

    move-object/from16 v2, p5

    invoke-static {v0, v1, v2}, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter;->getOrCreateGDataSyncState(Landroid/accounts/Account;Landroid/content/ContentProviderClient;Ljava/lang/String;)Lcom/google/android/syncadapters/calendar/GDataSyncStateCalendar;

    move-result-object v11

    .line 1926
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Landroid/provider/CalendarContract$Calendars;->CONTENT_URI:Landroid/net/Uri;

    sget-object v5, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter;->CALENDARS_PROJECTION:[Ljava/lang/String;

    const-string v6, "account_name=? AND account_type=? AND cal_sync1=?"

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    move-object/from16 v0, p1

    iget-object v9, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    aput-object v9, v7, v8

    const/4 v8, 0x1

    move-object/from16 v0, p1

    iget-object v9, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    aput-object v9, v7, v8

    const/4 v8, 0x2

    aput-object p5, v7, v8

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13

    .line 1932
    new-instance v14, Landroid/content/ContentValues;

    invoke-direct {v14}, Landroid/content/ContentValues;-><init>()V

    .line 1935
    :try_start_36
    invoke-interface {v13}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_39
    .catchall {:try_start_36 .. :try_end_39} :catchall_ee

    move-result v3

    if-nez v3, :cond_40

    .line 1981
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 1983
    :goto_3f
    return-void

    .line 1939
    :cond_40
    :try_start_40
    new-instance v10, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter$SyncInfo;

    invoke-direct {v10}, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter$SyncInfo;-><init>()V

    .line 1940
    sget v3, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter;->CALENDARS_PROJECTION_ID_INDEX:I

    invoke-interface {v13, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    iput-wide v3, v10, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter$SyncInfo;->calendarId:J

    .line 1941
    sget v3, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter;->CALENDARS_PROJECTION_SYNC_EVENTS_INDEX:I

    invoke-interface {v13, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_75

    const/4 v3, 0x1

    .line 1942
    :goto_57
    sget v4, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter;->CALENDARS_PROJECTION_TIMEZONE_INDEX:I

    invoke-interface {v13, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    iput-object v15, v10, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter$SyncInfo;->calendarTimezone:Ljava/lang/String;

    .line 1945
    if-nez v3, :cond_77

    .line 1948
    const-string v3, "CalendarSyncAdapter"

    const/4 v4, 0x2

    invoke-static {v3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_71

    .line 1949
    const-string v3, "CalendarSyncAdapter"

    const-string v4, "Ignoring sync request for non-syncable feed."

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_71
    .catchall {:try_start_40 .. :try_end_71} :catchall_ee

    .line 1981
    :cond_71
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    goto :goto_3f

    .line 1941
    :cond_75
    const/4 v3, 0x0

    goto :goto_57

    .line 1954
    :cond_77
    :try_start_77
    sget-object v9, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter;->sEventHandler:Lcom/google/android/syncadapters/calendar/EventHandler;

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move-object v8, v11

    move-object/from16 v11, p5

    move/from16 v12, p6

    invoke-direct/range {v3 .. v12}, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter;->getServerDiffsImpl(Landroid/accounts/Account;Ljava/lang/String;Landroid/content/ContentProviderClient;Landroid/content/SyncResult;Lcom/google/android/syncadapters/calendar/GDataSyncStateCalendar;Lcom/google/android/syncadapters/EntryAndEntityHandler;Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter$SyncInfo;Ljava/lang/String;Z)V

    .line 1957
    invoke-virtual/range {p4 .. p4}, Landroid/content/SyncResult;->hasError()Z
    :try_end_8e
    .catchall {:try_start_77 .. :try_end_8e} :catchall_ee

    move-result v3

    if-eqz v3, :cond_95

    .line 1981
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    goto :goto_3f

    .line 1962
    :cond_95
    :try_start_95
    iget-object v3, v10, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter$SyncInfo;->calendarTimezone:Ljava/lang/String;

    invoke-static {v3, v15}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_e9

    .line 1964
    const-string v3, "CalendarSyncAdapter"

    const/4 v4, 0x2

    invoke-static {v3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_ca

    .line 1965
    const-string v3, "CalendarSyncAdapter"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Timezone changed "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " => "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v10, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter$SyncInfo;->calendarTimezone:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1968
    :cond_ca
    invoke-virtual {v14}, Landroid/content/ContentValues;->clear()V

    .line 1969
    const-string v3, "calendar_timezone"

    iget-object v4, v10, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter$SyncInfo;->calendarTimezone:Ljava/lang/String;

    invoke-virtual {v14, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1970
    sget-object v3, Landroid/provider/CalendarContract$Calendars;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p1

    invoke-static {v3, v0}, Lcom/google/android/syncadapters/SyncAdapterUtils;->addQueryParameters(Landroid/net/Uri;Landroid/accounts/Account;)Landroid/net/Uri;

    move-result-object v3

    iget-wide v4, v10, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter$SyncInfo;->calendarId:J

    invoke-static {v3, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v3, v14, v4, v5}, Landroid/content/ContentProviderClient;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_e9
    .catchall {:try_start_95 .. :try_end_e9} :catchall_ee

    .line 1981
    :cond_e9
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    goto/16 :goto_3f

    :catchall_ee
    move-exception v3

    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    throw v3
.end method

.method private getServerDiffsImpl(Landroid/accounts/Account;Ljava/lang/String;Landroid/content/ContentProviderClient;Landroid/content/SyncResult;Lcom/google/android/syncadapters/calendar/GDataSyncStateCalendar;Lcom/google/android/syncadapters/EntryAndEntityHandler;Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter$SyncInfo;Ljava/lang/String;Z)V
    .registers 46
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/accounts/OperationCanceledException;,
            Lcom/google/wireless/gdata2/client/AuthenticationException;
        }
    .end annotation

    .prologue
    .line 2076
    invoke-direct/range {p0 .. p0}, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter;->isCanceled()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 2325
    :cond_6
    :goto_6
    return-void

    .line 2079
    :cond_7
    const-string v5, "CalendarSyncAdapter"

    const/4 v6, 0x3

    invoke-static {v5, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_2a

    .line 2080
    const-string v5, "CalendarSyncAdapter"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "starting getServerDiffs for account "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p1

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2083
    :cond_2a
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "google_calendar_sync_entry_fetch_queue_size"

    const/16 v7, 0x32

    invoke-static {v5, v6, v7}, Lcom/google/android/gsf/Gservices;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    .line 2087
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "google_calendar_sync_entity_fetch_queue_size"

    const/16 v8, 0x32

    invoke-static {v6, v7, v8}, Lcom/google/android/gsf/Gservices;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    .line 2093
    new-instance v8, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v8, v5}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    .line 2096
    new-instance v19, Ljava/util/concurrent/LinkedBlockingQueue;

    move-object/from16 v0, v19

    invoke-direct {v0, v6}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    .line 2099
    const/4 v15, 0x0

    .line 2100
    const/16 v24, 0x0

    .line 2102
    const/16 v23, 0x0

    .line 2103
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v33

    .line 2105
    move-object/from16 v0, p5

    iget-object v5, v0, Lcom/google/android/syncadapters/calendar/GDataSyncStateCalendar;->feedData:Landroid/os/Bundle;

    move-object/from16 v0, p8

    invoke-virtual {v5, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v12

    .line 2106
    const-string v5, "CalendarSyncAdapter"

    const/4 v6, 0x3

    invoke-static {v5, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_96

    .line 2107
    const-string v5, "CalendarSyncAdapter"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "FeedSyncState is: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " for Url: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p8

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2111
    :cond_96
    invoke-direct/range {p0 .. p0}, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter;->getSyncWindowEnd()J

    move-result-wide v5

    .line 2113
    :try_start_9a
    move/from16 v0, p9

    invoke-static {v0, v5, v6, v12}, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter;->selectServerSyncMode(ZJLandroid/os/Bundle;)I

    move-result v7

    .line 2116
    packed-switch v7, :pswitch_data_974

    .line 2153
    :cond_a3
    :goto_a3
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "google_calendar_sync_num_events_per_batch"

    const/16 v7, 0xc8

    invoke-static {v5, v6, v7}, Lcom/google/android/gsf/Gservices;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v13

    .line 2157
    const-string v5, "window_end"

    invoke-virtual {v12, v5}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v5

    move-object/from16 v0, p7

    iput-wide v5, v0, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter$SyncInfo;->slidingWindowEnd:J

    .line 2159
    new-instance v5, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter$CalendarGDataFeedFetcher;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter;->mCalendarClient:Lcom/google/wireless/gdata2/calendar/client/CalendarClient;

    invoke-interface/range {p6 .. p6}, Lcom/google/android/syncadapters/EntryAndEntityHandler;->getEntryClass()Ljava/lang/Class;

    move-result-object v7

    sget-object v9, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter;->sEntryEndMarker:Landroid/util/Pair;

    invoke-static {}, Landroid/net/TrafficStats;->getThreadStatsTag()I

    move-result v14

    move-object/from16 v10, p8

    move-object/from16 v11, p2

    invoke-direct/range {v5 .. v14}, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter$CalendarGDataFeedFetcher;-><init>(Lcom/google/wireless/gdata2/client/GDataServiceClient;Ljava/lang/Class;Ljava/util/concurrent/BlockingQueue;Landroid/util/Pair;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;II)V
    :try_end_d4
    .catchall {:try_start_9a .. :try_end_d4} :catchall_905
    .catch Ljava/io/IOException; {:try_start_9a .. :try_end_d4} :catch_261
    .catch Landroid/os/RemoteException; {:try_start_9a .. :try_end_d4} :catch_303
    .catch Lcom/google/wireless/gdata2/parser/ParseException; {:try_start_9a .. :try_end_d4} :catch_3a4
    .catch Ljava/lang/InterruptedException; {:try_start_9a .. :try_end_d4} :catch_45e
    .catch Lcom/google/wireless/gdata2/client/ResourceUnavailableException; {:try_start_9a .. :try_end_d4} :catch_503

    .line 2162
    :try_start_d4
    new-instance v6, Ljava/lang/Thread;

    const-string v7, "GDataFeedFetcher"

    invoke-direct {v6, v5, v7}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 2163
    invoke-virtual {v6}, Ljava/lang/Thread;->start()V

    .line 2165
    new-instance v13, Lcom/google/android/syncadapters/EntityReader;

    const-string v14, "CalendarSyncAdapter"

    sget-object v18, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter;->sEntryEndMarker:Landroid/util/Pair;

    sget-object v20, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter;->sEntityEndMarker:Lcom/google/android/syncadapters/EntityReader$EntryEntityItem;

    const-string v22, "_sync_id"

    move-object/from16 v15, p3

    move-object/from16 v16, p1

    move-object/from16 v17, v8

    move-object/from16 v21, p6

    invoke-direct/range {v13 .. v22}, Lcom/google/android/syncadapters/EntityReader;-><init>(Ljava/lang/String;Landroid/content/ContentProviderClient;Landroid/accounts/Account;Ljava/util/concurrent/BlockingQueue;Landroid/util/Pair;Ljava/util/concurrent/BlockingQueue;Lcom/google/android/syncadapters/EntityReader$EntryEntityItem;Lcom/google/android/syncadapters/EntryAndEntityHandler;Ljava/lang/String;)V
    :try_end_f3
    .catchall {:try_start_d4 .. :try_end_f3} :catchall_90c
    .catch Ljava/io/IOException; {:try_start_d4 .. :try_end_f3} :catch_964
    .catch Landroid/os/RemoteException; {:try_start_d4 .. :try_end_f3} :catch_954
    .catch Lcom/google/wireless/gdata2/parser/ParseException; {:try_start_d4 .. :try_end_f3} :catch_944
    .catch Ljava/lang/InterruptedException; {:try_start_d4 .. :try_end_f3} :catch_934
    .catch Lcom/google/wireless/gdata2/client/ResourceUnavailableException; {:try_start_d4 .. :try_end_f3} :catch_924

    .line 2168
    :try_start_f3
    new-instance v6, Ljava/lang/Thread;

    const-string v7, "EntityReader"

    invoke-direct {v6, v13, v7}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 2169
    invoke-virtual {v6}, Ljava/lang/Thread;->start()V

    .line 2171
    const-string v6, "CalendarSyncAdapter"

    const/4 v7, 0x2

    invoke-static {v6, v7}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_10d

    .line 2172
    const-string v6, "CalendarSyncAdapter"

    const-string v7, "starting processing of fetched entries"

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2175
    :cond_10d
    invoke-virtual {v5}, Lcom/google/android/syncadapters/GDataFeedFetcher;->waitForEnvelope()V

    .line 2176
    const-string v6, "CalendarSyncAdapter"

    const/4 v7, 0x2

    invoke-static {v6, v7}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_120

    .line 2177
    const-string v6, "CalendarSyncAdapter"

    const-string v7, "Feed envelope parsed"

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2180
    :cond_120
    invoke-virtual {v5}, Lcom/google/android/syncadapters/GDataFeedFetcher;->getFeed()Lcom/google/wireless/gdata2/data/Feed;

    move-result-object v6

    check-cast v6, Lcom/google/wireless/gdata2/calendar/data/EventsFeed;

    .line 2181
    if-eqz v6, :cond_153

    .line 2184
    invoke-virtual {v6}, Lcom/google/wireless/gdata2/calendar/data/EventsFeed;->getTimezone()Ljava/lang/String;

    move-result-object v6

    .line 2185
    if-eqz v6, :cond_153

    .line 2186
    const-string v7, "CalendarSyncAdapter"

    const/4 v8, 0x2

    invoke-static {v7, v8}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v7

    if-eqz v7, :cond_14f

    .line 2187
    const-string v7, "CalendarSyncAdapter"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Setting timezone to "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2189
    :cond_14f
    move-object/from16 v0, p7

    iput-object v6, v0, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter$SyncInfo;->calendarTimezone:Ljava/lang/String;

    .line 2193
    :cond_153
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v21

    .line 2194
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "google_calendar_sync_num_applications_per_batch"

    const-wide/16 v8, 0x14

    invoke-static {v6, v7, v8, v9}, Lcom/google/android/gsf/Gservices;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J
    :try_end_166
    .catchall {:try_start_f3 .. :try_end_166} :catchall_915
    .catch Ljava/io/IOException; {:try_start_f3 .. :try_end_166} :catch_96d
    .catch Landroid/os/RemoteException; {:try_start_f3 .. :try_end_166} :catch_95d
    .catch Lcom/google/wireless/gdata2/parser/ParseException; {:try_start_f3 .. :try_end_166} :catch_94d
    .catch Ljava/lang/InterruptedException; {:try_start_f3 .. :try_end_166} :catch_93d
    .catch Lcom/google/wireless/gdata2/client/ResourceUnavailableException; {:try_start_f3 .. :try_end_166} :catch_92d

    move-result-wide v8

    move/from16 v7, v23

    .line 2199
    :cond_169
    :goto_169
    :try_start_169
    invoke-direct/range {p0 .. p0}, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter;->isCanceled()Z

    move-result v6

    if-eqz v6, :cond_5ad

    .line 2200
    const-string v6, "CalendarSyncAdapter"

    const/4 v8, 0x2

    invoke-static {v6, v8}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_198

    .line 2201
    const-string v6, "CalendarSyncAdapter"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getServerDiffs: noticed a cancel during feed "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", bailing out"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_198
    .catchall {:try_start_169 .. :try_end_198} :catchall_792
    .catch Ljava/io/IOException; {:try_start_169 .. :try_end_198} :catch_5f0
    .catch Landroid/os/RemoteException; {:try_start_169 .. :try_end_198} :catch_717
    .catch Lcom/google/wireless/gdata2/parser/ParseException; {:try_start_169 .. :try_end_198} :catch_726
    .catch Ljava/lang/InterruptedException; {:try_start_169 .. :try_end_198} :catch_735
    .catch Lcom/google/wireless/gdata2/client/ResourceUnavailableException; {:try_start_169 .. :try_end_198} :catch_75b

    .line 2303
    :cond_198
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    .line 2304
    const-string v6, "FAILURE"

    .line 2305
    const-string v10, "CalendarSyncAdapter"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v11, ": processed "

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " records in "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sub-long v7, v8, v33

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " ms from feed "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p8

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", updated time is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "feed_updated_time"

    invoke-virtual {v12, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v10, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2311
    if-eqz v5, :cond_217

    .line 2312
    move-object/from16 v0, p4

    iget-object v6, v0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v7, v6, Landroid/content/SyncStats;->numParseExceptions:J

    invoke-virtual {v5}, Lcom/google/android/syncadapters/GDataFeedFetcher;->getNumUnparsableEntries()I

    move-result v9

    int-to-long v9, v9

    add-long/2addr v7, v9

    iput-wide v7, v6, Landroid/content/SyncStats;->numParseExceptions:J

    .line 2313
    invoke-virtual {v5}, Lcom/google/android/syncadapters/GDataFeedFetcher;->isAuthenticationFailed()Z

    move-result v6

    if-eqz v6, :cond_203

    .line 2314
    move-object/from16 v0, p4

    iget-object v6, v0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v7, v6, Landroid/content/SyncStats;->numAuthExceptions:J

    const-wide/16 v9, 0x1

    add-long/2addr v7, v9

    iput-wide v7, v6, Landroid/content/SyncStats;->numAuthExceptions:J

    .line 2316
    :cond_203
    invoke-virtual {v5}, Lcom/google/android/syncadapters/GDataFeedFetcher;->isConnectionFailed()Z

    move-result v6

    if-eqz v6, :cond_214

    .line 2317
    move-object/from16 v0, p4

    iget-object v6, v0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v7, v6, Landroid/content/SyncStats;->numIoExceptions:J

    const-wide/16 v9, 0x1

    add-long/2addr v7, v9

    iput-wide v7, v6, Landroid/content/SyncStats;->numIoExceptions:J

    .line 2319
    :cond_214
    invoke-virtual {v5}, Lcom/google/android/syncadapters/GDataFeedFetcher;->close()V

    .line 2321
    :cond_217
    if-eqz v13, :cond_6

    .line 2322
    :goto_219
    invoke-virtual {v13}, Lcom/google/android/syncadapters/EntityReader;->close()V

    goto/16 :goto_6

    .line 2119
    :pswitch_21e
    :try_start_21e
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    move-object/from16 v3, p6

    move-object/from16 v4, p7

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter;->updateProviderForInitialSync(Landroid/accounts/Account;Landroid/content/ContentProviderClient;Lcom/google/android/syncadapters/EntryAndEntityHandler;Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter$SyncInfo;)V

    .line 2121
    const-string v7, "CalendarSyncAdapter"

    const/4 v9, 0x3

    invoke-static {v7, v9}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v7

    if-eqz v7, :cond_25a

    .line 2122
    const-string v7, "CalendarSyncAdapter"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Performing initial sync on calendarId: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, p7

    iget-wide v10, v0, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter$SyncInfo;->calendarId:J

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ": window end = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2125
    :cond_25a
    const-string v7, "window_end"

    invoke-virtual {v12, v7, v5, v6}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V
    :try_end_25f
    .catchall {:try_start_21e .. :try_end_25f} :catchall_905
    .catch Ljava/io/IOException; {:try_start_21e .. :try_end_25f} :catch_261
    .catch Landroid/os/RemoteException; {:try_start_21e .. :try_end_25f} :catch_303
    .catch Lcom/google/wireless/gdata2/parser/ParseException; {:try_start_21e .. :try_end_25f} :catch_3a4
    .catch Ljava/lang/InterruptedException; {:try_start_21e .. :try_end_25f} :catch_45e
    .catch Lcom/google/wireless/gdata2/client/ResourceUnavailableException; {:try_start_21e .. :try_end_25f} :catch_503

    goto/16 :goto_a3

    .line 2284
    :catch_261
    move-exception v5

    move/from16 v6, v23

    move-object/from16 v13, v24

    move-object v7, v15

    .line 2285
    :goto_267
    :try_start_267
    const-string v8, "CalendarSyncAdapter"

    const-string v9, "getServerDiffs failed"

    invoke-static {v8, v9, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2286
    move-object/from16 v0, p4

    iget-object v5, v0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v8, v5, Landroid/content/SyncStats;->numIoExceptions:J

    const-wide/16 v10, 0x1

    add-long/2addr v8, v10

    iput-wide v8, v5, Landroid/content/SyncStats;->numIoExceptions:J
    :try_end_279
    .catchall {:try_start_267 .. :try_end_279} :catchall_91c

    .line 2303
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    .line 2304
    const-string v5, "FAILURE"

    .line 2305
    const-string v10, "CalendarSyncAdapter"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v11, ": processed "

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " records in "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sub-long v8, v8, v33

    invoke-virtual {v5, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " ms from feed "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p8

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", updated time is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "feed_updated_time"

    invoke-virtual {v12, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v10, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2311
    if-eqz v7, :cond_2f8

    .line 2312
    move-object/from16 v0, p4

    iget-object v5, v0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v8, v5, Landroid/content/SyncStats;->numParseExceptions:J

    invoke-virtual {v7}, Lcom/google/android/syncadapters/GDataFeedFetcher;->getNumUnparsableEntries()I

    move-result v6

    int-to-long v10, v6

    add-long/2addr v8, v10

    iput-wide v8, v5, Landroid/content/SyncStats;->numParseExceptions:J

    .line 2313
    invoke-virtual {v7}, Lcom/google/android/syncadapters/GDataFeedFetcher;->isAuthenticationFailed()Z

    move-result v5

    if-eqz v5, :cond_2e4

    .line 2314
    move-object/from16 v0, p4

    iget-object v5, v0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v8, v5, Landroid/content/SyncStats;->numAuthExceptions:J

    const-wide/16 v10, 0x1

    add-long/2addr v8, v10

    iput-wide v8, v5, Landroid/content/SyncStats;->numAuthExceptions:J

    .line 2316
    :cond_2e4
    invoke-virtual {v7}, Lcom/google/android/syncadapters/GDataFeedFetcher;->isConnectionFailed()Z

    move-result v5

    if-eqz v5, :cond_2f5

    .line 2317
    move-object/from16 v0, p4

    iget-object v5, v0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v8, v5, Landroid/content/SyncStats;->numIoExceptions:J

    const-wide/16 v10, 0x1

    add-long/2addr v8, v10

    iput-wide v8, v5, Landroid/content/SyncStats;->numIoExceptions:J

    .line 2319
    :cond_2f5
    invoke-virtual {v7}, Lcom/google/android/syncadapters/GDataFeedFetcher;->close()V

    .line 2321
    :cond_2f8
    if-eqz v13, :cond_6

    goto/16 :goto_219

    .line 2129
    :pswitch_2fc
    :try_start_2fc
    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter;->upgradeToSlidingWindows(Landroid/os/Bundle;)V
    :try_end_301
    .catchall {:try_start_2fc .. :try_end_301} :catchall_905
    .catch Ljava/io/IOException; {:try_start_2fc .. :try_end_301} :catch_261
    .catch Landroid/os/RemoteException; {:try_start_2fc .. :try_end_301} :catch_303
    .catch Lcom/google/wireless/gdata2/parser/ParseException; {:try_start_2fc .. :try_end_301} :catch_3a4
    .catch Ljava/lang/InterruptedException; {:try_start_2fc .. :try_end_301} :catch_45e
    .catch Lcom/google/wireless/gdata2/client/ResourceUnavailableException; {:try_start_2fc .. :try_end_301} :catch_503

    goto/16 :goto_a3

    .line 2287
    :catch_303
    move-exception v5

    move/from16 v7, v23

    move-object/from16 v13, v24

    .line 2288
    :goto_308
    :try_start_308
    const-string v6, "CalendarSyncAdapter"

    const-string v8, "getServerDiffs failed"

    invoke-static {v6, v8, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2289
    move-object/from16 v0, p4

    iget-object v5, v0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v8, v5, Landroid/content/SyncStats;->numIoExceptions:J

    const-wide/16 v10, 0x1

    add-long/2addr v8, v10

    iput-wide v8, v5, Landroid/content/SyncStats;->numIoExceptions:J
    :try_end_31a
    .catchall {:try_start_308 .. :try_end_31a} :catchall_921

    .line 2303
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    .line 2304
    const-string v5, "FAILURE"

    .line 2305
    const-string v6, "CalendarSyncAdapter"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v10, ": processed "

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " records in "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sub-long v7, v8, v33

    invoke-virtual {v5, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " ms from feed "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p8

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, ", updated time is "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "feed_updated_time"

    invoke-virtual {v12, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2311
    if-eqz v15, :cond_399

    .line 2312
    move-object/from16 v0, p4

    iget-object v5, v0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v6, v5, Landroid/content/SyncStats;->numParseExceptions:J

    invoke-virtual {v15}, Lcom/google/android/syncadapters/GDataFeedFetcher;->getNumUnparsableEntries()I

    move-result v8

    int-to-long v8, v8

    add-long/2addr v6, v8

    iput-wide v6, v5, Landroid/content/SyncStats;->numParseExceptions:J

    .line 2313
    invoke-virtual {v15}, Lcom/google/android/syncadapters/GDataFeedFetcher;->isAuthenticationFailed()Z

    move-result v5

    if-eqz v5, :cond_385

    .line 2314
    move-object/from16 v0, p4

    iget-object v5, v0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v6, v5, Landroid/content/SyncStats;->numAuthExceptions:J

    const-wide/16 v8, 0x1

    add-long/2addr v6, v8

    iput-wide v6, v5, Landroid/content/SyncStats;->numAuthExceptions:J

    .line 2316
    :cond_385
    invoke-virtual {v15}, Lcom/google/android/syncadapters/GDataFeedFetcher;->isConnectionFailed()Z

    move-result v5

    if-eqz v5, :cond_396

    .line 2317
    move-object/from16 v0, p4

    iget-object v5, v0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v6, v5, Landroid/content/SyncStats;->numIoExceptions:J

    const-wide/16 v8, 0x1

    add-long/2addr v6, v8

    iput-wide v6, v5, Landroid/content/SyncStats;->numIoExceptions:J

    .line 2319
    :cond_396
    invoke-virtual {v15}, Lcom/google/android/syncadapters/GDataFeedFetcher;->close()V

    .line 2321
    :cond_399
    if-eqz v13, :cond_6

    goto/16 :goto_219

    .line 2132
    :pswitch_39d
    :try_start_39d
    const-string v7, "new_window_end"

    invoke-virtual {v12, v7, v5, v6}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V
    :try_end_3a2
    .catchall {:try_start_39d .. :try_end_3a2} :catchall_905
    .catch Ljava/io/IOException; {:try_start_39d .. :try_end_3a2} :catch_261
    .catch Landroid/os/RemoteException; {:try_start_39d .. :try_end_3a2} :catch_303
    .catch Lcom/google/wireless/gdata2/parser/ParseException; {:try_start_39d .. :try_end_3a2} :catch_3a4
    .catch Ljava/lang/InterruptedException; {:try_start_39d .. :try_end_3a2} :catch_45e
    .catch Lcom/google/wireless/gdata2/client/ResourceUnavailableException; {:try_start_39d .. :try_end_3a2} :catch_503

    goto/16 :goto_a3

    .line 2290
    :catch_3a4
    move-exception v5

    move/from16 v7, v23

    move-object/from16 v13, v24

    .line 2291
    :goto_3a9
    :try_start_3a9
    const-string v6, "CalendarSyncAdapter"

    const-string v8, "getServerDiffs failed"

    invoke-static {v6, v8, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2292
    move-object/from16 v0, p4

    iget-object v5, v0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v8, v5, Landroid/content/SyncStats;->numParseExceptions:J

    const-wide/16 v10, 0x1

    add-long/2addr v8, v10

    iput-wide v8, v5, Landroid/content/SyncStats;->numParseExceptions:J
    :try_end_3bb
    .catchall {:try_start_3a9 .. :try_end_3bb} :catchall_921

    .line 2303
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    .line 2304
    const-string v5, "FAILURE"

    .line 2305
    const-string v6, "CalendarSyncAdapter"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v10, ": processed "

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " records in "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sub-long v7, v8, v33

    invoke-virtual {v5, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " ms from feed "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p8

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, ", updated time is "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "feed_updated_time"

    invoke-virtual {v12, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2311
    if-eqz v15, :cond_43a

    .line 2312
    move-object/from16 v0, p4

    iget-object v5, v0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v6, v5, Landroid/content/SyncStats;->numParseExceptions:J

    invoke-virtual {v15}, Lcom/google/android/syncadapters/GDataFeedFetcher;->getNumUnparsableEntries()I

    move-result v8

    int-to-long v8, v8

    add-long/2addr v6, v8

    iput-wide v6, v5, Landroid/content/SyncStats;->numParseExceptions:J

    .line 2313
    invoke-virtual {v15}, Lcom/google/android/syncadapters/GDataFeedFetcher;->isAuthenticationFailed()Z

    move-result v5

    if-eqz v5, :cond_426

    .line 2314
    move-object/from16 v0, p4

    iget-object v5, v0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v6, v5, Landroid/content/SyncStats;->numAuthExceptions:J

    const-wide/16 v8, 0x1

    add-long/2addr v6, v8

    iput-wide v6, v5, Landroid/content/SyncStats;->numAuthExceptions:J

    .line 2316
    :cond_426
    invoke-virtual {v15}, Lcom/google/android/syncadapters/GDataFeedFetcher;->isConnectionFailed()Z

    move-result v5

    if-eqz v5, :cond_437

    .line 2317
    move-object/from16 v0, p4

    iget-object v5, v0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v6, v5, Landroid/content/SyncStats;->numIoExceptions:J

    const-wide/16 v8, 0x1

    add-long/2addr v6, v8

    iput-wide v6, v5, Landroid/content/SyncStats;->numIoExceptions:J

    .line 2319
    :cond_437
    invoke-virtual {v15}, Lcom/google/android/syncadapters/GDataFeedFetcher;->close()V

    .line 2321
    :cond_43a
    if-eqz v13, :cond_6

    goto/16 :goto_219

    .line 2137
    :pswitch_43e
    :try_start_43e
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 2138
    const-string v6, "moveWindow"

    const/4 v7, 0x1

    invoke-virtual {v5, v6, v7}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2139
    const-string v6, "feed"

    move-object/from16 v0, p8

    invoke-virtual {v5, v6, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2142
    const-string v6, "force"

    const/4 v7, 0x1

    invoke-virtual {v5, v6, v7}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2143
    const/4 v6, 0x0

    const-string v7, "com.android.calendar"

    invoke-static {v6, v7, v5}, Landroid/content/ContentResolver;->requestSync(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_45c
    .catchall {:try_start_43e .. :try_end_45c} :catchall_905
    .catch Ljava/io/IOException; {:try_start_43e .. :try_end_45c} :catch_261
    .catch Landroid/os/RemoteException; {:try_start_43e .. :try_end_45c} :catch_303
    .catch Lcom/google/wireless/gdata2/parser/ParseException; {:try_start_43e .. :try_end_45c} :catch_3a4
    .catch Ljava/lang/InterruptedException; {:try_start_43e .. :try_end_45c} :catch_45e
    .catch Lcom/google/wireless/gdata2/client/ResourceUnavailableException; {:try_start_43e .. :try_end_45c} :catch_503

    goto/16 :goto_a3

    .line 2293
    :catch_45e
    move-exception v5

    move/from16 v7, v23

    move-object/from16 v13, v24

    .line 2294
    :goto_463
    :try_start_463
    const-string v6, "CalendarSyncAdapter"

    const-string v8, "getServerDiffs interrupted"

    invoke-static {v6, v8, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2295
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Thread;->interrupt()V
    :try_end_471
    .catchall {:try_start_463 .. :try_end_471} :catchall_921

    .line 2303
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    .line 2304
    const-string v5, "FAILURE"

    .line 2305
    const-string v6, "CalendarSyncAdapter"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v10, ": processed "

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " records in "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sub-long v7, v8, v33

    invoke-virtual {v5, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " ms from feed "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p8

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, ", updated time is "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "feed_updated_time"

    invoke-virtual {v12, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2311
    if-eqz v15, :cond_4f0

    .line 2312
    move-object/from16 v0, p4

    iget-object v5, v0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v6, v5, Landroid/content/SyncStats;->numParseExceptions:J

    invoke-virtual {v15}, Lcom/google/android/syncadapters/GDataFeedFetcher;->getNumUnparsableEntries()I

    move-result v8

    int-to-long v8, v8

    add-long/2addr v6, v8

    iput-wide v6, v5, Landroid/content/SyncStats;->numParseExceptions:J

    .line 2313
    invoke-virtual {v15}, Lcom/google/android/syncadapters/GDataFeedFetcher;->isAuthenticationFailed()Z

    move-result v5

    if-eqz v5, :cond_4dc

    .line 2314
    move-object/from16 v0, p4

    iget-object v5, v0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v6, v5, Landroid/content/SyncStats;->numAuthExceptions:J

    const-wide/16 v8, 0x1

    add-long/2addr v6, v8

    iput-wide v6, v5, Landroid/content/SyncStats;->numAuthExceptions:J

    .line 2316
    :cond_4dc
    invoke-virtual {v15}, Lcom/google/android/syncadapters/GDataFeedFetcher;->isConnectionFailed()Z

    move-result v5

    if-eqz v5, :cond_4ed

    .line 2317
    move-object/from16 v0, p4

    iget-object v5, v0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v6, v5, Landroid/content/SyncStats;->numIoExceptions:J

    const-wide/16 v8, 0x1

    add-long/2addr v6, v8

    iput-wide v6, v5, Landroid/content/SyncStats;->numIoExceptions:J

    .line 2319
    :cond_4ed
    invoke-virtual {v15}, Lcom/google/android/syncadapters/GDataFeedFetcher;->close()V

    .line 2321
    :cond_4f0
    if-eqz v13, :cond_6

    goto/16 :goto_219

    .line 2146
    :pswitch_4f4
    const-wide/16 v9, 0x0

    cmp-long v5, v5, v9

    if-gtz v5, :cond_a3

    .line 2148
    :try_start_4fa
    const-string v5, "window_end"

    const-wide/16 v6, 0x0

    invoke-virtual {v12, v5, v6, v7}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V
    :try_end_501
    .catchall {:try_start_4fa .. :try_end_501} :catchall_905
    .catch Ljava/io/IOException; {:try_start_4fa .. :try_end_501} :catch_261
    .catch Landroid/os/RemoteException; {:try_start_4fa .. :try_end_501} :catch_303
    .catch Lcom/google/wireless/gdata2/parser/ParseException; {:try_start_4fa .. :try_end_501} :catch_3a4
    .catch Ljava/lang/InterruptedException; {:try_start_4fa .. :try_end_501} :catch_45e
    .catch Lcom/google/wireless/gdata2/client/ResourceUnavailableException; {:try_start_4fa .. :try_end_501} :catch_503

    goto/16 :goto_a3

    .line 2296
    :catch_503
    move-exception v5

    move/from16 v7, v23

    move-object/from16 v13, v24

    .line 2297
    :goto_508
    :try_start_508
    const-string v6, "CalendarSyncAdapter"

    const-string v8, "getServerDiffs failed"

    invoke-static {v6, v8, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2298
    move-object/from16 v0, p4

    iget-object v6, v0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v8, v6, Landroid/content/SyncStats;->numIoExceptions:J

    const-wide/16 v10, 0x1

    add-long/2addr v8, v10

    iput-wide v8, v6, Landroid/content/SyncStats;->numIoExceptions:J

    .line 2299
    move-object/from16 v0, p4

    iget-wide v8, v0, Landroid/content/SyncResult;->delayUntil:J

    invoke-virtual {v5}, Lcom/google/wireless/gdata2/client/ResourceUnavailableException;->getRetryAfter()J

    move-result-wide v5

    invoke-static {v8, v9, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v5

    move-object/from16 v0, p4

    iput-wide v5, v0, Landroid/content/SyncResult;->delayUntil:J
    :try_end_52a
    .catchall {:try_start_508 .. :try_end_52a} :catchall_921

    .line 2303
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    .line 2304
    const-string v5, "FAILURE"

    .line 2305
    const-string v6, "CalendarSyncAdapter"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v10, ": processed "

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " records in "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sub-long v7, v8, v33

    invoke-virtual {v5, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " ms from feed "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p8

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, ", updated time is "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "feed_updated_time"

    invoke-virtual {v12, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2311
    if-eqz v15, :cond_5a9

    .line 2312
    move-object/from16 v0, p4

    iget-object v5, v0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v6, v5, Landroid/content/SyncStats;->numParseExceptions:J

    invoke-virtual {v15}, Lcom/google/android/syncadapters/GDataFeedFetcher;->getNumUnparsableEntries()I

    move-result v8

    int-to-long v8, v8

    add-long/2addr v6, v8

    iput-wide v6, v5, Landroid/content/SyncStats;->numParseExceptions:J

    .line 2313
    invoke-virtual {v15}, Lcom/google/android/syncadapters/GDataFeedFetcher;->isAuthenticationFailed()Z

    move-result v5

    if-eqz v5, :cond_595

    .line 2314
    move-object/from16 v0, p4

    iget-object v5, v0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v6, v5, Landroid/content/SyncStats;->numAuthExceptions:J

    const-wide/16 v8, 0x1

    add-long/2addr v6, v8

    iput-wide v6, v5, Landroid/content/SyncStats;->numAuthExceptions:J

    .line 2316
    :cond_595
    invoke-virtual {v15}, Lcom/google/android/syncadapters/GDataFeedFetcher;->isConnectionFailed()Z

    move-result v5

    if-eqz v5, :cond_5a6

    .line 2317
    move-object/from16 v0, p4

    iget-object v5, v0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v6, v5, Landroid/content/SyncStats;->numIoExceptions:J

    const-wide/16 v8, 0x1

    add-long/2addr v6, v8

    iput-wide v6, v5, Landroid/content/SyncStats;->numIoExceptions:J

    .line 2319
    :cond_5a6
    invoke-virtual {v15}, Lcom/google/android/syncadapters/GDataFeedFetcher;->close()V

    .line 2321
    :cond_5a9
    if-eqz v13, :cond_6

    goto/16 :goto_219

    .line 2209
    :cond_5ad
    :try_start_5ad
    invoke-interface/range {v19 .. v19}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/syncadapters/EntityReader$EntryEntityItem;

    .line 2210
    sget-object v10, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter;->sEntityEndMarker:Lcom/google/android/syncadapters/EntityReader$EntryEntityItem;

    if-ne v6, v10, :cond_5f9

    .line 2212
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, p3

    move-object/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter;->applyOperations(Ljava/util/ArrayList;Landroid/content/ContentProviderClient;Landroid/accounts/Account;)V

    .line 2259
    invoke-virtual {v5}, Lcom/google/android/syncadapters/GDataFeedFetcher;->isPartialSyncUnavailable()Z

    move-result v6

    if-eqz v6, :cond_73a

    .line 2260
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p5

    move-object/from16 v3, p6

    move-object/from16 v4, p8

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter;->resetSyncStateForFeed(Landroid/content/ContentProviderClient;Lcom/google/android/syncadapters/calendar/GDataSyncStateCalendar;Lcom/google/android/syncadapters/EntryAndEntityHandler;Ljava/lang/String;)V

    .line 2261
    new-instance v6, Ljava/io/IOException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Partial sync unavailable for "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 2284
    :catch_5f0
    move-exception v6

    move-object/from16 v35, v6

    move v6, v7

    move-object v7, v5

    move-object/from16 v5, v35

    goto/16 :goto_267

    .line 2215
    :cond_5f9
    iget-object v0, v6, Lcom/google/android/syncadapters/EntityReader$EntryEntityItem;->entry:Lcom/google/wireless/gdata2/data/Entry;

    move-object/from16 v25, v0

    .line 2216
    iget-object v0, v6, Lcom/google/android/syncadapters/EntityReader$EntryEntityItem;->entity:Landroid/content/Entity;

    move-object/from16 v26, v0

    .line 2217
    iget v6, v6, Lcom/google/android/syncadapters/EntityReader$EntryEntityItem;->entryIndex:I

    .line 2218
    const-string v10, "CalendarSyncAdapter"

    const/4 v11, 0x2

    invoke-static {v10, v11}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v10

    if-nez v10, :cond_615

    const-string v10, "CalendarSyncAdapterFine"

    const/4 v11, 0x2

    invoke-static {v10, v11}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v10

    if-eqz v10, :cond_631

    .line 2219
    :cond_615
    const-string v10, "CalendarSyncAdapter"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "calling applyEntryToEntity for "

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual/range {v25 .. v25}, Lcom/google/wireless/gdata2/data/Entry;->getId()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2221
    :cond_631
    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->size()I
    :try_end_634
    .catchall {:try_start_5ad .. :try_end_634} :catchall_792
    .catch Ljava/io/IOException; {:try_start_5ad .. :try_end_634} :catch_5f0
    .catch Landroid/os/RemoteException; {:try_start_5ad .. :try_end_634} :catch_717
    .catch Lcom/google/wireless/gdata2/parser/ParseException; {:try_start_5ad .. :try_end_634} :catch_726
    .catch Ljava/lang/InterruptedException; {:try_start_5ad .. :try_end_634} :catch_735
    .catch Lcom/google/wireless/gdata2/client/ResourceUnavailableException; {:try_start_5ad .. :try_end_634} :catch_75b

    move-result v10

    .line 2223
    const/16 v24, 0x0

    const/16 v27, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    move-object/from16 v20, p6

    move-object/from16 v22, p1

    move-object/from16 v23, p3

    move-object/from16 v28, p4

    move-object/from16 v32, p7

    :try_start_649
    invoke-interface/range {v20 .. v32}, Lcom/google/android/syncadapters/EntryAndEntityHandler;->applyEntryToEntity(Ljava/util/ArrayList;Landroid/accounts/Account;Landroid/content/ContentProviderClient;Ljava/util/Set;Lcom/google/wireless/gdata2/data/Entry;Landroid/content/Entity;ZLandroid/content/SyncResult;Landroid/net/Uri;Landroid/net/Uri;Landroid/net/Uri;Ljava/lang/Object;)V
    :try_end_64c
    .catchall {:try_start_649 .. :try_end_64c} :catchall_792
    .catch Ljava/lang/NullPointerException; {:try_start_649 .. :try_end_64c} :catch_71c
    .catch Ljava/lang/IllegalArgumentException; {:try_start_649 .. :try_end_64c} :catch_72b
    .catch Ljava/io/IOException; {:try_start_649 .. :try_end_64c} :catch_5f0
    .catch Landroid/os/RemoteException; {:try_start_649 .. :try_end_64c} :catch_717
    .catch Lcom/google/wireless/gdata2/parser/ParseException; {:try_start_649 .. :try_end_64c} :catch_726
    .catch Ljava/lang/InterruptedException; {:try_start_649 .. :try_end_64c} :catch_735
    .catch Lcom/google/wireless/gdata2/client/ResourceUnavailableException; {:try_start_649 .. :try_end_64c} :catch_75b

    .line 2237
    :try_start_64c
    const-string v10, "lastFetchedId"

    invoke-virtual/range {v25 .. v25}, Lcom/google/wireless/gdata2/data/Entry;->getId()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v12, v10, v11}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2239
    const-string v10, "lastFetchedIndex"

    invoke-virtual {v12, v10, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2241
    const-string v10, "CalendarSyncAdapter"

    const/4 v11, 0x2

    invoke-static {v10, v11}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v10

    if-nez v10, :cond_66c

    const-string v10, "CalendarSyncAdapterP"

    const/4 v11, 0x2

    invoke-static {v10, v11}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v10

    if-eqz v10, :cond_6a4

    .line 2242
    :cond_66c
    const-string v10, "CalendarSyncAdapter"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Index "

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v11, " of "

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v5}, Lcom/google/android/syncadapters/GDataFeedFetcher;->getFeed()Lcom/google/wireless/gdata2/data/Feed;

    move-result-object v11

    invoke-virtual {v11}, Lcom/google/wireless/gdata2/data/Feed;->getTotalResults()I

    move-result v11

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v11, ", "

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {v25 .. v25}, Lcom/google/wireless/gdata2/data/Entry;->getId()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v10, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2245
    :cond_6a4
    invoke-virtual/range {p5 .. p5}, Lcom/google/android/syncadapters/calendar/GDataSyncStateCalendar;->newUpdateOperation()Landroid/content/ContentProviderOperation;

    move-result-object v6

    move-object/from16 v0, v21

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2246
    add-int/lit8 v7, v7, 0x1

    .line 2247
    move-object/from16 v0, p4

    iget-object v6, v0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v10, v6, Landroid/content/SyncStats;->numEntries:J

    const-wide/16 v14, 0x1

    add-long/2addr v10, v14

    iput-wide v10, v6, Landroid/content/SyncStats;->numEntries:J

    .line 2248
    if-lez v7, :cond_169

    int-to-long v10, v7

    rem-long/2addr v10, v8

    const-wide/16 v14, 0x0

    cmp-long v6, v10, v14

    if-nez v6, :cond_169

    .line 2249
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, p3

    move-object/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter;->applyOperations(Ljava/util/ArrayList;Landroid/content/ContentProviderClient;Landroid/accounts/Account;)V

    .line 2250
    const-string v6, "CalendarSyncAdapter"

    const/4 v10, 0x2

    invoke-static {v6, v10}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v6

    if-nez v6, :cond_6e1

    const-string v6, "CalendarSyncAdapterP"

    const/4 v10, 0x2

    invoke-static {v6, v10}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_169

    .line 2252
    :cond_6e1
    const-string v6, "CalendarSyncAdapter"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Applied "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " records in "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v14

    sub-long v14, v14, v33

    invoke-virtual {v10, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " ms from feed "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v0, p8

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v6, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_169

    .line 2287
    :catch_717
    move-exception v6

    move-object v15, v5

    move-object v5, v6

    goto/16 :goto_308

    .line 2228
    :catch_71c
    move-exception v6

    .line 2231
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1, v10, v6}, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter;->skipEntry(Ljava/util/ArrayList;ILjava/lang/Throwable;)V

    goto/16 :goto_169

    .line 2290
    :catch_726
    move-exception v6

    move-object v15, v5

    move-object v5, v6

    goto/16 :goto_3a9

    .line 2233
    :catch_72b
    move-exception v6

    .line 2234
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1, v10, v6}, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter;->skipEntry(Ljava/util/ArrayList;ILjava/lang/Throwable;)V

    goto/16 :goto_169

    .line 2293
    :catch_735
    move-exception v6

    move-object v15, v5

    move-object v5, v6

    goto/16 :goto_463

    .line 2263
    :cond_73a
    invoke-virtual {v5}, Lcom/google/android/syncadapters/GDataFeedFetcher;->isConnectionFailed()Z

    move-result v6

    if-eqz v6, :cond_760

    .line 2264
    new-instance v6, Ljava/io/IOException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Connection failed during feed read of "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 2296
    :catch_75b
    move-exception v6

    move-object v15, v5

    move-object v5, v6

    goto/16 :goto_508

    .line 2266
    :cond_760
    invoke-virtual {v5}, Lcom/google/android/syncadapters/GDataFeedFetcher;->resumptionFailed()Z

    move-result v6

    if-eqz v6, :cond_81a

    .line 2267
    const-string v6, "lastFetchedId"

    invoke-virtual {v12, v6}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 2268
    const-string v6, "lastFetchedIndex"

    invoke-virtual {v12, v6}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 2269
    move-object/from16 v0, p5

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/google/android/syncadapters/calendar/GDataSyncStateCalendar;->updateInProvider(Landroid/content/ContentProviderClient;)V

    .line 2270
    new-instance v6, Ljava/io/IOException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Resumption failed during feed read of "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_792
    .catchall {:try_start_64c .. :try_end_792} :catchall_792
    .catch Ljava/io/IOException; {:try_start_64c .. :try_end_792} :catch_5f0
    .catch Landroid/os/RemoteException; {:try_start_64c .. :try_end_792} :catch_717
    .catch Lcom/google/wireless/gdata2/parser/ParseException; {:try_start_64c .. :try_end_792} :catch_726
    .catch Ljava/lang/InterruptedException; {:try_start_64c .. :try_end_792} :catch_735
    .catch Lcom/google/wireless/gdata2/client/ResourceUnavailableException; {:try_start_64c .. :try_end_792} :catch_75b

    .line 2301
    :catchall_792
    move-exception v6

    move-object v15, v5

    move-object v5, v6

    .line 2303
    :goto_795
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    .line 2304
    const-string v6, "FAILURE"

    .line 2305
    const-string v10, "CalendarSyncAdapter"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v11, ": processed "

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " records in "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sub-long v7, v8, v33

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " ms from feed "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p8

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", updated time is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "feed_updated_time"

    invoke-virtual {v12, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v10, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2311
    if-eqz v15, :cond_814

    .line 2312
    move-object/from16 v0, p4

    iget-object v6, v0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v7, v6, Landroid/content/SyncStats;->numParseExceptions:J

    invoke-virtual {v15}, Lcom/google/android/syncadapters/GDataFeedFetcher;->getNumUnparsableEntries()I

    move-result v9

    int-to-long v9, v9

    add-long/2addr v7, v9

    iput-wide v7, v6, Landroid/content/SyncStats;->numParseExceptions:J

    .line 2313
    invoke-virtual {v15}, Lcom/google/android/syncadapters/GDataFeedFetcher;->isAuthenticationFailed()Z

    move-result v6

    if-eqz v6, :cond_800

    .line 2314
    move-object/from16 v0, p4

    iget-object v6, v0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v7, v6, Landroid/content/SyncStats;->numAuthExceptions:J

    const-wide/16 v9, 0x1

    add-long/2addr v7, v9

    iput-wide v7, v6, Landroid/content/SyncStats;->numAuthExceptions:J

    .line 2316
    :cond_800
    invoke-virtual {v15}, Lcom/google/android/syncadapters/GDataFeedFetcher;->isConnectionFailed()Z

    move-result v6

    if-eqz v6, :cond_811

    .line 2317
    move-object/from16 v0, p4

    iget-object v6, v0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v7, v6, Landroid/content/SyncStats;->numIoExceptions:J

    const-wide/16 v9, 0x1

    add-long/2addr v7, v9

    iput-wide v7, v6, Landroid/content/SyncStats;->numIoExceptions:J

    .line 2319
    :cond_811
    invoke-virtual {v15}, Lcom/google/android/syncadapters/GDataFeedFetcher;->close()V

    .line 2321
    :cond_814
    if-eqz v13, :cond_819

    .line 2322
    invoke-virtual {v13}, Lcom/google/android/syncadapters/EntityReader;->close()V

    .line 2301
    :cond_819
    throw v5

    .line 2272
    :cond_81a
    :try_start_81a
    invoke-virtual {v5}, Lcom/google/android/syncadapters/GDataFeedFetcher;->isUnparsableFeed()Z

    move-result v6

    if-eqz v6, :cond_83b

    .line 2273
    new-instance v6, Lcom/google/wireless/gdata2/parser/ParseException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unparsable feed "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v8}, Lcom/google/wireless/gdata2/parser/ParseException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 2275
    :cond_83b
    invoke-virtual {v5}, Lcom/google/android/syncadapters/GDataFeedFetcher;->isResourceUnavailable()Z

    move-result v6

    if-eqz v6, :cond_84b

    .line 2276
    new-instance v6, Lcom/google/wireless/gdata2/client/ResourceUnavailableException;

    invoke-virtual {v5}, Lcom/google/android/syncadapters/GDataFeedFetcher;->getRetryAfter()J

    move-result-wide v8

    invoke-direct {v6, v8, v9}, Lcom/google/wireless/gdata2/client/ResourceUnavailableException;-><init>(J)V

    throw v6

    .line 2278
    :cond_84b
    invoke-virtual {v5}, Lcom/google/android/syncadapters/GDataFeedFetcher;->isAuthenticationFailed()Z

    move-result v6

    if-eqz v6, :cond_857

    .line 2279
    new-instance v6, Lcom/google/wireless/gdata2/client/AuthenticationException;

    invoke-direct {v6}, Lcom/google/wireless/gdata2/client/AuthenticationException;-><init>()V

    throw v6

    .line 2281
    :cond_857
    invoke-virtual {v5}, Lcom/google/android/syncadapters/GDataFeedFetcher;->getFeed()Lcom/google/wireless/gdata2/data/Feed;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/wireless/gdata2/data/Feed;->getLastUpdated()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v14, p0

    move-object/from16 v15, p1

    move-object/from16 v16, p3

    move-object/from16 v17, p5

    move-object/from16 v18, p6

    move-object/from16 v20, p8

    move-object/from16 v21, p7

    invoke-direct/range {v14 .. v21}, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter;->updateSyncStateAfterFeedRead(Landroid/accounts/Account;Landroid/content/ContentProviderClient;Lcom/google/android/syncadapters/calendar/GDataSyncStateCalendar;Lcom/google/android/syncadapters/EntryAndEntityHandler;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter$SyncInfo;)V
    :try_end_870
    .catchall {:try_start_81a .. :try_end_870} :catchall_792
    .catch Ljava/io/IOException; {:try_start_81a .. :try_end_870} :catch_5f0
    .catch Landroid/os/RemoteException; {:try_start_81a .. :try_end_870} :catch_717
    .catch Lcom/google/wireless/gdata2/parser/ParseException; {:try_start_81a .. :try_end_870} :catch_726
    .catch Ljava/lang/InterruptedException; {:try_start_81a .. :try_end_870} :catch_735
    .catch Lcom/google/wireless/gdata2/client/ResourceUnavailableException; {:try_start_81a .. :try_end_870} :catch_75b

    .line 2301
    const-string v6, "CalendarSyncAdapter"

    const/4 v8, 0x2

    invoke-static {v6, v8}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v6

    if-nez v6, :cond_882

    const-string v6, "CalendarSyncAdapterP"

    const/4 v8, 0x2

    invoke-static {v6, v8}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_8cc

    .line 2303
    :cond_882
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    .line 2304
    const-string v6, "SUCCESS"

    .line 2305
    const-string v10, "CalendarSyncAdapter"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v11, ": processed "

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " records in "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sub-long v7, v8, v33

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " ms from feed "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p8

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", updated time is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "feed_updated_time"

    invoke-virtual {v12, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v10, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2311
    :cond_8cc
    if-eqz v5, :cond_901

    .line 2312
    move-object/from16 v0, p4

    iget-object v6, v0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v7, v6, Landroid/content/SyncStats;->numParseExceptions:J

    invoke-virtual {v5}, Lcom/google/android/syncadapters/GDataFeedFetcher;->getNumUnparsableEntries()I

    move-result v9

    int-to-long v9, v9

    add-long/2addr v7, v9

    iput-wide v7, v6, Landroid/content/SyncStats;->numParseExceptions:J

    .line 2313
    invoke-virtual {v5}, Lcom/google/android/syncadapters/GDataFeedFetcher;->isAuthenticationFailed()Z

    move-result v6

    if-eqz v6, :cond_8ed

    .line 2314
    move-object/from16 v0, p4

    iget-object v6, v0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v7, v6, Landroid/content/SyncStats;->numAuthExceptions:J

    const-wide/16 v9, 0x1

    add-long/2addr v7, v9

    iput-wide v7, v6, Landroid/content/SyncStats;->numAuthExceptions:J

    .line 2316
    :cond_8ed
    invoke-virtual {v5}, Lcom/google/android/syncadapters/GDataFeedFetcher;->isConnectionFailed()Z

    move-result v6

    if-eqz v6, :cond_8fe

    .line 2317
    move-object/from16 v0, p4

    iget-object v6, v0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v7, v6, Landroid/content/SyncStats;->numIoExceptions:J

    const-wide/16 v9, 0x1

    add-long/2addr v7, v9

    iput-wide v7, v6, Landroid/content/SyncStats;->numIoExceptions:J

    .line 2319
    :cond_8fe
    invoke-virtual {v5}, Lcom/google/android/syncadapters/GDataFeedFetcher;->close()V

    .line 2321
    :cond_901
    if-eqz v13, :cond_6

    goto/16 :goto_219

    .line 2301
    :catchall_905
    move-exception v5

    move/from16 v7, v23

    move-object/from16 v13, v24

    goto/16 :goto_795

    :catchall_90c
    move-exception v6

    move/from16 v7, v23

    move-object/from16 v13, v24

    move-object v15, v5

    move-object v5, v6

    goto/16 :goto_795

    :catchall_915
    move-exception v6

    move/from16 v7, v23

    move-object v15, v5

    move-object v5, v6

    goto/16 :goto_795

    :catchall_91c
    move-exception v5

    move-object v15, v7

    move v7, v6

    goto/16 :goto_795

    :catchall_921
    move-exception v5

    goto/16 :goto_795

    .line 2296
    :catch_924
    move-exception v6

    move/from16 v7, v23

    move-object/from16 v13, v24

    move-object v15, v5

    move-object v5, v6

    goto/16 :goto_508

    :catch_92d
    move-exception v6

    move/from16 v7, v23

    move-object v15, v5

    move-object v5, v6

    goto/16 :goto_508

    .line 2293
    :catch_934
    move-exception v6

    move/from16 v7, v23

    move-object/from16 v13, v24

    move-object v15, v5

    move-object v5, v6

    goto/16 :goto_463

    :catch_93d
    move-exception v6

    move/from16 v7, v23

    move-object v15, v5

    move-object v5, v6

    goto/16 :goto_463

    .line 2290
    :catch_944
    move-exception v6

    move/from16 v7, v23

    move-object/from16 v13, v24

    move-object v15, v5

    move-object v5, v6

    goto/16 :goto_3a9

    :catch_94d
    move-exception v6

    move/from16 v7, v23

    move-object v15, v5

    move-object v5, v6

    goto/16 :goto_3a9

    .line 2287
    :catch_954
    move-exception v6

    move/from16 v7, v23

    move-object/from16 v13, v24

    move-object v15, v5

    move-object v5, v6

    goto/16 :goto_308

    :catch_95d
    move-exception v6

    move/from16 v7, v23

    move-object v15, v5

    move-object v5, v6

    goto/16 :goto_308

    .line 2284
    :catch_964
    move-exception v6

    move-object/from16 v13, v24

    move-object v7, v5

    move-object v5, v6

    move/from16 v6, v23

    goto/16 :goto_267

    :catch_96d
    move-exception v6

    move-object v7, v5

    move-object v5, v6

    move/from16 v6, v23

    goto/16 :goto_267

    .line 2116
    :pswitch_data_974
    .packed-switch 0x0
        :pswitch_21e
        :pswitch_4f4
        :pswitch_2fc
        :pswitch_39d
        :pswitch_43e
    .end packed-switch
.end method

.method private getSyncWindowEnd()J
    .registers 7

    .prologue
    .line 2592
    invoke-virtual {p0}, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 2593
    const-string v0, "google_calendar_sync_window_days2"

    const-wide/16 v3, 0x16d

    invoke-static {v2, v0, v3, v4}, Lcom/google/android/gsf/Gservices;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v0

    .line 2595
    const-string v3, "google_calendar_sync_window_update_days2"

    const-wide/16 v4, 0x1e

    invoke-static {v2, v3, v4, v5}, Lcom/google/android/gsf/Gservices;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v2

    const-wide/32 v4, 0x5265c00

    mul-long/2addr v2, v4

    .line 2598
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static/range {v0 .. v5}, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter;->getSyncWindowEnd(JJJ)J

    move-result-wide v0

    return-wide v0
.end method

.method static getSyncWindowEnd(JJJ)J
    .registers 11
    .parameter
    .parameter
    .parameter

    .prologue
    const-wide/16 v0, 0x0

    .line 2612
    const-string v2, "CalendarSyncAdapter"

    const/4 v3, 0x3

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_37

    .line 2613
    const-string v2, "CalendarSyncAdapter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getSyncWindowEnd: window: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", advanceInterval: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", now: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2617
    :cond_37
    cmp-long v2, p0, v0

    if-lez v2, :cond_46

    cmp-long v2, p2, v0

    if-lez v2, :cond_46

    .line 2619
    const-wide/32 v0, 0x5265c00

    mul-long/2addr v0, p0

    add-long/2addr v0, p4

    .line 2626
    div-long/2addr v0, p2

    mul-long/2addr v0, p2

    .line 2628
    :cond_46
    return-wide v0
.end method

.method private innerPerformSync(Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter$AuthInfo;Landroid/os/Bundle;Ljava/lang/String;Landroid/content/ContentProviderClient;Landroid/content/SyncResult;)V
    .registers 24
    .parameter "authInfo"
    .parameter "extras"
    .parameter "authority"
    .parameter "provider"
    .parameter "syncResult"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/accounts/OperationCanceledException;,
            Landroid/os/RemoteException;,
            Ljava/io/IOException;,
            Lcom/google/wireless/gdata2/client/AuthenticationException;
        }
    .end annotation

    .prologue
    .line 366
    const-string v5, "CalendarSyncAdapter"

    const/4 v9, 0x3

    invoke-static {v5, v9}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_34

    .line 367
    invoke-virtual/range {p2 .. p2}, Landroid/os/Bundle;->isEmpty()Z

    .line 368
    const-string v5, "CalendarSyncAdapter"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "PerformSync for account: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, p1

    iget-object v10, v0, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter$AuthInfo;->account:Landroid/accounts/Account;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", with extras: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, p2

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v5, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 372
    :cond_34
    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter$AuthInfo;->account:Landroid/accounts/Account;

    move-object/from16 v0, p3

    invoke-static {v5, v0}, Landroid/content/ContentResolver;->getIsSyncable(Landroid/accounts/Account;Ljava/lang/String;)I

    move-result v15

    .line 373
    .local v15, isSyncable:I
    if-gez v15, :cond_60

    .line 374
    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter$AuthInfo;->account:Landroid/accounts/Account;

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter;->getIsSyncable(Landroid/accounts/Account;)Z

    move-result v5

    if-eqz v5, :cond_6c

    const/4 v15, 0x1

    .line 375
    :goto_4d
    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter$AuthInfo;->account:Landroid/accounts/Account;

    move-object/from16 v0, p3

    invoke-static {v5, v0, v15}, Landroid/content/ContentResolver;->setIsSyncable(Landroid/accounts/Account;Ljava/lang/String;I)V

    .line 378
    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter$AuthInfo;->account:Landroid/accounts/Account;

    const-string v9, "com.android.calendar"

    const/4 v10, 0x1

    invoke-static {v5, v9, v10}, Landroid/content/ContentResolver;->setSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;Z)V

    .line 383
    :cond_60
    const-string v5, "initialize"

    const/4 v9, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v5, v9}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_6e

    .line 461
    :cond_6b
    :goto_6b
    return-void

    .line 374
    :cond_6c
    const/4 v15, 0x0

    goto :goto_4d

    .line 388
    :cond_6e
    if-lez v15, :cond_6b

    .line 393
    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter$AuthInfo;->account:Landroid/accounts/Account;

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-direct {v0, v5, v1}, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter;->cleanupForUnsyncedCalendars(Landroid/accounts/Account;Landroid/content/ContentProviderClient;)V

    .line 396
    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter$AuthInfo;->account:Landroid/accounts/Account;

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter;->maybeUpdateSubscribedFeeds(Landroid/accounts/Account;)V

    .line 398
    invoke-direct/range {p0 .. p0}, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter;->isCanceled()Z

    move-result v5

    if-nez v5, :cond_6b

    .line 402
    const-string v5, "deletions_override"

    const/4 v9, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v5, v9}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    .line 404
    .local v8, overrideTooManyDeletions:Z
    const-string v5, "discard_deletions"

    const/4 v9, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v5, v9}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v14

    .line 406
    .local v14, discardLocalDeletions:Z
    if-eqz v14, :cond_c3

    .line 407
    new-instance v17, Landroid/content/ContentValues;

    invoke-direct/range {v17 .. v17}, Landroid/content/ContentValues;-><init>()V

    .line 408
    .local v17, values:Landroid/content/ContentValues;
    const-string v5, "deleted"

    const/4 v9, 0x0

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    move-object/from16 v0, v17

    invoke-virtual {v0, v5, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 409
    sget-object v5, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p1

    iget-object v9, v0, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter$AuthInfo;->account:Landroid/accounts/Account;

    invoke-static {v5, v9}, Lcom/google/android/syncadapters/SyncAdapterUtils;->addQueryParameters(Landroid/net/Uri;Landroid/accounts/Account;)Landroid/net/Uri;

    move-result-object v5

    const-string v9, "deleted=1"

    const/4 v10, 0x0

    move-object/from16 v0, p4

    move-object/from16 v1, v17

    invoke-virtual {v0, v5, v1, v9, v10}, Landroid/content/ContentProviderClient;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 414
    .end local v17           #values:Landroid/content/ContentValues;
    :cond_c3
    const-string v5, "upload"

    const/4 v9, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v5, v9}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v16

    .line 416
    .local v16, uploadOnly:Z
    if-nez v16, :cond_e1

    .line 417
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p4

    move-object/from16 v3, p1

    move-object/from16 v4, p5

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter;->getServerDiffsOrig(Landroid/os/Bundle;Landroid/content/ContentProviderClient;Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter$AuthInfo;Landroid/content/SyncResult;)V

    .line 418
    invoke-virtual/range {p5 .. p5}, Landroid/content/SyncResult;->hasError()Z

    move-result v5

    if-nez v5, :cond_6b

    .line 422
    :cond_e1
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v9, "google_calendar_sync_max_loop_attempts"

    const-wide/16 v10, 0x6

    invoke-static {v5, v9, v10, v11}, Lcom/google/android/gsf/Gservices;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v6

    .line 427
    .local v6, maxLoopAttempts:J
    invoke-static {}, Landroid/net/TrafficStats;->getThreadStatsTag()I

    move-result v13

    .line 430
    .local v13, activeTag:I
    const/high16 v5, 0x200

    or-int/2addr v5, v13

    invoke-static {v5}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    .line 432
    :try_start_fb
    sget-object v11, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter;->sEventHandler:Lcom/google/android/syncadapters/calendar/EventHandler;

    move-object/from16 v5, p0

    move-object/from16 v9, p1

    move-object/from16 v10, p4

    move-object/from16 v12, p5

    invoke-direct/range {v5 .. v12}, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter;->processLocalChangesForHandler(JZLcom/google/android/syncadapters/calendar/CalendarSyncAdapter$AuthInfo;Landroid/content/ContentProviderClient;Lcom/google/android/syncadapters/EntryAndEntityHandler;Landroid/content/SyncResult;)V
    :try_end_108
    .catchall {:try_start_fb .. :try_end_108} :catchall_14d

    .line 435
    const/high16 v5, 0x200

    or-int/2addr v5, v13

    const/4 v9, 0x1

    invoke-static {v5, v9}, Landroid/net/TrafficStats;->incrementOperationCount(II)V

    .line 437
    invoke-static {v13}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    .line 440
    invoke-direct/range {p0 .. p0}, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter;->isCanceled()Z

    move-result v5

    if-nez v5, :cond_6b

    .line 444
    const/high16 v5, 0x100

    or-int/2addr v5, v13

    invoke-static {v5}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    .line 446
    :try_start_11e
    sget-object v11, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter;->sCalendarHandler:Lcom/google/android/syncadapters/calendar/CalendarHandler;

    move-object/from16 v5, p0

    move-object/from16 v9, p1

    move-object/from16 v10, p4

    move-object/from16 v12, p5

    invoke-direct/range {v5 .. v12}, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter;->processLocalChangesForHandler(JZLcom/google/android/syncadapters/calendar/CalendarSyncAdapter$AuthInfo;Landroid/content/ContentProviderClient;Lcom/google/android/syncadapters/EntryAndEntityHandler;Landroid/content/SyncResult;)V
    :try_end_12b
    .catchall {:try_start_11e .. :try_end_12b} :catchall_159

    .line 449
    const/high16 v5, 0x100

    or-int/2addr v5, v13

    const/4 v9, 0x1

    invoke-static {v5, v9}, Landroid/net/TrafficStats;->incrementOperationCount(II)V

    .line 451
    invoke-static {v13}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    .line 454
    invoke-direct/range {p0 .. p0}, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter;->isCanceled()Z

    move-result v5

    if-nez v5, :cond_6b

    .line 458
    const-string v5, "CalendarSyncAdapter"

    const/4 v9, 0x3

    invoke-static {v5, v9}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_6b

    .line 459
    const-string v5, "CalendarSyncAdapter"

    const-string v9, "PerformSync: sync is complete"

    invoke-static {v5, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6b

    .line 435
    :catchall_14d
    move-exception v5

    const/high16 v9, 0x200

    or-int/2addr v9, v13

    const/4 v10, 0x1

    invoke-static {v9, v10}, Landroid/net/TrafficStats;->incrementOperationCount(II)V

    .line 437
    invoke-static {v13}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    throw v5

    .line 449
    :catchall_159
    move-exception v5

    const/high16 v9, 0x100

    or-int/2addr v9, v13

    const/4 v10, 0x1

    invoke-static {v9, v10}, Landroid/net/TrafficStats;->incrementOperationCount(II)V

    .line 451
    invoke-static {v13}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    throw v5
.end method

.method private isCanceled()Z
    .registers 2

    .prologue
    .line 326
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v0

    return v0
.end method

.method static isSameCalendarData(Landroid/database/Cursor;Landroid/content/ContentValues;)Z
    .registers 5
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 1480
    const-string v1, "name"

    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 1481
    sget v1, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter;->CALENDARS_PROJECTION_NAME_INDEX:I

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "name"

    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1c

    .line 1528
    :cond_1b
    :goto_1b
    return v0

    .line 1486
    :cond_1c
    const-string v1, "calendar_displayName"

    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_36

    .line 1487
    sget v1, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter;->CALENDARS_PROJECTION_DISPLAY_NAME_INDEX:I

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "calendar_displayName"

    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 1492
    :cond_36
    const-string v1, "calendar_timezone"

    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_50

    .line 1493
    sget v1, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter;->CALENDARS_PROJECTION_TIMEZONE_INDEX:I

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "calendar_timezone"

    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 1498
    :cond_50
    const-string v1, "calendar_color"

    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6a

    .line 1499
    sget v1, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter;->CALENDARS_PROJECTION_COLOR_INDEX:I

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    const-string v2, "calendar_color"

    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v1, v2, :cond_1b

    .line 1504
    :cond_6a
    const-string v1, "calendar_access_level"

    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_84

    .line 1505
    sget v1, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter;->CALENDARS_PROJECTION_ACCESS_LEVEL_INDEX:I

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    const-string v2, "calendar_access_level"

    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v1, v2, :cond_1b

    .line 1510
    :cond_84
    const-string v1, "cal_sync1"

    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9e

    .line 1511
    sget v1, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter;->CALENDARS_PROJECTION_EVENTS_URL_INDEX:I

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "cal_sync1"

    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 1516
    :cond_9e
    const-string v1, "cal_sync4"

    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b8

    .line 1517
    sget v1, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter;->CALENDARS_PROJECTION_SELECTED_ON_SERVER_INDEX:I

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "cal_sync4"

    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 1522
    :cond_b8
    const-string v1, "cal_sync5"

    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d2

    .line 1523
    sget v1, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter;->CALENDARS_PROJECTION_HIDDEN_ON_SERVER_INDEX:I

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "cal_sync5"

    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 1528
    :cond_d2
    const/4 v0, 0x1

    goto/16 :goto_1b
.end method

.method private maybeUpdateSubscribedFeeds(Landroid/accounts/Account;)V
    .registers 19
    .parameter "account"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 569
    invoke-direct/range {p0 .. p1}, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter;->getExpectedFeeds(Landroid/accounts/Account;)Ljava/util/HashSet;

    move-result-object v11

    .line 571
    .local v11, expectedFeeds:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-static {}, Lcom/google/common/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v9

    .line 572
    .local v9, existingFeeds:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Long;>;"
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 573
    .local v1, cr:Landroid/content/ContentResolver;
    sget-object v2, Lcom/google/android/gsf/SubscribedFeeds$Feeds;->CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "_id"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string v5, "feed"

    aput-object v5, v3, v4

    const-string v4, "_sync_account=? AND _sync_account_type=? AND authority=?"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    move-object/from16 v16, v0

    aput-object v16, v5, v6

    const/4 v6, 0x1

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    move-object/from16 v16, v0

    aput-object v16, v5, v6

    const/4 v6, 0x2

    const-string v16, "com.android.calendar"

    aput-object v16, v5, v6

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 577
    .local v7, c:Landroid/database/Cursor;
    if-nez v7, :cond_48

    .line 578
    new-instance v2, Landroid/os/RemoteException;

    invoke-direct {v2}, Landroid/os/RemoteException;-><init>()V

    throw v2

    .line 581
    :cond_48
    :goto_48
    :try_start_48
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_65

    .line 582
    const/4 v2, 0x1

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v7, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v9, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5f
    .catchall {:try_start_48 .. :try_end_5f} :catchall_60

    goto :goto_48

    .line 585
    :catchall_60
    move-exception v2

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v2

    :cond_65
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 589
    invoke-virtual {v11}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .local v12, i$:Ljava/util/Iterator;
    :goto_6c
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_b8

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 590
    .local v10, expectedFeed:Ljava/lang/String;
    invoke-virtual {v9, v10}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b4

    .line 592
    new-instance v15, Landroid/content/ContentValues;

    invoke-direct {v15}, Landroid/content/ContentValues;-><init>()V

    .line 593
    .local v15, values:Landroid/content/ContentValues;
    const-string v2, "_sync_account"

    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v15, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 594
    const-string v2, "_sync_account_type"

    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v15, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 595
    const-string v2, "feed"

    invoke-virtual {v15, v2, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 596
    const-string v2, "service"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter;->mCalendarClient:Lcom/google/wireless/gdata2/calendar/client/CalendarClient;

    invoke-virtual {v3}, Lcom/google/wireless/gdata2/calendar/client/CalendarClient;->getServiceName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v15, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 597
    const-string v2, "authority"

    const-string v3, "com.android.calendar"

    invoke-virtual {v15, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 598
    sget-object v2, Lcom/google/android/gsf/SubscribedFeeds$Feeds;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1, v2, v15}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    goto :goto_6c

    .line 600
    .end local v15           #values:Landroid/content/ContentValues;
    :cond_b4
    invoke-virtual {v9, v10}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_6c

    .line 603
    .end local v10           #expectedFeed:Ljava/lang/String;
    :cond_b8
    invoke-virtual {v9}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_c0
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_e2

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map$Entry;

    .line 605
    .local v8, existing:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Long;>;"
    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v13

    .line 606
    .local v13, id:J
    sget-object v2, Lcom/google/android/gsf/SubscribedFeeds$Feeds;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2, v13, v14}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_c0

    .line 609
    .end local v8           #existing:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Long;>;"
    .end local v13           #id:J
    :cond_e2
    return-void
.end method

.method private processAccountCalendars(Landroid/accounts/Account;Ljava/lang/String;ZLjava/util/HashSet;)V
    .registers 9
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/accounts/Account;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/google/wireless/gdata2/parser/ParseException;,
            Landroid/accounts/OperationCanceledException;,
            Lcom/google/wireless/gdata2/client/HttpException;,
            Lcom/google/wireless/gdata2/client/AuthenticationException;
        }
    .end annotation

    .prologue
    .line 1086
    invoke-virtual {p0}, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v2

    .line 1088
    const/4 v1, 0x0

    .line 1090
    :try_start_9
    iget-object v0, p0, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter;->mCalendarClient:Lcom/google/wireless/gdata2/calendar/client/CalendarClient;

    invoke-virtual {v0}, Lcom/google/wireless/gdata2/calendar/client/CalendarClient;->getUserCalendarsUrl()Ljava/lang/String;

    move-result-object v0

    .line 1091
    invoke-static {p1, v0}, Lcom/google/android/syncadapters/SyncAdapterUtils;->rewriteUrlForAccount(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1092
    iget-object v3, p0, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter;->mCalendarClient:Lcom/google/wireless/gdata2/calendar/client/CalendarClient;

    invoke-virtual {v3, v0, p2}, Lcom/google/wireless/gdata2/calendar/client/CalendarClient;->getParserForUserCalendars(Ljava/lang/String;Ljava/lang/String;)Lcom/google/wireless/gdata2/parser/GDataParser;

    move-result-object v1

    .line 1094
    invoke-direct {p0, p1, v1, p3, p4}, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter;->processCalendars(Landroid/accounts/Account;Lcom/google/wireless/gdata2/parser/GDataParser;ZLjava/util/HashSet;)V
    :try_end_1c
    .catchall {:try_start_9 .. :try_end_1c} :catchall_2b
    .catch Lcom/google/wireless/gdata2/client/HttpException; {:try_start_9 .. :try_end_1c} :catch_22

    .line 1108
    if-eqz v1, :cond_21

    .line 1109
    invoke-interface {v1}, Lcom/google/wireless/gdata2/parser/GDataParser;->close()V

    .line 1112
    :cond_21
    return-void

    .line 1095
    :catch_22
    move-exception v0

    .line 1096
    :try_start_23
    invoke-virtual {v0}, Lcom/google/wireless/gdata2/client/HttpException;->getStatusCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_48

    .line 1106
    :goto_2a
    throw v0
    :try_end_2b
    .catchall {:try_start_23 .. :try_end_2b} :catchall_2b

    .line 1108
    :catchall_2b
    move-exception v0

    if-eqz v1, :cond_31

    .line 1109
    invoke-interface {v1}, Lcom/google/wireless/gdata2/parser/GDataParser;->close()V

    :cond_31
    throw v0

    .line 1098
    :sswitch_32
    :try_start_32
    iget-object v3, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v2, v3, p2}, Landroid/accounts/AccountManager;->invalidateAuthToken(Ljava/lang/String;Ljava/lang/String;)V

    .line 1099
    new-instance v2, Lcom/google/wireless/gdata2/client/AuthenticationException;

    const-string v3, "Non authorized by server"

    invoke-direct {v2, v3, v0}, Lcom/google/wireless/gdata2/client/AuthenticationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 1101
    :sswitch_3f
    const-string v2, "CalendarSyncAdapter"

    const-string v3, "Unable to process calendars from server -- encountered an AllDeletedUnavailableException, this should never happen"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_46
    .catchall {:try_start_32 .. :try_end_46} :catchall_2b

    goto :goto_2a

    .line 1096
    nop

    :sswitch_data_48
    .sparse-switch
        0x191 -> :sswitch_32
        0x19a -> :sswitch_3f
    .end sparse-switch
.end method

.method private processCalendars(Landroid/accounts/Account;Lcom/google/wireless/gdata2/parser/GDataParser;ZLjava/util/HashSet;)V
    .registers 22
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/accounts/Account;",
            "Lcom/google/wireless/gdata2/parser/GDataParser;",
            "Z",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/wireless/gdata2/parser/ParseException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1280
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    .line 1282
    invoke-interface/range {p2 .. p2}, Lcom/google/wireless/gdata2/parser/GDataParser;->parseFeedEnvelope()Lcom/google/wireless/gdata2/data/Feed;

    .line 1283
    const/4 v3, 0x0

    .line 1284
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 1285
    :cond_11
    :goto_11
    invoke-interface/range {p2 .. p2}, Lcom/google/wireless/gdata2/parser/GDataParser;->hasMoreData()Z

    move-result v2

    if-eqz v2, :cond_2b5

    .line 1286
    move-object/from16 v0, p2

    invoke-interface {v0, v3}, Lcom/google/wireless/gdata2/parser/GDataParser;->readNextEntry(Lcom/google/wireless/gdata2/data/Entry;)Lcom/google/wireless/gdata2/data/Entry;

    move-result-object v3

    .line 1287
    const-string v2, "CalendarSyncAdapter"

    const/4 v4, 0x2

    invoke-static {v2, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_42

    .line 1288
    const-string v2, "CalendarSyncAdapter"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Read entry: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Lcom/google/wireless/gdata2/data/Entry;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_42
    move-object v2, v3

    .line 1290
    check-cast v2, Lcom/google/wireless/gdata2/calendar/data/CalendarEntry;

    .line 1291
    new-instance v9, Landroid/content/ContentValues;

    invoke-direct {v9}, Landroid/content/ContentValues;-><init>()V

    .line 1292
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v2, v9}, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter;->calendarEntryToContentValues(Landroid/accounts/Account;Lcom/google/wireless/gdata2/calendar/data/CalendarEntry;Landroid/content/ContentValues;)Ljava/lang/String;

    move-result-object v4

    .line 1293
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_11

    .line 1297
    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v7, v4, v5}, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter;->getCursorForSimilarFeeds(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 1298
    if-eqz v10, :cond_22b

    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-lez v4, :cond_22b

    .line 1303
    const/4 v4, 0x1

    .line 1304
    :cond_6b
    :try_start_6b
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_8c

    .line 1305
    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    sget v6, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter;->CALENDARS_PROJECTION_SYNC_ACCOUNT_INDEX:I

    invoke-interface {v10, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6b

    .line 1307
    const-string v4, "canPartiallyUpdate"

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v9, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1308
    const/4 v4, 0x0

    .line 1313
    :cond_8c
    if-nez v4, :cond_e7

    .line 1318
    sget v2, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter;->CALENDARS_PROJECTION_ID_INDEX:I

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 1321
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    move-object/from16 v0, p4

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 1324
    sget v2, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter;->CALENDARS_PROJECTION_SYNC_DIRTY_INDEX:I

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-eqz v2, :cond_e5

    const/4 v2, 0x1

    .line 1326
    :goto_a6
    invoke-static {v10, v9}, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter;->isSameCalendarData(Landroid/database/Cursor;Landroid/content/ContentValues;)Z

    move-result v6

    if-nez v6, :cond_e0

    if-nez v2, :cond_e0

    .line 1327
    sget-object v2, Landroid/provider/CalendarContract$Calendars;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-static {v2, v0}, Lcom/google/android/syncadapters/SyncAdapterUtils;->addQueryParameters(Landroid/net/Uri;Landroid/accounts/Account;)Landroid/net/Uri;

    move-result-object v2

    .line 1330
    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v7, v2, v9, v4, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1332
    const-string v2, "CalendarSyncAdapter"

    const/4 v4, 0x2

    invoke-static {v2, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_e0

    .line 1333
    const-string v2, "CalendarSyncAdapter"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Updating existing calendar "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_e0
    .catchall {:try_start_6b .. :try_end_e0} :catchall_1a0

    .line 1424
    :cond_e0
    :goto_e0
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto/16 :goto_11

    .line 1324
    :cond_e5
    const/4 v2, 0x0

    goto :goto_a6

    .line 1343
    :cond_e7
    const/4 v4, 0x1

    :try_start_e8
    const-string v5, "cal_sync4"

    invoke-virtual {v9, v5}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-ne v4, v5, :cond_1a5

    const/4 v4, 0x1

    move v6, v4

    .line 1348
    :goto_f6
    invoke-interface {v10}, Landroid/database/Cursor;->moveToLast()Z

    .line 1350
    sget v4, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter;->CALENDARS_PROJECTION_ACCESS_LEVEL_INDEX:I

    invoke-interface {v10, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v11

    .line 1352
    sget v4, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter;->CALENDARS_PROJECTION_ID_INDEX:I

    invoke-interface {v10, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v13

    .line 1355
    const/4 v4, 0x1

    sget v5, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter;->CALENDARS_PROJECTION_SYNC_EVENTS_INDEX:I

    invoke-interface {v10, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    if-ne v4, v5, :cond_1a9

    const/4 v4, 0x1

    move v5, v4

    .line 1357
    :goto_110
    const/4 v4, 0x1

    sget v15, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter;->CALENDARS_PROJECTION_VISIBLE_INDEX:I

    invoke-interface {v10, v15}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    if-ne v4, v15, :cond_1ad

    const/4 v4, 0x1

    .line 1362
    :goto_11a
    invoke-virtual {v2}, Lcom/google/wireless/gdata2/calendar/data/CalendarEntry;->getAccessLevel()B

    move-result v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter;->getCalendarAccessLevelFromEntry(B)I

    move-result v2

    .line 1365
    int-to-long v15, v2

    cmp-long v2, v11, v15

    if-ltz v2, :cond_1b0

    .line 1370
    const-string v2, "sync_events"

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v9, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1371
    const-string v2, "visible"

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v9, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1373
    const-string v2, "CalendarSyncAdapter"

    const/4 v4, 0x2

    invoke-static {v2, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_14d

    .line 1374
    const-string v2, "CalendarSyncAdapter"

    const-string v4, "New feed with lower access level: just need to add it"

    invoke-static {v2, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1410
    :cond_14d
    :goto_14d
    const-string v2, "account_name"

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v9, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1411
    const-string v2, "account_type"

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v9, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1412
    const-string v2, "canPartiallyUpdate"

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v9, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1413
    const-string v2, "allowedReminders"

    const-string v4, "0,1,2"

    invoke-virtual {v9, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1415
    const-string v2, "maxReminders"

    const/4 v4, 0x5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v9, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1416
    const-string v2, "CalendarSyncAdapter"

    const/4 v4, 0x2

    invoke-static {v2, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_19b

    .line 1417
    const-string v2, "CalendarSyncAdapter"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Adding new calendar "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1419
    :cond_19b
    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_19e
    .catchall {:try_start_e8 .. :try_end_19e} :catchall_1a0

    goto/16 :goto_e0

    .line 1424
    :catchall_1a0
    move-exception v2

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    throw v2

    .line 1343
    :cond_1a5
    const/4 v4, 0x0

    move v6, v4

    goto/16 :goto_f6

    .line 1355
    :cond_1a9
    const/4 v4, 0x0

    move v5, v4

    goto/16 :goto_110

    .line 1357
    :cond_1ad
    const/4 v4, 0x0

    goto/16 :goto_11a

    .line 1381
    :cond_1b0
    if-nez v5, :cond_1b4

    if-eqz v4, :cond_1f9

    .line 1382
    :cond_1b4
    :try_start_1b4
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 1383
    const-string v11, "sync_events"

    const/4 v12, 0x0

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v2, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1384
    const-string v11, "visible"

    const/4 v12, 0x0

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v2, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1386
    sget-object v11, Landroid/provider/CalendarContract$Calendars;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v11, v13, v14}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v11

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual {v7, v11, v2, v12, v13}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1391
    const-string v11, "CalendarSyncAdapter"

    const/4 v12, 0x2

    invoke-static {v11, v12}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v11

    if-eqz v11, :cond_1f9

    .line 1392
    const-string v11, "CalendarSyncAdapter"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Updating existing calendar that has lower access level"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v11, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1401
    :cond_1f9
    const-string v11, "sync_events"

    if-nez v5, :cond_1ff

    if-eqz v6, :cond_227

    :cond_1ff
    const/4 v2, 0x1

    :goto_200
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v9, v11, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1403
    const-string v5, "visible"

    if-nez v4, :cond_20d

    if-eqz v6, :cond_229

    :cond_20d
    const/4 v2, 0x1

    :goto_20e
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v9, v5, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1405
    const-string v2, "CalendarSyncAdapter"

    const/4 v4, 0x2

    invoke-static {v2, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_14d

    .line 1406
    const-string v2, "CalendarSyncAdapter"

    const-string v4, "New feed with higher access level: swapped visible and sync status"

    invoke-static {v2, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_225
    .catchall {:try_start_1b4 .. :try_end_225} :catchall_1a0

    goto/16 :goto_14d

    .line 1401
    :cond_227
    const/4 v2, 0x0

    goto :goto_200

    .line 1403
    :cond_229
    const/4 v2, 0x0

    goto :goto_20e

    .line 1428
    :cond_22b
    if-eqz v10, :cond_230

    .line 1429
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 1433
    :cond_230
    const/4 v4, 0x0

    .line 1434
    if-eqz p3, :cond_2e3

    invoke-virtual {v2}, Lcom/google/wireless/gdata2/calendar/data/CalendarEntry;->isSelected()Z

    move-result v5

    if-eqz v5, :cond_2e3

    invoke-virtual {v2}, Lcom/google/wireless/gdata2/calendar/data/CalendarEntry;->isHidden()Z

    move-result v2

    if-nez v2, :cond_2e3

    invoke-static {}, Landroid/content/ContentResolver;->getMasterSyncAutomatically()Z

    move-result v2

    if-eqz v2, :cond_2e3

    const-string v2, "com.android.calendar"

    move-object/from16 v0, p1

    invoke-static {v0, v2}, Landroid/content/ContentResolver;->getSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2e3

    .line 1437
    const/4 v2, 0x1

    .line 1439
    :goto_250
    const-string v4, "sync_events"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v9, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1440
    const-string v4, "visible"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v9, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1441
    const-string v2, "account_name"

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v9, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1442
    const-string v2, "account_type"

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v9, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1443
    const-string v2, "canPartiallyUpdate"

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v9, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1444
    const-string v2, "allowedReminders"

    const-string v4, "0,1,2"

    invoke-virtual {v9, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1445
    const-string v2, "maxReminders"

    const/4 v4, 0x5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v9, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1446
    const-string v2, "CalendarSyncAdapter"

    const/4 v4, 0x2

    invoke-static {v2, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_2b0

    .line 1447
    const-string v2, "CalendarSyncAdapter"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Adding new calendar "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1449
    :cond_2b0
    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_11

    .line 1454
    :cond_2b5
    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2e2

    .line 1455
    const-string v2, "CalendarSyncAdapter"

    const/4 v3, 0x2

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_2cb

    .line 1456
    const-string v2, "CalendarSyncAdapter"

    const-string v3, "Bulk updating calendar list."

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1458
    :cond_2cb
    sget-object v2, Landroid/provider/CalendarContract$Calendars;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p1

    invoke-static {v2, v0}, Lcom/google/android/syncadapters/SyncAdapterUtils;->addQueryParameters(Landroid/net/Uri;Landroid/accounts/Account;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Landroid/content/ContentValues;

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/content/ContentValues;

    invoke-virtual {v7, v3, v2}, Landroid/content/ContentResolver;->bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I

    .line 1462
    :cond_2e2
    return-void

    :cond_2e3
    move v2, v4

    goto/16 :goto_250
.end method

.method private processLocalChangesForHandler(JZLcom/google/android/syncadapters/calendar/CalendarSyncAdapter$AuthInfo;Landroid/content/ContentProviderClient;Lcom/google/android/syncadapters/EntryAndEntityHandler;Landroid/content/SyncResult;)V
    .registers 20
    .parameter "maxLoopAttempts"
    .parameter "overrideTooManyDeletions"
    .parameter "authInfo"
    .parameter "provider"
    .parameter "handler"
    .parameter "syncResult"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/wireless/gdata2/client/AuthenticationException;,
            Landroid/accounts/OperationCanceledException;
        }
    .end annotation

    .prologue
    .line 469
    const/4 v7, 0x0

    .local v7, i:I
    :goto_1
    int-to-long v1, v7

    cmp-long v1, v1, p1

    if-gez v1, :cond_41

    .line 470
    move-object/from16 v0, p7

    iget-object v1, v0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v1, v1, Landroid/content/SyncStats;->numInserts:J

    move-object/from16 v0, p7

    iget-object v3, v0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v3, v3, Landroid/content/SyncStats;->numUpdates:J

    add-long/2addr v1, v3

    move-object/from16 v0, p7

    iget-object v3, v0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v3, v3, Landroid/content/SyncStats;->numDeletes:J

    add-long v10, v1, v3

    .local v10, numChangesBefore:J
    move-object v1, p0

    move-object/from16 v2, p4

    move-object/from16 v3, p5

    move-object/from16 v4, p7

    move-object/from16 v5, p6

    move v6, p3

    .line 473
    invoke-virtual/range {v1 .. v6}, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter;->processLocalChanges(Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter$AuthInfo;Landroid/content/ContentProviderClient;Landroid/content/SyncResult;Lcom/google/android/syncadapters/EntryAndEntityHandler;Z)V

    .line 475
    move-object/from16 v0, p7

    iget-object v1, v0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v1, v1, Landroid/content/SyncStats;->numInserts:J

    move-object/from16 v0, p7

    iget-object v3, v0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v3, v3, Landroid/content/SyncStats;->numUpdates:J

    add-long/2addr v1, v3

    move-object/from16 v0, p7

    iget-object v3, v0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v3, v3, Landroid/content/SyncStats;->numDeletes:J

    add-long v8, v1, v3

    .line 477
    .local v8, numChangesAfter:J
    cmp-long v1, v8, v10

    if-nez v1, :cond_42

    .line 481
    .end local v8           #numChangesAfter:J
    .end local v10           #numChangesBefore:J
    :cond_41
    return-void

    .line 469
    .restart local v8       #numChangesAfter:J
    .restart local v10       #numChangesBefore:J
    :cond_42
    add-int/lit8 v7, v7, 0x1

    goto :goto_1
.end method

.method private resetSyncStateForFeed(Landroid/content/ContentProviderClient;Lcom/google/android/syncadapters/calendar/GDataSyncStateCalendar;Lcom/google/android/syncadapters/EntryAndEntityHandler;Ljava/lang/String;)V
    .registers 7
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1818
    iget-object v0, p2, Lcom/google/android/syncadapters/calendar/GDataSyncStateCalendar;->feedData:Landroid/os/Bundle;

    invoke-virtual {v0, p4}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 1819
    const-string v1, "feed_updated_time"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 1820
    const-string v1, "do_incremental_sync"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 1821
    const-string v1, "lastFetchedId"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 1822
    const-string v1, "lastFetchedIndex"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 1823
    const-string v1, "window_end"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 1824
    const-string v1, "new_window_end"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 1825
    invoke-virtual {p2, p1}, Lcom/google/android/syncadapters/calendar/GDataSyncStateCalendar;->updateInProvider(Landroid/content/ContentProviderClient;)V

    .line 1826
    return-void
.end method

.method private static rewriteUrlFromHttpToHttps(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .parameter

    .prologue
    .line 2805
    if-nez p0, :cond_14

    .line 2806
    const-string v0, "CalendarSyncAdapter"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 2807
    const-string v0, "CalendarSyncAdapter"

    const-string v1, "Cannot rewrite a NULL url"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2809
    :cond_12
    const/4 p0, 0x0

    .line 2817
    :cond_13
    :goto_13
    return-object p0

    .line 2811
    :cond_14
    const-string v0, "https://"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_13

    .line 2814
    const-string v0, "http://"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3d

    .line 2815
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid url parameter, unknown scheme: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2817
    :cond_3d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "https://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "http://"

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_13
.end method

.method static selectServerSyncMode(ZJLandroid/os/Bundle;)I
    .registers 13
    .parameter
    .parameter
    .parameter

    .prologue
    const-wide/16 v7, 0x0

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x3

    .line 2005
    const-string v3, "do_incremental_sync"

    invoke-virtual {p3, v3, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    .line 2007
    const-string v3, "window_end"

    invoke-virtual {p3, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v5

    .line 2008
    const-string v3, "feed_updated_time"

    invoke-virtual {p3, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_21

    const-string v3, "lastFetchedIndex"

    invoke-virtual {p3, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_34

    :cond_21
    move v3, v1

    .line 2012
    :goto_22
    if-nez v3, :cond_36

    .line 2013
    const-string v1, "CalendarSyncAdapter"

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_33

    .line 2014
    const-string v1, "CalendarSyncAdapter"

    const-string v2, "Sync mode: No last updated time present for feed, preparing for full sync"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2063
    :cond_33
    :goto_33
    return v0

    :cond_34
    move v3, v0

    .line 2008
    goto :goto_22

    .line 2018
    :cond_36
    if-eqz v4, :cond_e4

    .line 2020
    cmp-long v0, p1, v7

    if-gtz v0, :cond_4d

    .line 2021
    const-string v0, "CalendarSyncAdapter"

    invoke-static {v0, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_4b

    .line 2022
    const-string v0, "CalendarSyncAdapter"

    const-string v2, "Sync mode: No sliding window defined"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4b
    move v0, v1

    .line 2024
    goto :goto_33

    .line 2025
    :cond_4d
    cmp-long v0, v5, v7

    if-nez v0, :cond_62

    .line 2027
    const-string v0, "CalendarSyncAdapter"

    invoke-static {v0, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_60

    .line 2028
    const-string v0, "CalendarSyncAdapter"

    const-string v1, "Sync mode: Upgrading to sliding window sync"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2030
    :cond_60
    const/4 v0, 0x2

    goto :goto_33

    .line 2031
    :cond_62
    if-eqz p0, :cond_a1

    .line 2032
    const-string v0, "new_window_end"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v3

    .line 2034
    cmp-long v0, v3, v7

    if-lez v0, :cond_7f

    .line 2035
    const-string v0, "CalendarSyncAdapter"

    invoke-static {v0, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_7d

    .line 2036
    const-string v0, "CalendarSyncAdapter"

    const-string v2, "Sync mode: Already moving the sync window.  Ignoring request."

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7d
    move v0, v1

    .line 2038
    goto :goto_33

    .line 2042
    :cond_7f
    const-string v0, "CalendarSyncAdapter"

    invoke-static {v0, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_9f

    .line 2043
    const-string v0, "CalendarSyncAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Sync mode: Moving the sliding window to "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9f
    move v0, v2

    .line 2045
    goto :goto_33

    .line 2047
    :cond_a1
    cmp-long v0, p1, v5

    if-lez v0, :cond_d2

    .line 2048
    const-string v0, "CalendarSyncAdapter"

    invoke-static {v0, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_cf

    .line 2049
    const-string v0, "CalendarSyncAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Sync mode: Scheduling sliding window move from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2052
    :cond_cf
    const/4 v0, 0x4

    goto/16 :goto_33

    .line 2054
    :cond_d2
    const-string v0, "CalendarSyncAdapter"

    invoke-static {v0, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_e1

    .line 2055
    const-string v0, "CalendarSyncAdapter"

    const-string v2, "Sync mode: default incremental sync"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_e1
    move v0, v1

    .line 2057
    goto/16 :goto_33

    .line 2060
    :cond_e4
    const-string v0, "CalendarSyncAdapter"

    invoke-static {v0, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_f3

    .line 2061
    const-string v0, "CalendarSyncAdapter"

    const-string v2, "Sync mode: continuing full sync"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_f3
    move v0, v1

    .line 2063
    goto/16 :goto_33
.end method

.method private sendEntityToServer(Landroid/content/Entity;Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter$AuthInfo;Lcom/google/wireless/gdata2/client/GDataServiceClient;Landroid/content/ContentProviderClient;Lcom/google/android/syncadapters/EntryAndEntityHandler;Landroid/content/SyncResult;)V
    .registers 23
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/wireless/gdata2/parser/ParseException;,
            Lcom/google/wireless/gdata2/client/AuthenticationException;,
            Landroid/accounts/OperationCanceledException;,
            Ljava/io/IOException;,
            Lcom/google/wireless/gdata2/ConflictDetectedException;,
            Lcom/google/wireless/gdata2/client/ResourceUnavailableException;,
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1751
    invoke-virtual/range {p1 .. p1}, Landroid/content/Entity;->getEntityValues()Landroid/content/ContentValues;

    move-result-object v3

    .line 1752
    const-string v4, "original_id"

    invoke-virtual {v3, v4}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_21

    const-string v4, "original_id"

    invoke-virtual {v3, v4}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v4

    if-eqz v4, :cond_21

    .line 1754
    const-string v4, "original_sync_id"

    invoke-virtual {v3, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1755
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_21

    .line 1813
    :cond_20
    :goto_20
    return-void

    .line 1763
    :cond_21
    move-object/from16 v0, p2

    iget-object v3, v0, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter$AuthInfo;->account:Landroid/accounts/Account;

    const/4 v4, 0x1

    move-object/from16 v0, p5

    move-object/from16 v1, p1

    move-object/from16 v2, p4

    invoke-interface {v0, v1, v3, v2, v4}, Lcom/google/android/syncadapters/EntryAndEntityHandler;->convertEntityToEntry(Landroid/content/Entity;Landroid/accounts/Account;Landroid/content/ContentProviderClient;Z)Lcom/google/wireless/gdata2/data/Entry;

    move-result-object v3

    .line 1765
    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter$AuthInfo;->account:Landroid/accounts/Account;

    move-object/from16 v0, p0

    move-object/from16 v1, p5

    move-object/from16 v2, p4

    invoke-direct {v0, v3, v1, v4, v2}, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter;->getOperationFromEntry(Lcom/google/wireless/gdata2/data/Entry;Lcom/google/android/syncadapters/EntryAndEntityHandler;Landroid/accounts/Account;Landroid/content/ContentProviderClient;)Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter$Operation;

    move-result-object v3

    .line 1766
    if-nez v3, :cond_51

    .line 1767
    const-string v3, "CalendarSyncAdapter"

    const/4 v4, 0x2

    invoke-static {v3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_20

    .line 1768
    const-string v3, "CalendarSyncAdapter"

    const-string v4, "Cannot send Entity to server (null operation retrieved from Entry)"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_20

    .line 1773
    :cond_51
    invoke-interface/range {p5 .. p5}, Lcom/google/android/syncadapters/EntryAndEntityHandler;->getEntryClass()Ljava/lang/Class;

    move-result-object v4

    .line 1775
    :try_start_55
    const-string v5, "CalendarSyncAdapter"

    const/4 v6, 0x2

    invoke-static {v5, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_65

    .line 1776
    const-string v5, "CalendarSyncAdapter"

    const-string v6, "sending operation to server"

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1778
    :cond_65
    invoke-virtual/range {p2 .. p2}, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter$AuthInfo;->getAuthToken()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v3, v4, v1, v5}, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter;->doServerOperation(Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter$Operation;Ljava/lang/Class;Lcom/google/wireless/gdata2/client/GDataServiceClient;Ljava/lang/String;)V
    :try_end_70
    .catch Lcom/google/wireless/gdata2/client/AuthenticationException; {:try_start_55 .. :try_end_70} :catch_de

    .line 1786
    :goto_70
    const-string v4, "CalendarSyncAdapter"

    const/4 v5, 0x2

    invoke-static {v4, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_80

    .line 1787
    const-string v4, "CalendarSyncAdapter"

    const-string v5, "applying resulting entry to entity"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1789
    :cond_80
    invoke-virtual {v3}, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter$Operation;->getType()I

    move-result v4

    packed-switch v4, :pswitch_data_fe

    goto :goto_20

    .line 1795
    :goto_88
    :pswitch_88
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v4

    .line 1797
    :try_start_8c
    move-object/from16 v0, p2

    iget-object v5, v0, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter$AuthInfo;->account:Landroid/accounts/Account;

    const/4 v7, 0x0

    #getter for: Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter$Operation;->entry:Lcom/google/wireless/gdata2/data/Entry;
    invoke-static {v3}, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter$Operation;->access$200(Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter$Operation;)Lcom/google/wireless/gdata2/data/Entry;

    move-result-object v8

    const/4 v10, 0x1

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v3, p5

    move-object/from16 v6, p4

    move-object/from16 v9, p1

    move-object/from16 v11, p6

    invoke-interface/range {v3 .. v15}, Lcom/google/android/syncadapters/EntryAndEntityHandler;->applyEntryToEntity(Ljava/util/ArrayList;Landroid/accounts/Account;Landroid/content/ContentProviderClient;Ljava/util/Set;Lcom/google/wireless/gdata2/data/Entry;Landroid/content/Entity;ZLandroid/content/SyncResult;Landroid/net/Uri;Landroid/net/Uri;Landroid/net/Uri;Ljava/lang/Object;)V

    .line 1802
    move-object/from16 v0, p4

    invoke-virtual {v0, v4}, Landroid/content/ContentProviderClient;->applyBatch(Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    move-result-object v3

    .line 1803
    const-string v4, "CalendarSyncAdapter"

    const/4 v5, 0x2

    invoke-static {v4, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_20

    .line 1804
    const-string v4, "CalendarSyncAdapter"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "results are: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-static {v6, v3}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d2
    .catch Landroid/content/OperationApplicationException; {:try_start_8c .. :try_end_d2} :catch_d4
    .catch Landroid/os/RemoteException; {:try_start_8c .. :try_end_d2} :catch_f3

    goto/16 :goto_20

    .line 1806
    :catch_d4
    move-exception v3

    .line 1807
    const-string v4, "CalendarSyncAdapter"

    const-string v5, "error applying batch"

    invoke-static {v4, v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_20

    .line 1779
    :catch_de
    move-exception v5

    .line 1781
    invoke-virtual/range {p2 .. p2}, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter$AuthInfo;->invalidateAuthToken()V

    .line 1782
    invoke-virtual/range {p2 .. p2}, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter$AuthInfo;->getAuthToken()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v3, v4, v1, v5}, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter;->doServerOperation(Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter$Operation;Ljava/lang/Class;Lcom/google/wireless/gdata2/client/GDataServiceClient;Ljava/lang/String;)V

    goto :goto_70

    .line 1791
    :pswitch_ee
    const/4 v4, 0x0

    #setter for: Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter$Operation;->entry:Lcom/google/wireless/gdata2/data/Entry;
    invoke-static {v3, v4}, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter$Operation;->access$202(Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter$Operation;Lcom/google/wireless/gdata2/data/Entry;)Lcom/google/wireless/gdata2/data/Entry;

    goto :goto_88

    .line 1808
    :catch_f3
    move-exception v3

    .line 1809
    const-string v4, "CalendarSyncAdapter"

    const-string v5, "error applying batch"

    invoke-static {v4, v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_20

    .line 1789
    nop

    :pswitch_data_fe
    .packed-switch 0x1
        :pswitch_88
        :pswitch_88
        :pswitch_ee
    .end packed-switch
.end method

.method private skipEntry(Ljava/util/ArrayList;ILjava/lang/Throwable;)V
    .registers 6
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;I",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .prologue
    .line 2332
    const-string v0, "CalendarSyncAdapter"

    const-string v1, "Entry failed, skipping "

    invoke-static {v0, v1, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2333
    :goto_7
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, p2, :cond_17

    .line 2335
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_7

    .line 2337
    :cond_17
    return-void
.end method

.method private updateCalendarsFromServerFeed(Landroid/accounts/Account;Ljava/lang/String;ZLandroid/content/SyncResult;)V
    .registers 12
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/wireless/gdata2/client/AuthenticationException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    const-wide/16 v4, 0x1

    .line 1009
    iget-object v0, p0, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter;->mCalendarClient:Lcom/google/wireless/gdata2/calendar/client/CalendarClient;

    if-nez v0, :cond_f

    .line 1010
    const-string v0, "CalendarSyncAdapter"

    const-string v1, "Cannot fetch calendars -- no mCalendarClient."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1050
    :cond_e
    :goto_e
    return-void

    .line 1017
    :cond_f
    invoke-direct {p0, p1}, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter;->getCurrentCalendars(Landroid/accounts/Account;)Ljava/util/HashSet;

    move-result-object v0

    .line 1019
    :try_start_13
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter;->processAccountCalendars(Landroid/accounts/Account;Ljava/lang/String;ZLjava/util/HashSet;)V
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_16} :catch_3c
    .catch Lcom/google/wireless/gdata2/parser/ParseException; {:try_start_13 .. :try_end_16} :catch_5d
    .catch Lcom/google/wireless/gdata2/client/HttpException; {:try_start_13 .. :try_end_16} :catch_6d
    .catch Landroid/accounts/OperationCanceledException; {:try_start_13 .. :try_end_16} :catch_a4

    .line 1043
    sget-object v1, Landroid/provider/CalendarContract$Calendars;->CONTENT_URI:Landroid/net/Uri;

    .line 1044
    invoke-virtual {p0}, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 1045
    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_24
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 1047
    invoke-static {v1, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v2, v0, v6, v6}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_24

    .line 1020
    :catch_3c
    move-exception v0

    .line 1021
    const-string v1, "CalendarSyncAdapter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to get calendar accounts"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1022
    iget-object v0, p4, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v1, v0, Landroid/content/SyncStats;->numIoExceptions:J

    add-long/2addr v1, v4

    iput-wide v1, v0, Landroid/content/SyncStats;->numIoExceptions:J

    goto :goto_e

    .line 1024
    :catch_5d
    move-exception v0

    .line 1025
    const-string v1, "CalendarSyncAdapter"

    const-string v2, "Unable to get calendar accounts"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1026
    iget-object v0, p4, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v1, v0, Landroid/content/SyncStats;->numParseExceptions:J

    add-long/2addr v1, v4

    iput-wide v1, v0, Landroid/content/SyncStats;->numParseExceptions:J

    goto :goto_e

    .line 1028
    :catch_6d
    move-exception v0

    .line 1029
    const-string v1, "CalendarSyncAdapter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to get calendar accounts: HTTP error "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/google/wireless/gdata2/client/HttpException;->getStatusCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1030
    invoke-virtual {v0}, Lcom/google/wireless/gdata2/client/HttpException;->getStatusCode()I

    move-result v0

    const/16 v1, 0x1f7

    if-ne v0, v1, :cond_9b

    .line 1031
    iget-object v0, p4, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v1, v0, Landroid/content/SyncStats;->numIoExceptions:J

    add-long/2addr v1, v4

    iput-wide v1, v0, Landroid/content/SyncStats;->numIoExceptions:J

    goto/16 :goto_e

    .line 1033
    :cond_9b
    iget-object v0, p4, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v1, v0, Landroid/content/SyncStats;->numParseExceptions:J

    add-long/2addr v1, v4

    iput-wide v1, v0, Landroid/content/SyncStats;->numParseExceptions:J

    goto/16 :goto_e

    .line 1036
    :catch_a4
    move-exception v0

    .line 1037
    const-string v1, "CalendarSyncAdapter"

    const-string v2, "Unable to get calendar accounts"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_e
.end method

.method private updateProviderForInitialSync(Landroid/accounts/Account;Landroid/content/ContentProviderClient;Lcom/google/android/syncadapters/EntryAndEntityHandler;Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter$SyncInfo;)V
    .registers 11
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x3

    .line 1835
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1836
    const-string v1, "CalendarSyncAdapter"

    invoke-static {v1, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_28

    .line 1837
    const-string v1, "CalendarSyncAdapter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Performing initial sync on "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, p4, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter$SyncInfo;->calendarId:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1839
    :cond_28
    invoke-interface {p3}, Lcom/google/android/syncadapters/EntryAndEntityHandler;->getEtagColumnName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "local android etag magic value"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1841
    invoke-interface {p3, p1}, Lcom/google/android/syncadapters/EntryAndEntityHandler;->getEntityUri(Landroid/accounts/Account;)Landroid/net/Uri;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p3}, Lcom/google/android/syncadapters/EntryAndEntityHandler;->getSourceIdColumnName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " IS NOT NULL AND "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "calendar_id"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, p4, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter$SyncInfo;->calendarId:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p2, v1, v0, v2, v3}, Landroid/content/ContentProviderClient;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 1844
    const-string v1, "CalendarSyncAdapter"

    invoke-static {v1, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_8f

    .line 1845
    const-string v1, "CalendarSyncAdapter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Applied ETAG_MAGIC_VALUE to: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " rows for Calendar: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p4, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter$SyncInfo;->calendarId:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1848
    :cond_8f
    return-void
.end method

.method private updateSyncStateAfterFeedRead(Landroid/accounts/Account;Landroid/content/ContentProviderClient;Lcom/google/android/syncadapters/calendar/GDataSyncStateCalendar;Lcom/google/android/syncadapters/EntryAndEntityHandler;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter$SyncInfo;)V
    .registers 16
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Lcom/google/wireless/gdata2/parser/ParseException;
        }
    .end annotation

    .prologue
    .line 1854
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    .line 1856
    iget-object v1, p3, Lcom/google/android/syncadapters/calendar/GDataSyncStateCalendar;->feedData:Landroid/os/Bundle;

    invoke-virtual {v1, p6}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    .line 1857
    const-string v2, "lastFetchedId"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 1858
    const-string v2, "lastFetchedIndex"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 1860
    const-string v2, "new_window_end"

    const-wide/16 v3, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    .line 1862
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-lez v4, :cond_e5

    .line 1864
    const-string v4, "CalendarSyncAdapter"

    const/4 v5, 0x3

    invoke-static {v4, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_43

    .line 1865
    const-string v4, "CalendarSyncAdapter"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Sliding sync window advanced to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1867
    :cond_43
    const-string v4, "new_window_end"

    const-wide/16 v5, 0x0

    invoke-virtual {v1, v4, v5, v6}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1868
    const-string v4, "window_end"

    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1876
    :goto_4f
    const-string v2, "do_incremental_sync"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_b9

    .line 1878
    const-string v2, "CalendarSyncAdapter"

    const/4 v3, 0x3

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_68

    .line 1879
    const-string v2, "CalendarSyncAdapter"

    const-string v3, "switching from full to incremental"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1884
    :cond_68
    invoke-interface {p4, p1}, Lcom/google/android/syncadapters/EntryAndEntityHandler;->getEntityUri(Landroid/accounts/Account;)Landroid/net/Uri;

    move-result-object v2

    invoke-static {v2, p1}, Lcom/google/android/syncadapters/SyncAdapterUtils;->addQueryParameters(Landroid/net/Uri;Landroid/accounts/Account;)Landroid/net/Uri;

    move-result-object v2

    invoke-static {v2}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p4}, Lcom/google/android/syncadapters/EntryAndEntityHandler;->getEtagColumnName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "=? AND "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "calendar_id"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "=?"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "local android etag magic value"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    iget-wide v6, p7, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter$SyncInfo;->calendarId:J

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1893
    const-string v2, "do_incremental_sync"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1896
    :cond_b9
    const-string v2, "CalendarSyncAdapter"

    const/4 v3, 0x3

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_da

    .line 1897
    const-string v2, "CalendarSyncAdapter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Writing back feedSyncState: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1899
    :cond_da
    invoke-virtual {p3}, Lcom/google/android/syncadapters/calendar/GDataSyncStateCalendar;->newUpdateOperation()Landroid/content/ContentProviderOperation;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1902
    :try_start_e1
    invoke-virtual {p2, v0}, Landroid/content/ContentProviderClient;->applyBatch(Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    :try_end_e4
    .catch Landroid/content/OperationApplicationException; {:try_start_e1 .. :try_end_e4} :catch_ec

    .line 1906
    return-void

    .line 1874
    :cond_e5
    const-string v2, "feed_updated_time"

    invoke-virtual {v1, v2, p5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4f

    .line 1903
    :catch_ec
    move-exception v0

    .line 1904
    new-instance v1, Lcom/google/wireless/gdata2/parser/ParseException;

    const-string v2, "unable to update sync state after successful feed read"

    invoke-direct {v1, v2, v0}, Lcom/google/wireless/gdata2/parser/ParseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private upgradeToSlidingWindows(Landroid/os/Bundle;)V
    .registers 7
    .parameter

    .prologue
    .line 2577
    invoke-direct {p0}, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter;->getSyncWindowEnd()J

    move-result-wide v0

    .line 2578
    const-string v2, "CalendarSyncAdapter"

    const/4 v3, 0x3

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_25

    .line 2579
    const-string v2, "CalendarSyncAdapter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Upgrading to sliding windows sync: end is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2581
    :cond_25
    const-string v0, "window_end"

    invoke-direct {p0}, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter;->getSyncWindowEnd()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 2583
    return-void
.end method


# virtual methods
.method protected getCalendarAccessLevelFromEntry(B)I
    .registers 3
    .parameter "entryAccessLevel"

    .prologue
    .line 1599
    packed-switch p1, :pswitch_data_16

    .line 1619
    const/4 v0, 0x0

    .line 1621
    .local v0, accessLevel:I
    :goto_4
    return v0

    .line 1601
    .end local v0           #accessLevel:I
    :pswitch_5
    const/4 v0, 0x0

    .line 1602
    .restart local v0       #accessLevel:I
    goto :goto_4

    .line 1604
    .end local v0           #accessLevel:I
    :pswitch_7
    const/16 v0, 0xc8

    .line 1605
    .restart local v0       #accessLevel:I
    goto :goto_4

    .line 1607
    .end local v0           #accessLevel:I
    :pswitch_a
    const/16 v0, 0x64

    .line 1608
    .restart local v0       #accessLevel:I
    goto :goto_4

    .line 1610
    .end local v0           #accessLevel:I
    :pswitch_d
    const/16 v0, 0x258

    .line 1611
    .restart local v0       #accessLevel:I
    goto :goto_4

    .line 1613
    .end local v0           #accessLevel:I
    :pswitch_10
    const/16 v0, 0x2bc

    .line 1614
    .restart local v0       #accessLevel:I
    goto :goto_4

    .line 1616
    .end local v0           #accessLevel:I
    :pswitch_13
    const/16 v0, 0x320

    .line 1617
    .restart local v0       #accessLevel:I
    goto :goto_4

    .line 1599
    :pswitch_data_16
    .packed-switch 0x0
        :pswitch_5
        :pswitch_7
        :pswitch_a
        :pswitch_d
        :pswitch_10
        :pswitch_13
    .end packed-switch
.end method

.method protected getEntitySelectionFromHandler(Lcom/google/android/syncadapters/EntryAndEntityHandler;)Ljava/lang/String;
    .registers 3
    .parameter "handler"

    .prologue
    .line 631
    instance-of v0, p1, Lcom/google/android/syncadapters/calendar/EventHandler;

    if-eqz v0, :cond_b

    .line 632
    check-cast p1, Lcom/google/android/syncadapters/calendar/EventHandler;

    .end local p1
    invoke-virtual {p1}, Lcom/google/android/syncadapters/calendar/EventHandler;->getEntitySelection()Ljava/lang/String;

    move-result-object v0

    .line 637
    :goto_a
    return-object v0

    .line 634
    .restart local p1
    :cond_b
    instance-of v0, p1, Lcom/google/android/syncadapters/calendar/CalendarHandler;

    if-eqz v0, :cond_16

    .line 635
    check-cast p1, Lcom/google/android/syncadapters/calendar/CalendarHandler;

    .end local p1
    invoke-virtual {p1}, Lcom/google/android/syncadapters/calendar/CalendarHandler;->getEntitySelection()Ljava/lang/String;

    move-result-object v0

    goto :goto_a

    .line 637
    .restart local p1
    :cond_16
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public getServerDiffsOrig(Landroid/os/Bundle;Landroid/content/ContentProviderClient;Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter$AuthInfo;Landroid/content/SyncResult;)V
    .registers 28
    .parameter "extras"
    .parameter "provider"
    .parameter "authInfo"
    .parameter "syncResult"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Landroid/accounts/OperationCanceledException;,
            Ljava/io/IOException;,
            Lcom/google/wireless/gdata2/client/AuthenticationException;
        }
    .end annotation

    .prologue
    .line 928
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    .line 929
    .local v10, cr:Landroid/content/ContentResolver;
    if-eqz p1, :cond_38

    const-string v3, "feed"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_38

    const/16 v22, 0x1

    .line 930
    .local v22, syncingSingleFeed:Z
    :goto_16
    if-eqz p1, :cond_3b

    const-string v3, "metafeedonly"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3b

    const/16 v21, 0x1

    .line 932
    .local v21, syncingMetafeedOnly:Z
    :goto_24
    move-object/from16 v0, p3

    iget-object v4, v0, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter$AuthInfo;->account:Landroid/accounts/Account;

    .line 933
    .local v4, account:Landroid/accounts/Account;
    invoke-virtual/range {p3 .. p3}, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter$AuthInfo;->getAuthToken()Ljava/lang/String;

    move-result-object v5

    .line 935
    .local v5, authToken:Ljava/lang/String;
    if-eqz v22, :cond_59

    .line 936
    if-eqz v21, :cond_3e

    .line 937
    const-string v3, "CalendarSyncAdapter"

    const-string v6, "\'metafeedonly\' and \'feed\' extras both set. They are not compatible."

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 996
    :cond_37
    :goto_37
    return-void

    .line 929
    .end local v4           #account:Landroid/accounts/Account;
    .end local v5           #authToken:Ljava/lang/String;
    .end local v21           #syncingMetafeedOnly:Z
    .end local v22           #syncingSingleFeed:Z
    :cond_38
    const/16 v22, 0x0

    goto :goto_16

    .line 930
    .restart local v22       #syncingSingleFeed:Z
    :cond_3b
    const/16 v21, 0x0

    goto :goto_24

    .line 941
    .restart local v4       #account:Landroid/accounts/Account;
    .restart local v5       #authToken:Ljava/lang/String;
    .restart local v21       #syncingMetafeedOnly:Z
    :cond_3e
    const-string v3, "feed"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 943
    .local v8, feedUrl:Ljava/lang/String;
    const-string v3, "moveWindow"

    const/4 v6, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    .local v9, moveWindowSync:Z
    move-object/from16 v3, p0

    move-object/from16 v6, p2

    move-object/from16 v7, p4

    .line 945
    invoke-direct/range {v3 .. v9}, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter;->getServerDiffsForFeed(Landroid/accounts/Account;Ljava/lang/String;Landroid/content/ContentProviderClient;Landroid/content/SyncResult;Ljava/lang/String;Z)V

    goto :goto_37

    .line 955
    .end local v8           #feedUrl:Ljava/lang/String;
    .end local v9           #moveWindowSync:Z
    :cond_59
    move-object/from16 v0, p2

    invoke-static {v0, v4}, Lcom/google/android/syncadapters/calendar/GDataSyncStateCalendar;->getOrCreate(Landroid/content/ContentProviderClient;Landroid/accounts/Account;)Lcom/google/android/syncadapters/calendar/GDataSyncStateCalendar;

    move-result-object v20

    .line 957
    .local v20, syncState:Lcom/google/android/syncadapters/calendar/GDataSyncStateCalendar;
    invoke-virtual/range {v20 .. v20}, Lcom/google/android/syncadapters/calendar/GDataSyncStateCalendar;->isFirstSeen()Z

    move-result v17

    .line 958
    .local v17, firstSeen:Z
    move-object/from16 v0, p0

    move/from16 v1, v17

    move-object/from16 v2, p4

    invoke-direct {v0, v4, v5, v1, v2}, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter;->updateCalendarsFromServerFeed(Landroid/accounts/Account;Ljava/lang/String;ZLandroid/content/SyncResult;)V

    .line 959
    if-eqz v17, :cond_7b

    .line 960
    const/4 v3, 0x0

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Lcom/google/android/syncadapters/calendar/GDataSyncStateCalendar;->setFirstSeen(Z)V

    .line 961
    move-object/from16 v0, v20

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/google/android/syncadapters/calendar/GDataSyncStateCalendar;->updateInProvider(Landroid/content/ContentProviderClient;)V

    .line 964
    :cond_7b
    if-nez v21, :cond_37

    .line 970
    const/4 v3, 0x2

    new-array v14, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    iget-object v6, v4, Landroid/accounts/Account;->name:Ljava/lang/String;

    aput-object v6, v14, v3

    const/4 v3, 0x1

    iget-object v6, v4, Landroid/accounts/Account;->type:Ljava/lang/String;

    aput-object v6, v14, v3

    .line 971
    .local v14, accountSelectionArgs:[Ljava/lang/String;
    sget-object v11, Landroid/provider/CalendarContract$Calendars;->CONTENT_URI:Landroid/net/Uri;

    sget-object v12, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter;->CALENDARS_PROJECTION:[Ljava/lang/String;

    const-string v13, "account_name=? AND account_type=?"

    const/4 v15, 0x0

    invoke-virtual/range {v10 .. v15}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v16

    .line 975
    .local v16, cursor:Landroid/database/Cursor;
    new-instance v19, Landroid/os/Bundle;

    invoke-direct/range {v19 .. v19}, Landroid/os/Bundle;-><init>()V

    .line 978
    .local v19, syncExtras:Landroid/os/Bundle;
    :cond_9a
    :goto_9a
    :try_start_9a
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_dc

    .line 979
    sget v3, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter;->CALENDARS_PROJECTION_SYNC_EVENTS_INDEX:I

    move-object/from16 v0, v16

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    const/4 v6, 0x1

    if-ne v3, v6, :cond_d9

    const/16 v18, 0x1

    .line 980
    .local v18, syncEvents:Z
    :goto_ad
    sget v3, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter;->CALENDARS_PROJECTION_EVENTS_URL_INDEX:I

    move-object/from16 v0, v16

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 982
    .restart local v8       #feedUrl:Ljava/lang/String;
    if-eqz v18, :cond_9a

    .line 987
    invoke-virtual/range {v19 .. v19}, Landroid/os/Bundle;->clear()V

    .line 988
    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 989
    const-string v3, "feed"

    move-object/from16 v0, v19

    invoke-virtual {v0, v3, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 990
    sget-object v3, Landroid/provider/CalendarContract$Calendars;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v19

    invoke-static {v4, v3, v0}, Landroid/content/ContentResolver;->requestSync(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_d3
    .catchall {:try_start_9a .. :try_end_d3} :catchall_d4

    goto :goto_9a

    .line 994
    .end local v8           #feedUrl:Ljava/lang/String;
    .end local v18           #syncEvents:Z
    :catchall_d4
    move-exception v3

    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    throw v3

    .line 979
    :cond_d9
    const/16 v18, 0x0

    goto :goto_ad

    .line 994
    :cond_dc
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    goto/16 :goto_37
.end method

.method protected getStatsString(Ljava/lang/StringBuffer;Landroid/content/SyncResult;)V
    .registers 8
    .parameter
    .parameter

    .prologue
    const-wide/16 v3, 0x0

    .line 2433
    iget-object v0, p2, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v0, v0, Landroid/content/SyncStats;->numUpdates:J

    cmp-long v0, v0, v3

    if-lez v0, :cond_17

    .line 2434
    const-string v0, "u"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p2, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v1, v1, Landroid/content/SyncStats;->numUpdates:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 2436
    :cond_17
    iget-object v0, p2, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v0, v0, Landroid/content/SyncStats;->numInserts:J

    cmp-long v0, v0, v3

    if-lez v0, :cond_2c

    .line 2437
    const-string v0, "i"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p2, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v1, v1, Landroid/content/SyncStats;->numInserts:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 2439
    :cond_2c
    iget-object v0, p2, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v0, v0, Landroid/content/SyncStats;->numDeletes:J

    cmp-long v0, v0, v3

    if-lez v0, :cond_41

    .line 2440
    const-string v0, "d"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p2, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v1, v1, Landroid/content/SyncStats;->numDeletes:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 2442
    :cond_41
    invoke-virtual {p2}, Landroid/content/SyncResult;->toDebugString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2443
    return-void
.end method

.method protected hasTooManyChanges(JJ)Z
    .registers 15
    .parameter "numEntries"
    .parameter "numChanges"

    .prologue
    const-wide/16 v4, 0x0

    .line 612
    cmp-long v6, p1, v4

    if-nez v6, :cond_30

    .line 615
    .local v4, percentChanged:J
    :goto_6
    invoke-virtual {p0}, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "google_calendar_sync_num_allowed_simultaneous changes"

    const-wide/16 v8, 0x5

    invoke-static {v6, v7, v8, v9}, Lcom/google/android/gsf/Gservices;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v0

    .line 619
    .local v0, numAllowedSimultaneousChanges:J
    invoke-virtual {p0}, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "google_calendar_sync_percent_allowed_simultaneous_changes"

    const-wide/16 v8, 0x14

    invoke-static {v6, v7, v8, v9}, Lcom/google/android/gsf/Gservices;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v2

    .line 623
    .local v2, percentAllowedSimultaneousChanges:J
    cmp-long v6, p3, v0

    if-lez v6, :cond_36

    cmp-long v6, v4, v2

    if-lez v6, :cond_36

    const/4 v6, 0x1

    :goto_2f
    return v6

    .line 612
    .end local v0           #numAllowedSimultaneousChanges:J
    .end local v2           #percentAllowedSimultaneousChanges:J
    .end local v4           #percentChanged:J
    :cond_30
    const-wide/16 v6, 0x64

    mul-long/2addr v6, p3

    div-long v4, v6, p1

    goto :goto_6

    .line 623
    .restart local v0       #numAllowedSimultaneousChanges:J
    .restart local v2       #percentAllowedSimultaneousChanges:J
    .restart local v4       #percentChanged:J
    :cond_36
    const/4 v6, 0x0

    goto :goto_2f
.end method

.method public onAccountsUpdated([Landroid/accounts/Account;)V
    .registers 11
    .parameter

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v3, 0x0

    .line 1118
    invoke-static {}, Lcom/google/common/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v6

    .line 1119
    invoke-virtual {p0}, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1120
    sget-object v1, Landroid/provider/CalendarContract$Calendars;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter;->CALENDAR_KEY_COLUMNS:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 1122
    if-nez v1, :cond_23

    .line 1124
    const-string v0, "CalendarSyncAdapter"

    const-string v1, "Received an onAccountsChanged() but has not found any sync"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1164
    :goto_22
    return-void

    .line 1128
    :cond_23
    :goto_23
    :try_start_23
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_41

    .line 1129
    new-instance v0, Landroid/accounts/Account;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x1

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v2, v4}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1131
    invoke-virtual {v6, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_3b
    .catchall {:try_start_23 .. :try_end_3b} :catchall_3c

    goto :goto_23

    .line 1134
    :catchall_3c
    move-exception v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_41
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 1138
    new-instance v0, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter$2;

    invoke-direct {v0, p0, v6}, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter$2;-><init>(Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter;Ljava/util/HashSet;)V

    .line 1160
    invoke-virtual {p0}, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v1

    const-string v2, "com.google"

    new-array v4, v8, [Ljava/lang/String;

    const-string v5, "service_cl"

    aput-object v5, v4, v7

    invoke-virtual {v1, v2, v4, v0, v3}, Landroid/accounts/AccountManager;->getAccountsByTypeAndFeatures(Ljava/lang/String;[Ljava/lang/String;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    goto :goto_22
.end method

.method protected onLogSyncDetails(JJLandroid/content/SyncResult;)V
    .registers 11
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2423
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 2424
    invoke-virtual {p0, v0, p5}, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter;->getStatsString(Ljava/lang/StringBuffer;Landroid/content/SyncResult;)V

    .line 2425
    const v1, 0x318f9

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "CalendarSyncAdapter"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 2427
    return-void
.end method

.method public onPerformLoggedSync(Landroid/accounts/Account;Landroid/os/Bundle;Ljava/lang/String;Landroid/content/ContentProviderClient;Landroid/content/SyncResult;)V
    .registers 14
    .parameter "account"
    .parameter "extras"
    .parameter "authority"
    .parameter "provider"
    .parameter "syncResult"

    .prologue
    .line 298
    new-instance v1, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter$AuthInfo;

    iget-object v0, p0, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter;->mAccountManager:Landroid/accounts/AccountManager;

    const-string v2, "cl"

    invoke-direct {v1, v0, p1, v2}, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter$AuthInfo;-><init>(Landroid/accounts/AccountManager;Landroid/accounts/Account;Ljava/lang/String;)V

    .line 299
    .local v1, authInfo:Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter$AuthInfo;
    iget-object v0, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/common/GoogleTrafficStats;->getDomainType(Ljava/lang/String;)I

    move-result v7

    .line 300
    .local v7, tag:I
    invoke-static {v7}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    move-object v0, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 302
    :try_start_17
    invoke-direct/range {v0 .. v5}, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter;->innerPerformSync(Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter$AuthInfo;Landroid/os/Bundle;Ljava/lang/String;Landroid/content/ContentProviderClient;Landroid/content/SyncResult;)V

    .line 303
    invoke-direct {p0}, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter;->isCanceled()Z

    move-result v0

    if-eqz v0, :cond_49

    .line 304
    const-string v0, "CalendarSyncAdapter"

    const/4 v2, 0x2

    invoke-static {v0, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_49

    .line 305
    const-string v0, "CalendarSyncAdapter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Stopping Sync for Account: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v1, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter$AuthInfo;->account:Landroid/accounts/Account;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "as it is cancelled"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_49
    .catchall {:try_start_17 .. :try_end_49} :catchall_93
    .catch Landroid/os/RemoteException; {:try_start_17 .. :try_end_49} :catch_51
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_49} :catch_63
    .catch Lcom/google/wireless/gdata2/client/AuthenticationException; {:try_start_17 .. :try_end_49} :catch_75
    .catch Landroid/accounts/OperationCanceledException; {:try_start_17 .. :try_end_49} :catch_8a

    .line 320
    :cond_49
    const/4 v0, 0x1

    invoke-static {v7, v0}, Landroid/net/TrafficStats;->incrementOperationCount(II)V

    .line 321
    invoke-static {}, Landroid/net/TrafficStats;->clearThreadStatsTag()V

    .line 323
    :goto_50
    return-void

    .line 309
    :catch_51
    move-exception v6

    .line 310
    .local v6, e:Landroid/os/RemoteException;
    :try_start_52
    iget-object v0, p5, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v2, v0, Landroid/content/SyncStats;->numParseExceptions:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    iput-wide v2, v0, Landroid/content/SyncStats;->numParseExceptions:J
    :try_end_5b
    .catchall {:try_start_52 .. :try_end_5b} :catchall_93

    .line 320
    const/4 v0, 0x1

    invoke-static {v7, v0}, Landroid/net/TrafficStats;->incrementOperationCount(II)V

    .line 321
    invoke-static {}, Landroid/net/TrafficStats;->clearThreadStatsTag()V

    goto :goto_50

    .line 311
    .end local v6           #e:Landroid/os/RemoteException;
    :catch_63
    move-exception v6

    .line 312
    .local v6, e:Ljava/io/IOException;
    :try_start_64
    iget-object v0, p5, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v2, v0, Landroid/content/SyncStats;->numIoExceptions:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    iput-wide v2, v0, Landroid/content/SyncStats;->numIoExceptions:J
    :try_end_6d
    .catchall {:try_start_64 .. :try_end_6d} :catchall_93

    .line 320
    const/4 v0, 0x1

    invoke-static {v7, v0}, Landroid/net/TrafficStats;->incrementOperationCount(II)V

    .line 321
    invoke-static {}, Landroid/net/TrafficStats;->clearThreadStatsTag()V

    goto :goto_50

    .line 313
    .end local v6           #e:Ljava/io/IOException;
    :catch_75
    move-exception v6

    .line 314
    .local v6, e:Lcom/google/wireless/gdata2/client/AuthenticationException;
    :try_start_76
    invoke-virtual {v1}, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter$AuthInfo;->invalidateAuthToken()V

    .line 315
    iget-object v0, p5, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v2, v0, Landroid/content/SyncStats;->numAuthExceptions:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    iput-wide v2, v0, Landroid/content/SyncStats;->numAuthExceptions:J
    :try_end_82
    .catchall {:try_start_76 .. :try_end_82} :catchall_93

    .line 320
    const/4 v0, 0x1

    invoke-static {v7, v0}, Landroid/net/TrafficStats;->incrementOperationCount(II)V

    .line 321
    invoke-static {}, Landroid/net/TrafficStats;->clearThreadStatsTag()V

    goto :goto_50

    .line 316
    .end local v6           #e:Lcom/google/wireless/gdata2/client/AuthenticationException;
    :catch_8a
    move-exception v0

    .line 320
    const/4 v0, 0x1

    invoke-static {v7, v0}, Landroid/net/TrafficStats;->incrementOperationCount(II)V

    .line 321
    invoke-static {}, Landroid/net/TrafficStats;->clearThreadStatsTag()V

    goto :goto_50

    .line 320
    :catchall_93
    move-exception v0

    const/4 v2, 0x1

    invoke-static {v7, v2}, Landroid/net/TrafficStats;->incrementOperationCount(II)V

    .line 321
    invoke-static {}, Landroid/net/TrafficStats;->clearThreadStatsTag()V

    throw v0
.end method

.method processLocalChanges(Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter$AuthInfo;Landroid/content/ContentProviderClient;Landroid/content/SyncResult;Lcom/google/android/syncadapters/EntryAndEntityHandler;Z)V
    .registers 27
    .parameter "authInfo"
    .parameter "provider"
    .parameter "syncResult"
    .parameter "handler"
    .parameter "overrideTooManyDeletions"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/accounts/OperationCanceledException;,
            Lcom/google/wireless/gdata2/client/AuthenticationException;
        }
    .end annotation

    .prologue
    .line 657
    invoke-direct/range {p0 .. p0}, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter;->isCanceled()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 731
    :goto_6
    return-void

    .line 661
    :cond_7
    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter;->getEntitySelectionFromHandler(Lcom/google/android/syncadapters/EntryAndEntityHandler;)Ljava/lang/String;

    move-result-object v7

    .line 662
    .local v7, selection:Ljava/lang/String;
    if-nez v7, :cond_19

    .line 663
    const-string v3, "CalendarSyncAdapter"

    const-string v4, "EntityIterator cannot have a null selection parameter"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 672
    :cond_19
    :try_start_19
    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter$AuthInfo;->account:Landroid/accounts/Account;

    const/4 v6, 0x0

    const/4 v8, 0x0

    move-object/from16 v3, p4

    move-object/from16 v4, p2

    invoke-interface/range {v3 .. v8}, Lcom/google/android/syncadapters/EntryAndEntityHandler;->newEntityIterator(Landroid/content/ContentProviderClient;Landroid/accounts/Account;Ljava/lang/Long;Ljava/lang/String;[Ljava/lang/String;)Landroid/content/EntityIterator;
    :try_end_26
    .catch Landroid/os/RemoteException; {:try_start_19 .. :try_end_26} :catch_52

    move-result-object v19

    .line 675
    .local v19, iterator:Landroid/content/EntityIterator;
    :try_start_27
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter$AuthInfo;->account:Landroid/accounts/Account;

    move-object/from16 v0, p4

    invoke-interface {v0, v3}, Lcom/google/android/syncadapters/EntryAndEntityHandler;->getEntityUri(Landroid/accounts/Account;)Landroid/net/Uri;

    move-result-object v17

    .line 676
    .local v17, entityUri:Landroid/net/Uri;
    if-nez p5, :cond_de

    if-eqz v17, :cond_de

    .line 677
    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter;->getCount(Landroid/content/ContentProviderClient;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v20

    .line 679
    .local v20, total:I
    const/4 v15, 0x0

    .line 680
    .local v15, deletes:I
    :cond_42
    :goto_42
    invoke-interface/range {v19 .. v19}, Landroid/content/EntityIterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_85

    .line 681
    invoke-direct/range {p0 .. p0}, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter;->isCanceled()Z
    :try_end_4b
    .catchall {:try_start_27 .. :try_end_4b} :catchall_12e

    move-result v3

    if-eqz v3, :cond_5f

    .line 725
    :try_start_4e
    invoke-interface/range {v19 .. v19}, Landroid/content/EntityIterator;->close()V
    :try_end_51
    .catch Landroid/os/RemoteException; {:try_start_4e .. :try_end_51} :catch_52

    goto :goto_6

    .line 727
    .end local v15           #deletes:I
    .end local v17           #entityUri:Landroid/net/Uri;
    .end local v19           #iterator:Landroid/content/EntityIterator;
    .end local v20           #total:I
    :catch_52
    move-exception v16

    .line 729
    .local v16, e:Landroid/os/RemoteException;
    move-object/from16 v0, p3

    iget-object v3, v0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v4, v3, Landroid/content/SyncStats;->numParseExceptions:J

    const-wide/16 v10, 0x1

    add-long/2addr v4, v10

    iput-wide v4, v3, Landroid/content/SyncStats;->numParseExceptions:J

    goto :goto_6

    .line 684
    .end local v16           #e:Landroid/os/RemoteException;
    .restart local v15       #deletes:I
    .restart local v17       #entityUri:Landroid/net/Uri;
    .restart local v19       #iterator:Landroid/content/EntityIterator;
    .restart local v20       #total:I
    :cond_5f
    :try_start_5f
    invoke-interface/range {v19 .. v19}, Landroid/content/EntityIterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/Entity;

    .line 685
    .local v9, entity:Landroid/content/Entity;
    invoke-virtual {v9}, Landroid/content/Entity;->getEntityValues()Landroid/content/ContentValues;

    move-result-object v3

    invoke-interface/range {p4 .. p4}, Lcom/google/android/syncadapters/EntryAndEntityHandler;->getDeletedColumnName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-eqz v3, :cond_82

    const/16 v18, 0x1

    .line 687
    .local v18, isDeleted:Z
    :goto_7d
    if-eqz v18, :cond_42

    .line 688
    add-int/lit8 v15, v15, 0x1

    goto :goto_42

    .line 685
    .end local v18           #isDeleted:Z
    :cond_82
    const/16 v18, 0x0

    goto :goto_7d

    .line 691
    .end local v9           #entity:Landroid/content/Entity;
    :cond_85
    move/from16 v0, v20

    int-to-long v3, v0

    int-to-long v5, v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v5, v6}, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter;->hasTooManyChanges(JJ)Z

    move-result v3

    if-eqz v3, :cond_db

    .line 692
    const-string v3, "CalendarSyncAdapter"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "runSyncLoop: Too many deletions were found in provider "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", not doing any more updates"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 694
    move-object/from16 v0, p3

    iget-object v3, v0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    invoke-virtual {v3}, Landroid/content/SyncStats;->clear()V

    .line 695
    move-object/from16 v0, p3

    iget-object v3, v0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    move/from16 v0, v20

    int-to-long v4, v0

    iput-wide v4, v3, Landroid/content/SyncStats;->numEntries:J

    .line 696
    move-object/from16 v0, p3

    iget-object v3, v0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    int-to-long v4, v15

    iput-wide v4, v3, Landroid/content/SyncStats;->numDeletes:J

    .line 697
    const/4 v3, 0x1

    move-object/from16 v0, p3

    iput-boolean v3, v0, Landroid/content/SyncResult;->tooManyDeletions:Z

    .line 698
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z
    :try_end_d6
    .catchall {:try_start_5f .. :try_end_d6} :catchall_12e

    .line 725
    :try_start_d6
    invoke-interface/range {v19 .. v19}, Landroid/content/EntityIterator;->close()V
    :try_end_d9
    .catch Landroid/os/RemoteException; {:try_start_d6 .. :try_end_d9} :catch_52

    goto/16 :goto_6

    .line 701
    :cond_db
    :try_start_db
    invoke-interface/range {v19 .. v19}, Landroid/content/EntityIterator;->reset()V

    .line 704
    .end local v15           #deletes:I
    .end local v20           #total:I
    :cond_de
    :goto_de
    invoke-interface/range {v19 .. v19}, Landroid/content/EntityIterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_16b

    .line 705
    invoke-direct/range {p0 .. p0}, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter;->isCanceled()Z
    :try_end_e7
    .catchall {:try_start_db .. :try_end_e7} :catchall_12e

    move-result v3

    if-eqz v3, :cond_ef

    .line 725
    :try_start_ea
    invoke-interface/range {v19 .. v19}, Landroid/content/EntityIterator;->close()V
    :try_end_ed
    .catch Landroid/os/RemoteException; {:try_start_ea .. :try_end_ed} :catch_52

    goto/16 :goto_6

    .line 708
    :cond_ef
    :try_start_ef
    invoke-interface/range {v19 .. v19}, Landroid/content/EntityIterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/Entity;
    :try_end_f5
    .catchall {:try_start_ef .. :try_end_f5} :catchall_12e

    .line 710
    .restart local v9       #entity:Landroid/content/Entity;
    :try_start_f5
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter;->mCalendarClient:Lcom/google/wireless/gdata2/calendar/client/CalendarClient;

    move-object/from16 v8, p0

    move-object/from16 v10, p1

    move-object/from16 v12, p2

    move-object/from16 v13, p4

    move-object/from16 v14, p3

    invoke-direct/range {v8 .. v14}, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter;->sendEntityToServer(Landroid/content/Entity;Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter$AuthInfo;Lcom/google/wireless/gdata2/client/GDataServiceClient;Landroid/content/ContentProviderClient;Lcom/google/android/syncadapters/EntryAndEntityHandler;Landroid/content/SyncResult;)V
    :try_end_106
    .catchall {:try_start_f5 .. :try_end_106} :catchall_12e
    .catch Lcom/google/wireless/gdata2/parser/ParseException; {:try_start_f5 .. :try_end_106} :catch_107
    .catch Ljava/io/IOException; {:try_start_f5 .. :try_end_106} :catch_133
    .catch Lcom/google/wireless/gdata2/ConflictDetectedException; {:try_start_f5 .. :try_end_106} :catch_140
    .catch Lcom/google/wireless/gdata2/client/ResourceUnavailableException; {:try_start_f5 .. :try_end_106} :catch_14d

    goto :goto_de

    .line 712
    :catch_107
    move-exception v16

    .line 713
    .local v16, e:Lcom/google/wireless/gdata2/parser/ParseException;
    :try_start_108
    const-string v3, "CalendarSyncAdapter"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error with entity "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v16

    invoke-static {v3, v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 714
    move-object/from16 v0, p3

    iget-object v3, v0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v4, v3, Landroid/content/SyncStats;->numParseExceptions:J

    const-wide/16 v10, 0x1

    add-long/2addr v4, v10

    iput-wide v4, v3, Landroid/content/SyncStats;->numParseExceptions:J
    :try_end_12d
    .catchall {:try_start_108 .. :try_end_12d} :catchall_12e

    goto :goto_de

    .line 725
    .end local v9           #entity:Landroid/content/Entity;
    .end local v16           #e:Lcom/google/wireless/gdata2/parser/ParseException;
    .end local v17           #entityUri:Landroid/net/Uri;
    :catchall_12e
    move-exception v3

    :try_start_12f
    invoke-interface/range {v19 .. v19}, Landroid/content/EntityIterator;->close()V

    throw v3
    :try_end_133
    .catch Landroid/os/RemoteException; {:try_start_12f .. :try_end_133} :catch_52

    .line 715
    .restart local v9       #entity:Landroid/content/Entity;
    .restart local v17       #entityUri:Landroid/net/Uri;
    :catch_133
    move-exception v16

    .line 716
    .local v16, e:Ljava/io/IOException;
    :try_start_134
    move-object/from16 v0, p3

    iget-object v3, v0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v4, v3, Landroid/content/SyncStats;->numIoExceptions:J

    const-wide/16 v10, 0x1

    add-long/2addr v4, v10

    iput-wide v4, v3, Landroid/content/SyncStats;->numIoExceptions:J

    goto :goto_de

    .line 717
    .end local v16           #e:Ljava/io/IOException;
    :catch_140
    move-exception v16

    .line 718
    .local v16, e:Lcom/google/wireless/gdata2/ConflictDetectedException;
    move-object/from16 v0, p3

    iget-object v3, v0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v4, v3, Landroid/content/SyncStats;->numConflictDetectedExceptions:J

    const-wide/16 v10, 0x1

    add-long/2addr v4, v10

    iput-wide v4, v3, Landroid/content/SyncStats;->numConflictDetectedExceptions:J

    goto :goto_de

    .line 719
    .end local v16           #e:Lcom/google/wireless/gdata2/ConflictDetectedException;
    :catch_14d
    move-exception v16

    .line 720
    .local v16, e:Lcom/google/wireless/gdata2/client/ResourceUnavailableException;
    move-object/from16 v0, p3

    iget-wide v3, v0, Landroid/content/SyncResult;->delayUntil:J

    invoke-virtual/range {v16 .. v16}, Lcom/google/wireless/gdata2/client/ResourceUnavailableException;->getRetryAfter()J

    move-result-wide v5

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    move-object/from16 v0, p3

    iput-wide v3, v0, Landroid/content/SyncResult;->delayUntil:J

    .line 721
    move-object/from16 v0, p3

    iget-object v3, v0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v4, v3, Landroid/content/SyncStats;->numIoExceptions:J

    const-wide/16 v10, 0x1

    add-long/2addr v4, v10

    iput-wide v4, v3, Landroid/content/SyncStats;->numIoExceptions:J
    :try_end_169
    .catchall {:try_start_134 .. :try_end_169} :catchall_12e

    goto/16 :goto_de

    .line 725
    .end local v9           #entity:Landroid/content/Entity;
    .end local v16           #e:Lcom/google/wireless/gdata2/client/ResourceUnavailableException;
    :cond_16b
    :try_start_16b
    invoke-interface/range {v19 .. v19}, Landroid/content/EntityIterator;->close()V
    :try_end_16e
    .catch Landroid/os/RemoteException; {:try_start_16b .. :try_end_16e} :catch_52

    goto/16 :goto_6
.end method
