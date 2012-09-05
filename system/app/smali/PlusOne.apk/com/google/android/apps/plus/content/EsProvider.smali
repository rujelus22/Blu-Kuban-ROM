.class public Lcom/google/android/apps/plus/content/EsProvider;
.super Landroid/content/ContentProvider;
.source "EsProvider.java"


# static fields
.field private static final ACCOUNTS_PROJECTION_MAP:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final ACCOUNT_STATUS_URI:Landroid/net/Uri;

.field private static final ACTIVITIES_BY_CIRCLE_ID_URI:Landroid/net/Uri;

.field private static final ACTIVITIES_STREAM_VIEW_URI:Landroid/net/Uri;

.field public static final ACTIVITIES_URI:Landroid/net/Uri;

.field private static final ACTIVITIES_VIEW_PROJECTION_MAP:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final ACTIVITY_SUMMARY_PROJECTION_MAP:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final ACTIVITY_SUMMARY_URI:Landroid/net/Uri;

.field public static final ACTIVITY_VIEW_BY_ACTIVITY_ID_URI:Landroid/net/Uri;

.field public static final ACTIVITY_VIEW_URI:Landroid/net/Uri;

.field private static final AD_PLUS_ONES_PROJECTION_MAP:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final AD_PLUS_ONES_URI:Landroid/net/Uri;

.field public static final ALBUM_VIEW_BY_ALBUM_AND_OWNER_URI:Landroid/net/Uri;

.field public static final ALBUM_VIEW_BY_OWNER_URI:Landroid/net/Uri;

.field private static final ALBUM_VIEW_MAP:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final AVATARS_PROJECTION_MAP:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final AVATARS_URI:Landroid/net/Uri;

.field private static final CIRCLES_PROJECTION_MAP:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final CIRCLES_URI:Landroid/net/Uri;

.field public static final COMMENTS_VIEW_BY_ACTIVITY_ID_URI:Landroid/net/Uri;

.field private static final COMMENTS_VIEW_PROJECTION_MAP:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final COMMENTS_VIEW_URI:Landroid/net/Uri;

.field public static final CONTACTS_BY_CIRCLE_ID_URI:Landroid/net/Uri;

.field private static final CONTACTS_PROJECTION_MAP:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final CONTACTS_QUERY_URI:Landroid/net/Uri;

.field private static final CONTACTS_SEARCH_PROJECTION_MAP:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final CONTACTS_SEARCH_WITH_PHONES_PROJECTION_MAP:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final CONTACTS_URI:Landroid/net/Uri;

.field public static final CONTACT_BY_PERSON_ID_URI:Landroid/net/Uri;

.field private static final CONVERSATIONS_PROJECTION_MAP:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final CONVERSATIONS_URI:Landroid/net/Uri;

.field private static final FAVICONS_PROJECTION_MAP:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final FAVICONS_URI:Landroid/net/Uri;

.field private static final LOCATION_QUERIES_VIEW_PROJECTION_MAP:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final LOCATION_QUERIES_VIEW_URI:Landroid/net/Uri;

.field private static final MESSAGES_BY_CONVERSATION_URI:Landroid/net/Uri;

.field private static final MESSAGES_PROJECTION_MAP:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final MESSAGE_NOTIFICATIONS_PROJECTION_MAP:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final MESSAGE_NOTIFICATIONS_URI:Landroid/net/Uri;

.field private static final NOTIFICATIONS_PROJECTION_MAP:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final NOTIFICATIONS_URI:Landroid/net/Uri;

.field private static final PARTICIPANTS_PROJECTION_MAP:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final PARTICIPANTS_URI:Landroid/net/Uri;

.field private static final PHOTOS_HOME_MAP:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final PHOTOS_HOME_URI:Landroid/net/Uri;

.field public static final PHOTO_BY_ACTIVITY_ID_URI:Landroid/net/Uri;

.field public static final PHOTO_BY_ALBUM_URI:Landroid/net/Uri;

.field public static final PHOTO_BY_CIRCLE_ID_URI:Landroid/net/Uri;

.field public static final PHOTO_BY_NULL_CIRCLE_ID_URI:Landroid/net/Uri;

.field public static final PHOTO_BY_PHOTO_ID_URI:Landroid/net/Uri;

.field public static final PHOTO_BY_STREAM_ID_AND_OWNER_ID_URI:Landroid/net/Uri;

.field public static final PHOTO_COMMENTS_BY_PHOTO_ID_URI:Landroid/net/Uri;

.field private static final PHOTO_COMMENTS_MAP:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final PHOTO_NOTIFICATION_COUNT_URI:Landroid/net/Uri;

.field private static final PHOTO_NOTIFICATION_MAP:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final PHOTO_OF_USER_ID_URI:Landroid/net/Uri;

.field public static final PHOTO_SHAPES_BY_PHOTO_ID_URI:Landroid/net/Uri;

.field private static final PHOTO_SHAPE_VIEW_MAP:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final PHOTO_URI:Landroid/net/Uri;

.field private static final PHOTO_VIEW_ACTIVITY_MAP:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final PHOTO_VIEW_ALBUM_MAP:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final PHOTO_VIEW_CIRCLE_MAP:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final PHOTO_VIEW_MAP:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final PHOTO_VIEW_OF_USER_MAP:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final PHOTO_VIEW_STREAM_MAP:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final PROFILES_PROJECTION_MAP:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final PROFILES_URI:Landroid/net/Uri;

.field public static final SUGGESTED_PEOPLE_URI:Landroid/net/Uri;

.field private static final URI_MATCHER:Landroid/content/UriMatcher;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/16 v4, 0x4a

    .line 1520
    const-string v0, "content://com.google.android.apps.plus.content.EsProvider/account_status"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/plus/content/EsProvider;->ACCOUNT_STATUS_URI:Landroid/net/Uri;

    .line 1522
    const-string v0, "content://com.google.android.apps.plus.content.EsProvider/activities"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/plus/content/EsProvider;->ACTIVITIES_URI:Landroid/net/Uri;

    .line 1523
    const-string v0, "content://com.google.android.apps.plus.content.EsProvider/activities_stream_view"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/plus/content/EsProvider;->ACTIVITIES_STREAM_VIEW_URI:Landroid/net/Uri;

    .line 1524
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/google/android/apps/plus/content/EsProvider;->ACTIVITIES_STREAM_VIEW_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_by_circle"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/plus/content/EsProvider;->ACTIVITIES_BY_CIRCLE_ID_URI:Landroid/net/Uri;

    .line 1526
    const-string v0, "content://com.google.android.apps.plus.content.EsProvider/activities/summary"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/plus/content/EsProvider;->ACTIVITY_SUMMARY_URI:Landroid/net/Uri;

    .line 1528
    const-string v0, "content://com.google.android.apps.plus.content.EsProvider/activity_view"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/plus/content/EsProvider;->ACTIVITY_VIEW_URI:Landroid/net/Uri;

    .line 1529
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/google/android/apps/plus/content/EsProvider;->ACTIVITY_VIEW_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/activity"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/plus/content/EsProvider;->ACTIVITY_VIEW_BY_ACTIVITY_ID_URI:Landroid/net/Uri;

    .line 1531
    const-string v0, "content://com.google.android.apps.plus.content.EsProvider/comments_view"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/plus/content/EsProvider;->COMMENTS_VIEW_URI:Landroid/net/Uri;

    .line 1532
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/google/android/apps/plus/content/EsProvider;->COMMENTS_VIEW_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/activity"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/plus/content/EsProvider;->COMMENTS_VIEW_BY_ACTIVITY_ID_URI:Landroid/net/Uri;

    .line 1534
    const-string v0, "content://com.google.android.apps.plus.content.EsProvider/location_queries_view"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/plus/content/EsProvider;->LOCATION_QUERIES_VIEW_URI:Landroid/net/Uri;

    .line 1536
    const-string v0, "content://com.google.android.apps.plus.content.EsProvider/notifications"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/plus/content/EsProvider;->NOTIFICATIONS_URI:Landroid/net/Uri;

    .line 1538
    const-string v0, "content://com.google.android.apps.plus.content.EsProvider/conversations"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/plus/content/EsProvider;->CONVERSATIONS_URI:Landroid/net/Uri;

    .line 1540
    const-string v0, "content://com.google.android.apps.plus.content.EsProvider/message_notifications_view"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/plus/content/EsProvider;->MESSAGE_NOTIFICATIONS_URI:Landroid/net/Uri;

    .line 1542
    const-string v0, "content://com.google.android.apps.plus.content.EsProvider/messages/conversation"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/plus/content/EsProvider;->MESSAGES_BY_CONVERSATION_URI:Landroid/net/Uri;

    .line 1544
    const-string v0, "content://com.google.android.apps.plus.content.EsProvider/participants"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/plus/content/EsProvider;->PARTICIPANTS_URI:Landroid/net/Uri;

    .line 1546
    const-string v0, "content://com.google.android.apps.plus.content.EsProvider/circles"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/plus/content/EsProvider;->CIRCLES_URI:Landroid/net/Uri;

    .line 1547
    const-string v0, "content://com.google.android.apps.plus.content.EsProvider/contacts"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/plus/content/EsProvider;->CONTACTS_URI:Landroid/net/Uri;

    .line 1548
    const-string v0, "content://com.google.android.apps.plus.content.EsProvider/contacts/id"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/plus/content/EsProvider;->CONTACT_BY_PERSON_ID_URI:Landroid/net/Uri;

    .line 1550
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/google/android/apps/plus/content/EsProvider;->CONTACTS_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/circle"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/plus/content/EsProvider;->CONTACTS_BY_CIRCLE_ID_URI:Landroid/net/Uri;

    .line 1551
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/google/android/apps/plus/content/EsProvider;->CONTACTS_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/query"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/plus/content/EsProvider;->CONTACTS_QUERY_URI:Landroid/net/Uri;

    .line 1552
    const-string v0, "content://com.google.android.apps.plus.content.EsProvider/contacts/suggested"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/plus/content/EsProvider;->SUGGESTED_PEOPLE_URI:Landroid/net/Uri;

    .line 1553
    const-string v0, "content://com.google.android.apps.plus.content.EsProvider/avatars"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/plus/content/EsProvider;->AVATARS_URI:Landroid/net/Uri;

    .line 1554
    const-string v0, "content://com.google.android.apps.plus.content.EsProvider/profiles"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/plus/content/EsProvider;->PROFILES_URI:Landroid/net/Uri;

    .line 1555
    const-string v0, "content://com.google.android.apps.plus.content.EsProvider/favicons"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/plus/content/EsProvider;->FAVICONS_URI:Landroid/net/Uri;

    .line 1558
    const-string v0, "content://com.google.android.apps.plus.content.EsProvider/photos_home"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/plus/content/EsProvider;->PHOTOS_HOME_URI:Landroid/net/Uri;

    .line 1559
    const-string v0, "content://com.google.android.apps.plus.content.EsProvider/album_view_by_user"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/plus/content/EsProvider;->ALBUM_VIEW_BY_OWNER_URI:Landroid/net/Uri;

    .line 1560
    const-string v0, "content://com.google.android.apps.plus.content.EsProvider/album_view_by_album_and_owner"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/plus/content/EsProvider;->ALBUM_VIEW_BY_ALBUM_AND_OWNER_URI:Landroid/net/Uri;

    .line 1565
    const-string v0, "content://com.google.android.apps.plus.content.EsProvider/photo_view"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/plus/content/EsProvider;->PHOTO_URI:Landroid/net/Uri;

    .line 1566
    const-string v0, "content://com.google.android.apps.plus.content.EsProvider/photo_view_by_photo"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/plus/content/EsProvider;->PHOTO_BY_PHOTO_ID_URI:Landroid/net/Uri;

    .line 1568
    const-string v0, "content://com.google.android.apps.plus.content.EsProvider/photo_view_by_album"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/plus/content/EsProvider;->PHOTO_BY_ALBUM_URI:Landroid/net/Uri;

    .line 1569
    const-string v0, "content://com.google.android.apps.plus.content.EsProvider/photo_view_by_null_circle"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/plus/content/EsProvider;->PHOTO_BY_NULL_CIRCLE_ID_URI:Landroid/net/Uri;

    .line 1570
    const-string v0, "content://com.google.android.apps.plus.content.EsProvider/photo_view_by_circle"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/plus/content/EsProvider;->PHOTO_BY_CIRCLE_ID_URI:Landroid/net/Uri;

    .line 1571
    const-string v0, "content://com.google.android.apps.plus.content.EsProvider/photo_view_of_user_by_user"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/plus/content/EsProvider;->PHOTO_OF_USER_ID_URI:Landroid/net/Uri;

    .line 1572
    const-string v0, "content://com.google.android.apps.plus.content.EsProvider/photo_view_by_stream_and_owner"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/plus/content/EsProvider;->PHOTO_BY_STREAM_ID_AND_OWNER_ID_URI:Landroid/net/Uri;

    .line 1573
    const-string v0, "content://com.google.android.apps.plus.content.EsProvider/photo_view_by_activity"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/plus/content/EsProvider;->PHOTO_BY_ACTIVITY_ID_URI:Landroid/net/Uri;

    .line 1574
    const-string v0, "content://com.google.android.apps.plus.content.EsProvider/photo_notification_count"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/plus/content/EsProvider;->PHOTO_NOTIFICATION_COUNT_URI:Landroid/net/Uri;

    .line 1575
    const-string v0, "content://com.google.android.apps.plus.content.EsProvider/photo_comment_by_photo"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/plus/content/EsProvider;->PHOTO_COMMENTS_BY_PHOTO_ID_URI:Landroid/net/Uri;

    .line 1576
    const-string v0, "content://com.google.android.apps.plus.content.EsProvider/photo_shape_view_by_photo"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/plus/content/EsProvider;->PHOTO_SHAPES_BY_PHOTO_ID_URI:Landroid/net/Uri;

    .line 1578
    const-string v0, "content://com.google.android.apps.plus.content.EsProvider/ad_plus_ones"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/plus/content/EsProvider;->AD_PLUS_ONES_URI:Landroid/net/Uri;

    .line 1657
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lcom/google/android/apps/plus/content/EsProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    .line 1659
    sget-object v0, Lcom/google/android/apps/plus/content/EsProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.google.android.apps.plus.content.EsProvider"

    const-string v2, "account_status"

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1661
    sget-object v0, Lcom/google/android/apps/plus/content/EsProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.google.android.apps.plus.content.EsProvider"

    const-string v2, "activities"

    const/16 v3, 0x14

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1662
    sget-object v0, Lcom/google/android/apps/plus/content/EsProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.google.android.apps.plus.content.EsProvider"

    const-string v2, "activity_view/activity/*"

    const/16 v3, 0x16

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1663
    sget-object v0, Lcom/google/android/apps/plus/content/EsProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.google.android.apps.plus.content.EsProvider"

    const-string v2, "activities_stream_view/stream/*"

    const/16 v3, 0x15

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1664
    sget-object v0, Lcom/google/android/apps/plus/content/EsProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.google.android.apps.plus.content.EsProvider"

    const-string v2, "activities_stream_view_by_circle/*"

    const/16 v3, 0x17

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1667
    sget-object v0, Lcom/google/android/apps/plus/content/EsProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.google.android.apps.plus.content.EsProvider"

    const-string v2, "activities/summary"

    const/16 v3, 0x18

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1669
    sget-object v0, Lcom/google/android/apps/plus/content/EsProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.google.android.apps.plus.content.EsProvider"

    const-string v2, "comments_view/activity/*"

    const/16 v3, 0x1e

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1671
    sget-object v0, Lcom/google/android/apps/plus/content/EsProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.google.android.apps.plus.content.EsProvider"

    const-string v2, "location_queries_view/query/*"

    const/16 v3, 0x28

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1673
    sget-object v0, Lcom/google/android/apps/plus/content/EsProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.google.android.apps.plus.content.EsProvider"

    const-string v2, "notifications"

    const/16 v3, 0x32

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1675
    sget-object v0, Lcom/google/android/apps/plus/content/EsProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.google.android.apps.plus.content.EsProvider"

    const-string v2, "circles"

    const/16 v3, 0x3c

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1677
    sget-object v0, Lcom/google/android/apps/plus/content/EsProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.google.android.apps.plus.content.EsProvider"

    const-string v2, "contacts"

    const/16 v3, 0x46

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1678
    sget-object v0, Lcom/google/android/apps/plus/content/EsProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.google.android.apps.plus.content.EsProvider"

    const-string v2, "contacts/circle/*"

    const/16 v3, 0x47

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1679
    sget-object v0, Lcom/google/android/apps/plus/content/EsProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.google.android.apps.plus.content.EsProvider"

    const-string v2, "contacts/query/*"

    invoke-virtual {v0, v1, v2, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1680
    sget-object v0, Lcom/google/android/apps/plus/content/EsProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.google.android.apps.plus.content.EsProvider"

    const-string v2, "contacts/query"

    invoke-virtual {v0, v1, v2, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1681
    sget-object v0, Lcom/google/android/apps/plus/content/EsProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.google.android.apps.plus.content.EsProvider"

    const-string v2, "contacts/id/*"

    const/16 v3, 0x48

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1682
    sget-object v0, Lcom/google/android/apps/plus/content/EsProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.google.android.apps.plus.content.EsProvider"

    const-string v2, "contacts/suggested"

    const/16 v3, 0x49

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1684
    sget-object v0, Lcom/google/android/apps/plus/content/EsProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.google.android.apps.plus.content.EsProvider"

    const-string v2, "circle_contact"

    const/16 v3, 0x3e

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1686
    sget-object v0, Lcom/google/android/apps/plus/content/EsProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.google.android.apps.plus.content.EsProvider"

    const-string v2, "avatars"

    const/16 v3, 0x50

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1687
    sget-object v0, Lcom/google/android/apps/plus/content/EsProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.google.android.apps.plus.content.EsProvider"

    const-string v2, "avatars/*"

    const/16 v3, 0x51

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1689
    sget-object v0, Lcom/google/android/apps/plus/content/EsProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.google.android.apps.plus.content.EsProvider"

    const-string v2, "profiles"

    const/16 v3, 0x5a

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1690
    sget-object v0, Lcom/google/android/apps/plus/content/EsProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.google.android.apps.plus.content.EsProvider"

    const-string v2, "profiles/*"

    const/16 v3, 0x5b

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1691
    sget-object v0, Lcom/google/android/apps/plus/content/EsProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.google.android.apps.plus.content.EsProvider"

    const-string v2, "favicons"

    const/16 v3, 0x96

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1693
    sget-object v0, Lcom/google/android/apps/plus/content/EsProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.google.android.apps.plus.content.EsProvider"

    const-string v2, "conversations"

    const/16 v3, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1695
    sget-object v0, Lcom/google/android/apps/plus/content/EsProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.google.android.apps.plus.content.EsProvider"

    const-string v2, "participants/conversation/*"

    const/16 v3, 0x6e

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1698
    sget-object v0, Lcom/google/android/apps/plus/content/EsProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.google.android.apps.plus.content.EsProvider"

    const-string v2, "message_notifications_view"

    const/16 v3, 0xa0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1701
    sget-object v0, Lcom/google/android/apps/plus/content/EsProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.google.android.apps.plus.content.EsProvider"

    const-string v2, "messages/conversation/*"

    const/16 v3, 0x78

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1704
    sget-object v0, Lcom/google/android/apps/plus/content/EsProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.google.android.apps.plus.content.EsProvider"

    const-string v2, "photos_home"

    const/16 v3, 0x82

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1706
    sget-object v0, Lcom/google/android/apps/plus/content/EsProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.google.android.apps.plus.content.EsProvider"

    const-string v2, "album_view/*"

    const/16 v3, 0x83

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1708
    sget-object v0, Lcom/google/android/apps/plus/content/EsProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.google.android.apps.plus.content.EsProvider"

    const-string v2, "album_view_by_user/*"

    const/16 v3, 0x84

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1709
    sget-object v0, Lcom/google/android/apps/plus/content/EsProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.google.android.apps.plus.content.EsProvider"

    const-string v2, "album_view_by_album_and_owner/*/*"

    const/16 v3, 0x90

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1711
    sget-object v0, Lcom/google/android/apps/plus/content/EsProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.google.android.apps.plus.content.EsProvider"

    const-string v2, "album_view_by_stream/*"

    const/16 v3, 0x85

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1713
    sget-object v0, Lcom/google/android/apps/plus/content/EsProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.google.android.apps.plus.content.EsProvider"

    const-string v2, "photo_view_by_photo/*"

    const/16 v3, 0x86

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1714
    sget-object v0, Lcom/google/android/apps/plus/content/EsProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.google.android.apps.plus.content.EsProvider"

    const-string v2, "photo_view_by_album/*"

    const/16 v3, 0x87

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1715
    sget-object v0, Lcom/google/android/apps/plus/content/EsProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.google.android.apps.plus.content.EsProvider"

    const-string v2, "photo_view_by_null_circle"

    const/16 v3, 0x88

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1716
    sget-object v0, Lcom/google/android/apps/plus/content/EsProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.google.android.apps.plus.content.EsProvider"

    const-string v2, "photo_view_by_circle/*"

    const/16 v3, 0x89

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1717
    sget-object v0, Lcom/google/android/apps/plus/content/EsProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.google.android.apps.plus.content.EsProvider"

    const-string v2, "photo_view_of_user_by_user/*"

    const/16 v3, 0x8b

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1718
    sget-object v0, Lcom/google/android/apps/plus/content/EsProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.google.android.apps.plus.content.EsProvider"

    const-string v2, "photo_view_by_stream_and_owner/*/*"

    const/16 v3, 0x8a

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1719
    sget-object v0, Lcom/google/android/apps/plus/content/EsProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.google.android.apps.plus.content.EsProvider"

    const-string v2, "photo_view_by_activity/*"

    const/16 v3, 0x8e

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1720
    sget-object v0, Lcom/google/android/apps/plus/content/EsProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.google.android.apps.plus.content.EsProvider"

    const-string v2, "photo_comment_by_photo/*"

    const/16 v3, 0x8d

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1721
    sget-object v0, Lcom/google/android/apps/plus/content/EsProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.google.android.apps.plus.content.EsProvider"

    const-string v2, "photo_shape_view_by_photo/*"

    const/16 v3, 0x8f

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1722
    sget-object v0, Lcom/google/android/apps/plus/content/EsProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.google.android.apps.plus.content.EsProvider"

    const-string v2, "photo_notification_count"

    const/16 v3, 0x8c

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1724
    sget-object v0, Lcom/google/android/apps/plus/content/EsProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.google.android.apps.plus.content.EsProvider"

    const-string v2, "ad_plus_ones/*"

    const/16 v3, 0xaa

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1759
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/android/apps/plus/content/EsProvider;->ACCOUNTS_PROJECTION_MAP:Ljava/util/HashMap;

    .line 1760
    sget-object v0, Lcom/google/android/apps/plus/content/EsProvider;->ACCOUNTS_PROJECTION_MAP:Ljava/util/HashMap;

    const-string v1, "circle_sync_time"

    const-string v2, "circle_sync_time"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1761
    sget-object v0, Lcom/google/android/apps/plus/content/EsProvider;->ACCOUNTS_PROJECTION_MAP:Ljava/util/HashMap;

    const-string v1, "last_sync_time"

    const-string v2, "last_sync_time"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1762
    sget-object v0, Lcom/google/android/apps/plus/content/EsProvider;->ACCOUNTS_PROJECTION_MAP:Ljava/util/HashMap;

    const-string v1, "people_sync_time"

    const-string v2, "people_sync_time"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1763
    sget-object v0, Lcom/google/android/apps/plus/content/EsProvider;->ACCOUNTS_PROJECTION_MAP:Ljava/util/HashMap;

    const-string v1, "people_last_update_token"

    const-string v2, "people_last_update_token"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1764
    sget-object v0, Lcom/google/android/apps/plus/content/EsProvider;->ACCOUNTS_PROJECTION_MAP:Ljava/util/HashMap;

    const-string v1, "avatars_downloaded"

    const-string v2, "avatars_downloaded"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1765
    sget-object v0, Lcom/google/android/apps/plus/content/EsProvider;->ACCOUNTS_PROJECTION_MAP:Ljava/util/HashMap;

    const-string v1, "audience_data"

    const-string v2, "audience_data"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1766
    sget-object v0, Lcom/google/android/apps/plus/content/EsProvider;->ACCOUNTS_PROJECTION_MAP:Ljava/util/HashMap;

    const-string v1, "user_id"

    const-string v2, "user_id"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1767
    sget-object v0, Lcom/google/android/apps/plus/content/EsProvider;->ACCOUNTS_PROJECTION_MAP:Ljava/util/HashMap;

    const-string v1, "contacts_sync_version"

    const-string v2, "contacts_sync_version"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1768
    sget-object v0, Lcom/google/android/apps/plus/content/EsProvider;->ACCOUNTS_PROJECTION_MAP:Ljava/util/HashMap;

    const-string v1, "push_notifications"

    const-string v2, "push_notifications"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1770
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/android/apps/plus/content/EsProvider;->ACTIVITIES_VIEW_PROJECTION_MAP:Ljava/util/HashMap;

    .line 1771
    sget-object v0, Lcom/google/android/apps/plus/content/EsProvider;->ACTIVITIES_VIEW_PROJECTION_MAP:Ljava/util/HashMap;

    const-string v1, "_id"

    const-string v2, "_id"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1772
    sget-object v0, Lcom/google/android/apps/plus/content/EsProvider;->ACTIVITIES_VIEW_PROJECTION_MAP:Ljava/util/HashMap;

    const-string v1, "activity_id"

    const-string v2, "activity_id"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1773
    sget-object v0, Lcom/google/android/apps/plus/content/EsProvider;->ACTIVITIES_VIEW_PROJECTION_MAP:Ljava/util/HashMap;

    const-string v1, "data_state"

    const-string v2, "data_state"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1774
    sget-object v0, Lcom/google/android/apps/plus/content/EsProvider;->ACTIVITIES_VIEW_PROJECTION_MAP:Ljava/util/HashMap;

    const-string v1, "last_activity"

    const-string v2, "last_activity"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1775
    sget-object v0, Lcom/google/android/apps/plus/content/EsProvider;->ACTIVITIES_VIEW_PROJECTION_MAP:Ljava/util/HashMap;

    const-string v1, "token"

    const-string v2, "token"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1776
    sget-object v0, Lcom/google/android/apps/plus/content/EsProvider;->ACTIVITIES_VIEW_PROJECTION_MAP:Ljava/util/HashMap;

    const-string v1, "author_id"

    const-string v2, "author_id"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1777
    sget-object v0, Lcom/google/android/apps/plus/content/EsProvider;->ACTIVITIES_VIEW_PROJECTION_MAP:Ljava/util/HashMap;

    const-string v1, "name"

    const-string v2, "name"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1778
    sget-object v0, Lcom/google/android/apps/plus/content/EsProvider;->ACTIVITIES_VIEW_PROJECTION_MAP:Ljava/util/HashMap;

    const-string v1, "source"

    const-string v2, "source"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1779
    sget-object v0, Lcom/google/android/apps/plus/content/EsProvider;->ACTIVITIES_VIEW_PROJECTION_MAP:Ljava/util/HashMap;

    const-string v1, "source_name"

    const-string v2, "source_name"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1780
    sget-object v0, Lcom/google/android/apps/plus/content/EsProvider;->ACTIVITIES_VIEW_PROJECTION_MAP:Ljava/util/HashMap;

    const-string v1, "total_comment_count"

    const-string v2, "total_comment_count"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1781
    sget-object v0, Lcom/google/android/apps/plus/content/EsProvider;->ACTIVITIES_VIEW_PROJECTION_MAP:Ljava/util/HashMap;

    const-string v1, "plus_one_data"

    const-string v2, "plus_one_data"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1782
    sget-object v0, Lcom/google/android/apps/plus/content/EsProvider;->ACTIVITIES_VIEW_PROJECTION_MAP:Ljava/util/HashMap;

    const-string v1, "public"

    const-string v2, "public"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1783
    sget-object v0, Lcom/google/android/apps/plus/content/EsProvider;->ACTIVITIES_VIEW_PROJECTION_MAP:Ljava/util/HashMap;

    const-string v1, "acl_display"

    const-string v2, "acl_display"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1784
    sget-object v0, Lcom/google/android/apps/plus/content/EsProvider;->ACTIVITIES_VIEW_PROJECTION_MAP:Ljava/util/HashMap;

    const-string v1, "can_comment"

    const-string v2, "can_comment"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1785
    sget-object v0, Lcom/google/android/apps/plus/content/EsProvider;->ACTIVITIES_VIEW_PROJECTION_MAP:Ljava/util/HashMap;

    const-string v1, "can_reshare"

    const-string v2, "can_reshare"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1786
    sget-object v0, Lcom/google/android/apps/plus/content/EsProvider;->ACTIVITIES_VIEW_PROJECTION_MAP:Ljava/util/HashMap;

    const-string v1, "has_muted"

    const-string v2, "has_muted"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1787
    sget-object v0, Lcom/google/android/apps/plus/content/EsProvider;->ACTIVITIES_VIEW_PROJECTION_MAP:Ljava/util/HashMap;

    const-string v1, "loc"

    const-string v2, "loc"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1788
    sget-object v0, Lcom/google/android/apps/plus/content/EsProvider;->ACTIVITIES_VIEW_PROJECTION_MAP:Ljava/util/HashMap;

    const-string v1, "explanations"

    const-string v2, "explanations"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1789
    sget-object v0, Lcom/google/android/apps/plus/content/EsProvider;->ACTIVITIES_VIEW_PROJECTION_MAP:Ljava/util/HashMap;

    const-string v1, "comments"

    const-string v2, "comments"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1790
    sget-object v0, Lcom/google/android/apps/plus/content/EsProvider;->ACTIVITIES_VIEW_PROJECTION_MAP:Ljava/util/HashMap;

    const-string v1, "media"

    const-string v2, "media"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1791
    sget-object v0, Lcom/google/android/apps/plus/content/EsProvider;->ACTIVITIES_VIEW_PROJECTION_MAP:Ljava/util/HashMap;

    const-string v1, "created"

    const-string v2, "created"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1792
    sget-object v0, Lcom/google/android/apps/plus/content/EsProvider;->ACTIVITIES_VIEW_PROJECTION_MAP:Ljava/util/HashMap;

    const-string v1, "modified"

    const-string v2, "modified"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1793
    sget-object v0, Lcom/google/android/apps/plus/content/EsProvider;->ACTIVITIES_VIEW_PROJECTION_MAP:Ljava/util/HashMap;

    const-string v1, "hangout_data"

    const-string v2, "hangout_data"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1795
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/android/apps/plus/content/EsProvider;->ACTIVITY_SUMMARY_PROJECTION_MAP:Ljava/util/HashMap;

    .line 1796
    sget-object v0, Lcom/google/android/apps/plus/content/EsProvider;->ACTIVITY_SUMMARY_PROJECTION_MAP:Ljava/util/HashMap;

    const-string v1, "author_id"

    const-string v2, "author_id"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1797
    sget-object v0, Lcom/google/android/apps/plus/content/EsProvider;->ACTIVITY_SUMMARY_PROJECTION_MAP:Ljava/util/HashMap;

    const-string v1, "activity_id"

    const-string v2, "activity_id"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1798
    sget-object v0, Lcom/google/android/apps/plus/content/EsProvider;->ACTIVITY_SUMMARY_PROJECTION_MAP:Ljava/util/HashMap;

    const-string v1, "created"

    const-string v2, "created"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1799
    sget-object v0, Lcom/google/android/apps/plus/content/EsProvider;->ACTIVITY_SUMMARY_PROJECTION_MAP:Ljava/util/HashMap;

    const-string v1, "modified"

    const-string v2, "modified"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1801
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/android/apps/plus/content/EsProvider;->COMMENTS_VIEW_PROJECTION_MAP:Ljava/util/HashMap;

    .line 1802
    sget-object v0, Lcom/google/android/apps/plus/content/EsProvider;->COMMENTS_VIEW_PROJECTION_MAP:Ljava/util/HashMap;

    const-string v1, "_id"

    const-string v2, "_id"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1803
    sget-object v0, Lcom/google/android/apps/plus/content/EsProvider;->COMMENTS_VIEW_PROJECTION_MAP:Ljava/util/HashMap;

    const-string v1, "activity_id"

    const-string v2, "activity_id"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1804
    sget-object v0, Lcom/google/android/apps/plus/content/EsProvider;->COMMENTS_VIEW_PROJECTION_MAP:Ljava/util/HashMap;

    const-string v1, "comment_id"

    const-string v2, "comment_id"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1805
    sget-object v0, Lcom/google/android/apps/plus/content/EsProvider;->COMMENTS_VIEW_PROJECTION_MAP:Ljava/util/HashMap;

    const-string v1, "author_id"

    const-string v2, "author_id"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1806
    sget-object v0, Lcom/google/android/apps/plus/content/EsProvider;->COMMENTS_VIEW_PROJECTION_MAP:Ljava/util/HashMap;

    const-string v1, "content"

    const-string v2, "content"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1807
    sget-object v0, Lcom/google/android/apps/plus/content/EsProvider;->COMMENTS_VIEW_PROJECTION_MAP:Ljava/util/HashMap;

    const-string v1, "created"

    const-string v2, "created"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1808
    sget-object v0, Lcom/google/android/apps/plus/content/EsProvider;->COMMENTS_VIEW_PROJECTION_MAP:Ljava/util/HashMap;

    const-string v1, "truncated"

    const-string v2, "truncated"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1809
    sget-object v0, Lcom/google/android/apps/plus/content/EsProvider;->COMMENTS_VIEW_PROJECTION_MAP:Ljava/util/HashMap;

    const-string v1, "name"

    const-string v2, "name"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1810
    sget-object v0, Lcom/google/android/apps/plus/content/EsProvider;->COMMENTS_VIEW_PROJECTION_MAP:Ljava/util/HashMap;

    const-string v1, "plus_one_data"

    const-string v2, "plus_one_data"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1812
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/android/apps/plus/content/EsProvider;->LOCATION_QUERIES_VIEW_PROJECTION_MAP:Ljava/util/HashMap;

    .line 1813
    sget-object v0, Lcom/google/android/apps/plus/content/EsProvider;->LOCATION_QUERIES_VIEW_PROJECTION_MAP:Ljava/util/HashMap;

    const-string v1, "_id"

    const-string v2, "_id"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1814
    sget-object v0, Lcom/google/android/apps/plus/content/EsProvider;->LOCATION_QUERIES_VIEW_PROJECTION_MAP:Ljava/util/HashMap;

    const-string v1, "name"

    const-string v2, "name"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1815
    sget-object v0, Lcom/google/android/apps/plus/content/EsProvider;->LOCATION_QUERIES_VIEW_PROJECTION_MAP:Ljava/util/HashMap;

    const-string v1, "dist"

    const-string v2, "dist"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1816
    sget-object v0, Lcom/google/android/apps/plus/content/EsProvider;->LOCATION_QUERIES_VIEW_PROJECTION_MAP:Ljava/util/HashMap;

    const-string v1, "location"

    const-string v2, "location"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1818
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/android/apps/plus/content/EsProvider;->NOTIFICATIONS_PROJECTION_MAP:Ljava/util/HashMap;

    .line 1819
    sget-object v0, Lcom/google/android/apps/plus/content/EsProvider;->NOTIFICATIONS_PROJECTION_MAP:Ljava/util/HashMap;

    const-string v1, "_id"

    const-string v2, "_id"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1820
    sget-object v0, Lcom/google/android/apps/plus/content/EsProvider;->NOTIFICATIONS_PROJECTION_MAP:Ljava/util/HashMap;

    const-string v1, "notif_id"

    const-string v2, "notif_id"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1821
    sget-object v0, Lcom/google/android/apps/plus/content/EsProvider;->NOTIFICATIONS_PROJECTION_MAP:Ljava/util/HashMap;

    const-string v1, "type"

    const-string v2, "type"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1822
    sget-object v0, Lcom/google/android/apps/plus/content/EsProvider;->NOTIFICATIONS_PROJECTION_MAP:Ljava/util/HashMap;

    const-string v1, "snippet"

    const-string v2, "snippet"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1823
    sget-object v0, Lcom/google/android/apps/plus/content/EsProvider;->NOTIFICATIONS_PROJECTION_MAP:Ljava/util/HashMap;

    const-string v1, "message"

    const-string v2, "message"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1824
    sget-object v0, Lcom/google/android/apps/plus/content/EsProvider;->NOTIFICATIONS_PROJECTION_MAP:Ljava/util/HashMap;

    const-string v1, "timestamp"

    const-string v2, "timestamp"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1825
    sget-object v0, Lcom/google/android/apps/plus/content/EsProvider;->NOTIFICATIONS_PROJECTION_MAP:Ljava/util/HashMap;

    const-string v1, "enabled"

    const-string v2, "enabled"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1826
    sget-object v0, Lcom/google/android/apps/plus/content/EsProvider;->NOTIFICATIONS_PROJECTION_MAP:Ljava/util/HashMap;

    const-string v1, "read"

    const-string v2, "read"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1827
    sget-object v0, Lcom/google/android/apps/plus/content/EsProvider;->NOTIFICATIONS_PROJECTION_MAP:Ljava/util/HashMap;

    const-string v1, "seen"

    const-string v2, "seen"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1828
    sget-object v0, Lcom/google/android/apps/plus/content/EsProvider;->NOTIFICATIONS_PROJECTION_MAP:Ljava/util/HashMap;

    const-string v1, "circle_data"

    const-string v2, "circle_data"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1829
    sget-object v0, Lcom/google/android/apps/plus/content/EsProvider;->NOTIFICATIONS_PROJECTION_MAP:Ljava/util/HashMap;

    const-string v1, "pd_person_id"

    const-string v2, "pd_person_id"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1830
    sget-object v0, Lcom/google/android/apps/plus/content/EsProvider;->NOTIFICATIONS_PROJECTION_MAP:Ljava/util/HashMap;

    const-string v1, "pd_album_id"

    const-string v2, "pd_album_id"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1831
    sget-object v0, Lcom/google/android/apps/plus/content/EsProvider;->NOTIFICATIONS_PROJECTION_MAP:Ljava/util/HashMap;

    const-string v1, "pd_photo_id"

    const-string v2, "pd_photo_id"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1832
    sget-object v0, Lcom/google/android/apps/plus/content/EsProvider;->NOTIFICATIONS_PROJECTION_MAP:Ljava/util/HashMap;

    const-string v1, "activity_id"

    const-string v2, "activity_id"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1834
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/android/apps/plus/content/EsProvider;->CIRCLES_PROJECTION_MAP:Ljava/util/HashMap;

    .line 1835
    sget-object v0, Lcom/google/android/apps/plus/content/EsProvider;->CIRCLES_PROJECTION_MAP:Ljava/util/HashMap;

    const-string v1, "_id"

    const-string v2, "circles.rowid AS _id"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1837
    sget-object v0, Lcom/google/android/apps/plus/content/EsProvider;->CIRCLES_PROJECTION_MAP:Ljava/util/HashMap;

    const-string v1, "circle_id"

    const-string v2, "circles.circle_id AS circle_id"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1839
    sget-object v0, Lcom/google/android/apps/plus/content/EsProvider;->CIRCLES_PROJECTION_MAP:Ljava/util/HashMap;

    const-string v1, "circle_name"

    const-string v2, "circle_name"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1840
    sget-object v0, Lcom/google/android/apps/plus/content/EsProvider;->CIRCLES_PROJECTION_MAP:Ljava/util/HashMap;

    const-string v1, "type"

    const-string v2, "type"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1841
    sget-object v0, Lcom/google/android/apps/plus/content/EsProvider;->CIRCLES_PROJECTION_MAP:Ljava/util/HashMap;

    const-string v1, "semantic_hints"

    const-string v2, "semantic_hints"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1842
    sget-object v0, Lcom/google/android/apps/plus/content/EsProvider;->CIRCLES_PROJECTION_MAP:Ljava/util/HashMap;

    const-string v1, "membership_status"

    const-string v2, "membership_status"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1843
    sget-object v0, Lcom/google/android/apps/plus/content/EsProvider;->CIRCLES_PROJECTION_MAP:Ljava/util/HashMap;

    const-string v1, "contact_count"

    const-string v2, "contact_count"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1844
    sget-object v0, Lcom/google/android/apps/plus/content/EsProvider;->CIRCLES_PROJECTION_MAP:Ljava/util/HashMap;

    const-string v1, "member_ids"

    const-string v2, "group_concat(link_person_id, \'|\') AS member_ids"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1847
    sget-object v0, Lcom/google/android/apps/plus/content/EsProvider;->CIRCLES_PROJECTION_MAP:Ljava/util/HashMap;

    const-string v1, "show"

    const-string v2, "show"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1848
    sget-object v0, Lcom/google/android/apps/plus/content/EsProvider;->CIRCLES_PROJECTION_MAP:Ljava/util/HashMap;

    const-string v1, "show_order"

    const-string v2, "show_order"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1850
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/android/apps/plus/content/EsProvider;->CONTACTS_PROJECTION_MAP:Ljava/util/HashMap;

    .line 1851
    sget-object v0, Lcom/google/android/apps/plus/content/EsProvider;->CONTACTS_PROJECTION_MAP:Ljava/util/HashMap;

    const-string v1, "_id"

    const-string v2, "contacts.rowid AS _id"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1853
    sget-object v0, Lcom/google/android/apps/plus/content/EsProvider;->CONTACTS_PROJECTION_MAP:Ljava/util/HashMap;

    const-string v1, "person_id"

    const-string v2, "contacts.person_id AS person_id"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1855
    sget-object v0, Lcom/google/android/apps/plus/content/EsProvider;->CONTACTS_PROJECTION_MAP:Ljava/util/HashMap;

    const-string v1, "gaia_id"

    const-string v2, "gaia_id"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1856
    sget-object v0, Lcom/google/android/apps/plus/content/EsProvider;->CONTACTS_PROJECTION_MAP:Ljava/util/HashMap;

    const-string v1, "public_id"

    const-string v2, "public_id"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1857
    sget-object v0, Lcom/google/android/apps/plus/content/EsProvider;->CONTACTS_PROJECTION_MAP:Ljava/util/HashMap;

    const-string v1, "name"

    const-string v2, "name"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1858
    sget-object v0, Lcom/google/android/apps/plus/content/EsProvider;->CONTACTS_PROJECTION_MAP:Ljava/util/HashMap;

    const-string v1, "last_updated_time"

    const-string v2, "last_updated_time"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1859
    sget-object v0, Lcom/google/android/apps/plus/content/EsProvider;->CONTACTS_PROJECTION_MAP:Ljava/util/HashMap;

    const-string v1, "profile_type"

    const-string v2, "profile_type"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1860
    sget-object v0, Lcom/google/android/apps/plus/content/EsProvider;->CONTACTS_PROJECTION_MAP:Ljava/util/HashMap;

    const-string v1, "in_my_circles"

    const-string v2, "in_my_circles"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1861
    sget-object v0, Lcom/google/android/apps/plus/content/EsProvider;->CONTACTS_PROJECTION_MAP:Ljava/util/HashMap;

    const-string v1, "for_sharing"

    const-string v2, "(CASE WHEN person_id IN (SELECT link_person_id FROM circle_contact WHERE link_circle_id IN (SELECT circle_id FROM circles WHERE semantic_hints & 64 != 0)) THEN 1 ELSE 0 END) AS for_sharing"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1863
    sget-object v0, Lcom/google/android/apps/plus/content/EsProvider;->CONTACTS_PROJECTION_MAP:Ljava/util/HashMap;

    const-string v1, "blocked"

    const-string v2, "blocked"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1864
    sget-object v0, Lcom/google/android/apps/plus/content/EsProvider;->CONTACTS_PROJECTION_MAP:Ljava/util/HashMap;

    const-string v1, "packed_circle_ids"

    const-string v2, "group_concat(link_circle_id, \'|\') AS packed_circle_ids"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1868
    new-instance v0, Ljava/util/HashMap;

    sget-object v1, Lcom/google/android/apps/plus/content/EsProvider;->CONTACTS_PROJECTION_MAP:Ljava/util/HashMap;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    sput-object v0, Lcom/google/android/apps/plus/content/EsProvider;->CONTACTS_SEARCH_PROJECTION_MAP:Ljava/util/HashMap;

    .line 1869
    sget-object v0, Lcom/google/android/apps/plus/content/EsProvider;->CONTACTS_SEARCH_PROJECTION_MAP:Ljava/util/HashMap;

    const-string v1, "email"

    const-string v2, "email"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1871
    new-instance v0, Ljava/util/HashMap;

    sget-object v1, Lcom/google/android/apps/plus/content/EsProvider;->CONTACTS_SEARCH_PROJECTION_MAP:Ljava/util/HashMap;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    sput-object v0, Lcom/google/android/apps/plus/content/EsProvider;->CONTACTS_SEARCH_WITH_PHONES_PROJECTION_MAP:Ljava/util/HashMap;

    .line 1872
    sget-object v0, Lcom/google/android/apps/plus/content/EsProvider;->CONTACTS_SEARCH_WITH_PHONES_PROJECTION_MAP:Ljava/util/HashMap;

    const-string v1, "_id"

    const-string v2, "_id"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1873
    sget-object v0, Lcom/google/android/apps/plus/content/EsProvider;->CONTACTS_SEARCH_WITH_PHONES_PROJECTION_MAP:Ljava/util/HashMap;

    const-string v1, "person_id"

    const-string v2, "person_id"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1874
    sget-object v0, Lcom/google/android/apps/plus/content/EsProvider;->CONTACTS_SEARCH_WITH_PHONES_PROJECTION_MAP:Ljava/util/HashMap;

    const-string v1, "packed_circle_ids"

    const-string v2, "packed_circle_ids"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1875
    sget-object v0, Lcom/google/android/apps/plus/content/EsProvider;->CONTACTS_SEARCH_WITH_PHONES_PROJECTION_MAP:Ljava/util/HashMap;

    const-string v1, "phone"

    const-string v2, "phone"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1876
    sget-object v0, Lcom/google/android/apps/plus/content/EsProvider;->CONTACTS_SEARCH_WITH_PHONES_PROJECTION_MAP:Ljava/util/HashMap;

    const-string v1, "phone_type"

    const-string v2, "phone_type"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1878
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/android/apps/plus/content/EsProvider;->AVATARS_PROJECTION_MAP:Ljava/util/HashMap;

    .line 1879
    sget-object v0, Lcom/google/android/apps/plus/content/EsProvider;->AVATARS_PROJECTION_MAP:Ljava/util/HashMap;

    const-string v1, "user_id"

    const-string v2, "user_id"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1880
    sget-object v0, Lcom/google/android/apps/plus/content/EsProvider;->AVATARS_PROJECTION_MAP:Ljava/util/HashMap;

    const-string v1, "photo_downloaded"

    const-string v2, "photo_downloaded"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1881
    sget-object v0, Lcom/google/android/apps/plus/content/EsProvider;->AVATARS_PROJECTION_MAP:Ljava/util/HashMap;

    const-string v1, "small_image"

    const-string v2, "small_image"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1882
    sget-object v0, Lcom/google/android/apps/plus/content/EsProvider;->AVATARS_PROJECTION_MAP:Ljava/util/HashMap;

    const-string v1, "medium_image"

    const-string v2, "medium_image"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1883
    sget-object v0, Lcom/google/android/apps/plus/content/EsProvider;->AVATARS_PROJECTION_MAP:Ljava/util/HashMap;

    const-string v1, "large_image"

    const-string v2, "large_image"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1884
    sget-object v0, Lcom/google/android/apps/plus/content/EsProvider;->AVATARS_PROJECTION_MAP:Ljava/util/HashMap;

    const-string v1, "image_update_time"

    const-string v2, "image_update_time"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1885
    sget-object v0, Lcom/google/android/apps/plus/content/EsProvider;->AVATARS_PROJECTION_MAP:Ljava/util/HashMap;

    const-string v1, "signature"

    const-string v2, "signature"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1887
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/android/apps/plus/content/EsProvider;->PROFILES_PROJECTION_MAP:Ljava/util/HashMap;

    .line 1888
    sget-object v0, Lcom/google/android/apps/plus/content/EsProvider;->PROFILES_PROJECTION_MAP:Ljava/util/HashMap;

    const-string v1, "person_id"

    const-string v2, "person_id"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1889
    sget-object v0, Lcom/google/android/apps/plus/content/EsProvider;->PROFILES_PROJECTION_MAP:Ljava/util/HashMap;

    const-string v1, "contact_update_time"

    const-string v2, "contact_update_time"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1890
    sget-object v0, Lcom/google/android/apps/plus/content/EsProvider;->PROFILES_PROJECTION_MAP:Ljava/util/HashMap;

    const-string v1, "contact_proto"

    const-string v2, "contact_proto"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1891
    sget-object v0, Lcom/google/android/apps/plus/content/EsProvider;->PROFILES_PROJECTION_MAP:Ljava/util/HashMap;

    const-string v1, "profile_update_time"

    const-string v2, "profile_update_time"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1892
    sget-object v0, Lcom/google/android/apps/plus/content/EsProvider;->PROFILES_PROJECTION_MAP:Ljava/util/HashMap;

    const-string v1, "profile_proto"

    const-string v2, "profile_proto"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1894
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/android/apps/plus/content/EsProvider;->CONVERSATIONS_PROJECTION_MAP:Ljava/util/HashMap;

    .line 1895
    sget-object v0, Lcom/google/android/apps/plus/content/EsProvider;->CONVERSATIONS_PROJECTION_MAP:Ljava/util/HashMap;

    const-string v1, "_id"

    const-string v2, "_id"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1896
    sget-object v0, Lcom/google/android/apps/plus/content/EsProvider;->CONVERSATIONS_PROJECTION_MAP:Ljava/util/HashMap;

    const-string v1, "conversation_id"

    const-string v2, "conversation_id"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1897
    sget-object v0, Lcom/google/android/apps/plus/content/EsProvider;->CONVERSATIONS_PROJECTION_MAP:Ljava/util/HashMap;

    const-string v1, "is_muted"

    const-string v2, "is_muted"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1898
    sget-object v0, Lcom/google/android/apps/plus/content/EsProvider;->CONVERSATIONS_PROJECTION_MAP:Ljava/util/HashMap;

    const-string v1, "is_visible"

    const-string v2, "is_visible"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1899
    sget-object v0, Lcom/google/android/apps/plus/content/EsProvider;->CONVERSATIONS_PROJECTION_MAP:Ljava/util/HashMap;

    const-string v1, "latest_event_timestamp"

    const-string v2, "latest_event_timestamp"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1900
    sget-object v0, Lcom/google/android/apps/plus/content/EsProvider;->CONVERSATIONS_PROJECTION_MAP:Ljava/util/HashMap;

    const-string v1, "latest_message_timestamp"

    const-string v2, "latest_message_timestamp"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1901
    sget-object v0, Lcom/google/android/apps/plus/content/EsProvider;->CONVERSATIONS_PROJECTION_MAP:Ljava/util/HashMap;

    const-string v1, "earliest_event_timestamp"

    const-string v2, "earliest_event_timestamp"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1902
    sget-object v0, Lcom/google/android/apps/plus/content/EsProvider;->CONVERSATIONS_PROJECTION_MAP:Ljava/util/HashMap;

    const-string v1, "has_older_events"

    const-string v2, "has_older_events"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1903
    sget-object v0, Lcom/google/android/apps/plus/content/EsProvider;->CONVERSATIONS_PROJECTION_MAP:Ljava/util/HashMap;

    const-string v1, "unread_count"

    const-string v2, "unread_count"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1904
    sget-object v0, Lcom/google/android/apps/plus/content/EsProvider;->CONVERSATIONS_PROJECTION_MAP:Ljava/util/HashMap;

    const-string v1, "name"

    const-string v2, "name"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1905
    sget-object v0, Lcom/google/android/apps/plus/content/EsProvider;->CONVERSATIONS_PROJECTION_MAP:Ljava/util/HashMap;

    const-string v1, "generated_name"

    const-string v2, "generated_name"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1906
    sget-object v0, Lcom/google/android/apps/plus/content/EsProvider;->CONVERSATIONS_PROJECTION_MAP:Ljava/util/HashMap;

    const-string v1, "latest_message_text"

    const-string v2, "latest_message_text"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1907
    sget-object v0, Lcom/google/android/apps/plus/content/EsProvider;->CONVERSATIONS_PROJECTION_MAP:Ljava/util/HashMap;

    const-string v1, "latest_message_image_url"

    const-string v2, "latest_message_image_url"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1908
    sget-object v0, Lcom/google/android/apps/plus/content/EsProvider;->CONVERSATIONS_PROJECTION_MAP:Ljava/util/HashMap;

    const-string v1, "latest_message_author_id"

    const-string v2, "latest_message_author_id"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1909
    sget-object v0, Lcom/google/android/apps/plus/content/EsProvider;->CONVERSATIONS_PROJECTION_MAP:Ljava/util/HashMap;

    const-string v1, "latest_message_type"

    const-string v2, "latest_message_type"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1910
    sget-object v0, Lcom/google/android/apps/plus/content/EsProvider;->CONVERSATIONS_PROJECTION_MAP:Ljava/util/HashMap;

    const-string v1, "latest_message_author_full_name"

    const-string v2, "latest_message_author_full_name"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1911
    sget-object v0, Lcom/google/android/apps/plus/content/EsProvider;->CONVERSATIONS_PROJECTION_MAP:Ljava/util/HashMap;

    const-string v1, "latest_message_author_first_name"

    const-string v2, "latest_message_author_first_name"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1912
    sget-object v0, Lcom/google/android/apps/plus/content/EsProvider;->CONVERSATIONS_PROJECTION_MAP:Ljava/util/HashMap;

    const-string v1, "latest_message_author_type"

    const-string v2, "latest_message_author_type"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1913
    sget-object v0, Lcom/google/android/apps/plus/content/EsProvider;->CONVERSATIONS_PROJECTION_MAP:Ljava/util/HashMap;

    const-string v1, "is_group"

    const-string v2, "is_group"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1914
    sget-object v0, Lcom/google/android/apps/plus/content/EsProvider;->CONVERSATIONS_PROJECTION_MAP:Ljava/util/HashMap;

    const-string v1, "avatar_id"

    const-string v2, "avatar_id"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1915
    sget-object v0, Lcom/google/android/apps/plus/content/EsProvider;->CONVERSATIONS_PROJECTION_MAP:Ljava/util/HashMap;

    const-string v1, "avatar_type"

    const-string v2, "avatar_type"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1916
    sget-object v0, Lcom/google/android/apps/plus/content/EsProvider;->CONVERSATIONS_PROJECTION_MAP:Ljava/util/HashMap;

    const-string v1, "is_pending_accept"

    const-string v2, "is_pending_accept"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1917
    sget-object v0, Lcom/google/android/apps/plus/content/EsProvider;->CONVERSATIONS_PROJECTION_MAP:Ljava/util/HashMap;

    const-string v1, "inviter_id"

    const-string v2, "inviter_id"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1918
    sget-object v0, Lcom/google/android/apps/plus/content/EsProvider;->CONVERSATIONS_PROJECTION_MAP:Ljava/util/HashMap;

    const-string v1, "inviter_full_name"

    const-string v2, "inviter_full_name"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1919
    sget-object v0, Lcom/google/android/apps/plus/content/EsProvider;->CONVERSATIONS_PROJECTION_MAP:Ljava/util/HashMap;

    const-string v1, "inviter_first_name"

    const-string v2, "inviter_first_name"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1920
    sget-object v0, Lcom/google/android/apps/plus/content/EsProvider;->CONVERSATIONS_PROJECTION_MAP:Ljava/util/HashMap;

    const-string v1, "inviter_type"

    const-string v2, "inviter_type"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1921
    sget-object v0, Lcom/google/android/apps/plus/content/EsProvider;->CONVERSATIONS_PROJECTION_MAP:Ljava/util/HashMap;

    const-string v1, "fatal_error_type"

    const-string v2, "fatal_error_type"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1922
    sget-object v0, Lcom/google/android/apps/plus/content/EsProvider;->CONVERSATIONS_PROJECTION_MAP:Ljava/util/HashMap;

    const-string v1, "is_pending_leave"

    const-string v2, "is_pending_leave"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1923
    sget-object v0, Lcom/google/android/apps/plus/content/EsProvider;->CONVERSATIONS_PROJECTION_MAP:Ljava/util/HashMap;

    const-string v1, "is_awaiting_event_stream"

    const-string v2, "is_awaiting_event_stream"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1924
    sget-object v0, Lcom/google/android/apps/plus/content/EsProvider;->CONVERSATIONS_PROJECTION_MAP:Ljava/util/HashMap;

    const-string v1, "is_awaiting_older_events"

    const-string v2, "is_awaiting_older_events"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1925
    sget-object v0, Lcom/google/android/apps/plus/content/EsProvider;->CONVERSATIONS_PROJECTION_MAP:Ljava/util/HashMap;

    const-string v1, "first_event_timestamp"

    const-string v2, "first_event_timestamp"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1927
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/android/apps/plus/content/EsProvider;->PARTICIPANTS_PROJECTION_MAP:Ljava/util/HashMap;

    .line 1928
    sget-object v0, Lcom/google/android/apps/plus/content/EsProvider;->PARTICIPANTS_PROJECTION_MAP:Ljava/util/HashMap;

    const-string v1, "_id"

    const-string v2, "_id"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1929
    sget-object v0, Lcom/google/android/apps/plus/content/EsProvider;->PARTICIPANTS_PROJECTION_MAP:Ljava/util/HashMap;

    const-string v1, "participant_id"

    const-string v2, "participant_id"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1930
    sget-object v0, Lcom/google/android/apps/plus/content/EsProvider;->PARTICIPANTS_PROJECTION_MAP:Ljava/util/HashMap;

    const-string v1, "first_name"

    const-string v2, "first_name"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1931
    sget-object v0, Lcom/google/android/apps/plus/content/EsProvider;->PARTICIPANTS_PROJECTION_MAP:Ljava/util/HashMap;

    const-string v1, "full_name"

    const-string v2, "full_name"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1932
    sget-object v0, Lcom/google/android/apps/plus/content/EsProvider;->PARTICIPANTS_PROJECTION_MAP:Ljava/util/HashMap;

    const-string v1, "type"

    const-string v2, "type"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1933
    sget-object v0, Lcom/google/android/apps/plus/content/EsProvider;->PARTICIPANTS_PROJECTION_MAP:Ljava/util/HashMap;

    const-string v1, "active"

    const-string v2, "active"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1934
    sget-object v0, Lcom/google/android/apps/plus/content/EsProvider;->PARTICIPANTS_PROJECTION_MAP:Ljava/util/HashMap;

    const-string v1, "conversation_id"

    const-string v2, "conversation_id"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1936
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/android/apps/plus/content/EsProvider;->MESSAGES_PROJECTION_MAP:Ljava/util/HashMap;

    .line 1937
    sget-object v0, Lcom/google/android/apps/plus/content/EsProvider;->MESSAGES_PROJECTION_MAP:Ljava/util/HashMap;

    const-string v1, "_id"

    const-string v2, "_id"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1938
    sget-object v0, Lcom/google/android/apps/plus/content/EsProvider;->MESSAGES_PROJECTION_MAP:Ljava/util/HashMap;

    const-string v1, "message_id"

    const-string v2, "message_id"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1939
    sget-object v0, Lcom/google/android/apps/plus/content/EsProvider;->MESSAGES_PROJECTION_MAP:Ljava/util/HashMap;

    const-string v1, "conversation_id"

    const-string v2, "conversation_id"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1940
    sget-object v0, Lcom/google/android/apps/plus/content/EsProvider;->MESSAGES_PROJECTION_MAP:Ljava/util/HashMap;

    const-string v1, "author_id"

    const-string v2, "author_id"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1941
    sget-object v0, Lcom/google/android/apps/plus/content/EsProvider;->MESSAGES_PROJECTION_MAP:Ljava/util/HashMap;

    const-string v1, "text"

    const-string v2, "text"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1942
    sget-object v0, Lcom/google/android/apps/plus/content/EsProvider;->MESSAGES_PROJECTION_MAP:Ljava/util/HashMap;

    const-string v1, "timestamp"

    const-string v2, "timestamp"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1943
    sget-object v0, Lcom/google/android/apps/plus/content/EsProvider;->MESSAGES_PROJECTION_MAP:Ljava/util/HashMap;

    const-string v1, "status"

    const-string v2, "status"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1944
    sget-object v0, Lcom/google/android/apps/plus/content/EsProvider;->MESSAGES_PROJECTION_MAP:Ljava/util/HashMap;

    const-string v1, "type"

    const-string v2, "type"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1945
    sget-object v0, Lcom/google/android/apps/plus/content/EsProvider;->MESSAGES_PROJECTION_MAP:Ljava/util/HashMap;

    const-string v1, "author_first_name"

    const-string v2, "author_first_name"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1946
    sget-object v0, Lcom/google/android/apps/plus/content/EsProvider;->MESSAGES_PROJECTION_MAP:Ljava/util/HashMap;

    const-string v1, "author_full_name"

    const-string v2, "author_full_name"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1947
    sget-object v0, Lcom/google/android/apps/plus/content/EsProvider;->MESSAGES_PROJECTION_MAP:Ljava/util/HashMap;

    const-string v1, "author_type"

    const-string v2, "author_type"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1948
    sget-object v0, Lcom/google/android/apps/plus/content/EsProvider;->MESSAGES_PROJECTION_MAP:Ljava/util/HashMap;

    const-string v1, "image_url"

    const-string v2, "image_url"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1950
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/android/apps/plus/content/EsProvider;->MESSAGE_NOTIFICATIONS_PROJECTION_MAP:Ljava/util/HashMap;

    .line 1951
    sget-object v0, Lcom/google/android/apps/plus/content/EsProvider;->MESSAGE_NOTIFICATIONS_PROJECTION_MAP:Ljava/util/HashMap;

    const-string v1, "_id"

    const-string v2, "_id"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1952
    sget-object v0, Lcom/google/android/apps/plus/content/EsProvider;->MESSAGE_NOTIFICATIONS_PROJECTION_MAP:Ljava/util/HashMap;

    const-string v1, "message_id"

    const-string v2, "message_id"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1953
    sget-object v0, Lcom/google/android/apps/plus/content/EsProvider;->MESSAGE_NOTIFICATIONS_PROJECTION_MAP:Ljava/util/HashMap;

    const-string v1, "conversation_id"

    const-string v2, "conversation_id"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1954
    sget-object v0, Lcom/google/android/apps/plus/content/EsProvider;->MESSAGE_NOTIFICATIONS_PROJECTION_MAP:Ljava/util/HashMap;

    const-string v1, "author_id"

    const-string v2, "author_id"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1955
    sget-object v0, Lcom/google/android/apps/plus/content/EsProvider;->MESSAGE_NOTIFICATIONS_PROJECTION_MAP:Ljava/util/HashMap;

    const-string v1, "text"

    const-string v2, "text"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1956
    sget-object v0, Lcom/google/android/apps/plus/content/EsProvider;->MESSAGE_NOTIFICATIONS_PROJECTION_MAP:Ljava/util/HashMap;

    const-string v1, "image_url"

    const-string v2, "image_url"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1957
    sget-object v0, Lcom/google/android/apps/plus/content/EsProvider;->MESSAGE_NOTIFICATIONS_PROJECTION_MAP:Ljava/util/HashMap;

    const-string v1, "timestamp"

    const-string v2, "timestamp"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1958
    sget-object v0, Lcom/google/android/apps/plus/content/EsProvider;->MESSAGE_NOTIFICATIONS_PROJECTION_MAP:Ljava/util/HashMap;

    const-string v1, "status"

    const-string v2, "status"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1959
    sget-object v0, Lcom/google/android/apps/plus/content/EsProvider;->MESSAGE_NOTIFICATIONS_PROJECTION_MAP:Ljava/util/HashMap;

    const-string v1, "type"

    const-string v2, "type"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1960
    sget-object v0, Lcom/google/android/apps/plus/content/EsProvider;->MESSAGE_NOTIFICATIONS_PROJECTION_MAP:Ljava/util/HashMap;

    const-string v1, "notification_seen"

    const-string v2, "notification_seen"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1961
    sget-object v0, Lcom/google/android/apps/plus/content/EsProvider;->MESSAGE_NOTIFICATIONS_PROJECTION_MAP:Ljava/util/HashMap;

    const-string v1, "author_full_name"

    const-string v2, "author_full_name"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1962
    sget-object v0, Lcom/google/android/apps/plus/content/EsProvider;->MESSAGE_NOTIFICATIONS_PROJECTION_MAP:Ljava/util/HashMap;

    const-string v1, "author_first_name"

    const-string v2, "author_first_name"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1963
    sget-object v0, Lcom/google/android/apps/plus/content/EsProvider;->MESSAGE_NOTIFICATIONS_PROJECTION_MAP:Ljava/util/HashMap;

    const-string v1, "author_type"

    const-string v2, "author_type"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1964
    sget-object v0, Lcom/google/android/apps/plus/content/EsProvider;->MESSAGE_NOTIFICATIONS_PROJECTION_MAP:Ljava/util/HashMap;

    const-string v1, "conversation_muted"

    const-string v2, "conversation_muted"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1965
    sget-object v0, Lcom/google/android/apps/plus/content/EsProvider;->MESSAGE_NOTIFICATIONS_PROJECTION_MAP:Ljava/util/HashMap;

    const-string v1, "conversation_group"

    const-string v2, "conversation_group"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1966
    sget-object v0, Lcom/google/android/apps/plus/content/EsProvider;->MESSAGE_NOTIFICATIONS_PROJECTION_MAP:Ljava/util/HashMap;

    const-string v1, "conversation_name"

    const-string v2, "conversation_name"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1967
    sget-object v0, Lcom/google/android/apps/plus/content/EsProvider;->MESSAGE_NOTIFICATIONS_PROJECTION_MAP:Ljava/util/HashMap;

    const-string v1, "generated_name"

    const-string v2, "generated_name"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1968
    sget-object v0, Lcom/google/android/apps/plus/content/EsProvider;->MESSAGE_NOTIFICATIONS_PROJECTION_MAP:Ljava/util/HashMap;

    const-string v1, "conversation_pending_accept"

    const-string v2, "conversation_pending_accept"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1969
    sget-object v0, Lcom/google/android/apps/plus/content/EsProvider;->MESSAGE_NOTIFICATIONS_PROJECTION_MAP:Ljava/util/HashMap;

    const-string v1, "conversation_pending_leave"

    const-string v2, "conversation_pending_leave"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1970
    sget-object v0, Lcom/google/android/apps/plus/content/EsProvider;->MESSAGE_NOTIFICATIONS_PROJECTION_MAP:Ljava/util/HashMap;

    const-string v1, "inviter_id"

    const-string v2, "inviter_id"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1971
    sget-object v0, Lcom/google/android/apps/plus/content/EsProvider;->MESSAGE_NOTIFICATIONS_PROJECTION_MAP:Ljava/util/HashMap;

    const-string v1, "inviter_full_name"

    const-string v2, "inviter_full_name"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1972
    sget-object v0, Lcom/google/android/apps/plus/content/EsProvider;->MESSAGE_NOTIFICATIONS_PROJECTION_MAP:Ljava/util/HashMap;

    const-string v1, "inviter_first_name"

    const-string v2, "inviter_first_name"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1973
    sget-object v0, Lcom/google/android/apps/plus/content/EsProvider;->MESSAGE_NOTIFICATIONS_PROJECTION_MAP:Ljava/util/HashMap;

    const-string v1, "inviter_type"

    const-string v2, "inviter_type"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1975
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/android/apps/plus/content/EsProvider;->PHOTOS_HOME_MAP:Ljava/util/HashMap;

    .line 1976
    sget-object v0, Lcom/google/android/apps/plus/content/EsProvider;->PHOTOS_HOME_MAP:Ljava/util/HashMap;

    const-string v1, "_id"

    const-string v2, "_id"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1977
    sget-object v0, Lcom/google/android/apps/plus/content/EsProvider;->PHOTOS_HOME_MAP:Ljava/util/HashMap;

    const-string v1, "photo_count"

    const-string v2, "photo_count"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1978
    sget-object v0, Lcom/google/android/apps/plus/content/EsProvider;->PHOTOS_HOME_MAP:Ljava/util/HashMap;

    const-string v1, "height"

    const-string v2, "height"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1979
    sget-object v0, Lcom/google/android/apps/plus/content/EsProvider;->PHOTOS_HOME_MAP:Ljava/util/HashMap;

    const-string v1, "image"

    const-string v2, "image"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1980
    sget-object v0, Lcom/google/android/apps/plus/content/EsProvider;->PHOTOS_HOME_MAP:Ljava/util/HashMap;

    const-string v1, "notification_count"

    const-string v2, "notification_count"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1981
    sget-object v0, Lcom/google/android/apps/plus/content/EsProvider;->PHOTOS_HOME_MAP:Ljava/util/HashMap;

    const-string v1, "photo_id"

    const-string v2, "photo_id"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1982
    sget-object v0, Lcom/google/android/apps/plus/content/EsProvider;->PHOTOS_HOME_MAP:Ljava/util/HashMap;

    const-string v1, "photos_home_key"

    const-string v2, "photos_home_key"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1983
    sget-object v0, Lcom/google/android/apps/plus/content/EsProvider;->PHOTOS_HOME_MAP:Ljava/util/HashMap;

    const-string v1, "size"

    const-string v2, "size"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1984
    sget-object v0, Lcom/google/android/apps/plus/content/EsProvider;->PHOTOS_HOME_MAP:Ljava/util/HashMap;

    const-string v1, "timestamp"

    const-string v2, "timestamp"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1985
    sget-object v0, Lcom/google/android/apps/plus/content/EsProvider;->PHOTOS_HOME_MAP:Ljava/util/HashMap;

    const-string v1, "type"

    const-string v2, "type"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1986
    sget-object v0, Lcom/google/android/apps/plus/content/EsProvider;->PHOTOS_HOME_MAP:Ljava/util/HashMap;

    const-string v1, "url"

    const-string v2, "url"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1987
    sget-object v0, Lcom/google/android/apps/plus/content/EsProvider;->PHOTOS_HOME_MAP:Ljava/util/HashMap;

    const-string v1, "width"

    const-string v2, "width"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1989
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/android/apps/plus/content/EsProvider;->PHOTO_NOTIFICATION_MAP:Ljava/util/HashMap;

    .line 1990
    sget-object v0, Lcom/google/android/apps/plus/content/EsProvider;->PHOTO_NOTIFICATION_MAP:Ljava/util/HashMap;

    const-string v1, "_count"

    const-string v2, "notification_count"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1992
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/android/apps/plus/content/EsProvider;->ALBUM_VIEW_MAP:Ljava/util/HashMap;

    .line 1993
    sget-object v0, Lcom/google/android/apps/plus/content/EsProvider;->ALBUM_VIEW_MAP:Ljava/util/HashMap;

    const-string v1, "_id"

    const-string v2, "_id"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1994
    sget-object v0, Lcom/google/android/apps/plus/content/EsProvider;->ALBUM_VIEW_MAP:Ljava/util/HashMap;

    const-string v1, "photo_count"

    const-string v2, "photo_count"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1995
    sget-object v0, Lcom/google/android/apps/plus/content/EsProvider;->ALBUM_VIEW_MAP:Ljava/util/HashMap;

    const-string v1, "album_id"

    const-string v2, "album_id"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1996
    sget-object v0, Lcom/google/android/apps/plus/content/EsProvider;->ALBUM_VIEW_MAP:Ljava/util/HashMap;

    const-string v1, "album_key"

    const-string v2, "album_key"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1997
    sget-object v0, Lcom/google/android/apps/plus/content/EsProvider;->ALBUM_VIEW_MAP:Ljava/util/HashMap;

    const-string v1, "height"

    const-string v2, "height"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1998
    sget-object v0, Lcom/google/android/apps/plus/content/EsProvider;->ALBUM_VIEW_MAP:Ljava/util/HashMap;

    const-string v1, "is_activity"

    const-string v2, "is_activity"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1999
    sget-object v0, Lcom/google/android/apps/plus/content/EsProvider;->ALBUM_VIEW_MAP:Ljava/util/HashMap;

    const-string v1, "owner_id"

    const-string v2, "owner_id"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2000
    sget-object v0, Lcom/google/android/apps/plus/content/EsProvider;->ALBUM_VIEW_MAP:Ljava/util/HashMap;

    const-string v1, "photo_id"

    const-string v2, "photo_id"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2001
    sget-object v0, Lcom/google/android/apps/plus/content/EsProvider;->ALBUM_VIEW_MAP:Ljava/util/HashMap;

    const-string v1, "size"

    const-string v2, "size"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2002
    sget-object v0, Lcom/google/android/apps/plus/content/EsProvider;->ALBUM_VIEW_MAP:Ljava/util/HashMap;

    const-string v1, "sort_order"

    const-string v2, "sort_order"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2003
    sget-object v0, Lcom/google/android/apps/plus/content/EsProvider;->ALBUM_VIEW_MAP:Ljava/util/HashMap;

    const-string v1, "stream_id"

    const-string v2, "stream_id"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2004
    sget-object v0, Lcom/google/android/apps/plus/content/EsProvider;->ALBUM_VIEW_MAP:Ljava/util/HashMap;

    const-string v1, "timestamp"

    const-string v2, "timestamp"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2005
    sget-object v0, Lcom/google/android/apps/plus/content/EsProvider;->ALBUM_VIEW_MAP:Ljava/util/HashMap;

    const-string v1, "title"

    const-string v2, "title"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2006
    sget-object v0, Lcom/google/android/apps/plus/content/EsProvider;->ALBUM_VIEW_MAP:Ljava/util/HashMap;

    const-string v1, "url"

    const-string v2, "url"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2007
    sget-object v0, Lcom/google/android/apps/plus/content/EsProvider;->ALBUM_VIEW_MAP:Ljava/util/HashMap;

    const-string v1, "width"

    const-string v2, "width"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2009
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/android/apps/plus/content/EsProvider;->PHOTO_VIEW_MAP:Ljava/util/HashMap;

    .line 2010
    sget-object v0, Lcom/google/android/apps/plus/content/EsProvider;->PHOTO_VIEW_MAP:Ljava/util/HashMap;

    const-string v1, "_id"

    const-string v2, "photo_view._id as _id"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2011
    sget-object v0, Lcom/google/android/apps/plus/content/EsProvider;->PHOTO_VIEW_MAP:Ljava/util/HashMap;

    const-string v1, "action_state"

    const-string v2, "action_state"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2012
    sget-object v0, Lcom/google/android/apps/plus/content/EsProvider;->PHOTO_VIEW_MAP:Ljava/util/HashMap;

    const-string v1, "activities"

    const-string v2, "activities"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2013
    sget-object v0, Lcom/google/android/apps/plus/content/EsProvider;->PHOTO_VIEW_MAP:Ljava/util/HashMap;

    const-string v1, "album_id"

    const-string v2, "album_id"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2014
    sget-object v0, Lcom/google/android/apps/plus/content/EsProvider;->PHOTO_VIEW_MAP:Ljava/util/HashMap;

    const-string v1, "album_name"

    const-string v2, "album_name"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2015
    sget-object v0, Lcom/google/android/apps/plus/content/EsProvider;->PHOTO_VIEW_MAP:Ljava/util/HashMap;

    const-string v1, "album_stream"

    const-string v2, "album_stream"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2016
    sget-object v0, Lcom/google/android/apps/plus/content/EsProvider;->PHOTO_VIEW_MAP:Ljava/util/HashMap;

    const-string v1, "avatar"

    const-string v2, "avatar"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2017
    sget-object v0, Lcom/google/android/apps/plus/content/EsProvider;->PHOTO_VIEW_MAP:Ljava/util/HashMap;

    const-string v1, "comment_count"

    const-string v2, "comment_count"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2018
    sget-object v0, Lcom/google/android/apps/plus/content/EsProvider;->PHOTO_VIEW_MAP:Ljava/util/HashMap;

    const-string v1, "description"

    const-string v2, "description"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2019
    sget-object v0, Lcom/google/android/apps/plus/content/EsProvider;->PHOTO_VIEW_MAP:Ljava/util/HashMap;

    const-string v1, "entity_version"

    const-string v2, "entity_version"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2020
    sget-object v0, Lcom/google/android/apps/plus/content/EsProvider;->PHOTO_VIEW_MAP:Ljava/util/HashMap;

    const-string v1, "height"

    const-string v2, "height"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2021
    sget-object v0, Lcom/google/android/apps/plus/content/EsProvider;->PHOTO_VIEW_MAP:Ljava/util/HashMap;

    const-string v1, "owner_id"

    const-string v2, "owner_id"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2022
    sget-object v0, Lcom/google/android/apps/plus/content/EsProvider;->PHOTO_VIEW_MAP:Ljava/util/HashMap;

    const-string v1, "owner_name"

    const-string v2, "owner_name"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2023
    sget-object v0, Lcom/google/android/apps/plus/content/EsProvider;->PHOTO_VIEW_MAP:Ljava/util/HashMap;

    const-string v1, "pending_status"

    const-string v2, "pending_status"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2024
    sget-object v0, Lcom/google/android/apps/plus/content/EsProvider;->PHOTO_VIEW_MAP:Ljava/util/HashMap;

    const-string v1, "photo_id"

    const-string v2, "photo_view.photo_id as photo_id"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2025
    sget-object v0, Lcom/google/android/apps/plus/content/EsProvider;->PHOTO_VIEW_MAP:Ljava/util/HashMap;

    const-string v1, "plusone_by_me"

    const-string v2, "plusone_by_me"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2026
    sget-object v0, Lcom/google/android/apps/plus/content/EsProvider;->PHOTO_VIEW_MAP:Ljava/util/HashMap;

    const-string v1, "plusone_count"

    const-string v2, "plusone_count"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2027
    sget-object v0, Lcom/google/android/apps/plus/content/EsProvider;->PHOTO_VIEW_MAP:Ljava/util/HashMap;

    const-string v1, "plusone_data"

    const-string v2, "plusone_data"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2028
    sget-object v0, Lcom/google/android/apps/plus/content/EsProvider;->PHOTO_VIEW_MAP:Ljava/util/HashMap;

    const-string v1, "plusone_id"

    const-string v2, "plusone_id"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2029
    sget-object v0, Lcom/google/android/apps/plus/content/EsProvider;->PHOTO_VIEW_MAP:Ljava/util/HashMap;

    const-string v1, "fingerprint"

    const-string v2, "fingerprint"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2030
    sget-object v0, Lcom/google/android/apps/plus/content/EsProvider;->PHOTO_VIEW_MAP:Ljava/util/HashMap;

    const-string v1, "timestamp"

    const-string v2, "timestamp"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2031
    sget-object v0, Lcom/google/android/apps/plus/content/EsProvider;->PHOTO_VIEW_MAP:Ljava/util/HashMap;

    const-string v1, "title"

    const-string v2, "title"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2032
    sget-object v0, Lcom/google/android/apps/plus/content/EsProvider;->PHOTO_VIEW_MAP:Ljava/util/HashMap;

    const-string v1, "type"

    const-string v2, "type"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2033
    sget-object v0, Lcom/google/android/apps/plus/content/EsProvider;->PHOTO_VIEW_MAP:Ljava/util/HashMap;

    const-string v1, "url"

    const-string v2, "url"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2034
    sget-object v0, Lcom/google/android/apps/plus/content/EsProvider;->PHOTO_VIEW_MAP:Ljava/util/HashMap;

    const-string v1, "video_data"

    const-string v2, "video_data"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2035
    sget-object v0, Lcom/google/android/apps/plus/content/EsProvider;->PHOTO_VIEW_MAP:Ljava/util/HashMap;

    const-string v1, "width"

    const-string v2, "width"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2036
    sget-object v0, Lcom/google/android/apps/plus/content/EsProvider;->PHOTO_VIEW_MAP:Ljava/util/HashMap;

    const-string v1, "_count"

    const-string v2, "count(*) as _count"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2039
    new-instance v0, Ljava/util/HashMap;

    sget-object v1, Lcom/google/android/apps/plus/content/EsProvider;->PHOTO_VIEW_MAP:Ljava/util/HashMap;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    sput-object v0, Lcom/google/android/apps/plus/content/EsProvider;->PHOTO_VIEW_ALBUM_MAP:Ljava/util/HashMap;

    .line 2040
    sget-object v0, Lcom/google/android/apps/plus/content/EsProvider;->PHOTO_VIEW_ALBUM_MAP:Ljava/util/HashMap;

    const-string v1, "circle_id"

    const-string v2, "NULL AS circle_id"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2041
    sget-object v0, Lcom/google/android/apps/plus/content/EsProvider;->PHOTO_VIEW_ALBUM_MAP:Ljava/util/HashMap;

    const-string v1, "circle_row_id"

    const-string v2, "NULL AS circle_row_id"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2042
    sget-object v0, Lcom/google/android/apps/plus/content/EsProvider;->PHOTO_VIEW_ALBUM_MAP:Ljava/util/HashMap;

    const-string v1, "photo_of_user_id"

    const-string v2, "NULL AS photo_of_user_id"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2045
    new-instance v0, Ljava/util/HashMap;

    sget-object v1, Lcom/google/android/apps/plus/content/EsProvider;->PHOTO_VIEW_MAP:Ljava/util/HashMap;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    sput-object v0, Lcom/google/android/apps/plus/content/EsProvider;->PHOTO_VIEW_CIRCLE_MAP:Ljava/util/HashMap;

    .line 2046
    sget-object v0, Lcom/google/android/apps/plus/content/EsProvider;->PHOTO_VIEW_CIRCLE_MAP:Ljava/util/HashMap;

    const-string v1, "circle_id"

    const-string v2, "photos_from_circle.circle_id as circle_id"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2047
    sget-object v0, Lcom/google/android/apps/plus/content/EsProvider;->PHOTO_VIEW_CIRCLE_MAP:Ljava/util/HashMap;

    const-string v1, "circle_row_id"

    const-string v2, "photos_from_circle._id as circle_row_id"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2048
    sget-object v0, Lcom/google/android/apps/plus/content/EsProvider;->PHOTO_VIEW_CIRCLE_MAP:Ljava/util/HashMap;

    const-string v1, "photo_of_user_id"

    const-string v2, "NULL AS photo_of_user_id"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2049
    sget-object v0, Lcom/google/android/apps/plus/content/EsProvider;->PHOTO_VIEW_CIRCLE_MAP:Ljava/util/HashMap;

    const-string v1, "show_order"

    const-string v2, "NULL AS show_order"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2052
    new-instance v0, Ljava/util/HashMap;

    sget-object v1, Lcom/google/android/apps/plus/content/EsProvider;->PHOTO_VIEW_MAP:Ljava/util/HashMap;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    sput-object v0, Lcom/google/android/apps/plus/content/EsProvider;->PHOTO_VIEW_OF_USER_MAP:Ljava/util/HashMap;

    .line 2053
    sget-object v0, Lcom/google/android/apps/plus/content/EsProvider;->PHOTO_VIEW_OF_USER_MAP:Ljava/util/HashMap;

    const-string v1, "circle_id"

    const-string v2, "NULL AS circle_id"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2054
    sget-object v0, Lcom/google/android/apps/plus/content/EsProvider;->PHOTO_VIEW_OF_USER_MAP:Ljava/util/HashMap;

    const-string v1, "circle_row_id"

    const-string v2, "NULL AS circle_row_id"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2055
    sget-object v0, Lcom/google/android/apps/plus/content/EsProvider;->PHOTO_VIEW_OF_USER_MAP:Ljava/util/HashMap;

    const-string v1, "photo_of_user_id"

    const-string v2, "photos_of_user.photo_of_user_id as photo_of_user_id"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2058
    new-instance v0, Ljava/util/HashMap;

    sget-object v1, Lcom/google/android/apps/plus/content/EsProvider;->PHOTO_VIEW_MAP:Ljava/util/HashMap;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    sput-object v0, Lcom/google/android/apps/plus/content/EsProvider;->PHOTO_VIEW_STREAM_MAP:Ljava/util/HashMap;

    .line 2059
    sget-object v0, Lcom/google/android/apps/plus/content/EsProvider;->PHOTO_VIEW_STREAM_MAP:Ljava/util/HashMap;

    const-string v1, "circle_id"

    const-string v2, "NULL AS circle_id"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2060
    sget-object v0, Lcom/google/android/apps/plus/content/EsProvider;->PHOTO_VIEW_STREAM_MAP:Ljava/util/HashMap;

    const-string v1, "circle_row_id"

    const-string v2, "NULL AS circle_row_id"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2061
    sget-object v0, Lcom/google/android/apps/plus/content/EsProvider;->PHOTO_VIEW_STREAM_MAP:Ljava/util/HashMap;

    const-string v1, "photo_of_user_id"

    const-string v2, "NULL AS photo_of_user_id"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2062
    sget-object v0, Lcom/google/android/apps/plus/content/EsProvider;->PHOTO_VIEW_STREAM_MAP:Ljava/util/HashMap;

    const-string v1, "url"

    const-string v2, "photo_view.url as url"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2063
    sget-object v0, Lcom/google/android/apps/plus/content/EsProvider;->PHOTO_VIEW_STREAM_MAP:Ljava/util/HashMap;

    const-string v1, "stream_id"

    const-string v2, "photo_stream.stream_id as stream_id"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2070
    new-instance v0, Ljava/util/HashMap;

    sget-object v1, Lcom/google/android/apps/plus/content/EsProvider;->PHOTO_VIEW_STREAM_MAP:Ljava/util/HashMap;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    sput-object v0, Lcom/google/android/apps/plus/content/EsProvider;->PHOTO_VIEW_ACTIVITY_MAP:Ljava/util/HashMap;

    .line 2071
    sget-object v0, Lcom/google/android/apps/plus/content/EsProvider;->PHOTO_VIEW_ACTIVITY_MAP:Ljava/util/HashMap;

    const-string v1, "_id"

    const-string v2, "photo_stream._id as _id"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2072
    sget-object v0, Lcom/google/android/apps/plus/content/EsProvider;->PHOTO_VIEW_ACTIVITY_MAP:Ljava/util/HashMap;

    const-string v1, "url"

    const-string v2, "CASE WHEN photo_view.url NOT NULL THEN photo_view.url ELSE photo_stream.url END"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2078
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/android/apps/plus/content/EsProvider;->PHOTO_SHAPE_VIEW_MAP:Ljava/util/HashMap;

    .line 2079
    sget-object v0, Lcom/google/android/apps/plus/content/EsProvider;->PHOTO_SHAPE_VIEW_MAP:Ljava/util/HashMap;

    const-string v1, "photo_id"

    const-string v2, "photo_id"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2080
    sget-object v0, Lcom/google/android/apps/plus/content/EsProvider;->PHOTO_SHAPE_VIEW_MAP:Ljava/util/HashMap;

    const-string v1, "bounds"

    const-string v2, "bounds"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2081
    sget-object v0, Lcom/google/android/apps/plus/content/EsProvider;->PHOTO_SHAPE_VIEW_MAP:Ljava/util/HashMap;

    const-string v1, "creator_id"

    const-string v2, "creator_id"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2082
    sget-object v0, Lcom/google/android/apps/plus/content/EsProvider;->PHOTO_SHAPE_VIEW_MAP:Ljava/util/HashMap;

    const-string v1, "shape_id"

    const-string v2, "shape_id"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2083
    sget-object v0, Lcom/google/android/apps/plus/content/EsProvider;->PHOTO_SHAPE_VIEW_MAP:Ljava/util/HashMap;

    const-string v1, "status"

    const-string v2, "status"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2084
    sget-object v0, Lcom/google/android/apps/plus/content/EsProvider;->PHOTO_SHAPE_VIEW_MAP:Ljava/util/HashMap;

    const-string v1, "subject_id"

    const-string v2, "subject_id"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2085
    sget-object v0, Lcom/google/android/apps/plus/content/EsProvider;->PHOTO_SHAPE_VIEW_MAP:Ljava/util/HashMap;

    const-string v1, "creator_name"

    const-string v2, "creator_name"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2086
    sget-object v0, Lcom/google/android/apps/plus/content/EsProvider;->PHOTO_SHAPE_VIEW_MAP:Ljava/util/HashMap;

    const-string v1, "subject_name"

    const-string v2, "subject_name"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2087
    sget-object v0, Lcom/google/android/apps/plus/content/EsProvider;->PHOTO_SHAPE_VIEW_MAP:Ljava/util/HashMap;

    const-string v1, "subject_avatar"

    const-string v2, "subject_avatar"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2089
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/android/apps/plus/content/EsProvider;->PHOTO_COMMENTS_MAP:Ljava/util/HashMap;

    .line 2090
    sget-object v0, Lcom/google/android/apps/plus/content/EsProvider;->PHOTO_COMMENTS_MAP:Ljava/util/HashMap;

    const-string v1, "_id"

    const-string v2, "_id"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2091
    sget-object v0, Lcom/google/android/apps/plus/content/EsProvider;->PHOTO_COMMENTS_MAP:Ljava/util/HashMap;

    const-string v1, "author_id"

    const-string v2, "author_id"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2092
    sget-object v0, Lcom/google/android/apps/plus/content/EsProvider;->PHOTO_COMMENTS_MAP:Ljava/util/HashMap;

    const-string v1, "comment_id"

    const-string v2, "comment_id"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2093
    sget-object v0, Lcom/google/android/apps/plus/content/EsProvider;->PHOTO_COMMENTS_MAP:Ljava/util/HashMap;

    const-string v1, "content"

    const-string v2, "content"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2094
    sget-object v0, Lcom/google/android/apps/plus/content/EsProvider;->PHOTO_COMMENTS_MAP:Ljava/util/HashMap;

    const-string v1, "create_time"

    const-string v2, "create_time"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2095
    sget-object v0, Lcom/google/android/apps/plus/content/EsProvider;->PHOTO_COMMENTS_MAP:Ljava/util/HashMap;

    const-string v1, "plusone_data"

    const-string v2, "plusone_data"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2096
    sget-object v0, Lcom/google/android/apps/plus/content/EsProvider;->PHOTO_COMMENTS_MAP:Ljava/util/HashMap;

    const-string v1, "truncated"

    const-string v2, "truncated"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2097
    sget-object v0, Lcom/google/android/apps/plus/content/EsProvider;->PHOTO_COMMENTS_MAP:Ljava/util/HashMap;

    const-string v1, "update_time"

    const-string v2, "update_time"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2098
    sget-object v0, Lcom/google/android/apps/plus/content/EsProvider;->PHOTO_COMMENTS_MAP:Ljava/util/HashMap;

    const-string v1, "avatar"

    const-string v2, "avatars.small_image as avatar"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2099
    sget-object v0, Lcom/google/android/apps/plus/content/EsProvider;->PHOTO_COMMENTS_MAP:Ljava/util/HashMap;

    const-string v1, "owner_name"

    const-string v2, "contacts.name as owner_name"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2101
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/android/apps/plus/content/EsProvider;->FAVICONS_PROJECTION_MAP:Ljava/util/HashMap;

    .line 2102
    sget-object v0, Lcom/google/android/apps/plus/content/EsProvider;->FAVICONS_PROJECTION_MAP:Ljava/util/HashMap;

    const-string v1, "domain"

    const-string v2, "domain"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2103
    sget-object v0, Lcom/google/android/apps/plus/content/EsProvider;->FAVICONS_PROJECTION_MAP:Ljava/util/HashMap;

    const-string v1, "icon"

    const-string v2, "icon"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2105
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/android/apps/plus/content/EsProvider;->AD_PLUS_ONES_PROJECTION_MAP:Ljava/util/HashMap;

    .line 2106
    sget-object v0, Lcom/google/android/apps/plus/content/EsProvider;->AD_PLUS_ONES_PROJECTION_MAP:Ljava/util/HashMap;

    const-string v1, "share_token"

    const-string v2, "share_token"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2107
    sget-object v0, Lcom/google/android/apps/plus/content/EsProvider;->AD_PLUS_ONES_PROJECTION_MAP:Ljava/util/HashMap;

    const-string v1, "plus_one_id"

    const-string v2, "plus_one_id"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2108
    sget-object v0, Lcom/google/android/apps/plus/content/EsProvider;->AD_PLUS_ONES_PROJECTION_MAP:Ljava/util/HashMap;

    const-string v1, "set_by_viewer"

    const-string v2, "set_by_viewer"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2109
    sget-object v0, Lcom/google/android/apps/plus/content/EsProvider;->AD_PLUS_ONES_PROJECTION_MAP:Ljava/util/HashMap;

    const-string v1, "global_count"

    const-string v2, "global_count"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2110
    sget-object v0, Lcom/google/android/apps/plus/content/EsProvider;->AD_PLUS_ONES_PROJECTION_MAP:Ljava/util/HashMap;

    const-string v1, "friend_names"

    const-string v2, "friend_names"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2111
    sget-object v0, Lcom/google/android/apps/plus/content/EsProvider;->AD_PLUS_ONES_PROJECTION_MAP:Ljava/util/HashMap;

    const-string v1, "friend_ids"

    const-string v2, "friend_ids"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2112
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 39
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    .line 766
    return-void
.end method

.method public static analyzeDatabase(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 3346
    invoke-static {p0, p1}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->getDatabaseHelper(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)Lcom/google/android/apps/plus/content/EsDatabaseHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 3348
    const-string v1, "ANALYZE"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3349
    const-string v1, "ANALYZE sqlite_master"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3350
    return-void
.end method

.method public static appendAccountParameter(Landroid/net/Uri$Builder;Lcom/google/android/apps/plus/content/EsAccount;)Landroid/net/Uri$Builder;
    .registers 4
    .parameter "builder"
    .parameter "account"

    .prologue
    .line 2983
    const-string v0, "account"

    invoke-virtual {p1}, Lcom/google/android/apps/plus/content/EsAccount;->getIndex()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static appendAccountParameter(Landroid/net/Uri;Lcom/google/android/apps/plus/content/EsAccount;)Landroid/net/Uri;
    .registers 3
    .parameter "uri"
    .parameter "account"

    .prologue
    .line 2991
    invoke-virtual {p0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/android/apps/plus/content/EsProvider;->appendAccountParameter(Landroid/net/Uri$Builder;Lcom/google/android/apps/plus/content/EsAccount;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static buildAdPlusOneUri(Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;)Landroid/net/Uri;
    .registers 4
    .parameter "account"
    .parameter "shareToken"

    .prologue
    .line 2913
    sget-object v1, Lcom/google/android/apps/plus/content/EsProvider;->AD_PLUS_ONES_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 2914
    .local v0, builder:Landroid/net/Uri$Builder;
    invoke-virtual {v0, p1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 2915
    invoke-static {v0, p0}, Lcom/google/android/apps/plus/content/EsProvider;->appendAccountParameter(Landroid/net/Uri$Builder;Lcom/google/android/apps/plus/content/EsAccount;)Landroid/net/Uri$Builder;

    .line 2916
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    return-object v1
.end method

.method public static buildLocationQueryUri(Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;)Landroid/net/Uri;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 2943
    sget-object v0, Lcom/google/android/apps/plus/content/EsProvider;->LOCATION_QUERIES_VIEW_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 2944
    const-string v1, "query"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 2945
    invoke-static {v0, p0}, Lcom/google/android/apps/plus/content/EsProvider;->appendAccountParameter(Landroid/net/Uri$Builder;Lcom/google/android/apps/plus/content/EsAccount;)Landroid/net/Uri$Builder;

    .line 2946
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static buildMessagesUri(Lcom/google/android/apps/plus/content/EsAccount;J)Landroid/net/Uri;
    .registers 6
    .parameter "account"
    .parameter "conversationRowId"

    .prologue
    .line 3003
    sget-object v1, Lcom/google/android/apps/plus/content/EsProvider;->MESSAGES_BY_CONVERSATION_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 3004
    .local v0, builder:Landroid/net/Uri$Builder;
    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 3005
    const-string v1, "account"

    invoke-virtual {p0}, Lcom/google/android/apps/plus/content/EsAccount;->getIndex()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 3007
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    return-object v1
.end method

.method public static buildParticipantsUri(Lcom/google/android/apps/plus/content/EsAccount;)Landroid/net/Uri;
    .registers 4
    .parameter "account"

    .prologue
    .line 3048
    sget-object v1, Lcom/google/android/apps/plus/content/EsProvider;->PARTICIPANTS_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 3049
    .local v0, builder:Landroid/net/Uri$Builder;
    const-string v1, "account"

    invoke-virtual {p0}, Lcom/google/android/apps/plus/content/EsAccount;->getIndex()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 3051
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    return-object v1
.end method

.method public static buildParticipantsUri(Lcom/google/android/apps/plus/content/EsAccount;J)Landroid/net/Uri;
    .registers 6
    .parameter "account"
    .parameter "conversationRowId"

    .prologue
    .line 3033
    sget-object v1, Lcom/google/android/apps/plus/content/EsProvider;->PARTICIPANTS_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 3034
    .local v0, builder:Landroid/net/Uri$Builder;
    const-string v1, "conversation"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 3035
    const-string v1, "account"

    invoke-virtual {p0}, Lcom/google/android/apps/plus/content/EsAccount;->getIndex()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 3037
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    return-object v1
.end method

.method public static buildPeopleQueryUri(Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;ZZLjava/lang/String;I)Landroid/net/Uri;
    .registers 10
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2963
    sget-object v0, Lcom/google/android/apps/plus/content/EsProvider;->CONTACTS_QUERY_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    .line 2964
    if-nez p1, :cond_a

    const-string p1, ""

    :cond_a
    invoke-virtual {v1, p1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 2965
    const-string v0, "limit"

    invoke-static {p5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 2966
    const-string v0, "self_gaia_id"

    invoke-virtual {p0}, Lcom/google/android/apps/plus/content/EsAccount;->getUserId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 2968
    const-string v2, "plus_pages"

    if-eqz p2, :cond_44

    const-string v0, "true"

    :goto_29
    invoke-virtual {v1, v2, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 2970
    const-string v2, "in_circles"

    if-eqz p3, :cond_47

    const-string v0, "true"

    :goto_32
    invoke-virtual {v1, v2, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 2972
    if-eqz p4, :cond_3c

    .line 2973
    const-string v0, "activity_id"

    invoke-virtual {v1, v0, p4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 2975
    :cond_3c
    invoke-static {v1, p0}, Lcom/google/android/apps/plus/content/EsProvider;->appendAccountParameter(Landroid/net/Uri$Builder;Lcom/google/android/apps/plus/content/EsAccount;)Landroid/net/Uri$Builder;

    .line 2976
    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0

    .line 2968
    :cond_44
    const-string v0, "false"

    goto :goto_29

    .line 2970
    :cond_47
    const-string v0, "false"

    goto :goto_32
.end method

.method public static buildStreamUri(Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;)Landroid/net/Uri;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 2898
    sget-object v0, Lcom/google/android/apps/plus/content/EsProvider;->ACTIVITIES_STREAM_VIEW_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 2899
    const-string v1, "stream"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 2900
    invoke-static {v0, p0}, Lcom/google/android/apps/plus/content/EsProvider;->appendAccountParameter(Landroid/net/Uri$Builder;Lcom/google/android/apps/plus/content/EsAccount;)Landroid/net/Uri$Builder;

    .line 2901
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static declared-synchronized cleanupData(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Z)V
    .registers 15
    .parameter
    .parameter
    .parameter

    .prologue
    .line 3292
    const-class v1, Lcom/google/android/apps/plus/content/EsProvider;

    monitor-enter v1

    :try_start_3
    invoke-static {p0, p1}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->getDatabaseHelper(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)Lcom/google/android/apps/plus/content/EsDatabaseHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 3294
    new-instance v0, Ljava/io/File;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v3

    .line 3295
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 3298
    const-wide/32 v7, 0x3d0900

    cmp-long v0, v3, v7

    if-gez v0, :cond_92

    if-nez p2, :cond_92

    .line 3316
    const-string v0, "EsProvider"

    const/4 v7, 0x4

    invoke-static {v0, v7}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_90

    .line 3317
    new-instance v0, Ljava/io/File;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v7

    .line 3318
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 3319
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    sub-long v5, v9, v5

    .line 3321
    const-wide/16 v9, 0x3e8

    div-long v9, v5, v9

    invoke-virtual {v0, v9, v10}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v9, "."

    invoke-virtual {v2, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-wide/16 v9, 0x3e8

    rem-long/2addr v5, v9

    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v5, " seconds"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 3326
    const-string v2, "EsProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ">>>>> cleanup db took "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, " old size: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ", new size: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_90
    .catchall {:try_start_3 .. :try_end_90} :catchall_11d

    .line 3330
    :cond_90
    :goto_90
    monitor-exit v1

    return-void

    .line 3302
    :cond_92
    :try_start_92
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V
    :try_end_95
    .catchall {:try_start_92 .. :try_end_95} :catchall_125

    .line 3304
    :try_start_95
    invoke-static {v2, p1}, Lcom/google/android/apps/plus/content/EsPostsData;->cleanupData(Landroid/database/sqlite/SQLiteDatabase;Lcom/google/android/apps/plus/content/EsAccount;)V

    .line 3305
    invoke-static {v2, p1}, Lcom/google/android/apps/plus/content/EsNotificationData;->cleanupData(Landroid/database/sqlite/SQLiteDatabase;Lcom/google/android/apps/plus/content/EsAccount;)V

    .line 3306
    invoke-static {v2, p1}, Lcom/google/android/apps/plus/content/EsPeopleData;->cleanupData(Landroid/database/sqlite/SQLiteDatabase;Lcom/google/android/apps/plus/content/EsAccount;)V

    .line 3307
    invoke-static {v2, p1}, Lcom/google/android/apps/plus/content/EsPhotosData;->cleanupData(Landroid/database/sqlite/SQLiteDatabase;Lcom/google/android/apps/plus/content/EsAccount;)V

    .line 3308
    invoke-static {v2, p1}, Lcom/google/android/apps/plus/content/EsConversationsData;->cleanupData(Landroid/database/sqlite/SQLiteDatabase;Lcom/google/android/apps/plus/content/EsAccount;)V

    .line 3309
    invoke-static {v2, p1, p0}, Lcom/google/android/apps/plus/content/EsAdPlusOnesData;->cleanupData(Landroid/database/sqlite/SQLiteDatabase;Lcom/google/android/apps/plus/content/EsAccount;Landroid/content/Context;)V

    .line 3310
    invoke-static {v2, p1}, Lcom/google/android/apps/plus/content/EsAvatarData;->cleanupData(Landroid/database/sqlite/SQLiteDatabase;Lcom/google/android/apps/plus/content/EsAccount;)V

    .line 3311
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_ad
    .catchall {:try_start_95 .. :try_end_ad} :catchall_120

    .line 3313
    :try_start_ad
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_b0
    .catchall {:try_start_ad .. :try_end_b0} :catchall_125

    .line 3316
    :try_start_b0
    const-string v0, "EsProvider"

    const/4 v7, 0x4

    invoke-static {v0, v7}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_90

    .line 3317
    new-instance v0, Ljava/io/File;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v7

    .line 3318
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 3319
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    sub-long v5, v9, v5

    .line 3321
    const-wide/16 v9, 0x3e8

    div-long v9, v5, v9

    invoke-virtual {v0, v9, v10}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v9, "."

    invoke-virtual {v2, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-wide/16 v9, 0x3e8

    rem-long/2addr v5, v9

    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v5, " seconds"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 3326
    const-string v2, "EsProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ">>>>> cleanup db took "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, " old size: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ", new size: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_11b
    .catchall {:try_start_b0 .. :try_end_11b} :catchall_11d

    goto/16 :goto_90

    .line 3292
    :catchall_11d
    move-exception v0

    monitor-exit v1

    throw v0

    .line 3313
    :catchall_120
    move-exception v0

    :try_start_121
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0
    :try_end_125
    .catchall {:try_start_121 .. :try_end_125} :catchall_125

    .line 3316
    :catchall_125
    move-exception v0

    :try_start_126
    const-string v7, "EsProvider"

    const/4 v8, 0x4

    invoke-static {v7, v8}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v7

    if-eqz v7, :cond_191

    .line 3317
    new-instance v7, Ljava/io/File;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v7, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->length()J

    move-result-wide v7

    .line 3318
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 3319
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    sub-long v5, v9, v5

    .line 3321
    const-wide/16 v9, 0x3e8

    div-long v9, v5, v9

    invoke-virtual {v2, v9, v10}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v9

    const-string v10, "."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    const-wide/16 v10, 0x3e8

    rem-long/2addr v5, v10

    invoke-virtual {v9, v5, v6}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, " seconds"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 3326
    const-string v5, "EsProvider"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, ">>>>> cleanup db took "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, " old size: "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", new size: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3316
    :cond_191
    throw v0
    :try_end_192
    .catchall {:try_start_126 .. :try_end_192} :catchall_11d
.end method

.method public static deleteDatabase(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)V
    .registers 3
    .parameter "context"
    .parameter "account"

    .prologue
    .line 3339
    invoke-static {p0, p1}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->getDatabaseHelper(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)Lcom/google/android/apps/plus/content/EsDatabaseHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->deleteDatabase()V

    .line 3340
    return-void
.end method

.method static getIndexSQLs()[Ljava/lang/String;
    .registers 3

    .prologue
    .line 3170
    const/16 v0, 0xd

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "CREATE INDEX contacts_in_my_circles ON contacts(in_my_circles,person_id)"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "CREATE INDEX contacts_name ON contacts(name)"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "CREATE INDEX contacts_gaia_id ON contacts(gaia_id)"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "CREATE INDEX contacts_public_id ON contacts(public_id)"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "CREATE UNIQUE INDEX circle_contact_forward ON circle_contact(link_circle_id,link_person_id)"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "CREATE UNIQUE INDEX circle_contact_backward ON circle_contact(link_person_id,link_circle_id)"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "CREATE INDEX contact_search_key ON contact_search(search_key)"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "CREATE INDEX album_album_id ON album(album_id)"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "CREATE INDEX photo_photo_id ON photo(photo_id)"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "CREATE INDEX photo_comment_photo_id ON photo_comment(photo_id,comment_id)"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "CREATE INDEX photo_shape_photo_id ON photo_shape(photo_id,shape_id)"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "CREATE INDEX photo_stream_photo_id ON photo_stream(photo_id)"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "CREATE INDEX photos_of_user_photo_id ON photo_comment(photo_id)"

    aput-object v2, v0, v1

    .line 3200
    return-object v0
.end method

.method protected static getTableSQLs()[Ljava/lang/String;
    .registers 3

    .prologue
    .line 3108
    const/16 v0, 0x25

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "CREATE TABLE account_status (user_id INT DEFAULT(0),last_sync_time INT DEFAULT(-1),circle_sync_time INT DEFAULT(-1),people_sync_time INT DEFAULT(-1),people_last_update_token TEXT,suggested_people_sync_time INT DEFAULT(-1),blocked_people_sync_time INT DEFAULT(-1),avatars_downloaded INT DEFAULT(0),audience_data BLOB,contacts_sync_version INT DEFAULT(0),push_notifications INT DEFAULT(0));"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "INSERT INTO account_status DEFAULT VALUES;"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "CREATE TABLE activity_streams (stream_key TEXT NOT NULL,activity_id TEXT NOT NULL,sort_index INT NOT NULL,last_activity INT,token TEXT,PRIMARY KEY (stream_key,activity_id));"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "CREATE TABLE activities (_id INTEGER PRIMARY KEY,activity_id TEXT UNIQUE NOT NULL,data_state INT NOT NULL DEFAULT (0), author_id INT NOT NULL,source INT NOT NULL,source_name TEXT,total_comment_count INT NOT NULL,plus_one_data BLOB,public INT NOT NULL,acl_display TEXT,can_comment INT NOT NULL,can_reshare INT NOT NULL,has_muted INT NOT NULL,loc BLOB,explanations BLOB,comments BLOB,media BLOB,created INT NOT NULL,modified INT NOT NULL,updated INT NOT NULL,hangout_data BLOB);"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "CREATE TABLE media (_id INTEGER PRIMARY KEY,activity_id TEXT NOT NULL,thumbnail_url TEXT NOT NULL,data BLOB,FOREIGN KEY (activity_id) REFERENCES activities(activity_id) ON DELETE CASCADE);"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "CREATE TABLE activity_comments (_id INTEGER PRIMARY KEY,activity_id TEXT NOT NULL,comment_id TEXT UNIQUE NOT NULL,author_id INT NOT NULL,content TEXT,created INT NOT NULL,truncated INT NOT NULL,plus_one_data BLOB,FOREIGN KEY (activity_id) REFERENCES activities(activity_id) ON DELETE CASCADE);"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "CREATE TABLE locations (_id INTEGER PRIMARY KEY,qrid INT NOT NULL,name TEXT,dist INT,location BLOB,FOREIGN KEY (qrid) REFERENCES location_queries(_id) ON DELETE CASCADE);"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "CREATE TABLE location_queries (_id INTEGER PRIMARY KEY,key TEXT UNIQUE NOT NULL);"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "CREATE TABLE notifications (_id INTEGER PRIMARY KEY,notif_id TEXT UNIQUE NOT NULL,type TEXT NOT NULL,snippet TEXT,message TEXT,enabled INT,read INT NOT NULL,seen INT NOT NULL,timestamp INT NOT NULL,circle_data BLOB,pd_person_id INT,pd_album_id INT,pd_photo_id INT,activity_id TEXT);"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "CREATE TABLE contacts (person_id TEXT PRIMARY KEY,gaia_id INTEGER,public_id TEXT,name TEXT,last_updated_time INT,profile_type INT DEFAULT(0),in_my_circles INT DEFAULT(0),blocked INT DEFAULT(0) );"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "CREATE TABLE circles (circle_id TEXT PRIMARY KEY,circle_name TEXT,type INT, membership_status INT, contact_count INT,semantic_hints INT NOT NULL DEFAULT(0),show INT,show_order INT);"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "CREATE TABLE circle_contact (link_circle_id TEXT NOT NULL,link_person_id TEXT NOT NULL,UNIQUE (link_circle_id, link_person_id), FOREIGN KEY (link_circle_id) REFERENCES circles(circle_id) ON DELETE CASCADE,FOREIGN KEY (link_person_id) REFERENCES contacts(person_id) ON DELETE CASCADE);"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "CREATE TABLE suggested_people (person_id TEXT PRIMARY KEY,dismissed INT DEFAULT(0),sort_order INT DEFAULT(0) );"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "CREATE TABLE circle_action (gaia_id INT NOT NULL,notification_id INT NOT NULL,UNIQUE (gaia_id, notification_id), FOREIGN KEY (notification_id) REFERENCES notifications(notif_id) ON DELETE CASCADE);"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "CREATE TABLE avatars (user_id INTEGER PRIMARY KEY,photo_downloaded INT NOT NULL DEFAULT(0),image_update_time INT,signature INT, small_image BLOB,medium_image BLOB,large_image BLOB);"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "CREATE TABLE photos_home (_id INTEGER PRIMARY KEY AUTOINCREMENT,type INT NOT NULL,photo_count INT,timestamp INT,notification_count INT);"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "CREATE TABLE photos_home_cover (photos_home_key INT NOT NULL,photo_id INT,url TEXT NOT NULL,width INT,height INT,size INT,image BLOB, FOREIGN KEY (photos_home_key) REFERENCES photos_home(_id) ON DELETE CASCADE);"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "CREATE TABLE profiles (person_id TEXT PRIMARY KEY,contact_update_time INT,contact_proto BLOB,profile_update_time INT,profile_proto BLOB,plus_one_update_time INT,plus_one_proto BLOB,FOREIGN KEY (person_id) REFERENCES contacts(person_id) ON DELETE CASCADE);"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "CREATE TABLE album (_id INTEGER PRIMARY KEY AUTOINCREMENT,album_id INT UNIQUE NOT NULL,title TEXT,photo_count INT,sort_order INT NOT NULL DEFAULT(50),owner_id INT,timestamp INT,stream_id TEXT,is_activity BOOLEAN DEFAULT \'0\');"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "CREATE TABLE album_cover (album_key INT NOT NULL,photo_id INT,url TEXT,width INT,height INT,size INT, FOREIGN KEY (album_key) REFERENCES album(_id) ON DELETE CASCADE);"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "CREATE TABLE photo (_id INTEGER PRIMARY KEY AUTOINCREMENT, photo_id INT NOT NULL, type INT NOT NULL, url TEXT, title TEXT, description TEXT, action_state INT, comment_count INT, owner_id INT, plus_one_key INT NOT NULL, width INT, height INT, album_id INT NOT NULL, activities BLOB, timestamp INT, entity_version INT, fingerprint BLOB, video_data BLOB, UNIQUE (photo_id, type) FOREIGN KEY (album_id) REFERENCES album(album_id) ON DELETE CASCADE);"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "CREATE TABLE photo_comment (_id INTEGER PRIMARY KEY, photo_id INT NOT NULL, comment_id TEXT UNIQUE NOT NULL, author_id INT NOT NULL, content TEXT, create_time INT, truncated INT, update_time INT, plusone_data BLOB);"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "CREATE TABLE photo_plusone (_id INTEGER PRIMARY KEY,photo_id INT NOT NULL,plusone_id TEXT,plusone_by_me BOOLEAN DEFAULT \'0\' NOT NULL,plusone_count INTEGER,plusone_data BLOB);"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "CREATE TABLE photos_of_user (photo_id INT NOT NULL,photo_of_user_id INT NOT NULL,type INT DEFAULT 4, FOREIGN KEY (photo_id,type) REFERENCES photo(photo_id,type) ON DELETE CASCADE);"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "CREATE TABLE photos_from_circle (_id INTEGER PRIMARY KEY,photo_id INT NOT NULL,circle_id TEXT,show_order INT DEFAULT \'0\',type INT DEFAULT 2, FOREIGN KEY (photo_id,type) REFERENCES photo(photo_id,type) ON DELETE CASCADE);"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "CREATE TABLE photo_stream (_id INTEGER PRIMARY KEY,photo_id INT,url TEXT,user_id INT NOT NULL,stream_id TEXT NOT NULL,type INT DEFAULT 3, FOREIGN KEY (photo_id,type) REFERENCES photo(photo_id,type) ON DELETE CASCADE);"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "CREATE TABLE photo_shape (shape_id INTEGER PRIMARY KEY,photo_id INT NOT NULL,subject_id INT,creator_id INT NOT NULL,status INT DEFAULT \'0\' NOT NULL,bounds BLOB);"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "CREATE TABLE conversations (_id INTEGER PRIMARY KEY, conversation_id TEXT, is_muted INT, is_visible INT, latest_event_timestamp INT, latest_message_timestamp INT, earliest_event_timestamp INT, has_older_events INT, unread_count INT, name TEXT, generated_name TEXT, latest_message_text TEXT, latest_message_image_url TEXT, latest_message_author_id TEXT, latest_message_type INT, is_group INT, avatar_id STRING, avatar_type INT, is_pending_accept INT, inviter_id TEXT, fatal_error_type INT, is_pending_leave INT, is_awaiting_event_stream INT, is_awaiting_older_events INT, first_event_timestamp INT, UNIQUE (conversation_id ));"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "CREATE TABLE conversation_participants (conversation_id INT, participant_id TEXT, active INT, UNIQUE (conversation_id,participant_id) ON CONFLICT REPLACE, FOREIGN KEY (conversation_id) REFERENCES conversations(_id) ON DELETE CASCADE, FOREIGN KEY (participant_id) REFERENCES participants(participant_id) ON DELETE CASCADE);"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "CREATE TABLE participants (_id INTEGER PRIMARY KEY, participant_id TEXT UNIQUE ON CONFLICT REPLACE, full_name TEXT, first_name TEXT,type INT);"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "CREATE TABLE messages (_id INTEGER PRIMARY KEY, message_id TEXT, conversation_id INT, author_id TEXT, text TEXT, timestamp INT, status INT, type INT, notification_seen INT, image_url TEXT, FOREIGN KEY (conversation_id) REFERENCES conversations(_id) ON DELETE CASCADE,FOREIGN KEY (author_id) REFERENCES participants(participant_id) ON DELETE CASCADE, UNIQUE (conversation_id,message_id) ON CONFLICT REPLACE);"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "CREATE TABLE realtimechat_metadata (key TEXT UNIQUE, value TEXT)"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string v2, "CREATE TABLE favicons (domain TEXT PRIMARY KEY, icon BLOB)"

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-string v2, "CREATE TABLE ad_plus_ones (share_token TEXT PRIMARY KEY,plus_one_id TEXT NOT NULL, set_by_viewer BOOLEAN DEFAULT \'0\' NOT NULL,global_count INT DEFAULT \'0\' NOT NULL,friend_names BLOB,friend_ids BLOB);"

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const-string v2, "CREATE TABLE analytics_events (event_data BLOB NOT NULL)"

    aput-object v2, v0, v1

    const/16 v1, 0x23

    const-string v2, "CREATE TABLE search (search_key TEXT NOT NULL,continuation_token TEXT,PRIMARY KEY (search_key));"

    aput-object v2, v0, v1

    const/16 v1, 0x24

    const-string v2, "CREATE TABLE contact_search(search_person_id TEXT NOT NULL,search_key_type TEXT NOT NULL DEFAULT(0),search_key TEXT,FOREIGN KEY (search_person_id) REFERENCES contacts(person_id) ON DELETE CASCADE);"

    aput-object v2, v0, v1

    .line 3147
    return-object v0
.end method

.method static getViewNames()[Ljava/lang/String;
    .registers 3

    .prologue
    .line 3207
    const/16 v0, 0xc

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "activities_stream_view"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "activity_view"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "comments_view"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "location_queries_view"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "conversations_view"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "participants_view"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "messages_view"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "photos_home_view"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "album_view"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "photo_view"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "photo_shape_view"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "message_notifications_view"

    aput-object v2, v0, v1

    .line 3221
    return-object v0
.end method

.method static getViewSQLs()[Ljava/lang/String;
    .registers 3

    .prologue
    .line 3228
    const/16 v0, 0xc

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, " CREATE VIEW activities_stream_view AS SELECT activity_streams.stream_key as stream_key,activity_streams.sort_index as sort_index,activity_streams.last_activity as last_activity,activity_streams.token as token,activities._id as _id,activities.activity_id as activity_id,activities.author_id as author_id,activities.source as source,activities.source_name as source_name,activities.total_comment_count as total_comment_count,activities.plus_one_data as plus_one_data,activities.public as public,activities.acl_display as acl_display,activities.can_comment as can_comment,activities.can_reshare as can_reshare,activities.has_muted as has_muted,activities.loc as loc,activities.explanations as explanations,activities.comments as comments,activities.media as media,activities.created as created,activities.modified as modified,activities.updated as updated,activities.hangout_data as hangout_data,activities.data_state as data_state,contacts.name as name FROM activity_streams INNER JOIN activities ON activity_streams.activity_id=activities.activity_id INNER JOIN contacts ON activities.author_id=contacts.gaia_id WHERE data_state    IN (1, 0)"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, " CREATE VIEW activity_view AS SELECT activities._id as _id,activities.activity_id as activity_id,activities.author_id as author_id,activities.source as source,activities.source_name as source_name,activities.total_comment_count as total_comment_count,activities.plus_one_data as plus_one_data,activities.public as public,activities.acl_display as acl_display,activities.can_comment as can_comment,activities.can_reshare as can_reshare,activities.has_muted as has_muted,activities.loc as loc,activities.explanations as explanations,activities.comments as comments,activities.media as media,activities.created as created,activities.modified as modified,activities.hangout_data as hangout_data,activities.data_state as data_state,contacts.name as name FROM activities JOIN contacts ON activities.author_id=contacts.gaia_id"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, " CREATE VIEW comments_view AS SELECT activity_comments._id as _id,activity_comments.activity_id as activity_id,activity_comments.comment_id as comment_id,activity_comments.author_id as author_id,activity_comments.content as content,activity_comments.created as created,activity_comments.plus_one_data as plus_one_data,activity_comments.truncated as truncated,contacts.name as name FROM activity_comments JOIN contacts ON activity_comments.author_id=contacts.gaia_id"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, " CREATE VIEW location_queries_view AS SELECT location_queries.key as key,locations._id as _id,locations.name as name,locations.dist as dist,locations.location as location FROM location_queries LEFT JOIN locations ON location_queries._id=locations.qrid"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "CREATE VIEW conversations_view AS SELECT conversations._id as _id, conversations.conversation_id as conversation_id, conversations.is_muted as is_muted, conversations.is_visible as is_visible, conversations.latest_event_timestamp as latest_event_timestamp, conversations.latest_message_timestamp as latest_message_timestamp, conversations.earliest_event_timestamp as earliest_event_timestamp, conversations.has_older_events as has_older_events, conversations.unread_count as unread_count, conversations.name as name, conversations.generated_name as generated_name, conversations.latest_message_text as latest_message_text, conversations.latest_message_image_url as latest_message_image_url, conversations.latest_message_author_id as latest_message_author_id, conversations.latest_message_type as latest_message_type, conversations.is_group as is_group, conversations.avatar_id as avatar_id, conversations.avatar_type as avatar_type, conversations.is_pending_accept as is_pending_accept, conversations.inviter_id as inviter_id, conversations.fatal_error_type as fatal_error_type, conversations.is_pending_leave as is_pending_leave, conversations.is_awaiting_event_stream as is_awaiting_event_stream, conversations.is_awaiting_older_events as is_awaiting_older_events, conversations.first_event_timestamp as first_event_timestamp, participants.full_name as latest_message_author_full_name, participants.first_name as latest_message_author_first_name, participants.type as latest_message_author_type, inviter_alias.full_name as inviter_full_name, inviter_alias.first_name as inviter_first_name, inviter_alias.type as inviter_type  FROM conversations LEFT JOIN participants ON conversations.latest_message_author_id=participants.participant_id LEFT JOIN participants inviter_alias ON conversations.inviter_id=inviter_alias.participant_id"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "CREATE VIEW participants_view AS SELECT participants._id as _id, participants.participant_id as participant_id, participants.full_name as full_name, participants.first_name as first_name, participants.type as type, conversation_participants.conversation_id as conversation_id, conversation_participants.active as active FROM participants JOIN conversation_participants ON participants.participant_id=conversation_participants.participant_id"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "CREATE VIEW messages_view AS SELECT messages._id as _id, messages.message_id as message_id, messages.conversation_id as conversation_id, messages.author_id as author_id, messages.text as text, messages.timestamp as timestamp, messages.status as status, messages.type as type, messages.image_url as image_url, participants.full_name as author_full_name, participants.first_name as author_first_name, participants.type as author_type  FROM messages LEFT JOIN participants ON messages.author_id=participants.participant_id"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "CREATE VIEW photos_home_view AS SELECT photos_home._id as _id, photos_home.photo_count as photo_count, photos_home.notification_count as notification_count, photos_home.timestamp as timestamp, photos_home.type as type, photos_home_cover.height as height, photos_home_cover.image as image, photos_home_cover.photo_id as photo_id, photos_home_cover.photos_home_key as photos_home_key, photos_home_cover.size as size, photos_home_cover.url as url, photos_home_cover.width as width FROM photos_home LEFT JOIN photos_home_cover ON photos_home._id=photos_home_cover.photos_home_key"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "CREATE VIEW album_view AS SELECT album._id as _id, album.album_id as album_id, album.is_activity as is_activity, album.owner_id as owner_id, album.photo_count as photo_count, album.sort_order as sort_order, album.stream_id as stream_id, album.timestamp as timestamp, album.title as title, album_cover.album_key as album_key, album_cover.height as height, album_cover.photo_id as photo_id, album_cover.size as size, album_cover.url as url, album_cover.width as width FROM album LEFT JOIN album_cover ON album._id=album_cover.album_key"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "CREATE VIEW photo_view AS SELECT photo._id as _id, photo.action_state as action_state, photo.activities as activities, photo.album_id as album_id, photo.comment_count as comment_count, photo.description as description, photo.entity_version as entity_version, photo.height as height, photo.owner_id as owner_id, photo.photo_id as photo_id, photo.fingerprint as fingerprint, photo.timestamp as timestamp, photo.title as title, photo.type as type, photo.url as url, photo.video_data as video_data, photo.width as width, photo_plusone.plusone_count as plusone_count, photo_plusone.plusone_data as plusone_data, photo_plusone.plusone_by_me as plusone_by_me, photo_plusone.plusone_id as plusone_id, album.title as album_name, album.stream_id as album_stream, avatars.small_image as avatar, contacts.name as owner_name, (SELECT a.status FROM account_status,photo_shape as a WHERE a.photo_id=photo.photo_id AND a.subject_id=account_status.user_id AND a.status=4 LIMIT 1) AS pending_status FROM photo LEFT JOIN photo_plusone ON photo.photo_id=photo_plusone.photo_id LEFT JOIN album ON photo.album_id=album.album_id LEFT JOIN avatars ON photo.owner_id=avatars.user_id LEFT JOIN contacts ON photo.owner_id=contacts.gaia_id"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "CREATE VIEW photo_shape_view AS SELECT photo_shape.photo_id as photo_id, photo_shape.bounds as bounds, photo_shape.creator_id as creator_id, photo_shape.shape_id as shape_id, photo_shape.status as status, photo_shape.subject_id as subject_id, (SELECT a.name FROM contacts as a WHERE a.gaia_id=photo_shape.creator_id) AS creator_name, (SELECT b.name FROM contacts as b WHERE b.gaia_id=photo_shape.subject_id) AS subject_name, avatars.small_image as subject_avatar FROM photo_shape LEFT JOIN avatars ON photo_shape.subject_id=avatars.user_id"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "CREATE VIEW message_notifications_view AS SELECT messages._id as _id, messages.message_id as message_id, messages.conversation_id as conversation_id, messages.author_id as author_id, messages.text as text, messages.image_url as image_url, messages.timestamp as timestamp, messages.status as status, messages.type as type, messages.notification_seen as notification_seen, author_alias.full_name as author_full_name, author_alias.first_name as author_first_name, author_alias.type as author_type, conversations.is_muted as conversation_muted, conversations.is_visible as conversation_visible, conversations.is_group as conversation_group, conversations.is_pending_accept as conversation_pending_accept, conversations.is_pending_leave as conversation_pending_leave, conversations.name as conversation_name, conversations.generated_name as generated_name, inviter_alias.participant_id as inviter_id, inviter_alias.full_name as inviter_full_name, inviter_alias.first_name as inviter_first_name, inviter_alias.type as inviter_type  FROM messages LEFT JOIN participants author_alias ON messages.author_id=author_alias.participant_id LEFT JOIN conversations ON messages.conversation_id=conversations._id LEFT JOIN participants inviter_alias ON conversations.inviter_id=inviter_alias.participant_id"

    aput-object v2, v0, v1

    .line 3242
    return-object v0
.end method

.method public static insertVirtualCircle(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;IZI)V
    .registers 10
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 3271
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 3272
    const-string v2, "circle_id"

    invoke-virtual {v1, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3273
    const-string v2, "circle_name"

    invoke-virtual {v1, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3274
    const-string v2, "type"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3275
    const-string v2, "membership_status"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3276
    const-string v2, "contact_count"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3277
    const-string v2, "semantic_hints"

    const/16 v3, 0xf

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3278
    const-string v2, "show"

    if-eqz p4, :cond_3b

    const/4 v0, 0x1

    :cond_3b
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3279
    const-string v0, "show_order"

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3280
    const-string v0, "circles"

    const-string v2, "circle_id"

    const/4 v3, 0x4

    invoke-virtual {p0, v0, v2, v1, v3}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    .line 3282
    return-void
.end method

.method public static insertVirtualCircles(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 8
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x1

    const/4 v3, -0x1

    .line 3251
    const-string v1, "v.nearby"

    const v0, 0x7f0700d0

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/16 v5, 0x2710

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lcom/google/android/apps/plus/content/EsProvider;->insertVirtualCircle(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;IZI)V

    .line 3256
    const-string v1, "v.all.circles"

    const v0, 0x7f0700d1

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/16 v5, 0xa

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lcom/google/android/apps/plus/content/EsProvider;->insertVirtualCircle(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;IZI)V

    .line 3261
    const-string v1, "v.whatshot"

    const v0, 0x7f0700d3

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x0

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lcom/google/android/apps/plus/content/EsProvider;->insertVirtualCircle(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;IZI)V

    .line 3264
    return-void
.end method

.method public static localeChanged(Landroid/content/Context;)V
    .registers 7
    .parameter "context"

    .prologue
    .line 2868
    invoke-static {p0}, Lcom/google/android/apps/plus/service/EsService;->getActiveAccount(Landroid/content/Context;)Lcom/google/android/apps/plus/content/EsAccount;

    move-result-object v0

    .line 2869
    .local v0, account:Lcom/google/android/apps/plus/content/EsAccount;
    if-nez v0, :cond_7

    .line 2887
    :goto_6
    return-void

    .line 2873
    :cond_7
    invoke-static {p0, v0}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->getDatabaseHelper(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)Lcom/google/android/apps/plus/content/EsDatabaseHelper;

    move-result-object v2

    .line 2874
    .local v2, helper:Lcom/google/android/apps/plus/content/EsDatabaseHelper;
    invoke-virtual {v2}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 2875
    .local v1, db:Landroid/database/sqlite/SQLiteDatabase;
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/database/sqlite/SQLiteDatabase;->setLocale(Ljava/util/Locale;)V

    .line 2876
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 2878
    :try_start_19
    invoke-virtual {v2, v1, v0}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->rebuildTables(Landroid/database/sqlite/SQLiteDatabase;Lcom/google/android/apps/plus/content/EsAccount;)V

    .line 2879
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1f
    .catchall {:try_start_19 .. :try_end_1f} :catchall_35

    .line 2881
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 2884
    invoke-virtual {v0}, Lcom/google/android/apps/plus/content/EsAccount;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/apps/plus/util/AccountsUtil;->newAccount(Ljava/lang/String;)Landroid/accounts/Account;

    move-result-object v3

    const-string v4, "com.google.android.apps.plus.content.EsProvider"

    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    invoke-static {v3, v4, v5}, Landroid/content/ContentResolver;->requestSync(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_6

    .line 2881
    :catchall_35
    move-exception v3

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v3
.end method

.method private preparePeopleSearchQuery(Landroid/database/sqlite/SQLiteQueryBuilder;Ljava/lang/String;ZLjava/lang/String;JZLjava/lang/String;)V
    .registers 14
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/16 v4, 0x25

    .line 2685
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SELECT contacts.person_id AS filtered_person_id, MIN((CASE WHEN search_key_type=1 THEN search_key ELSE NULL END)) AS email FROM contacts JOIN contact_search ON (contacts.person_id=search_person_id) WHERE search_key GLOB "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x2a

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/database/DatabaseUtils;->sqlEscapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "in_my_circles"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "!=0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " GROUP BY filtered_person_id"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " LIMIT "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2701
    invoke-static {p8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_dd

    .line 2702
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SELECT contacts.person_id AS filtered_person_id,  NULL AS email FROM contacts WHERE gaia_id IN ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " AND ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "name"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " LIKE "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/database/DatabaseUtils;->sqlEscapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " OR "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "name"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " LIKE "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "% "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/database/DatabaseUtils;->sqlEscapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " UNION "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2715
    :cond_dd
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "contacts JOIN ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") ON ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "contacts"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "person_id"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "=filtered_person_id)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " LEFT OUTER JOIN "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "circle_contact"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ON ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "contacts"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "person_id"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "circle_contact"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "link_person_id"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2722
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 2724
    const-string v0, "gaia_id"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 2725
    const-string v0, " != "

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 2726
    invoke-static {p5, p6}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 2728
    if-nez p3, :cond_17d

    .line 2729
    const-string v0, " AND "

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 2730
    const-string v0, "profile_type"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 2731
    const-string v0, " != "

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 2732
    const/4 v0, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 2735
    :cond_17d
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_18d

    .line 2737
    const-string v0, " AND "

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 2738
    const-string v0, "0"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 2741
    :cond_18d
    if-nez p7, :cond_19e

    .line 2742
    const-string v0, " AND "

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 2743
    const-string v0, "in_my_circles"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 2744
    const-string v0, " = 0"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 2746
    :cond_19e
    return-void
.end method

.method private varargs prependArgs([Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;
    .registers 8
    .parameter "oldArgList"
    .parameter "args"

    .prologue
    const/4 v3, 0x0

    .line 2772
    if-eqz p2, :cond_6

    array-length v4, p2

    if-nez v4, :cond_8

    :cond_6
    move-object v1, p1

    .line 2783
    :cond_7
    :goto_7
    return-object v1

    .line 2775
    :cond_8
    if-nez p1, :cond_19

    move v2, v3

    .line 2776
    .local v2, oldArgCount:I
    :goto_b
    array-length v0, p2

    .line 2778
    .local v0, newArgCount:I
    add-int v4, v2, v0

    new-array v1, v4, [Ljava/lang/String;

    .line 2779
    .local v1, newArgs:[Ljava/lang/String;
    invoke-static {p2, v3, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2780
    if-lez v2, :cond_7

    .line 2781
    invoke-static {p1, v3, v1, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_7

    .line 2775
    .end local v0           #newArgCount:I
    .end local v1           #newArgs:[Ljava/lang/String;
    .end local v2           #oldArgCount:I
    :cond_19
    array-length v2, p1

    goto :goto_b
.end method

.method private static selectActivityAuthor(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .parameter "activityId"

    .prologue
    .line 2753
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SELECT author_id FROM activities WHERE activity_id =  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Landroid/database/DatabaseUtils;->sqlEscapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static selectActivityParticipantsQuery(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .parameter "activityId"

    .prologue
    .line 2749
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/google/android/apps/plus/content/EsProvider;->selectActivityAuthor(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " UNION "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Lcom/google/android/apps/plus/content/EsProvider;->selectCommentAuthors(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static selectCommentAuthors(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .parameter "activityId"

    .prologue
    .line 2758
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SELECT author_id FROM activity_comments WHERE activity_id = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Landroid/database/DatabaseUtils;->sqlEscapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 7
    .parameter "uri"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    .line 2807
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Delete not supported: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .registers 5
    .parameter

    .prologue
    .line 2815
    sget-object v0, Lcom/google/android/apps/plus/content/EsProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    sparse-switch v0, :sswitch_data_40

    .line 2858
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown URI: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2817
    :sswitch_22
    const-string v0, "vnd.android.cursor.dir/vnd.google.android.apps.plus.accounts"

    .line 2855
    :goto_24
    return-object v0

    .line 2822
    :sswitch_25
    const-string v0, "vnd.android.cursor.dir/vnd.google.android.apps.plus.activities"

    goto :goto_24

    .line 2826
    :sswitch_28
    const-string v0, "vnd.android.cursor.dir/vnd.google.android.apps.plus.comments"

    goto :goto_24

    .line 2830
    :sswitch_2b
    const-string v0, "vnd.android.cursor.dir/vnd.google.android.apps.plus.locations"

    goto :goto_24

    .line 2834
    :sswitch_2e
    const-string v0, "vnd.android.cursor.dir/vnd.google.android.apps.plus.notifications"

    goto :goto_24

    .line 2839
    :sswitch_31
    const-string v0, "vnd.android.cursor.dir/vnd.google.android.apps.plus.contacts"

    goto :goto_24

    .line 2843
    :sswitch_34
    const-string v0, "vnd.android.cursor.dir/vnd.google.android.apps.plus.conversations"

    goto :goto_24

    .line 2847
    :sswitch_37
    const-string v0, "vnd.android.cursor.dir/vnd.google.android.apps.plus.participants"

    goto :goto_24

    .line 2851
    :sswitch_3a
    const-string v0, "vnd.android.cursor.dir/vnd.google.android.apps.plus.messages"

    goto :goto_24

    .line 2855
    :sswitch_3d
    const-string v0, "vnd.android.cursor.dir/vnd.google.android.apps.plus.message_notifications"

    goto :goto_24

    .line 2815
    :sswitch_data_40
    .sparse-switch
        0x1 -> :sswitch_22
        0x15 -> :sswitch_25
        0x16 -> :sswitch_25
        0x1e -> :sswitch_28
        0x28 -> :sswitch_2b
        0x32 -> :sswitch_2e
        0x46 -> :sswitch_31
        0x48 -> :sswitch_31
        0x64 -> :sswitch_34
        0x6e -> :sswitch_37
        0x78 -> :sswitch_3a
        0xa0 -> :sswitch_3d
    .end sparse-switch
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .registers 6
    .parameter "uri"
    .parameter "initialValues"

    .prologue
    .line 2791
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Insert not supported "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public varargs isInProjection([Ljava/lang/String;[Ljava/lang/String;)Z
    .registers 14
    .parameter "projection"
    .parameter "columns"

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 3356
    if-nez p1, :cond_5

    .line 3377
    :cond_4
    :goto_4
    return v8

    .line 3361
    :cond_5
    array-length v10, p2

    if-ne v10, v8, :cond_1a

    .line 3362
    aget-object v2, p2, v9

    .line 3363
    .local v2, column:Ljava/lang/String;
    move-object v0, p1

    .local v0, arr$:[Ljava/lang/String;
    array-length v5, v0

    .local v5, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_d
    if-ge v3, v5, :cond_36

    aget-object v7, v0, v3

    .line 3364
    .local v7, test:Ljava/lang/String;
    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_4

    .line 3363
    add-int/lit8 v3, v3, 0x1

    goto :goto_d

    .line 3369
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v2           #column:Ljava/lang/String;
    .end local v3           #i$:I
    .end local v5           #len$:I
    .end local v7           #test:Ljava/lang/String;
    :cond_1a
    move-object v0, p1

    .restart local v0       #arr$:[Ljava/lang/String;
    array-length v5, v0

    .restart local v5       #len$:I
    const/4 v3, 0x0

    .restart local v3       #i$:I
    move v4, v3

    .end local v0           #arr$:[Ljava/lang/String;
    .end local v3           #i$:I
    .end local v5           #len$:I
    .local v4, i$:I
    :goto_1e
    if-ge v4, v5, :cond_36

    aget-object v7, v0, v4

    .line 3370
    .restart local v7       #test:Ljava/lang/String;
    move-object v1, p2

    .local v1, arr$:[Ljava/lang/String;
    array-length v6, v1

    .local v6, len$:I
    const/4 v3, 0x0

    .end local v4           #i$:I
    .restart local v3       #i$:I
    :goto_25
    if-ge v3, v6, :cond_32

    aget-object v2, v1, v3

    .line 3371
    .restart local v2       #column:Ljava/lang/String;
    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_4

    .line 3370
    add-int/lit8 v3, v3, 0x1

    goto :goto_25

    .line 3369
    .end local v2           #column:Ljava/lang/String;
    :cond_32
    add-int/lit8 v3, v4, 0x1

    move v4, v3

    .end local v3           #i$:I
    .restart local v4       #i$:I
    goto :goto_1e

    .end local v1           #arr$:[Ljava/lang/String;
    .end local v4           #i$:I
    .end local v6           #len$:I
    .end local v7           #test:Ljava/lang/String;
    :cond_36
    move v8, v9

    .line 3377
    goto :goto_4
.end method

.method public onCreate()Z
    .registers 2

    .prologue
    .line 2119
    const/4 v0, 0x1

    return v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .registers 26
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2128
    const-string v2, "account"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2129
    if-nez v2, :cond_25

    .line 2130
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Every URI must have the \'account\' parameter specified.\nURI: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2134
    :cond_25
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    .line 2136
    const/4 v4, 0x0

    .line 2137
    const-string v2, "limit"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 2140
    sget-object v2, Lcom/google/android/apps/plus/content/EsProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v2

    .line 2141
    const-string v3, "EsProvider"

    const/4 v5, 0x3

    invoke-static {v3, v5}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_67

    .line 2142
    const-string v3, "EsProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "QUERY URI: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " -> "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2145
    :cond_67
    new-instance v3, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v3}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 2146
    sparse-switch v2, :sswitch_data_9a8

    .line 2651
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown URI "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2148
    :sswitch_8a
    const-string v2, "account_status"

    invoke-virtual {v3, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 2149
    sget-object v2, Lcom/google/android/apps/plus/content/EsProvider;->ACCOUNTS_PROJECTION_MAP:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 2150
    const/4 v2, 0x0

    move-object v10, v6

    move-object v7, v4

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    .line 2656
    :goto_9b
    invoke-static/range {p5 .. p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_99c

    move-object/from16 v18, p5

    .line 2659
    :goto_a3
    const-string v2, "EsProvider"

    const/4 v4, 0x3

    invoke-static {v2, v4}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_cd

    .line 2660
    const-string v2, "EsProvider"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "QUERY: "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const/4 v8, 0x0

    move-object/from16 v4, p2

    move-object/from16 v9, p5

    invoke-virtual/range {v3 .. v10}, Landroid/database/sqlite/SQLiteQueryBuilder;->buildQuery([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2664
    :cond_cd
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/plus/content/EsProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v11}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->getDatabaseHelper(Landroid/content/Context;I)Lcom/google/android/apps/plus/content/EsDatabaseHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v12

    const/16 v17, 0x0

    move-object v11, v3

    move-object/from16 v13, p2

    move-object v14, v5

    move-object v15, v6

    move-object/from16 v16, v7

    move-object/from16 v19, v10

    invoke-virtual/range {v11 .. v19}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 2668
    const-string v3, "EsProvider"

    const/4 v4, 0x3

    invoke-static {v3, v4}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_10d

    .line 2669
    const-string v3, "EsProvider"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "QUERY results: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2671
    :cond_10d
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/plus/content/EsProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-interface {v2, v3, v0}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    .line 2672
    return-object v2

    .line 2155
    :sswitch_11b
    const-string v2, "activities"

    invoke-virtual {v3, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 2156
    sget-object v2, Lcom/google/android/apps/plus/content/EsProvider;->ACTIVITY_SUMMARY_PROJECTION_MAP:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 2157
    const/4 v2, 0x0

    move-object v10, v6

    move-object v7, v4

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    .line 2158
    goto/16 :goto_9b

    .line 2162
    :sswitch_12e
    const-string v2, "activity_id"

    invoke-virtual {v3, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 2163
    const-string v2, "=?"

    invoke-virtual {v3, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 2164
    const/4 v2, 0x1

    new-array v5, v2, [Ljava/lang/String;

    const/4 v7, 0x0

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    const/4 v8, 0x2

    invoke-interface {v2, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    aput-object v2, v5, v7

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-direct {v0, v1, v5}, Lcom/google/android/apps/plus/content/EsProvider;->prependArgs([Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p4

    .line 2168
    :sswitch_151
    const-string v2, "activity_view"

    invoke-virtual {v3, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 2169
    sget-object v2, Lcom/google/android/apps/plus/content/EsProvider;->ACTIVITIES_VIEW_PROJECTION_MAP:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 2170
    const/4 v2, 0x0

    move-object v10, v6

    move-object v7, v4

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    .line 2171
    goto/16 :goto_9b

    .line 2175
    :sswitch_164
    const-string v2, "activities_stream_view"

    invoke-virtual {v3, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 2176
    const-string v2, "stream_key"

    invoke-virtual {v3, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 2177
    const-string v2, "=?"

    invoke-virtual {v3, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 2178
    const/4 v2, 0x1

    new-array v5, v2, [Ljava/lang/String;

    const/4 v7, 0x0

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    const/4 v8, 0x2

    invoke-interface {v2, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    aput-object v2, v5, v7

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-direct {v0, v1, v5}, Lcom/google/android/apps/plus/content/EsProvider;->prependArgs([Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p4

    .line 2179
    sget-object v2, Lcom/google/android/apps/plus/content/EsProvider;->ACTIVITIES_VIEW_PROJECTION_MAP:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 2181
    const/4 v2, 0x0

    move-object v10, v6

    move-object v7, v4

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    .line 2182
    goto/16 :goto_9b

    .line 2186
    :sswitch_19a
    const-string v2, "activities_stream_view"

    invoke-virtual {v3, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 2190
    const-string v2, "(\'g:\'||author_id) IN ( SELECT link_person_id FROM circle_contact WHERE link_circle_id=?)"

    invoke-virtual {v3, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 2194
    const/4 v2, 0x1

    new-array v5, v2, [Ljava/lang/String;

    const/4 v7, 0x0

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    const/4 v8, 0x1

    invoke-interface {v2, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    aput-object v2, v5, v7

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-direct {v0, v1, v5}, Lcom/google/android/apps/plus/content/EsProvider;->prependArgs([Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p4

    .line 2195
    sget-object v2, Lcom/google/android/apps/plus/content/EsProvider;->ACTIVITIES_VIEW_PROJECTION_MAP:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 2199
    if-eqz v6, :cond_1de

    .line 2200
    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7

    .line 2201
    const-wide/16 v9, 0xa

    cmp-long v2, v7, v9

    if-lez v2, :cond_1d4

    .line 2202
    const-wide/16 v5, 0xa

    .line 2203
    invoke-static {v5, v6}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    :cond_1d4
    move-object v10, v6

    move-object v7, v4

    move-object/from16 v2, p5

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    .line 2205
    goto/16 :goto_9b

    .line 2206
    :cond_1de
    const-wide/16 v5, 0xa

    invoke-static {v5, v6}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    move-object v10, v6

    move-object v7, v4

    move-object/from16 v2, p5

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    .line 2208
    goto/16 :goto_9b

    .line 2212
    :sswitch_1ee
    const-string v2, "comments_view"

    invoke-virtual {v3, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 2213
    const-string v2, "activity_id"

    invoke-virtual {v3, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 2214
    const-string v2, "=?"

    invoke-virtual {v3, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 2215
    const/4 v2, 0x1

    new-array v5, v2, [Ljava/lang/String;

    const/4 v7, 0x0

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    const/4 v8, 0x2

    invoke-interface {v2, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    aput-object v2, v5, v7

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-direct {v0, v1, v5}, Lcom/google/android/apps/plus/content/EsProvider;->prependArgs([Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p4

    .line 2216
    sget-object v2, Lcom/google/android/apps/plus/content/EsProvider;->COMMENTS_VIEW_PROJECTION_MAP:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 2217
    const/4 v2, 0x0

    move-object v10, v6

    move-object v7, v4

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    .line 2218
    goto/16 :goto_9b

    .line 2222
    :sswitch_224
    const-string v2, "location_queries_view"

    invoke-virtual {v3, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 2223
    const-string v2, "key"

    invoke-virtual {v3, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 2224
    const-string v2, "=?"

    invoke-virtual {v3, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 2225
    const/4 v2, 0x1

    new-array v5, v2, [Ljava/lang/String;

    const/4 v7, 0x0

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    const/4 v8, 0x2

    invoke-interface {v2, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    aput-object v2, v5, v7

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-direct {v0, v1, v5}, Lcom/google/android/apps/plus/content/EsProvider;->prependArgs([Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p4

    .line 2226
    sget-object v2, Lcom/google/android/apps/plus/content/EsProvider;->LOCATION_QUERIES_VIEW_PROJECTION_MAP:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 2227
    const/4 v2, 0x0

    move-object v10, v6

    move-object v7, v4

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    .line 2228
    goto/16 :goto_9b

    .line 2232
    :sswitch_25a
    const-string v2, "notifications"

    invoke-virtual {v3, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 2233
    sget-object v2, Lcom/google/android/apps/plus/content/EsProvider;->NOTIFICATIONS_PROJECTION_MAP:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 2235
    if-eqz v6, :cond_27f

    .line 2236
    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7

    .line 2237
    const-wide/16 v9, 0xc8

    cmp-long v2, v7, v9

    if-lez v2, :cond_276

    .line 2238
    const-wide/16 v5, 0xc8

    .line 2239
    invoke-static {v5, v6}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    .line 2244
    :cond_276
    :goto_276
    const/4 v2, 0x0

    move-object v10, v6

    move-object v7, v4

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    .line 2245
    goto/16 :goto_9b

    .line 2242
    :cond_27f
    const-wide/16 v5, 0xc8

    invoke-static {v5, v6}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    goto :goto_276

    .line 2249
    :sswitch_286
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v7, "member_ids"

    aput-object v7, v2, v5

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/apps/plus/content/EsProvider;->isInProjection([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_309

    .line 2250
    const-string v2, "SELECT link_circle_id,link_person_id FROM circle_contact JOIN contacts AS c  ON (c.person_id=link_person_id) ORDER BY UPPER(c.name)"

    .line 2257
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "circles LEFT OUTER JOIN ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ")"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " AS "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "circle_contact"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " ON ( "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "circle_contact"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "."

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "link_circle_id"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "circles"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "."

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "circle_id"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ")"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 2262
    const-string v2, "circle_id"

    .line 2266
    :goto_2fa
    sget-object v4, Lcom/google/android/apps/plus/content/EsProvider;->CIRCLES_PROJECTION_MAP:Ljava/util/HashMap;

    invoke-virtual {v3, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 2267
    const/4 v4, 0x0

    move-object v10, v6

    move-object v7, v2

    move-object/from16 v5, p3

    move-object v2, v4

    move-object/from16 v6, p4

    .line 2268
    goto/16 :goto_9b

    .line 2264
    :cond_309
    const-string v2, "circles"

    invoke-virtual {v3, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    move-object v2, v4

    goto :goto_2fa

    .line 2272
    :sswitch_310
    const-string v2, "person_id"

    invoke-virtual {v3, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 2273
    const-string v2, "=?"

    invoke-virtual {v3, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 2274
    const/4 v2, 0x1

    new-array v5, v2, [Ljava/lang/String;

    const/4 v7, 0x0

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    const/4 v8, 0x2

    invoke-interface {v2, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    aput-object v2, v5, v7

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-direct {v0, v1, v5}, Lcom/google/android/apps/plus/content/EsProvider;->prependArgs([Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p4

    .line 2279
    :sswitch_333
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v7, "packed_circle_ids"

    aput-object v7, v2, v5

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/apps/plus/content/EsProvider;->isInProjection([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_35b

    .line 2280
    const-string v2, "contacts LEFT OUTER JOIN circle_contact ON ( circle_contact.link_person_id = contacts.person_id)"

    invoke-virtual {v3, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 2284
    const-string v4, "person_id"

    .line 2288
    :goto_34c
    sget-object v2, Lcom/google/android/apps/plus/content/EsProvider;->CONTACTS_PROJECTION_MAP:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 2289
    const-string v2, "UPPER(name)"

    move-object v10, v6

    move-object v7, v4

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    .line 2290
    goto/16 :goto_9b

    .line 2286
    :cond_35b
    const-string v2, "contacts"

    invoke-virtual {v3, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    goto :goto_34c

    .line 2294
    :sswitch_361
    const-string v2, "contacts JOIN circle_contact ON (contacts.person_id=circle_contact.link_person_id) JOIN circles ON (circle_contact.link_circle_id = circles.circle_id)"

    invoke-virtual {v3, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 2300
    const-string v2, "person_id"

    invoke-virtual {v3, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 2301
    const-string v2, " IN ("

    invoke-virtual {v3, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 2303
    const-string v2, "SELECT "

    invoke-virtual {v3, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 2304
    const-string v2, "link_person_id"

    invoke-virtual {v3, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 2305
    const-string v2, " FROM "

    invoke-virtual {v3, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 2306
    const-string v2, "circle_contact"

    invoke-virtual {v3, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 2307
    const-string v2, " WHERE "

    invoke-virtual {v3, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 2308
    const-string v2, "link_circle_id"

    invoke-virtual {v3, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 2309
    const-string v2, "=?"

    invoke-virtual {v3, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 2310
    const/4 v2, 0x1

    new-array v4, v2, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    const/4 v7, 0x2

    invoke-interface {v2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    aput-object v2, v4, v5

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-direct {v0, v1, v4}, Lcom/google/android/apps/plus/content/EsProvider;->prependArgs([Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p4

    .line 2312
    const-string v2, ")"

    invoke-virtual {v3, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 2313
    sget-object v2, Lcom/google/android/apps/plus/content/EsProvider;->CONTACTS_PROJECTION_MAP:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 2314
    const-string v2, "UPPER(name)"

    .line 2315
    const-string v4, "person_id"

    move-object v10, v6

    move-object v7, v4

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    .line 2316
    goto/16 :goto_9b

    .line 2320
    :sswitch_3c2
    const-string v2, "contacts JOIN suggested_people ON (contacts.person_id=suggested_people.person_id)"

    invoke-virtual {v3, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 2323
    sget-object v2, Lcom/google/android/apps/plus/content/EsProvider;->CONTACTS_PROJECTION_MAP:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 2324
    const-string p3, "dismissed=0"

    .line 2325
    const-string v2, "sort_order"

    move-object v10, v6

    move-object v7, v4

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    .line 2326
    goto/16 :goto_9b

    .line 2330
    :sswitch_3d8
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    .line 2331
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_456

    const-string v4, ""

    .line 2332
    :goto_3e5
    const-string v2, "self_gaia_id"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2333
    const-string v5, "true"

    const-string v7, "plus_pages"

    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    .line 2335
    const-string v7, "true"

    const-string v8, "in_circles"

    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    .line 2337
    const-string v7, "activity_id"

    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 2338
    const/4 v10, 0x0

    .line 2339
    if-eqz v7, :cond_418

    .line 2340
    invoke-static {v7}, Lcom/google/android/apps/plus/content/EsProvider;->selectActivityParticipantsQuery(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 2342
    :cond_418
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v10}, Lcom/google/android/apps/plus/content/EsProvider;->preparePeopleSearchQuery(Landroid/database/sqlite/SQLiteQueryBuilder;Ljava/lang/String;ZLjava/lang/String;JZLjava/lang/String;)V

    .line 2345
    const-string v4, "person_id"

    .line 2346
    const/4 v6, 0x0

    .line 2347
    sget-object v2, Lcom/google/android/apps/plus/content/EsProvider;->CONTACTS_SEARCH_PROJECTION_MAP:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 2348
    const-string v2, "UPPER(name)"

    .line 2349
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_9a0

    .line 2350
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "gaia_id IN ("

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, ") DESC,"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v10, v6

    move-object v7, v4

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    goto/16 :goto_9b

    .line 2331
    :cond_456
    const/4 v4, 0x2

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    goto :goto_3e5

    .line 2357
    :sswitch_462
    const-string v2, "user_id"

    invoke-virtual {v3, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 2358
    const-string v2, "=?"

    invoke-virtual {v3, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 2359
    const/4 v2, 0x1

    new-array v5, v2, [Ljava/lang/String;

    const/4 v7, 0x0

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    const/4 v8, 0x1

    invoke-interface {v2, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    aput-object v2, v5, v7

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-direct {v0, v1, v5}, Lcom/google/android/apps/plus/content/EsProvider;->prependArgs([Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p4

    .line 2363
    :sswitch_485
    const-string v2, "avatars"

    invoke-virtual {v3, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 2364
    sget-object v2, Lcom/google/android/apps/plus/content/EsProvider;->AVATARS_PROJECTION_MAP:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 2365
    const/4 v2, 0x0

    move-object v10, v6

    move-object v7, v4

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    .line 2366
    goto/16 :goto_9b

    .line 2370
    :sswitch_498
    const-string v2, "person_id"

    invoke-virtual {v3, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 2371
    const-string v2, "=?"

    invoke-virtual {v3, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 2372
    const/4 v2, 0x1

    new-array v5, v2, [Ljava/lang/String;

    const/4 v7, 0x0

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    const/4 v8, 0x1

    invoke-interface {v2, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    aput-object v2, v5, v7

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-direct {v0, v1, v5}, Lcom/google/android/apps/plus/content/EsProvider;->prependArgs([Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p4

    .line 2376
    :sswitch_4bb
    const-string v2, "profiles"

    invoke-virtual {v3, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 2377
    sget-object v2, Lcom/google/android/apps/plus/content/EsProvider;->PROFILES_PROJECTION_MAP:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 2378
    const/4 v2, 0x0

    move-object v10, v6

    move-object v7, v4

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    .line 2379
    goto/16 :goto_9b

    .line 2383
    :sswitch_4ce
    const-string v2, "conversations_view"

    invoke-virtual {v3, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 2384
    sget-object v2, Lcom/google/android/apps/plus/content/EsProvider;->CONVERSATIONS_PROJECTION_MAP:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    move-object v10, v6

    move-object v7, v4

    move-object/from16 v2, p5

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    .line 2386
    goto/16 :goto_9b

    .line 2390
    :sswitch_4e2
    const-string v2, "participants_view"

    invoke-virtual {v3, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 2391
    const-string v2, "conversation_id"

    invoke-virtual {v3, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 2392
    const-string v2, "=?"

    invoke-virtual {v3, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 2393
    const/4 v2, 0x1

    new-array v5, v2, [Ljava/lang/String;

    const/4 v7, 0x0

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    const/4 v8, 0x2

    invoke-interface {v2, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    aput-object v2, v5, v7

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-direct {v0, v1, v5}, Lcom/google/android/apps/plus/content/EsProvider;->prependArgs([Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p4

    .line 2394
    sget-object v2, Lcom/google/android/apps/plus/content/EsProvider;->PARTICIPANTS_PROJECTION_MAP:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    move-object v10, v6

    move-object v7, v4

    move-object/from16 v2, p5

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    .line 2396
    goto/16 :goto_9b

    .line 2400
    :sswitch_519
    const-string v2, "message_notifications_view"

    invoke-virtual {v3, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 2401
    sget-object v2, Lcom/google/android/apps/plus/content/EsProvider;->MESSAGE_NOTIFICATIONS_PROJECTION_MAP:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    move-object v10, v6

    move-object v7, v4

    move-object/from16 v2, p5

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    .line 2403
    goto/16 :goto_9b

    .line 2407
    :sswitch_52d
    const-string v2, "messages_view"

    invoke-virtual {v3, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 2408
    const-string v2, "conversation_id"

    invoke-virtual {v3, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 2409
    const-string v2, "=?"

    invoke-virtual {v3, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 2410
    const/4 v2, 0x1

    new-array v5, v2, [Ljava/lang/String;

    const/4 v7, 0x0

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    const/4 v8, 0x2

    invoke-interface {v2, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    aput-object v2, v5, v7

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-direct {v0, v1, v5}, Lcom/google/android/apps/plus/content/EsProvider;->prependArgs([Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p4

    .line 2411
    sget-object v2, Lcom/google/android/apps/plus/content/EsProvider;->MESSAGES_PROJECTION_MAP:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    move-object v10, v6

    move-object v7, v4

    move-object/from16 v2, p5

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    .line 2413
    goto/16 :goto_9b

    .line 2417
    :sswitch_564
    const-string v2, "photos_home_view"

    invoke-virtual {v3, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 2418
    sget-object v2, Lcom/google/android/apps/plus/content/EsProvider;->PHOTOS_HOME_MAP:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    move-object v10, v6

    move-object v7, v4

    move-object/from16 v2, p5

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    .line 2420
    goto/16 :goto_9b

    .line 2424
    :sswitch_578
    const-string v2, "album_view"

    invoke-virtual {v3, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 2425
    const-string v2, "owner_id"

    invoke-virtual {v3, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 2426
    const-string v2, "=?"

    invoke-virtual {v3, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 2427
    const-string v2, " AND "

    invoke-virtual {v3, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 2428
    const-string v2, "title"

    invoke-virtual {v3, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 2429
    const-string v2, " IS NOT NULL"

    invoke-virtual {v3, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 2430
    const-string v2, " AND "

    invoke-virtual {v3, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 2431
    const-string v2, "url"

    invoke-virtual {v3, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 2432
    const-string v2, " IS NOT NULL"

    invoke-virtual {v3, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 2433
    const-string v2, " AND "

    invoke-virtual {v3, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 2434
    const-string v2, "is_activity"

    invoke-virtual {v3, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 2435
    const-string v2, " = 0"

    invoke-virtual {v3, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 2436
    const/4 v2, 0x1

    new-array v5, v2, [Ljava/lang/String;

    const/4 v7, 0x0

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    const/4 v8, 0x1

    invoke-interface {v2, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    aput-object v2, v5, v7

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-direct {v0, v1, v5}, Lcom/google/android/apps/plus/content/EsProvider;->prependArgs([Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p4

    .line 2437
    sget-object v2, Lcom/google/android/apps/plus/content/EsProvider;->ALBUM_VIEW_MAP:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    move-object v10, v6

    move-object v7, v4

    move-object/from16 v2, p5

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    .line 2439
    goto/16 :goto_9b

    .line 2443
    :sswitch_5dc
    const-string v2, "album_view"

    invoke-virtual {v3, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 2444
    const-string v2, "album_id"

    invoke-virtual {v3, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 2445
    const-string v2, "=?"

    invoke-virtual {v3, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 2446
    const-string v2, " AND "

    invoke-virtual {v3, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 2447
    const-string v2, "owner_id"

    invoke-virtual {v3, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 2448
    const-string v2, "=?"

    invoke-virtual {v3, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 2449
    const-string v2, " AND "

    invoke-virtual {v3, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 2450
    const-string v2, "title"

    invoke-virtual {v3, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 2451
    const-string v2, " IS NOT NULL"

    invoke-virtual {v3, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 2452
    const-string v2, " AND "

    invoke-virtual {v3, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 2453
    const-string v2, "is_activity"

    invoke-virtual {v3, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 2454
    const-string v2, " = 0"

    invoke-virtual {v3, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 2455
    const/4 v2, 0x2

    new-array v5, v2, [Ljava/lang/String;

    const/4 v7, 0x0

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    const/4 v8, 0x1

    invoke-interface {v2, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    aput-object v2, v5, v7

    const/4 v7, 0x1

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    const/4 v8, 0x2

    invoke-interface {v2, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    aput-object v2, v5, v7

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-direct {v0, v1, v5}, Lcom/google/android/apps/plus/content/EsProvider;->prependArgs([Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p4

    .line 2457
    sget-object v2, Lcom/google/android/apps/plus/content/EsProvider;->ALBUM_VIEW_MAP:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    move-object v10, v6

    move-object v7, v4

    move-object/from16 v2, p5

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    .line 2459
    goto/16 :goto_9b

    .line 2463
    :sswitch_64e
    const-string v2, "photo_view"

    invoke-virtual {v3, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 2464
    const-string v2, "photo_id"

    invoke-virtual {v3, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 2465
    const-string v2, "=?"

    invoke-virtual {v3, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 2466
    const/4 v2, 0x1

    new-array v5, v2, [Ljava/lang/String;

    const/4 v6, 0x0

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    const/4 v7, 0x1

    invoke-interface {v2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    aput-object v2, v5, v6

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-direct {v0, v1, v5}, Lcom/google/android/apps/plus/content/EsProvider;->prependArgs([Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p4

    .line 2467
    sget-object v2, Lcom/google/android/apps/plus/content/EsProvider;->PHOTO_VIEW_MAP:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 2468
    const/4 v2, 0x1

    invoke-virtual {v3, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setDistinct(Z)V

    .line 2469
    const-string v6, "1"

    move-object v10, v6

    move-object v7, v4

    move-object/from16 v2, p5

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    .line 2471
    goto/16 :goto_9b

    .line 2475
    :sswitch_68b
    const-string v2, "photo_view"

    invoke-virtual {v3, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 2476
    const-string v2, "album_id"

    invoke-virtual {v3, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 2477
    const-string v2, "=?"

    invoke-virtual {v3, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 2478
    const-string v2, " AND "

    invoke-virtual {v3, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 2479
    const-string v2, "type"

    invoke-virtual {v3, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 2480
    const-string v2, "="

    invoke-virtual {v3, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 2481
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 2482
    const/4 v2, 0x1

    new-array v5, v2, [Ljava/lang/String;

    const/4 v7, 0x0

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    const/4 v8, 0x1

    invoke-interface {v2, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    aput-object v2, v5, v7

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-direct {v0, v1, v5}, Lcom/google/android/apps/plus/content/EsProvider;->prependArgs([Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p4

    .line 2483
    sget-object v2, Lcom/google/android/apps/plus/content/EsProvider;->PHOTO_VIEW_ALBUM_MAP:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 2484
    const/4 v2, 0x1

    invoke-virtual {v3, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setDistinct(Z)V

    move-object v10, v6

    move-object v7, v4

    move-object/from16 v2, p5

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    .line 2486
    goto/16 :goto_9b

    .line 2490
    :sswitch_6dd
    const-string v2, "photo_view LEFT JOIN photos_from_circle ON photo_view.photo_id=photos_from_circle.photo_id"

    invoke-virtual {v3, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 2493
    const-string v2, "circle_id IS NULL AND photos_from_circle.photo_id IS NOT NULL"

    invoke-virtual {v3, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 2495
    const-string v2, " AND "

    invoke-virtual {v3, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 2496
    const-string v2, "photo_view"

    invoke-virtual {v3, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 2497
    const-string v2, "."

    invoke-virtual {v3, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 2498
    const-string v2, "type"

    invoke-virtual {v3, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 2499
    const-string v2, "="

    invoke-virtual {v3, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 2500
    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 2501
    sget-object v2, Lcom/google/android/apps/plus/content/EsProvider;->PHOTO_VIEW_CIRCLE_MAP:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 2502
    const/4 v2, 0x1

    invoke-virtual {v3, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setDistinct(Z)V

    move-object v10, v6

    move-object v7, v4

    move-object/from16 v2, p5

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    .line 2504
    goto/16 :goto_9b

    .line 2508
    :sswitch_71b
    const-string v2, "photo_view LEFT JOIN photos_from_circle ON photo_view.photo_id=photos_from_circle.photo_id"

    invoke-virtual {v3, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 2511
    const-string v2, "circle_id"

    invoke-virtual {v3, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 2512
    const-string v2, "=?"

    invoke-virtual {v3, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 2513
    const-string v2, " AND "

    invoke-virtual {v3, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 2514
    const-string v2, "photo_view"

    invoke-virtual {v3, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 2515
    const-string v2, "."

    invoke-virtual {v3, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 2516
    const-string v2, "type"

    invoke-virtual {v3, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 2517
    const-string v2, "="

    invoke-virtual {v3, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 2518
    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 2519
    const/4 v2, 0x1

    new-array v5, v2, [Ljava/lang/String;

    const/4 v7, 0x0

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    const/4 v8, 0x1

    invoke-interface {v2, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    aput-object v2, v5, v7

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-direct {v0, v1, v5}, Lcom/google/android/apps/plus/content/EsProvider;->prependArgs([Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p4

    .line 2520
    sget-object v2, Lcom/google/android/apps/plus/content/EsProvider;->PHOTO_VIEW_CIRCLE_MAP:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 2521
    const/4 v2, 0x1

    invoke-virtual {v3, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setDistinct(Z)V

    move-object v10, v6

    move-object v7, v4

    move-object/from16 v2, p5

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    .line 2523
    goto/16 :goto_9b

    .line 2527
    :sswitch_777
    const-string v2, "photo_view LEFT JOIN photos_of_user ON photo_view.photo_id=photos_of_user.photo_id"

    invoke-virtual {v3, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 2530
    const-string v2, "photo_of_user_id"

    invoke-virtual {v3, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 2531
    const-string v2, "=?"

    invoke-virtual {v3, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 2532
    const-string v2, " AND "

    invoke-virtual {v3, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 2533
    const-string v2, "photo_view"

    invoke-virtual {v3, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 2534
    const-string v2, "."

    invoke-virtual {v3, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 2535
    const-string v2, "type"

    invoke-virtual {v3, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 2536
    const-string v2, "="

    invoke-virtual {v3, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 2537
    const/4 v2, 0x4

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 2538
    const/4 v2, 0x1

    new-array v5, v2, [Ljava/lang/String;

    const/4 v7, 0x0

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    const/4 v8, 0x1

    invoke-interface {v2, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    aput-object v2, v5, v7

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-direct {v0, v1, v5}, Lcom/google/android/apps/plus/content/EsProvider;->prependArgs([Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p4

    .line 2539
    sget-object v2, Lcom/google/android/apps/plus/content/EsProvider;->PHOTO_VIEW_OF_USER_MAP:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 2540
    const/4 v2, 0x1

    invoke-virtual {v3, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setDistinct(Z)V

    move-object v10, v6

    move-object v7, v4

    move-object/from16 v2, p5

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    .line 2542
    goto/16 :goto_9b

    .line 2548
    :sswitch_7d3
    const-string v2, "photo_stream LEFT JOIN photo_view ON photo_stream.photo_id=photo_view.photo_id"

    invoke-virtual {v3, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 2551
    const-string v2, "stream_id"

    invoke-virtual {v3, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 2552
    const-string v2, "=?"

    invoke-virtual {v3, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 2553
    const-string v2, " AND ("

    invoke-virtual {v3, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 2554
    const-string v2, "photo_view"

    invoke-virtual {v3, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 2555
    const-string v2, "."

    invoke-virtual {v3, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 2556
    const-string v2, "type"

    invoke-virtual {v3, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 2557
    const-string v2, "="

    invoke-virtual {v3, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 2558
    const/4 v2, 0x5

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 2559
    const-string v2, " OR "

    invoke-virtual {v3, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 2560
    const-string v2, "photo_view"

    invoke-virtual {v3, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 2561
    const-string v2, "."

    invoke-virtual {v3, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 2562
    const-string v2, "type"

    invoke-virtual {v3, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 2563
    const-string v2, " IS NULL)"

    invoke-virtual {v3, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 2564
    const/4 v2, 0x1

    new-array v5, v2, [Ljava/lang/String;

    const/4 v7, 0x0

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    const/4 v8, 0x1

    invoke-interface {v2, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    aput-object v2, v5, v7

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-direct {v0, v1, v5}, Lcom/google/android/apps/plus/content/EsProvider;->prependArgs([Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p4

    .line 2565
    sget-object v2, Lcom/google/android/apps/plus/content/EsProvider;->PHOTO_VIEW_ACTIVITY_MAP:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 2566
    const/4 v2, 0x1

    invoke-virtual {v3, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setDistinct(Z)V

    move-object v10, v6

    move-object v7, v4

    move-object/from16 v2, p5

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    .line 2568
    goto/16 :goto_9b

    .line 2572
    :sswitch_848
    const-string v2, "photo_view LEFT JOIN photo_stream ON photo_view.photo_id=photo_stream.photo_id"

    invoke-virtual {v3, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 2575
    const-string v2, "stream_id"

    invoke-virtual {v3, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 2576
    const-string v2, "=?"

    invoke-virtual {v3, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 2577
    const-string v2, " AND "

    invoke-virtual {v3, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 2578
    const-string v2, "owner_id"

    invoke-virtual {v3, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 2579
    const-string v2, "=?"

    invoke-virtual {v3, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 2580
    const-string v2, " AND "

    invoke-virtual {v3, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 2581
    const-string v2, "photo_view"

    invoke-virtual {v3, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 2582
    const-string v2, "."

    invoke-virtual {v3, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 2583
    const-string v2, "type"

    invoke-virtual {v3, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 2584
    const-string v2, "="

    invoke-virtual {v3, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 2585
    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 2586
    sget-object v2, Lcom/google/android/apps/plus/content/EsProvider;->PHOTO_VIEW_STREAM_MAP:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 2587
    const/4 v2, 0x1

    invoke-virtual {v3, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setDistinct(Z)V

    .line 2589
    const/4 v2, 0x2

    new-array v5, v2, [Ljava/lang/String;

    const/4 v7, 0x0

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    const/4 v8, 0x1

    invoke-interface {v2, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    aput-object v2, v5, v7

    const/4 v7, 0x1

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    const/4 v8, 0x2

    invoke-interface {v2, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    aput-object v2, v5, v7

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-direct {v0, v1, v5}, Lcom/google/android/apps/plus/content/EsProvider;->prependArgs([Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p4

    move-object v10, v6

    move-object v7, v4

    move-object/from16 v2, p5

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    .line 2591
    goto/16 :goto_9b

    .line 2595
    :sswitch_8c1
    const-string v2, "photos_home_view"

    invoke-virtual {v3, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 2596
    const-string v2, "type"

    invoke-virtual {v3, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 2597
    const-string v2, "="

    invoke-virtual {v3, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 2598
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 2599
    sget-object v2, Lcom/google/android/apps/plus/content/EsProvider;->PHOTO_NOTIFICATION_MAP:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 2600
    const/4 v2, 0x1

    invoke-virtual {v3, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setDistinct(Z)V

    move-object v10, v6

    move-object v7, v4

    move-object/from16 v2, p5

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    .line 2602
    goto/16 :goto_9b

    .line 2606
    :sswitch_8eb
    const-string v2, "photo_comment LEFT JOIN avatars ON photo_comment.author_id=avatars.user_id LEFT JOIN contacts ON photo_comment.author_id=contacts.gaia_id"

    invoke-virtual {v3, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 2612
    const-string v2, "photo_id"

    invoke-virtual {v3, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 2613
    const-string v2, "=?"

    invoke-virtual {v3, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 2614
    const/4 v2, 0x1

    new-array v5, v2, [Ljava/lang/String;

    const/4 v7, 0x0

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    const/4 v8, 0x1

    invoke-interface {v2, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    aput-object v2, v5, v7

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-direct {v0, v1, v5}, Lcom/google/android/apps/plus/content/EsProvider;->prependArgs([Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p4

    .line 2615
    sget-object v2, Lcom/google/android/apps/plus/content/EsProvider;->PHOTO_COMMENTS_MAP:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 2616
    const/4 v2, 0x1

    invoke-virtual {v3, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setDistinct(Z)V

    move-object v10, v6

    move-object v7, v4

    move-object/from16 v2, p5

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    .line 2618
    goto/16 :goto_9b

    .line 2622
    :sswitch_926
    const-string v2, "photo_shape_view"

    invoke-virtual {v3, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 2623
    const-string v2, "photo_id"

    invoke-virtual {v3, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 2624
    const-string v2, "=?"

    invoke-virtual {v3, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 2625
    const/4 v2, 0x1

    new-array v5, v2, [Ljava/lang/String;

    const/4 v7, 0x0

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    const/4 v8, 0x1

    invoke-interface {v2, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    aput-object v2, v5, v7

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-direct {v0, v1, v5}, Lcom/google/android/apps/plus/content/EsProvider;->prependArgs([Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p4

    .line 2626
    sget-object v2, Lcom/google/android/apps/plus/content/EsProvider;->PHOTO_SHAPE_VIEW_MAP:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 2627
    const/4 v2, 0x1

    invoke-virtual {v3, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setDistinct(Z)V

    move-object v10, v6

    move-object v7, v4

    move-object/from16 v2, p5

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    .line 2629
    goto/16 :goto_9b

    .line 2633
    :sswitch_961
    const-string v2, "favicons"

    invoke-virtual {v3, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 2634
    sget-object v2, Lcom/google/android/apps/plus/content/EsProvider;->FAVICONS_PROJECTION_MAP:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 2635
    const/4 v2, 0x0

    move-object v10, v6

    move-object v7, v4

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    .line 2636
    goto/16 :goto_9b

    .line 2640
    :sswitch_974
    const-string v2, "ad_plus_ones"

    invoke-virtual {v3, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 2641
    const-string v2, "share_token"

    invoke-virtual {v3, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 2642
    const-string v2, "="

    invoke-virtual {v3, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 2643
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhereEscapeString(Ljava/lang/String;)V

    .line 2644
    sget-object v2, Lcom/google/android/apps/plus/content/EsProvider;->AD_PLUS_ONES_PROJECTION_MAP:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 2645
    const/4 v2, 0x1

    invoke-virtual {v3, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setDistinct(Z)V

    .line 2646
    const/4 v2, 0x0

    move-object v10, v6

    move-object v7, v4

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    .line 2647
    goto/16 :goto_9b

    :cond_99c
    move-object/from16 v18, v2

    goto/16 :goto_a3

    :cond_9a0
    move-object v10, v6

    move-object v7, v4

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    goto/16 :goto_9b

    .line 2146
    :sswitch_data_9a8
    .sparse-switch
        0x1 -> :sswitch_8a
        0x14 -> :sswitch_151
        0x15 -> :sswitch_164
        0x16 -> :sswitch_12e
        0x17 -> :sswitch_19a
        0x18 -> :sswitch_11b
        0x1e -> :sswitch_1ee
        0x28 -> :sswitch_224
        0x32 -> :sswitch_25a
        0x3c -> :sswitch_286
        0x46 -> :sswitch_333
        0x47 -> :sswitch_361
        0x48 -> :sswitch_310
        0x49 -> :sswitch_3c2
        0x4a -> :sswitch_3d8
        0x50 -> :sswitch_485
        0x51 -> :sswitch_462
        0x5a -> :sswitch_4bb
        0x5b -> :sswitch_498
        0x64 -> :sswitch_4ce
        0x6e -> :sswitch_4e2
        0x78 -> :sswitch_52d
        0x82 -> :sswitch_564
        0x84 -> :sswitch_578
        0x86 -> :sswitch_64e
        0x87 -> :sswitch_68b
        0x88 -> :sswitch_6dd
        0x89 -> :sswitch_71b
        0x8a -> :sswitch_848
        0x8b -> :sswitch_777
        0x8c -> :sswitch_8c1
        0x8d -> :sswitch_8eb
        0x8e -> :sswitch_7d3
        0x8f -> :sswitch_926
        0x90 -> :sswitch_5dc
        0x96 -> :sswitch_961
        0xa0 -> :sswitch_519
        0xaa -> :sswitch_974
    .end sparse-switch
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 8
    .parameter "uri"
    .parameter "values"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    .line 2799
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Update not supported: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
