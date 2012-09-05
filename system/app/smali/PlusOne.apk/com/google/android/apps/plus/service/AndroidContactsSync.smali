.class public Lcom/google/android/apps/plus/service/AndroidContactsSync;
.super Ljava/lang/Object;
.source "AndroidContactsSync.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/plus/service/AndroidContactsSync$3;,
        Lcom/google/android/apps/plus/service/AndroidContactsSync$AndroidContactsSyncThread;,
        Lcom/google/android/apps/plus/service/AndroidContactsSync$ImageContainer;,
        Lcom/google/android/apps/plus/service/AndroidContactsSync$ActivityState;,
        Lcom/google/android/apps/plus/service/AndroidContactsSync$PersonActivityState;,
        Lcom/google/android/apps/plus/service/AndroidContactsSync$AvatarState;,
        Lcom/google/android/apps/plus/service/AndroidContactsSync$DataState;,
        Lcom/google/android/apps/plus/service/AndroidContactsSync$RawContactState;,
        Lcom/google/android/apps/plus/service/AndroidContactsSync$CircleState;
    }
.end annotation


# static fields
.field private static final ACTIVITY_PROJECTION:[Ljava/lang/String;

.field private static final ACTIVITY_STATE_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/google/android/apps/plus/service/AndroidContactsSync$ActivityState;",
            ">;"
        }
    .end annotation
.end field

.field private static final ACTIVITY_SUMMARY_PROJECTION:[Ljava/lang/String;

.field private static final AVATAR_SIGNATURE_PROJECTION:[Ljava/lang/String;

.field private static final CIRCLES_PROJECTION:[Ljava/lang/String;

.field private static CIRCLE_MEMBERSHIP_PROJECTION:[Ljava/lang/String;

.field private static final CONTACTS_PROJECTION:[Ljava/lang/String;

.field private static final DISPLAY_PHOTO_CONTENT_MAX_DIMENSIONS_URI:Landroid/net/Uri;

.field private static final EMAIL_TYPE_CUSTOM:Ljava/lang/String;

.field private static final EMAIL_TYPE_HOME:Ljava/lang/String;

.field private static final EMAIL_TYPE_OTHER:Ljava/lang/String;

.field private static final EMAIL_TYPE_WORK:Ljava/lang/String;

.field private static ENTITIES_PROJECTION:[Ljava/lang/String;

.field private static final GROUPS_PROJECTION:[Ljava/lang/String;

.field private static final LARGE_AVATAR_RAW_CONTACTS_PROJECTION:[Ljava/lang/String;

.field private static final PHONE_TYPE_ASSISTANT:Ljava/lang/String;

.field private static final PHONE_TYPE_CALLBACK:Ljava/lang/String;

.field private static final PHONE_TYPE_CAR:Ljava/lang/String;

.field private static final PHONE_TYPE_COMPANY_MAIN:Ljava/lang/String;

.field private static final PHONE_TYPE_CUSTOM:Ljava/lang/String;

.field private static final PHONE_TYPE_HOME:Ljava/lang/String;

.field private static final PHONE_TYPE_HOME_FAX:Ljava/lang/String;

.field private static final PHONE_TYPE_ISDN:Ljava/lang/String;

.field private static final PHONE_TYPE_MAIN:Ljava/lang/String;

.field private static final PHONE_TYPE_MOBILE:Ljava/lang/String;

.field private static final PHONE_TYPE_OTHER:Ljava/lang/String;

.field private static final PHONE_TYPE_OTHER_FAX:Ljava/lang/String;

.field private static final PHONE_TYPE_PAGER:Ljava/lang/String;

.field private static final PHONE_TYPE_RADIO:Ljava/lang/String;

.field private static final PHONE_TYPE_TELEX:Ljava/lang/String;

.field private static final PHONE_TYPE_TTY_TDD:Ljava/lang/String;

.field private static final PHONE_TYPE_WORK:Ljava/lang/String;

.field private static final PHONE_TYPE_WORK_FAX:Ljava/lang/String;

.field private static final PHONE_TYPE_WORK_MOBILE:Ljava/lang/String;

.field private static final PHONE_TYPE_WORK_PAGER:Ljava/lang/String;

.field private static final POSTAL_TYPE_CUSTOM:Ljava/lang/String;

.field private static final POSTAL_TYPE_HOME:Ljava/lang/String;

.field private static final POSTAL_TYPE_OTHER:Ljava/lang/String;

.field private static final POSTAL_TYPE_WORK:Ljava/lang/String;

.field private static final PROFILE_CONTENT_RAW_CONTACTS_URI:Landroid/net/Uri;

.field private static PROFILE_ENTITIES_PROJECTION:[Ljava/lang/String;

.field private static PROFILE_PROJECTION:[Ljava/lang/String;

.field public static final PROFILE_RAW_CONTACT_PROJECTION:[Ljava/lang/String;

.field private static RAW_CONTACT_PROJECTION:[Ljava/lang/String;

.field private static final RAW_CONTACT_REFRESH_PROJECTION:[Ljava/lang/String;

.field private static final RAW_CONTACT_SOURCE_ID_PROJECTION:[Ljava/lang/String;

.field public static final STREAM_ITEMS_CONTENT_LIMIT_URI:Landroid/net/Uri;

.field public static final STREAM_ITEMS_PHOTO_URI:Landroid/net/Uri;

.field private static final STREAM_ITEMS_PROJECTION:[Ljava/lang/String;

.field public static final STREAM_ITEMS_URI:Landroid/net/Uri;

.field private static final THUMBNAILS_AVATAR_PROJECTION:[Ljava/lang/String;

.field private static final THUMBNAILS_RAW_CONTACT_PROJECTION:[Ljava/lang/String;

.field private static sAndroidSyncThread:Lcom/google/android/apps/plus/service/AndroidContactsSync$AndroidContactsSyncThread;

.field private static sMaxStreamItemsPerRawContact:I

.field private static sPhoneTypeMap:Ljava/util/HashMap;
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


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 98
    sget-object v0, Landroid/provider/ContactsContract;->AUTHORITY_URI:Landroid/net/Uri;

    const-string v1, "profile/raw_contacts"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/plus/service/AndroidContactsSync;->PROFILE_CONTENT_RAW_CONTACTS_URI:Landroid/net/Uri;

    .line 102
    sget-object v0, Landroid/provider/ContactsContract;->AUTHORITY_URI:Landroid/net/Uri;

    const-string v1, "stream_items"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/plus/service/AndroidContactsSync;->STREAM_ITEMS_URI:Landroid/net/Uri;

    .line 118
    sget-object v0, Landroid/provider/ContactsContract;->AUTHORITY_URI:Landroid/net/Uri;

    const-string v1, "stream_items_limit"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/plus/service/AndroidContactsSync;->STREAM_ITEMS_CONTENT_LIMIT_URI:Landroid/net/Uri;

    .line 179
    sget-object v0, Landroid/provider/ContactsContract;->AUTHORITY_URI:Landroid/net/Uri;

    const-string v1, "stream_items/photo"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/plus/service/AndroidContactsSync;->STREAM_ITEMS_PHOTO_URI:Landroid/net/Uri;

    .line 186
    sget-object v0, Landroid/provider/ContactsContract;->AUTHORITY_URI:Landroid/net/Uri;

    const-string v1, "photo_dimensions"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/plus/service/AndroidContactsSync;->DISPLAY_PHOTO_CONTENT_MAX_DIMENSIONS_URI:Landroid/net/Uri;

    .line 312
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "sourceid"

    aput-object v1, v0, v4

    const-string v1, "sync1"

    aput-object v1, v0, v5

    sput-object v0, Lcom/google/android/apps/plus/service/AndroidContactsSync;->RAW_CONTACT_PROJECTION:[Ljava/lang/String;

    .line 321
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "person_id"

    aput-object v1, v0, v3

    const-string v1, "last_updated_time"

    aput-object v1, v0, v4

    const-string v1, "for_sharing"

    aput-object v1, v0, v5

    sput-object v0, Lcom/google/android/apps/plus/service/AndroidContactsSync;->CONTACTS_PROJECTION:[Ljava/lang/String;

    .line 329
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "person_id"

    aput-object v1, v0, v3

    const-string v1, "contact_proto"

    aput-object v1, v0, v4

    sput-object v0, Lcom/google/android/apps/plus/service/AndroidContactsSync;->PROFILE_PROJECTION:[Ljava/lang/String;

    .line 337
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "person_id"

    aput-object v1, v0, v3

    const-string v1, "packed_circle_ids"

    aput-object v1, v0, v4

    sput-object v0, Lcom/google/android/apps/plus/service/AndroidContactsSync;->CIRCLE_MEMBERSHIP_PROJECTION:[Ljava/lang/String;

    .line 345
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "sourceid"

    aput-object v1, v0, v3

    const-string v1, "mimetype"

    aput-object v1, v0, v4

    const-string v1, "data_id"

    aput-object v1, v0, v5

    const-string v1, "data1"

    aput-object v1, v0, v6

    const-string v1, "data2"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "data3"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/apps/plus/service/AndroidContactsSync;->ENTITIES_PROJECTION:[Ljava/lang/String;

    .line 361
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "sync1"

    aput-object v1, v0, v4

    sput-object v0, Lcom/google/android/apps/plus/service/AndroidContactsSync;->PROFILE_RAW_CONTACT_PROJECTION:[Ljava/lang/String;

    .line 369
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "mimetype"

    aput-object v1, v0, v3

    const-string v1, "_id"

    aput-object v1, v0, v4

    const-string v1, "data1"

    aput-object v1, v0, v5

    const-string v1, "data2"

    aput-object v1, v0, v6

    const-string v1, "data3"

    aput-object v1, v0, v7

    sput-object v0, Lcom/google/android/apps/plus/service/AndroidContactsSync;->PROFILE_ENTITIES_PROJECTION:[Ljava/lang/String;

    .line 383
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/plus/service/AndroidContactsSync;->EMAIL_TYPE_HOME:Ljava/lang/String;

    .line 384
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/plus/service/AndroidContactsSync;->EMAIL_TYPE_WORK:Ljava/lang/String;

    .line 385
    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/plus/service/AndroidContactsSync;->EMAIL_TYPE_OTHER:Ljava/lang/String;

    .line 386
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/plus/service/AndroidContactsSync;->EMAIL_TYPE_CUSTOM:Ljava/lang/String;

    .line 388
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/plus/service/AndroidContactsSync;->POSTAL_TYPE_HOME:Ljava/lang/String;

    .line 389
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/plus/service/AndroidContactsSync;->POSTAL_TYPE_WORK:Ljava/lang/String;

    .line 390
    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/plus/service/AndroidContactsSync;->POSTAL_TYPE_OTHER:Ljava/lang/String;

    .line 391
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/plus/service/AndroidContactsSync;->POSTAL_TYPE_CUSTOM:Ljava/lang/String;

    .line 393
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/plus/service/AndroidContactsSync;->PHONE_TYPE_HOME:Ljava/lang/String;

    .line 394
    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/plus/service/AndroidContactsSync;->PHONE_TYPE_WORK:Ljava/lang/String;

    .line 395
    const/4 v0, 0x7

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/plus/service/AndroidContactsSync;->PHONE_TYPE_OTHER:Ljava/lang/String;

    .line 396
    const/4 v0, 0x5

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/plus/service/AndroidContactsSync;->PHONE_TYPE_HOME_FAX:Ljava/lang/String;

    .line 397
    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/plus/service/AndroidContactsSync;->PHONE_TYPE_WORK_FAX:Ljava/lang/String;

    .line 398
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/plus/service/AndroidContactsSync;->PHONE_TYPE_MOBILE:Ljava/lang/String;

    .line 399
    const/4 v0, 0x6

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/plus/service/AndroidContactsSync;->PHONE_TYPE_PAGER:Ljava/lang/String;

    .line 400
    const/16 v0, 0xd

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/plus/service/AndroidContactsSync;->PHONE_TYPE_OTHER_FAX:Ljava/lang/String;

    .line 401
    const/16 v0, 0xa

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/plus/service/AndroidContactsSync;->PHONE_TYPE_COMPANY_MAIN:Ljava/lang/String;

    .line 402
    const/16 v0, 0x13

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/plus/service/AndroidContactsSync;->PHONE_TYPE_ASSISTANT:Ljava/lang/String;

    .line 403
    const/16 v0, 0x9

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/plus/service/AndroidContactsSync;->PHONE_TYPE_CAR:Ljava/lang/String;

    .line 404
    const/16 v0, 0xe

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/plus/service/AndroidContactsSync;->PHONE_TYPE_RADIO:Ljava/lang/String;

    .line 405
    const/16 v0, 0xb

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/plus/service/AndroidContactsSync;->PHONE_TYPE_ISDN:Ljava/lang/String;

    .line 406
    const/16 v0, 0x8

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/plus/service/AndroidContactsSync;->PHONE_TYPE_CALLBACK:Ljava/lang/String;

    .line 407
    const/16 v0, 0xf

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/plus/service/AndroidContactsSync;->PHONE_TYPE_TELEX:Ljava/lang/String;

    .line 408
    const/16 v0, 0x10

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/plus/service/AndroidContactsSync;->PHONE_TYPE_TTY_TDD:Ljava/lang/String;

    .line 409
    const/16 v0, 0x11

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/plus/service/AndroidContactsSync;->PHONE_TYPE_WORK_MOBILE:Ljava/lang/String;

    .line 410
    const/16 v0, 0x12

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/plus/service/AndroidContactsSync;->PHONE_TYPE_WORK_PAGER:Ljava/lang/String;

    .line 411
    const/16 v0, 0xc

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/plus/service/AndroidContactsSync;->PHONE_TYPE_MAIN:Ljava/lang/String;

    .line 412
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/plus/service/AndroidContactsSync;->PHONE_TYPE_CUSTOM:Ljava/lang/String;

    .line 420
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/android/apps/plus/service/AndroidContactsSync;->sPhoneTypeMap:Ljava/util/HashMap;

    .line 421
    sget-object v0, Lcom/google/android/apps/plus/service/AndroidContactsSync;->sPhoneTypeMap:Ljava/util/HashMap;

    const-string v1, "1"

    sget-object v2, Lcom/google/android/apps/plus/service/AndroidContactsSync;->PHONE_TYPE_HOME:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 422
    sget-object v0, Lcom/google/android/apps/plus/service/AndroidContactsSync;->sPhoneTypeMap:Ljava/util/HashMap;

    const-string v1, "2"

    sget-object v2, Lcom/google/android/apps/plus/service/AndroidContactsSync;->PHONE_TYPE_WORK:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 423
    sget-object v0, Lcom/google/android/apps/plus/service/AndroidContactsSync;->sPhoneTypeMap:Ljava/util/HashMap;

    const-string v1, "3"

    sget-object v2, Lcom/google/android/apps/plus/service/AndroidContactsSync;->PHONE_TYPE_OTHER:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 424
    sget-object v0, Lcom/google/android/apps/plus/service/AndroidContactsSync;->sPhoneTypeMap:Ljava/util/HashMap;

    const-string v1, "4"

    sget-object v2, Lcom/google/android/apps/plus/service/AndroidContactsSync;->PHONE_TYPE_HOME_FAX:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 425
    sget-object v0, Lcom/google/android/apps/plus/service/AndroidContactsSync;->sPhoneTypeMap:Ljava/util/HashMap;

    const-string v1, "5"

    sget-object v2, Lcom/google/android/apps/plus/service/AndroidContactsSync;->PHONE_TYPE_WORK_FAX:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 426
    sget-object v0, Lcom/google/android/apps/plus/service/AndroidContactsSync;->sPhoneTypeMap:Ljava/util/HashMap;

    const-string v1, "6"

    sget-object v2, Lcom/google/android/apps/plus/service/AndroidContactsSync;->PHONE_TYPE_MOBILE:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 427
    sget-object v0, Lcom/google/android/apps/plus/service/AndroidContactsSync;->sPhoneTypeMap:Ljava/util/HashMap;

    const-string v1, "7"

    sget-object v2, Lcom/google/android/apps/plus/service/AndroidContactsSync;->PHONE_TYPE_PAGER:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 428
    sget-object v0, Lcom/google/android/apps/plus/service/AndroidContactsSync;->sPhoneTypeMap:Ljava/util/HashMap;

    const-string v1, "8"

    sget-object v2, Lcom/google/android/apps/plus/service/AndroidContactsSync;->PHONE_TYPE_OTHER_FAX:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 429
    sget-object v0, Lcom/google/android/apps/plus/service/AndroidContactsSync;->sPhoneTypeMap:Ljava/util/HashMap;

    const-string v1, "9"

    sget-object v2, Lcom/google/android/apps/plus/service/AndroidContactsSync;->PHONE_TYPE_COMPANY_MAIN:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 430
    sget-object v0, Lcom/google/android/apps/plus/service/AndroidContactsSync;->sPhoneTypeMap:Ljava/util/HashMap;

    const-string v1, "10"

    sget-object v2, Lcom/google/android/apps/plus/service/AndroidContactsSync;->PHONE_TYPE_ASSISTANT:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 431
    sget-object v0, Lcom/google/android/apps/plus/service/AndroidContactsSync;->sPhoneTypeMap:Ljava/util/HashMap;

    const-string v1, "11"

    sget-object v2, Lcom/google/android/apps/plus/service/AndroidContactsSync;->PHONE_TYPE_CAR:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 432
    sget-object v0, Lcom/google/android/apps/plus/service/AndroidContactsSync;->sPhoneTypeMap:Ljava/util/HashMap;

    const-string v1, "12"

    sget-object v2, Lcom/google/android/apps/plus/service/AndroidContactsSync;->PHONE_TYPE_RADIO:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 433
    sget-object v0, Lcom/google/android/apps/plus/service/AndroidContactsSync;->sPhoneTypeMap:Ljava/util/HashMap;

    const-string v1, "13"

    sget-object v2, Lcom/google/android/apps/plus/service/AndroidContactsSync;->PHONE_TYPE_ISDN:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 434
    sget-object v0, Lcom/google/android/apps/plus/service/AndroidContactsSync;->sPhoneTypeMap:Ljava/util/HashMap;

    const-string v1, "14"

    sget-object v2, Lcom/google/android/apps/plus/service/AndroidContactsSync;->PHONE_TYPE_CALLBACK:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 435
    sget-object v0, Lcom/google/android/apps/plus/service/AndroidContactsSync;->sPhoneTypeMap:Ljava/util/HashMap;

    const-string v1, "15"

    sget-object v2, Lcom/google/android/apps/plus/service/AndroidContactsSync;->PHONE_TYPE_TELEX:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 436
    sget-object v0, Lcom/google/android/apps/plus/service/AndroidContactsSync;->sPhoneTypeMap:Ljava/util/HashMap;

    const-string v1, "16"

    sget-object v2, Lcom/google/android/apps/plus/service/AndroidContactsSync;->PHONE_TYPE_TTY_TDD:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 437
    sget-object v0, Lcom/google/android/apps/plus/service/AndroidContactsSync;->sPhoneTypeMap:Ljava/util/HashMap;

    const-string v1, "17"

    sget-object v2, Lcom/google/android/apps/plus/service/AndroidContactsSync;->PHONE_TYPE_WORK_MOBILE:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 438
    sget-object v0, Lcom/google/android/apps/plus/service/AndroidContactsSync;->sPhoneTypeMap:Ljava/util/HashMap;

    const-string v1, "18"

    sget-object v2, Lcom/google/android/apps/plus/service/AndroidContactsSync;->PHONE_TYPE_WORK_PAGER:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 439
    sget-object v0, Lcom/google/android/apps/plus/service/AndroidContactsSync;->sPhoneTypeMap:Ljava/util/HashMap;

    const-string v1, "19"

    sget-object v2, Lcom/google/android/apps/plus/service/AndroidContactsSync;->PHONE_TYPE_MAIN:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 446
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "sourceid"

    aput-object v1, v0, v4

    const-string v1, "title"

    aput-object v1, v0, v5

    sput-object v0, Lcom/google/android/apps/plus/service/AndroidContactsSync;->GROUPS_PROJECTION:[Ljava/lang/String;

    .line 456
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "circle_id"

    aput-object v1, v0, v3

    const-string v1, "circle_name"

    aput-object v1, v0, v4

    sput-object v0, Lcom/google/android/apps/plus/service/AndroidContactsSync;->CIRCLES_PROJECTION:[Ljava/lang/String;

    .line 473
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "sourceid"

    aput-object v1, v0, v4

    const-string v1, "sync2"

    aput-object v1, v0, v5

    sput-object v0, Lcom/google/android/apps/plus/service/AndroidContactsSync;->LARGE_AVATAR_RAW_CONTACTS_PROJECTION:[Ljava/lang/String;

    .line 489
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "user_id"

    aput-object v1, v0, v3

    const-string v1, "signature"

    aput-object v1, v0, v4

    sput-object v0, Lcom/google/android/apps/plus/service/AndroidContactsSync;->AVATAR_SIGNATURE_PROJECTION:[Ljava/lang/String;

    .line 501
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "sourceid"

    aput-object v1, v0, v4

    const-string v1, "data_id"

    aput-object v1, v0, v5

    const-string v1, "mimetype"

    aput-object v1, v0, v6

    const-string v1, "sync3"

    aput-object v1, v0, v7

    sput-object v0, Lcom/google/android/apps/plus/service/AndroidContactsSync;->THUMBNAILS_RAW_CONTACT_PROJECTION:[Ljava/lang/String;

    .line 521
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "user_id"

    aput-object v1, v0, v3

    const-string v1, "medium_image"

    aput-object v1, v0, v4

    sput-object v0, Lcom/google/android/apps/plus/service/AndroidContactsSync;->THUMBNAILS_AVATAR_PROJECTION:[Ljava/lang/String;

    .line 537
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "sourceid"

    aput-object v1, v0, v4

    sput-object v0, Lcom/google/android/apps/plus/service/AndroidContactsSync;->RAW_CONTACT_SOURCE_ID_PROJECTION:[Ljava/lang/String;

    .line 548
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "raw_contact_source_id"

    aput-object v1, v0, v4

    const-string v1, "stream_item_sync1"

    aput-object v1, v0, v5

    const-string v1, "timestamp"

    aput-object v1, v0, v6

    const-string v1, "stream_item_sync2"

    aput-object v1, v0, v7

    sput-object v0, Lcom/google/android/apps/plus/service/AndroidContactsSync;->STREAM_ITEMS_PROJECTION:[Ljava/lang/String;

    .line 568
    new-array v0, v7, [Ljava/lang/String;

    const-string v1, "activity_id"

    aput-object v1, v0, v3

    const-string v1, "author_id"

    aput-object v1, v0, v4

    const-string v1, "created"

    aput-object v1, v0, v5

    const-string v1, "modified"

    aput-object v1, v0, v6

    sput-object v0, Lcom/google/android/apps/plus/service/AndroidContactsSync;->ACTIVITY_SUMMARY_PROJECTION:[Ljava/lang/String;

    .line 583
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "activity_id"

    aput-object v1, v0, v3

    const-string v1, "media"

    aput-object v1, v0, v4

    const-string v1, "total_comment_count"

    aput-object v1, v0, v5

    const-string v1, "plus_one_data"

    aput-object v1, v0, v6

    const-string v1, "explanations"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "loc"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/apps/plus/service/AndroidContactsSync;->ACTIVITY_PROJECTION:[Ljava/lang/String;

    .line 609
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "account_type"

    aput-object v1, v0, v4

    const-string v1, "account_name"

    aput-object v1, v0, v5

    const-string v1, "data_set"

    aput-object v1, v0, v6

    const-string v1, "sourceid"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "sync2"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "sync4"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/apps/plus/service/AndroidContactsSync;->RAW_CONTACT_REFRESH_PROJECTION:[Ljava/lang/String;

    .line 674
    new-instance v0, Lcom/google/android/apps/plus/service/AndroidContactsSync$1;

    invoke-direct {v0}, Lcom/google/android/apps/plus/service/AndroidContactsSync$1;-><init>()V

    sput-object v0, Lcom/google/android/apps/plus/service/AndroidContactsSync;->ACTIVITY_STATE_COMPARATOR:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 705
    return-void
.end method

.method static synthetic access$500(Lcom/google/android/apps/plus/content/EsAccount;)Landroid/net/Uri;
    .registers 2
    .parameter "x0"

    .prologue
    .line 83
    invoke-static {p0}, Lcom/google/android/apps/plus/service/AndroidContactsSync;->getRawContactsUri(Lcom/google/android/apps/plus/content/EsAccount;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method private static addData(Lcom/google/android/apps/plus/service/AndroidContactsSync$RawContactState;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/apps/plus/service/AndroidContactsSync$DataState;
    .registers 5
    .parameter "state"
    .parameter "mimeType"
    .parameter "data"

    .prologue
    .line 1527
    new-instance v0, Lcom/google/android/apps/plus/service/AndroidContactsSync$DataState;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/apps/plus/service/AndroidContactsSync$DataState;-><init>(Lcom/google/android/apps/plus/service/AndroidContactsSync$1;)V

    .line 1528
    .local v0, dataState:Lcom/google/android/apps/plus/service/AndroidContactsSync$DataState;
    iput-object p1, v0, Lcom/google/android/apps/plus/service/AndroidContactsSync$DataState;->mimetype:Ljava/lang/String;

    .line 1529
    iput-object p2, v0, Lcom/google/android/apps/plus/service/AndroidContactsSync$DataState;->data1:Ljava/lang/String;

    .line 1530
    iget-object v1, p0, Lcom/google/android/apps/plus/service/AndroidContactsSync$RawContactState;->data:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1531
    return-object v0
.end method

.method private static appendImgTag(Landroid/content/Context;Ljava/lang/StringBuilder;I)V
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2930
    const-string v0, "<img src=\'res://"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x2f

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'/>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2932
    return-void
.end method

.method private static applyActivityChanges(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/util/HashMap;)V
    .registers 14
    .parameter "context"
    .parameter "account"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/android/apps/plus/content/EsAccount;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/google/android/apps/plus/service/AndroidContactsSync$PersonActivityState;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, stateMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Lcom/google/android/apps/plus/service/AndroidContactsSync$PersonActivityState;>;"
    const/4 v10, 0x1

    const/4 v1, 0x0

    .line 2559
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    .line 2560
    .local v8, resolver:Landroid/content/ContentResolver;
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 2561
    .local v5, batch:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 2563
    .local v2, stateList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/android/apps/plus/service/AndroidContactsSync$PersonActivityState;>;"
    new-array v6, v10, [I

    aput v1, v6, v1

    .line 2564
    .local v6, totalImageBytes:[I
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v9

    .line 2565
    .local v9, size:I
    const/4 v3, 0x0

    .line 2566
    .local v3, offset:I
    :goto_1d
    if-ge v3, v9, :cond_46

    .line 2567
    add-int/lit8 v4, v3, 0x20

    .line 2568
    .local v4, to:I
    if-le v4, v9, :cond_24

    .line 2569
    move v4, v9

    .line 2572
    :cond_24
    const-string v0, "GooglePlusContactsSync"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 2573
    move v7, v3

    .local v7, i:I
    :goto_2e
    if-ge v7, v4, :cond_3c

    .line 2574
    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/plus/service/AndroidContactsSync$PersonActivityState;

    invoke-static {v0}, Lcom/google/android/apps/plus/service/AndroidContactsSync;->dumpPersonActivityState(Lcom/google/android/apps/plus/service/AndroidContactsSync$PersonActivityState;)V

    .line 2573
    add-int/lit8 v7, v7, 0x1

    goto :goto_2e

    .line 2578
    .end local v7           #i:I
    :cond_3c
    invoke-static {p1, v2, v3, v4, v5}, Lcom/google/android/apps/plus/service/AndroidContactsSync;->deleteObsoleteStreamItems(Lcom/google/android/apps/plus/content/EsAccount;Ljava/util/ArrayList;IILjava/util/ArrayList;)V

    move-object v0, p0

    move-object v1, p1

    .line 2579
    invoke-static/range {v0 .. v6}, Lcom/google/android/apps/plus/service/AndroidContactsSync;->updateStreamItems(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/util/ArrayList;IILjava/util/ArrayList;[I)V

    .line 2580
    move v3, v4

    .line 2581
    goto :goto_1d

    .line 2583
    .end local v4           #to:I
    :cond_46
    invoke-static {v8, v5, v10}, Lcom/google/android/apps/plus/service/AndroidContactsSync;->flushBatch(Landroid/content/ContentResolver;Ljava/util/ArrayList;Z)[Landroid/content/ContentProviderResult;

    .line 2584
    return-void
.end method

.method private static applyCircleChanges(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/util/HashMap;)V
    .registers 15
    .parameter "context"
    .parameter "account"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/android/apps/plus/content/EsAccount;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/apps/plus/service/AndroidContactsSync$CircleState;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, stateMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/google/android/apps/plus/service/AndroidContactsSync$CircleState;>;"
    const/4 v11, 0x0

    const/4 v10, 0x1

    .line 969
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 970
    .local v3, resolver:Landroid/content/ContentResolver;
    invoke-static {p1}, Lcom/google/android/apps/plus/service/AndroidContactsSync;->getGroupsUri(Lcom/google/android/apps/plus/content/EsAccount;)Landroid/net/Uri;

    move-result-object v1

    .line 971
    .local v1, groupsUri:Landroid/net/Uri;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 972
    .local v0, batch:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    invoke-virtual {p2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_17
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_a6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/apps/plus/service/AndroidContactsSync$CircleState;

    .line 973
    .local v4, state:Lcom/google/android/apps/plus/service/AndroidContactsSync$CircleState;
    const-string v5, "GooglePlusContactsSync"

    const/4 v6, 0x3

    invoke-static {v5, v6}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_2f

    .line 974
    invoke-static {v4}, Lcom/google/android/apps/plus/service/AndroidContactsSync;->dumpCircleState(Lcom/google/android/apps/plus/service/AndroidContactsSync$CircleState;)V

    .line 977
    :cond_2f
    iget-boolean v5, v4, Lcom/google/android/apps/plus/service/AndroidContactsSync$CircleState;->exists:Z

    if-eqz v5, :cond_61

    iget-wide v5, v4, Lcom/google/android/apps/plus/service/AndroidContactsSync$CircleState;->groupId:J

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-nez v5, :cond_61

    .line 978
    invoke-static {v1}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v5

    const-string v6, "sourceid"

    iget-object v7, v4, Lcom/google/android/apps/plus/service/AndroidContactsSync$CircleState;->circleId:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v5

    const-string v6, "title"

    iget-object v7, v4, Lcom/google/android/apps/plus/service/AndroidContactsSync$CircleState;->circleName:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v5

    const-string v6, "group_is_read_only"

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_17

    .line 983
    :cond_61
    iget-boolean v5, v4, Lcom/google/android/apps/plus/service/AndroidContactsSync$CircleState;->changed:Z

    if-eqz v5, :cond_89

    .line 984
    invoke-static {v1}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v5

    const-string v6, "_id=?"

    new-array v7, v10, [Ljava/lang/String;

    iget-wide v8, v4, Lcom/google/android/apps/plus/service/AndroidContactsSync$CircleState;->groupId:J

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v11

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v5

    const-string v6, "title"

    iget-object v7, v4, Lcom/google/android/apps/plus/service/AndroidContactsSync$CircleState;->circleName:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_17

    .line 990
    :cond_89
    invoke-static {v1}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v5

    const-string v6, "_id=?"

    new-array v7, v10, [Ljava/lang/String;

    iget-wide v8, v4, Lcom/google/android/apps/plus/service/AndroidContactsSync$CircleState;->groupId:J

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v11

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_17

    .line 997
    .end local v4           #state:Lcom/google/android/apps/plus/service/AndroidContactsSync$CircleState;
    :cond_a6
    invoke-static {v3, v0, v10}, Lcom/google/android/apps/plus/service/AndroidContactsSync;->flushBatch(Landroid/content/ContentResolver;Ljava/util/ArrayList;Z)[Landroid/content/ContentProviderResult;

    .line 998
    return-void
.end method

.method private static applyContactChanges(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/util/HashMap;Ljava/util/HashMap;)V
    .registers 7
    .parameter "context"
    .parameter "account"
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/android/apps/plus/content/EsAccount;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/apps/plus/service/AndroidContactsSync$RawContactState;",
            ">;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1188
    .local p2, stateMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/google/android/apps/plus/service/AndroidContactsSync$RawContactState;>;"
    .local p3, circleIdMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Long;>;"
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 1189
    .local v1, resolver:Landroid/content/ContentResolver;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1191
    .local v0, batch:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    invoke-static {v1, p1, p2, v0}, Lcom/google/android/apps/plus/service/AndroidContactsSync;->deleteRemovedContacts(Landroid/content/ContentResolver;Lcom/google/android/apps/plus/content/EsAccount;Ljava/util/HashMap;Ljava/util/ArrayList;)V

    .line 1192
    invoke-static {p0, p1, p2, v0, p3}, Lcom/google/android/apps/plus/service/AndroidContactsSync;->insertNewContacts(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/util/HashMap;Ljava/util/ArrayList;Ljava/util/HashMap;)V

    .line 1193
    invoke-static {p0, p1, p2, v0, p3}, Lcom/google/android/apps/plus/service/AndroidContactsSync;->updateChangedContacts(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/util/HashMap;Ljava/util/ArrayList;Ljava/util/HashMap;)V

    .line 1195
    const/4 v2, 0x1

    invoke-static {v1, v0, v2}, Lcom/google/android/apps/plus/service/AndroidContactsSync;->flushBatch(Landroid/content/ContentResolver;Ljava/util/ArrayList;Z)[Landroid/content/ContentProviderResult;

    .line 1196
    return-void
.end method

.method private static buildContentProviderOperations(Landroid/content/Context;Landroid/net/Uri;Ljava/util/ArrayList;Lcom/google/android/apps/plus/service/AndroidContactsSync$RawContactState;)V
    .registers 18
    .parameter "context"
    .parameter "rawContactsUri"
    .parameter
    .parameter "state"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/net/Uri;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;",
            "Lcom/google/android/apps/plus/service/AndroidContactsSync$RawContactState;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1623
    .local p2, batch:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    const-string v8, "GooglePlusContactsSync"

    const/4 v9, 0x3

    invoke-static {v8, v9}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v8

    if-eqz v8, :cond_c

    .line 1624
    invoke-static/range {p3 .. p3}, Lcom/google/android/apps/plus/service/AndroidContactsSync;->dumpRawContactState(Lcom/google/android/apps/plus/service/AndroidContactsSync$RawContactState;)V

    .line 1627
    :cond_c
    const/4 v7, 0x0

    .line 1628
    .local v7, rawContactBackReference:I
    move-object/from16 v0, p3

    iget-wide v8, v0, Lcom/google/android/apps/plus/service/AndroidContactsSync$RawContactState;->rawContactId:J

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-nez v8, :cond_1b7

    .line 1629
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 1630
    invoke-static {p1}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v8

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/content/ContentProviderOperation$Builder;->withYieldAllowed(Z)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v8

    const-string v9, "sourceid"

    move-object/from16 v0, p3

    iget-object v10, v0, Lcom/google/android/apps/plus/service/AndroidContactsSync$RawContactState;->personId:Ljava/lang/String;

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v8

    const-string v9, "sync1"

    move-object/from16 v0, p3

    iget-wide v10, v0, Lcom/google/android/apps/plus/service/AndroidContactsSync$RawContactState;->lastUpdateTime:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v8

    const-string v9, "raw_contact_is_read_only"

    const/4 v10, 0x1

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v8

    move-object/from16 v0, p2

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1636
    sget-object v8, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v8}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v8

    const-string v9, "raw_contact_id"

    invoke-virtual {v8, v9, v7}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v8

    const-string v9, "mimetype"

    const-string v10, "vnd.android.cursor.item/name"

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v8

    const-string v9, "data1"

    move-object/from16 v0, p3

    iget-object v10, v0, Lcom/google/android/apps/plus/service/AndroidContactsSync$RawContactState;->fullName:Ljava/lang/String;

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v8

    move-object/from16 v0, p2

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1641
    sget-object v8, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v8}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v8

    const-string v9, "raw_contact_id"

    invoke-virtual {v8, v9, v7}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v8

    const-string v9, "mimetype"

    const-string v10, "vnd.android.cursor.item/vnd.googleplus.profile"

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v8

    const-string v9, "data4"

    const/16 v10, 0xa

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v8

    const-string v9, "data5"

    const-string v10, "conversation"

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v8

    const-string v9, "data3"

    const v10, 0x7f070249

    invoke-virtual {p0, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v8

    move-object/from16 v0, p2

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1649
    sget-object v8, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v8}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v8

    const-string v9, "raw_contact_id"

    invoke-virtual {v8, v9, v7}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v8

    const-string v9, "mimetype"

    const-string v10, "vnd.android.cursor.item/vnd.googleplus.profile"

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v8

    const-string v9, "data4"

    const/16 v10, 0x14

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v8

    const-string v9, "data5"

    const-string v10, "addtocircle"

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v8

    const-string v9, "data3"

    const v10, 0x7f07024a

    invoke-virtual {p0, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v8

    move-object/from16 v0, p2

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1657
    sget-object v8, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v8}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v8

    const-string v9, "raw_contact_id"

    invoke-virtual {v8, v9, v7}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v8

    const-string v9, "mimetype"

    const-string v10, "vnd.android.cursor.item/vnd.googleplus.profile"

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v8

    const-string v9, "data4"

    const/16 v10, 0x1e

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v8

    const-string v9, "data5"

    const-string v10, "view"

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v8

    const-string v9, "data3"

    const v10, 0x7f070248

    invoke-virtual {p0, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v8

    move-object/from16 v0, p2

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1665
    move-object/from16 v0, p3

    iget-object v8, v0, Lcom/google/android/apps/plus/service/AndroidContactsSync$RawContactState;->personId:Ljava/lang/String;

    invoke-static {v8}, Lcom/google/android/apps/plus/content/EsPeopleData;->getGaiaId(Ljava/lang/String;)J

    move-result-wide v4

    .line 1666
    .local v4, gaiaId:J
    const-wide/16 v8, 0x0

    cmp-long v8, v4, v8

    if-eqz v8, :cond_17d

    .line 1667
    sget-object v8, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v8}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v8

    const-string v9, "raw_contact_id"

    invoke-virtual {v8, v9, v7}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v8

    const-string v9, "mimetype"

    const-string v10, "vnd.android.cursor.item/identity"

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v8

    const-string v9, "data2"

    const-string v10, "com.google"

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v8

    const-string v9, "data1"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "gprofile:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v8

    move-object/from16 v0, p2

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1683
    .end local v4           #gaiaId:J
    :cond_17d
    :goto_17d
    move-object/from16 v0, p3

    iget-object v8, v0, Lcom/google/android/apps/plus/service/AndroidContactsSync$RawContactState;->data:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, i$:Ljava/util/Iterator;
    :cond_185
    :goto_185
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_254

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/apps/plus/service/AndroidContactsSync$DataState;

    .line 1685
    .local v3, dataState:Lcom/google/android/apps/plus/service/AndroidContactsSync$DataState;
    iget-boolean v8, v3, Lcom/google/android/apps/plus/service/AndroidContactsSync$DataState;->exists:Z

    if-nez v8, :cond_1ec

    .line 1686
    sget-object v8, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v8}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v8

    const-string v9, "_id=?"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    iget-wide v12, v3, Lcom/google/android/apps/plus/service/AndroidContactsSync$DataState;->dataId:J

    invoke-static {v12, v13}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v2

    .line 1715
    .local v2, cpo:Landroid/content/ContentProviderOperation;
    :goto_1b1
    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_185

    .line 1675
    .end local v2           #cpo:Landroid/content/ContentProviderOperation;
    .end local v3           #dataState:Lcom/google/android/apps/plus/service/AndroidContactsSync$DataState;
    .end local v6           #i$:Ljava/util/Iterator;
    :cond_1b7
    invoke-static {p1}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v8

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/content/ContentProviderOperation$Builder;->withYieldAllowed(Z)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v8

    const-string v9, "_id=?"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    move-object/from16 v0, p3

    iget-wide v12, v0, Lcom/google/android/apps/plus/service/AndroidContactsSync$RawContactState;->rawContactId:J

    invoke-static {v12, v13}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v8

    const-string v9, "sync1"

    move-object/from16 v0, p3

    iget-wide v10, v0, Lcom/google/android/apps/plus/service/AndroidContactsSync$RawContactState;->lastUpdateTime:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v8

    move-object/from16 v0, p2

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_17d

    .line 1692
    .restart local v3       #dataState:Lcom/google/android/apps/plus/service/AndroidContactsSync$DataState;
    .restart local v6       #i$:Ljava/util/Iterator;
    :cond_1ec
    iget-wide v8, v3, Lcom/google/android/apps/plus/service/AndroidContactsSync$DataState;->dataId:J

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-nez v8, :cond_238

    .line 1693
    sget-object v8, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v8}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    .line 1694
    .local v1, builder:Landroid/content/ContentProviderOperation$Builder;
    const-string v8, "mimetype"

    iget-object v9, v3, Lcom/google/android/apps/plus/service/AndroidContactsSync$DataState;->mimetype:Ljava/lang/String;

    invoke-virtual {v1, v8, v9}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1695
    move-object/from16 v0, p3

    iget-wide v8, v0, Lcom/google/android/apps/plus/service/AndroidContactsSync$RawContactState;->rawContactId:J

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-nez v8, :cond_22a

    .line 1696
    const-string v8, "raw_contact_id"

    invoke-virtual {v1, v8, v7}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    .line 1709
    :goto_210
    const-string v8, "data1"

    iget-object v9, v3, Lcom/google/android/apps/plus/service/AndroidContactsSync$DataState;->data1:Ljava/lang/String;

    invoke-virtual {v1, v8, v9}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1710
    const-string v8, "data2"

    iget-object v9, v3, Lcom/google/android/apps/plus/service/AndroidContactsSync$DataState;->data2:Ljava/lang/String;

    invoke-virtual {v1, v8, v9}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1711
    const-string v8, "data3"

    iget-object v9, v3, Lcom/google/android/apps/plus/service/AndroidContactsSync$DataState;->data3:Ljava/lang/String;

    invoke-virtual {v1, v8, v9}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1712
    invoke-virtual {v1}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v2

    .restart local v2       #cpo:Landroid/content/ContentProviderOperation;
    goto :goto_1b1

    .line 1699
    .end local v2           #cpo:Landroid/content/ContentProviderOperation;
    :cond_22a
    const-string v8, "raw_contact_id"

    move-object/from16 v0, p3

    iget-wide v9, v0, Lcom/google/android/apps/plus/service/AndroidContactsSync$RawContactState;->rawContactId:J

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v1, v8, v9}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    goto :goto_210

    .line 1701
    .end local v1           #builder:Landroid/content/ContentProviderOperation$Builder;
    :cond_238
    iget-boolean v8, v3, Lcom/google/android/apps/plus/service/AndroidContactsSync$DataState;->changed:Z

    if-eqz v8, :cond_185

    .line 1702
    sget-object v8, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v8}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    .line 1703
    .restart local v1       #builder:Landroid/content/ContentProviderOperation$Builder;
    const-string v8, "_id=?"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    iget-wide v11, v3, Lcom/google/android/apps/plus/service/AndroidContactsSync$DataState;->dataId:J

    invoke-static {v11, v12}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-virtual {v1, v8, v9}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    goto :goto_210

    .line 1717
    .end local v1           #builder:Landroid/content/ContentProviderOperation$Builder;
    .end local v3           #dataState:Lcom/google/android/apps/plus/service/AndroidContactsSync$DataState;
    :cond_254
    return-void
.end method

.method private static buildContentProviderOperations(Landroid/content/Context;Landroid/net/Uri;Ljava/util/ArrayList;[Ljava/lang/String;Ljava/util/HashMap;)V
    .registers 8
    .parameter "context"
    .parameter "rawContactsUri"
    .parameter
    .parameter "personIds"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/net/Uri;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;[",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/apps/plus/service/AndroidContactsSync$RawContactState;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1611
    .local p2, batch:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    .local p4, stateMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/google/android/apps/plus/service/AndroidContactsSync$RawContactState;>;"
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    array-length v2, p3

    if-ge v0, v2, :cond_12

    .line 1612
    aget-object v2, p3, v0

    invoke-virtual {p4, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/apps/plus/service/AndroidContactsSync$RawContactState;

    .line 1613
    .local v1, state:Lcom/google/android/apps/plus/service/AndroidContactsSync$RawContactState;
    invoke-static {p0, p1, p2, v1}, Lcom/google/android/apps/plus/service/AndroidContactsSync;->buildContentProviderOperations(Landroid/content/Context;Landroid/net/Uri;Ljava/util/ArrayList;Lcom/google/android/apps/plus/service/AndroidContactsSync$RawContactState;)V

    .line 1611
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1615
    .end local v1           #state:Lcom/google/android/apps/plus/service/AndroidContactsSync$RawContactState;
    :cond_12
    return-void
.end method

.method private static buildStreamItemContentHtml(Landroid/content/Context;[Lcom/google/android/apps/plus/content/DbMedia;[Lcom/google/wireless/tacotruck/proto/Data$Explanation;Lcom/google/wireless/tacotruck/proto/Data$Location;)Ljava/lang/String;
    .registers 13
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 2787
    const/4 v1, 0x0

    .line 2788
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 2790
    if-eqz p2, :cond_76

    move v2, v3

    .line 2791
    :goto_b
    array-length v0, p2

    if-ge v2, v0, :cond_76

    .line 2792
    sget-object v0, Lcom/google/android/apps/plus/service/AndroidContactsSync$3;->$SwitchMap$com$google$wireless$tacotruck$proto$Data$Explanation$Type:[I

    aget-object v6, p2, v2

    invoke-virtual {v6}, Lcom/google/wireless/tacotruck/proto/Data$Explanation;->getType()Lcom/google/wireless/tacotruck/proto/Data$Explanation$Type;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/wireless/tacotruck/proto/Data$Explanation$Type;->ordinal()I

    move-result v6

    aget v0, v0, v6

    packed-switch v0, :pswitch_data_11c

    :cond_1f
    :goto_1f
    move-object v0, v1

    .line 2791
    :cond_20
    :goto_20
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move-object v1, v0

    goto :goto_b

    .line 2794
    :pswitch_25
    aget-object v0, p2, v2

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$Explanation;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    .line 2795
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1f

    .line 2796
    const v6, 0x7f070145

    new-array v7, v4, [Ljava/lang/Object;

    aput-object v0, v7, v3

    invoke-virtual {p0, v6, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 2798
    if-eqz v1, :cond_20

    .line 2801
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_20

    .line 2807
    :pswitch_50
    const v0, 0x7f07014f

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2808
    if-eqz p3, :cond_1f

    .line 2809
    invoke-virtual {p3}, Lcom/google/wireless/tacotruck/proto/Data$Location;->getName()Ljava/lang/String;

    move-result-object v0

    .line 2810
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1f

    .line 2811
    const-string v6, "<div><font color=\'#6e8ec6\'><b>"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, "</b></font></div>"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1f

    .line 2822
    :cond_76
    if-eqz p1, :cond_10d

    move v0, v3

    .line 2823
    :goto_79
    array-length v2, p1

    if-ge v3, v2, :cond_10e

    .line 2824
    aget-object v2, p1, v3

    invoke-virtual {v2}, Lcom/google/android/apps/plus/content/DbMedia;->getMedia()Lcom/google/wireless/tacotruck/proto/Data$Media;

    move-result-object v2

    .line 2825
    invoke-virtual {v2}, Lcom/google/wireless/tacotruck/proto/Data$Media;->getType()Lcom/google/wireless/tacotruck/proto/Data$Media$Type;

    move-result-object v6

    .line 2826
    invoke-virtual {v2}, Lcom/google/wireless/tacotruck/proto/Data$Media;->getContentHtml()Ljava/lang/String;

    move-result-object v7

    .line 2827
    sget-object v8, Lcom/google/wireless/tacotruck/proto/Data$Media$Type;->DOCUMENT:Lcom/google/wireless/tacotruck/proto/Data$Media$Type;

    invoke-virtual {v8, v6}, Lcom/google/wireless/tacotruck/proto/Data$Media$Type;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_c1

    .line 2828
    if-eqz v1, :cond_a3

    .line 2829
    const-string v0, "<div>"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "</div>"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2832
    :cond_a3
    const-string v0, "<blockquote>"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2833
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_11a

    .line 2834
    const-string v0, "<div><font color=\'#777777\'>"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "</font></div>"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v0, v4

    .line 2823
    :cond_be
    :goto_be
    add-int/lit8 v3, v3, 0x1

    goto :goto_79

    .line 2837
    :cond_c1
    sget-object v8, Lcom/google/wireless/tacotruck/proto/Data$Media$Type;->TITLE:Lcom/google/wireless/tacotruck/proto/Data$Media$Type;

    invoke-virtual {v8, v6}, Lcom/google/wireless/tacotruck/proto/Data$Media$Type;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_f8

    .line 2838
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_de

    .line 2839
    const-string v6, "<div><font color=\'#6e8ec6\'><b>"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "</b></font></div>"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2843
    :cond_de
    invoke-virtual {v2}, Lcom/google/wireless/tacotruck/proto/Data$Media;->getDescriptionHtml()Ljava/lang/String;

    move-result-object v2

    .line 2844
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_be

    .line 2845
    const-string v6, "<div><font color=\'#777777\'>"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, "</font></div>"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_be

    .line 2848
    :cond_f8
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_be

    .line 2849
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_109

    .line 2850
    const-string v2, "<p/>"

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2852
    :cond_109
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_be

    :cond_10d
    move v0, v3

    .line 2856
    :cond_10e
    if-eqz v0, :cond_115

    .line 2857
    const-string v0, "</blockquote>"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2860
    :cond_115
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_11a
    move v0, v4

    goto :goto_be

    .line 2792
    :pswitch_data_11c
    .packed-switch 0x1
        :pswitch_25
        :pswitch_50
    .end packed-switch
.end method

.method private static declared-synchronized cancelSync()V
    .registers 2

    .prologue
    .line 847
    const-class v1, Lcom/google/android/apps/plus/service/AndroidContactsSync;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/google/android/apps/plus/service/AndroidContactsSync;->sAndroidSyncThread:Lcom/google/android/apps/plus/service/AndroidContactsSync$AndroidContactsSyncThread;

    if-eqz v0, :cond_c

    .line 848
    sget-object v0, Lcom/google/android/apps/plus/service/AndroidContactsSync;->sAndroidSyncThread:Lcom/google/android/apps/plus/service/AndroidContactsSync$AndroidContactsSyncThread;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/service/AndroidContactsSync$AndroidContactsSyncThread;->cancel()V
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_e

    .line 850
    :cond_c
    monitor-exit v1

    return-void

    .line 847
    :catchall_e
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static checkSyncVersion(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)V
    .registers 5
    .parameter "context"
    .parameter "account"

    .prologue
    const/16 v2, 0xc

    .line 883
    invoke-static {}, Lcom/google/android/apps/plus/service/AndroidContactsSync;->isAndroidSyncSupported()Z

    move-result v1

    if-nez v1, :cond_9

    .line 893
    :cond_8
    :goto_8
    return-void

    .line 887
    :cond_9
    invoke-static {p0, p1}, Lcom/google/android/apps/plus/content/EsAccountsData;->queryContactsSyncVersion(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)I

    move-result v0

    .line 888
    .local v0, version:I
    if-eq v0, v2, :cond_8

    .line 889
    invoke-static {p0, p1}, Lcom/google/android/apps/plus/service/AndroidContactsSync;->clearAndroidProfile(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)V

    .line 890
    invoke-static {p0, p1}, Lcom/google/android/apps/plus/service/AndroidContactsSync;->clearAndroidContacts(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)V

    .line 891
    invoke-static {p0, p1, v2}, Lcom/google/android/apps/plus/content/EsAccountsData;->saveContactsSyncVersion(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;I)V

    goto :goto_8
.end method

.method private static cleanUpActivityStateMap(Ljava/util/HashMap;)V
    .registers 11
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/google/android/apps/plus/service/AndroidContactsSync$PersonActivityState;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p0, stateMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Lcom/google/android/apps/plus/service/AndroidContactsSync$PersonActivityState;>;"
    const-wide/16 v8, 0x0

    .line 2535
    new-instance v5, Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 2538
    .local v5, stateList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/android/apps/plus/service/AndroidContactsSync$PersonActivityState;>;"
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_f
    :goto_f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_53

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/apps/plus/service/AndroidContactsSync$PersonActivityState;

    .line 2539
    .local v4, state:Lcom/google/android/apps/plus/service/AndroidContactsSync$PersonActivityState;
    const/4 v1, 0x0

    .line 2540
    .local v1, hasChanges:Z
    iget-object v6, v4, Lcom/google/android/apps/plus/service/AndroidContactsSync$PersonActivityState;->activities:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_22
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_47

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/plus/service/AndroidContactsSync$ActivityState;

    .line 2541
    .local v0, activityState:Lcom/google/android/apps/plus/service/AndroidContactsSync$ActivityState;
    iget-boolean v6, v0, Lcom/google/android/apps/plus/service/AndroidContactsSync$ActivityState;->exists:Z

    if-eqz v6, :cond_38

    iget-wide v6, v0, Lcom/google/android/apps/plus/service/AndroidContactsSync$ActivityState;->streamItemId:J

    cmp-long v6, v6, v8

    if-eqz v6, :cond_46

    :cond_38
    iget-boolean v6, v0, Lcom/google/android/apps/plus/service/AndroidContactsSync$ActivityState;->exists:Z

    if-nez v6, :cond_42

    iget-wide v6, v0, Lcom/google/android/apps/plus/service/AndroidContactsSync$ActivityState;->streamItemId:J

    cmp-long v6, v6, v8

    if-nez v6, :cond_46

    :cond_42
    iget-boolean v6, v0, Lcom/google/android/apps/plus/service/AndroidContactsSync$ActivityState;->changed:Z

    if-eqz v6, :cond_22

    .line 2544
    :cond_46
    const/4 v1, 0x1

    .line 2548
    .end local v0           #activityState:Lcom/google/android/apps/plus/service/AndroidContactsSync$ActivityState;
    :cond_47
    if-nez v1, :cond_f

    .line 2549
    iget-wide v6, v4, Lcom/google/android/apps/plus/service/AndroidContactsSync$PersonActivityState;->gaiaId:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {p0, v6}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_f

    .line 2552
    .end local v1           #hasChanges:Z
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v4           #state:Lcom/google/android/apps/plus/service/AndroidContactsSync$PersonActivityState;
    :cond_53
    return-void
.end method

.method private static clearAndroidContacts(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)V
    .registers 5
    .parameter "context"
    .parameter "account"

    .prologue
    const/4 v2, 0x0

    .line 3147
    invoke-static {p0, p1}, Lcom/google/android/apps/plus/service/AndroidContactsSync;->deleteAndroidContacts(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)V

    .line 3148
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {p1}, Lcom/google/android/apps/plus/service/AndroidContactsSync;->getGroupsUri(Lcom/google/android/apps/plus/content/EsAccount;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 3149
    return-void
.end method

.method private static clearAndroidContactsForOtherAccounts(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)V
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 3078
    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    if-eqz p1, :cond_2c

    invoke-virtual {p1}, Lcom/google/android/apps/plus/content/EsAccount;->getName()Ljava/lang/String;

    move-result-object v0

    :goto_a
    aput-object v0, v1, v2

    .line 3080
    invoke-static {}, Lcom/google/android/apps/plus/service/AndroidContactsSync;->getProfileRawContactsUri()Landroid/net/Uri;

    move-result-object v0

    const-string v2, "data_set=\'plus\' AND account_name!=? AND account_type=\'com.google\'"

    invoke-static {p0, v0, v2, v1}, Lcom/google/android/apps/plus/service/AndroidContactsSync;->deleteAndroidContacts(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V

    .line 3086
    invoke-static {}, Lcom/google/android/apps/plus/service/AndroidContactsSync;->getRawContactsUri()Landroid/net/Uri;

    move-result-object v0

    const-string v2, "data_set=\'plus\' AND account_name!=? AND account_type=\'com.google\'"

    invoke-static {p0, v0, v2, v1}, Lcom/google/android/apps/plus/service/AndroidContactsSync;->deleteAndroidContacts(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V

    .line 3092
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {}, Lcom/google/android/apps/plus/service/AndroidContactsSync;->getGroupsUri()Landroid/net/Uri;

    move-result-object v2

    const-string v3, "data_set=\'plus\' AND account_name!=? AND account_type=\'com.google\'"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 3097
    return-void

    .line 3078
    :cond_2c
    const-string v0, ""

    goto :goto_a
.end method

.method private static clearAndroidProfile(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)V
    .registers 11
    .parameter "context"
    .parameter "account"

    .prologue
    const/4 v3, 0x0

    .line 3055
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 3056
    .local v0, resolver:Landroid/content/ContentResolver;
    const-wide/16 v7, 0x0

    .line 3057
    .local v7, rawContactId:J
    invoke-static {p1}, Lcom/google/android/apps/plus/service/AndroidContactsSync;->getProfileRawContactUri(Lcom/google/android/apps/plus/content/EsAccount;)Landroid/net/Uri;

    move-result-object v1

    sget-object v2, Lcom/google/android/apps/plus/service/AndroidContactsSync;->PROFILE_RAW_CONTACT_PROJECTION:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 3060
    .local v6, cursor:Landroid/database/Cursor;
    :try_start_13
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 3061
    const/4 v1, 0x0

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getLong(I)J
    :try_end_1d
    .catchall {:try_start_13 .. :try_end_1d} :catchall_33

    move-result-wide v7

    .line 3064
    :cond_1e
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 3067
    const-wide/16 v1, 0x0

    cmp-long v1, v7, v1

    if-eqz v1, :cond_32

    .line 3068
    invoke-static {p1}, Lcom/google/android/apps/plus/service/AndroidContactsSync;->getRawContactsUri(Lcom/google/android/apps/plus/content/EsAccount;)Landroid/net/Uri;

    move-result-object v1

    invoke-static {v1, v7, v8}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v3, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 3071
    :cond_32
    return-void

    .line 3064
    :catchall_33
    move-exception v1

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v1
.end method

.method private static collectRawContactIds(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/util/HashSet;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 14
    .parameter "context"
    .parameter "account"
    .parameter
    .parameter "uri"
    .parameter "projection"
    .parameter "selection"
    .parameter "orderByAndLimit"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/android/apps/plus/content/EsAccount;",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/net/Uri;",
            "[",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 3024
    .local p2, rawContactIds:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v4, 0x0

    move-object v1, p3

    move-object v2, p4

    move-object v3, p5

    move-object v5, p6

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 3026
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_26

    .line 3028
    :goto_f
    :try_start_f
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_23

    .line 3029
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_1d
    .catchall {:try_start_f .. :try_end_1d} :catchall_1e

    goto :goto_f

    .line 3032
    :catchall_1e
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_23
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 3035
    :cond_26
    return-void
.end method

.method private static convertEmailType(Lcom/google/android/apps/plus/service/AndroidContactsSync$DataState;Ljava/lang/String;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 1781
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1795
    :goto_6
    return-void

    .line 1785
    :cond_7
    const-string v0, "1"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 1786
    sget-object v0, Lcom/google/android/apps/plus/service/AndroidContactsSync;->EMAIL_TYPE_HOME:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/apps/plus/service/AndroidContactsSync$DataState;->data2:Ljava/lang/String;

    goto :goto_6

    .line 1787
    :cond_14
    const-string v0, "2"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 1788
    sget-object v0, Lcom/google/android/apps/plus/service/AndroidContactsSync;->EMAIL_TYPE_WORK:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/apps/plus/service/AndroidContactsSync$DataState;->data2:Ljava/lang/String;

    goto :goto_6

    .line 1789
    :cond_21
    const-string v0, "3"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 1790
    sget-object v0, Lcom/google/android/apps/plus/service/AndroidContactsSync;->EMAIL_TYPE_OTHER:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/apps/plus/service/AndroidContactsSync$DataState;->data2:Ljava/lang/String;

    goto :goto_6

    .line 1792
    :cond_2e
    sget-object v0, Lcom/google/android/apps/plus/service/AndroidContactsSync;->EMAIL_TYPE_CUSTOM:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/apps/plus/service/AndroidContactsSync$DataState;->data2:Ljava/lang/String;

    .line 1793
    iput-object p1, p0, Lcom/google/android/apps/plus/service/AndroidContactsSync$DataState;->data3:Ljava/lang/String;

    goto :goto_6
.end method

.method private static convertPhoneType(Landroid/content/Context;Lcom/google/android/apps/plus/service/AndroidContactsSync$DataState;Ljava/lang/String;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1802
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1816
    :goto_6
    return-void

    .line 1806
    :cond_7
    sget-object v0, Lcom/google/android/apps/plus/service/AndroidContactsSync;->sPhoneTypeMap:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1807
    if-eqz v0, :cond_14

    .line 1808
    iput-object v0, p1, Lcom/google/android/apps/plus/service/AndroidContactsSync$DataState;->data2:Ljava/lang/String;

    goto :goto_6

    .line 1809
    :cond_14
    const-string v0, "20"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 1810
    sget-object v0, Lcom/google/android/apps/plus/service/AndroidContactsSync;->PHONE_TYPE_CUSTOM:Ljava/lang/String;

    iput-object v0, p1, Lcom/google/android/apps/plus/service/AndroidContactsSync$DataState;->data2:Ljava/lang/String;

    .line 1811
    const v0, 0x7f0701eb

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/google/android/apps/plus/service/AndroidContactsSync$DataState;->data3:Ljava/lang/String;

    goto :goto_6

    .line 1813
    :cond_2a
    sget-object v0, Lcom/google/android/apps/plus/service/AndroidContactsSync;->PHONE_TYPE_CUSTOM:Ljava/lang/String;

    iput-object v0, p1, Lcom/google/android/apps/plus/service/AndroidContactsSync$DataState;->data2:Ljava/lang/String;

    .line 1814
    iput-object p2, p1, Lcom/google/android/apps/plus/service/AndroidContactsSync$DataState;->data3:Ljava/lang/String;

    goto :goto_6
.end method

.method private static convertPostalAddressType(Lcom/google/android/apps/plus/service/AndroidContactsSync$DataState;Ljava/lang/String;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 1822
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1836
    :goto_6
    return-void

    .line 1826
    :cond_7
    const-string v0, "1"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 1827
    sget-object v0, Lcom/google/android/apps/plus/service/AndroidContactsSync;->POSTAL_TYPE_HOME:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/apps/plus/service/AndroidContactsSync$DataState;->data2:Ljava/lang/String;

    goto :goto_6

    .line 1828
    :cond_14
    const-string v0, "2"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 1829
    sget-object v0, Lcom/google/android/apps/plus/service/AndroidContactsSync;->POSTAL_TYPE_WORK:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/apps/plus/service/AndroidContactsSync$DataState;->data2:Ljava/lang/String;

    goto :goto_6

    .line 1830
    :cond_21
    const-string v0, "3"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 1831
    sget-object v0, Lcom/google/android/apps/plus/service/AndroidContactsSync;->POSTAL_TYPE_OTHER:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/apps/plus/service/AndroidContactsSync$DataState;->data2:Ljava/lang/String;

    goto :goto_6

    .line 1833
    :cond_2e
    sget-object v0, Lcom/google/android/apps/plus/service/AndroidContactsSync;->POSTAL_TYPE_CUSTOM:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/apps/plus/service/AndroidContactsSync$DataState;->data2:Ljava/lang/String;

    .line 1834
    iput-object p1, p0, Lcom/google/android/apps/plus/service/AndroidContactsSync$DataState;->data3:Ljava/lang/String;

    goto :goto_6
.end method

.method public static deactivateAccount(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)V
    .registers 3
    .parameter "context"
    .parameter "account"

    .prologue
    .line 3041
    invoke-static {}, Lcom/google/android/apps/plus/service/AndroidContactsSync;->isAndroidSyncSupported()Z

    move-result v0

    if-nez v0, :cond_7

    .line 3049
    :goto_6
    return-void

    .line 3045
    :cond_7
    invoke-static {}, Lcom/google/android/apps/plus/service/AndroidContactsSync;->cancelSync()V

    .line 3046
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/google/android/apps/plus/content/EsAccountsData;->saveContactsSyncCleanupStatus(Landroid/content/Context;Z)V

    .line 3047
    invoke-static {p0, p1}, Lcom/google/android/apps/plus/service/AndroidContactsSync;->clearAndroidProfile(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)V

    .line 3048
    invoke-static {p0, p1}, Lcom/google/android/apps/plus/service/AndroidContactsSync;->clearAndroidContacts(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)V

    goto :goto_6
.end method

.method private static deleteAndroidContacts(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V
    .registers 13
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 3115
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 3116
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 3117
    new-array v2, v8, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v2, v7

    const/4 v5, 0x0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 3120
    :goto_19
    :try_start_19
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_2d

    .line 3121
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_27
    .catchall {:try_start_19 .. :try_end_27} :catchall_28

    goto :goto_19

    .line 3124
    :catchall_28
    move-exception v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_2d
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 3127
    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_37

    .line 3141
    :goto_36
    return-void

    .line 3131
    :cond_37
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 3132
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_40
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_69

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 3133
    invoke-static {p1}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v4

    const-string v5, "_id=?"

    new-array v6, v8, [Ljava/lang/String;

    aput-object v1, v6, v7

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    invoke-virtual {v1, v8}, Landroid/content/ContentProviderOperation$Builder;->withYieldAllowed(Z)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3137
    invoke-static {v0, v2, v7}, Lcom/google/android/apps/plus/service/AndroidContactsSync;->flushBatch(Landroid/content/ContentResolver;Ljava/util/ArrayList;Z)[Landroid/content/ContentProviderResult;

    goto :goto_40

    .line 3140
    :cond_69
    invoke-static {v0, v2, v8}, Lcom/google/android/apps/plus/service/AndroidContactsSync;->flushBatch(Landroid/content/ContentResolver;Ljava/util/ArrayList;Z)[Landroid/content/ContentProviderResult;

    goto :goto_36
.end method

.method private static deleteAndroidContacts(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)V
    .registers 4
    .parameter "context"
    .parameter "account"

    .prologue
    const/4 v1, 0x0

    .line 3103
    invoke-static {p1}, Lcom/google/android/apps/plus/service/AndroidContactsSync;->getProfileRawContactUri(Lcom/google/android/apps/plus/content/EsAccount;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {p0, v0, v1, v1}, Lcom/google/android/apps/plus/service/AndroidContactsSync;->deleteAndroidContacts(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V

    .line 3104
    invoke-static {p1}, Lcom/google/android/apps/plus/service/AndroidContactsSync;->getRawContactsUri(Lcom/google/android/apps/plus/content/EsAccount;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {p0, v0, v1, v1}, Lcom/google/android/apps/plus/service/AndroidContactsSync;->deleteAndroidContacts(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V

    .line 3105
    return-void
.end method

.method private static deleteContacts(Landroid/content/ContentResolver;Lcom/google/android/apps/plus/content/EsAccount;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .registers 14
    .parameter "resolver"
    .parameter "account"
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentResolver;",
            "Lcom/google/android/apps/plus/content/EsAccount;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/apps/plus/service/AndroidContactsSync$RawContactState;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, batch:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    .local p3, stateList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/android/apps/plus/service/AndroidContactsSync$RawContactState;>;"
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 1725
    invoke-static {p1}, Lcom/google/android/apps/plus/service/AndroidContactsSync;->getRawContactsUri(Lcom/google/android/apps/plus/content/EsAccount;)Landroid/net/Uri;

    move-result-object v1

    .line 1726
    .local v1, rawContactsUri:Landroid/net/Uri;
    invoke-virtual {p3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_42

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/apps/plus/service/AndroidContactsSync$RawContactState;

    .line 1727
    .local v2, state:Lcom/google/android/apps/plus/service/AndroidContactsSync$RawContactState;
    const-string v3, "GooglePlusContactsSync"

    const/4 v4, 0x3

    invoke-static {v3, v4}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_22

    .line 1728
    invoke-static {v2}, Lcom/google/android/apps/plus/service/AndroidContactsSync;->dumpRawContactState(Lcom/google/android/apps/plus/service/AndroidContactsSync$RawContactState;)V

    .line 1731
    :cond_22
    invoke-static {v1}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v3

    invoke-virtual {v3, v9}, Landroid/content/ContentProviderOperation$Builder;->withYieldAllowed(Z)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v3

    const-string v4, "_id=?"

    new-array v5, v9, [Ljava/lang/String;

    iget-wide v6, v2, Lcom/google/android/apps/plus/service/AndroidContactsSync$RawContactState;->rawContactId:J

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_a

    .line 1738
    .end local v2           #state:Lcom/google/android/apps/plus/service/AndroidContactsSync$RawContactState;
    :cond_42
    invoke-static {p0, p2, v8}, Lcom/google/android/apps/plus/service/AndroidContactsSync;->flushBatch(Landroid/content/ContentResolver;Ljava/util/ArrayList;Z)[Landroid/content/ContentProviderResult;

    .line 1739
    return-void
.end method

.method private static deleteObsoleteStreamItems(Lcom/google/android/apps/plus/content/EsAccount;Ljava/util/ArrayList;IILjava/util/ArrayList;)V
    .registers 18
    .parameter "account"
    .parameter
    .parameter "offset"
    .parameter "to"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/apps/plus/content/EsAccount;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/apps/plus/service/AndroidContactsSync$PersonActivityState;",
            ">;II",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2942
    .local p1, stateList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/android/apps/plus/service/AndroidContactsSync$PersonActivityState;>;"
    .local p4, batch:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    invoke-static {p0}, Lcom/google/android/apps/plus/service/AndroidContactsSync;->getStreamItemsUri(Lcom/google/android/apps/plus/content/EsAccount;)Landroid/net/Uri;

    move-result-object v8

    .line 2943
    .local v8, uri:Landroid/net/Uri;
    move v2, p2

    .local v2, i:I
    :goto_5
    move/from16 v0, p3

    if-ge v2, v0, :cond_4e

    .line 2944
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/apps/plus/service/AndroidContactsSync$PersonActivityState;

    .line 2945
    .local v6, state:Lcom/google/android/apps/plus/service/AndroidContactsSync$PersonActivityState;
    iget-wide v9, v6, Lcom/google/android/apps/plus/service/AndroidContactsSync$PersonActivityState;->gaiaId:J

    invoke-virtual {p0}, Lcom/google/android/apps/plus/content/EsAccount;->getUserId()J

    move-result-wide v11

    cmp-long v9, v9, v11

    if-nez v9, :cond_4b

    .line 2946
    iget-object v9, v6, Lcom/google/android/apps/plus/service/AndroidContactsSync$PersonActivityState;->activities:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_1f
    :goto_1f
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_4b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/apps/plus/service/AndroidContactsSync$ActivityState;

    .line 2947
    .local v1, activityState:Lcom/google/android/apps/plus/service/AndroidContactsSync$ActivityState;
    iget-boolean v9, v1, Lcom/google/android/apps/plus/service/AndroidContactsSync$ActivityState;->exists:Z

    if-nez v9, :cond_1f

    iget-wide v9, v1, Lcom/google/android/apps/plus/service/AndroidContactsSync$ActivityState;->streamItemId:J

    const-wide/16 v11, 0x0

    cmp-long v9, v9, v11

    if-eqz v9, :cond_1f

    .line 2948
    iget-wide v9, v1, Lcom/google/android/apps/plus/service/AndroidContactsSync$ActivityState;->streamItemId:J

    invoke-static {v8, v9, v10}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    .line 2949
    .local v4, itemUri:Landroid/net/Uri;
    invoke-static {v4}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v9

    move-object/from16 v0, p4

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1f

    .line 2943
    .end local v1           #activityState:Lcom/google/android/apps/plus/service/AndroidContactsSync$ActivityState;
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v4           #itemUri:Landroid/net/Uri;
    :cond_4b
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 2956
    .end local v6           #state:Lcom/google/android/apps/plus/service/AndroidContactsSync$PersonActivityState;
    :cond_4e
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 2957
    .local v5, sb:Ljava/lang/StringBuilder;
    const-string v9, "_id IN ("

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2958
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 2959
    .local v7, streamItemIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    move v2, p2

    :goto_5e
    move/from16 v0, p3

    if-ge v2, v0, :cond_ad

    .line 2960
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/apps/plus/service/AndroidContactsSync$PersonActivityState;

    .line 2961
    .restart local v6       #state:Lcom/google/android/apps/plus/service/AndroidContactsSync$PersonActivityState;
    iget-wide v9, v6, Lcom/google/android/apps/plus/service/AndroidContactsSync$PersonActivityState;->gaiaId:J

    invoke-virtual {p0}, Lcom/google/android/apps/plus/content/EsAccount;->getUserId()J

    move-result-wide v11

    cmp-long v9, v9, v11

    if-eqz v9, :cond_aa

    .line 2962
    iget-object v9, v6, Lcom/google/android/apps/plus/service/AndroidContactsSync$PersonActivityState;->activities:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .restart local v3       #i$:Ljava/util/Iterator;
    :cond_78
    :goto_78
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_aa

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/apps/plus/service/AndroidContactsSync$ActivityState;

    .line 2963
    .restart local v1       #activityState:Lcom/google/android/apps/plus/service/AndroidContactsSync$ActivityState;
    iget-boolean v9, v1, Lcom/google/android/apps/plus/service/AndroidContactsSync$ActivityState;->exists:Z

    if-nez v9, :cond_78

    iget-wide v9, v1, Lcom/google/android/apps/plus/service/AndroidContactsSync$ActivityState;->streamItemId:J

    const-wide/16 v11, 0x0

    cmp-long v9, v9, v11

    if-eqz v9, :cond_78

    .line 2964
    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_9b

    .line 2965
    const/16 v9, 0x2c

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2967
    :cond_9b
    const/16 v9, 0x3f

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2968
    iget-wide v9, v1, Lcom/google/android/apps/plus/service/AndroidContactsSync$ActivityState;->streamItemId:J

    invoke-static {v9, v10}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_78

    .line 2959
    .end local v1           #activityState:Lcom/google/android/apps/plus/service/AndroidContactsSync$ActivityState;
    .end local v3           #i$:Ljava/util/Iterator;
    :cond_aa
    add-int/lit8 v2, v2, 0x1

    goto :goto_5e

    .line 2973
    .end local v6           #state:Lcom/google/android/apps/plus/service/AndroidContactsSync$PersonActivityState;
    :cond_ad
    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_b4

    .line 2980
    :goto_b3
    return-void

    .line 2976
    :cond_b4
    const/16 v9, 0x29

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2977
    invoke-static {v8}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v10

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/String;

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Ljava/lang/String;

    invoke-virtual {v10, v11, v9}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v9

    move-object/from16 v0, p4

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_b3
.end method

.method private static deleteRemovedContacts(Landroid/content/ContentResolver;Lcom/google/android/apps/plus/content/EsAccount;Ljava/util/HashMap;Ljava/util/ArrayList;)V
    .registers 8
    .parameter "resolver"
    .parameter "account"
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentResolver;",
            "Lcom/google/android/apps/plus/content/EsAccount;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/apps/plus/service/AndroidContactsSync$RawContactState;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1245
    .local p2, stateMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/google/android/apps/plus/service/AndroidContactsSync$RawContactState;>;"
    .local p3, batch:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1246
    .local v2, stateList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/android/apps/plus/service/AndroidContactsSync$RawContactState;>;"
    invoke-virtual {p2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_d
    :goto_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_21

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/apps/plus/service/AndroidContactsSync$RawContactState;

    .line 1247
    .local v1, state:Lcom/google/android/apps/plus/service/AndroidContactsSync$RawContactState;
    iget-boolean v3, v1, Lcom/google/android/apps/plus/service/AndroidContactsSync$RawContactState;->exists:Z

    if-nez v3, :cond_d

    .line 1248
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_d

    .line 1252
    .end local v1           #state:Lcom/google/android/apps/plus/service/AndroidContactsSync$RawContactState;
    :cond_21
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2a

    .line 1253
    invoke-static {p0, p1, p3, v2}, Lcom/google/android/apps/plus/service/AndroidContactsSync;->deleteContacts(Landroid/content/ContentResolver;Lcom/google/android/apps/plus/content/EsAccount;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 1255
    :cond_2a
    return-void
.end method

.method private static deleteStreamItems(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)V
    .registers 8
    .parameter
    .parameter

    .prologue
    .line 2986
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {p1}, Lcom/google/android/apps/plus/service/AndroidContactsSync;->getStreamItemsUri(Lcom/google/android/apps/plus/content/EsAccount;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "account_name=? AND account_type=? AND data_set=?"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {p1}, Lcom/google/android/apps/plus/content/EsAccount;->getName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string v5, "com.google"

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const-string v5, "plus"

    aput-object v5, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2991
    return-void
.end method

.method private static downloadLargeAvatars(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;Ljava/util/HashMap;)V
    .registers 18
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/android/apps/plus/content/EsAccount;",
            "Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/google/android/apps/plus/service/AndroidContactsSync$AvatarState;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2016
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    .line 2017
    const-string v0, "display_max_dim"

    invoke-static {v8, v0}, Lcom/google/android/apps/plus/service/AndroidContactsSync;->getPreferredAvatarSize(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v12

    .line 2018
    new-instance v13, Ljava/util/ArrayList;

    invoke-virtual/range {p3 .. p3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-direct {v13, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 2019
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v10

    .line 2020
    const/4 v11, 0x0

    .line 2021
    :goto_18
    if-ge v11, v10, :cond_8e

    invoke-virtual/range {p2 .. p2}, Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;->isCanceled()Z

    move-result v0

    if-nez v0, :cond_8e

    .line 2022
    add-int/lit8 v0, v11, 0x8

    .line 2023
    if-le v0, v10, :cond_8f

    move v9, v10

    .line 2027
    :goto_25
    new-instance v0, Lcom/google/android/apps/plus/service/AndroidContactsSync$2;

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move-object v7, p1

    invoke-direct/range {v0 .. v8}, Lcom/google/android/apps/plus/service/AndroidContactsSync$2;-><init>(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Landroid/content/Intent;Lcom/google/android/apps/plus/network/HttpOperation$OperationListener;Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;Ljava/util/HashMap;Lcom/google/android/apps/plus/content/EsAccount;Landroid/content/ContentResolver;)V

    .line 2058
    const/4 v2, 0x0

    move v3, v11

    .line 2059
    :goto_35
    if-ge v3, v9, :cond_52

    .line 2060
    invoke-virtual {v13, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/apps/plus/service/AndroidContactsSync$AvatarState;

    .line 2061
    iget v4, v1, Lcom/google/android/apps/plus/service/AndroidContactsSync$AvatarState;->signature:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_4b

    .line 2062
    invoke-static {v8, p1, v1}, Lcom/google/android/apps/plus/service/AndroidContactsSync;->saveAvatarSignature(Landroid/content/ContentResolver;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/android/apps/plus/service/AndroidContactsSync$AvatarState;)V

    move v1, v2

    .line 2059
    :goto_46
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    move v2, v1

    goto :goto_35

    .line 2064
    :cond_4b
    iget-wide v1, v1, Lcom/google/android/apps/plus/service/AndroidContactsSync$AvatarState;->gaiaId:J

    invoke-virtual {v0, v1, v2, v12}, Lcom/google/android/apps/plus/api/LargeAvatarOperation;->getAvatar(JI)V

    .line 2065
    const/4 v1, 0x1

    goto :goto_46

    .line 2069
    :cond_52
    if-eqz v2, :cond_8c

    .line 2070
    invoke-virtual {v0}, Lcom/google/android/apps/plus/api/LargeAvatarOperation;->start()V

    .line 2072
    invoke-virtual {v0}, Lcom/google/android/apps/plus/api/LargeAvatarOperation;->hasError()Z

    move-result v1

    if-nez v1, :cond_63

    invoke-virtual {v0}, Lcom/google/android/apps/plus/api/LargeAvatarOperation;->getException()Ljava/lang/Exception;

    move-result-object v1

    if-eqz v1, :cond_8c

    .line 2073
    :cond_63
    const-string v1, "GooglePlusContactsSync"

    const/4 v2, 0x6

    invoke-static {v1, v2}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_8c

    .line 2074
    const-string v1, "GooglePlusContactsSync"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not download avatars, error code="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/google/android/apps/plus/api/LargeAvatarOperation;->getErrorCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/google/android/apps/plus/api/LargeAvatarOperation;->getException()Ljava/lang/Exception;

    move-result-object v0

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_8c
    move v11, v9

    .line 2081
    goto :goto_18

    .line 2082
    :cond_8e
    return-void

    :cond_8f
    move v9, v0

    goto :goto_25
.end method

.method private static downloadMedia(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Ljava/lang/String;)[B
    .registers 13
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v8, 0x6

    const/4 v6, 0x0

    .line 2899
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_23

    .line 2900
    const-string v0, "//"

    invoke-virtual {p3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 2901
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "http:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 2905
    :cond_23
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c00b3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 2907
    invoke-static {v4, p3}, Lcom/google/android/apps/plus/util/ImageUtils;->getCroppedAndResizedUrl(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2908
    new-instance v0, Lcom/google/android/apps/plus/api/DownloadPhotoOperation;

    move-object v1, p0

    move-object v2, p1

    move v5, v4

    move-object v7, v6

    invoke-direct/range {v0 .. v7}, Lcom/google/android/apps/plus/api/DownloadPhotoOperation;-><init>(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;IILandroid/content/Intent;Lcom/google/android/apps/plus/network/HttpOperation$OperationListener;)V

    .line 2910
    invoke-virtual {v0}, Lcom/google/android/apps/plus/api/DownloadPhotoOperation;->start()V

    .line 2911
    invoke-virtual {v0}, Lcom/google/android/apps/plus/api/DownloadPhotoOperation;->getException()Ljava/lang/Exception;

    move-result-object v1

    if-eqz v1, :cond_58

    .line 2912
    const-string v1, "GooglePlusContactsSync"

    invoke-static {v1, v8}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_57

    .line 2913
    const-string v1, "GooglePlusContactsSync"

    const-string v2, "Could not download image"

    invoke-virtual {v0}, Lcom/google/android/apps/plus/api/DownloadPhotoOperation;->getException()Ljava/lang/Exception;

    move-result-object v0

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2923
    :cond_57
    :goto_57
    return-object v6

    .line 2917
    :cond_58
    invoke-virtual {v0}, Lcom/google/android/apps/plus/api/DownloadPhotoOperation;->hasError()Z

    move-result v1

    if-eqz v1, :cond_83

    .line 2918
    const-string v1, "GooglePlusContactsSync"

    invoke-static {v1, v8}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_57

    .line 2919
    const-string v1, "GooglePlusContactsSync"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not download image: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/google/android/apps/plus/api/DownloadPhotoOperation;->getErrorCode()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_57

    .line 2923
    :cond_83
    invoke-virtual {v0}, Lcom/google/android/apps/plus/api/DownloadPhotoOperation;->getBytes()[B

    move-result-object v0

    invoke-static {v0, v4}, Lcom/google/android/apps/plus/util/ImageUtils;->resizeBitmapToHeight([BI)[B

    move-result-object v6

    goto :goto_57
.end method

.method private static dumpCircleState(Lcom/google/android/apps/plus/service/AndroidContactsSync$CircleState;)V
    .registers 5
    .parameter

    .prologue
    .line 3301
    iget-boolean v0, p0, Lcom/google/android/apps/plus/service/AndroidContactsSync$CircleState;->exists:Z

    if-nez v0, :cond_43

    .line 3302
    const-string v0, "[DELETE]"

    .line 3309
    :goto_6
    const-string v1, "GooglePlusContactsSync"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/apps/plus/service/AndroidContactsSync$CircleState;->circleId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/apps/plus/service/AndroidContactsSync$CircleState;->circleName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " (group_id="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/google/android/apps/plus/service/AndroidContactsSync$CircleState;->groupId:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3311
    return-void

    .line 3303
    :cond_43
    iget-wide v0, p0, Lcom/google/android/apps/plus/service/AndroidContactsSync$CircleState;->groupId:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_4e

    .line 3304
    const-string v0, "[INSERT]"

    goto :goto_6

    .line 3306
    :cond_4e
    const-string v0, "[UPDATE]"

    goto :goto_6
.end method

.method private static dumpPersonActivityState(Lcom/google/android/apps/plus/service/AndroidContactsSync$PersonActivityState;)V
    .registers 9
    .parameter

    .prologue
    const-wide/16 v6, 0x0

    .line 3349
    const-string v0, "GooglePlusContactsSync"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[STREAM] Gaia ID: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/google/android/apps/plus/service/AndroidContactsSync$PersonActivityState;->gaiaId:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " (raw_contact_id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/google/android/apps/plus/service/AndroidContactsSync$PersonActivityState;->rawContactId:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3351
    iget-object v0, p0, Lcom/google/android/apps/plus/service/AndroidContactsSync$PersonActivityState;->activities:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3a
    :goto_3a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_af

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/plus/service/AndroidContactsSync$ActivityState;

    .line 3353
    iget-boolean v1, v0, Lcom/google/android/apps/plus/service/AndroidContactsSync$ActivityState;->exists:Z

    if-nez v1, :cond_9b

    iget-wide v3, v0, Lcom/google/android/apps/plus/service/AndroidContactsSync$ActivityState;->streamItemId:J

    cmp-long v1, v3, v6

    if-eqz v1, :cond_9b

    .line 3354
    const-string v1, "[DELETE]"

    .line 3363
    :goto_52
    const-string v3, "GooglePlusContactsSync"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "    "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, v0, Lcom/google/android/apps/plus/service/AndroidContactsSync$ActivityState;->activityId:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " (stream_item_id="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v4, v0, Lcom/google/android/apps/plus/service/AndroidContactsSync$ActivityState;->streamItemId:J

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ") created="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v4, v0, Lcom/google/android/apps/plus/service/AndroidContactsSync$ActivityState;->created:J

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "\', modified="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v4, v0, Lcom/google/android/apps/plus/service/AndroidContactsSync$ActivityState;->lastModified:J

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3a

    .line 3355
    :cond_9b
    iget-boolean v1, v0, Lcom/google/android/apps/plus/service/AndroidContactsSync$ActivityState;->exists:Z

    if-eqz v1, :cond_a8

    iget-wide v3, v0, Lcom/google/android/apps/plus/service/AndroidContactsSync$ActivityState;->streamItemId:J

    cmp-long v1, v3, v6

    if-nez v1, :cond_a8

    .line 3356
    const-string v1, "[INSERT]"

    goto :goto_52

    .line 3357
    :cond_a8
    iget-boolean v1, v0, Lcom/google/android/apps/plus/service/AndroidContactsSync$ActivityState;->changed:Z

    if-eqz v1, :cond_3a

    .line 3358
    const-string v1, "[UPDATE]"

    goto :goto_52

    .line 3367
    :cond_af
    return-void
.end method

.method private static dumpRawContactState(Lcom/google/android/apps/plus/service/AndroidContactsSync$RawContactState;)V
    .registers 9
    .parameter

    .prologue
    const-wide/16 v6, 0x0

    .line 3318
    iget-boolean v0, p0, Lcom/google/android/apps/plus/service/AndroidContactsSync$RawContactState;->exists:Z

    if-nez v0, :cond_b7

    .line 3319
    const-string v0, "[DELETE]"

    .line 3326
    :goto_8
    const-string v1, "GooglePlusContactsSync"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/apps/plus/service/AndroidContactsSync$RawContactState;->personId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/apps/plus/service/AndroidContactsSync$RawContactState;->fullName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " (raw_contact_id="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/google/android/apps/plus/service/AndroidContactsSync$RawContactState;->rawContactId:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ") last_updated="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/google/android/apps/plus/service/AndroidContactsSync$RawContactState;->lastUpdateTime:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3328
    iget-object v0, p0, Lcom/google/android/apps/plus/service/AndroidContactsSync$RawContactState;->data:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_50
    :goto_50
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_d5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/plus/service/AndroidContactsSync$DataState;

    .line 3329
    iget-boolean v1, v0, Lcom/google/android/apps/plus/service/AndroidContactsSync$DataState;->exists:Z

    if-nez v1, :cond_c5

    .line 3330
    const-string v1, "[DELETE]"

    .line 3339
    :goto_62
    const-string v3, "GooglePlusContactsSync"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "    "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, v0, Lcom/google/android/apps/plus/service/AndroidContactsSync$DataState;->mimetype:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " (data_id="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v4, v0, Lcom/google/android/apps/plus/service/AndroidContactsSync$DataState;->dataId:J

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ") \'"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, v0, Lcom/google/android/apps/plus/service/AndroidContactsSync$DataState;->data1:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "\', type="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, v0, Lcom/google/android/apps/plus/service/AndroidContactsSync$DataState;->data2:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, v0, Lcom/google/android/apps/plus/service/AndroidContactsSync$DataState;->data3:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_50

    .line 3320
    :cond_b7
    iget-wide v0, p0, Lcom/google/android/apps/plus/service/AndroidContactsSync$RawContactState;->rawContactId:J

    cmp-long v0, v0, v6

    if-nez v0, :cond_c1

    .line 3321
    const-string v0, "[INSERT]"

    goto/16 :goto_8

    .line 3323
    :cond_c1
    const-string v0, "[UPDATE]"

    goto/16 :goto_8

    .line 3331
    :cond_c5
    iget-wide v3, v0, Lcom/google/android/apps/plus/service/AndroidContactsSync$DataState;->dataId:J

    cmp-long v1, v3, v6

    if-nez v1, :cond_ce

    .line 3332
    const-string v1, "[INSERT]"

    goto :goto_62

    .line 3333
    :cond_ce
    iget-boolean v1, v0, Lcom/google/android/apps/plus/service/AndroidContactsSync$DataState;->changed:Z

    if-eqz v1, :cond_50

    .line 3334
    const-string v1, "[UPDATE]"

    goto :goto_62

    .line 3343
    :cond_d5
    return-void
.end method

.method private static findChangesInActivities(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)Ljava/util/HashMap;
    .registers 5
    .parameter "context"
    .parameter "account"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/android/apps/plus/content/EsAccount;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/google/android/apps/plus/service/AndroidContactsSync$PersonActivityState;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 2336
    invoke-static {p0, p1}, Lcom/google/android/apps/plus/service/AndroidContactsSync;->queryRawContactsRequiringActivities(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)Ljava/util/HashMap;

    move-result-object v0

    .line 2338
    .local v0, stateMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Lcom/google/android/apps/plus/service/AndroidContactsSync$PersonActivityState;>;"
    if-eqz v0, :cond_d

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_e

    .line 2346
    :cond_d
    :goto_d
    return-object v0

    .line 2342
    :cond_e
    invoke-static {p0, p1, v0}, Lcom/google/android/apps/plus/service/AndroidContactsSync;->queryStreamItemState(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/util/HashMap;)V

    .line 2343
    invoke-static {p0, p1, v0, v2, v2}, Lcom/google/android/apps/plus/service/AndroidContactsSync;->reconcileActivitiesAndStreamItems(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/util/HashMap;Ljava/lang/String;[Ljava/lang/String;)V

    .line 2344
    invoke-static {p0, v0}, Lcom/google/android/apps/plus/service/AndroidContactsSync;->limitStreamItemsPerRawContact(Landroid/content/Context;Ljava/util/HashMap;)V

    .line 2345
    invoke-static {v0}, Lcom/google/android/apps/plus/service/AndroidContactsSync;->cleanUpActivityStateMap(Ljava/util/HashMap;)V

    goto :goto_d
.end method

.method private static findChangesInCircles(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)Ljava/util/HashMap;
    .registers 13
    .parameter "context"
    .parameter "account"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/android/apps/plus/content/EsAccount;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/apps/plus/service/AndroidContactsSync$CircleState;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 917
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    .line 918
    .local v10, stateMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/google/android/apps/plus/service/AndroidContactsSync$CircleState;>;"
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 919
    .local v0, resolver:Landroid/content/ContentResolver;
    invoke-static {p1}, Lcom/google/android/apps/plus/service/AndroidContactsSync;->getGroupsUri(Lcom/google/android/apps/plus/content/EsAccount;)Landroid/net/Uri;

    move-result-object v1

    sget-object v2, Lcom/google/android/apps/plus/service/AndroidContactsSync;->GROUPS_PROJECTION:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 921
    .local v7, cursor:Landroid/database/Cursor;
    :goto_16
    :try_start_16
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_42

    .line 922
    new-instance v9, Lcom/google/android/apps/plus/service/AndroidContactsSync$CircleState;

    const/4 v1, 0x0

    invoke-direct {v9, v1}, Lcom/google/android/apps/plus/service/AndroidContactsSync$CircleState;-><init>(Lcom/google/android/apps/plus/service/AndroidContactsSync$1;)V

    .line 923
    .local v9, state:Lcom/google/android/apps/plus/service/AndroidContactsSync$CircleState;
    const/4 v1, 0x0

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    iput-wide v1, v9, Lcom/google/android/apps/plus/service/AndroidContactsSync$CircleState;->groupId:J

    .line 924
    const/4 v1, 0x1

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v9, Lcom/google/android/apps/plus/service/AndroidContactsSync$CircleState;->circleId:Ljava/lang/String;

    .line 925
    const/4 v1, 0x2

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v9, Lcom/google/android/apps/plus/service/AndroidContactsSync$CircleState;->circleName:Ljava/lang/String;

    .line 926
    iget-object v1, v9, Lcom/google/android/apps/plus/service/AndroidContactsSync$CircleState;->circleId:Ljava/lang/String;

    invoke-virtual {v10, v1, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3c
    .catchall {:try_start_16 .. :try_end_3c} :catchall_3d

    goto :goto_16

    .line 929
    .end local v9           #state:Lcom/google/android/apps/plus/service/AndroidContactsSync$CircleState;
    :catchall_3d
    move-exception v1

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v1

    :cond_42
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 932
    const/4 v1, 0x7

    sget-object v2, Lcom/google/android/apps/plus/service/AndroidContactsSync;->CIRCLES_PROJECTION:[Ljava/lang/String;

    invoke-static {p0, p1, v1, v2}, Lcom/google/android/apps/plus/content/EsPeopleData;->getCircles(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;I[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 935
    if-nez v7, :cond_4f

    .line 961
    :goto_4e
    return-object v3

    .line 940
    :cond_4f
    :goto_4f
    :try_start_4f
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_92

    .line 941
    const/4 v1, 0x0

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 942
    .local v6, circleId:Ljava/lang/String;
    const/4 v1, 0x1

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 943
    .local v8, name:Ljava/lang/String;
    invoke-virtual {v10, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/google/android/apps/plus/service/AndroidContactsSync$CircleState;

    .line 944
    .restart local v9       #state:Lcom/google/android/apps/plus/service/AndroidContactsSync$CircleState;
    if-nez v9, :cond_7d

    .line 945
    new-instance v9, Lcom/google/android/apps/plus/service/AndroidContactsSync$CircleState;

    .end local v9           #state:Lcom/google/android/apps/plus/service/AndroidContactsSync$CircleState;
    const/4 v1, 0x0

    invoke-direct {v9, v1}, Lcom/google/android/apps/plus/service/AndroidContactsSync$CircleState;-><init>(Lcom/google/android/apps/plus/service/AndroidContactsSync$1;)V

    .line 946
    .restart local v9       #state:Lcom/google/android/apps/plus/service/AndroidContactsSync$CircleState;
    iput-object v6, v9, Lcom/google/android/apps/plus/service/AndroidContactsSync$CircleState;->circleId:Ljava/lang/String;

    .line 947
    iput-object v8, v9, Lcom/google/android/apps/plus/service/AndroidContactsSync$CircleState;->circleName:Ljava/lang/String;

    .line 948
    const/4 v1, 0x1

    iput-boolean v1, v9, Lcom/google/android/apps/plus/service/AndroidContactsSync$CircleState;->exists:Z

    .line 949
    invoke-virtual {v10, v6, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_77
    .catchall {:try_start_4f .. :try_end_77} :catchall_78

    goto :goto_4f

    .line 959
    .end local v6           #circleId:Ljava/lang/String;
    .end local v8           #name:Ljava/lang/String;
    .end local v9           #state:Lcom/google/android/apps/plus/service/AndroidContactsSync$CircleState;
    :catchall_78
    move-exception v1

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v1

    .line 950
    .restart local v6       #circleId:Ljava/lang/String;
    .restart local v8       #name:Ljava/lang/String;
    .restart local v9       #state:Lcom/google/android/apps/plus/service/AndroidContactsSync$CircleState;
    :cond_7d
    :try_start_7d
    iget-object v1, v9, Lcom/google/android/apps/plus/service/AndroidContactsSync$CircleState;->circleName:Ljava/lang/String;

    invoke-static {v8, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_8e

    .line 951
    const/4 v1, 0x1

    iput-boolean v1, v9, Lcom/google/android/apps/plus/service/AndroidContactsSync$CircleState;->changed:Z

    .line 952
    iput-object v8, v9, Lcom/google/android/apps/plus/service/AndroidContactsSync$CircleState;->circleName:Ljava/lang/String;

    .line 953
    const/4 v1, 0x1

    iput-boolean v1, v9, Lcom/google/android/apps/plus/service/AndroidContactsSync$CircleState;->exists:Z

    goto :goto_4f

    .line 955
    :cond_8e
    invoke-virtual {v10, v6}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_91
    .catchall {:try_start_7d .. :try_end_91} :catchall_78

    goto :goto_4f

    .line 959
    .end local v6           #circleId:Ljava/lang/String;
    .end local v8           #name:Ljava/lang/String;
    .end local v9           #state:Lcom/google/android/apps/plus/service/AndroidContactsSync$CircleState;
    :cond_92
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    move-object v3, v10

    .line 961
    goto :goto_4e
.end method

.method private static findChangesInContacts(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)Ljava/util/HashMap;
    .registers 16
    .parameter "context"
    .parameter "account"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/android/apps/plus/content/EsAccount;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/apps/plus/service/AndroidContactsSync$RawContactState;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1128
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1129
    .local v0, resolver:Landroid/content/ContentResolver;
    invoke-static {p1}, Lcom/google/android/apps/plus/service/AndroidContactsSync;->getRawContactsUri(Lcom/google/android/apps/plus/content/EsAccount;)Landroid/net/Uri;

    move-result-object v1

    .line 1131
    .local v1, rawContactsUri:Landroid/net/Uri;
    new-instance v13, Ljava/util/HashMap;

    invoke-direct {v13}, Ljava/util/HashMap;-><init>()V

    .line 1132
    .local v13, stateMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/google/android/apps/plus/service/AndroidContactsSync$RawContactState;>;"
    sget-object v2, Lcom/google/android/apps/plus/service/AndroidContactsSync;->RAW_CONTACT_PROJECTION:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 1134
    .local v8, cursor:Landroid/database/Cursor;
    if-eqz v8, :cond_44

    .line 1135
    :goto_18
    :try_start_18
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_44

    .line 1136
    new-instance v12, Lcom/google/android/apps/plus/service/AndroidContactsSync$RawContactState;

    const/4 v2, 0x0

    invoke-direct {v12, v2}, Lcom/google/android/apps/plus/service/AndroidContactsSync$RawContactState;-><init>(Lcom/google/android/apps/plus/service/AndroidContactsSync$1;)V

    .line 1137
    .local v12, state:Lcom/google/android/apps/plus/service/AndroidContactsSync$RawContactState;
    const/4 v2, 0x0

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, v12, Lcom/google/android/apps/plus/service/AndroidContactsSync$RawContactState;->rawContactId:J

    .line 1138
    const/4 v2, 0x1

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v12, Lcom/google/android/apps/plus/service/AndroidContactsSync$RawContactState;->personId:Ljava/lang/String;

    .line 1139
    const/4 v2, 0x2

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, v12, Lcom/google/android/apps/plus/service/AndroidContactsSync$RawContactState;->lastUpdateTime:J

    .line 1140
    iget-object v2, v12, Lcom/google/android/apps/plus/service/AndroidContactsSync$RawContactState;->personId:Ljava/lang/String;

    invoke-virtual {v13, v2, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3e
    .catchall {:try_start_18 .. :try_end_3e} :catchall_3f

    goto :goto_18

    .line 1144
    .end local v12           #state:Lcom/google/android/apps/plus/service/AndroidContactsSync$RawContactState;
    :catchall_3f
    move-exception v2

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v2

    :cond_44
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 1147
    sget-object v2, Lcom/google/android/apps/plus/content/EsProvider;->CONTACTS_URI:Landroid/net/Uri;

    invoke-static {v2, p1}, Lcom/google/android/apps/plus/content/EsProvider;->appendAccountParameter(Landroid/net/Uri;Lcom/google/android/apps/plus/content/EsAccount;)Landroid/net/Uri;

    move-result-object v3

    sget-object v4, Lcom/google/android/apps/plus/service/AndroidContactsSync;->CONTACTS_PROJECTION:[Ljava/lang/String;

    const-string v5, "in_my_circles=1 AND profile_type!=2 AND for_sharing!=0"

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, v0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 1154
    if-eqz v8, :cond_97

    .line 1155
    :goto_5a
    :try_start_5a
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_97

    .line 1156
    const/4 v2, 0x0

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 1157
    .local v11, personId:Ljava/lang/String;
    const/4 v2, 0x1

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    .line 1158
    .local v9, lastUpdateTime:J
    invoke-virtual {v13, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/google/android/apps/plus/service/AndroidContactsSync$RawContactState;

    .line 1159
    .restart local v12       #state:Lcom/google/android/apps/plus/service/AndroidContactsSync$RawContactState;
    if-nez v12, :cond_8a

    .line 1160
    new-instance v12, Lcom/google/android/apps/plus/service/AndroidContactsSync$RawContactState;

    .end local v12           #state:Lcom/google/android/apps/plus/service/AndroidContactsSync$RawContactState;
    const/4 v2, 0x0

    invoke-direct {v12, v2}, Lcom/google/android/apps/plus/service/AndroidContactsSync$RawContactState;-><init>(Lcom/google/android/apps/plus/service/AndroidContactsSync$1;)V

    .line 1161
    .restart local v12       #state:Lcom/google/android/apps/plus/service/AndroidContactsSync$RawContactState;
    iput-object v11, v12, Lcom/google/android/apps/plus/service/AndroidContactsSync$RawContactState;->personId:Ljava/lang/String;

    .line 1162
    iput-wide v9, v12, Lcom/google/android/apps/plus/service/AndroidContactsSync$RawContactState;->lastUpdateTime:J

    .line 1163
    iget-object v2, v12, Lcom/google/android/apps/plus/service/AndroidContactsSync$RawContactState;->personId:Ljava/lang/String;

    invoke-virtual {v13, v2, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1171
    :goto_81
    const/4 v2, 0x1

    iput-boolean v2, v12, Lcom/google/android/apps/plus/service/AndroidContactsSync$RawContactState;->exists:Z
    :try_end_84
    .catchall {:try_start_5a .. :try_end_84} :catchall_85

    goto :goto_5a

    .line 1175
    .end local v9           #lastUpdateTime:J
    .end local v11           #personId:Ljava/lang/String;
    .end local v12           #state:Lcom/google/android/apps/plus/service/AndroidContactsSync$RawContactState;
    :catchall_85
    move-exception v2

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v2

    .line 1165
    .restart local v9       #lastUpdateTime:J
    .restart local v11       #personId:Ljava/lang/String;
    .restart local v12       #state:Lcom/google/android/apps/plus/service/AndroidContactsSync$RawContactState;
    :cond_8a
    :try_start_8a
    iget-wide v2, v12, Lcom/google/android/apps/plus/service/AndroidContactsSync$RawContactState;->lastUpdateTime:J

    cmp-long v2, v2, v9

    if-nez v2, :cond_94

    .line 1166
    invoke-virtual {v13, v11}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_81

    .line 1168
    :cond_94
    iput-wide v9, v12, Lcom/google/android/apps/plus/service/AndroidContactsSync$RawContactState;->lastUpdateTime:J
    :try_end_96
    .catchall {:try_start_8a .. :try_end_96} :catchall_85

    goto :goto_81

    .line 1175
    .end local v9           #lastUpdateTime:J
    .end local v11           #personId:Ljava/lang/String;
    .end local v12           #state:Lcom/google/android/apps/plus/service/AndroidContactsSync$RawContactState;
    :cond_97
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 1179
    invoke-virtual {p1}, Lcom/google/android/apps/plus/content/EsAccount;->getPersonId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v13, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1180
    return-object v13
.end method

.method private static flushBatch(Landroid/content/ContentResolver;Ljava/util/ArrayList;IZ)[Landroid/content/ContentProviderResult;
    .registers 8
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentResolver;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;IZ)[",
            "Landroid/content/ContentProviderResult;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 1754
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1755
    if-nez v1, :cond_8

    .line 1773
    :cond_7
    :goto_7
    return-object v0

    .line 1759
    :cond_8
    if-nez p3, :cond_c

    if-lt v1, p2, :cond_7

    .line 1765
    :cond_c
    :try_start_c
    const-string v1, "com.android.contacts"

    invoke-virtual {p0, v1, p1}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_11} :catch_16

    move-result-object v0

    .line 1772
    :cond_12
    :goto_12
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    goto :goto_7

    .line 1766
    :catch_16
    move-exception v1

    .line 1767
    const-string v2, "GooglePlusContactsSync"

    const/4 v3, 0x6

    invoke-static {v2, v3}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 1768
    const-string v2, "GooglePlusContactsSync"

    const-string v3, "Cannot apply a batch of content provider operations"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_12
.end method

.method private static flushBatch(Landroid/content/ContentResolver;Ljava/util/ArrayList;Z)[Landroid/content/ContentProviderResult;
    .registers 4
    .parameter "resolver"
    .parameter
    .parameter "force"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentResolver;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;Z)[",
            "Landroid/content/ContentProviderResult;"
        }
    .end annotation

    .prologue
    .line 1746
    .local p1, batch:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    const/16 v0, 0x80

    invoke-static {p0, p1, v0, p2}, Lcom/google/android/apps/plus/service/AndroidContactsSync;->flushBatch(Landroid/content/ContentResolver;Ljava/util/ArrayList;IZ)[Landroid/content/ContentProviderResult;

    move-result-object v0

    return-object v0
.end method

.method private static getCircleIdMap(Landroid/content/ContentResolver;Lcom/google/android/apps/plus/content/EsAccount;)Ljava/util/HashMap;
    .registers 10
    .parameter "resolver"
    .parameter "account"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentResolver;",
            "Lcom/google/android/apps/plus/content/EsAccount;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 1262
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 1263
    .local v6, circleIdMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Long;>;"
    invoke-static {p1}, Lcom/google/android/apps/plus/service/AndroidContactsSync;->getGroupsUri(Lcom/google/android/apps/plus/content/EsAccount;)Landroid/net/Uri;

    move-result-object v1

    sget-object v2, Lcom/google/android/apps/plus/service/AndroidContactsSync;->GROUPS_PROJECTION:[Ljava/lang/String;

    move-object v0, p0

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 1265
    .local v7, cursor:Landroid/database/Cursor;
    :goto_13
    :try_start_13
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_30

    .line 1266
    const/4 v0, 0x1

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2a
    .catchall {:try_start_13 .. :try_end_2a} :catchall_2b

    goto :goto_13

    .line 1270
    :catchall_2b
    move-exception v0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_30
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 1273
    return-object v6
.end method

.method private static getDataUri(Lcom/google/android/apps/plus/content/EsAccount;)Landroid/net/Uri;
    .registers 4
    .parameter

    .prologue
    .line 3223
    sget-object v0, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "account_type"

    const-string v2, "com.google"

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "data_set"

    const-string v2, "plus"

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "account_name"

    invoke-virtual {p0}, Lcom/google/android/apps/plus/content/EsAccount;->getName()Ljava/lang/String;

    move-result-object v2

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

.method private static getEntitiesUri(Lcom/google/android/apps/plus/content/EsAccount;)Landroid/net/Uri;
    .registers 4
    .parameter

    .prologue
    .line 3211
    sget-object v0, Landroid/provider/ContactsContract$RawContactsEntity;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "account_type"

    const-string v2, "com.google"

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "data_set"

    const-string v2, "plus"

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "account_name"

    invoke-virtual {p0}, Lcom/google/android/apps/plus/content/EsAccount;->getName()Ljava/lang/String;

    move-result-object v2

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

.method private static getGroupsUri()Landroid/net/Uri;
    .registers 3

    .prologue
    .line 3247
    sget-object v0, Landroid/provider/ContactsContract$Groups;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "caller_is_syncadapter"

    const-string v2, "true"

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method private static getGroupsUri(Lcom/google/android/apps/plus/content/EsAccount;)Landroid/net/Uri;
    .registers 4
    .parameter

    .prologue
    .line 3235
    sget-object v0, Landroid/provider/ContactsContract$Groups;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "account_type"

    const-string v2, "com.google"

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "data_set"

    const-string v2, "plus"

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "account_name"

    invoke-virtual {p0}, Lcom/google/android/apps/plus/content/EsAccount;->getName()Ljava/lang/String;

    move-result-object v2

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

.method private static getLimitedRawContactSet(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)[Ljava/lang/String;
    .registers 10
    .parameter
    .parameter

    .prologue
    const/4 v7, 0x0

    .line 3001
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 3002
    invoke-static {p1}, Lcom/google/android/apps/plus/service/AndroidContactsSync;->getDataUri(Lcom/google/android/apps/plus/content/EsAccount;)Landroid/net/Uri;

    move-result-object v3

    .line 3003
    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const-string v0, "raw_contact_id"

    aput-object v0, v4, v7

    .line 3004
    const-string v5, "starred!=0 AND mimetype=\'vnd.android.cursor.item/vnd.googleplus.profile\'"

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-static/range {v0 .. v6}, Lcom/google/android/apps/plus/service/AndroidContactsSync;->collectRawContactIds(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/util/HashSet;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3007
    const-string v5, "starred=0 AND times_contacted>0 AND mimetype=\'vnd.android.cursor.item/vnd.googleplus.profile\'"

    const-string v6, "times_contacted DESC LIMIT 8"

    move-object v0, p0

    move-object v1, p1

    invoke-static/range {v0 .. v6}, Lcom/google/android/apps/plus/service/AndroidContactsSync;->collectRawContactIds(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/util/HashSet;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3011
    const-string v5, "starred=0 AND last_time_contacted>0 AND mimetype=\'vnd.android.cursor.item/vnd.googleplus.profile\'"

    const-string v6, "last_time_contacted DESC LIMIT 8"

    move-object v0, p0

    move-object v1, p1

    invoke-static/range {v0 .. v6}, Lcom/google/android/apps/plus/service/AndroidContactsSync;->collectRawContactIds(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/util/HashSet;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3015
    new-array v0, v7, [Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/util/HashSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method private static getMaxStreamItemsPerRawContact(Landroid/content/Context;)I
    .registers 8
    .parameter

    .prologue
    const/4 v5, 0x0

    const/4 v3, 0x0

    .line 2513
    sget v0, Lcom/google/android/apps/plus/service/AndroidContactsSync;->sMaxStreamItemsPerRawContact:I

    if-eqz v0, :cond_9

    .line 2514
    sget v0, Lcom/google/android/apps/plus/service/AndroidContactsSync;->sMaxStreamItemsPerRawContact:I

    .line 2527
    :goto_8
    return v0

    .line 2517
    :cond_9
    const/4 v6, 0x2

    .line 2518
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/google/android/apps/plus/service/AndroidContactsSync;->STREAM_ITEMS_CONTENT_LIMIT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string v4, "max_items"

    aput-object v4, v2, v5

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 2521
    :try_start_1d
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_33

    .line 2522
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    sput v0, Lcom/google/android/apps/plus/service/AndroidContactsSync;->sMaxStreamItemsPerRawContact:I
    :try_end_2a
    .catchall {:try_start_1d .. :try_end_2a} :catchall_2e

    .line 2525
    :goto_2a
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_8

    :catchall_2e
    move-exception v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_33
    move v0, v6

    goto :goto_2a
.end method

.method private static getPreferredAvatarSize(Landroid/content/ContentResolver;Ljava/lang/String;)I
    .registers 10
    .parameter "resolver"
    .parameter "limitName"

    .prologue
    const/4 v2, 0x0

    .line 2270
    const/16 v6, 0x60

    .line 2271
    .local v6, avatarSize:I
    sget-object v1, Lcom/google/android/apps/plus/service/AndroidContactsSync;->DISPLAY_PHOTO_CONTENT_MAX_DIMENSIONS_URI:Landroid/net/Uri;

    move-object v0, p0

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 2274
    .local v7, cursor:Landroid/database/Cursor;
    :try_start_d
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 2275
    invoke-interface {v7, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_1a
    .catchall {:try_start_d .. :try_end_1a} :catchall_1f

    move-result v6

    .line 2278
    :cond_1b
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 2280
    return v6

    .line 2278
    :catchall_1f
    move-exception v0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private static getProfileDataUri(Lcom/google/android/apps/plus/content/EsAccount;J)Landroid/net/Uri;
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 3176
    sget-object v0, Lcom/google/android/apps/plus/service/AndroidContactsSync;->PROFILE_CONTENT_RAW_CONTACTS_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "data"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "account_type"

    const-string v2, "com.google"

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "data_set"

    const-string v2, "plus"

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "account_name"

    invoke-virtual {p0}, Lcom/google/android/apps/plus/content/EsAccount;->getName()Ljava/lang/String;

    move-result-object v2

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

.method private static getProfileRawContactUri(Lcom/google/android/apps/plus/content/EsAccount;)Landroid/net/Uri;
    .registers 4
    .parameter

    .prologue
    .line 3155
    sget-object v0, Lcom/google/android/apps/plus/service/AndroidContactsSync;->PROFILE_CONTENT_RAW_CONTACTS_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "account_type"

    const-string v2, "com.google"

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "data_set"

    const-string v2, "plus"

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "account_name"

    invoke-virtual {p0}, Lcom/google/android/apps/plus/content/EsAccount;->getName()Ljava/lang/String;

    move-result-object v2

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

.method private static getProfileRawContactsUri()Landroid/net/Uri;
    .registers 3

    .prologue
    .line 3167
    sget-object v0, Lcom/google/android/apps/plus/service/AndroidContactsSync;->PROFILE_CONTENT_RAW_CONTACTS_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "caller_is_syncadapter"

    const-string v2, "true"

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method private static getRawContactsUri()Landroid/net/Uri;
    .registers 3

    .prologue
    .line 3202
    sget-object v0, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "caller_is_syncadapter"

    const-string v2, "true"

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method private static getRawContactsUri(Lcom/google/android/apps/plus/content/EsAccount;)Landroid/net/Uri;
    .registers 4
    .parameter

    .prologue
    .line 3190
    sget-object v0, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "account_type"

    const-string v2, "com.google"

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "data_set"

    const-string v2, "plus"

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "account_name"

    invoke-virtual {p0}, Lcom/google/android/apps/plus/content/EsAccount;->getName()Ljava/lang/String;

    move-result-object v2

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

.method private static getStreamItemPhotos(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;[Lcom/google/android/apps/plus/content/DbMedia;)Ljava/util/ArrayList;
    .registers 11
    .parameter "context"
    .parameter "account"
    .parameter "dbMedia"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/android/apps/plus/content/EsAccount;",
            "[",
            "Lcom/google/android/apps/plus/content/DbMedia;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/apps/plus/service/AndroidContactsSync$ImageContainer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2868
    const/4 v3, 0x0

    .line 2869
    .local v3, images:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/android/apps/plus/service/AndroidContactsSync$ImageContainer;>;"
    if-eqz p2, :cond_4c

    .line 2870
    const/4 v2, 0x0

    .local v2, i:I
    :goto_4
    array-length v7, p2

    if-ge v2, v7, :cond_4c

    .line 2871
    aget-object v7, p2, v2

    invoke-virtual {v7}, Lcom/google/android/apps/plus/content/DbMedia;->getMedia()Lcom/google/wireless/tacotruck/proto/Data$Media;

    move-result-object v4

    .line 2872
    .local v4, media:Lcom/google/wireless/tacotruck/proto/Data$Media;
    invoke-virtual {v4}, Lcom/google/wireless/tacotruck/proto/Data$Media;->getType()Lcom/google/wireless/tacotruck/proto/Data$Media$Type;

    move-result-object v5

    .line 2873
    .local v5, type:Lcom/google/wireless/tacotruck/proto/Data$Media$Type;
    invoke-virtual {v4}, Lcom/google/wireless/tacotruck/proto/Data$Media;->hasThumbnailUrl()Z

    move-result v7

    if-eqz v7, :cond_49

    sget-object v7, Lcom/google/wireless/tacotruck/proto/Data$Media$Type;->IMAGE:Lcom/google/wireless/tacotruck/proto/Data$Media$Type;

    invoke-virtual {v7, v5}, Lcom/google/wireless/tacotruck/proto/Data$Media$Type;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_27

    sget-object v7, Lcom/google/wireless/tacotruck/proto/Data$Media$Type;->VIDEO:Lcom/google/wireless/tacotruck/proto/Data$Media$Type;

    invoke-virtual {v7, v5}, Lcom/google/wireless/tacotruck/proto/Data$Media$Type;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_49

    .line 2875
    :cond_27
    invoke-virtual {v4}, Lcom/google/wireless/tacotruck/proto/Data$Media;->getThumbnailUrl()Ljava/lang/String;

    move-result-object v6

    .line 2876
    .local v6, url:Ljava/lang/String;
    invoke-virtual {v5}, Lcom/google/wireless/tacotruck/proto/Data$Media$Type;->name()Ljava/lang/String;

    move-result-object v7

    invoke-static {p0, p1, v7, v6}, Lcom/google/android/apps/plus/service/AndroidContactsSync;->downloadMedia(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v0

    .line 2877
    .local v0, bytes:[B
    if-eqz v0, :cond_49

    .line 2878
    if-nez v3, :cond_3c

    .line 2879
    new-instance v3, Ljava/util/ArrayList;

    .end local v3           #images:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/android/apps/plus/service/AndroidContactsSync$ImageContainer;>;"
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 2881
    .restart local v3       #images:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/android/apps/plus/service/AndroidContactsSync$ImageContainer;>;"
    :cond_3c
    new-instance v1, Lcom/google/android/apps/plus/service/AndroidContactsSync$ImageContainer;

    const/4 v7, 0x0

    invoke-direct {v1, v7}, Lcom/google/android/apps/plus/service/AndroidContactsSync$ImageContainer;-><init>(Lcom/google/android/apps/plus/service/AndroidContactsSync$1;)V

    .line 2882
    .local v1, container:Lcom/google/android/apps/plus/service/AndroidContactsSync$ImageContainer;
    iput v2, v1, Lcom/google/android/apps/plus/service/AndroidContactsSync$ImageContainer;->mediaIndex:I

    .line 2883
    iput-object v0, v1, Lcom/google/android/apps/plus/service/AndroidContactsSync$ImageContainer;->imageBytes:[B

    .line 2884
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2870
    .end local v0           #bytes:[B
    .end local v1           #container:Lcom/google/android/apps/plus/service/AndroidContactsSync$ImageContainer;
    .end local v6           #url:Ljava/lang/String;
    :cond_49
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 2890
    .end local v2           #i:I
    .end local v4           #media:Lcom/google/wireless/tacotruck/proto/Data$Media;
    .end local v5           #type:Lcom/google/wireless/tacotruck/proto/Data$Media$Type;
    :cond_4c
    return-object v3
.end method

.method private static getStreamItemsPhotoUri(Lcom/google/android/apps/plus/content/EsAccount;)Landroid/net/Uri;
    .registers 4
    .parameter

    .prologue
    .line 3268
    sget-object v0, Lcom/google/android/apps/plus/service/AndroidContactsSync;->STREAM_ITEMS_PHOTO_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "account_type"

    const-string v2, "com.google"

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "data_set"

    const-string v2, "plus"

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "account_name"

    invoke-virtual {p0}, Lcom/google/android/apps/plus/content/EsAccount;->getName()Ljava/lang/String;

    move-result-object v2

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

.method private static getStreamItemsUri(Lcom/google/android/apps/plus/content/EsAccount;)Landroid/net/Uri;
    .registers 4
    .parameter

    .prologue
    .line 3256
    sget-object v0, Lcom/google/android/apps/plus/service/AndroidContactsSync;->STREAM_ITEMS_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "account_type"

    const-string v2, "com.google"

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "data_set"

    const-string v2, "plus"

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "account_name"

    invoke-virtual {p0}, Lcom/google/android/apps/plus/content/EsAccount;->getName()Ljava/lang/String;

    move-result-object v2

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

.method private static insertNewContacts(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/util/HashMap;Ljava/util/ArrayList;Ljava/util/HashMap;)V
    .registers 14
    .parameter "context"
    .parameter "account"
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/android/apps/plus/content/EsAccount;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/apps/plus/service/AndroidContactsSync$RawContactState;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1204
    .local p2, stateMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/google/android/apps/plus/service/AndroidContactsSync$RawContactState;>;"
    .local p3, batch:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    .local p4, circleIdMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Long;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1205
    .local v3, stateList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/android/apps/plus/service/AndroidContactsSync$RawContactState;>;"
    invoke-virtual {p2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, i$:Ljava/util/Iterator;
    :cond_d
    :goto_d
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_29

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/android/apps/plus/service/AndroidContactsSync$RawContactState;

    .line 1206
    .local v8, state:Lcom/google/android/apps/plus/service/AndroidContactsSync$RawContactState;
    iget-boolean v0, v8, Lcom/google/android/apps/plus/service/AndroidContactsSync$RawContactState;->exists:Z

    if-eqz v0, :cond_d

    iget-wide v0, v8, Lcom/google/android/apps/plus/service/AndroidContactsSync$RawContactState;->rawContactId:J

    const-wide/16 v4, 0x0

    cmp-long v0, v0, v4

    if-nez v0, :cond_d

    .line 1207
    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_d

    .line 1211
    .end local v8           #state:Lcom/google/android/apps/plus/service/AndroidContactsSync$RawContactState;
    :cond_29
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_38

    .line 1212
    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p3

    move-object v4, p2

    move-object v6, p4

    invoke-static/range {v0 .. v6}, Lcom/google/android/apps/plus/service/AndroidContactsSync;->updateContacts(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/HashMap;ZLjava/util/HashMap;)V

    .line 1214
    :cond_38
    return-void
.end method

.method public static isAndroidSyncSupported()Z
    .registers 2

    .prologue
    .line 3292
    sget-object v1, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 3293
    .local v0, version:I
    const/16 v1, 0xe

    if-lt v0, v1, :cond_c

    const/4 v1, 0x1

    :goto_b
    return v1

    :cond_c
    const/4 v1, 0x0

    goto :goto_b
.end method

.method private static isCheckin([Lcom/google/wireless/tacotruck/proto/Data$Explanation;)Z
    .registers 4
    .parameter "dbExplanations"

    .prologue
    .line 2774
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    array-length v1, p0

    if-ge v0, v1, :cond_17

    .line 2775
    sget-object v1, Lcom/google/wireless/tacotruck/proto/Data$Explanation$Type;->CHECKIN:Lcom/google/wireless/tacotruck/proto/Data$Explanation$Type;

    aget-object v2, p0, v0

    invoke-virtual {v2}, Lcom/google/wireless/tacotruck/proto/Data$Explanation;->getType()Lcom/google/wireless/tacotruck/proto/Data$Explanation$Type;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/wireless/tacotruck/proto/Data$Explanation$Type;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 2776
    const/4 v1, 0x1

    .line 2779
    :goto_13
    return v1

    .line 2774
    :cond_14
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2779
    :cond_17
    const/4 v1, 0x0

    goto :goto_13
.end method

.method private static limitStreamItemsPerRawContact(Landroid/content/Context;Ljava/util/HashMap;)V
    .registers 9
    .parameter "context"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/google/android/apps/plus/service/AndroidContactsSync$PersonActivityState;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2495
    .local p1, stateMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Lcom/google/android/apps/plus/service/AndroidContactsSync$PersonActivityState;>;"
    invoke-static {p0}, Lcom/google/android/apps/plus/service/AndroidContactsSync;->getMaxStreamItemsPerRawContact(Landroid/content/Context;)I

    move-result v3

    .line 2496
    .local v3, maxItems:I
    invoke-virtual {p1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_38

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/apps/plus/service/AndroidContactsSync$PersonActivityState;

    .line 2497
    .local v4, state:Lcom/google/android/apps/plus/service/AndroidContactsSync$PersonActivityState;
    iget-object v0, v4, Lcom/google/android/apps/plus/service/AndroidContactsSync$PersonActivityState;->activities:Ljava/util/ArrayList;

    .line 2498
    .local v0, activities:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/android/apps/plus/service/AndroidContactsSync$ActivityState;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-le v5, v3, :cond_c

    .line 2502
    sget-object v5, Lcom/google/android/apps/plus/service/AndroidContactsSync;->ACTIVITY_STATE_COMPARATOR:Ljava/util/Comparator;

    invoke-static {v0, v5}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 2503
    move v1, v3

    .local v1, i:I
    :goto_26
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v1, v5, :cond_c

    .line 2504
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/apps/plus/service/AndroidContactsSync$ActivityState;

    const/4 v6, 0x0

    iput-boolean v6, v5, Lcom/google/android/apps/plus/service/AndroidContactsSync$ActivityState;->exists:Z

    .line 2503
    add-int/lit8 v1, v1, 0x1

    goto :goto_26

    .line 2507
    .end local v0           #activities:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/android/apps/plus/service/AndroidContactsSync$ActivityState;>;"
    .end local v1           #i:I
    .end local v4           #state:Lcom/google/android/apps/plus/service/AndroidContactsSync$PersonActivityState;
    :cond_38
    return-void
.end method

.method private static loadContactCircleMembership(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;)V
    .registers 19
    .parameter "context"
    .parameter "resolver"
    .parameter "uri"
    .parameter "personIds"
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/content/ContentResolver;",
            "Landroid/net/Uri;",
            "[",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/apps/plus/service/AndroidContactsSync$RawContactState;",
            ">;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1472
    .local p4, stateMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/google/android/apps/plus/service/AndroidContactsSync$RawContactState;>;"
    .local p5, circleIdMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Long;>;"
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 1473
    .local v11, sb:Ljava/lang/StringBuilder;
    const-string v1, "person_id IN ("

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1474
    const/4 v9, 0x0

    .local v9, i:I
    :goto_b
    move-object/from16 v0, p3

    array-length v1, v0

    if-ge v9, v1, :cond_1f

    .line 1475
    if-eqz v9, :cond_17

    .line 1476
    const/16 v1, 0x2c

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1478
    :cond_17
    const/16 v1, 0x3f

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1474
    add-int/lit8 v9, v9, 0x1

    goto :goto_b

    .line 1480
    :cond_1f
    const/16 v1, 0x29

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1482
    sget-object v3, Lcom/google/android/apps/plus/service/AndroidContactsSync;->CIRCLE_MEMBERSHIP_PROJECTION:[Ljava/lang/String;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    move-object v1, p1

    move-object v2, p2

    move-object/from16 v5, p3

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 1485
    .local v8, cursor:Landroid/database/Cursor;
    :cond_33
    :goto_33
    :try_start_33
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_5c

    .line 1486
    const/4 v1, 0x0

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 1487
    .local v10, personId:Ljava/lang/String;
    const/4 v1, 0x1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 1488
    .local v7, circleIds:Ljava/lang/String;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_33

    .line 1489
    move-object/from16 v0, p4

    invoke-virtual {v0, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/google/android/apps/plus/service/AndroidContactsSync$RawContactState;

    .line 1490
    .local v12, state:Lcom/google/android/apps/plus/service/AndroidContactsSync$RawContactState;
    move-object/from16 v0, p5

    invoke-static {v12, v7, v0}, Lcom/google/android/apps/plus/service/AndroidContactsSync;->populateRawContactCircleMembership(Lcom/google/android/apps/plus/service/AndroidContactsSync$RawContactState;Ljava/lang/String;Ljava/util/HashMap;)V
    :try_end_56
    .catchall {:try_start_33 .. :try_end_56} :catchall_57

    goto :goto_33

    .line 1494
    .end local v7           #circleIds:Ljava/lang/String;
    .end local v10           #personId:Ljava/lang/String;
    .end local v12           #state:Lcom/google/android/apps/plus/service/AndroidContactsSync$RawContactState;
    :catchall_57
    move-exception v1

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v1

    :cond_5c
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 1496
    return-void
.end method

.method private static loadContactProtobufs(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/util/HashMap;)V
    .registers 20
    .parameter "context"
    .parameter "resolver"
    .parameter "uri"
    .parameter "personIds"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/content/ContentResolver;",
            "Landroid/net/Uri;",
            "[",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/apps/plus/service/AndroidContactsSync$RawContactState;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1411
    .local p4, stateMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/google/android/apps/plus/service/AndroidContactsSync$RawContactState;>;"
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    .line 1412
    .local v13, sb:Ljava/lang/StringBuilder;
    const-string v1, "person_id IN ("

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1413
    const/4 v11, 0x0

    .local v11, i:I
    :goto_b
    move-object/from16 v0, p3

    array-length v1, v0

    if-ge v11, v1, :cond_1f

    .line 1414
    if-eqz v11, :cond_17

    .line 1415
    const/16 v1, 0x2c

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1417
    :cond_17
    const/16 v1, 0x3f

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1413
    add-int/lit8 v11, v11, 0x1

    goto :goto_b

    .line 1419
    :cond_1f
    const/16 v1, 0x29

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1421
    sget-object v3, Lcom/google/android/apps/plus/service/AndroidContactsSync;->PROFILE_PROJECTION:[Ljava/lang/String;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v5, p3

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 1423
    .local v9, cursor:Landroid/database/Cursor;
    :cond_35
    :goto_35
    :try_start_35
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_6c

    .line 1424
    const/4 v1, 0x0

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 1425
    .local v12, personId:Ljava/lang/String;
    move-object/from16 v0, p4

    invoke-virtual {v0, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/google/android/apps/plus/service/AndroidContactsSync$RawContactState;

    .line 1426
    .local v14, state:Lcom/google/android/apps/plus/service/AndroidContactsSync$RawContactState;
    const/4 v1, 0x1

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getBlob(I)[B
    :try_end_4c
    .catchall {:try_start_35 .. :try_end_4c} :catchall_67

    move-result-object v8

    .line 1428
    .local v8, contactProto:[B
    :try_start_4d
    invoke-static {v8}, Lcom/google/wireless/contacts/proto/Contact$MobileContact;->parseFrom([B)Lcom/google/wireless/contacts/proto/Contact$MobileContact;

    move-result-object v7

    .line 1429
    .local v7, contact:Lcom/google/wireless/contacts/proto/Contact$MobileContact;
    invoke-static {p0, v14, v7}, Lcom/google/android/apps/plus/service/AndroidContactsSync;->populateRawContactState(Landroid/content/Context;Lcom/google/android/apps/plus/service/AndroidContactsSync$RawContactState;Lcom/google/wireless/contacts/proto/Contact$MobileContact;)V
    :try_end_54
    .catchall {:try_start_4d .. :try_end_54} :catchall_67
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_4d .. :try_end_54} :catch_55

    goto :goto_35

    .line 1430
    .end local v7           #contact:Lcom/google/wireless/contacts/proto/Contact$MobileContact;
    :catch_55
    move-exception v10

    .line 1431
    .local v10, e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_56
    const-string v1, "GooglePlusContactsSync"

    const/4 v2, 0x6

    invoke-static {v1, v2}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_35

    .line 1432
    const-string v1, "GooglePlusContactsSync"

    const-string v2, "Cannot parse contact protobuffer"

    invoke-static {v1, v2, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_66
    .catchall {:try_start_56 .. :try_end_66} :catchall_67

    goto :goto_35

    .line 1437
    .end local v8           #contactProto:[B
    .end local v10           #e:Lcom/google/protobuf/InvalidProtocolBufferException;
    .end local v12           #personId:Ljava/lang/String;
    .end local v14           #state:Lcom/google/android/apps/plus/service/AndroidContactsSync$RawContactState;
    :catchall_67
    move-exception v1

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    throw v1

    :cond_6c
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 1439
    return-void
.end method

.method private static populateRawContactCircleMembership(Lcom/google/android/apps/plus/service/AndroidContactsSync$RawContactState;Ljava/lang/String;Ljava/util/HashMap;)V
    .registers 10
    .parameter "state"
    .parameter "circleIds"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/apps/plus/service/AndroidContactsSync$RawContactState;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1505
    .local p2, circleIdMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Long;>;"
    const/4 v3, 0x0

    .line 1506
    .local v3, offset:I
    :goto_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v3, v5, :cond_30

    .line 1507
    const/16 v5, 0x7c

    invoke-virtual {p1, v5, v3}, Ljava/lang/String;->indexOf(II)I

    move-result v4

    .line 1508
    .local v4, separatorIndex:I
    const/4 v5, -0x1

    if-ne v4, v5, :cond_14

    .line 1509
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    .line 1511
    :cond_14
    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 1512
    .local v0, circleId:Ljava/lang/String;
    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    .line 1513
    .local v2, groupId:Ljava/lang/Long;
    if-eqz v2, :cond_2d

    .line 1514
    const-string v5, "vnd.android.cursor.item/group_membership"

    invoke-virtual {v2}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {p0, v5, v6}, Lcom/google/android/apps/plus/service/AndroidContactsSync;->addData(Lcom/google/android/apps/plus/service/AndroidContactsSync$RawContactState;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/apps/plus/service/AndroidContactsSync$DataState;

    move-result-object v1

    .line 1516
    .local v1, dataState:Lcom/google/android/apps/plus/service/AndroidContactsSync$DataState;
    const/4 v5, 0x1

    iput-boolean v5, v1, Lcom/google/android/apps/plus/service/AndroidContactsSync$DataState;->exists:Z

    .line 1518
    .end local v1           #dataState:Lcom/google/android/apps/plus/service/AndroidContactsSync$DataState;
    :cond_2d
    add-int/lit8 v3, v4, 0x1

    .line 1519
    goto :goto_1

    .line 1520
    .end local v0           #circleId:Ljava/lang/String;
    .end local v2           #groupId:Ljava/lang/Long;
    .end local v4           #separatorIndex:I
    :cond_30
    return-void
.end method

.method private static populateRawContactState(Landroid/content/Context;Lcom/google/android/apps/plus/service/AndroidContactsSync$RawContactState;Lcom/google/wireless/contacts/proto/Contact$MobileContact;)V
    .registers 11
    .parameter "context"
    .parameter "state"
    .parameter "contact"

    .prologue
    const/4 v7, 0x1

    .line 1447
    invoke-virtual {p2}, Lcom/google/wireless/contacts/proto/Contact$MobileContact;->getDisplayName()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p1, Lcom/google/android/apps/plus/service/AndroidContactsSync$RawContactState;->fullName:Ljava/lang/String;

    .line 1448
    invoke-virtual {p2}, Lcom/google/wireless/contacts/proto/Contact$MobileContact;->getEmailList()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_f
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2f

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/wireless/contacts/proto/Contact$Email;

    .line 1449
    .local v2, email:Lcom/google/wireless/contacts/proto/Contact$Email;
    const-string v5, "vnd.android.cursor.item/email_v2"

    invoke-virtual {v2}, Lcom/google/wireless/contacts/proto/Contact$Email;->getEmail()Ljava/lang/String;

    move-result-object v6

    invoke-static {p1, v5, v6}, Lcom/google/android/apps/plus/service/AndroidContactsSync;->addData(Lcom/google/android/apps/plus/service/AndroidContactsSync$RawContactState;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/apps/plus/service/AndroidContactsSync$DataState;

    move-result-object v1

    .line 1450
    .local v1, dataState:Lcom/google/android/apps/plus/service/AndroidContactsSync$DataState;
    iput-boolean v7, v1, Lcom/google/android/apps/plus/service/AndroidContactsSync$DataState;->exists:Z

    .line 1451
    invoke-virtual {v2}, Lcom/google/wireless/contacts/proto/Contact$Email;->getType()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Lcom/google/android/apps/plus/service/AndroidContactsSync;->convertEmailType(Lcom/google/android/apps/plus/service/AndroidContactsSync$DataState;Ljava/lang/String;)V

    goto :goto_f

    .line 1453
    .end local v1           #dataState:Lcom/google/android/apps/plus/service/AndroidContactsSync$DataState;
    .end local v2           #email:Lcom/google/wireless/contacts/proto/Contact$Email;
    :cond_2f
    invoke-virtual {p2}, Lcom/google/wireless/contacts/proto/Contact$MobileContact;->getPhoneList()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_37
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_57

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/wireless/contacts/proto/Contact$Phone;

    .line 1454
    .local v4, phone:Lcom/google/wireless/contacts/proto/Contact$Phone;
    const-string v5, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {v4}, Lcom/google/wireless/contacts/proto/Contact$Phone;->getPhone()Ljava/lang/String;

    move-result-object v6

    invoke-static {p1, v5, v6}, Lcom/google/android/apps/plus/service/AndroidContactsSync;->addData(Lcom/google/android/apps/plus/service/AndroidContactsSync$RawContactState;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/apps/plus/service/AndroidContactsSync$DataState;

    move-result-object v1

    .line 1455
    .restart local v1       #dataState:Lcom/google/android/apps/plus/service/AndroidContactsSync$DataState;
    iput-boolean v7, v1, Lcom/google/android/apps/plus/service/AndroidContactsSync$DataState;->exists:Z

    .line 1456
    invoke-virtual {v4}, Lcom/google/wireless/contacts/proto/Contact$Phone;->getType()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v1, v5}, Lcom/google/android/apps/plus/service/AndroidContactsSync;->convertPhoneType(Landroid/content/Context;Lcom/google/android/apps/plus/service/AndroidContactsSync$DataState;Ljava/lang/String;)V

    goto :goto_37

    .line 1458
    .end local v1           #dataState:Lcom/google/android/apps/plus/service/AndroidContactsSync$DataState;
    .end local v4           #phone:Lcom/google/wireless/contacts/proto/Contact$Phone;
    :cond_57
    invoke-virtual {p2}, Lcom/google/wireless/contacts/proto/Contact$MobileContact;->getAddressList()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_5f
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7f

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/contacts/proto/Contact$Address;

    .line 1459
    .local v0, address:Lcom/google/wireless/contacts/proto/Contact$Address;
    const-string v5, "vnd.android.cursor.item/postal-address_v2"

    invoke-virtual {v0}, Lcom/google/wireless/contacts/proto/Contact$Address;->getAddress()Ljava/lang/String;

    move-result-object v6

    invoke-static {p1, v5, v6}, Lcom/google/android/apps/plus/service/AndroidContactsSync;->addData(Lcom/google/android/apps/plus/service/AndroidContactsSync$RawContactState;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/apps/plus/service/AndroidContactsSync$DataState;

    move-result-object v1

    .line 1461
    .restart local v1       #dataState:Lcom/google/android/apps/plus/service/AndroidContactsSync$DataState;
    iput-boolean v7, v1, Lcom/google/android/apps/plus/service/AndroidContactsSync$DataState;->exists:Z

    .line 1462
    invoke-virtual {v0}, Lcom/google/wireless/contacts/proto/Contact$Address;->getType()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Lcom/google/android/apps/plus/service/AndroidContactsSync;->convertPostalAddressType(Lcom/google/android/apps/plus/service/AndroidContactsSync$DataState;Ljava/lang/String;)V

    goto :goto_5f

    .line 1464
    .end local v0           #address:Lcom/google/wireless/contacts/proto/Contact$Address;
    .end local v1           #dataState:Lcom/google/android/apps/plus/service/AndroidContactsSync$DataState;
    :cond_7f
    return-void
.end method

.method private static queryRawContactsRequiringActivities(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)Ljava/util/HashMap;
    .registers 9
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/android/apps/plus/content/EsAccount;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/google/android/apps/plus/service/AndroidContactsSync$PersonActivityState;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    const/4 v5, 0x0

    .line 2355
    invoke-static {p0, p1}, Lcom/google/android/apps/plus/service/AndroidContactsSync;->getLimitedRawContactSet(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)[Ljava/lang/String;

    move-result-object v4

    .line 2356
    array-length v1, v4

    if-nez v1, :cond_a

    .line 2390
    :goto_9
    return-object v5

    .line 2360
    :cond_a
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 2363
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 2364
    const-string v1, "_id"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " IN ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2365
    :goto_1f
    array-length v1, v4

    if-ge v0, v1, :cond_31

    .line 2366
    if-eqz v0, :cond_29

    .line 2367
    const/16 v1, 0x2c

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2369
    :cond_29
    const/16 v1, 0x3f

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2365
    add-int/lit8 v0, v0, 0x1

    goto :goto_1f

    .line 2371
    :cond_31
    const/16 v0, 0x29

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2373
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {p1}, Lcom/google/android/apps/plus/service/AndroidContactsSync;->getRawContactsUri(Lcom/google/android/apps/plus/content/EsAccount;)Landroid/net/Uri;

    move-result-object v1

    sget-object v2, Lcom/google/android/apps/plus/service/AndroidContactsSync;->RAW_CONTACT_SOURCE_ID_PROJECTION:[Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 2376
    :cond_48
    :goto_48
    :try_start_48
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_79

    .line 2377
    const/4 v0, 0x1

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2378
    invoke-static {v0}, Lcom/google/android/apps/plus/content/EsPeopleData;->getGaiaId(Ljava/lang/String;)J

    move-result-wide v2

    .line 2379
    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-eqz v0, :cond_48

    .line 2380
    new-instance v0, Lcom/google/android/apps/plus/service/AndroidContactsSync$PersonActivityState;

    const/4 v4, 0x0

    invoke-direct {v0, v4}, Lcom/google/android/apps/plus/service/AndroidContactsSync$PersonActivityState;-><init>(Lcom/google/android/apps/plus/service/AndroidContactsSync$1;)V

    .line 2381
    iput-wide v2, v0, Lcom/google/android/apps/plus/service/AndroidContactsSync$PersonActivityState;->gaiaId:J

    .line 2382
    const/4 v4, 0x0

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    iput-wide v4, v0, Lcom/google/android/apps/plus/service/AndroidContactsSync$PersonActivityState;->rawContactId:J

    .line 2383
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v6, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_73
    .catchall {:try_start_48 .. :try_end_73} :catchall_74

    goto :goto_48

    .line 2387
    :catchall_74
    move-exception v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_79
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    move-object v5, v6

    .line 2390
    goto :goto_9
.end method

.method private static queryRawContactsRequiringLargeAvatars(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)Ljava/util/HashMap;
    .registers 10
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/android/apps/plus/content/EsAccount;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/google/android/apps/plus/service/AndroidContactsSync$AvatarState;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    const/4 v5, 0x0

    .line 1887
    invoke-static {p0, p1}, Lcom/google/android/apps/plus/service/AndroidContactsSync;->getLimitedRawContactSet(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)[Ljava/lang/String;

    move-result-object v4

    .line 1888
    array-length v0, v4

    if-nez v0, :cond_a

    .line 1930
    :goto_9
    return-object v5

    .line 1892
    :cond_a
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 1895
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1896
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 1897
    const-string v2, "_id"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v7, " IN ("

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1898
    :goto_23
    array-length v2, v4

    if-ge v1, v2, :cond_35

    .line 1899
    if-eqz v1, :cond_2d

    .line 1900
    const/16 v2, 0x2c

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1902
    :cond_2d
    const/16 v2, 0x3f

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1898
    add-int/lit8 v1, v1, 0x1

    goto :goto_23

    .line 1904
    :cond_35
    const/16 v1, 0x29

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1907
    const-string v1, " OR "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "sync2"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " != 0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1908
    invoke-static {p1}, Lcom/google/android/apps/plus/service/AndroidContactsSync;->getRawContactsUri(Lcom/google/android/apps/plus/content/EsAccount;)Landroid/net/Uri;

    move-result-object v1

    sget-object v2, Lcom/google/android/apps/plus/service/AndroidContactsSync;->LARGE_AVATAR_RAW_CONTACTS_PROJECTION:[Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 1911
    :cond_59
    :goto_59
    :try_start_59
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_91

    .line 1912
    const/4 v0, 0x1

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1913
    invoke-static {v0}, Lcom/google/android/apps/plus/content/EsPeopleData;->getGaiaId(Ljava/lang/String;)J

    move-result-wide v2

    .line 1914
    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-eqz v0, :cond_59

    .line 1915
    new-instance v0, Lcom/google/android/apps/plus/service/AndroidContactsSync$AvatarState;

    const/4 v4, 0x0

    invoke-direct {v0, v4}, Lcom/google/android/apps/plus/service/AndroidContactsSync$AvatarState;-><init>(Lcom/google/android/apps/plus/service/AndroidContactsSync$1;)V

    .line 1916
    iput-wide v2, v0, Lcom/google/android/apps/plus/service/AndroidContactsSync$AvatarState;->gaiaId:J

    .line 1917
    const/4 v4, 0x0

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    iput-wide v4, v0, Lcom/google/android/apps/plus/service/AndroidContactsSync$AvatarState;->rawContactId:J

    .line 1918
    const/4 v4, 0x2

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    iput v4, v0, Lcom/google/android/apps/plus/service/AndroidContactsSync$AvatarState;->signature:I

    .line 1919
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v6, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_8b
    .catchall {:try_start_59 .. :try_end_8b} :catchall_8c

    goto :goto_59

    .line 1923
    :catchall_8c
    move-exception v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_91
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 1926
    invoke-virtual {v6}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_9d

    .line 1927
    invoke-static {p0, p1, v6}, Lcom/google/android/apps/plus/service/AndroidContactsSync;->reconcileLargeAvatarSignatures(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/util/HashMap;)V

    :cond_9d
    move-object v5, v6

    .line 1930
    goto/16 :goto_9
.end method

.method private static queryRawContactsRequiringThumbnails(Landroid/content/ContentResolver;Lcom/google/android/apps/plus/content/EsAccount;Ljava/util/HashMap;)V
    .registers 10
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentResolver;",
            "Lcom/google/android/apps/plus/content/EsAccount;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/google/android/apps/plus/service/AndroidContactsSync$AvatarState;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 2220
    invoke-static {p1}, Lcom/google/android/apps/plus/service/AndroidContactsSync;->getEntitiesUri(Lcom/google/android/apps/plus/content/EsAccount;)Landroid/net/Uri;

    move-result-object v1

    sget-object v2, Lcom/google/android/apps/plus/service/AndroidContactsSync;->THUMBNAILS_RAW_CONTACT_PROJECTION:[Ljava/lang/String;

    const-string v3, "(mimetype=\'vnd.android.cursor.item/photo\' OR mimetype=\'vnd.android.cursor.item/vnd.googleplus.profile\') AND (sync2=0 OR sync2 IS NULL)"

    move-object v0, p0

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 2223
    :cond_f
    :goto_f
    :try_start_f
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_67

    .line 2224
    const/4 v0, 0x1

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2225
    invoke-static {v0}, Lcom/google/android/apps/plus/content/EsPeopleData;->getGaiaId(Ljava/lang/String;)J

    move-result-wide v2

    .line 2226
    const-wide/16 v5, 0x0

    cmp-long v0, v2, v5

    if-eqz v0, :cond_f

    .line 2227
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/plus/service/AndroidContactsSync$AvatarState;

    .line 2228
    if-nez v0, :cond_4d

    .line 2229
    new-instance v0, Lcom/google/android/apps/plus/service/AndroidContactsSync$AvatarState;

    const/4 v5, 0x0

    invoke-direct {v0, v5}, Lcom/google/android/apps/plus/service/AndroidContactsSync$AvatarState;-><init>(Lcom/google/android/apps/plus/service/AndroidContactsSync$1;)V

    .line 2230
    iput-wide v2, v0, Lcom/google/android/apps/plus/service/AndroidContactsSync$AvatarState;->gaiaId:J

    .line 2231
    const/4 v5, 0x0

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    iput-wide v5, v0, Lcom/google/android/apps/plus/service/AndroidContactsSync$AvatarState;->rawContactId:J

    .line 2232
    const/4 v5, 0x4

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    iput v5, v0, Lcom/google/android/apps/plus/service/AndroidContactsSync$AvatarState;->signature:I

    .line 2233
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {p2, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2236
    :cond_4d
    const/4 v2, 0x3

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 2237
    const-string v3, "vnd.android.cursor.item/photo"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 2238
    const/4 v2, 0x2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/google/android/apps/plus/service/AndroidContactsSync$AvatarState;->dataId:J
    :try_end_61
    .catchall {:try_start_f .. :try_end_61} :catchall_62

    goto :goto_f

    .line 2243
    :catchall_62
    move-exception v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_67
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 2246
    sget-object v0, Lcom/google/android/apps/plus/content/EsProvider;->AVATARS_URI:Landroid/net/Uri;

    invoke-static {v0, p1}, Lcom/google/android/apps/plus/content/EsProvider;->appendAccountParameter(Landroid/net/Uri;Lcom/google/android/apps/plus/content/EsAccount;)Landroid/net/Uri;

    move-result-object v1

    sget-object v2, Lcom/google/android/apps/plus/service/AndroidContactsSync;->AVATAR_SIGNATURE_PROJECTION:[Ljava/lang/String;

    const-string v3, "signature NOT NULL AND signature !=0 AND medium_image NOT NULL"

    move-object v0, p0

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 2249
    :cond_7a
    :goto_7a
    :try_start_7a
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_aa

    .line 2250
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 2251
    const/4 v0, 0x1

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    .line 2252
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/plus/service/AndroidContactsSync$AvatarState;

    .line 2253
    if-eqz v0, :cond_7a

    .line 2254
    iget v5, v0, Lcom/google/android/apps/plus/service/AndroidContactsSync$AvatarState;->signature:I

    if-ne v5, v4, :cond_a7

    .line 2255
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_a1
    .catchall {:try_start_7a .. :try_end_a1} :catchall_a2

    goto :goto_7a

    .line 2262
    :catchall_a2
    move-exception v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0

    .line 2257
    :cond_a7
    :try_start_a7
    iput v4, v0, Lcom/google/android/apps/plus/service/AndroidContactsSync$AvatarState;->signature:I
    :try_end_a9
    .catchall {:try_start_a7 .. :try_end_a9} :catchall_a2

    goto :goto_7a

    .line 2262
    :cond_aa
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 2264
    return-void
.end method

.method private static queryStreamItemState(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/util/HashMap;)V
    .registers 9
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/android/apps/plus/content/EsAccount;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/google/android/apps/plus/service/AndroidContactsSync$PersonActivityState;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2398
    invoke-static {p1}, Lcom/google/android/apps/plus/service/AndroidContactsSync;->getStreamItemsUri(Lcom/google/android/apps/plus/content/EsAccount;)Landroid/net/Uri;

    move-result-object v3

    const-string v4, "account_name=? AND account_type=? AND data_set=?"

    const/4 v0, 0x3

    new-array v5, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    invoke-virtual {p1}, Lcom/google/android/apps/plus/content/EsAccount;->getName()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v5, v0

    const/4 v0, 0x1

    const-string v1, "com.google"

    aput-object v1, v5, v0

    const/4 v0, 0x2

    const-string v1, "plus"

    aput-object v1, v5, v0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-static/range {v0 .. v5}, Lcom/google/android/apps/plus/service/AndroidContactsSync;->queryStreamItemState(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/util/HashMap;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V

    .line 2401
    return-void
.end method

.method private static queryStreamItemState(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/util/HashMap;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V
    .registers 18
    .parameter "context"
    .parameter "account"
    .parameter
    .parameter "uri"
    .parameter "selection"
    .parameter "selectionArgs"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/android/apps/plus/content/EsAccount;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/google/android/apps/plus/service/AndroidContactsSync$PersonActivityState;",
            ">;",
            "Landroid/net/Uri;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 2410
    .local p2, stateMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Lcom/google/android/apps/plus/service/AndroidContactsSync$PersonActivityState;>;"
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 2411
    .local v0, resolver:Landroid/content/ContentResolver;
    sget-object v2, Lcom/google/android/apps/plus/service/AndroidContactsSync;->STREAM_ITEMS_PROJECTION:[Ljava/lang/String;

    const/4 v5, 0x0

    move-object v1, p3

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 2414
    .local v7, cursor:Landroid/database/Cursor;
    :cond_10
    :goto_10
    :try_start_10
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_62

    .line 2415
    const/4 v1, 0x1

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 2416
    .local v10, personId:Ljava/lang/String;
    invoke-static {v10}, Lcom/google/android/apps/plus/content/EsPeopleData;->getGaiaId(Ljava/lang/String;)J

    move-result-wide v8

    .line 2417
    .local v8, gaiaId:J
    const-wide/16 v1, 0x0

    cmp-long v1, v8, v1

    if-eqz v1, :cond_10

    .line 2418
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/google/android/apps/plus/service/AndroidContactsSync$PersonActivityState;

    .line 2419
    .local v11, state:Lcom/google/android/apps/plus/service/AndroidContactsSync$PersonActivityState;
    if-eqz v11, :cond_10

    .line 2420
    new-instance v6, Lcom/google/android/apps/plus/service/AndroidContactsSync$ActivityState;

    const/4 v1, 0x0

    invoke-direct {v6, v1}, Lcom/google/android/apps/plus/service/AndroidContactsSync$ActivityState;-><init>(Lcom/google/android/apps/plus/service/AndroidContactsSync$1;)V

    .line 2421
    .local v6, activityState:Lcom/google/android/apps/plus/service/AndroidContactsSync$ActivityState;
    iget-wide v1, v11, Lcom/google/android/apps/plus/service/AndroidContactsSync$PersonActivityState;->rawContactId:J

    iput-wide v1, v6, Lcom/google/android/apps/plus/service/AndroidContactsSync$ActivityState;->rawContactId:J

    .line 2422
    const/4 v1, 0x0

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    iput-wide v1, v6, Lcom/google/android/apps/plus/service/AndroidContactsSync$ActivityState;->streamItemId:J

    .line 2423
    const/4 v1, 0x2

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v6, Lcom/google/android/apps/plus/service/AndroidContactsSync$ActivityState;->activityId:Ljava/lang/String;

    .line 2425
    const/4 v1, 0x3

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    iput-wide v1, v6, Lcom/google/android/apps/plus/service/AndroidContactsSync$ActivityState;->created:J

    .line 2426
    const/4 v1, 0x4

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    iput-wide v1, v6, Lcom/google/android/apps/plus/service/AndroidContactsSync$ActivityState;->lastModified:J

    .line 2428
    iget-object v1, v11, Lcom/google/android/apps/plus/service/AndroidContactsSync$PersonActivityState;->activities:Ljava/util/ArrayList;

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_5c
    .catchall {:try_start_10 .. :try_end_5c} :catchall_5d

    goto :goto_10

    .line 2433
    .end local v6           #activityState:Lcom/google/android/apps/plus/service/AndroidContactsSync$ActivityState;
    .end local v8           #gaiaId:J
    .end local v10           #personId:Ljava/lang/String;
    .end local v11           #state:Lcom/google/android/apps/plus/service/AndroidContactsSync$PersonActivityState;
    :catchall_5d
    move-exception v1

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v1

    :cond_62
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 2435
    return-void
.end method

.method private static reconcileActivitiesAndStreamItems(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/util/HashMap;Ljava/lang/String;[Ljava/lang/String;)V
    .registers 16
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/android/apps/plus/content/EsAccount;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/google/android/apps/plus/service/AndroidContactsSync$PersonActivityState;",
            ">;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 2443
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 2445
    if-eqz p3, :cond_85

    .line 2446
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2451
    :goto_1f
    sget-object v1, Lcom/google/android/apps/plus/content/EsProvider;->ACTIVITY_SUMMARY_URI:Landroid/net/Uri;

    invoke-static {v1, p1}, Lcom/google/android/apps/plus/content/EsProvider;->appendAccountParameter(Landroid/net/Uri;Lcom/google/android/apps/plus/content/EsAccount;)Landroid/net/Uri;

    move-result-object v1

    sget-object v2, Lcom/google/android/apps/plus/service/AndroidContactsSync;->ACTIVITY_SUMMARY_PROJECTION:[Ljava/lang/String;

    const/4 v5, 0x0

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    .line 2455
    :cond_2d
    :goto_2d
    :try_start_2d
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_9e

    .line 2456
    const/4 v0, 0x1

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 2457
    const/4 v2, 0x0

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 2458
    const/4 v2, 0x2

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    .line 2459
    const/4 v2, 0x3

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    .line 2460
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/plus/service/AndroidContactsSync$PersonActivityState;

    .line 2461
    if-eqz v0, :cond_2d

    .line 2462
    const/4 v2, 0x0

    .line 2463
    iget-object v1, v0, Lcom/google/android/apps/plus/service/AndroidContactsSync$PersonActivityState;->activities:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_5a
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_a4

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/apps/plus/service/AndroidContactsSync$ActivityState;

    .line 2464
    iget-object v10, v1, Lcom/google/android/apps/plus/service/AndroidContactsSync$ActivityState;->activityId:Ljava/lang/String;

    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5a

    .line 2469
    :goto_6e
    if-eqz v1, :cond_87

    .line 2470
    iget-wide v4, v1, Lcom/google/android/apps/plus/service/AndroidContactsSync$ActivityState;->lastModified:J

    cmp-long v0, v4, v7

    if-eqz v0, :cond_a2

    .line 2471
    const/4 v0, 0x1

    iput-boolean v0, v1, Lcom/google/android/apps/plus/service/AndroidContactsSync$ActivityState;->changed:Z

    .line 2472
    iput-wide v7, v1, Lcom/google/android/apps/plus/service/AndroidContactsSync$ActivityState;->lastModified:J

    move-object v0, v1

    .line 2482
    :goto_7c
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/google/android/apps/plus/service/AndroidContactsSync$ActivityState;->exists:Z
    :try_end_7f
    .catchall {:try_start_2d .. :try_end_7f} :catchall_80

    goto :goto_2d

    .line 2486
    :catchall_80
    move-exception v0

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    throw v0

    .line 2448
    :cond_85
    const/4 v3, 0x0

    goto :goto_1f

    .line 2475
    :cond_87
    :try_start_87
    new-instance v1, Lcom/google/android/apps/plus/service/AndroidContactsSync$ActivityState;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/google/android/apps/plus/service/AndroidContactsSync$ActivityState;-><init>(Lcom/google/android/apps/plus/service/AndroidContactsSync$1;)V

    .line 2476
    iget-wide v9, v0, Lcom/google/android/apps/plus/service/AndroidContactsSync$PersonActivityState;->rawContactId:J

    iput-wide v9, v1, Lcom/google/android/apps/plus/service/AndroidContactsSync$ActivityState;->rawContactId:J

    .line 2477
    iput-object v4, v1, Lcom/google/android/apps/plus/service/AndroidContactsSync$ActivityState;->activityId:Ljava/lang/String;

    .line 2478
    iput-wide v5, v1, Lcom/google/android/apps/plus/service/AndroidContactsSync$ActivityState;->created:J

    .line 2479
    iput-wide v7, v1, Lcom/google/android/apps/plus/service/AndroidContactsSync$ActivityState;->lastModified:J

    .line 2480
    iget-object v0, v0, Lcom/google/android/apps/plus/service/AndroidContactsSync$PersonActivityState;->activities:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_9c
    .catchall {:try_start_87 .. :try_end_9c} :catchall_80

    move-object v0, v1

    goto :goto_7c

    .line 2486
    :cond_9e
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 2488
    return-void

    :cond_a2
    move-object v0, v1

    goto :goto_7c

    :cond_a4
    move-object v1, v2

    goto :goto_6e
.end method

.method private static reconcileContacts(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/util/HashMap;)V
    .registers 21
    .parameter "resolver"
    .parameter "entitiesUri"
    .parameter "personIds"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentResolver;",
            "Landroid/net/Uri;",
            "[",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/apps/plus/service/AndroidContactsSync$RawContactState;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1539
    .local p3, stateMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/google/android/apps/plus/service/AndroidContactsSync$RawContactState;>;"
    move-object/from16 v0, p2

    array-length v1, v0

    new-array v5, v1, [Ljava/lang/String;

    .line 1540
    .local v5, args:[Ljava/lang/String;
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    .line 1541
    .local v16, sb:Ljava/lang/StringBuilder;
    const-string v1, "_id IN ("

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1542
    const/4 v14, 0x0

    .local v14, i:I
    :goto_12
    move-object/from16 v0, p2

    array-length v1, v0

    if-ge v14, v1, :cond_3c

    .line 1543
    aget-object v1, p2, v14

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/apps/plus/service/AndroidContactsSync$RawContactState;

    iget-wide v1, v1, Lcom/google/android/apps/plus/service/AndroidContactsSync$RawContactState;->rawContactId:J

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v5, v14

    .line 1544
    if-eqz v14, :cond_32

    .line 1545
    const/16 v1, 0x2c

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1547
    :cond_32
    const/16 v1, 0x3f

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1542
    add-int/lit8 v14, v14, 0x1

    goto :goto_12

    .line 1549
    :cond_3c
    const-string v1, ") AND "

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "mimetype IN (\'vnd.android.cursor.item/email_v2\',\'vnd.android.cursor.item/phone_v2\',\'vnd.android.cursor.item/postal-address_v2\',\'vnd.android.cursor.item/group_membership\')"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1551
    sget-object v3, Lcom/google/android/apps/plus/service/AndroidContactsSync;->ENTITIES_PROJECTION:[Ljava/lang/String;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13

    .line 1553
    .local v13, cursor:Landroid/database/Cursor;
    :goto_58
    :try_start_58
    invoke-interface {v13}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_8d

    .line 1554
    const/4 v1, 0x0

    invoke-interface {v13, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 1555
    .local v15, personId:Ljava/lang/String;
    move-object/from16 v0, p3

    invoke-virtual {v0, v15}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/apps/plus/service/AndroidContactsSync$RawContactState;

    .line 1556
    .local v6, state:Lcom/google/android/apps/plus/service/AndroidContactsSync$RawContactState;
    const/4 v1, 0x2

    invoke-interface {v13, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    const/4 v1, 0x1

    invoke-interface {v13, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    const/4 v1, 0x3

    invoke-interface {v13, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    const/4 v1, 0x4

    invoke-interface {v13, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    const/4 v1, 0x5

    invoke-interface {v13, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-static/range {v6 .. v12}, Lcom/google/android/apps/plus/service/AndroidContactsSync;->reconcileData(Lcom/google/android/apps/plus/service/AndroidContactsSync$RawContactState;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_87
    .catchall {:try_start_58 .. :try_end_87} :catchall_88

    goto :goto_58

    .line 1563
    .end local v6           #state:Lcom/google/android/apps/plus/service/AndroidContactsSync$RawContactState;
    .end local v15           #personId:Ljava/lang/String;
    :catchall_88
    move-exception v1

    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    throw v1

    :cond_8d
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 1565
    return-void
.end method

.method private static reconcileData(Lcom/google/android/apps/plus/service/AndroidContactsSync$RawContactState;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 13
    .parameter "state"
    .parameter "dataId"
    .parameter "mimetype"
    .parameter "data1"
    .parameter "data2"
    .parameter "data3"

    .prologue
    .line 1572
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 1573
    const/4 p4, 0x0

    .line 1575
    :cond_7
    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 1576
    const/4 p5, 0x0

    .line 1578
    :cond_e
    invoke-static {p6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_15

    .line 1579
    const/4 p6, 0x0

    .line 1582
    :cond_15
    iget-object v2, p0, Lcom/google/android/apps/plus/service/AndroidContactsSync$RawContactState;->data:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_1b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_59

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/plus/service/AndroidContactsSync$DataState;

    .line 1583
    .local v0, dataState:Lcom/google/android/apps/plus/service/AndroidContactsSync$DataState;
    iget-object v2, v0, Lcom/google/android/apps/plus/service/AndroidContactsSync$DataState;->mimetype:Ljava/lang/String;

    invoke-static {v2, p3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1b

    iget-object v2, v0, Lcom/google/android/apps/plus/service/AndroidContactsSync$DataState;->data1:Ljava/lang/String;

    invoke-static {v2, p4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1b

    iget-wide v2, v0, Lcom/google/android/apps/plus/service/AndroidContactsSync$DataState;->dataId:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_1b

    .line 1585
    iput-wide p1, v0, Lcom/google/android/apps/plus/service/AndroidContactsSync$DataState;->dataId:J

    .line 1588
    iget-object v2, v0, Lcom/google/android/apps/plus/service/AndroidContactsSync$DataState;->data2:Ljava/lang/String;

    invoke-static {v2, p5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_51

    iget-object v2, v0, Lcom/google/android/apps/plus/service/AndroidContactsSync$DataState;->data3:Ljava/lang/String;

    invoke-static {v2, p6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_58

    .line 1590
    :cond_51
    iput-object p5, v0, Lcom/google/android/apps/plus/service/AndroidContactsSync$DataState;->data2:Ljava/lang/String;

    .line 1591
    iput-object p6, v0, Lcom/google/android/apps/plus/service/AndroidContactsSync$DataState;->data3:Ljava/lang/String;

    .line 1592
    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/google/android/apps/plus/service/AndroidContactsSync$DataState;->changed:Z

    .line 1602
    :cond_58
    :goto_58
    return-void

    .line 1599
    .end local v0           #dataState:Lcom/google/android/apps/plus/service/AndroidContactsSync$DataState;
    :cond_59
    new-instance v0, Lcom/google/android/apps/plus/service/AndroidContactsSync$DataState;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Lcom/google/android/apps/plus/service/AndroidContactsSync$DataState;-><init>(Lcom/google/android/apps/plus/service/AndroidContactsSync$1;)V

    .line 1600
    .restart local v0       #dataState:Lcom/google/android/apps/plus/service/AndroidContactsSync$DataState;
    iput-wide p1, v0, Lcom/google/android/apps/plus/service/AndroidContactsSync$DataState;->dataId:J

    .line 1601
    iget-object v2, p0, Lcom/google/android/apps/plus/service/AndroidContactsSync$RawContactState;->data:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_58
.end method

.method private static reconcileLargeAvatarSignatures(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/util/HashMap;)V
    .registers 11
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/android/apps/plus/content/EsAccount;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/google/android/apps/plus/service/AndroidContactsSync$AvatarState;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v7, 0x6

    const/4 v3, 0x0

    .line 1939
    new-instance v6, Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-direct {v6, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1940
    invoke-static {p0, p1, p2, v6}, Lcom/google/android/apps/plus/service/AndroidContactsSync;->retrieveAvatarSignatures(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/util/HashMap;Ljava/util/ArrayList;)V

    .line 1943
    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_a8

    .line 1944
    new-instance v0, Lcom/google/android/apps/plus/api/SmallAvatarOperation;

    move-object v1, p0

    move-object v2, p1

    move-object v4, v3

    move-object v5, v3

    invoke-direct/range {v0 .. v5}, Lcom/google/android/apps/plus/api/SmallAvatarOperation;-><init>(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Landroid/content/Intent;Lcom/google/android/apps/plus/network/HttpOperation$OperationListener;Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;)V

    .line 1946
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_21
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_35

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    .line 1947
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Lcom/google/android/apps/plus/api/SmallAvatarOperation;->getAvatar(J)V

    goto :goto_21

    .line 1949
    :cond_35
    invoke-virtual {v0}, Lcom/google/android/apps/plus/api/SmallAvatarOperation;->start()V

    .line 1951
    invoke-virtual {v0}, Lcom/google/android/apps/plus/api/SmallAvatarOperation;->getException()Ljava/lang/Exception;

    move-result-object v1

    if-eqz v1, :cond_66

    .line 1952
    const-string v1, "GooglePlusContactsSync"

    invoke-static {v1, v7}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_66

    .line 1953
    const-string v1, "GooglePlusContactsSync"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not retrieve avatars: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v6}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/google/android/apps/plus/api/SmallAvatarOperation;->getException()Ljava/lang/Exception;

    move-result-object v3

    invoke-static {v1, v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1958
    :cond_66
    invoke-virtual {v0}, Lcom/google/android/apps/plus/api/SmallAvatarOperation;->hasError()Z

    move-result v1

    if-eqz v1, :cond_9e

    .line 1959
    const-string v1, "GooglePlusContactsSync"

    invoke-static {v1, v7}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_9e

    .line 1960
    const-string v1, "GooglePlusContactsSync"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not retrieve avatars: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v6}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/google/android/apps/plus/api/SmallAvatarOperation;->getErrorCode()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1965
    :cond_9e
    invoke-static {p0, p1, p2, v6}, Lcom/google/android/apps/plus/service/AndroidContactsSync;->retrieveAvatarSignatures(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/util/HashMap;Ljava/util/ArrayList;)V

    .line 1968
    invoke-virtual {p2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, v6}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 1970
    :cond_a8
    return-void
.end method

.method private static refreshStreamItemsForRawContact(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;JLjava/lang/String;J)V
    .registers 27
    .parameter "context"
    .parameter "account"
    .parameter "rawContactId"
    .parameter "personId"
    .parameter "gaiaId"

    .prologue
    .line 1098
    new-instance v10, Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;

    invoke-direct {v10}, Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;-><init>()V

    .line 1099
    .local v10, syncState:Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;
    const-string v2, "Single raw contact sync"

    invoke-virtual {v10, v2}, Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;->onSyncStart(Ljava/lang/String;)V

    .line 1100
    const-string v2, "Activities:Sync"

    invoke-virtual {v10, v2}, Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;->onStart(Ljava/lang/String;)V

    .line 1102
    :try_start_f
    invoke-static/range {p0 .. p0}, Lcom/google/android/apps/plus/service/AndroidContactsSync;->getMaxStreamItemsPerRawContact(Landroid/content/Context;)I

    move-result v8

    .line 1103
    .local v8, limit:I
    sget-object v4, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$View;->CIRCLES:Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$View;

    const/4 v5, 0x0

    invoke-static/range {p5 .. p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v9, 0x0

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    invoke-static/range {v2 .. v10}, Lcom/google/android/apps/plus/content/EsPostsData;->doActivityStreamSync(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$View;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;ILcom/google/android/apps/plus/network/HttpOperation$OperationListener;Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;)Lcom/google/android/apps/plus/service/ServiceResult;
    :try_end_23
    .catchall {:try_start_f .. :try_end_23} :catchall_7a
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_23} :catch_60

    .line 1111
    invoke-virtual {v10}, Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;->onFinish()V

    .line 1112
    invoke-virtual {v10}, Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;->onSyncFinish()V

    .line 1115
    new-instance v19, Landroid/content/ContentValues;

    invoke-direct/range {v19 .. v19}, Landroid/content/ContentValues;-><init>()V

    .line 1116
    .local v19, values:Landroid/content/ContentValues;
    const-string v2, "sync4"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v0, v19

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1117
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static/range {p1 .. p1}, Lcom/google/android/apps/plus/service/AndroidContactsSync;->getRawContactsUri(Lcom/google/android/apps/plus/content/EsAccount;)Landroid/net/Uri;

    move-result-object v3

    move-wide/from16 v0, p2

    invoke-static {v3, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v2, v3, v0, v4, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-object/from16 v11, p0

    move-object/from16 v12, p1

    move-wide/from16 v13, p2

    move-wide/from16 v15, p5

    move-object/from16 v17, p4

    .line 1120
    invoke-static/range {v11 .. v17}, Lcom/google/android/apps/plus/service/AndroidContactsSync;->syncActivitiesForRawContact(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;JJLjava/lang/String;)V

    .line 1121
    .end local v8           #limit:I
    .end local v19           #values:Landroid/content/ContentValues;
    :goto_5f
    return-void

    .line 1105
    :catch_60
    move-exception v18

    .line 1106
    .local v18, e:Ljava/lang/Exception;
    :try_start_61
    const-string v2, "GooglePlusContactsSync"

    const/4 v3, 0x6

    invoke-static {v2, v3}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_73

    .line 1107
    const-string v2, "GooglePlusContactsSync"

    const-string v3, "Could not refresh posts"

    move-object/from16 v0, v18

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_73
    .catchall {:try_start_61 .. :try_end_73} :catchall_7a

    .line 1111
    :cond_73
    invoke-virtual {v10}, Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;->onFinish()V

    .line 1112
    invoke-virtual {v10}, Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;->onSyncFinish()V

    goto :goto_5f

    .line 1111
    .end local v18           #e:Ljava/lang/Exception;
    :catchall_7a
    move-exception v2

    invoke-virtual {v10}, Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;->onFinish()V

    .line 1112
    invoke-virtual {v10}, Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;->onSyncFinish()V

    .line 1111
    throw v2
.end method

.method public static removeContactsFromOtherAccounts(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)V
    .registers 4
    .parameter "context"
    .parameter "account"

    .prologue
    const/4 v1, 0x1

    .line 856
    invoke-static {}, Lcom/google/android/apps/plus/service/AndroidContactsSync;->isAndroidSyncSupported()Z

    move-result v0

    if-nez v0, :cond_8

    .line 867
    :cond_7
    :goto_7
    return-void

    .line 860
    :cond_8
    invoke-static {p0}, Lcom/google/android/apps/plus/content/EsAccountsData;->isContactsSyncClean(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 862
    :try_start_e
    invoke-static {p0, p1}, Lcom/google/android/apps/plus/service/AndroidContactsSync;->clearAndroidContactsForOtherAccounts(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)V
    :try_end_11
    .catchall {:try_start_e .. :try_end_11} :catchall_15

    .line 864
    invoke-static {p0, v1}, Lcom/google/android/apps/plus/content/EsAccountsData;->saveContactsSyncCleanupStatus(Landroid/content/Context;Z)V

    goto :goto_7

    :catchall_15
    move-exception v0

    invoke-static {p0, v1}, Lcom/google/android/apps/plus/content/EsAccountsData;->saveContactsSyncCleanupStatus(Landroid/content/Context;Z)V

    throw v0
.end method

.method public static removeContactsIfSyncDisabled(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)V
    .registers 3
    .parameter "context"
    .parameter "account"

    .prologue
    .line 873
    invoke-static {}, Lcom/google/android/apps/plus/service/AndroidContactsSync;->isAndroidSyncSupported()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-static {p0, p1}, Lcom/google/android/apps/plus/content/EsAccountsData;->isContactsSyncEnabled(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)Z

    move-result v0

    if-nez v0, :cond_f

    .line 874
    invoke-static {p0, p1}, Lcom/google/android/apps/plus/service/AndroidContactsSync;->clearAndroidContacts(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)V

    .line 876
    :cond_f
    return-void
.end method

.method public static declared-synchronized requestSync(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 827
    const-class v0, Lcom/google/android/apps/plus/service/AndroidContactsSync;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_4
    invoke-static {p0, v1}, Lcom/google/android/apps/plus/service/AndroidContactsSync;->requestSync(Landroid/content/Context;Z)V
    :try_end_7
    .catchall {:try_start_4 .. :try_end_7} :catchall_9

    .line 828
    monitor-exit v0

    return-void

    .line 827
    :catchall_9
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized requestSync(Landroid/content/Context;Z)V
    .registers 5
    .parameter "context"
    .parameter "immediate"

    .prologue
    .line 834
    const-class v1, Lcom/google/android/apps/plus/service/AndroidContactsSync;

    monitor-enter v1

    :try_start_3
    invoke-static {}, Lcom/google/android/apps/plus/service/AndroidContactsSync;->isAndroidSyncSupported()Z
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_20

    move-result v0

    if-nez v0, :cond_b

    .line 844
    :goto_9
    monitor-exit v1

    return-void

    .line 838
    :cond_b
    :try_start_b
    sget-object v0, Lcom/google/android/apps/plus/service/AndroidContactsSync;->sAndroidSyncThread:Lcom/google/android/apps/plus/service/AndroidContactsSync$AndroidContactsSyncThread;

    if-nez v0, :cond_23

    .line 839
    new-instance v0, Lcom/google/android/apps/plus/service/AndroidContactsSync$AndroidContactsSyncThread;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/google/android/apps/plus/service/AndroidContactsSync$AndroidContactsSyncThread;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/google/android/apps/plus/service/AndroidContactsSync;->sAndroidSyncThread:Lcom/google/android/apps/plus/service/AndroidContactsSync$AndroidContactsSyncThread;

    .line 840
    sget-object v0, Lcom/google/android/apps/plus/service/AndroidContactsSync;->sAndroidSyncThread:Lcom/google/android/apps/plus/service/AndroidContactsSync$AndroidContactsSyncThread;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/service/AndroidContactsSync$AndroidContactsSyncThread;->start()V
    :try_end_1f
    .catchall {:try_start_b .. :try_end_1f} :catchall_20

    goto :goto_9

    .line 834
    :catchall_20
    move-exception v0

    monitor-exit v1

    throw v0

    .line 842
    :cond_23
    :try_start_23
    sget-object v0, Lcom/google/android/apps/plus/service/AndroidContactsSync;->sAndroidSyncThread:Lcom/google/android/apps/plus/service/AndroidContactsSync$AndroidContactsSyncThread;

    invoke-virtual {v0, p1}, Lcom/google/android/apps/plus/service/AndroidContactsSync$AndroidContactsSyncThread;->requestSync(Z)V
    :try_end_28
    .catchall {:try_start_23 .. :try_end_28} :catchall_20

    goto :goto_9
.end method

.method private static resizeThumbnail([BI)[B
    .registers 8
    .parameter "bytes"
    .parameter "thumbnailSize"

    .prologue
    const/4 v3, 0x0

    .line 2187
    if-nez p0, :cond_5

    move-object p0, v3

    .line 2212
    .end local p0
    :goto_4
    return-object p0

    .line 2191
    .restart local p0
    :cond_5
    const/4 v4, 0x0

    array-length v5, p0

    invoke-static {p0, v4, v5}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 2192
    .local v0, bitmap:Landroid/graphics/Bitmap;
    if-nez v0, :cond_f

    move-object p0, v3

    .line 2193
    goto :goto_4

    .line 2195
    :cond_f
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    if-gt v4, p1, :cond_1f

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    if-gt v4, p1, :cond_1f

    .line 2196
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_4

    .line 2200
    :cond_1f
    invoke-static {v0, p1}, Lcom/google/android/apps/plus/util/ImageUtils;->resizeToSquareBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 2201
    .local v2, thumbnail:Landroid/graphics/Bitmap;
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 2202
    const/4 v0, 0x0

    .line 2204
    if-nez v2, :cond_2b

    move-object p0, v3

    .line 2205
    goto :goto_4

    .line 2208
    :cond_2b
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    const/16 v3, 0xfa0

    invoke-direct {v1, v3}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 2209
    .local v1, stream:Ljava/io/ByteArrayOutputStream;
    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v4, 0x64

    invoke-virtual {v2, v3, v4, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 2210
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 2211
    const/4 v2, 0x0

    .line 2212
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    goto :goto_4
.end method

.method protected static retrieveAvatarSignatures(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/util/HashMap;Ljava/util/ArrayList;)V
    .registers 10
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/android/apps/plus/content/EsAccount;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/google/android/apps/plus/service/AndroidContactsSync$AvatarState;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 1978
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v4, v1, [Ljava/lang/String;

    .line 1979
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 1980
    const-string v1, "user_id"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " IN ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v1, v0

    .line 1981
    :goto_18
    array-length v0, v4

    if-ge v1, v0, :cond_37

    .line 1982
    if-eqz v1, :cond_22

    .line 1983
    const/16 v0, 0x2c

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1985
    :cond_22
    const/16 v0, 0x3f

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1986
    invoke-virtual {p3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v1

    .line 1981
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_18

    .line 1988
    :cond_37
    const-string v0, ")"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1989
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/google/android/apps/plus/content/EsProvider;->AVATARS_URI:Landroid/net/Uri;

    invoke-static {v1, p1}, Lcom/google/android/apps/plus/content/EsProvider;->appendAccountParameter(Landroid/net/Uri;Lcom/google/android/apps/plus/content/EsAccount;)Landroid/net/Uri;

    move-result-object v1

    sget-object v2, Lcom/google/android/apps/plus/service/AndroidContactsSync;->AVATAR_SIGNATURE_PROJECTION:[Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 1993
    :cond_51
    :goto_51
    :try_start_51
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_88

    .line 1994
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 1995
    const/4 v0, 0x1

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    .line 1996
    if-eqz v4, :cond_51

    .line 1997
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/plus/service/AndroidContactsSync$AvatarState;

    .line 1998
    iget v5, v0, Lcom/google/android/apps/plus/service/AndroidContactsSync$AvatarState;->signature:I

    if-ne v5, v4, :cond_85

    .line 1999
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2003
    :goto_78
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_7f
    .catchall {:try_start_51 .. :try_end_7f} :catchall_80

    goto :goto_51

    .line 2007
    :catchall_80
    move-exception v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0

    .line 2001
    :cond_85
    :try_start_85
    iput v4, v0, Lcom/google/android/apps/plus/service/AndroidContactsSync$AvatarState;->signature:I
    :try_end_87
    .catchall {:try_start_85 .. :try_end_87} :catchall_80

    goto :goto_78

    .line 2007
    :cond_88
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 2009
    return-void
.end method

.method protected static saveAvatarSignature(Landroid/content/ContentResolver;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/android/apps/plus/service/AndroidContactsSync$AvatarState;)V
    .registers 8
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 2089
    invoke-static {p1}, Lcom/google/android/apps/plus/service/AndroidContactsSync;->getRawContactsUri(Lcom/google/android/apps/plus/content/EsAccount;)Landroid/net/Uri;

    move-result-object v0

    iget-wide v1, p2, Lcom/google/android/apps/plus/service/AndroidContactsSync$AvatarState;->rawContactId:J

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    .line 2091
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 2092
    const-string v2, "sync2"

    iget v3, p2, Lcom/google/android/apps/plus/service/AndroidContactsSync$AvatarState;->signature:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2093
    const-string v2, "sync3"

    iget v3, p2, Lcom/google/android/apps/plus/service/AndroidContactsSync$AvatarState;->signature:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2094
    invoke-virtual {p0, v0, v1, v4, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2095
    return-void
.end method

.method private static shouldSync(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;)Z
    .registers 4
    .parameter "context"
    .parameter "account"
    .parameter "syncState"

    .prologue
    .line 3284
    invoke-static {}, Lcom/google/android/apps/plus/service/AndroidContactsSync;->isAndroidSyncSupported()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-static {p0, p1}, Lcom/google/android/apps/plus/content/EsAccountsData;->isContactsSyncEnabled(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)Z

    move-result v0

    if-eqz v0, :cond_16

    if-eqz p2, :cond_14

    invoke-virtual {p2}, Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;->isCanceled()Z

    move-result v0

    if-nez v0, :cond_16

    :cond_14
    const/4 v0, 0x1

    :goto_15
    return v0

    :cond_16
    const/4 v0, 0x0

    goto :goto_15
.end method

.method private static shouldSyncActivities(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)Z
    .registers 3
    .parameter "context"
    .parameter "account"

    .prologue
    .line 3277
    invoke-static {p0, p1}, Lcom/google/android/apps/plus/content/EsPeopleData;->hasPublicCircle(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)Z

    move-result v0

    return v0
.end method

.method private static syncActivities(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;)V
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 2287
    invoke-static {p0, p1, p2}, Lcom/google/android/apps/plus/service/AndroidContactsSync;->shouldSync(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;)Z

    move-result v1

    if-nez v1, :cond_8

    .line 2302
    :goto_7
    return-void

    .line 2291
    :cond_8
    const-string v1, "Android:Activities"

    invoke-virtual {p2, v1}, Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;->onStart(Ljava/lang/String;)V

    .line 2292
    invoke-static {p0, p1}, Lcom/google/android/apps/plus/service/AndroidContactsSync;->shouldSyncActivities(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)Z

    move-result v1

    if-eqz v1, :cond_2d

    .line 2293
    invoke-static {p0, p1}, Lcom/google/android/apps/plus/service/AndroidContactsSync;->findChangesInActivities(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)Ljava/util/HashMap;

    move-result-object v1

    .line 2294
    if-eqz v1, :cond_22

    invoke-virtual {v1}, Ljava/util/HashMap;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_22

    .line 2295
    invoke-static {p0, p1, v1}, Lcom/google/android/apps/plus/service/AndroidContactsSync;->applyActivityChanges(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/util/HashMap;)V

    .line 2297
    :cond_22
    if-nez v1, :cond_28

    :goto_24
    invoke-virtual {p2, v0}, Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;->onFinish(I)V

    goto :goto_7

    :cond_28
    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v0

    goto :goto_24

    .line 2299
    :cond_2d
    invoke-static {p0, p1}, Lcom/google/android/apps/plus/service/AndroidContactsSync;->deleteStreamItems(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)V

    .line 2300
    invoke-virtual {p2, v0}, Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;->onFinish(I)V

    goto :goto_7
.end method

.method private static syncActivitiesForRawContact(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;JJLjava/lang/String;)V
    .registers 13
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 2309
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 2310
    new-instance v0, Lcom/google/android/apps/plus/service/AndroidContactsSync$PersonActivityState;

    invoke-direct {v0, v4}, Lcom/google/android/apps/plus/service/AndroidContactsSync$PersonActivityState;-><init>(Lcom/google/android/apps/plus/service/AndroidContactsSync$1;)V

    .line 2311
    iput-wide p4, v0, Lcom/google/android/apps/plus/service/AndroidContactsSync$PersonActivityState;->gaiaId:J

    .line 2312
    iput-wide p2, v0, Lcom/google/android/apps/plus/service/AndroidContactsSync$PersonActivityState;->rawContactId:J

    .line 2313
    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v2, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2315
    invoke-static {p1}, Lcom/google/android/apps/plus/service/AndroidContactsSync;->getRawContactsUri(Lcom/google/android/apps/plus/content/EsAccount;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0, p2, p3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    const-string v1, "stream_items"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    move-object v0, p0

    move-object v1, p1

    move-object v5, v4

    .line 2318
    invoke-static/range {v0 .. v5}, Lcom/google/android/apps/plus/service/AndroidContactsSync;->queryStreamItemState(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/util/HashMap;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V

    .line 2319
    const-string v0, "author_id=?"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {p4, p5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v3

    invoke-static {p0, p1, v2, v0, v1}, Lcom/google/android/apps/plus/service/AndroidContactsSync;->reconcileActivitiesAndStreamItems(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/util/HashMap;Ljava/lang/String;[Ljava/lang/String;)V

    .line 2322
    invoke-static {p0, v2}, Lcom/google/android/apps/plus/service/AndroidContactsSync;->limitStreamItemsPerRawContact(Landroid/content/Context;Ljava/util/HashMap;)V

    .line 2323
    invoke-static {v2}, Lcom/google/android/apps/plus/service/AndroidContactsSync;->cleanUpActivityStateMap(Ljava/util/HashMap;)V

    .line 2325
    invoke-virtual {v2}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_48

    .line 2326
    invoke-static {p0, p1, v2}, Lcom/google/android/apps/plus/service/AndroidContactsSync;->applyActivityChanges(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/util/HashMap;)V

    .line 2328
    :cond_48
    return-void
.end method

.method private static syncCircles(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;)V
    .registers 5
    .parameter "context"
    .parameter "account"
    .parameter "syncState"

    .prologue
    .line 900
    invoke-static {p0, p1, p2}, Lcom/google/android/apps/plus/service/AndroidContactsSync;->shouldSync(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 910
    :goto_6
    return-void

    .line 904
    :cond_7
    const-string v1, "Android:Circles"

    invoke-virtual {p2, v1}, Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;->onStart(Ljava/lang/String;)V

    .line 905
    invoke-static {p0, p1}, Lcom/google/android/apps/plus/service/AndroidContactsSync;->findChangesInCircles(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)Ljava/util/HashMap;

    move-result-object v0

    .line 906
    .local v0, stateMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/google/android/apps/plus/service/AndroidContactsSync$CircleState;>;"
    if-eqz v0, :cond_15

    .line 907
    invoke-static {p0, p1, v0}, Lcom/google/android/apps/plus/service/AndroidContactsSync;->applyCircleChanges(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/util/HashMap;)V

    .line 909
    :cond_15
    if-nez v0, :cond_1c

    const/4 v1, 0x0

    :goto_18
    invoke-virtual {p2, v1}, Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;->onFinish(I)V

    goto :goto_6

    :cond_1c
    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v1

    goto :goto_18
.end method

.method public static syncContacts(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;)V
    .registers 6
    .parameter "context"
    .parameter "account"
    .parameter "syncState"

    .prologue
    .line 1008
    invoke-static {p0, p1, p2}, Lcom/google/android/apps/plus/service/AndroidContactsSync;->shouldSync(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 1018
    :goto_6
    return-void

    .line 1012
    :cond_7
    const-string v2, "Android:Contacts"

    invoke-virtual {p2, v2}, Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;->onStart(Ljava/lang/String;)V

    .line 1013
    invoke-static {p0, p1}, Lcom/google/android/apps/plus/service/AndroidContactsSync;->findChangesInContacts(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)Ljava/util/HashMap;

    move-result-object v1

    .line 1014
    .local v1, stateMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/google/android/apps/plus/service/AndroidContactsSync$RawContactState;>;"
    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v0

    .line 1015
    .local v0, count:I
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v2, p1}, Lcom/google/android/apps/plus/service/AndroidContactsSync;->getCircleIdMap(Landroid/content/ContentResolver;Lcom/google/android/apps/plus/content/EsAccount;)Ljava/util/HashMap;

    move-result-object v2

    invoke-static {p0, p1, v1, v2}, Lcom/google/android/apps/plus/service/AndroidContactsSync;->applyContactChanges(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/util/HashMap;Ljava/util/HashMap;)V

    .line 1017
    invoke-virtual {p2, v0}, Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;->onFinish(I)V

    goto :goto_6
.end method

.method protected static syncContactsForCurrentAccount(Landroid/content/Context;Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;)V
    .registers 4
    .parameter "context"
    .parameter "syncState"

    .prologue
    .line 796
    invoke-static {}, Lcom/google/android/apps/plus/service/AndroidContactsSync;->isAndroidSyncSupported()Z

    move-result v1

    if-eqz v1, :cond_c

    invoke-virtual {p1}, Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;->isCanceled()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 821
    :cond_c
    :goto_c
    return-void

    .line 800
    :cond_d
    invoke-static {p0}, Lcom/google/android/apps/plus/content/EsAccountsData;->getActiveAccount(Landroid/content/Context;)Lcom/google/android/apps/plus/content/EsAccount;

    move-result-object v0

    .line 801
    .local v0, account:Lcom/google/android/apps/plus/content/EsAccount;
    invoke-static {p0, v0}, Lcom/google/android/apps/plus/service/AndroidContactsSync;->removeContactsFromOtherAccounts(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)V

    .line 802
    if-eqz v0, :cond_c

    .line 806
    const-string v1, "Android contacts sync"

    invoke-virtual {p1, v1}, Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;->onSyncStart(Ljava/lang/String;)V

    .line 808
    invoke-static {p0, v0}, Lcom/google/android/apps/plus/service/AndroidContactsSync;->removeContactsIfSyncDisabled(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)V

    .line 809
    invoke-static {p0, v0}, Lcom/google/android/apps/plus/service/AndroidContactsSync;->checkSyncVersion(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)V

    .line 810
    invoke-static {p0, v0, p1}, Lcom/google/android/apps/plus/service/AndroidContactsSync;->syncMyProfile(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;)V

    .line 812
    invoke-static {p0, v0, p1}, Lcom/google/android/apps/plus/service/AndroidContactsSync;->shouldSync(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;)Z

    move-result v1

    if-eqz v1, :cond_39

    .line 813
    invoke-static {p0, v0, p1}, Lcom/google/android/apps/plus/service/AndroidContactsSync;->syncCircles(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;)V

    .line 814
    invoke-static {p0, v0, p1}, Lcom/google/android/apps/plus/service/AndroidContactsSync;->syncContacts(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;)V

    .line 815
    invoke-static {p0, v0, p1}, Lcom/google/android/apps/plus/service/AndroidContactsSync;->syncLargeAvatars(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;)V

    .line 816
    invoke-static {p0, v0, p1}, Lcom/google/android/apps/plus/service/AndroidContactsSync;->syncActivities(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;)V

    .line 817
    invoke-static {p0, v0, p1}, Lcom/google/android/apps/plus/service/AndroidContactsSync;->syncSmallAvatars(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;)V

    .line 820
    :cond_39
    invoke-virtual {p1}, Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;->onSyncFinish()V

    goto :goto_c
.end method

.method private static syncLargeAvatarForRawContact(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;JJI)V
    .registers 10
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1865
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1866
    new-instance v1, Lcom/google/android/apps/plus/service/AndroidContactsSync$AvatarState;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/google/android/apps/plus/service/AndroidContactsSync$AvatarState;-><init>(Lcom/google/android/apps/plus/service/AndroidContactsSync$1;)V

    .line 1867
    iput-wide p4, v1, Lcom/google/android/apps/plus/service/AndroidContactsSync$AvatarState;->gaiaId:J

    .line 1868
    iput-wide p2, v1, Lcom/google/android/apps/plus/service/AndroidContactsSync$AvatarState;->rawContactId:J

    .line 1869
    iput p6, v1, Lcom/google/android/apps/plus/service/AndroidContactsSync$AvatarState;->signature:I

    .line 1870
    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1872
    invoke-static {p0, p1, v0}, Lcom/google/android/apps/plus/service/AndroidContactsSync;->reconcileLargeAvatarSignatures(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/util/HashMap;)V

    .line 1874
    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_31

    .line 1875
    new-instance v1, Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;

    invoke-direct {v1}, Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;-><init>()V

    .line 1876
    const-string v2, "Large avatar sync for a single raw contact"

    invoke-virtual {v1, v2}, Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;->onSyncStart(Ljava/lang/String;)V

    .line 1877
    invoke-static {p0, p1, v1, v0}, Lcom/google/android/apps/plus/service/AndroidContactsSync;->downloadLargeAvatars(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;Ljava/util/HashMap;)V

    .line 1878
    invoke-virtual {v1}, Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;->onSyncFinish()V

    .line 1880
    :cond_31
    return-void
.end method

.method private static syncLargeAvatars(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;)V
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1843
    invoke-static {p0, p1, p2}, Lcom/google/android/apps/plus/service/AndroidContactsSync;->shouldSync(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 1858
    :goto_6
    return-void

    .line 1847
    :cond_7
    const-string v0, "Android:LargeAvatars"

    invoke-virtual {p2, v0}, Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;->onStart(Ljava/lang/String;)V

    .line 1849
    invoke-static {p0, p1}, Lcom/google/android/apps/plus/service/AndroidContactsSync;->queryRawContactsRequiringLargeAvatars(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)Ljava/util/HashMap;

    move-result-object v0

    .line 1851
    if-eqz v0, :cond_18

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 1852
    :cond_18
    invoke-virtual {p2}, Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;->onFinish()V

    goto :goto_6

    .line 1856
    :cond_1c
    invoke-static {p0, p1, p2, v0}, Lcom/google/android/apps/plus/service/AndroidContactsSync;->downloadLargeAvatars(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;Ljava/util/HashMap;)V

    .line 1857
    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;->onFinish(I)V

    goto :goto_6
.end method

.method private static syncMyProfile(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;)V
    .registers 6
    .parameter "context"
    .parameter "account"
    .parameter "syncState"

    .prologue
    .line 1283
    invoke-static {}, Lcom/google/android/apps/plus/service/AndroidContactsSync;->isAndroidSyncSupported()Z

    move-result v1

    if-eqz v1, :cond_c

    invoke-virtual {p2}, Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;->isCanceled()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 1294
    :cond_c
    :goto_c
    return-void

    .line 1287
    :cond_d
    const-string v1, "Android:MyProfile"

    invoke-virtual {p2, v1}, Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;->onStart(Ljava/lang/String;)V

    .line 1288
    invoke-virtual {p1}, Lcom/google/android/apps/plus/content/EsAccount;->getPersonId()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {p0, p1, v1, v2}, Lcom/google/android/apps/plus/content/EsPeopleData;->getProfileAndContactData(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Z)Lcom/google/android/apps/plus/content/EsPeopleData$ProfileAndContactData;

    move-result-object v0

    .line 1290
    .local v0, data:Lcom/google/android/apps/plus/content/EsPeopleData$ProfileAndContactData;
    iget-object v1, v0, Lcom/google/android/apps/plus/content/EsPeopleData$ProfileAndContactData;->contact:Lcom/google/wireless/contacts/proto/Contact$MobileContact;

    if-eqz v1, :cond_22

    .line 1291
    invoke-static {p0, p1, v0}, Lcom/google/android/apps/plus/service/AndroidContactsSync;->updateMyProfile(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/android/apps/plus/content/EsPeopleData$ProfileAndContactData;)V

    .line 1293
    :cond_22
    invoke-virtual {p2}, Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;->onFinish()V

    goto :goto_c
.end method

.method public static syncRawContact(Landroid/content/Context;Landroid/net/Uri;)V
    .registers 4
    .parameter "context"
    .parameter "rawContactUri"

    .prologue
    .line 1024
    invoke-static {p0}, Lcom/google/android/apps/plus/content/EsAccountsData;->getActiveAccount(Landroid/content/Context;)Lcom/google/android/apps/plus/content/EsAccount;

    move-result-object v0

    .line 1025
    .local v0, account:Lcom/google/android/apps/plus/content/EsAccount;
    if-nez v0, :cond_7

    .line 1034
    :cond_6
    :goto_6
    return-void

    .line 1029
    :cond_7
    invoke-static {}, Lcom/google/android/apps/plus/service/AndroidContactsSync;->isAndroidSyncSupported()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1033
    invoke-static {p0, v0, p1}, Lcom/google/android/apps/plus/service/AndroidContactsSync;->syncRawContact(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Landroid/net/Uri;)V

    goto :goto_6
.end method

.method private static syncRawContact(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Landroid/net/Uri;)V
    .registers 32
    .parameter "context"
    .parameter "account"
    .parameter "rawContactUri"

    .prologue
    .line 1040
    const-wide/16 v25, 0x0

    .line 1041
    .local v25, rawContactId:J
    const/4 v13, 0x0

    .line 1042
    .local v13, personId:Ljava/lang/String;
    const/4 v8, 0x0

    .line 1043
    .local v8, avatarSignature:I
    const-wide/16 v27, 0x0

    .line 1044
    .local v27, streamLastUpdated:J
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v4, Lcom/google/android/apps/plus/service/AndroidContactsSync;->RAW_CONTACT_REFRESH_PROJECTION:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v3, p2

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v23

    .line 1047
    .local v23, cursor:Landroid/database/Cursor;
    :try_start_15
    invoke-interface/range {v23 .. v23}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_10e

    .line 1048
    const/4 v2, 0x2

    move-object/from16 v0, v23

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v21

    .line 1049
    .local v21, accountName:Ljava/lang/String;
    const/4 v2, 0x1

    move-object/from16 v0, v23

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v22

    .line 1050
    .local v22, accountType:Ljava/lang/String;
    const/4 v2, 0x3

    move-object/from16 v0, v23

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v24

    .line 1051
    .local v24, dataSet:Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/apps/plus/content/EsAccount;->getName()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_50

    const-string v2, "com.google"

    move-object/from16 v0, v22

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_50

    const-string v2, "plus"

    move-object/from16 v0, v24

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_91

    .line 1053
    :cond_50
    const-string v2, "GooglePlusContactsSync"

    const/4 v3, 0x6

    invoke-static {v2, v3}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_8b

    .line 1054
    const-string v2, "GooglePlusContactsSync"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Cannot refresh raw contact. It does not belong to the current account: "

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v21

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v9, "/"

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v22

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v9, "/"

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v24

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8b
    .catchall {:try_start_15 .. :try_end_8b} :catchall_f7

    .line 1066
    :cond_8b
    invoke-interface/range {v23 .. v23}, Landroid/database/Cursor;->close()V

    move-wide/from16 v4, v25

    .line 1091
    .end local v21           #accountName:Ljava/lang/String;
    .end local v22           #accountType:Ljava/lang/String;
    .end local v24           #dataSet:Ljava/lang/String;
    .end local v25           #rawContactId:J
    .local v4, rawContactId:J
    :cond_90
    :goto_90
    return-void

    .line 1060
    .end local v4           #rawContactId:J
    .restart local v21       #accountName:Ljava/lang/String;
    .restart local v22       #accountType:Ljava/lang/String;
    .restart local v24       #dataSet:Ljava/lang/String;
    .restart local v25       #rawContactId:J
    :cond_91
    const/4 v2, 0x0

    :try_start_92
    move-object/from16 v0, v23

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J
    :try_end_97
    .catchall {:try_start_92 .. :try_end_97} :catchall_f7

    move-result-wide v4

    .line 1061
    .end local v25           #rawContactId:J
    .restart local v4       #rawContactId:J
    const/4 v2, 0x4

    :try_start_99
    move-object/from16 v0, v23

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 1062
    const/4 v2, 0x5

    move-object/from16 v0, v23

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 1063
    const/4 v2, 0x6

    move-object/from16 v0, v23

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J
    :try_end_ac
    .catchall {:try_start_99 .. :try_end_ac} :catchall_10c

    move-result-wide v27

    .line 1066
    .end local v21           #accountName:Ljava/lang/String;
    .end local v22           #accountType:Ljava/lang/String;
    .end local v24           #dataSet:Ljava/lang/String;
    :goto_ad
    invoke-interface/range {v23 .. v23}, Landroid/database/Cursor;->close()V

    .line 1069
    const-wide/16 v2, 0x0

    cmp-long v2, v4, v2

    if-eqz v2, :cond_90

    .line 1073
    invoke-static {v13}, Lcom/google/android/apps/plus/content/EsPeopleData;->getGaiaId(Ljava/lang/String;)J

    move-result-wide v6

    .line 1074
    .local v6, gaiaId:J
    const-wide/16 v2, 0x0

    cmp-long v2, v6, v2

    if-eqz v2, :cond_90

    .line 1078
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/apps/plus/content/EsAccount;->getUserId()J

    move-result-wide v2

    cmp-long v2, v6, v2

    if-eqz v2, :cond_d3

    const/4 v2, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-static {v0, v1, v2}, Lcom/google/android/apps/plus/service/AndroidContactsSync;->shouldSync(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;)Z

    move-result v2

    if-eqz v2, :cond_90

    :cond_d3
    move-object/from16 v2, p0

    move-object/from16 v3, p1

    .line 1082
    invoke-static/range {v2 .. v8}, Lcom/google/android/apps/plus/service/AndroidContactsSync;->syncLargeAvatarForRawContact(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;JJI)V

    .line 1084
    invoke-static/range {p0 .. p1}, Lcom/google/android/apps/plus/service/AndroidContactsSync;->shouldSyncActivities(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)Z

    move-result v2

    if-eqz v2, :cond_90

    .line 1085
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long v2, v2, v27

    const-wide/32 v9, 0x493e0

    cmp-long v2, v2, v9

    if-lez v2, :cond_fe

    move-object/from16 v9, p0

    move-object/from16 v10, p1

    move-wide v11, v4

    move-wide v14, v6

    .line 1086
    invoke-static/range {v9 .. v15}, Lcom/google/android/apps/plus/service/AndroidContactsSync;->refreshStreamItemsForRawContact(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;JLjava/lang/String;J)V

    goto :goto_90

    .line 1066
    .end local v4           #rawContactId:J
    .end local v6           #gaiaId:J
    .restart local v25       #rawContactId:J
    :catchall_f7
    move-exception v2

    move-wide/from16 v4, v25

    .end local v25           #rawContactId:J
    .restart local v4       #rawContactId:J
    :goto_fa
    invoke-interface/range {v23 .. v23}, Landroid/database/Cursor;->close()V

    throw v2

    .restart local v6       #gaiaId:J
    :cond_fe
    move-object/from16 v14, p0

    move-object/from16 v15, p1

    move-wide/from16 v16, v4

    move-wide/from16 v18, v6

    move-object/from16 v20, v13

    .line 1088
    invoke-static/range {v14 .. v20}, Lcom/google/android/apps/plus/service/AndroidContactsSync;->syncActivitiesForRawContact(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;JJLjava/lang/String;)V

    goto :goto_90

    .line 1066
    .end local v6           #gaiaId:J
    .restart local v21       #accountName:Ljava/lang/String;
    .restart local v22       #accountType:Ljava/lang/String;
    .restart local v24       #dataSet:Ljava/lang/String;
    :catchall_10c
    move-exception v2

    goto :goto_fa

    .end local v4           #rawContactId:J
    .end local v21           #accountName:Ljava/lang/String;
    .end local v22           #accountType:Ljava/lang/String;
    .end local v24           #dataSet:Ljava/lang/String;
    .restart local v25       #rawContactId:J
    :cond_10e
    move-wide/from16 v4, v25

    .end local v25           #rawContactId:J
    .restart local v4       #rawContactId:J
    goto :goto_ad
.end method

.method private static syncSmallAvatars(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;)V
    .registers 20
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2101
    invoke-static/range {p0 .. p2}, Lcom/google/android/apps/plus/service/AndroidContactsSync;->shouldSync(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 2181
    :goto_6
    return-void

    .line 2105
    :cond_7
    const-string v1, "Android:Avatars"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;->onStart(Ljava/lang/String;)V

    .line 2107
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 2108
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    .line 2109
    move-object/from16 v0, p1

    invoke-static {v1, v0, v9}, Lcom/google/android/apps/plus/service/AndroidContactsSync;->queryRawContactsRequiringThumbnails(Landroid/content/ContentResolver;Lcom/google/android/apps/plus/content/EsAccount;Ljava/util/HashMap;)V

    .line 2110
    invoke-virtual {v9}, Ljava/util/HashMap;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_26

    .line 2111
    invoke-virtual/range {p2 .. p2}, Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;->onFinish()V

    goto :goto_6

    .line 2115
    :cond_26
    const-string v2, "thumbnail_max_dim"

    invoke-static {v1, v2}, Lcom/google/android/apps/plus/service/AndroidContactsSync;->getPreferredAvatarSize(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v10

    .line 2117
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 2118
    new-instance v12, Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-direct {v12, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 2119
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v8

    .line 2120
    const/4 v7, 0x0

    move v4, v7

    .line 2121
    :goto_40
    if-ge v4, v8, :cond_150

    invoke-virtual/range {p2 .. p2}, Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;->isCanceled()Z

    move-result v2

    if-nez v2, :cond_150

    .line 2122
    add-int/lit8 v2, v4, 0x8

    .line 2123
    if-le v2, v8, :cond_15b

    move v7, v8

    .line 2127
    :goto_4d
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 2128
    const-string v2, "user_id IN ("

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2129
    sub-int v2, v7, v4

    new-array v5, v2, [Ljava/lang/String;

    .line 2130
    const/4 v2, 0x0

    move v3, v2

    :goto_5d
    array-length v2, v5

    if-ge v3, v2, :cond_80

    .line 2131
    add-int v2, v4, v3

    invoke-virtual {v12, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/apps/plus/service/AndroidContactsSync$AvatarState;

    .line 2132
    if-eqz v3, :cond_6f

    .line 2133
    const/16 v13, 0x2c

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2135
    :cond_6f
    const/16 v13, 0x3f

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2136
    iget-wide v13, v2, Lcom/google/android/apps/plus/service/AndroidContactsSync$AvatarState;->gaiaId:J

    invoke-static {v13, v14}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v5, v3

    .line 2130
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_5d

    .line 2138
    :cond_80
    const/16 v2, 0x29

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2140
    sget-object v2, Lcom/google/android/apps/plus/content/EsProvider;->AVATARS_URI:Landroid/net/Uri;

    move-object/from16 v0, p1

    invoke-static {v2, v0}, Lcom/google/android/apps/plus/content/EsProvider;->appendAccountParameter(Landroid/net/Uri;Lcom/google/android/apps/plus/content/EsAccount;)Landroid/net/Uri;

    move-result-object v2

    sget-object v3, Lcom/google/android/apps/plus/service/AndroidContactsSync;->THUMBNAILS_AVATAR_PROJECTION:[Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    .line 2144
    :goto_98
    :try_start_98
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_144

    .line 2145
    const/4 v2, 0x0

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 2146
    const/4 v2, 0x1

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v2

    .line 2147
    invoke-static {v2, v10}, Lcom/google/android/apps/plus/service/AndroidContactsSync;->resizeThumbnail([BI)[B

    move-result-object v6

    .line 2149
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v9, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/apps/plus/service/AndroidContactsSync$AvatarState;

    .line 2150
    invoke-static/range {p1 .. p1}, Lcom/google/android/apps/plus/service/AndroidContactsSync;->getRawContactsUri(Lcom/google/android/apps/plus/content/EsAccount;)Landroid/net/Uri;

    move-result-object v4

    invoke-static {v4}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/content/ContentProviderOperation$Builder;->withYieldAllowed(Z)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v4

    const-string v5, "_id=?"

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/String;

    const/4 v14, 0x0

    iget-wide v15, v2, Lcom/google/android/apps/plus/service/AndroidContactsSync$AvatarState;->rawContactId:J

    invoke-static/range {v15 .. v16}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v15

    aput-object v15, v13, v14

    invoke-virtual {v4, v5, v13}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v4

    const-string v5, "sync3"

    iget v13, v2, Lcom/google/android/apps/plus/service/AndroidContactsSync$AvatarState;->signature:I

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v4, v5, v13}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v4

    invoke-virtual {v11, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2156
    iget-wide v4, v2, Lcom/google/android/apps/plus/service/AndroidContactsSync$AvatarState;->dataId:J

    const-wide/16 v13, 0x0

    cmp-long v4, v4, v13

    if-eqz v4, :cond_11b

    .line 2157
    sget-object v4, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v4}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v4

    const-string v5, "_id=?"

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/String;

    const/4 v14, 0x0

    iget-wide v15, v2, Lcom/google/android/apps/plus/service/AndroidContactsSync$AvatarState;->dataId:J

    invoke-static/range {v15 .. v16}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v13, v14

    invoke-virtual {v4, v5, v13}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    const-string v4, "data15"

    invoke-virtual {v2, v4, v6}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v2

    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_115
    .catchall {:try_start_98 .. :try_end_115} :catchall_116

    goto :goto_98

    .line 2171
    :catchall_116
    move-exception v1

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    throw v1

    .line 2163
    :cond_11b
    :try_start_11b
    sget-object v4, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v4}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v4

    const-string v5, "raw_contact_id"

    iget-wide v13, v2, Lcom/google/android/apps/plus/service/AndroidContactsSync$AvatarState;->rawContactId:J

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v4, v5, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    const-string v4, "mimetype"

    const-string v5, "vnd.android.cursor.item/photo"

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    const-string v4, "data15"

    invoke-virtual {v2, v4, v6}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v2

    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_142
    .catchall {:try_start_11b .. :try_end_142} :catchall_116

    goto/16 :goto_98

    .line 2171
    :cond_144
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 2174
    const/16 v2, 0x8

    const/4 v3, 0x0

    invoke-static {v1, v11, v2, v3}, Lcom/google/android/apps/plus/service/AndroidContactsSync;->flushBatch(Landroid/content/ContentResolver;Ljava/util/ArrayList;IZ)[Landroid/content/ContentProviderResult;

    move v4, v7

    .line 2177
    goto/16 :goto_40

    .line 2179
    :cond_150
    const/4 v2, 0x1

    invoke-static {v1, v11, v2}, Lcom/google/android/apps/plus/service/AndroidContactsSync;->flushBatch(Landroid/content/ContentResolver;Ljava/util/ArrayList;Z)[Landroid/content/ContentProviderResult;

    .line 2180
    move-object/from16 v0, p2

    invoke-virtual {v0, v8}, Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;->onFinish(I)V

    goto/16 :goto_6

    :cond_15b
    move v7, v2

    goto/16 :goto_4d
.end method

.method private static updateChangedContacts(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/util/HashMap;Ljava/util/ArrayList;Ljava/util/HashMap;)V
    .registers 14
    .parameter "context"
    .parameter "account"
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/android/apps/plus/content/EsAccount;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/apps/plus/service/AndroidContactsSync$RawContactState;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1223
    .local p2, stateMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/google/android/apps/plus/service/AndroidContactsSync$RawContactState;>;"
    .local p3, batch:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    .local p4, circleIdMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Long;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1225
    .local v3, stateList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/android/apps/plus/service/AndroidContactsSync$RawContactState;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 1228
    invoke-virtual {p2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, i$:Ljava/util/Iterator;
    :cond_10
    :goto_10
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2c

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/android/apps/plus/service/AndroidContactsSync$RawContactState;

    .line 1229
    .local v8, state:Lcom/google/android/apps/plus/service/AndroidContactsSync$RawContactState;
    iget-boolean v0, v8, Lcom/google/android/apps/plus/service/AndroidContactsSync$RawContactState;->exists:Z

    if-eqz v0, :cond_10

    iget-wide v0, v8, Lcom/google/android/apps/plus/service/AndroidContactsSync$RawContactState;->rawContactId:J

    const-wide/16 v4, 0x0

    cmp-long v0, v0, v4

    if-eqz v0, :cond_10

    .line 1230
    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_10

    .line 1234
    .end local v8           #state:Lcom/google/android/apps/plus/service/AndroidContactsSync$RawContactState;
    :cond_2c
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3b

    .line 1235
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p3

    move-object v4, p2

    move-object v6, p4

    invoke-static/range {v0 .. v6}, Lcom/google/android/apps/plus/service/AndroidContactsSync;->updateContacts(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/HashMap;ZLjava/util/HashMap;)V

    .line 1237
    :cond_3b
    return-void
.end method

.method private static updateContacts(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/HashMap;ZLjava/util/HashMap;)V
    .registers 22
    .parameter "context"
    .parameter "account"
    .parameter
    .parameter
    .parameter
    .parameter "knownNew"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/android/apps/plus/content/EsAccount;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/apps/plus/service/AndroidContactsSync$RawContactState;",
            ">;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/apps/plus/service/AndroidContactsSync$RawContactState;",
            ">;Z",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1376
    .local p2, batch:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    .local p3, stateList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/android/apps/plus/service/AndroidContactsSync$RawContactState;>;"
    .local p4, stateMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/google/android/apps/plus/service/AndroidContactsSync$RawContactState;>;"
    .local p6, circleIdMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Long;>;"
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 1377
    .local v3, resolver:Landroid/content/ContentResolver;
    invoke-static/range {p1 .. p1}, Lcom/google/android/apps/plus/service/AndroidContactsSync;->getRawContactsUri(Lcom/google/android/apps/plus/content/EsAccount;)Landroid/net/Uri;

    move-result-object v12

    .line 1378
    .local v12, rawContactsUri:Landroid/net/Uri;
    invoke-static/range {p1 .. p1}, Lcom/google/android/apps/plus/service/AndroidContactsSync;->getEntitiesUri(Lcom/google/android/apps/plus/content/EsAccount;)Landroid/net/Uri;

    move-result-object v8

    .line 1379
    .local v8, entitiesUri:Landroid/net/Uri;
    sget-object v2, Lcom/google/android/apps/plus/content/EsProvider;->PROFILES_URI:Landroid/net/Uri;

    move-object/from16 v0, p1

    invoke-static {v2, v0}, Lcom/google/android/apps/plus/content/EsProvider;->appendAccountParameter(Landroid/net/Uri;Lcom/google/android/apps/plus/content/EsAccount;)Landroid/net/Uri;

    move-result-object v11

    .line 1380
    .local v11, profilesUri:Landroid/net/Uri;
    sget-object v2, Lcom/google/android/apps/plus/content/EsProvider;->CONTACTS_URI:Landroid/net/Uri;

    move-object/from16 v0, p1

    invoke-static {v2, v0}, Lcom/google/android/apps/plus/content/EsProvider;->appendAccountParameter(Landroid/net/Uri;Lcom/google/android/apps/plus/content/EsAccount;)Landroid/net/Uri;

    move-result-object v4

    .line 1381
    .local v4, contactsUri:Landroid/net/Uri;
    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->size()I

    move-result v13

    .line 1382
    .local v13, size:I
    const/4 v10, 0x0

    .line 1383
    .local v10, offset:I
    :goto_21
    if-ge v10, v13, :cond_64

    .line 1384
    add-int/lit8 v14, v10, 0x20

    .line 1385
    .local v14, to:I
    if-le v14, v13, :cond_28

    .line 1386
    move v14, v13

    .line 1389
    :cond_28
    sub-int v2, v14, v10

    new-array v5, v2, [Ljava/lang/String;

    .line 1390
    .local v5, personIds:[Ljava/lang/String;
    const/4 v9, 0x0

    .local v9, i:I
    :goto_2d
    array-length v2, v5

    if-ge v9, v2, :cond_41

    .line 1391
    add-int v2, v10, v9

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/apps/plus/service/AndroidContactsSync$RawContactState;

    iget-object v2, v2, Lcom/google/android/apps/plus/service/AndroidContactsSync$RawContactState;->personId:Ljava/lang/String;

    aput-object v2, v5, v9

    .line 1390
    add-int/lit8 v9, v9, 0x1

    goto :goto_2d

    .line 1394
    :cond_41
    move-object/from16 v0, p4

    invoke-static {p0, v3, v11, v5, v0}, Lcom/google/android/apps/plus/service/AndroidContactsSync;->loadContactProtobufs(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/util/HashMap;)V

    move-object v2, p0

    move-object/from16 v6, p4

    move-object/from16 v7, p6

    .line 1395
    invoke-static/range {v2 .. v7}, Lcom/google/android/apps/plus/service/AndroidContactsSync;->loadContactCircleMembership(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;)V

    .line 1397
    if-nez p5, :cond_55

    .line 1398
    move-object/from16 v0, p4

    invoke-static {v3, v8, v5, v0}, Lcom/google/android/apps/plus/service/AndroidContactsSync;->reconcileContacts(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/util/HashMap;)V

    .line 1400
    :cond_55
    move-object/from16 v0, p2

    move-object/from16 v1, p4

    invoke-static {p0, v12, v0, v5, v1}, Lcom/google/android/apps/plus/service/AndroidContactsSync;->buildContentProviderOperations(Landroid/content/Context;Landroid/net/Uri;Ljava/util/ArrayList;[Ljava/lang/String;Ljava/util/HashMap;)V

    .line 1401
    const/4 v2, 0x0

    move-object/from16 v0, p2

    invoke-static {v3, v0, v2}, Lcom/google/android/apps/plus/service/AndroidContactsSync;->flushBatch(Landroid/content/ContentResolver;Ljava/util/ArrayList;Z)[Landroid/content/ContentProviderResult;

    .line 1402
    move v10, v14

    .line 1403
    goto :goto_21

    .line 1404
    .end local v5           #personIds:[Ljava/lang/String;
    .end local v9           #i:I
    .end local v14           #to:I
    :cond_64
    return-void
.end method

.method private static updateMyProfile(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/android/apps/plus/content/EsPeopleData$ProfileAndContactData;)V
    .registers 23
    .parameter "context"
    .parameter "account"
    .parameter "data"

    .prologue
    .line 1305
    invoke-static {}, Lcom/google/android/apps/plus/service/AndroidContactsSync;->isAndroidSyncSupported()Z

    move-result v5

    if-nez v5, :cond_7

    .line 1367
    :cond_6
    :goto_6
    return-void

    .line 1311
    :cond_7
    const/4 v15, 0x0

    .line 1312
    .local v15, isProfileFresh:Z
    new-instance v18, Lcom/google/android/apps/plus/service/AndroidContactsSync$RawContactState;

    const/4 v5, 0x0

    move-object/from16 v0, v18

    invoke-direct {v0, v5}, Lcom/google/android/apps/plus/service/AndroidContactsSync$RawContactState;-><init>(Lcom/google/android/apps/plus/service/AndroidContactsSync$1;)V

    .line 1313
    .local v18, state:Lcom/google/android/apps/plus/service/AndroidContactsSync$RawContactState;
    const/4 v5, 0x1

    move-object/from16 v0, v18

    iput-boolean v5, v0, Lcom/google/android/apps/plus/service/AndroidContactsSync$RawContactState;->exists:Z

    .line 1314
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/apps/plus/content/EsAccount;->getPersonId()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v18

    iput-object v5, v0, Lcom/google/android/apps/plus/service/AndroidContactsSync$RawContactState;->personId:Ljava/lang/String;

    .line 1315
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/apps/plus/content/EsAccount;->getDisplayName()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v18

    iput-object v5, v0, Lcom/google/android/apps/plus/service/AndroidContactsSync$RawContactState;->fullName:Ljava/lang/String;

    .line 1316
    move-object/from16 v0, p2

    iget-object v5, v0, Lcom/google/android/apps/plus/content/EsPeopleData$ProfileAndContactData;->contact:Lcom/google/wireless/contacts/proto/Contact$MobileContact;

    invoke-virtual {v5}, Lcom/google/wireless/contacts/proto/Contact$MobileContact;->getLastUpdatedTime()J

    move-result-wide v5

    move-object/from16 v0, v18

    iput-wide v5, v0, Lcom/google/android/apps/plus/service/AndroidContactsSync$RawContactState;->lastUpdateTime:J

    .line 1318
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 1319
    .local v3, resolver:Landroid/content/ContentResolver;
    invoke-static/range {p1 .. p1}, Lcom/google/android/apps/plus/service/AndroidContactsSync;->getProfileRawContactUri(Lcom/google/android/apps/plus/content/EsAccount;)Landroid/net/Uri;

    move-result-object v4

    .line 1321
    .local v4, profileRawContactUri:Landroid/net/Uri;
    sget-object v5, Lcom/google/android/apps/plus/service/AndroidContactsSync;->PROFILE_RAW_CONTACT_PROJECTION:[Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13

    .line 1324
    .local v13, cursor:Landroid/database/Cursor;
    :try_start_42
    invoke-interface {v13}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_5f

    .line 1325
    const/4 v5, 0x0

    invoke-interface {v13, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    move-object/from16 v0, v18

    iput-wide v5, v0, Lcom/google/android/apps/plus/service/AndroidContactsSync$RawContactState;->rawContactId:J

    .line 1326
    move-object/from16 v0, v18

    iget-wide v5, v0, Lcom/google/android/apps/plus/service/AndroidContactsSync$RawContactState;->lastUpdateTime:J

    const/4 v7, 0x1

    invoke-interface {v13, v7}, Landroid/database/Cursor;->getLong(I)J
    :try_end_59
    .catchall {:try_start_42 .. :try_end_59} :catchall_c9

    move-result-wide v7

    cmp-long v5, v5, v7

    if-nez v5, :cond_c7

    const/4 v15, 0x1

    .line 1330
    :cond_5f
    :goto_5f
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 1333
    move-object/from16 v0, v18

    iget-wide v5, v0, Lcom/google/android/apps/plus/service/AndroidContactsSync$RawContactState;->rawContactId:J

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-eqz v5, :cond_6e

    if-nez v15, :cond_10d

    .line 1334
    :cond_6e
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 1335
    .local v12, batch:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    move-object/from16 v0, p2

    iget-object v5, v0, Lcom/google/android/apps/plus/content/EsPeopleData$ProfileAndContactData;->contact:Lcom/google/wireless/contacts/proto/Contact$MobileContact;

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-static {v0, v1, v5}, Lcom/google/android/apps/plus/service/AndroidContactsSync;->populateRawContactState(Landroid/content/Context;Lcom/google/android/apps/plus/service/AndroidContactsSync$RawContactState;Lcom/google/wireless/contacts/proto/Contact$MobileContact;)V

    .line 1337
    move-object/from16 v0, v18

    iget-wide v5, v0, Lcom/google/android/apps/plus/service/AndroidContactsSync$RawContactState;->rawContactId:J

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-eqz v5, :cond_d1

    .line 1338
    move-object/from16 v0, v18

    iget-wide v5, v0, Lcom/google/android/apps/plus/service/AndroidContactsSync$RawContactState;->rawContactId:J

    move-object/from16 v0, p1

    invoke-static {v0, v5, v6}, Lcom/google/android/apps/plus/service/AndroidContactsSync;->getProfileDataUri(Lcom/google/android/apps/plus/content/EsAccount;J)Landroid/net/Uri;

    move-result-object v6

    sget-object v7, Lcom/google/android/apps/plus/service/AndroidContactsSync;->PROFILE_ENTITIES_PROJECTION:[Ljava/lang/String;

    const-string v8, "mimetype IN (\'vnd.android.cursor.item/email_v2\',\'vnd.android.cursor.item/phone_v2\',\'vnd.android.cursor.item/postal-address_v2\',\'vnd.android.cursor.item/group_membership\')"

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v5, v3

    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v14

    .line 1341
    .local v14, dataCursor:Landroid/database/Cursor;
    :goto_9d
    :try_start_9d
    invoke-interface {v14}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_ce

    .line 1342
    const/4 v5, 0x1

    invoke-interface {v14, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    const/4 v5, 0x0

    invoke-interface {v14, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    const/4 v5, 0x2

    invoke-interface {v14, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    const/4 v5, 0x3

    invoke-interface {v14, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    const/4 v5, 0x4

    invoke-interface {v14, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    move-object/from16 v5, v18

    invoke-static/range {v5 .. v11}, Lcom/google/android/apps/plus/service/AndroidContactsSync;->reconcileData(Lcom/google/android/apps/plus/service/AndroidContactsSync$RawContactState;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_c1
    .catchall {:try_start_9d .. :try_end_c1} :catchall_c2

    goto :goto_9d

    .line 1349
    :catchall_c2
    move-exception v5

    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    throw v5

    .line 1326
    .end local v12           #batch:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    .end local v14           #dataCursor:Landroid/database/Cursor;
    :cond_c7
    const/4 v15, 0x0

    goto :goto_5f

    .line 1330
    :catchall_c9
    move-exception v5

    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    throw v5

    .line 1349
    .restart local v12       #batch:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    .restart local v14       #dataCursor:Landroid/database/Cursor;
    :cond_ce
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 1353
    .end local v14           #dataCursor:Landroid/database/Cursor;
    :cond_d1
    move-object/from16 v0, v18

    iget-wide v5, v0, Lcom/google/android/apps/plus/service/AndroidContactsSync$RawContactState;->rawContactId:J

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-nez v5, :cond_12c

    invoke-static/range {p1 .. p1}, Lcom/google/android/apps/plus/service/AndroidContactsSync;->getProfileRawContactUri(Lcom/google/android/apps/plus/content/EsAccount;)Landroid/net/Uri;

    move-result-object v19

    .line 1355
    .local v19, uri:Landroid/net/Uri;
    :goto_df
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v18

    invoke-static {v0, v1, v12, v2}, Lcom/google/android/apps/plus/service/AndroidContactsSync;->buildContentProviderOperations(Landroid/content/Context;Landroid/net/Uri;Ljava/util/ArrayList;Lcom/google/android/apps/plus/service/AndroidContactsSync$RawContactState;)V

    .line 1356
    const/4 v5, 0x1

    invoke-static {v3, v12, v5}, Lcom/google/android/apps/plus/service/AndroidContactsSync;->flushBatch(Landroid/content/ContentResolver;Ljava/util/ArrayList;Z)[Landroid/content/ContentProviderResult;

    move-result-object v17

    .line 1357
    .local v17, results:[Landroid/content/ContentProviderResult;
    move-object/from16 v0, v18

    iget-wide v5, v0, Lcom/google/android/apps/plus/service/AndroidContactsSync$RawContactState;->rawContactId:J

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-nez v5, :cond_10d

    if-eqz v17, :cond_10d

    move-object/from16 v0, v17

    array-length v5, v0

    if-lez v5, :cond_10d

    .line 1358
    const/4 v5, 0x0

    aget-object v5, v17, v5

    iget-object v0, v5, Landroid/content/ContentProviderResult;->uri:Landroid/net/Uri;

    move-object/from16 v16, v0

    .line 1359
    .local v16, rawContactUri:Landroid/net/Uri;
    invoke-static/range {v16 .. v16}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v5

    move-object/from16 v0, v18

    iput-wide v5, v0, Lcom/google/android/apps/plus/service/AndroidContactsSync$RawContactState;->rawContactId:J

    .line 1363
    .end local v12           #batch:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    .end local v16           #rawContactUri:Landroid/net/Uri;
    .end local v17           #results:[Landroid/content/ContentProviderResult;
    .end local v19           #uri:Landroid/net/Uri;
    :cond_10d
    move-object/from16 v0, v18

    iget-wide v5, v0, Lcom/google/android/apps/plus/service/AndroidContactsSync$RawContactState;->rawContactId:J

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-eqz v5, :cond_6

    .line 1364
    invoke-static/range {p1 .. p1}, Lcom/google/android/apps/plus/service/AndroidContactsSync;->getRawContactsUri(Lcom/google/android/apps/plus/content/EsAccount;)Landroid/net/Uri;

    move-result-object v5

    move-object/from16 v0, v18

    iget-wide v6, v0, Lcom/google/android/apps/plus/service/AndroidContactsSync$RawContactState;->rawContactId:J

    invoke-static {v5, v6, v7}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-static {v0, v1, v5}, Lcom/google/android/apps/plus/service/AndroidContactsSync;->syncRawContact(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Landroid/net/Uri;)V

    goto/16 :goto_6

    .line 1353
    .restart local v12       #batch:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    :cond_12c
    invoke-static/range {p1 .. p1}, Lcom/google/android/apps/plus/service/AndroidContactsSync;->getRawContactsUri(Lcom/google/android/apps/plus/content/EsAccount;)Landroid/net/Uri;

    move-result-object v19

    goto :goto_df
.end method

.method private static updateStreamItems(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/util/ArrayList;IILjava/util/ArrayList;[I)V
    .registers 32
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/android/apps/plus/content/EsAccount;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/apps/plus/service/AndroidContactsSync$PersonActivityState;",
            ">;II",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;[I)V"
        }
    .end annotation

    .prologue
    .line 2593
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    .line 2596
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 2597
    const-string v2, "activity_id IN ("

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2598
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 2599
    :goto_14
    move/from16 v0, p3

    move/from16 v1, p4

    if-ge v0, v1, :cond_64

    .line 2600
    invoke-virtual/range {p2 .. p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/apps/plus/service/AndroidContactsSync$PersonActivityState;

    .line 2601
    iget-object v3, v2, Lcom/google/android/apps/plus/service/AndroidContactsSync$PersonActivityState;->activities:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_26
    :goto_26
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_61

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/apps/plus/service/AndroidContactsSync$ActivityState;

    .line 2602
    iget-boolean v5, v3, Lcom/google/android/apps/plus/service/AndroidContactsSync$ActivityState;->exists:Z

    if-eqz v5, :cond_26

    iget-boolean v5, v3, Lcom/google/android/apps/plus/service/AndroidContactsSync$ActivityState;->changed:Z

    if-nez v5, :cond_42

    iget-wide v7, v3, Lcom/google/android/apps/plus/service/AndroidContactsSync$ActivityState;->streamItemId:J

    const-wide/16 v11, 0x0

    cmp-long v5, v7, v11

    if-nez v5, :cond_26

    .line 2604
    :cond_42
    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_4d

    .line 2605
    const/16 v5, 0x2c

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2607
    :cond_4d
    const/16 v5, 0x3f

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2608
    iget-object v5, v3, Lcom/google/android/apps/plus/service/AndroidContactsSync$ActivityState;->activityId:Ljava/lang/String;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2609
    iget-wide v7, v2, Lcom/google/android/apps/plus/service/AndroidContactsSync$PersonActivityState;->rawContactId:J

    iput-wide v7, v3, Lcom/google/android/apps/plus/service/AndroidContactsSync$ActivityState;->rawContactId:J

    .line 2610
    iget-object v5, v3, Lcom/google/android/apps/plus/service/AndroidContactsSync$ActivityState;->activityId:Ljava/lang/String;

    invoke-virtual {v9, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_26

    .line 2599
    :cond_61
    add-int/lit8 p3, p3, 0x1

    goto :goto_14

    .line 2615
    :cond_64
    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_6b

    .line 2768
    :cond_6a
    :goto_6a
    return-void

    .line 2619
    :cond_6b
    const/16 v2, 0x29

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2621
    invoke-static/range {p1 .. p1}, Lcom/google/android/apps/plus/service/AndroidContactsSync;->getStreamItemsUri(Lcom/google/android/apps/plus/content/EsAccount;)Landroid/net/Uri;

    move-result-object v11

    .line 2622
    invoke-static/range {p1 .. p1}, Lcom/google/android/apps/plus/service/AndroidContactsSync;->getStreamItemsPhotoUri(Lcom/google/android/apps/plus/content/EsAccount;)Landroid/net/Uri;

    move-result-object v12

    .line 2623
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v13

    .line 2624
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0200cf

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v14

    .line 2625
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070033

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v15

    .line 2626
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 2627
    sget-object v3, Lcom/google/android/apps/plus/content/EsProvider;->ACTIVITIES_URI:Landroid/net/Uri;

    move-object/from16 v0, p1

    invoke-static {v3, v0}, Lcom/google/android/apps/plus/content/EsProvider;->appendAccountParameter(Landroid/net/Uri;Lcom/google/android/apps/plus/content/EsAccount;)Landroid/net/Uri;

    move-result-object v3

    sget-object v4, Lcom/google/android/apps/plus/service/AndroidContactsSync;->ACTIVITY_PROJECTION:[Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/String;

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v16

    .line 2632
    :cond_b2
    :goto_b2
    :try_start_b2
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_2c5

    .line 2633
    const/4 v3, 0x0

    move-object/from16 v0, v16

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 2634
    const/4 v3, 0x1

    move-object/from16 v0, v16

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v4

    .line 2635
    const/4 v3, 0x2

    move-object/from16 v0, v16

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 2636
    const/4 v3, 0x3

    move-object/from16 v0, v16

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v18

    .line 2637
    const/4 v3, 0x4

    move-object/from16 v0, v16

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v19

    .line 2638
    const/4 v3, 0x0

    .line 2639
    if-eqz v4, :cond_2e0

    .line 2640
    invoke-static {v4}, Lcom/google/android/apps/plus/content/DbMedia;->deserialize([B)[Lcom/google/android/apps/plus/content/DbMedia;

    move-result-object v3

    move-object v8, v3

    .line 2643
    :goto_e3
    move-object/from16 v0, v17

    invoke-virtual {v9, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/apps/plus/service/AndroidContactsSync$ActivityState;

    .line 2644
    invoke-virtual/range {p5 .. p5}, Ljava/util/ArrayList;->size()I

    move-result v20

    .line 2646
    iget-wide v4, v3, Lcom/google/android/apps/plus/service/AndroidContactsSync$ActivityState;->streamItemId:J

    const-wide/16 v21, 0x0

    cmp-long v4, v4, v21

    if-nez v4, :cond_27a

    .line 2647
    invoke-static {v11}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/content/ContentProviderOperation$Builder;->withYieldAllowed(Z)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v4

    const-string v5, "raw_contact_id"

    iget-wide v0, v3, Lcom/google/android/apps/plus/service/AndroidContactsSync$ActivityState;->rawContactId:J

    move-wide/from16 v21, v0

    invoke-static/range {v21 .. v22}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v4

    const-string v5, "stream_item_sync1"

    move-object/from16 v0, v17

    invoke-virtual {v4, v5, v0}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v4

    const-string v5, "res_package"

    invoke-virtual {v4, v5, v13}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v4

    const-string v5, "icon"

    invoke-virtual {v4, v5, v14}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v4

    const-string v5, "label"

    invoke-virtual {v4, v5, v15}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v4

    move-object v6, v4

    .line 2660
    :goto_129
    const/4 v5, 0x0

    .line 2661
    const/4 v4, 0x0

    .line 2662
    if-eqz v19, :cond_147

    .line 2663
    invoke-static/range {v19 .. v19}, Lcom/google/android/apps/plus/content/DbExplanation;->deserialize([B)[Lcom/google/wireless/tacotruck/proto/Data$Explanation;

    move-result-object v4

    .line 2664
    invoke-static {v4}, Lcom/google/android/apps/plus/service/AndroidContactsSync;->isCheckin([Lcom/google/wireless/tacotruck/proto/Data$Explanation;)Z

    move-result v19

    if-eqz v19, :cond_147

    .line 2665
    const/16 v19, 0x5

    move-object/from16 v0, v16

    move/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getBlob(I)[B
    :try_end_140
    .catchall {:try_start_b2 .. :try_end_140} :catchall_29f

    move-result-object v19

    .line 2666
    if-eqz v19, :cond_147

    .line 2668
    :try_start_143
    invoke-static/range {v19 .. v19}, Lcom/google/wireless/tacotruck/proto/Data$Location;->parseFrom([B)Lcom/google/wireless/tacotruck/proto/Data$Location;
    :try_end_146
    .catchall {:try_start_143 .. :try_end_146} :catchall_29f
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_143 .. :try_end_146} :catch_2da

    move-result-object v5

    .line 2675
    :cond_147
    :goto_147
    :try_start_147
    move-object/from16 v0, p0

    invoke-static {v0, v8, v4, v5}, Lcom/google/android/apps/plus/service/AndroidContactsSync;->buildStreamItemContentHtml(Landroid/content/Context;[Lcom/google/android/apps/plus/content/DbMedia;[Lcom/google/wireless/tacotruck/proto/Data$Explanation;Lcom/google/wireless/tacotruck/proto/Data$Location;)Ljava/lang/String;

    move-result-object v4

    .line 2678
    const-string v5, "text"

    invoke-virtual {v6, v5, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 2679
    const-string v4, "timestamp"

    iget-wide v0, v3, Lcom/google/android/apps/plus/service/AndroidContactsSync$ActivityState;->created:J

    move-wide/from16 v21, v0

    invoke-static/range {v21 .. v22}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v6, v4, v5}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 2680
    const-string v4, "stream_item_sync2"

    iget-wide v0, v3, Lcom/google/android/apps/plus/service/AndroidContactsSync$ActivityState;->lastModified:J

    move-wide/from16 v21, v0

    invoke-static/range {v21 .. v22}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v6, v4, v5}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 2682
    const/4 v4, 0x0

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 2683
    if-eqz v7, :cond_187

    .line 2684
    const v4, 0x7f020072

    move-object/from16 v0, p0

    invoke-static {v0, v10, v4}, Lcom/google/android/apps/plus/service/AndroidContactsSync;->appendImgTag(Landroid/content/Context;Ljava/lang/StringBuilder;I)V

    .line 2685
    const-string v4, " "

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2686
    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2687
    const-string v4, " "

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_187
    .catchall {:try_start_147 .. :try_end_187} :catchall_29f

    .line 2690
    :cond_187
    if-eqz v18, :cond_1b3

    .line 2692
    :try_start_189
    invoke-static/range {v18 .. v18}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;->parseFrom([B)Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;

    move-result-object v4

    .line 2693
    invoke-virtual {v4}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;->getTotalPlusoneCount()I

    move-result v4

    .line 2694
    if-eqz v4, :cond_1b3

    .line 2695
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    if-eqz v5, :cond_19e

    .line 2696
    const-string v5, "&nbsp;&nbsp;"

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2698
    :cond_19e
    const v5, 0x7f0200ac

    move-object/from16 v0, p0

    invoke-static {v0, v10, v5}, Lcom/google/android/apps/plus/service/AndroidContactsSync;->appendImgTag(Landroid/content/Context;Ljava/lang/StringBuilder;I)V

    .line 2699
    const-string v5, " "

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2700
    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2701
    const-string v4, " "

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1b3
    .catchall {:try_start_189 .. :try_end_1b3} :catchall_29f
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_189 .. :try_end_1b3} :catch_28c

    .line 2710
    :cond_1b3
    :goto_1b3
    :try_start_1b3
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-lez v4, :cond_2a4

    .line 2711
    const-string v4, "comments"

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v4, v5}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 2717
    :goto_1c2
    invoke-virtual {v6}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v4

    move-object/from16 v0, p5

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2719
    const/4 v4, 0x0

    .line 2720
    iget-wide v5, v3, Lcom/google/android/apps/plus/service/AndroidContactsSync$ActivityState;->streamItemId:J

    const-wide/16 v18, 0x0

    cmp-long v5, v5, v18

    if-eqz v5, :cond_2dd

    .line 2721
    invoke-static/range {p1 .. p1}, Lcom/google/android/apps/plus/service/AndroidContactsSync;->getStreamItemsUri(Lcom/google/android/apps/plus/content/EsAccount;)Landroid/net/Uri;

    move-result-object v4

    iget-wide v5, v3, Lcom/google/android/apps/plus/service/AndroidContactsSync$ActivityState;->streamItemId:J

    invoke-static {v4, v5, v6}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    const-string v5, "photo"

    invoke-static {v4, v5}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 2724
    invoke-static {v4}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v5

    move-object/from16 v0, p5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v7, v4

    .line 2727
    :goto_1f2
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-static {v0, v1, v8}, Lcom/google/android/apps/plus/service/AndroidContactsSync;->getStreamItemPhotos(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;[Lcom/google/android/apps/plus/content/DbMedia;)Ljava/util/ArrayList;

    move-result-object v8

    .line 2728
    if-eqz v8, :cond_b2

    .line 2729
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x6

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v18

    .line 2730
    const/4 v4, 0x0

    move v6, v4

    :goto_207
    move/from16 v0, v18

    if-ge v6, v0, :cond_2b2

    .line 2731
    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/apps/plus/service/AndroidContactsSync$ImageContainer;

    .line 2732
    const/4 v5, 0x0

    aget v19, p6, v5

    iget-object v0, v4, Lcom/google/android/apps/plus/service/AndroidContactsSync$ImageContainer;->imageBytes:[B

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v21, v0

    add-int v19, v19, v21

    aput v19, p6, v5

    .line 2734
    iget-wide v0, v3, Lcom/google/android/apps/plus/service/AndroidContactsSync$ActivityState;->streamItemId:J

    move-wide/from16 v21, v0

    const-wide/16 v23, 0x0

    cmp-long v5, v21, v23

    if-nez v5, :cond_2ad

    .line 2735
    invoke-static {v12}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v5

    const-string v19, "stream_item_id"

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v5, v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v5

    .line 2741
    :goto_239
    const-string v19, "stream_item_photo_sync1"

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v5, v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v5

    const-string v19, "sort_index"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v5, v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v5

    const-string v19, "stream_item_photo_sync2"

    iget v0, v4, Lcom/google/android/apps/plus/service/AndroidContactsSync$ImageContainer;->mediaIndex:I

    move/from16 v21, v0

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v5, v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v5

    const-string v19, "photo"

    iget-object v4, v4, Lcom/google/android/apps/plus/service/AndroidContactsSync$ImageContainer;->imageBytes:[B

    move-object/from16 v0, v19

    invoke-virtual {v5, v0, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v4

    move-object/from16 v0, p5

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2730
    add-int/lit8 v4, v6, 0x1

    move v6, v4

    goto :goto_207

    .line 2655
    :cond_27a
    iget-wide v4, v3, Lcom/google/android/apps/plus/service/AndroidContactsSync$ActivityState;->streamItemId:J

    invoke-static {v11, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    invoke-static {v4}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/content/ContentProviderOperation$Builder;->withYieldAllowed(Z)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v4

    move-object v6, v4

    goto/16 :goto_129

    .line 2703
    :catch_28c
    move-exception v4

    .line 2704
    const-string v5, "GooglePlusContactsSync"

    const/4 v7, 0x6

    invoke-static {v5, v7}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_1b3

    .line 2705
    const-string v5, "GooglePlusContactsSync"

    const-string v7, "Could not parse PlusOneData"

    invoke-static {v5, v7, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_29d
    .catchall {:try_start_1b3 .. :try_end_29d} :catchall_29f

    goto/16 :goto_1b3

    .line 2760
    :catchall_29f
    move-exception v2

    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    throw v2

    .line 2714
    :cond_2a4
    :try_start_2a4
    const-string v4, "comments"

    const-string v5, " "

    invoke-virtual {v6, v4, v5}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    goto/16 :goto_1c2

    .line 2739
    :cond_2ad
    invoke-static {v7}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v5

    goto :goto_239

    .line 2749
    :cond_2b2
    const/4 v3, 0x0

    aget v3, p6, v3

    const/high16 v4, 0x4

    if-lt v3, v4, :cond_b2

    .line 2753
    const/4 v3, 0x1

    move-object/from16 v0, p5

    invoke-static {v2, v0, v3}, Lcom/google/android/apps/plus/service/AndroidContactsSync;->flushBatch(Landroid/content/ContentResolver;Ljava/util/ArrayList;Z)[Landroid/content/ContentProviderResult;

    .line 2755
    const/4 v3, 0x0

    const/4 v4, 0x0

    aput v4, p6, v3
    :try_end_2c3
    .catchall {:try_start_2a4 .. :try_end_2c3} :catchall_29f

    goto/16 :goto_b2

    .line 2760
    :cond_2c5
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    .line 2763
    const/4 v3, 0x0

    move-object/from16 v0, p5

    invoke-static {v2, v0, v3}, Lcom/google/android/apps/plus/service/AndroidContactsSync;->flushBatch(Landroid/content/ContentResolver;Ljava/util/ArrayList;Z)[Landroid/content/ContentProviderResult;

    .line 2765
    invoke-virtual/range {p5 .. p5}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_6a

    .line 2766
    const/4 v2, 0x0

    const/4 v3, 0x0

    aput v3, p6, v2

    goto/16 :goto_6a

    .line 2669
    :catch_2da
    move-exception v19

    goto/16 :goto_147

    :cond_2dd
    move-object v7, v4

    goto/16 :goto_1f2

    :cond_2e0
    move-object v8, v3

    goto/16 :goto_e3
.end method
