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

.field private static final CONTACTS_PROJECTION:[Ljava/lang/String;

.field private static final DISPLAY_PHOTO_CONTENT_MAX_DIMENSIONS_URI:Landroid/net/Uri;

.field private static final EMAIL_TYPE_CUSTOM:Ljava/lang/String;

.field private static final EMAIL_TYPE_HOME:Ljava/lang/String;

.field private static final EMAIL_TYPE_OTHER:Ljava/lang/String;

.field private static final EMAIL_TYPE_WORK:Ljava/lang/String;

.field private static ENTITIES_PROJECTION:[Ljava/lang/String;

.field private static final GROUPS_PROJECTION:[Ljava/lang/String;

.field private static final LARGE_AVATAR_RAW_CONTACTS_PROJECTION:[Ljava/lang/String;

.field private static final MY_PROFILE_PROJECTION:[Ljava/lang/String;

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

.field private static sContactsProviderExists:Z

.field private static sContactsProviderStatusKnown:Z

.field private static sMaxStreamItemsPerRawContact:I

.field private static sPhoneTypeMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
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

    const/4 v5, 0x0

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 101
    sget-object v0, Landroid/provider/ContactsContract;->AUTHORITY_URI:Landroid/net/Uri;

    const-string v1, "profile/raw_contacts"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/plus/service/AndroidContactsSync;->PROFILE_CONTENT_RAW_CONTACTS_URI:Landroid/net/Uri;

    .line 105
    sget-object v0, Landroid/provider/ContactsContract;->AUTHORITY_URI:Landroid/net/Uri;

    const-string v1, "stream_items"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/plus/service/AndroidContactsSync;->STREAM_ITEMS_URI:Landroid/net/Uri;

    .line 121
    sget-object v0, Landroid/provider/ContactsContract;->AUTHORITY_URI:Landroid/net/Uri;

    const-string v1, "stream_items_limit"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/plus/service/AndroidContactsSync;->STREAM_ITEMS_CONTENT_LIMIT_URI:Landroid/net/Uri;

    .line 182
    sget-object v0, Landroid/provider/ContactsContract;->AUTHORITY_URI:Landroid/net/Uri;

    const-string v1, "stream_items/photo"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/plus/service/AndroidContactsSync;->STREAM_ITEMS_PHOTO_URI:Landroid/net/Uri;

    .line 189
    sget-object v0, Landroid/provider/ContactsContract;->AUTHORITY_URI:Landroid/net/Uri;

    const-string v1, "photo_dimensions"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/plus/service/AndroidContactsSync;->DISPLAY_PHOTO_CONTENT_MAX_DIMENSIONS_URI:Landroid/net/Uri;

    .line 331
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v5

    const-string v1, "sourceid"

    aput-object v1, v0, v3

    const-string v1, "sync1"

    aput-object v1, v0, v4

    sput-object v0, Lcom/google/android/apps/plus/service/AndroidContactsSync;->RAW_CONTACT_PROJECTION:[Ljava/lang/String;

    .line 339
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "name"

    aput-object v1, v0, v5

    const-string v1, "last_updated_time"

    aput-object v1, v0, v3

    const-string v1, "contact_proto"

    aput-object v1, v0, v4

    sput-object v0, Lcom/google/android/apps/plus/service/AndroidContactsSync;->MY_PROFILE_PROJECTION:[Ljava/lang/String;

    .line 350
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "person_id"

    aput-object v1, v0, v5

    const-string v1, "last_updated_time"

    aput-object v1, v0, v3

    const-string v1, "for_sharing"

    aput-object v1, v0, v4

    sput-object v0, Lcom/google/android/apps/plus/service/AndroidContactsSync;->CONTACTS_PROJECTION:[Ljava/lang/String;

    .line 360
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "person_id"

    aput-object v1, v0, v5

    const-string v1, "name"

    aput-object v1, v0, v3

    const-string v1, "contact_proto"

    aput-object v1, v0, v4

    sput-object v0, Lcom/google/android/apps/plus/service/AndroidContactsSync;->PROFILE_PROJECTION:[Ljava/lang/String;

    .line 371
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "sourceid"

    aput-object v1, v0, v5

    const-string v1, "mimetype"

    aput-object v1, v0, v3

    const-string v1, "data_id"

    aput-object v1, v0, v4

    const-string v1, "data1"

    aput-object v1, v0, v6

    const-string v1, "data2"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "data3"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/apps/plus/service/AndroidContactsSync;->ENTITIES_PROJECTION:[Ljava/lang/String;

    .line 387
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v5

    const-string v1, "sync1"

    aput-object v1, v0, v3

    sput-object v0, Lcom/google/android/apps/plus/service/AndroidContactsSync;->PROFILE_RAW_CONTACT_PROJECTION:[Ljava/lang/String;

    .line 395
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "mimetype"

    aput-object v1, v0, v5

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "data1"

    aput-object v1, v0, v4

    const-string v1, "data2"

    aput-object v1, v0, v6

    const-string v1, "data3"

    aput-object v1, v0, v7

    sput-object v0, Lcom/google/android/apps/plus/service/AndroidContactsSync;->PROFILE_ENTITIES_PROJECTION:[Ljava/lang/String;

    .line 409
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/plus/service/AndroidContactsSync;->EMAIL_TYPE_HOME:Ljava/lang/String;

    .line 410
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/plus/service/AndroidContactsSync;->EMAIL_TYPE_WORK:Ljava/lang/String;

    .line 411
    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/plus/service/AndroidContactsSync;->EMAIL_TYPE_OTHER:Ljava/lang/String;

    .line 412
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/plus/service/AndroidContactsSync;->EMAIL_TYPE_CUSTOM:Ljava/lang/String;

    .line 414
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/plus/service/AndroidContactsSync;->POSTAL_TYPE_HOME:Ljava/lang/String;

    .line 415
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/plus/service/AndroidContactsSync;->POSTAL_TYPE_WORK:Ljava/lang/String;

    .line 416
    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/plus/service/AndroidContactsSync;->POSTAL_TYPE_OTHER:Ljava/lang/String;

    .line 417
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/plus/service/AndroidContactsSync;->POSTAL_TYPE_CUSTOM:Ljava/lang/String;

    .line 419
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/plus/service/AndroidContactsSync;->PHONE_TYPE_HOME:Ljava/lang/String;

    .line 420
    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/plus/service/AndroidContactsSync;->PHONE_TYPE_WORK:Ljava/lang/String;

    .line 421
    const/4 v0, 0x7

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/plus/service/AndroidContactsSync;->PHONE_TYPE_OTHER:Ljava/lang/String;

    .line 422
    const/4 v0, 0x5

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/plus/service/AndroidContactsSync;->PHONE_TYPE_HOME_FAX:Ljava/lang/String;

    .line 423
    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/plus/service/AndroidContactsSync;->PHONE_TYPE_WORK_FAX:Ljava/lang/String;

    .line 424
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/plus/service/AndroidContactsSync;->PHONE_TYPE_MOBILE:Ljava/lang/String;

    .line 425
    const/4 v0, 0x6

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/plus/service/AndroidContactsSync;->PHONE_TYPE_PAGER:Ljava/lang/String;

    .line 426
    const/16 v0, 0xd

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/plus/service/AndroidContactsSync;->PHONE_TYPE_OTHER_FAX:Ljava/lang/String;

    .line 427
    const/16 v0, 0xa

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/plus/service/AndroidContactsSync;->PHONE_TYPE_COMPANY_MAIN:Ljava/lang/String;

    .line 428
    const/16 v0, 0x13

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/plus/service/AndroidContactsSync;->PHONE_TYPE_ASSISTANT:Ljava/lang/String;

    .line 429
    const/16 v0, 0x9

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/plus/service/AndroidContactsSync;->PHONE_TYPE_CAR:Ljava/lang/String;

    .line 430
    const/16 v0, 0xe

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/plus/service/AndroidContactsSync;->PHONE_TYPE_RADIO:Ljava/lang/String;

    .line 431
    const/16 v0, 0xb

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/plus/service/AndroidContactsSync;->PHONE_TYPE_ISDN:Ljava/lang/String;

    .line 432
    const/16 v0, 0x8

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/plus/service/AndroidContactsSync;->PHONE_TYPE_CALLBACK:Ljava/lang/String;

    .line 433
    const/16 v0, 0xf

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/plus/service/AndroidContactsSync;->PHONE_TYPE_TELEX:Ljava/lang/String;

    .line 434
    const/16 v0, 0x10

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/plus/service/AndroidContactsSync;->PHONE_TYPE_TTY_TDD:Ljava/lang/String;

    .line 435
    const/16 v0, 0x11

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/plus/service/AndroidContactsSync;->PHONE_TYPE_WORK_MOBILE:Ljava/lang/String;

    .line 436
    const/16 v0, 0x12

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/plus/service/AndroidContactsSync;->PHONE_TYPE_WORK_PAGER:Ljava/lang/String;

    .line 437
    const/16 v0, 0xc

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/plus/service/AndroidContactsSync;->PHONE_TYPE_MAIN:Ljava/lang/String;

    .line 438
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/plus/service/AndroidContactsSync;->PHONE_TYPE_CUSTOM:Ljava/lang/String;

    .line 446
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/google/android/apps/plus/service/AndroidContactsSync;->sPhoneTypeMap:Landroid/util/SparseArray;

    .line 447
    sget-object v0, Lcom/google/android/apps/plus/service/AndroidContactsSync;->sPhoneTypeMap:Landroid/util/SparseArray;

    sget-object v1, Lcom/google/android/apps/plus/service/AndroidContactsSync;->PHONE_TYPE_HOME:Ljava/lang/String;

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 448
    sget-object v0, Lcom/google/android/apps/plus/service/AndroidContactsSync;->sPhoneTypeMap:Landroid/util/SparseArray;

    sget-object v1, Lcom/google/android/apps/plus/service/AndroidContactsSync;->PHONE_TYPE_WORK:Ljava/lang/String;

    invoke-virtual {v0, v4, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 449
    sget-object v0, Lcom/google/android/apps/plus/service/AndroidContactsSync;->sPhoneTypeMap:Landroid/util/SparseArray;

    sget-object v1, Lcom/google/android/apps/plus/service/AndroidContactsSync;->PHONE_TYPE_OTHER:Ljava/lang/String;

    invoke-virtual {v0, v6, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 450
    sget-object v0, Lcom/google/android/apps/plus/service/AndroidContactsSync;->sPhoneTypeMap:Landroid/util/SparseArray;

    sget-object v1, Lcom/google/android/apps/plus/service/AndroidContactsSync;->PHONE_TYPE_HOME_FAX:Ljava/lang/String;

    invoke-virtual {v0, v7, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 451
    sget-object v0, Lcom/google/android/apps/plus/service/AndroidContactsSync;->sPhoneTypeMap:Landroid/util/SparseArray;

    const/4 v1, 0x5

    sget-object v2, Lcom/google/android/apps/plus/service/AndroidContactsSync;->PHONE_TYPE_WORK_FAX:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 452
    sget-object v0, Lcom/google/android/apps/plus/service/AndroidContactsSync;->sPhoneTypeMap:Landroid/util/SparseArray;

    const/4 v1, 0x6

    sget-object v2, Lcom/google/android/apps/plus/service/AndroidContactsSync;->PHONE_TYPE_MOBILE:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 453
    sget-object v0, Lcom/google/android/apps/plus/service/AndroidContactsSync;->sPhoneTypeMap:Landroid/util/SparseArray;

    const/4 v1, 0x7

    sget-object v2, Lcom/google/android/apps/plus/service/AndroidContactsSync;->PHONE_TYPE_PAGER:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 454
    sget-object v0, Lcom/google/android/apps/plus/service/AndroidContactsSync;->sPhoneTypeMap:Landroid/util/SparseArray;

    const/16 v1, 0x8

    sget-object v2, Lcom/google/android/apps/plus/service/AndroidContactsSync;->PHONE_TYPE_OTHER_FAX:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 455
    sget-object v0, Lcom/google/android/apps/plus/service/AndroidContactsSync;->sPhoneTypeMap:Landroid/util/SparseArray;

    const/16 v1, 0x9

    sget-object v2, Lcom/google/android/apps/plus/service/AndroidContactsSync;->PHONE_TYPE_COMPANY_MAIN:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 456
    sget-object v0, Lcom/google/android/apps/plus/service/AndroidContactsSync;->sPhoneTypeMap:Landroid/util/SparseArray;

    const/16 v1, 0xa

    sget-object v2, Lcom/google/android/apps/plus/service/AndroidContactsSync;->PHONE_TYPE_ASSISTANT:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 457
    sget-object v0, Lcom/google/android/apps/plus/service/AndroidContactsSync;->sPhoneTypeMap:Landroid/util/SparseArray;

    const/16 v1, 0xb

    sget-object v2, Lcom/google/android/apps/plus/service/AndroidContactsSync;->PHONE_TYPE_CAR:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 458
    sget-object v0, Lcom/google/android/apps/plus/service/AndroidContactsSync;->sPhoneTypeMap:Landroid/util/SparseArray;

    const/16 v1, 0xc

    sget-object v2, Lcom/google/android/apps/plus/service/AndroidContactsSync;->PHONE_TYPE_RADIO:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 459
    sget-object v0, Lcom/google/android/apps/plus/service/AndroidContactsSync;->sPhoneTypeMap:Landroid/util/SparseArray;

    const/16 v1, 0xd

    sget-object v2, Lcom/google/android/apps/plus/service/AndroidContactsSync;->PHONE_TYPE_ISDN:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 460
    sget-object v0, Lcom/google/android/apps/plus/service/AndroidContactsSync;->sPhoneTypeMap:Landroid/util/SparseArray;

    const/16 v1, 0xe

    sget-object v2, Lcom/google/android/apps/plus/service/AndroidContactsSync;->PHONE_TYPE_CALLBACK:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 461
    sget-object v0, Lcom/google/android/apps/plus/service/AndroidContactsSync;->sPhoneTypeMap:Landroid/util/SparseArray;

    const/16 v1, 0xf

    sget-object v2, Lcom/google/android/apps/plus/service/AndroidContactsSync;->PHONE_TYPE_TELEX:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 462
    sget-object v0, Lcom/google/android/apps/plus/service/AndroidContactsSync;->sPhoneTypeMap:Landroid/util/SparseArray;

    const/16 v1, 0x10

    sget-object v2, Lcom/google/android/apps/plus/service/AndroidContactsSync;->PHONE_TYPE_TTY_TDD:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 463
    sget-object v0, Lcom/google/android/apps/plus/service/AndroidContactsSync;->sPhoneTypeMap:Landroid/util/SparseArray;

    const/16 v1, 0x11

    sget-object v2, Lcom/google/android/apps/plus/service/AndroidContactsSync;->PHONE_TYPE_WORK_MOBILE:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 464
    sget-object v0, Lcom/google/android/apps/plus/service/AndroidContactsSync;->sPhoneTypeMap:Landroid/util/SparseArray;

    const/16 v1, 0x12

    sget-object v2, Lcom/google/android/apps/plus/service/AndroidContactsSync;->PHONE_TYPE_WORK_PAGER:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 465
    sget-object v0, Lcom/google/android/apps/plus/service/AndroidContactsSync;->sPhoneTypeMap:Landroid/util/SparseArray;

    const/16 v1, 0x13

    sget-object v2, Lcom/google/android/apps/plus/service/AndroidContactsSync;->PHONE_TYPE_MAIN:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 472
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v5

    const-string v1, "sourceid"

    aput-object v1, v0, v3

    const-string v1, "title"

    aput-object v1, v0, v4

    sput-object v0, Lcom/google/android/apps/plus/service/AndroidContactsSync;->GROUPS_PROJECTION:[Ljava/lang/String;

    .line 491
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v5

    const-string v1, "sourceid"

    aput-object v1, v0, v3

    const-string v1, "sync2"

    aput-object v1, v0, v4

    sput-object v0, Lcom/google/android/apps/plus/service/AndroidContactsSync;->LARGE_AVATAR_RAW_CONTACTS_PROJECTION:[Ljava/lang/String;

    .line 507
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "user_id"

    aput-object v1, v0, v5

    const-string v1, "signature"

    aput-object v1, v0, v3

    sput-object v0, Lcom/google/android/apps/plus/service/AndroidContactsSync;->AVATAR_SIGNATURE_PROJECTION:[Ljava/lang/String;

    .line 519
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v5

    const-string v1, "sourceid"

    aput-object v1, v0, v3

    const-string v1, "data_id"

    aput-object v1, v0, v4

    const-string v1, "mimetype"

    aput-object v1, v0, v6

    const-string v1, "sync3"

    aput-object v1, v0, v7

    sput-object v0, Lcom/google/android/apps/plus/service/AndroidContactsSync;->THUMBNAILS_RAW_CONTACT_PROJECTION:[Ljava/lang/String;

    .line 539
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "user_id"

    aput-object v1, v0, v5

    const-string v1, "medium_image"

    aput-object v1, v0, v3

    sput-object v0, Lcom/google/android/apps/plus/service/AndroidContactsSync;->THUMBNAILS_AVATAR_PROJECTION:[Ljava/lang/String;

    .line 555
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v5

    const-string v1, "sourceid"

    aput-object v1, v0, v3

    sput-object v0, Lcom/google/android/apps/plus/service/AndroidContactsSync;->RAW_CONTACT_SOURCE_ID_PROJECTION:[Ljava/lang/String;

    .line 566
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v5

    const-string v1, "raw_contact_source_id"

    aput-object v1, v0, v3

    const-string v1, "stream_item_sync1"

    aput-object v1, v0, v4

    const-string v1, "timestamp"

    aput-object v1, v0, v6

    const-string v1, "stream_item_sync2"

    aput-object v1, v0, v7

    sput-object v0, Lcom/google/android/apps/plus/service/AndroidContactsSync;->STREAM_ITEMS_PROJECTION:[Ljava/lang/String;

    .line 586
    new-array v0, v7, [Ljava/lang/String;

    const-string v1, "activity_id"

    aput-object v1, v0, v5

    const-string v1, "author_id"

    aput-object v1, v0, v3

    const-string v1, "created"

    aput-object v1, v0, v4

    const-string v1, "modified"

    aput-object v1, v0, v6

    sput-object v0, Lcom/google/android/apps/plus/service/AndroidContactsSync;->ACTIVITY_SUMMARY_PROJECTION:[Ljava/lang/String;

    .line 601
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "activity_id"

    aput-object v1, v0, v5

    const-string v1, "media"

    aput-object v1, v0, v3

    const-string v1, "total_comment_count"

    aput-object v1, v0, v4

    const-string v1, "plus_one_data"

    aput-object v1, v0, v6

    const-string v1, "explanations"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "loc"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/apps/plus/service/AndroidContactsSync;->ACTIVITY_PROJECTION:[Ljava/lang/String;

    .line 627
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v5

    const-string v1, "account_type"

    aput-object v1, v0, v3

    const-string v1, "account_name"

    aput-object v1, v0, v4

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

    .line 692
    new-instance v0, Lcom/google/android/apps/plus/service/AndroidContactsSync$1;

    invoke-direct {v0}, Lcom/google/android/apps/plus/service/AndroidContactsSync$1;-><init>()V

    sput-object v0, Lcom/google/android/apps/plus/service/AndroidContactsSync;->ACTIVITY_STATE_COMPARATOR:Ljava/util/Comparator;

    return-void
.end method

.method static synthetic access$500(Lcom/google/android/apps/plus/content/EsAccount;)Landroid/net/Uri;
    .registers 2
    .parameter "x0"

    .prologue
    .line 86
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
    .line 1557
    new-instance v0, Lcom/google/android/apps/plus/service/AndroidContactsSync$DataState;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/apps/plus/service/AndroidContactsSync$DataState;-><init>(Lcom/google/android/apps/plus/service/AndroidContactsSync$1;)V

    .line 1558
    .local v0, dataState:Lcom/google/android/apps/plus/service/AndroidContactsSync$DataState;
    iput-object p1, v0, Lcom/google/android/apps/plus/service/AndroidContactsSync$DataState;->mimetype:Ljava/lang/String;

    .line 1559
    iput-object p2, v0, Lcom/google/android/apps/plus/service/AndroidContactsSync$DataState;->data1:Ljava/lang/String;

    .line 1560
    iget-object v1, p0, Lcom/google/android/apps/plus/service/AndroidContactsSync$RawContactState;->data:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1561
    return-object v0
.end method

.method private static appendImgTag(Landroid/content/Context;Ljava/lang/StringBuilder;I)V
    .registers 5
    .parameter "context"
    .parameter "sb"
    .parameter "resId"

    .prologue
    .line 3010
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

    .line 3012
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
            "Ljava/lang/String;",
            "Lcom/google/android/apps/plus/service/AndroidContactsSync$PersonActivityState;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, stateMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/google/android/apps/plus/service/AndroidContactsSync$PersonActivityState;>;"
    const/4 v10, 0x1

    const/4 v1, 0x0

    .line 2640
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    .line 2641
    .local v8, resolver:Landroid/content/ContentResolver;
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 2642
    .local v5, batch:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 2644
    .local v2, stateList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/android/apps/plus/service/AndroidContactsSync$PersonActivityState;>;"
    new-array v6, v10, [I

    aput v1, v6, v1

    .line 2645
    .local v6, totalImageBytes:[I
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v9

    .line 2646
    .local v9, size:I
    const/4 v3, 0x0

    .line 2647
    .local v3, offset:I
    :goto_1d
    if-ge v3, v9, :cond_46

    .line 2648
    add-int/lit8 v4, v3, 0x20

    .line 2649
    .local v4, to:I
    if-le v4, v9, :cond_24

    .line 2650
    move v4, v9

    .line 2653
    :cond_24
    const-string v0, "GooglePlusContactsSync"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 2654
    move v7, v3

    .local v7, i:I
    :goto_2e
    if-ge v7, v4, :cond_3c

    .line 2655
    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/plus/service/AndroidContactsSync$PersonActivityState;

    invoke-static {v0}, Lcom/google/android/apps/plus/service/AndroidContactsSync;->dumpPersonActivityState(Lcom/google/android/apps/plus/service/AndroidContactsSync$PersonActivityState;)V

    .line 2654
    add-int/lit8 v7, v7, 0x1

    goto :goto_2e

    .line 2659
    .end local v7           #i:I
    :cond_3c
    invoke-static {p1, v2, v3, v4, v5}, Lcom/google/android/apps/plus/service/AndroidContactsSync;->deleteObsoleteStreamItems(Lcom/google/android/apps/plus/content/EsAccount;Ljava/util/ArrayList;IILjava/util/ArrayList;)V

    move-object v0, p0

    move-object v1, p1

    .line 2660
    invoke-static/range {v0 .. v6}, Lcom/google/android/apps/plus/service/AndroidContactsSync;->updateStreamItems(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/util/ArrayList;IILjava/util/ArrayList;[I)V

    .line 2661
    move v3, v4

    .line 2662
    goto :goto_1d

    .line 2664
    .end local v4           #to:I
    :cond_46
    invoke-static {v8, v5, v10}, Lcom/google/android/apps/plus/service/AndroidContactsSync;->flushBatch(Landroid/content/ContentResolver;Ljava/util/ArrayList;Z)[Landroid/content/ContentProviderResult;

    .line 2665
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
    .line 989
    .local p2, stateMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/google/android/apps/plus/service/AndroidContactsSync$CircleState;>;"
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 990
    .local v3, resolver:Landroid/content/ContentResolver;
    invoke-static {p1}, Lcom/google/android/apps/plus/service/AndroidContactsSync;->getGroupsUri(Lcom/google/android/apps/plus/content/EsAccount;)Landroid/net/Uri;

    move-result-object v1

    .line 991
    .local v1, groupsUri:Landroid/net/Uri;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 992
    .local v0, batch:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    invoke-virtual {p2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_15
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_a9

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/apps/plus/service/AndroidContactsSync$CircleState;

    .line 993
    .local v4, state:Lcom/google/android/apps/plus/service/AndroidContactsSync$CircleState;
    const-string v6, "GooglePlusContactsSync"

    const/4 v7, 0x3

    invoke-static {v6, v7}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_2d

    .line 994
    invoke-static {v4}, Lcom/google/android/apps/plus/service/AndroidContactsSync;->dumpCircleState(Lcom/google/android/apps/plus/service/AndroidContactsSync$CircleState;)V

    .line 997
    :cond_2d
    iget-boolean v6, v4, Lcom/google/android/apps/plus/service/AndroidContactsSync$CircleState;->exists:Z

    if-eqz v6, :cond_60

    iget-wide v6, v4, Lcom/google/android/apps/plus/service/AndroidContactsSync$CircleState;->groupId:J

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-nez v6, :cond_60

    .line 998
    invoke-static {v1}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v6

    const-string v7, "sourceid"

    iget-object v8, v4, Lcom/google/android/apps/plus/service/AndroidContactsSync$CircleState;->circleId:Ljava/lang/String;

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v6

    const-string v7, "title"

    iget-object v8, v4, Lcom/google/android/apps/plus/service/AndroidContactsSync$CircleState;->circleName:Ljava/lang/String;

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v6

    const-string v7, "group_is_read_only"

    const/4 v8, 0x1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_15

    .line 1003
    :cond_60
    iget-boolean v6, v4, Lcom/google/android/apps/plus/service/AndroidContactsSync$CircleState;->changed:Z

    if-eqz v6, :cond_8a

    .line 1004
    invoke-static {v1}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v6

    const-string v7, "_id=?"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    iget-wide v10, v4, Lcom/google/android/apps/plus/service/AndroidContactsSync$CircleState;->groupId:J

    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v6

    const-string v7, "title"

    iget-object v8, v4, Lcom/google/android/apps/plus/service/AndroidContactsSync$CircleState;->circleName:Ljava/lang/String;

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_15

    .line 1010
    :cond_8a
    invoke-static {v1}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v6

    const-string v7, "_id=?"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    iget-wide v10, v4, Lcom/google/android/apps/plus/service/AndroidContactsSync$CircleState;->groupId:J

    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_15

    .line 1017
    .end local v4           #state:Lcom/google/android/apps/plus/service/AndroidContactsSync$CircleState;
    :cond_a9
    const/4 v6, 0x1

    invoke-static {v3, v0, v6}, Lcom/google/android/apps/plus/service/AndroidContactsSync;->flushBatch(Landroid/content/ContentResolver;Ljava/util/ArrayList;Z)[Landroid/content/ContentProviderResult;

    .line 1021
    invoke-virtual {p2}, Ljava/util/HashMap;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_cb

    .line 1022
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .line 1023
    .local v5, values:Landroid/content/ContentValues;
    const-string v6, "sync1"

    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1024
    invoke-static {p1}, Lcom/google/android/apps/plus/service/AndroidContactsSync;->getRawContactsUri(Lcom/google/android/apps/plus/content/EsAccount;)Landroid/net/Uri;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v3, v6, v5, v7, v8}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1026
    .end local v5           #values:Landroid/content/ContentValues;
    :cond_cb
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
    .line 1224
    .local p2, stateMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/google/android/apps/plus/service/AndroidContactsSync$RawContactState;>;"
    .local p3, circleIdMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Long;>;"
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 1225
    .local v1, resolver:Landroid/content/ContentResolver;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1227
    .local v0, batch:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    invoke-static {v1, p1, p2, v0}, Lcom/google/android/apps/plus/service/AndroidContactsSync;->deleteRemovedContacts(Landroid/content/ContentResolver;Lcom/google/android/apps/plus/content/EsAccount;Ljava/util/HashMap;Ljava/util/ArrayList;)V

    .line 1228
    invoke-static {p0, p1, p2, v0, p3}, Lcom/google/android/apps/plus/service/AndroidContactsSync;->insertNewContacts(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/util/HashMap;Ljava/util/ArrayList;Ljava/util/HashMap;)V

    .line 1229
    invoke-static {p0, p1, p2, v0, p3}, Lcom/google/android/apps/plus/service/AndroidContactsSync;->updateChangedContacts(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/util/HashMap;Ljava/util/ArrayList;Ljava/util/HashMap;)V

    .line 1231
    const/4 v2, 0x1

    invoke-static {v1, v0, v2}, Lcom/google/android/apps/plus/service/AndroidContactsSync;->flushBatch(Landroid/content/ContentResolver;Ljava/util/ArrayList;Z)[Landroid/content/ContentProviderResult;

    .line 1232
    return-void
.end method

.method private static buildContentProviderOperations(Landroid/content/Context;Landroid/net/Uri;Ljava/util/ArrayList;Lcom/google/android/apps/plus/service/AndroidContactsSync$RawContactState;Z)V
    .registers 17
    .parameter "context"
    .parameter "rawContactsUri"
    .parameter
    .parameter "state"
    .parameter "myProfile"
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
            "Z)V"
        }
    .end annotation

    .prologue
    .line 1659
    .local p2, batch:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    const-string v6, "GooglePlusContactsSync"

    const/4 v7, 0x3

    invoke-static {v6, v7}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_c

    .line 1660
    invoke-static {p3}, Lcom/google/android/apps/plus/service/AndroidContactsSync;->dumpRawContactState(Lcom/google/android/apps/plus/service/AndroidContactsSync$RawContactState;)V

    .line 1663
    :cond_c
    const/4 v5, 0x0

    .line 1664
    .local v5, rawContactBackReference:I
    iget-wide v6, p3, Lcom/google/android/apps/plus/service/AndroidContactsSync$RawContactState;->rawContactId:J

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-nez v6, :cond_1d7

    .line 1665
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 1666
    invoke-static {p1}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/content/ContentProviderOperation$Builder;->withYieldAllowed(Z)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v6

    const-string v7, "sourceid"

    iget-object v8, p3, Lcom/google/android/apps/plus/service/AndroidContactsSync$RawContactState;->personId:Ljava/lang/String;

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v6

    const-string v7, "sync1"

    iget-wide v8, p3, Lcom/google/android/apps/plus/service/AndroidContactsSync$RawContactState;->lastUpdateTime:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v6

    const-string v7, "raw_contact_is_read_only"

    const/4 v8, 0x1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1672
    sget-object v6, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v6}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v6

    const-string v7, "raw_contact_id"

    invoke-virtual {v6, v7, v5}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v6

    const-string v7, "mimetype"

    const-string v8, "vnd.android.cursor.item/name"

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v6

    const-string v7, "data1"

    iget-object v8, p3, Lcom/google/android/apps/plus/service/AndroidContactsSync$RawContactState;->fullName:Ljava/lang/String;

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1677
    if-nez p4, :cond_121

    .line 1678
    sget-object v6, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v6}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v6

    const-string v7, "raw_contact_id"

    invoke-virtual {v6, v7, v5}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v6

    const-string v7, "mimetype"

    const-string v8, "vnd.android.cursor.item/vnd.googleplus.profile"

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v6

    const-string v7, "data4"

    const/16 v8, 0xa

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v6

    const-string v7, "data5"

    const-string v8, "conversation"

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v6

    const-string v7, "data3"

    const v8, 0x7f0802fd

    invoke-virtual {p0, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1687
    sget-object v6, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v6}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v6

    const-string v7, "raw_contact_id"

    invoke-virtual {v6, v7, v5}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v6

    const-string v7, "mimetype"

    const-string v8, "vnd.android.cursor.item/vnd.googleplus.profile"

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v6

    const-string v7, "data4"

    const/16 v8, 0xe

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v6

    const-string v7, "data5"

    const-string v8, "hangout"

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v6

    const-string v7, "data3"

    const v8, 0x7f0802fe

    invoke-virtual {p0, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1696
    sget-object v6, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v6}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v6

    const-string v7, "raw_contact_id"

    invoke-virtual {v6, v7, v5}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v6

    const-string v7, "mimetype"

    const-string v8, "vnd.android.cursor.item/vnd.googleplus.profile"

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v6

    const-string v7, "data4"

    const/16 v8, 0x14

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v6

    const-string v7, "data5"

    const-string v8, "addtocircle"

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v6

    const-string v7, "data3"

    const v8, 0x7f0802ff

    invoke-virtual {p0, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1705
    :cond_121
    sget-object v6, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v6}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v6

    const-string v7, "raw_contact_id"

    invoke-virtual {v6, v7, v5}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v6

    const-string v7, "mimetype"

    const-string v8, "vnd.android.cursor.item/vnd.googleplus.profile"

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v6

    const-string v7, "data4"

    const/16 v8, 0x1e

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v6

    const-string v7, "data5"

    const-string v8, "view"

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v6

    const-string v7, "data3"

    const v8, 0x7f0802fb

    invoke-virtual {p0, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1713
    iget-object v6, p3, Lcom/google/android/apps/plus/service/AndroidContactsSync$RawContactState;->personId:Ljava/lang/String;

    invoke-static {v6}, Lcom/google/android/apps/plus/content/EsPeopleData;->extractGaiaId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1714
    .local v3, gaiaId:Ljava/lang/String;
    if-eqz v3, :cond_1a1

    .line 1715
    sget-object v6, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v6}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v6

    const-string v7, "raw_contact_id"

    invoke-virtual {v6, v7, v5}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v6

    const-string v7, "mimetype"

    const-string v8, "vnd.android.cursor.item/identity"

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v6

    const-string v7, "data2"

    const-string v8, "com.google"

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v6

    const-string v7, "data1"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "gprofile:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1731
    .end local v3           #gaiaId:Ljava/lang/String;
    :cond_1a1
    :goto_1a1
    iget-object v6, p3, Lcom/google/android/apps/plus/service/AndroidContactsSync$RawContactState;->data:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :cond_1a7
    :goto_1a7
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_26a

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/apps/plus/service/AndroidContactsSync$DataState;

    .line 1733
    .local v2, dataState:Lcom/google/android/apps/plus/service/AndroidContactsSync$DataState;
    iget-boolean v6, v2, Lcom/google/android/apps/plus/service/AndroidContactsSync$DataState;->exists:Z

    if-nez v6, :cond_206

    .line 1734
    sget-object v6, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v6}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v6

    const-string v7, "_id=?"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    iget-wide v10, v2, Lcom/google/android/apps/plus/service/AndroidContactsSync$DataState;->dataId:J

    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v1

    .line 1763
    .local v1, cpo:Landroid/content/ContentProviderOperation;
    :goto_1d3
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1a7

    .line 1723
    .end local v1           #cpo:Landroid/content/ContentProviderOperation;
    .end local v2           #dataState:Lcom/google/android/apps/plus/service/AndroidContactsSync$DataState;
    .end local v4           #i$:Ljava/util/Iterator;
    :cond_1d7
    invoke-static {p1}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/content/ContentProviderOperation$Builder;->withYieldAllowed(Z)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v6

    const-string v7, "_id=?"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    iget-wide v10, p3, Lcom/google/android/apps/plus/service/AndroidContactsSync$RawContactState;->rawContactId:J

    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v6

    const-string v7, "sync1"

    iget-wide v8, p3, Lcom/google/android/apps/plus/service/AndroidContactsSync$RawContactState;->lastUpdateTime:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1a1

    .line 1740
    .restart local v2       #dataState:Lcom/google/android/apps/plus/service/AndroidContactsSync$DataState;
    .restart local v4       #i$:Ljava/util/Iterator;
    :cond_206
    iget-wide v6, v2, Lcom/google/android/apps/plus/service/AndroidContactsSync$DataState;->dataId:J

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-nez v6, :cond_24e

    .line 1741
    sget-object v6, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v6}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 1742
    .local v0, builder:Landroid/content/ContentProviderOperation$Builder;
    const-string v6, "mimetype"

    iget-object v7, v2, Lcom/google/android/apps/plus/service/AndroidContactsSync$DataState;->mimetype:Ljava/lang/String;

    invoke-virtual {v0, v6, v7}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1743
    iget-wide v6, p3, Lcom/google/android/apps/plus/service/AndroidContactsSync$RawContactState;->rawContactId:J

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-nez v6, :cond_242

    .line 1744
    const-string v6, "raw_contact_id"

    invoke-virtual {v0, v6, v5}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    .line 1757
    :goto_228
    const-string v6, "data1"

    iget-object v7, v2, Lcom/google/android/apps/plus/service/AndroidContactsSync$DataState;->data1:Ljava/lang/String;

    invoke-virtual {v0, v6, v7}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1758
    const-string v6, "data2"

    iget-object v7, v2, Lcom/google/android/apps/plus/service/AndroidContactsSync$DataState;->data2:Ljava/lang/String;

    invoke-virtual {v0, v6, v7}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1759
    const-string v6, "data3"

    iget-object v7, v2, Lcom/google/android/apps/plus/service/AndroidContactsSync$DataState;->data3:Ljava/lang/String;

    invoke-virtual {v0, v6, v7}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1760
    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v1

    .restart local v1       #cpo:Landroid/content/ContentProviderOperation;
    goto :goto_1d3

    .line 1747
    .end local v1           #cpo:Landroid/content/ContentProviderOperation;
    :cond_242
    const-string v6, "raw_contact_id"

    iget-wide v7, p3, Lcom/google/android/apps/plus/service/AndroidContactsSync$RawContactState;->rawContactId:J

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    goto :goto_228

    .line 1749
    .end local v0           #builder:Landroid/content/ContentProviderOperation$Builder;
    :cond_24e
    iget-boolean v6, v2, Lcom/google/android/apps/plus/service/AndroidContactsSync$DataState;->changed:Z

    if-eqz v6, :cond_1a7

    .line 1750
    sget-object v6, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v6}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 1751
    .restart local v0       #builder:Landroid/content/ContentProviderOperation$Builder;
    const-string v6, "_id=?"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    iget-wide v9, v2, Lcom/google/android/apps/plus/service/AndroidContactsSync$DataState;->dataId:J

    invoke-static {v9, v10}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-virtual {v0, v6, v7}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    goto :goto_228

    .line 1765
    .end local v0           #builder:Landroid/content/ContentProviderOperation$Builder;
    .end local v2           #dataState:Lcom/google/android/apps/plus/service/AndroidContactsSync$DataState;
    :cond_26a
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
    .line 1647
    .local p2, batch:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    .local p4, stateMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/google/android/apps/plus/service/AndroidContactsSync$RawContactState;>;"
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    array-length v2, p3

    if-ge v0, v2, :cond_13

    .line 1648
    aget-object v2, p3, v0

    invoke-virtual {p4, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/apps/plus/service/AndroidContactsSync$RawContactState;

    .line 1649
    .local v1, state:Lcom/google/android/apps/plus/service/AndroidContactsSync$RawContactState;
    const/4 v2, 0x0

    invoke-static {p0, p1, p2, v1, v2}, Lcom/google/android/apps/plus/service/AndroidContactsSync;->buildContentProviderOperations(Landroid/content/Context;Landroid/net/Uri;Ljava/util/ArrayList;Lcom/google/android/apps/plus/service/AndroidContactsSync$RawContactState;Z)V

    .line 1647
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1651
    .end local v1           #state:Lcom/google/android/apps/plus/service/AndroidContactsSync$RawContactState;
    :cond_13
    return-void
.end method

.method private static buildStreamItemContentHtml(Landroid/content/Context;[Lcom/google/android/apps/plus/content/DbMedia;[Lcom/google/wireless/tacotruck/proto/Data$Explanation;Lcom/google/wireless/tacotruck/proto/Data$Location;)Ljava/lang/String;
    .registers 17
    .parameter "context"
    .parameter "dbMedia"
    .parameter "dbExplanations"
    .parameter "location"

    .prologue
    .line 2868
    const/4 v3, 0x0

    .line 2869
    .local v3, explanation:Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 2871
    .local v8, text:Ljava/lang/StringBuilder;
    if-eqz p2, :cond_75

    .line 2872
    const/4 v4, 0x0

    .local v4, i:I
    :goto_9
    array-length v10, p2

    if-ge v4, v10, :cond_75

    .line 2873
    sget-object v10, Lcom/google/android/apps/plus/service/AndroidContactsSync$3;->$SwitchMap$com$google$wireless$tacotruck$proto$Data$Explanation$Type:[I

    aget-object v11, p2, v4

    invoke-virtual {v11}, Lcom/google/wireless/tacotruck/proto/Data$Explanation;->getType()Lcom/google/wireless/tacotruck/proto/Data$Explanation$Type;

    move-result-object v11

    invoke-virtual {v11}, Lcom/google/wireless/tacotruck/proto/Data$Explanation$Type;->ordinal()I

    move-result v11

    aget v10, v10, v11

    packed-switch v10, :pswitch_data_11a

    .line 2872
    :cond_1d
    :goto_1d
    add-int/lit8 v4, v4, 0x1

    goto :goto_9

    .line 2875
    :pswitch_20
    aget-object v10, p2, v4

    invoke-virtual {v10}, Lcom/google/wireless/tacotruck/proto/Data$Explanation;->getDisplayName()Ljava/lang/String;

    move-result-object v6

    .line 2876
    .local v6, name:Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_1d

    .line 2877
    const v10, 0x7f0801dd

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object v6, v11, v12

    invoke-virtual {p0, v10, v11}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 2879
    .local v7, string:Ljava/lang/String;
    if-nez v3, :cond_3d

    .line 2880
    move-object v3, v7

    goto :goto_1d

    .line 2882
    :cond_3d
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_1d

    .line 2888
    .end local v6           #name:Ljava/lang/String;
    .end local v7           #string:Ljava/lang/String;
    :pswitch_4f
    const v10, 0x7f0801e7

    invoke-virtual {p0, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2889
    if-eqz p3, :cond_1d

    .line 2890
    invoke-virtual/range {p3 .. p3}, Lcom/google/wireless/tacotruck/proto/Data$Location;->getName()Ljava/lang/String;

    move-result-object v6

    .line 2891
    .restart local v6       #name:Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_1d

    .line 2892
    const-string v10, "<div><font color=\'#6e8ec6\'><b>"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "</b></font></div>"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1d

    .line 2902
    .end local v4           #i:I
    .end local v6           #name:Ljava/lang/String;
    :cond_75
    const/4 v0, 0x0

    .line 2903
    .local v0, blockquoteStarted:Z
    if-eqz p1, :cond_10d

    .line 2904
    const/4 v4, 0x0

    .restart local v4       #i:I
    :goto_79
    array-length v10, p1

    if-ge v4, v10, :cond_10d

    .line 2905
    aget-object v10, p1, v4

    invoke-virtual {v10}, Lcom/google/android/apps/plus/content/DbMedia;->getMedia()Lcom/google/wireless/tacotruck/proto/Data$Media;

    move-result-object v5

    .line 2906
    .local v5, media:Lcom/google/wireless/tacotruck/proto/Data$Media;
    invoke-virtual {v5}, Lcom/google/wireless/tacotruck/proto/Data$Media;->getType()Lcom/google/wireless/tacotruck/proto/Data$Media$Type;

    move-result-object v9

    .line 2907
    .local v9, type:Lcom/google/wireless/tacotruck/proto/Data$Media$Type;
    invoke-virtual {v5}, Lcom/google/wireless/tacotruck/proto/Data$Media;->getContentHtml()Ljava/lang/String;

    move-result-object v1

    .line 2908
    .local v1, content:Ljava/lang/String;
    sget-object v10, Lcom/google/wireless/tacotruck/proto/Data$Media$Type;->DOCUMENT:Lcom/google/wireless/tacotruck/proto/Data$Media$Type;

    invoke-virtual {v10, v9}, Lcom/google/wireless/tacotruck/proto/Data$Media$Type;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_c1

    .line 2909
    if-eqz v3, :cond_a3

    .line 2910
    const-string v10, "<div>"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "</div>"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2912
    :cond_a3
    const/4 v0, 0x1

    .line 2913
    const-string v10, "<blockquote>"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2914
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_be

    .line 2915
    const-string v10, "<div><font color=\'#777777\'>"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "</font></div>"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2904
    :cond_be
    :goto_be
    add-int/lit8 v4, v4, 0x1

    goto :goto_79

    .line 2918
    :cond_c1
    sget-object v10, Lcom/google/wireless/tacotruck/proto/Data$Media$Type;->TITLE:Lcom/google/wireless/tacotruck/proto/Data$Media$Type;

    invoke-virtual {v10, v9}, Lcom/google/wireless/tacotruck/proto/Data$Media$Type;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_f8

    .line 2919
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_de

    .line 2920
    const-string v10, "<div><font color=\'#6e8ec6\'><b>"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "</b></font></div>"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2924
    :cond_de
    invoke-virtual {v5}, Lcom/google/wireless/tacotruck/proto/Data$Media;->getDescriptionHtml()Ljava/lang/String;

    move-result-object v2

    .line 2925
    .local v2, description:Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_be

    .line 2926
    const-string v10, "<div><font color=\'#777777\'>"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "</font></div>"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_be

    .line 2929
    .end local v2           #description:Ljava/lang/String;
    :cond_f8
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_be

    .line 2930
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->length()I

    move-result v10

    if-lez v10, :cond_109

    .line 2931
    const-string v10, "<p/>"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2933
    :cond_109
    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_be

    .line 2937
    .end local v1           #content:Ljava/lang/String;
    .end local v4           #i:I
    .end local v5           #media:Lcom/google/wireless/tacotruck/proto/Data$Media;
    .end local v9           #type:Lcom/google/wireless/tacotruck/proto/Data$Media$Type;
    :cond_10d
    if-eqz v0, :cond_114

    .line 2938
    const-string v10, "</blockquote>"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2941
    :cond_114
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    return-object v10

    .line 2873
    nop

    :pswitch_data_11a
    .packed-switch 0x1
        :pswitch_20
        :pswitch_4f
    .end packed-switch
.end method

.method private static declared-synchronized cancelSync()V
    .registers 2

    .prologue
    .line 868
    const-class v1, Lcom/google/android/apps/plus/service/AndroidContactsSync;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/google/android/apps/plus/service/AndroidContactsSync;->sAndroidSyncThread:Lcom/google/android/apps/plus/service/AndroidContactsSync$AndroidContactsSyncThread;

    if-eqz v0, :cond_c

    .line 869
    sget-object v0, Lcom/google/android/apps/plus/service/AndroidContactsSync;->sAndroidSyncThread:Lcom/google/android/apps/plus/service/AndroidContactsSync$AndroidContactsSyncThread;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/service/AndroidContactsSync$AndroidContactsSyncThread;->cancel()V
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_e

    .line 871
    :cond_c
    monitor-exit v1

    return-void

    .line 868
    :catchall_e
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static checkForLargeAvatarSizeUpdate(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;I)V
    .registers 9
    .parameter "context"
    .parameter "account"
    .parameter "avatarSize"

    .prologue
    const/4 v5, 0x0

    .line 3452
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 3454
    .local v1, sharedPrefs:Landroid/content/SharedPreferences;
    const-string v3, "large.avatar.size"

    const/16 v4, 0x100

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 3455
    .local v0, currentAvatarSize:I
    if-eq p2, v0, :cond_29

    .line 3456
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 3457
    .local v2, values:Landroid/content/ContentValues;
    const-string v3, "sync2"

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3458
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {p1}, Lcom/google/android/apps/plus/service/AndroidContactsSync;->getRawContactsUri(Lcom/google/android/apps/plus/content/EsAccount;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v3, v4, v2, v5, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 3460
    .end local v2           #values:Landroid/content/ContentValues;
    :cond_29
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v4, "large.avatar.size"

    invoke-interface {v3, v4, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 3461
    return-void
.end method

.method public static checkSyncVersion(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;)V
    .registers 6
    .parameter "context"
    .parameter "account"
    .parameter "syncState"

    .prologue
    const/16 v2, 0xd

    .line 913
    invoke-static {p0}, Lcom/google/android/apps/plus/service/AndroidContactsSync;->isAndroidSyncSupported(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_e

    invoke-virtual {p2}, Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;->isCanceled()Z

    move-result v1

    if-eqz v1, :cond_f

    .line 924
    :cond_e
    :goto_e
    return-void

    .line 917
    :cond_f
    invoke-static {p0, p1}, Lcom/google/android/apps/plus/content/EsAccountsData;->queryContactsSyncVersion(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)I

    move-result v0

    .line 918
    .local v0, version:I
    if-eq v0, v2, :cond_e

    .line 919
    invoke-static {p0, p1, p2}, Lcom/google/android/apps/plus/service/AndroidContactsSync;->clearAndroidProfile(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;)V

    .line 920
    invoke-static {p0, p1, p2}, Lcom/google/android/apps/plus/service/AndroidContactsSync;->clearAndroidContacts(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;)V

    .line 921
    invoke-static {p0, p1, p2}, Lcom/google/android/apps/plus/service/AndroidContactsSync;->clearAndroidCircles(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;)V

    .line 922
    invoke-static {p0, p1, v2}, Lcom/google/android/apps/plus/content/EsAccountsData;->saveContactsSyncVersion(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;I)V

    goto :goto_e
.end method

.method private static cleanUpActivityStateMap(Ljava/util/HashMap;)V
    .registers 11
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/apps/plus/service/AndroidContactsSync$PersonActivityState;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p0, stateMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/google/android/apps/plus/service/AndroidContactsSync$PersonActivityState;>;"
    const-wide/16 v8, 0x0

    .line 2616
    new-instance v5, Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 2619
    .local v5, stateList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/android/apps/plus/service/AndroidContactsSync$PersonActivityState;>;"
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_f
    :goto_f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/apps/plus/service/AndroidContactsSync$PersonActivityState;

    .line 2620
    .local v4, state:Lcom/google/android/apps/plus/service/AndroidContactsSync$PersonActivityState;
    const/4 v1, 0x0

    .line 2621
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

    .line 2622
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

    .line 2625
    :cond_46
    const/4 v1, 0x1

    .line 2629
    .end local v0           #activityState:Lcom/google/android/apps/plus/service/AndroidContactsSync$ActivityState;
    :cond_47
    if-nez v1, :cond_f

    .line 2630
    iget-object v6, v4, Lcom/google/android/apps/plus/service/AndroidContactsSync$PersonActivityState;->gaiaId:Ljava/lang/String;

    invoke-virtual {p0, v6}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_f

    .line 2633
    .end local v1           #hasChanges:Z
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v4           #state:Lcom/google/android/apps/plus/service/AndroidContactsSync$PersonActivityState;
    :cond_4f
    return-void
.end method

.method private static clearAndroidCircles(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;)V
    .registers 7
    .parameter "context"
    .parameter "account"
    .parameter "syncState"

    .prologue
    const/4 v3, 0x0

    .line 3270
    const-string v1, "Android:DeleteCircles"

    invoke-virtual {p2, v1}, Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;->onStart(Ljava/lang/String;)V

    .line 3271
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {p1}, Lcom/google/android/apps/plus/service/AndroidContactsSync;->getGroupsUri(Lcom/google/android/apps/plus/content/EsAccount;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2, v3, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 3272
    .local v0, count:I
    invoke-virtual {p2, v0}, Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;->incrementCount(I)V

    .line 3273
    invoke-virtual {p2}, Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;->onFinish()V

    .line 3274
    return-void
.end method

.method private static clearAndroidContacts(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;)V
    .registers 5
    .parameter "context"
    .parameter "account"
    .parameter "syncState"

    .prologue
    const/4 v1, 0x0

    .line 3260
    const-string v0, "Android:DeleteContacts"

    invoke-virtual {p2, v0}, Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;->onStart(Ljava/lang/String;)V

    .line 3261
    invoke-static {p1}, Lcom/google/android/apps/plus/service/AndroidContactsSync;->getRawContactsUri(Lcom/google/android/apps/plus/content/EsAccount;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {p0, v0, v1, v1, p2}, Lcom/google/android/apps/plus/service/AndroidContactsSync;->deleteAndroidContacts(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;)V

    .line 3262
    invoke-virtual {p2}, Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;->onFinish()V

    .line 3263
    return-void
.end method

.method private static clearAndroidContactsForOtherAccounts(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;)V
    .registers 14
    .parameter "context"
    .parameter "account"
    .parameter "syncState"

    .prologue
    const/4 v3, 0x1

    const/4 v5, 0x0

    const/4 v10, 0x0

    .line 3172
    new-array v4, v3, [Ljava/lang/String;

    if-eqz p1, :cond_6c

    invoke-virtual {p1}, Lcom/google/android/apps/plus/content/EsAccount;->getName()Ljava/lang/String;

    move-result-object v0

    :goto_b
    aput-object v0, v4, v10

    .line 3174
    .local v4, accountName:[Ljava/lang/String;
    const-string v0, "Android:DeleteProfilesOtherAccounts"

    invoke-virtual {p2, v0}, Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;->onStart(Ljava/lang/String;)V

    .line 3175
    invoke-static {}, Lcom/google/android/apps/plus/service/AndroidContactsSync;->getProfileRawContactsUri()Landroid/net/Uri;

    move-result-object v0

    const-string v2, "data_set=\'plus\' AND account_name!=? AND account_type=\'com.google\'"

    invoke-static {p0, v0, v2, v4, p2}, Lcom/google/android/apps/plus/service/AndroidContactsSync;->deleteAndroidContacts(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;)V

    .line 3180
    invoke-virtual {p2}, Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;->onFinish()V

    .line 3182
    const-string v0, "Android:DeleteContactsOtherAccounts"

    invoke-virtual {p2, v0}, Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;->onStart(Ljava/lang/String;)V

    .line 3183
    invoke-static {}, Lcom/google/android/apps/plus/service/AndroidContactsSync;->getRawContactsUri()Landroid/net/Uri;

    move-result-object v0

    const-string v2, "data_set=\'plus\' AND account_name!=? AND account_type=\'com.google\'"

    invoke-static {p0, v0, v2, v4, p2}, Lcom/google/android/apps/plus/service/AndroidContactsSync;->deleteAndroidContacts(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;)V

    .line 3188
    invoke-virtual {p2}, Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;->onFinish()V

    .line 3190
    const-string v0, "Android:DeleteCirclesOtherAccounts"

    invoke-virtual {p2, v0}, Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;->onStart(Ljava/lang/String;)V

    .line 3194
    invoke-static {}, Lcom/google/android/apps/plus/service/AndroidContactsSync;->getGroupsUri()Landroid/net/Uri;

    move-result-object v1

    .line 3195
    .local v1, groupsUri:Landroid/net/Uri;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-array v2, v3, [Ljava/lang/String;

    const-string v3, "_id"

    aput-object v3, v2, v10

    const-string v3, "data_set=\'plus\' AND account_name!=? AND account_type=\'com.google\'"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 3201
    .local v7, cursor:Landroid/database/Cursor;
    if-eqz v7, :cond_72

    .line 3203
    :goto_4a
    :try_start_4a
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_6f

    .line 3204
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 3205
    .local v8, groupId:J
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v1, v8, v9}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v5, 0x0

    invoke-virtual {v0, v2, v3, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v6

    .line 3207
    .local v6, count:I
    invoke-virtual {p2, v6}, Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;->incrementCount(I)V
    :try_end_66
    .catchall {:try_start_4a .. :try_end_66} :catchall_67

    goto :goto_4a

    .line 3210
    .end local v6           #count:I
    .end local v8           #groupId:J
    :catchall_67
    move-exception v0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v0

    .line 3172
    .end local v1           #groupsUri:Landroid/net/Uri;
    .end local v4           #accountName:[Ljava/lang/String;
    .end local v7           #cursor:Landroid/database/Cursor;
    :cond_6c
    const-string v0, ""

    goto :goto_b

    .line 3210
    .restart local v1       #groupsUri:Landroid/net/Uri;
    .restart local v4       #accountName:[Ljava/lang/String;
    .restart local v7       #cursor:Landroid/database/Cursor;
    :cond_6f
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 3213
    :cond_72
    invoke-virtual {p2}, Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;->onFinish()V

    .line 3214
    return-void
.end method

.method private static clearAndroidProfile(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;)V
    .registers 13
    .parameter "context"
    .parameter "account"
    .parameter "syncState"

    .prologue
    const/4 v3, 0x0

    .line 3141
    const-string v1, "Android:DeleteProfile"

    invoke-virtual {p2, v1}, Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;->onStart(Ljava/lang/String;)V

    .line 3142
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 3143
    .local v0, resolver:Landroid/content/ContentResolver;
    const-wide/16 v8, 0x0

    .line 3144
    .local v8, rawContactId:J
    invoke-static {p1}, Lcom/google/android/apps/plus/service/AndroidContactsSync;->getProfileRawContactUri(Lcom/google/android/apps/plus/content/EsAccount;)Landroid/net/Uri;

    move-result-object v1

    sget-object v2, Lcom/google/android/apps/plus/service/AndroidContactsSync;->PROFILE_RAW_CONTACT_PROJECTION:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 3146
    .local v7, cursor:Landroid/database/Cursor;
    if-eqz v7, :cond_28

    .line 3148
    :try_start_1a
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_25

    .line 3149
    const/4 v1, 0x0

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getLong(I)J
    :try_end_24
    .catchall {:try_start_1a .. :try_end_24} :catchall_41

    move-result-wide v8

    .line 3152
    :cond_25
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 3156
    :cond_28
    const-wide/16 v1, 0x0

    cmp-long v1, v8, v1

    if-eqz v1, :cond_3d

    .line 3157
    invoke-static {p1}, Lcom/google/android/apps/plus/service/AndroidContactsSync;->getRawContactsUri(Lcom/google/android/apps/plus/content/EsAccount;)Landroid/net/Uri;

    move-result-object v1

    invoke-static {v1, v8, v9}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v3, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v6

    .line 3160
    .local v6, count:I
    invoke-virtual {p2, v6}, Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;->incrementCount(I)V

    .line 3163
    .end local v6           #count:I
    :cond_3d
    invoke-virtual {p2}, Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;->onFinish()V

    .line 3164
    return-void

    .line 3152
    :catchall_41
    move-exception v1

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

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
    .line 3104
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

    .line 3106
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_26

    .line 3108
    :goto_f
    :try_start_f
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_23

    .line 3109
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_1d
    .catchall {:try_start_f .. :try_end_1d} :catchall_1e

    goto :goto_f

    .line 3112
    :catchall_1e
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_23
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 3115
    :cond_26
    return-void
.end method

.method private static convertEmailType(Lcom/google/android/apps/plus/service/AndroidContactsSync$DataState;Ljava/lang/Integer;Ljava/lang/String;)V
    .registers 4
    .parameter "dataState"
    .parameter "standardTag"
    .parameter "customTag"

    .prologue
    .line 1830
    if-nez p1, :cond_d

    const/4 v0, 0x0

    :goto_3
    packed-switch v0, :pswitch_data_22

    .line 1841
    sget-object v0, Lcom/google/android/apps/plus/service/AndroidContactsSync;->EMAIL_TYPE_CUSTOM:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/apps/plus/service/AndroidContactsSync$DataState;->data2:Ljava/lang/String;

    .line 1842
    iput-object p2, p0, Lcom/google/android/apps/plus/service/AndroidContactsSync$DataState;->data3:Ljava/lang/String;

    .line 1845
    :goto_c
    return-void

    .line 1830
    :cond_d
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_3

    .line 1832
    :pswitch_12
    sget-object v0, Lcom/google/android/apps/plus/service/AndroidContactsSync;->EMAIL_TYPE_HOME:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/apps/plus/service/AndroidContactsSync$DataState;->data2:Ljava/lang/String;

    goto :goto_c

    .line 1835
    :pswitch_17
    sget-object v0, Lcom/google/android/apps/plus/service/AndroidContactsSync;->EMAIL_TYPE_WORK:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/apps/plus/service/AndroidContactsSync$DataState;->data2:Ljava/lang/String;

    goto :goto_c

    .line 1838
    :pswitch_1c
    sget-object v0, Lcom/google/android/apps/plus/service/AndroidContactsSync;->EMAIL_TYPE_OTHER:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/apps/plus/service/AndroidContactsSync$DataState;->data2:Ljava/lang/String;

    goto :goto_c

    .line 1830
    nop

    :pswitch_data_22
    .packed-switch 0x1
        :pswitch_12
        :pswitch_17
        :pswitch_1c
    .end packed-switch
.end method

.method private static convertPhoneType(Landroid/content/Context;Lcom/google/android/apps/plus/service/AndroidContactsSync$DataState;Ljava/lang/Integer;Ljava/lang/String;)V
    .registers 7
    .parameter "context"
    .parameter "dataState"
    .parameter "standardTag"
    .parameter "customTag"

    .prologue
    .line 1854
    if-nez p2, :cond_8

    const/4 v0, 0x0

    .line 1855
    .local v0, converted:Ljava/lang/String;
    :goto_3
    if-eqz v0, :cond_16

    .line 1856
    iput-object v0, p1, Lcom/google/android/apps/plus/service/AndroidContactsSync$DataState;->data2:Ljava/lang/String;

    .line 1864
    :goto_7
    return-void

    .line 1854
    .end local v0           #converted:Ljava/lang/String;
    :cond_8
    sget-object v1, Lcom/google/android/apps/plus/service/AndroidContactsSync;->sPhoneTypeMap:Landroid/util/SparseArray;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    move-object v0, v1

    goto :goto_3

    .line 1857
    .restart local v0       #converted:Ljava/lang/String;
    :cond_16
    if-eqz p2, :cond_2e

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v2, 0x14

    if-ne v1, v2, :cond_2e

    .line 1858
    sget-object v1, Lcom/google/android/apps/plus/service/AndroidContactsSync;->PHONE_TYPE_CUSTOM:Ljava/lang/String;

    iput-object v1, p1, Lcom/google/android/apps/plus/service/AndroidContactsSync$DataState;->data2:Ljava/lang/String;

    .line 1859
    const v1, 0x7f080298

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/google/android/apps/plus/service/AndroidContactsSync$DataState;->data3:Ljava/lang/String;

    goto :goto_7

    .line 1861
    :cond_2e
    sget-object v1, Lcom/google/android/apps/plus/service/AndroidContactsSync;->PHONE_TYPE_CUSTOM:Ljava/lang/String;

    iput-object v1, p1, Lcom/google/android/apps/plus/service/AndroidContactsSync$DataState;->data2:Ljava/lang/String;

    .line 1862
    iput-object p3, p1, Lcom/google/android/apps/plus/service/AndroidContactsSync$DataState;->data3:Ljava/lang/String;

    goto :goto_7
.end method

.method private static convertPostalAddressType(Lcom/google/android/apps/plus/service/AndroidContactsSync$DataState;Ljava/lang/Integer;Ljava/lang/String;)V
    .registers 4
    .parameter "dataState"
    .parameter "standardTag"
    .parameter "customTag"

    .prologue
    .line 1871
    if-nez p1, :cond_d

    const/4 v0, 0x0

    :goto_3
    packed-switch v0, :pswitch_data_22

    .line 1882
    sget-object v0, Lcom/google/android/apps/plus/service/AndroidContactsSync;->POSTAL_TYPE_CUSTOM:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/apps/plus/service/AndroidContactsSync$DataState;->data2:Ljava/lang/String;

    .line 1883
    iput-object p2, p0, Lcom/google/android/apps/plus/service/AndroidContactsSync$DataState;->data3:Ljava/lang/String;

    .line 1886
    :goto_c
    return-void

    .line 1871
    :cond_d
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_3

    .line 1873
    :pswitch_12
    sget-object v0, Lcom/google/android/apps/plus/service/AndroidContactsSync;->POSTAL_TYPE_HOME:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/apps/plus/service/AndroidContactsSync$DataState;->data2:Ljava/lang/String;

    goto :goto_c

    .line 1876
    :pswitch_17
    sget-object v0, Lcom/google/android/apps/plus/service/AndroidContactsSync;->POSTAL_TYPE_WORK:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/apps/plus/service/AndroidContactsSync$DataState;->data2:Ljava/lang/String;

    goto :goto_c

    .line 1879
    :pswitch_1c
    sget-object v0, Lcom/google/android/apps/plus/service/AndroidContactsSync;->POSTAL_TYPE_OTHER:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/apps/plus/service/AndroidContactsSync$DataState;->data2:Ljava/lang/String;

    goto :goto_c

    .line 1871
    nop

    :pswitch_data_22
    .packed-switch 0x1
        :pswitch_12
        :pswitch_17
        :pswitch_1c
    .end packed-switch
.end method

.method public static deactivateAccount(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)V
    .registers 5
    .parameter "context"
    .parameter "account"

    .prologue
    const/4 v2, 0x0

    .line 3121
    invoke-static {p0}, Lcom/google/android/apps/plus/service/AndroidContactsSync;->isAndroidSyncSupported(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_8

    .line 3134
    :goto_7
    return-void

    .line 3125
    :cond_8
    invoke-static {}, Lcom/google/android/apps/plus/service/AndroidContactsSync;->cancelSync()V

    .line 3126
    invoke-static {p0, v2}, Lcom/google/android/apps/plus/content/EsAccountsData;->saveContactsSyncCleanupStatus(Landroid/content/Context;Z)V

    .line 3127
    invoke-static {p0, v2}, Lcom/google/android/apps/plus/content/EsAccountsData;->saveContactsStatsSyncCleanupStatus(Landroid/content/Context;Z)V

    .line 3128
    new-instance v0, Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;

    invoke-direct {v0}, Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;-><init>()V

    .line 3129
    .local v0, syncState:Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;
    invoke-static {p0, p1, v0}, Lcom/google/android/apps/plus/service/AndroidContactsSync;->clearAndroidProfile(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;)V

    .line 3133
    invoke-static {p0}, Lcom/google/android/apps/plus/service/AndroidContactsSync;->requestSync(Landroid/content/Context;)V

    goto :goto_7
.end method

.method private static deleteAndroidContacts(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;)V
    .registers 16
    .parameter "context"
    .parameter "rawContactsUri"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "syncState"

    .prologue
    .line 3224
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 3225
    .local v0, resolver:Landroid/content/ContentResolver;
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 3226
    .local v9, ids:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v3, "_id"

    aput-object v3, v2, v1

    const/4 v5, 0x0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 3228
    .local v7, cursor:Landroid/database/Cursor;
    if-eqz v7, :cond_32

    .line 3230
    :goto_1b
    :try_start_1b
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_2f

    .line 3231
    const/4 v1, 0x0

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_29
    .catchall {:try_start_1b .. :try_end_29} :catchall_2a

    goto :goto_1b

    .line 3234
    :catchall_2a
    move-exception v1

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v1

    :cond_2f
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 3238
    :cond_32
    invoke-virtual {v9}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_39

    .line 3253
    :goto_38
    return-void

    .line 3242
    :cond_39
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 3243
    .local v6, batch:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, i$:Ljava/util/Iterator;
    :goto_42
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_72

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 3244
    .local v10, rawContactId:Ljava/lang/String;
    invoke-static {p1}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    const-string v2, "_id=?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v10, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withYieldAllowed(Z)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3248
    const/4 v1, 0x0

    invoke-static {v0, v6, v1}, Lcom/google/android/apps/plus/service/AndroidContactsSync;->flushBatch(Landroid/content/ContentResolver;Ljava/util/ArrayList;Z)[Landroid/content/ContentProviderResult;

    .line 3249
    invoke-virtual {p4}, Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;->incrementCount()V

    goto :goto_42

    .line 3252
    .end local v10           #rawContactId:Ljava/lang/String;
    :cond_72
    const/4 v1, 0x1

    invoke-static {v0, v6, v1}, Lcom/google/android/apps/plus/service/AndroidContactsSync;->flushBatch(Landroid/content/ContentResolver;Ljava/util/ArrayList;Z)[Landroid/content/ContentProviderResult;

    goto :goto_38
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

    .line 1773
    invoke-static {p1}, Lcom/google/android/apps/plus/service/AndroidContactsSync;->getRawContactsUri(Lcom/google/android/apps/plus/content/EsAccount;)Landroid/net/Uri;

    move-result-object v1

    .line 1774
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

    .line 1775
    .local v2, state:Lcom/google/android/apps/plus/service/AndroidContactsSync$RawContactState;
    const-string v3, "GooglePlusContactsSync"

    const/4 v4, 0x3

    invoke-static {v3, v4}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_22

    .line 1776
    invoke-static {v2}, Lcom/google/android/apps/plus/service/AndroidContactsSync;->dumpRawContactState(Lcom/google/android/apps/plus/service/AndroidContactsSync$RawContactState;)V

    .line 1779
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

    .line 1786
    .end local v2           #state:Lcom/google/android/apps/plus/service/AndroidContactsSync$RawContactState;
    :cond_42
    invoke-static {p0, p2, v8}, Lcom/google/android/apps/plus/service/AndroidContactsSync;->flushBatch(Landroid/content/ContentResolver;Ljava/util/ArrayList;Z)[Landroid/content/ContentProviderResult;

    .line 1787
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
    .line 3022
    .local p1, stateList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/android/apps/plus/service/AndroidContactsSync$PersonActivityState;>;"
    .local p4, batch:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    invoke-static {p0}, Lcom/google/android/apps/plus/service/AndroidContactsSync;->getStreamItemsUri(Lcom/google/android/apps/plus/content/EsAccount;)Landroid/net/Uri;

    move-result-object v8

    .line 3023
    .local v8, uri:Landroid/net/Uri;
    move v2, p2

    .local v2, i:I
    :goto_5
    move/from16 v0, p3

    if-ge v2, v0, :cond_50

    .line 3024
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/apps/plus/service/AndroidContactsSync$PersonActivityState;

    .line 3025
    .local v6, state:Lcom/google/android/apps/plus/service/AndroidContactsSync$PersonActivityState;
    iget-object v9, v6, Lcom/google/android/apps/plus/service/AndroidContactsSync$PersonActivityState;->gaiaId:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/google/android/apps/plus/content/EsAccount;->getGaiaId()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_4d

    .line 3026
    iget-object v9, v6, Lcom/google/android/apps/plus/service/AndroidContactsSync$PersonActivityState;->activities:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_21
    :goto_21
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_4d

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/apps/plus/service/AndroidContactsSync$ActivityState;

    .line 3027
    .local v1, activityState:Lcom/google/android/apps/plus/service/AndroidContactsSync$ActivityState;
    iget-boolean v9, v1, Lcom/google/android/apps/plus/service/AndroidContactsSync$ActivityState;->exists:Z

    if-nez v9, :cond_21

    iget-wide v9, v1, Lcom/google/android/apps/plus/service/AndroidContactsSync$ActivityState;->streamItemId:J

    const-wide/16 v11, 0x0

    cmp-long v9, v9, v11

    if-eqz v9, :cond_21

    .line 3028
    iget-wide v9, v1, Lcom/google/android/apps/plus/service/AndroidContactsSync$ActivityState;->streamItemId:J

    invoke-static {v8, v9, v10}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    .line 3029
    .local v4, itemUri:Landroid/net/Uri;
    invoke-static {v4}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v9

    move-object/from16 v0, p4

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_21

    .line 3023
    .end local v1           #activityState:Lcom/google/android/apps/plus/service/AndroidContactsSync$ActivityState;
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v4           #itemUri:Landroid/net/Uri;
    :cond_4d
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 3036
    .end local v6           #state:Lcom/google/android/apps/plus/service/AndroidContactsSync$PersonActivityState;
    :cond_50
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 3037
    .local v5, sb:Ljava/lang/StringBuilder;
    const-string v9, "_id IN ("

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3038
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 3039
    .local v7, streamItemIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    move v2, p2

    :goto_60
    move/from16 v0, p3

    if-ge v2, v0, :cond_b1

    .line 3040
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/apps/plus/service/AndroidContactsSync$PersonActivityState;

    .line 3041
    .restart local v6       #state:Lcom/google/android/apps/plus/service/AndroidContactsSync$PersonActivityState;
    iget-object v9, v6, Lcom/google/android/apps/plus/service/AndroidContactsSync$PersonActivityState;->gaiaId:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/google/android/apps/plus/content/EsAccount;->getGaiaId()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_ae

    .line 3042
    iget-object v9, v6, Lcom/google/android/apps/plus/service/AndroidContactsSync$PersonActivityState;->activities:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .restart local v3       #i$:Ljava/util/Iterator;
    :cond_7c
    :goto_7c
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_ae

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/apps/plus/service/AndroidContactsSync$ActivityState;

    .line 3043
    .restart local v1       #activityState:Lcom/google/android/apps/plus/service/AndroidContactsSync$ActivityState;
    iget-boolean v9, v1, Lcom/google/android/apps/plus/service/AndroidContactsSync$ActivityState;->exists:Z

    if-nez v9, :cond_7c

    iget-wide v9, v1, Lcom/google/android/apps/plus/service/AndroidContactsSync$ActivityState;->streamItemId:J

    const-wide/16 v11, 0x0

    cmp-long v9, v9, v11

    if-eqz v9, :cond_7c

    .line 3044
    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_9f

    .line 3045
    const/16 v9, 0x2c

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3047
    :cond_9f
    const/16 v9, 0x3f

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3048
    iget-wide v9, v1, Lcom/google/android/apps/plus/service/AndroidContactsSync$ActivityState;->streamItemId:J

    invoke-static {v9, v10}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_7c

    .line 3039
    .end local v1           #activityState:Lcom/google/android/apps/plus/service/AndroidContactsSync$ActivityState;
    .end local v3           #i$:Ljava/util/Iterator;
    :cond_ae
    add-int/lit8 v2, v2, 0x1

    goto :goto_60

    .line 3053
    .end local v6           #state:Lcom/google/android/apps/plus/service/AndroidContactsSync$PersonActivityState;
    :cond_b1
    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_b8

    .line 3060
    :goto_b7
    return-void

    .line 3056
    :cond_b8
    const/16 v9, 0x29

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3057
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

    goto :goto_b7
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
    .line 1281
    .local p2, stateMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/google/android/apps/plus/service/AndroidContactsSync$RawContactState;>;"
    .local p3, batch:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1282
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

    .line 1283
    .local v1, state:Lcom/google/android/apps/plus/service/AndroidContactsSync$RawContactState;
    iget-boolean v3, v1, Lcom/google/android/apps/plus/service/AndroidContactsSync$RawContactState;->exists:Z

    if-nez v3, :cond_d

    .line 1284
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_d

    .line 1288
    .end local v1           #state:Lcom/google/android/apps/plus/service/AndroidContactsSync$RawContactState;
    :cond_21
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2a

    .line 1289
    invoke-static {p0, p1, p3, v2}, Lcom/google/android/apps/plus/service/AndroidContactsSync;->deleteContacts(Landroid/content/ContentResolver;Lcom/google/android/apps/plus/content/EsAccount;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 1291
    :cond_2a
    return-void
.end method

.method private static deleteStreamItems(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)V
    .registers 8
    .parameter "context"
    .parameter "account"

    .prologue
    .line 3066
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

    .line 3071
    return-void
.end method

.method private static downloadLargeAvatars(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;Ljava/util/HashMap;I)V
    .registers 22
    .parameter "context"
    .parameter "account"
    .parameter "syncState"
    .parameter
    .parameter "avatarSize"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/android/apps/plus/content/EsAccount;",
            "Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/apps/plus/service/AndroidContactsSync$AvatarState;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 2077
    .local p3, stateMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/google/android/apps/plus/service/AndroidContactsSync$AvatarState;>;"
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    .line 2078
    .local v9, resolver:Landroid/content/ContentResolver;
    new-instance v15, Ljava/util/ArrayList;

    invoke-virtual/range {p3 .. p3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-direct {v15, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 2079
    .local v15, states:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/android/apps/plus/service/AndroidContactsSync$AvatarState;>;"
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v13

    .line 2080
    .local v13, size:I
    const/4 v11, 0x0

    .line 2081
    .local v11, offset:I
    :goto_12
    if-ge v11, v13, :cond_92

    invoke-virtual/range {p2 .. p2}, Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;->isCanceled()Z

    move-result v2

    if-nez v2, :cond_92

    .line 2082
    add-int/lit8 v16, v11, 0x8

    .line 2083
    .local v16, to:I
    move/from16 v0, v16

    if-le v0, v13, :cond_22

    .line 2084
    move/from16 v16, v13

    .line 2087
    :cond_22
    new-instance v1, Lcom/google/android/apps/plus/service/AndroidContactsSync$2;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    move-object/from16 v8, p1

    invoke-direct/range {v1 .. v9}, Lcom/google/android/apps/plus/service/AndroidContactsSync$2;-><init>(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Landroid/content/Intent;Lcom/google/android/apps/plus/network/HttpOperation$OperationListener;Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;Ljava/util/HashMap;Lcom/google/android/apps/plus/content/EsAccount;Landroid/content/ContentResolver;)V

    .line 2118
    .local v1, op:Lcom/google/android/apps/plus/api/LargeAvatarOperation;
    const/4 v12, 0x0

    .line 2119
    .local v12, runOperation:Z
    move v10, v11

    .local v10, i:I
    :goto_35
    move/from16 v0, v16

    if-ge v10, v0, :cond_55

    .line 2120
    invoke-virtual {v15, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/google/android/apps/plus/service/AndroidContactsSync$AvatarState;

    .line 2121
    .local v14, state:Lcom/google/android/apps/plus/service/AndroidContactsSync$AvatarState;
    iget v2, v14, Lcom/google/android/apps/plus/service/AndroidContactsSync$AvatarState;->signature:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_4c

    .line 2122
    move-object/from16 v0, p1

    invoke-static {v9, v0, v14}, Lcom/google/android/apps/plus/service/AndroidContactsSync;->saveAvatarSignature(Landroid/content/ContentResolver;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/android/apps/plus/service/AndroidContactsSync$AvatarState;)V

    .line 2119
    :goto_49
    add-int/lit8 v10, v10, 0x1

    goto :goto_35

    .line 2124
    :cond_4c
    iget-object v2, v14, Lcom/google/android/apps/plus/service/AndroidContactsSync$AvatarState;->gaiaId:Ljava/lang/String;

    move/from16 v0, p4

    invoke-virtual {v1, v2, v0}, Lcom/google/android/apps/plus/api/LargeAvatarOperation;->getAvatar(Ljava/lang/String;I)V

    .line 2125
    const/4 v12, 0x1

    goto :goto_49

    .line 2129
    .end local v14           #state:Lcom/google/android/apps/plus/service/AndroidContactsSync$AvatarState;
    :cond_55
    if-eqz v12, :cond_8f

    .line 2130
    invoke-virtual {v1}, Lcom/google/android/apps/plus/api/LargeAvatarOperation;->start()V

    .line 2132
    invoke-virtual {v1}, Lcom/google/android/apps/plus/api/LargeAvatarOperation;->hasError()Z

    move-result v2

    if-nez v2, :cond_66

    invoke-virtual {v1}, Lcom/google/android/apps/plus/api/LargeAvatarOperation;->getException()Ljava/lang/Exception;

    move-result-object v2

    if-eqz v2, :cond_8f

    .line 2133
    :cond_66
    const-string v2, "GooglePlusContactsSync"

    const/4 v3, 0x6

    invoke-static {v2, v3}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_8f

    .line 2134
    const-string v2, "GooglePlusContactsSync"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not download avatars, error code="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/google/android/apps/plus/api/LargeAvatarOperation;->getErrorCode()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lcom/google/android/apps/plus/api/LargeAvatarOperation;->getException()Ljava/lang/Exception;

    move-result-object v4

    invoke-static {v2, v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2140
    :cond_8f
    move/from16 v11, v16

    .line 2141
    goto :goto_12

    .line 2142
    .end local v1           #op:Lcom/google/android/apps/plus/api/LargeAvatarOperation;
    .end local v10           #i:I
    .end local v12           #runOperation:Z
    .end local v16           #to:I
    :cond_92
    return-void
.end method

.method private static downloadMedia(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Ljava/lang/String;)[B
    .registers 10
    .parameter "context"
    .parameter "account"
    .parameter "type"
    .parameter "url"

    .prologue
    const/4 v2, 0x0

    const/4 v5, 0x6

    .line 2980
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_23

    .line 2981
    const-string v3, "//"

    invoke-virtual {p3, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_23

    .line 2982
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "http:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 2986
    :cond_23
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0d013c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 2988
    .local v1, size:I
    invoke-static {v1, p3}, Lcom/google/android/apps/plus/util/ImageUtils;->getCroppedAndResizedUrl(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 2989
    new-instance v0, Lcom/google/android/apps/plus/api/DownloadPhotoOperation;

    invoke-direct {v0, p0, p1, p3}, Lcom/google/android/apps/plus/api/DownloadPhotoOperation;-><init>(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;)V

    .line 2990
    .local v0, op:Lcom/google/android/apps/plus/api/DownloadPhotoOperation;
    invoke-virtual {v0}, Lcom/google/android/apps/plus/api/DownloadPhotoOperation;->start()V

    .line 2991
    invoke-virtual {v0}, Lcom/google/android/apps/plus/api/DownloadPhotoOperation;->getException()Ljava/lang/Exception;

    move-result-object v3

    if-eqz v3, :cond_54

    .line 2992
    const-string v3, "GooglePlusContactsSync"

    invoke-static {v3, v5}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_53

    .line 2993
    const-string v3, "GooglePlusContactsSync"

    const-string v4, "Could not download image"

    invoke-virtual {v0}, Lcom/google/android/apps/plus/api/DownloadPhotoOperation;->getException()Ljava/lang/Exception;

    move-result-object v5

    invoke-static {v3, v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3003
    :cond_53
    :goto_53
    return-object v2

    .line 2997
    :cond_54
    invoke-virtual {v0}, Lcom/google/android/apps/plus/api/DownloadPhotoOperation;->hasError()Z

    move-result v3

    if-eqz v3, :cond_7f

    .line 2998
    const-string v3, "GooglePlusContactsSync"

    invoke-static {v3, v5}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_53

    .line 2999
    const-string v3, "GooglePlusContactsSync"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Could not download image: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/google/android/apps/plus/api/DownloadPhotoOperation;->getErrorCode()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_53

    .line 3003
    :cond_7f
    invoke-virtual {v0}, Lcom/google/android/apps/plus/api/DownloadPhotoOperation;->getBytes()[B

    move-result-object v2

    invoke-static {v2, v1}, Lcom/google/android/apps/plus/util/ImageUtils;->resizeBitmapToHeight([BI)[B

    move-result-object v2

    goto :goto_53
.end method

.method private static dumpCircleState(Lcom/google/android/apps/plus/service/AndroidContactsSync$CircleState;)V
    .registers 6
    .parameter "state"

    .prologue
    .line 3468
    iget-boolean v1, p0, Lcom/google/android/apps/plus/service/AndroidContactsSync$CircleState;->exists:Z

    if-nez v1, :cond_43

    .line 3469
    const-string v0, "[DELETE]"

    .line 3476
    .local v0, op:Ljava/lang/String;
    :goto_6
    const-string v1, "GooglePlusContactsSync"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/apps/plus/service/AndroidContactsSync$CircleState;->circleId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/apps/plus/service/AndroidContactsSync$CircleState;->circleName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " (group_id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, p0, Lcom/google/android/apps/plus/service/AndroidContactsSync$CircleState;->groupId:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3478
    return-void

    .line 3470
    .end local v0           #op:Ljava/lang/String;
    :cond_43
    iget-wide v1, p0, Lcom/google/android/apps/plus/service/AndroidContactsSync$CircleState;->groupId:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_4e

    .line 3471
    const-string v0, "[INSERT]"

    .restart local v0       #op:Ljava/lang/String;
    goto :goto_6

    .line 3473
    .end local v0           #op:Ljava/lang/String;
    :cond_4e
    const-string v0, "[UPDATE]"

    .restart local v0       #op:Ljava/lang/String;
    goto :goto_6
.end method

.method private static dumpPersonActivityState(Lcom/google/android/apps/plus/service/AndroidContactsSync$PersonActivityState;)V
    .registers 10
    .parameter "state"

    .prologue
    const-wide/16 v7, 0x0

    .line 3516
    const-string v3, "GooglePlusContactsSync"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[STREAM] Gaia ID: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/apps/plus/service/AndroidContactsSync$PersonActivityState;->gaiaId:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " (raw_contact_id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v5, p0, Lcom/google/android/apps/plus/service/AndroidContactsSync$PersonActivityState;->rawContactId:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3518
    iget-object v3, p0, Lcom/google/android/apps/plus/service/AndroidContactsSync$PersonActivityState;->activities:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_3a
    :goto_3a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_af

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/plus/service/AndroidContactsSync$ActivityState;

    .line 3520
    .local v0, activityState:Lcom/google/android/apps/plus/service/AndroidContactsSync$ActivityState;
    iget-boolean v3, v0, Lcom/google/android/apps/plus/service/AndroidContactsSync$ActivityState;->exists:Z

    if-nez v3, :cond_9b

    iget-wide v3, v0, Lcom/google/android/apps/plus/service/AndroidContactsSync$ActivityState;->streamItemId:J

    cmp-long v3, v3, v7

    if-eqz v3, :cond_9b

    .line 3521
    const-string v2, "[DELETE]"

    .line 3530
    .local v2, op:Ljava/lang/String;
    :goto_52
    const-string v3, "GooglePlusContactsSync"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "    "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Lcom/google/android/apps/plus/service/AndroidContactsSync$ActivityState;->activityId:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " (stream_item_id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v5, v0, Lcom/google/android/apps/plus/service/AndroidContactsSync$ActivityState;->streamItemId:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") created="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v5, v0, Lcom/google/android/apps/plus/service/AndroidContactsSync$ActivityState;->created:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\', modified="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v5, v0, Lcom/google/android/apps/plus/service/AndroidContactsSync$ActivityState;->lastModified:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3a

    .line 3522
    .end local v2           #op:Ljava/lang/String;
    :cond_9b
    iget-boolean v3, v0, Lcom/google/android/apps/plus/service/AndroidContactsSync$ActivityState;->exists:Z

    if-eqz v3, :cond_a8

    iget-wide v3, v0, Lcom/google/android/apps/plus/service/AndroidContactsSync$ActivityState;->streamItemId:J

    cmp-long v3, v3, v7

    if-nez v3, :cond_a8

    .line 3523
    const-string v2, "[INSERT]"

    .restart local v2       #op:Ljava/lang/String;
    goto :goto_52

    .line 3524
    .end local v2           #op:Ljava/lang/String;
    :cond_a8
    iget-boolean v3, v0, Lcom/google/android/apps/plus/service/AndroidContactsSync$ActivityState;->changed:Z

    if-eqz v3, :cond_3a

    .line 3525
    const-string v2, "[UPDATE]"

    .restart local v2       #op:Ljava/lang/String;
    goto :goto_52

    .line 3534
    .end local v0           #activityState:Lcom/google/android/apps/plus/service/AndroidContactsSync$ActivityState;
    .end local v2           #op:Ljava/lang/String;
    :cond_af
    return-void
.end method

.method private static dumpRawContactState(Lcom/google/android/apps/plus/service/AndroidContactsSync$RawContactState;)V
    .registers 10
    .parameter "state"

    .prologue
    const-wide/16 v7, 0x0

    .line 3485
    iget-boolean v3, p0, Lcom/google/android/apps/plus/service/AndroidContactsSync$RawContactState;->exists:Z

    if-nez v3, :cond_b7

    .line 3486
    const-string v2, "[DELETE]"

    .line 3493
    .local v2, op:Ljava/lang/String;
    :goto_8
    const-string v3, "GooglePlusContactsSync"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/apps/plus/service/AndroidContactsSync$RawContactState;->personId:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/apps/plus/service/AndroidContactsSync$RawContactState;->fullName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " (raw_contact_id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v5, p0, Lcom/google/android/apps/plus/service/AndroidContactsSync$RawContactState;->rawContactId:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") last_updated="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v5, p0, Lcom/google/android/apps/plus/service/AndroidContactsSync$RawContactState;->lastUpdateTime:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3495
    iget-object v3, p0, Lcom/google/android/apps/plus/service/AndroidContactsSync$RawContactState;->data:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_50
    :goto_50
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_d5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/plus/service/AndroidContactsSync$DataState;

    .line 3496
    .local v0, dataState:Lcom/google/android/apps/plus/service/AndroidContactsSync$DataState;
    iget-boolean v3, v0, Lcom/google/android/apps/plus/service/AndroidContactsSync$DataState;->exists:Z

    if-nez v3, :cond_c5

    .line 3497
    const-string v2, "[DELETE]"

    .line 3506
    :goto_62
    const-string v3, "GooglePlusContactsSync"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "    "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Lcom/google/android/apps/plus/service/AndroidContactsSync$DataState;->mimetype:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " (data_id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v5, v0, Lcom/google/android/apps/plus/service/AndroidContactsSync$DataState;->dataId:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Lcom/google/android/apps/plus/service/AndroidContactsSync$DataState;->data1:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\', type="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Lcom/google/android/apps/plus/service/AndroidContactsSync$DataState;->data2:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Lcom/google/android/apps/plus/service/AndroidContactsSync$DataState;->data3:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_50

    .line 3487
    .end local v0           #dataState:Lcom/google/android/apps/plus/service/AndroidContactsSync$DataState;
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #op:Ljava/lang/String;
    :cond_b7
    iget-wide v3, p0, Lcom/google/android/apps/plus/service/AndroidContactsSync$RawContactState;->rawContactId:J

    cmp-long v3, v3, v7

    if-nez v3, :cond_c1

    .line 3488
    const-string v2, "[INSERT]"

    .restart local v2       #op:Ljava/lang/String;
    goto/16 :goto_8

    .line 3490
    .end local v2           #op:Ljava/lang/String;
    :cond_c1
    const-string v2, "[UPDATE]"

    .restart local v2       #op:Ljava/lang/String;
    goto/16 :goto_8

    .line 3498
    .restart local v0       #dataState:Lcom/google/android/apps/plus/service/AndroidContactsSync$DataState;
    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_c5
    iget-wide v3, v0, Lcom/google/android/apps/plus/service/AndroidContactsSync$DataState;->dataId:J

    cmp-long v3, v3, v7

    if-nez v3, :cond_ce

    .line 3499
    const-string v2, "[INSERT]"

    goto :goto_62

    .line 3500
    :cond_ce
    iget-boolean v3, v0, Lcom/google/android/apps/plus/service/AndroidContactsSync$DataState;->changed:Z

    if-eqz v3, :cond_50

    .line 3501
    const-string v2, "[UPDATE]"

    goto :goto_62

    .line 3510
    .end local v0           #dataState:Lcom/google/android/apps/plus/service/AndroidContactsSync$DataState;
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
            "Ljava/lang/String;",
            "Lcom/google/android/apps/plus/service/AndroidContactsSync$PersonActivityState;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 2407
    invoke-static {p0, p1}, Lcom/google/android/apps/plus/service/AndroidContactsSync;->queryRawContactsRequiringActivities(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)Ljava/util/HashMap;

    move-result-object v0

    .line 2409
    .local v0, stateMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/google/android/apps/plus/service/AndroidContactsSync$PersonActivityState;>;"
    if-eqz v0, :cond_d

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_e

    .line 2420
    .end local v0           #stateMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/google/android/apps/plus/service/AndroidContactsSync$PersonActivityState;>;"
    :cond_d
    :goto_d
    return-object v0

    .line 2413
    .restart local v0       #stateMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/google/android/apps/plus/service/AndroidContactsSync$PersonActivityState;>;"
    :cond_e
    invoke-static {p0, p1, v0}, Lcom/google/android/apps/plus/service/AndroidContactsSync;->queryStreamItemState(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/util/HashMap;)Z

    move-result v2

    if-nez v2, :cond_16

    move-object v0, v1

    .line 2414
    goto :goto_d

    .line 2417
    :cond_16
    invoke-static {p0, p1, v0, v1, v1}, Lcom/google/android/apps/plus/service/AndroidContactsSync;->reconcileActivitiesAndStreamItems(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/util/HashMap;Ljava/lang/String;[Ljava/lang/String;)V

    .line 2418
    invoke-static {p0, v0}, Lcom/google/android/apps/plus/service/AndroidContactsSync;->limitStreamItemsPerRawContact(Landroid/content/Context;Ljava/util/HashMap;)V

    .line 2419
    invoke-static {v0}, Lcom/google/android/apps/plus/service/AndroidContactsSync;->cleanUpActivityStateMap(Ljava/util/HashMap;)V

    goto :goto_d
.end method

.method private static findChangesInCircles(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)Ljava/util/HashMap;
    .registers 12
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
    const/4 v9, 0x1

    const/4 v3, 0x0

    .line 950
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 951
    .local v8, stateMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/google/android/apps/plus/service/AndroidContactsSync$CircleState;>;"
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 952
    .local v0, resolver:Landroid/content/ContentResolver;
    invoke-static {p1}, Lcom/google/android/apps/plus/service/AndroidContactsSync;->getGroupsUri(Lcom/google/android/apps/plus/content/EsAccount;)Landroid/net/Uri;

    move-result-object v1

    sget-object v2, Lcom/google/android/apps/plus/service/AndroidContactsSync;->GROUPS_PROJECTION:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 953
    .local v6, cursor:Landroid/database/Cursor;
    if-nez v6, :cond_1a

    .line 981
    :goto_19
    return-object v3

    .line 958
    :cond_1a
    :goto_1a
    :try_start_1a
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_46

    .line 959
    new-instance v7, Lcom/google/android/apps/plus/service/AndroidContactsSync$CircleState;

    const/4 v1, 0x0

    invoke-direct {v7, v1}, Lcom/google/android/apps/plus/service/AndroidContactsSync$CircleState;-><init>(Lcom/google/android/apps/plus/service/AndroidContactsSync$1;)V

    .line 960
    .local v7, state:Lcom/google/android/apps/plus/service/AndroidContactsSync$CircleState;
    const/4 v1, 0x0

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    iput-wide v1, v7, Lcom/google/android/apps/plus/service/AndroidContactsSync$CircleState;->groupId:J

    .line 961
    const/4 v1, 0x1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v7, Lcom/google/android/apps/plus/service/AndroidContactsSync$CircleState;->circleId:Ljava/lang/String;

    .line 962
    const/4 v1, 0x2

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v7, Lcom/google/android/apps/plus/service/AndroidContactsSync$CircleState;->circleName:Ljava/lang/String;

    .line 963
    iget-object v1, v7, Lcom/google/android/apps/plus/service/AndroidContactsSync$CircleState;->circleId:Ljava/lang/String;

    invoke-virtual {v8, v1, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_40
    .catchall {:try_start_1a .. :try_end_40} :catchall_41

    goto :goto_1a

    .line 966
    .end local v7           #state:Lcom/google/android/apps/plus/service/AndroidContactsSync$CircleState;
    :catchall_41
    move-exception v1

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v1

    :cond_46
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 969
    const-string v1, "plus"

    invoke-virtual {v8, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/android/apps/plus/service/AndroidContactsSync$CircleState;

    .line 970
    .restart local v7       #state:Lcom/google/android/apps/plus/service/AndroidContactsSync$CircleState;
    if-nez v7, :cond_6e

    .line 971
    new-instance v7, Lcom/google/android/apps/plus/service/AndroidContactsSync$CircleState;

    .end local v7           #state:Lcom/google/android/apps/plus/service/AndroidContactsSync$CircleState;
    invoke-direct {v7, v3}, Lcom/google/android/apps/plus/service/AndroidContactsSync$CircleState;-><init>(Lcom/google/android/apps/plus/service/AndroidContactsSync$1;)V

    .line 972
    .restart local v7       #state:Lcom/google/android/apps/plus/service/AndroidContactsSync$CircleState;
    const-string v1, "plus"

    iput-object v1, v7, Lcom/google/android/apps/plus/service/AndroidContactsSync$CircleState;->circleId:Ljava/lang/String;

    .line 973
    const v1, 0x7f08043a

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v7, Lcom/google/android/apps/plus/service/AndroidContactsSync$CircleState;->circleName:Ljava/lang/String;

    .line 974
    iput-boolean v9, v7, Lcom/google/android/apps/plus/service/AndroidContactsSync$CircleState;->exists:Z

    .line 975
    const-string v1, "plus"

    invoke-virtual {v8, v1, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_6c
    move-object v3, v8

    .line 981
    goto :goto_19

    .line 978
    :cond_6e
    const-string v1, "plus"

    invoke-virtual {v8, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_6c
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
    .line 1162
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1163
    .local v0, resolver:Landroid/content/ContentResolver;
    invoke-static {p1}, Lcom/google/android/apps/plus/service/AndroidContactsSync;->getRawContactsUri(Lcom/google/android/apps/plus/content/EsAccount;)Landroid/net/Uri;

    move-result-object v1

    .line 1165
    .local v1, rawContactsUri:Landroid/net/Uri;
    sget-object v2, Lcom/google/android/apps/plus/service/AndroidContactsSync;->RAW_CONTACT_PROJECTION:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 1166
    .local v8, cursor:Landroid/database/Cursor;
    if-nez v8, :cond_15

    .line 1167
    const/4 v13, 0x0

    .line 1216
    :goto_14
    return-object v13

    .line 1170
    :cond_15
    new-instance v13, Ljava/util/HashMap;

    invoke-direct {v13}, Ljava/util/HashMap;-><init>()V

    .line 1172
    .local v13, stateMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/google/android/apps/plus/service/AndroidContactsSync$RawContactState;>;"
    :goto_1a
    :try_start_1a
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_46

    .line 1173
    new-instance v12, Lcom/google/android/apps/plus/service/AndroidContactsSync$RawContactState;

    const/4 v2, 0x0

    invoke-direct {v12, v2}, Lcom/google/android/apps/plus/service/AndroidContactsSync$RawContactState;-><init>(Lcom/google/android/apps/plus/service/AndroidContactsSync$1;)V

    .line 1174
    .local v12, state:Lcom/google/android/apps/plus/service/AndroidContactsSync$RawContactState;
    const/4 v2, 0x0

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, v12, Lcom/google/android/apps/plus/service/AndroidContactsSync$RawContactState;->rawContactId:J

    .line 1175
    const/4 v2, 0x1

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v12, Lcom/google/android/apps/plus/service/AndroidContactsSync$RawContactState;->personId:Ljava/lang/String;

    .line 1176
    const/4 v2, 0x2

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, v12, Lcom/google/android/apps/plus/service/AndroidContactsSync$RawContactState;->lastUpdateTime:J

    .line 1177
    iget-object v2, v12, Lcom/google/android/apps/plus/service/AndroidContactsSync$RawContactState;->personId:Ljava/lang/String;

    invoke-virtual {v13, v2, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_40
    .catchall {:try_start_1a .. :try_end_40} :catchall_41

    goto :goto_1a

    .line 1180
    .end local v12           #state:Lcom/google/android/apps/plus/service/AndroidContactsSync$RawContactState;
    :catchall_41
    move-exception v2

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v2

    :cond_46
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 1183
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

    .line 1190
    if-eqz v8, :cond_99

    .line 1191
    :goto_5c
    :try_start_5c
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_99

    .line 1192
    const/4 v2, 0x0

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 1193
    .local v11, personId:Ljava/lang/String;
    const/4 v2, 0x1

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    .line 1194
    .local v9, lastUpdateTime:J
    invoke-virtual {v13, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/google/android/apps/plus/service/AndroidContactsSync$RawContactState;

    .line 1195
    .restart local v12       #state:Lcom/google/android/apps/plus/service/AndroidContactsSync$RawContactState;
    if-nez v12, :cond_8c

    .line 1196
    new-instance v12, Lcom/google/android/apps/plus/service/AndroidContactsSync$RawContactState;

    .end local v12           #state:Lcom/google/android/apps/plus/service/AndroidContactsSync$RawContactState;
    const/4 v2, 0x0

    invoke-direct {v12, v2}, Lcom/google/android/apps/plus/service/AndroidContactsSync$RawContactState;-><init>(Lcom/google/android/apps/plus/service/AndroidContactsSync$1;)V

    .line 1197
    .restart local v12       #state:Lcom/google/android/apps/plus/service/AndroidContactsSync$RawContactState;
    iput-object v11, v12, Lcom/google/android/apps/plus/service/AndroidContactsSync$RawContactState;->personId:Ljava/lang/String;

    .line 1198
    iput-wide v9, v12, Lcom/google/android/apps/plus/service/AndroidContactsSync$RawContactState;->lastUpdateTime:J

    .line 1199
    iget-object v2, v12, Lcom/google/android/apps/plus/service/AndroidContactsSync$RawContactState;->personId:Ljava/lang/String;

    invoke-virtual {v13, v2, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1207
    :goto_83
    const/4 v2, 0x1

    iput-boolean v2, v12, Lcom/google/android/apps/plus/service/AndroidContactsSync$RawContactState;->exists:Z
    :try_end_86
    .catchall {:try_start_5c .. :try_end_86} :catchall_87

    goto :goto_5c

    .line 1211
    .end local v9           #lastUpdateTime:J
    .end local v11           #personId:Ljava/lang/String;
    .end local v12           #state:Lcom/google/android/apps/plus/service/AndroidContactsSync$RawContactState;
    :catchall_87
    move-exception v2

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v2

    .line 1201
    .restart local v9       #lastUpdateTime:J
    .restart local v11       #personId:Ljava/lang/String;
    .restart local v12       #state:Lcom/google/android/apps/plus/service/AndroidContactsSync$RawContactState;
    :cond_8c
    :try_start_8c
    iget-wide v2, v12, Lcom/google/android/apps/plus/service/AndroidContactsSync$RawContactState;->lastUpdateTime:J

    cmp-long v2, v2, v9

    if-nez v2, :cond_96

    .line 1202
    invoke-virtual {v13, v11}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_83

    .line 1204
    :cond_96
    iput-wide v9, v12, Lcom/google/android/apps/plus/service/AndroidContactsSync$RawContactState;->lastUpdateTime:J
    :try_end_98
    .catchall {:try_start_8c .. :try_end_98} :catchall_87

    goto :goto_83

    .line 1211
    .end local v9           #lastUpdateTime:J
    .end local v11           #personId:Ljava/lang/String;
    .end local v12           #state:Lcom/google/android/apps/plus/service/AndroidContactsSync$RawContactState;
    :cond_99
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 1215
    invoke-virtual {p1}, Lcom/google/android/apps/plus/content/EsAccount;->getPersonId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v13, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_14
.end method

.method private static flushBatch(Landroid/content/ContentResolver;Ljava/util/ArrayList;IZ)[Landroid/content/ContentProviderResult;
    .registers 9
    .parameter "resolver"
    .parameter
    .parameter "batchSize"
    .parameter "force"
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
    .local p1, batch:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    const/4 v1, 0x0

    .line 1802
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 1803
    .local v2, size:I
    if-nez v2, :cond_8

    .line 1821
    :cond_7
    :goto_7
    return-object v1

    .line 1807
    :cond_8
    if-nez p3, :cond_c

    if-lt v2, p2, :cond_7

    .line 1811
    :cond_c
    const/4 v1, 0x0

    .line 1813
    .local v1, result:[Landroid/content/ContentProviderResult;
    :try_start_d
    const-string v3, "com.android.contacts"

    invoke-virtual {p0, v3, p1}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_12} :catch_17

    move-result-object v1

    .line 1820
    :cond_13
    :goto_13
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    goto :goto_7

    .line 1814
    :catch_17
    move-exception v0

    .line 1815
    .local v0, e:Ljava/lang/Exception;
    const-string v3, "GooglePlusContactsSync"

    const/4 v4, 0x6

    invoke-static {v3, v4}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_13

    .line 1816
    const-string v3, "GooglePlusContactsSync"

    const-string v4, "Cannot apply a batch of content provider operations"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_13
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
    .line 1794
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

    .line 1298
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 1299
    .local v6, circleIdMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Long;>;"
    invoke-static {p1}, Lcom/google/android/apps/plus/service/AndroidContactsSync;->getGroupsUri(Lcom/google/android/apps/plus/content/EsAccount;)Landroid/net/Uri;

    move-result-object v1

    sget-object v2, Lcom/google/android/apps/plus/service/AndroidContactsSync;->GROUPS_PROJECTION:[Ljava/lang/String;

    move-object v0, p0

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 1300
    .local v7, cursor:Landroid/database/Cursor;
    if-nez v7, :cond_16

    .line 1313
    :goto_15
    return-object v3

    .line 1305
    :cond_16
    :goto_16
    :try_start_16
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_33

    .line 1306
    const/4 v0, 0x1

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2d
    .catchall {:try_start_16 .. :try_end_2d} :catchall_2e

    goto :goto_16

    .line 1310
    :catchall_2e
    move-exception v0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_33
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    move-object v3, v6

    .line 1313
    goto :goto_15
.end method

.method private static getDataUri(Lcom/google/android/apps/plus/content/EsAccount;)Landroid/net/Uri;
    .registers 4
    .parameter "account"

    .prologue
    .line 3348
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
    .parameter "account"

    .prologue
    .line 3336
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
    .line 3372
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
    .parameter "account"

    .prologue
    .line 3360
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
    .parameter "context"
    .parameter "account"

    .prologue
    const/4 v7, 0x0

    .line 3081
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 3082
    .local v2, rawContactIds:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-static {p1}, Lcom/google/android/apps/plus/service/AndroidContactsSync;->getDataUri(Lcom/google/android/apps/plus/content/EsAccount;)Landroid/net/Uri;

    move-result-object v3

    .line 3083
    .local v3, rawContactsUri:Landroid/net/Uri;
    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const-string v0, "raw_contact_id"

    aput-object v0, v4, v7

    .line 3084
    .local v4, projection:[Ljava/lang/String;
    const-string v5, "starred!=0 AND mimetype=\'vnd.android.cursor.item/vnd.googleplus.profile\'"

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-static/range {v0 .. v6}, Lcom/google/android/apps/plus/service/AndroidContactsSync;->collectRawContactIds(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/util/HashSet;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3087
    const-string v5, "starred=0 AND times_contacted>0 AND mimetype=\'vnd.android.cursor.item/vnd.googleplus.profile\'"

    const-string v6, "times_contacted DESC LIMIT 8"

    move-object v0, p0

    move-object v1, p1

    invoke-static/range {v0 .. v6}, Lcom/google/android/apps/plus/service/AndroidContactsSync;->collectRawContactIds(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/util/HashSet;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3091
    const-string v5, "starred=0 AND last_time_contacted>0 AND mimetype=\'vnd.android.cursor.item/vnd.googleplus.profile\'"

    const-string v6, "last_time_contacted DESC LIMIT 8"

    move-object v0, p0

    move-object v1, p1

    invoke-static/range {v0 .. v6}, Lcom/google/android/apps/plus/service/AndroidContactsSync;->collectRawContactIds(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/util/HashSet;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3095
    new-array v0, v7, [Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/util/HashSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method private static getMaxStreamItemsPerRawContact(Landroid/content/Context;)I
    .registers 9
    .parameter "context"

    .prologue
    const/4 v5, 0x0

    const/4 v3, 0x0

    .line 2594
    sget v0, Lcom/google/android/apps/plus/service/AndroidContactsSync;->sMaxStreamItemsPerRawContact:I

    if-eqz v0, :cond_9

    .line 2595
    sget v7, Lcom/google/android/apps/plus/service/AndroidContactsSync;->sMaxStreamItemsPerRawContact:I

    .line 2608
    :goto_8
    return v7

    .line 2598
    :cond_9
    const/4 v7, 0x2

    .line 2599
    .local v7, limit:I
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

    move-result-object v6

    .line 2602
    .local v6, cursor:Landroid/database/Cursor;
    :try_start_1d
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 2603
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    sput v7, Lcom/google/android/apps/plus/service/AndroidContactsSync;->sMaxStreamItemsPerRawContact:I
    :try_end_2a
    .catchall {:try_start_1d .. :try_end_2a} :catchall_2e

    .line 2606
    :cond_2a
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_8

    :catchall_2e
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private static getPreferredAvatarSize(Landroid/content/ContentResolver;Ljava/lang/String;)I
    .registers 10
    .parameter "resolver"
    .parameter "limitName"

    .prologue
    const/4 v2, 0x0

    .line 2337
    const/16 v6, 0x60

    .line 2338
    .local v6, avatarSize:I
    sget-object v1, Lcom/google/android/apps/plus/service/AndroidContactsSync;->DISPLAY_PHOTO_CONTENT_MAX_DIMENSIONS_URI:Landroid/net/Uri;

    move-object v0, p0

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 2340
    .local v7, cursor:Landroid/database/Cursor;
    if-eqz v7, :cond_20

    .line 2342
    :try_start_f
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 2343
    invoke-interface {v7, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_1c
    .catchall {:try_start_f .. :try_end_1c} :catchall_21

    move-result v6

    .line 2346
    :cond_1d
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 2349
    :cond_20
    return v6

    .line 2346
    :catchall_21
    move-exception v0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private static getProfileDataUri(Lcom/google/android/apps/plus/content/EsAccount;J)Landroid/net/Uri;
    .registers 6
    .parameter "account"
    .parameter "rawContactId"

    .prologue
    .line 3301
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
    .parameter "account"

    .prologue
    .line 3280
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
    .line 3292
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
    .line 3327
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
    .parameter "account"

    .prologue
    .line 3315
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
    .line 2949
    const/4 v3, 0x0

    .line 2950
    .local v3, images:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/android/apps/plus/service/AndroidContactsSync$ImageContainer;>;"
    if-eqz p2, :cond_4c

    .line 2951
    const/4 v2, 0x0

    .local v2, i:I
    :goto_4
    array-length v7, p2

    if-ge v2, v7, :cond_4c

    .line 2952
    aget-object v7, p2, v2

    invoke-virtual {v7}, Lcom/google/android/apps/plus/content/DbMedia;->getMedia()Lcom/google/wireless/tacotruck/proto/Data$Media;

    move-result-object v4

    .line 2953
    .local v4, media:Lcom/google/wireless/tacotruck/proto/Data$Media;
    invoke-virtual {v4}, Lcom/google/wireless/tacotruck/proto/Data$Media;->getType()Lcom/google/wireless/tacotruck/proto/Data$Media$Type;

    move-result-object v5

    .line 2954
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

    .line 2956
    :cond_27
    invoke-virtual {v4}, Lcom/google/wireless/tacotruck/proto/Data$Media;->getThumbnailUrl()Ljava/lang/String;

    move-result-object v6

    .line 2957
    .local v6, url:Ljava/lang/String;
    invoke-virtual {v5}, Lcom/google/wireless/tacotruck/proto/Data$Media$Type;->name()Ljava/lang/String;

    move-result-object v7

    invoke-static {p0, p1, v7, v6}, Lcom/google/android/apps/plus/service/AndroidContactsSync;->downloadMedia(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v0

    .line 2958
    .local v0, bytes:[B
    if-eqz v0, :cond_49

    .line 2959
    if-nez v3, :cond_3c

    .line 2960
    new-instance v3, Ljava/util/ArrayList;

    .end local v3           #images:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/android/apps/plus/service/AndroidContactsSync$ImageContainer;>;"
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 2962
    .restart local v3       #images:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/android/apps/plus/service/AndroidContactsSync$ImageContainer;>;"
    :cond_3c
    new-instance v1, Lcom/google/android/apps/plus/service/AndroidContactsSync$ImageContainer;

    const/4 v7, 0x0

    invoke-direct {v1, v7}, Lcom/google/android/apps/plus/service/AndroidContactsSync$ImageContainer;-><init>(Lcom/google/android/apps/plus/service/AndroidContactsSync$1;)V

    .line 2963
    .local v1, container:Lcom/google/android/apps/plus/service/AndroidContactsSync$ImageContainer;
    iput v2, v1, Lcom/google/android/apps/plus/service/AndroidContactsSync$ImageContainer;->mediaIndex:I

    .line 2964
    iput-object v0, v1, Lcom/google/android/apps/plus/service/AndroidContactsSync$ImageContainer;->imageBytes:[B

    .line 2965
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2951
    .end local v0           #bytes:[B
    .end local v1           #container:Lcom/google/android/apps/plus/service/AndroidContactsSync$ImageContainer;
    .end local v6           #url:Ljava/lang/String;
    :cond_49
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 2971
    .end local v2           #i:I
    .end local v4           #media:Lcom/google/wireless/tacotruck/proto/Data$Media;
    .end local v5           #type:Lcom/google/wireless/tacotruck/proto/Data$Media$Type;
    :cond_4c
    return-object v3
.end method

.method private static getStreamItemsPhotoUri(Lcom/google/android/apps/plus/content/EsAccount;)Landroid/net/Uri;
    .registers 4
    .parameter "account"

    .prologue
    .line 3393
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
    .parameter "account"

    .prologue
    .line 3381
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
    .line 1240
    .local p2, stateMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/google/android/apps/plus/service/AndroidContactsSync$RawContactState;>;"
    .local p3, batch:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    .local p4, circleIdMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Long;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1241
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

    .line 1242
    .local v8, state:Lcom/google/android/apps/plus/service/AndroidContactsSync$RawContactState;
    iget-boolean v0, v8, Lcom/google/android/apps/plus/service/AndroidContactsSync$RawContactState;->exists:Z

    if-eqz v0, :cond_d

    iget-wide v0, v8, Lcom/google/android/apps/plus/service/AndroidContactsSync$RawContactState;->rawContactId:J

    const-wide/16 v4, 0x0

    cmp-long v0, v0, v4

    if-nez v0, :cond_d

    .line 1243
    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_d

    .line 1247
    .end local v8           #state:Lcom/google/android/apps/plus/service/AndroidContactsSync$RawContactState;
    :cond_29
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_38

    .line 1248
    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p3

    move-object v4, p2

    move-object v6, p4

    invoke-static/range {v0 .. v6}, Lcom/google/android/apps/plus/service/AndroidContactsSync;->updateContacts(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/HashMap;ZLjava/util/HashMap;)V

    .line 1250
    :cond_38
    return-void
.end method

.method public static isAndroidSyncSupported(Landroid/content/Context;)Z
    .registers 3
    .parameter "context"

    .prologue
    .line 3419
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-ge v0, v1, :cond_8

    const/4 v0, 0x0

    :goto_7
    return v0

    :cond_8
    invoke-static {p0}, Lcom/google/android/apps/plus/service/AndroidContactsSync;->isContactsProviderAvailable(Landroid/content/Context;)Z

    move-result v0

    goto :goto_7
.end method

.method private static isCheckin([Lcom/google/wireless/tacotruck/proto/Data$Explanation;)Z
    .registers 4
    .parameter "dbExplanations"

    .prologue
    .line 2855
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    array-length v1, p0

    if-ge v0, v1, :cond_17

    .line 2856
    sget-object v1, Lcom/google/wireless/tacotruck/proto/Data$Explanation$Type;->CHECKIN:Lcom/google/wireless/tacotruck/proto/Data$Explanation$Type;

    aget-object v2, p0, v0

    invoke-virtual {v2}, Lcom/google/wireless/tacotruck/proto/Data$Explanation;->getType()Lcom/google/wireless/tacotruck/proto/Data$Explanation$Type;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/wireless/tacotruck/proto/Data$Explanation$Type;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 2857
    const/4 v1, 0x1

    .line 2860
    :goto_13
    return v1

    .line 2855
    :cond_14
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2860
    :cond_17
    const/4 v1, 0x0

    goto :goto_13
.end method

.method public static isContactsProviderAvailable(Landroid/content/Context;)Z
    .registers 6
    .parameter "context"

    .prologue
    const/4 v2, 0x1

    .line 3426
    sget-boolean v3, Lcom/google/android/apps/plus/service/AndroidContactsSync;->sContactsProviderStatusKnown:Z

    if-eqz v3, :cond_8

    .line 3427
    sget-boolean v2, Lcom/google/android/apps/plus/service/AndroidContactsSync;->sContactsProviderExists:Z

    .line 3442
    :goto_7
    return v2

    .line 3431
    :cond_8
    :try_start_8
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "com.android.contacts"

    invoke-virtual {v3, v4}, Landroid/content/ContentResolver;->acquireContentProviderClient(Ljava/lang/String;)Landroid/content/ContentProviderClient;

    move-result-object v1

    .line 3433
    .local v1, provider:Landroid/content/ContentProviderClient;
    if-eqz v1, :cond_21

    :goto_14
    sput-boolean v2, Lcom/google/android/apps/plus/service/AndroidContactsSync;->sContactsProviderExists:Z

    .line 3434
    if-eqz v1, :cond_1b

    .line 3435
    invoke-virtual {v1}, Landroid/content/ContentProviderClient;->release()Z

    .line 3437
    :cond_1b
    const/4 v2, 0x1

    sput-boolean v2, Lcom/google/android/apps/plus/service/AndroidContactsSync;->sContactsProviderStatusKnown:Z
    :try_end_1e
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_1e} :catch_23

    .line 3442
    .end local v1           #provider:Landroid/content/ContentProviderClient;
    :goto_1e
    sget-boolean v2, Lcom/google/android/apps/plus/service/AndroidContactsSync;->sContactsProviderExists:Z

    goto :goto_7

    .line 3433
    .restart local v1       #provider:Landroid/content/ContentProviderClient;
    :cond_21
    const/4 v2, 0x0

    goto :goto_14

    .line 3438
    .end local v1           #provider:Landroid/content/ContentProviderClient;
    :catch_23
    move-exception v0

    .line 3439
    .local v0, e:Ljava/lang/Throwable;
    const-string v2, "GooglePlusContactsSync"

    const-string v3, "Cannot determine availability of the contacts provider"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1e
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
            "Ljava/lang/String;",
            "Lcom/google/android/apps/plus/service/AndroidContactsSync$PersonActivityState;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2576
    .local p1, stateMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/google/android/apps/plus/service/AndroidContactsSync$PersonActivityState;>;"
    invoke-static {p0}, Lcom/google/android/apps/plus/service/AndroidContactsSync;->getMaxStreamItemsPerRawContact(Landroid/content/Context;)I

    move-result v3

    .line 2577
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

    .line 2578
    .local v4, state:Lcom/google/android/apps/plus/service/AndroidContactsSync$PersonActivityState;
    iget-object v0, v4, Lcom/google/android/apps/plus/service/AndroidContactsSync$PersonActivityState;->activities:Ljava/util/ArrayList;

    .line 2579
    .local v0, activities:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/android/apps/plus/service/AndroidContactsSync$ActivityState;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-le v5, v3, :cond_c

    .line 2583
    sget-object v5, Lcom/google/android/apps/plus/service/AndroidContactsSync;->ACTIVITY_STATE_COMPARATOR:Ljava/util/Comparator;

    invoke-static {v0, v5}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 2584
    move v1, v3

    .local v1, i:I
    :goto_26
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v1, v5, :cond_c

    .line 2585
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/apps/plus/service/AndroidContactsSync$ActivityState;

    const/4 v6, 0x0

    iput-boolean v6, v5, Lcom/google/android/apps/plus/service/AndroidContactsSync$ActivityState;->exists:Z

    .line 2584
    add-int/lit8 v1, v1, 0x1

    goto :goto_26

    .line 2588
    .end local v0           #activities:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/android/apps/plus/service/AndroidContactsSync$ActivityState;>;"
    .end local v1           #i:I
    .end local v4           #state:Lcom/google/android/apps/plus/service/AndroidContactsSync$PersonActivityState;
    :cond_38
    return-void
.end method

.method private static loadContactCircleMembership(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;)V
    .registers 12
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
    .line 1541
    .local p4, stateMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/google/android/apps/plus/service/AndroidContactsSync$RawContactState;>;"
    .local p5, circleIdMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Long;>;"
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    array-length v4, p3

    if-ge v2, v4, :cond_26

    .line 1542
    aget-object v4, p3, v2

    invoke-virtual {p4, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/apps/plus/service/AndroidContactsSync$RawContactState;

    .line 1543
    .local v3, state:Lcom/google/android/apps/plus/service/AndroidContactsSync$RawContactState;
    const-string v4, "plus"

    invoke-virtual {p5, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    .line 1544
    .local v1, groupId:Ljava/lang/Long;
    if-eqz v1, :cond_23

    .line 1545
    const-string v4, "vnd.android.cursor.item/group_membership"

    invoke-virtual {v1}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/google/android/apps/plus/service/AndroidContactsSync;->addData(Lcom/google/android/apps/plus/service/AndroidContactsSync$RawContactState;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/apps/plus/service/AndroidContactsSync$DataState;

    move-result-object v0

    .line 1547
    .local v0, dataState:Lcom/google/android/apps/plus/service/AndroidContactsSync$DataState;
    const/4 v4, 0x1

    iput-boolean v4, v0, Lcom/google/android/apps/plus/service/AndroidContactsSync$DataState;->exists:Z

    .line 1541
    .end local v0           #dataState:Lcom/google/android/apps/plus/service/AndroidContactsSync$DataState;
    :cond_23
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1550
    .end local v1           #groupId:Ljava/lang/Long;
    .end local v3           #state:Lcom/google/android/apps/plus/service/AndroidContactsSync$RawContactState;
    :cond_26
    return-void
.end method

.method private static loadContactProtobufs(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/util/HashMap;)V
    .registers 19
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
    .line 1475
    .local p4, stateMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/google/android/apps/plus/service/AndroidContactsSync$RawContactState;>;"
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 1476
    .local v12, sb:Ljava/lang/StringBuilder;
    const-string v1, "person_id IN ("

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1477
    const/4 v10, 0x0

    .local v10, i:I
    :goto_b
    move-object/from16 v0, p3

    array-length v1, v0

    if-ge v10, v1, :cond_1f

    .line 1478
    if-eqz v10, :cond_17

    .line 1479
    const/16 v1, 0x2c

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1481
    :cond_17
    const/16 v1, 0x3f

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1477
    add-int/lit8 v10, v10, 0x1

    goto :goto_b

    .line 1483
    :cond_1f
    const/16 v1, 0x29

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1485
    sget-object v3, Lcom/google/android/apps/plus/service/AndroidContactsSync;->PROFILE_PROJECTION:[Ljava/lang/String;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    move-object v1, p1

    move-object/from16 v2, p2

    move-object/from16 v5, p3

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 1487
    .local v9, cursor:Landroid/database/Cursor;
    :cond_34
    :goto_34
    :try_start_34
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_64

    .line 1488
    const/4 v1, 0x0

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 1489
    .local v11, personId:Ljava/lang/String;
    move-object/from16 v0, p4

    invoke-virtual {v0, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/google/android/apps/plus/service/AndroidContactsSync$RawContactState;

    .line 1490
    .local v13, state:Lcom/google/android/apps/plus/service/AndroidContactsSync$RawContactState;
    const/4 v1, 0x1

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v13, Lcom/google/android/apps/plus/service/AndroidContactsSync$RawContactState;->fullName:Ljava/lang/String;

    .line 1491
    const/4 v1, 0x2

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v8

    .line 1492
    .local v8, contactProto:[B
    if-eqz v8, :cond_34

    .line 1493
    invoke-static {v8}, Lcom/google/android/apps/plus/content/EsPeopleData;->deserializeContactInfo([B)Lcom/google/android/apps/plus/content/EsPeopleData$ContactInfo;

    move-result-object v7

    .line 1494
    .local v7, contact:Lcom/google/android/apps/plus/content/EsPeopleData$ContactInfo;
    if-eqz v7, :cond_34

    .line 1495
    invoke-static {p0, v13, v7}, Lcom/google/android/apps/plus/service/AndroidContactsSync;->populateRawContactState(Landroid/content/Context;Lcom/google/android/apps/plus/service/AndroidContactsSync$RawContactState;Lcom/google/android/apps/plus/content/EsPeopleData$ContactInfo;)V
    :try_end_5e
    .catchall {:try_start_34 .. :try_end_5e} :catchall_5f

    goto :goto_34

    .line 1500
    .end local v7           #contact:Lcom/google/android/apps/plus/content/EsPeopleData$ContactInfo;
    .end local v8           #contactProto:[B
    .end local v11           #personId:Ljava/lang/String;
    .end local v13           #state:Lcom/google/android/apps/plus/service/AndroidContactsSync$RawContactState;
    :catchall_5f
    move-exception v1

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    throw v1

    :cond_64
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 1502
    return-void
.end method

.method private static populateRawContactState(Landroid/content/Context;Lcom/google/android/apps/plus/service/AndroidContactsSync$RawContactState;Lcom/google/android/apps/plus/content/EsPeopleData$ContactInfo;)V
    .registers 11
    .parameter "context"
    .parameter "state"
    .parameter "contact"

    .prologue
    const/4 v7, 0x1

    .line 1509
    iget-object v5, p2, Lcom/google/android/apps/plus/content/EsPeopleData$ContactInfo;->emails:Ljava/util/List;

    if-eqz v5, :cond_29

    .line 1510
    iget-object v5, p2, Lcom/google/android/apps/plus/content/EsPeopleData$ContactInfo;->emails:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_b
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_29

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/api/services/plusi/model/DataEmail;

    .line 1511
    .local v2, email:Lcom/google/api/services/plusi/model/DataEmail;
    const-string v5, "vnd.android.cursor.item/email_v2"

    iget-object v6, v2, Lcom/google/api/services/plusi/model/DataEmail;->value:Ljava/lang/String;

    invoke-static {p1, v5, v6}, Lcom/google/android/apps/plus/service/AndroidContactsSync;->addData(Lcom/google/android/apps/plus/service/AndroidContactsSync$RawContactState;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/apps/plus/service/AndroidContactsSync$DataState;

    move-result-object v1

    .line 1512
    .local v1, dataState:Lcom/google/android/apps/plus/service/AndroidContactsSync$DataState;
    iput-boolean v7, v1, Lcom/google/android/apps/plus/service/AndroidContactsSync$DataState;->exists:Z

    .line 1513
    iget-object v5, v2, Lcom/google/api/services/plusi/model/DataEmail;->standardTag:Ljava/lang/Integer;

    iget-object v6, v2, Lcom/google/api/services/plusi/model/DataEmail;->customTag:Ljava/lang/String;

    invoke-static {v1, v5, v6}, Lcom/google/android/apps/plus/service/AndroidContactsSync;->convertEmailType(Lcom/google/android/apps/plus/service/AndroidContactsSync$DataState;Ljava/lang/Integer;Ljava/lang/String;)V

    goto :goto_b

    .line 1517
    .end local v1           #dataState:Lcom/google/android/apps/plus/service/AndroidContactsSync$DataState;
    .end local v2           #email:Lcom/google/api/services/plusi/model/DataEmail;
    .end local v3           #i$:Ljava/util/Iterator;
    :cond_29
    iget-object v5, p2, Lcom/google/android/apps/plus/content/EsPeopleData$ContactInfo;->phones:Ljava/util/List;

    if-eqz v5, :cond_51

    .line 1518
    iget-object v5, p2, Lcom/google/android/apps/plus/content/EsPeopleData$ContactInfo;->phones:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .restart local v3       #i$:Ljava/util/Iterator;
    :goto_33
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_51

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/api/services/plusi/model/DataPhone;

    .line 1519
    .local v4, phone:Lcom/google/api/services/plusi/model/DataPhone;
    const-string v5, "vnd.android.cursor.item/phone_v2"

    iget-object v6, v4, Lcom/google/api/services/plusi/model/DataPhone;->value:Ljava/lang/String;

    invoke-static {p1, v5, v6}, Lcom/google/android/apps/plus/service/AndroidContactsSync;->addData(Lcom/google/android/apps/plus/service/AndroidContactsSync$RawContactState;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/apps/plus/service/AndroidContactsSync$DataState;

    move-result-object v1

    .line 1520
    .restart local v1       #dataState:Lcom/google/android/apps/plus/service/AndroidContactsSync$DataState;
    iput-boolean v7, v1, Lcom/google/android/apps/plus/service/AndroidContactsSync$DataState;->exists:Z

    .line 1521
    iget-object v5, v4, Lcom/google/api/services/plusi/model/DataPhone;->standardTag:Ljava/lang/Integer;

    iget-object v6, v4, Lcom/google/api/services/plusi/model/DataPhone;->customTag:Ljava/lang/String;

    invoke-static {p0, v1, v5, v6}, Lcom/google/android/apps/plus/service/AndroidContactsSync;->convertPhoneType(Landroid/content/Context;Lcom/google/android/apps/plus/service/AndroidContactsSync$DataState;Ljava/lang/Integer;Ljava/lang/String;)V

    goto :goto_33

    .line 1525
    .end local v1           #dataState:Lcom/google/android/apps/plus/service/AndroidContactsSync$DataState;
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v4           #phone:Lcom/google/api/services/plusi/model/DataPhone;
    :cond_51
    iget-object v5, p2, Lcom/google/android/apps/plus/content/EsPeopleData$ContactInfo;->addresses:Ljava/util/List;

    if-eqz v5, :cond_79

    .line 1526
    iget-object v5, p2, Lcom/google/android/apps/plus/content/EsPeopleData$ContactInfo;->addresses:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .restart local v3       #i$:Ljava/util/Iterator;
    :goto_5b
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_79

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/plus/content/EsPeopleData$AddressInfo;

    .line 1527
    .local v0, address:Lcom/google/android/apps/plus/content/EsPeopleData$AddressInfo;
    const-string v5, "vnd.android.cursor.item/postal-address_v2"

    iget-object v6, v0, Lcom/google/android/apps/plus/content/EsPeopleData$AddressInfo;->value:Ljava/lang/String;

    invoke-static {p1, v5, v6}, Lcom/google/android/apps/plus/service/AndroidContactsSync;->addData(Lcom/google/android/apps/plus/service/AndroidContactsSync$RawContactState;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/apps/plus/service/AndroidContactsSync$DataState;

    move-result-object v1

    .line 1529
    .restart local v1       #dataState:Lcom/google/android/apps/plus/service/AndroidContactsSync$DataState;
    iput-boolean v7, v1, Lcom/google/android/apps/plus/service/AndroidContactsSync$DataState;->exists:Z

    .line 1530
    iget-object v5, v0, Lcom/google/android/apps/plus/content/EsPeopleData$AddressInfo;->standardTag:Ljava/lang/Integer;

    iget-object v6, v0, Lcom/google/android/apps/plus/content/EsPeopleData$AddressInfo;->customTag:Ljava/lang/String;

    invoke-static {v1, v5, v6}, Lcom/google/android/apps/plus/service/AndroidContactsSync;->convertPostalAddressType(Lcom/google/android/apps/plus/service/AndroidContactsSync$DataState;Ljava/lang/Integer;Ljava/lang/String;)V

    goto :goto_5b

    .line 1533
    .end local v0           #address:Lcom/google/android/apps/plus/content/EsPeopleData$AddressInfo;
    .end local v1           #dataState:Lcom/google/android/apps/plus/service/AndroidContactsSync$DataState;
    .end local v3           #i$:Ljava/util/Iterator;
    :cond_79
    return-void
.end method

.method private static queryRawContactsRequiringActivities(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)Ljava/util/HashMap;
    .registers 15
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
            "Lcom/google/android/apps/plus/service/AndroidContactsSync$PersonActivityState;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 2429
    invoke-static {p0, p1}, Lcom/google/android/apps/plus/service/AndroidContactsSync;->getLimitedRawContactSet(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)[Ljava/lang/String;

    move-result-object v4

    .line 2430
    .local v4, rawContactIds:[Ljava/lang/String;
    array-length v0, v4

    if-nez v0, :cond_9

    .line 2464
    :goto_8
    return-object v5

    .line 2434
    :cond_9
    new-instance v12, Ljava/util/HashMap;

    invoke-direct {v12}, Ljava/util/HashMap;-><init>()V

    .line 2437
    .local v12, stateMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/google/android/apps/plus/service/AndroidContactsSync$PersonActivityState;>;"
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 2438
    .local v10, sb:Ljava/lang/StringBuilder;
    const-string v0, "_id"

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " IN ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2439
    const/4 v8, 0x0

    .local v8, i:I
    :goto_1f
    array-length v0, v4

    if-ge v8, v0, :cond_31

    .line 2440
    if-eqz v8, :cond_29

    .line 2441
    const/16 v0, 0x2c

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2443
    :cond_29
    const/16 v0, 0x3f

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2439
    add-int/lit8 v8, v8, 0x1

    goto :goto_1f

    .line 2445
    :cond_31
    const/16 v0, 0x29

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2447
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {p1}, Lcom/google/android/apps/plus/service/AndroidContactsSync;->getRawContactsUri(Lcom/google/android/apps/plus/content/EsAccount;)Landroid/net/Uri;

    move-result-object v1

    sget-object v2, Lcom/google/android/apps/plus/service/AndroidContactsSync;->RAW_CONTACT_SOURCE_ID_PROJECTION:[Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 2450
    .local v6, cursor:Landroid/database/Cursor;
    :cond_48
    :goto_48
    :try_start_48
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_71

    .line 2451
    const/4 v0, 0x1

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 2452
    .local v9, personId:Ljava/lang/String;
    invoke-static {v9}, Lcom/google/android/apps/plus/content/EsPeopleData;->extractGaiaId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 2453
    .local v7, gaiaId:Ljava/lang/String;
    if-eqz v7, :cond_48

    .line 2454
    new-instance v11, Lcom/google/android/apps/plus/service/AndroidContactsSync$PersonActivityState;

    const/4 v0, 0x0

    invoke-direct {v11, v0}, Lcom/google/android/apps/plus/service/AndroidContactsSync$PersonActivityState;-><init>(Lcom/google/android/apps/plus/service/AndroidContactsSync$1;)V

    .line 2455
    .local v11, state:Lcom/google/android/apps/plus/service/AndroidContactsSync$PersonActivityState;
    iput-object v7, v11, Lcom/google/android/apps/plus/service/AndroidContactsSync$PersonActivityState;->gaiaId:Ljava/lang/String;

    .line 2456
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, v11, Lcom/google/android/apps/plus/service/AndroidContactsSync$PersonActivityState;->rawContactId:J

    .line 2457
    invoke-virtual {v12, v7, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_6b
    .catchall {:try_start_48 .. :try_end_6b} :catchall_6c

    goto :goto_48

    .line 2461
    .end local v7           #gaiaId:Ljava/lang/String;
    .end local v9           #personId:Ljava/lang/String;
    .end local v11           #state:Lcom/google/android/apps/plus/service/AndroidContactsSync$PersonActivityState;
    :catchall_6c
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_71
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    move-object v5, v12

    .line 2464
    goto :goto_8
.end method

.method private static queryRawContactsRequiringLargeAvatars(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)Ljava/util/HashMap;
    .registers 15
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
            "Lcom/google/android/apps/plus/service/AndroidContactsSync$AvatarState;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 1944
    invoke-static {p0, p1}, Lcom/google/android/apps/plus/service/AndroidContactsSync;->getLimitedRawContactSet(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)[Ljava/lang/String;

    move-result-object v4

    .line 1945
    .local v4, rawContactIds:[Ljava/lang/String;
    array-length v1, v4

    if-nez v1, :cond_9

    .line 1991
    :cond_8
    :goto_8
    return-object v5

    .line 1949
    :cond_9
    new-instance v12, Ljava/util/HashMap;

    invoke-direct {v12}, Ljava/util/HashMap;-><init>()V

    .line 1952
    .local v12, stateMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/google/android/apps/plus/service/AndroidContactsSync$AvatarState;>;"
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1953
    .local v0, resolver:Landroid/content/ContentResolver;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 1954
    .local v10, sb:Ljava/lang/StringBuilder;
    const-string v1, "_id"

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " IN ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1955
    const/4 v8, 0x0

    .local v8, i:I
    :goto_23
    array-length v1, v4

    if-ge v8, v1, :cond_35

    .line 1956
    if-eqz v8, :cond_2d

    .line 1957
    const/16 v1, 0x2c

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1959
    :cond_2d
    const/16 v1, 0x3f

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1955
    add-int/lit8 v8, v8, 0x1

    goto :goto_23

    .line 1961
    :cond_35
    const/16 v1, 0x29

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1964
    const-string v1, " OR "

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "sync2"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " != 0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1965
    invoke-static {p1}, Lcom/google/android/apps/plus/service/AndroidContactsSync;->getRawContactsUri(Lcom/google/android/apps/plus/content/EsAccount;)Landroid/net/Uri;

    move-result-object v1

    sget-object v2, Lcom/google/android/apps/plus/service/AndroidContactsSync;->LARGE_AVATAR_RAW_CONTACTS_PROJECTION:[Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1967
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_8

    .line 1972
    :cond_5b
    :goto_5b
    :try_start_5b
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_8b

    .line 1973
    const/4 v1, 0x1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 1974
    .local v9, personId:Ljava/lang/String;
    invoke-static {v9}, Lcom/google/android/apps/plus/content/EsPeopleData;->extractGaiaId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1975
    .local v7, gaiaId:Ljava/lang/String;
    if-eqz v7, :cond_5b

    .line 1976
    new-instance v11, Lcom/google/android/apps/plus/service/AndroidContactsSync$AvatarState;

    const/4 v1, 0x0

    invoke-direct {v11, v1}, Lcom/google/android/apps/plus/service/AndroidContactsSync$AvatarState;-><init>(Lcom/google/android/apps/plus/service/AndroidContactsSync$1;)V

    .line 1977
    .local v11, state:Lcom/google/android/apps/plus/service/AndroidContactsSync$AvatarState;
    iput-object v7, v11, Lcom/google/android/apps/plus/service/AndroidContactsSync$AvatarState;->gaiaId:Ljava/lang/String;

    .line 1978
    const/4 v1, 0x0

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    iput-wide v1, v11, Lcom/google/android/apps/plus/service/AndroidContactsSync$AvatarState;->rawContactId:J

    .line 1979
    const/4 v1, 0x2

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v11, Lcom/google/android/apps/plus/service/AndroidContactsSync$AvatarState;->signature:I

    .line 1980
    invoke-virtual {v12, v7, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_85
    .catchall {:try_start_5b .. :try_end_85} :catchall_86

    goto :goto_5b

    .line 1984
    .end local v7           #gaiaId:Ljava/lang/String;
    .end local v9           #personId:Ljava/lang/String;
    .end local v11           #state:Lcom/google/android/apps/plus/service/AndroidContactsSync$AvatarState;
    :catchall_86
    move-exception v1

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v1

    :cond_8b
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1987
    invoke-virtual {v12}, Ljava/util/HashMap;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_97

    .line 1988
    invoke-static {p0, p1, v12}, Lcom/google/android/apps/plus/service/AndroidContactsSync;->reconcileLargeAvatarSignatures(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/util/HashMap;)V

    :cond_97
    move-object v5, v12

    .line 1991
    goto/16 :goto_8
.end method

.method private static queryRawContactsRequiringThumbnails(Landroid/content/ContentResolver;Lcom/google/android/apps/plus/content/EsAccount;)Ljava/util/HashMap;
    .registers 15
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
            "Lcom/google/android/apps/plus/service/AndroidContactsSync$AvatarState;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 2280
    invoke-static {p1}, Lcom/google/android/apps/plus/service/AndroidContactsSync;->getEntitiesUri(Lcom/google/android/apps/plus/content/EsAccount;)Landroid/net/Uri;

    move-result-object v1

    sget-object v2, Lcom/google/android/apps/plus/service/AndroidContactsSync;->THUMBNAILS_RAW_CONTACT_PROJECTION:[Ljava/lang/String;

    const-string v3, "(mimetype=\'vnd.android.cursor.item/photo\' OR mimetype=\'vnd.android.cursor.item/vnd.googleplus.profile\') AND (sync2=0 OR sync2 IS NULL)"

    move-object v0, p0

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 2282
    .local v6, cursor:Landroid/database/Cursor;
    if-nez v6, :cond_12

    .line 2330
    :goto_11
    return-object v4

    .line 2286
    :cond_12
    new-instance v12, Ljava/util/HashMap;

    invoke-direct {v12}, Ljava/util/HashMap;-><init>()V

    .line 2288
    .local v12, stateMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/google/android/apps/plus/service/AndroidContactsSync$AvatarState;>;"
    :cond_17
    :goto_17
    :try_start_17
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_63

    .line 2289
    const/4 v0, 0x1

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 2290
    .local v9, personId:Ljava/lang/String;
    invoke-static {v9}, Lcom/google/android/apps/plus/content/EsPeopleData;->extractGaiaId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 2291
    .local v7, gaiaId:Ljava/lang/String;
    if-eqz v7, :cond_17

    .line 2292
    invoke-virtual {v12, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/google/android/apps/plus/service/AndroidContactsSync$AvatarState;

    .line 2293
    .local v11, state:Lcom/google/android/apps/plus/service/AndroidContactsSync$AvatarState;
    if-nez v11, :cond_49

    .line 2294
    new-instance v11, Lcom/google/android/apps/plus/service/AndroidContactsSync$AvatarState;

    .end local v11           #state:Lcom/google/android/apps/plus/service/AndroidContactsSync$AvatarState;
    const/4 v0, 0x0

    invoke-direct {v11, v0}, Lcom/google/android/apps/plus/service/AndroidContactsSync$AvatarState;-><init>(Lcom/google/android/apps/plus/service/AndroidContactsSync$1;)V

    .line 2295
    .restart local v11       #state:Lcom/google/android/apps/plus/service/AndroidContactsSync$AvatarState;
    iput-object v7, v11, Lcom/google/android/apps/plus/service/AndroidContactsSync$AvatarState;->gaiaId:Ljava/lang/String;

    .line 2296
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, v11, Lcom/google/android/apps/plus/service/AndroidContactsSync$AvatarState;->rawContactId:J

    .line 2297
    const/4 v0, 0x4

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v11, Lcom/google/android/apps/plus/service/AndroidContactsSync$AvatarState;->signature:I

    .line 2298
    invoke-virtual {v12, v7, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2301
    :cond_49
    const/4 v0, 0x3

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 2302
    .local v8, mimetype:Ljava/lang/String;
    const-string v0, "vnd.android.cursor.item/photo"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 2303
    const/4 v0, 0x2

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, v11, Lcom/google/android/apps/plus/service/AndroidContactsSync$AvatarState;->dataId:J
    :try_end_5d
    .catchall {:try_start_17 .. :try_end_5d} :catchall_5e

    goto :goto_17

    .line 2308
    .end local v7           #gaiaId:Ljava/lang/String;
    .end local v8           #mimetype:Ljava/lang/String;
    .end local v9           #personId:Ljava/lang/String;
    .end local v11           #state:Lcom/google/android/apps/plus/service/AndroidContactsSync$AvatarState;
    :catchall_5e
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_63
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 2311
    sget-object v0, Lcom/google/android/apps/plus/content/EsProvider;->AVATARS_URI:Landroid/net/Uri;

    invoke-static {v0, p1}, Lcom/google/android/apps/plus/content/EsProvider;->appendAccountParameter(Landroid/net/Uri;Lcom/google/android/apps/plus/content/EsAccount;)Landroid/net/Uri;

    move-result-object v1

    sget-object v2, Lcom/google/android/apps/plus/service/AndroidContactsSync;->AVATAR_SIGNATURE_PROJECTION:[Ljava/lang/String;

    const-string v3, "signature NOT NULL AND signature !=0 AND medium_image NOT NULL"

    move-object v0, p0

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 2314
    :cond_76
    :goto_76
    :try_start_76
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_9e

    .line 2315
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 2316
    .restart local v7       #gaiaId:Ljava/lang/String;
    const/4 v0, 0x1

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    .line 2317
    .local v10, signature:I
    invoke-virtual {v12, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/google/android/apps/plus/service/AndroidContactsSync$AvatarState;

    .line 2318
    .restart local v11       #state:Lcom/google/android/apps/plus/service/AndroidContactsSync$AvatarState;
    if-eqz v11, :cond_76

    .line 2319
    iget v0, v11, Lcom/google/android/apps/plus/service/AndroidContactsSync$AvatarState;->signature:I

    if-ne v0, v10, :cond_9b

    .line 2320
    invoke-virtual {v12, v7}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_95
    .catchall {:try_start_76 .. :try_end_95} :catchall_96

    goto :goto_76

    .line 2327
    .end local v7           #gaiaId:Ljava/lang/String;
    .end local v10           #signature:I
    .end local v11           #state:Lcom/google/android/apps/plus/service/AndroidContactsSync$AvatarState;
    :catchall_96
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0

    .line 2322
    .restart local v7       #gaiaId:Ljava/lang/String;
    .restart local v10       #signature:I
    .restart local v11       #state:Lcom/google/android/apps/plus/service/AndroidContactsSync$AvatarState;
    :cond_9b
    :try_start_9b
    iput v10, v11, Lcom/google/android/apps/plus/service/AndroidContactsSync$AvatarState;->signature:I
    :try_end_9d
    .catchall {:try_start_9b .. :try_end_9d} :catchall_96

    goto :goto_76

    .line 2327
    .end local v7           #gaiaId:Ljava/lang/String;
    .end local v10           #signature:I
    .end local v11           #state:Lcom/google/android/apps/plus/service/AndroidContactsSync$AvatarState;
    :cond_9e
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    move-object v4, v12

    .line 2330
    goto/16 :goto_11
.end method

.method private static queryStreamItemState(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/util/HashMap;)Z
    .registers 9
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
            "Lcom/google/android/apps/plus/service/AndroidContactsSync$PersonActivityState;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 2472
    .local p2, stateMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/google/android/apps/plus/service/AndroidContactsSync$PersonActivityState;>;"
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

    invoke-static/range {v0 .. v5}, Lcom/google/android/apps/plus/service/AndroidContactsSync;->queryStreamItemState(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/util/HashMap;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static queryStreamItemState(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/util/HashMap;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)Z
    .registers 17
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
            "Ljava/lang/String;",
            "Lcom/google/android/apps/plus/service/AndroidContactsSync$PersonActivityState;",
            ">;",
            "Landroid/net/Uri;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 2484
    .local p2, stateMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/google/android/apps/plus/service/AndroidContactsSync$PersonActivityState;>;"
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 2485
    .local v0, resolver:Landroid/content/ContentResolver;
    sget-object v2, Lcom/google/android/apps/plus/service/AndroidContactsSync;->STREAM_ITEMS_PROJECTION:[Ljava/lang/String;

    const/4 v5, 0x0

    move-object v1, p3

    move-object v3, p4

    move-object/from16 v4, p5

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 2487
    .local v7, cursor:Landroid/database/Cursor;
    if-nez v7, :cond_13

    .line 2488
    const/4 v1, 0x0

    .line 2514
    :goto_12
    return v1

    .line 2492
    :cond_13
    :goto_13
    :try_start_13
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_5d

    .line 2493
    const/4 v1, 0x1

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 2494
    .local v9, personId:Ljava/lang/String;
    invoke-static {v9}, Lcom/google/android/apps/plus/content/EsPeopleData;->extractGaiaId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 2495
    .local v8, gaiaId:Ljava/lang/String;
    if-eqz v8, :cond_13

    .line 2496
    invoke-virtual {p2, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/google/android/apps/plus/service/AndroidContactsSync$PersonActivityState;

    .line 2497
    .local v10, state:Lcom/google/android/apps/plus/service/AndroidContactsSync$PersonActivityState;
    if-eqz v10, :cond_13

    .line 2498
    new-instance v6, Lcom/google/android/apps/plus/service/AndroidContactsSync$ActivityState;

    const/4 v1, 0x0

    invoke-direct {v6, v1}, Lcom/google/android/apps/plus/service/AndroidContactsSync$ActivityState;-><init>(Lcom/google/android/apps/plus/service/AndroidContactsSync$1;)V

    .line 2499
    .local v6, activityState:Lcom/google/android/apps/plus/service/AndroidContactsSync$ActivityState;
    iget-wide v1, v10, Lcom/google/android/apps/plus/service/AndroidContactsSync$PersonActivityState;->rawContactId:J

    iput-wide v1, v6, Lcom/google/android/apps/plus/service/AndroidContactsSync$ActivityState;->rawContactId:J

    .line 2500
    const/4 v1, 0x0

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    iput-wide v1, v6, Lcom/google/android/apps/plus/service/AndroidContactsSync$ActivityState;->streamItemId:J

    .line 2501
    const/4 v1, 0x2

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v6, Lcom/google/android/apps/plus/service/AndroidContactsSync$ActivityState;->activityId:Ljava/lang/String;

    .line 2503
    const/4 v1, 0x3

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    iput-wide v1, v6, Lcom/google/android/apps/plus/service/AndroidContactsSync$ActivityState;->created:J

    .line 2504
    const/4 v1, 0x4

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    iput-wide v1, v6, Lcom/google/android/apps/plus/service/AndroidContactsSync$ActivityState;->lastModified:J

    .line 2506
    iget-object v1, v10, Lcom/google/android/apps/plus/service/AndroidContactsSync$PersonActivityState;->activities:Ljava/util/ArrayList;

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_57
    .catchall {:try_start_13 .. :try_end_57} :catchall_58

    goto :goto_13

    .line 2511
    .end local v6           #activityState:Lcom/google/android/apps/plus/service/AndroidContactsSync$ActivityState;
    .end local v8           #gaiaId:Ljava/lang/String;
    .end local v9           #personId:Ljava/lang/String;
    .end local v10           #state:Lcom/google/android/apps/plus/service/AndroidContactsSync$PersonActivityState;
    :catchall_58
    move-exception v1

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v1

    :cond_5d
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 2514
    const/4 v1, 0x1

    goto :goto_12
.end method

.method private static reconcileActivitiesAndStreamItems(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/util/HashMap;Ljava/lang/String;[Ljava/lang/String;)V
    .registers 23
    .parameter "context"
    .parameter "account"
    .parameter
    .parameter "selection"
    .parameter "selectionArgs"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/android/apps/plus/content/EsAccount;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/apps/plus/service/AndroidContactsSync$PersonActivityState;",
            ">;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 2524
    .local p2, stateMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/google/android/apps/plus/service/AndroidContactsSync$PersonActivityState;>;"
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 2526
    .local v1, resolver:Landroid/content/ContentResolver;
    if-eqz p3, :cond_8a

    .line 2527
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p3

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 2532
    .local v4, where:Ljava/lang/String;
    :goto_21
    sget-object v2, Lcom/google/android/apps/plus/content/EsProvider;->ACTIVITY_SUMMARY_URI:Landroid/net/Uri;

    move-object/from16 v0, p1

    invoke-static {v2, v0}, Lcom/google/android/apps/plus/content/EsProvider;->appendAccountParameter(Landroid/net/Uri;Lcom/google/android/apps/plus/content/EsAccount;)Landroid/net/Uri;

    move-result-object v2

    sget-object v3, Lcom/google/android/apps/plus/service/AndroidContactsSync;->ACTIVITY_SUMMARY_PROJECTION:[Ljava/lang/String;

    const/4 v6, 0x0

    move-object/from16 v5, p4

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 2536
    .local v12, cursor:Landroid/database/Cursor;
    :cond_32
    :goto_32
    :try_start_32
    invoke-interface {v12}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_a6

    .line 2537
    const/4 v2, 0x1

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 2538
    .local v13, gaiaId:Ljava/lang/String;
    const/4 v2, 0x0

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 2539
    .local v8, activityId:Ljava/lang/String;
    const/4 v2, 0x2

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    .line 2540
    .local v10, created:J
    const/4 v2, 0x3

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v15

    .line 2541
    .local v15, lastModified:J
    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/google/android/apps/plus/service/AndroidContactsSync$PersonActivityState;

    .line 2542
    .local v17, state:Lcom/google/android/apps/plus/service/AndroidContactsSync$PersonActivityState;
    if-eqz v17, :cond_32

    .line 2543
    const/4 v9, 0x0

    .line 2544
    .local v9, activityState:Lcom/google/android/apps/plus/service/AndroidContactsSync$ActivityState;
    move-object/from16 v0, v17

    iget-object v2, v0, Lcom/google/android/apps/plus/service/AndroidContactsSync$PersonActivityState;->activities:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .local v14, i$:Ljava/util/Iterator;
    :cond_5f
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_74

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/android/apps/plus/service/AndroidContactsSync$ActivityState;

    .line 2545
    .local v7, aState:Lcom/google/android/apps/plus/service/AndroidContactsSync$ActivityState;
    iget-object v2, v7, Lcom/google/android/apps/plus/service/AndroidContactsSync$ActivityState;->activityId:Ljava/lang/String;

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5f

    .line 2546
    move-object v9, v7

    .line 2550
    .end local v7           #aState:Lcom/google/android/apps/plus/service/AndroidContactsSync$ActivityState;
    :cond_74
    if-eqz v9, :cond_8c

    .line 2551
    iget-wide v2, v9, Lcom/google/android/apps/plus/service/AndroidContactsSync$ActivityState;->lastModified:J

    cmp-long v2, v2, v15

    if-eqz v2, :cond_81

    .line 2552
    const/4 v2, 0x1

    iput-boolean v2, v9, Lcom/google/android/apps/plus/service/AndroidContactsSync$ActivityState;->changed:Z

    .line 2553
    iput-wide v15, v9, Lcom/google/android/apps/plus/service/AndroidContactsSync$ActivityState;->lastModified:J

    .line 2563
    :cond_81
    :goto_81
    const/4 v2, 0x1

    iput-boolean v2, v9, Lcom/google/android/apps/plus/service/AndroidContactsSync$ActivityState;->exists:Z
    :try_end_84
    .catchall {:try_start_32 .. :try_end_84} :catchall_85

    goto :goto_32

    .line 2567
    .end local v8           #activityId:Ljava/lang/String;
    .end local v9           #activityState:Lcom/google/android/apps/plus/service/AndroidContactsSync$ActivityState;
    .end local v10           #created:J
    .end local v13           #gaiaId:Ljava/lang/String;
    .end local v14           #i$:Ljava/util/Iterator;
    .end local v15           #lastModified:J
    .end local v17           #state:Lcom/google/android/apps/plus/service/AndroidContactsSync$PersonActivityState;
    :catchall_85
    move-exception v2

    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    throw v2

    .line 2529
    .end local v4           #where:Ljava/lang/String;
    .end local v12           #cursor:Landroid/database/Cursor;
    :cond_8a
    const/4 v4, 0x0

    .restart local v4       #where:Ljava/lang/String;
    goto :goto_21

    .line 2556
    .restart local v8       #activityId:Ljava/lang/String;
    .restart local v9       #activityState:Lcom/google/android/apps/plus/service/AndroidContactsSync$ActivityState;
    .restart local v10       #created:J
    .restart local v12       #cursor:Landroid/database/Cursor;
    .restart local v13       #gaiaId:Ljava/lang/String;
    .restart local v14       #i$:Ljava/util/Iterator;
    .restart local v15       #lastModified:J
    .restart local v17       #state:Lcom/google/android/apps/plus/service/AndroidContactsSync$PersonActivityState;
    :cond_8c
    :try_start_8c
    new-instance v9, Lcom/google/android/apps/plus/service/AndroidContactsSync$ActivityState;

    .end local v9           #activityState:Lcom/google/android/apps/plus/service/AndroidContactsSync$ActivityState;
    const/4 v2, 0x0

    invoke-direct {v9, v2}, Lcom/google/android/apps/plus/service/AndroidContactsSync$ActivityState;-><init>(Lcom/google/android/apps/plus/service/AndroidContactsSync$1;)V

    .line 2557
    .restart local v9       #activityState:Lcom/google/android/apps/plus/service/AndroidContactsSync$ActivityState;
    move-object/from16 v0, v17

    iget-wide v2, v0, Lcom/google/android/apps/plus/service/AndroidContactsSync$PersonActivityState;->rawContactId:J

    iput-wide v2, v9, Lcom/google/android/apps/plus/service/AndroidContactsSync$ActivityState;->rawContactId:J

    .line 2558
    iput-object v8, v9, Lcom/google/android/apps/plus/service/AndroidContactsSync$ActivityState;->activityId:Ljava/lang/String;

    .line 2559
    iput-wide v10, v9, Lcom/google/android/apps/plus/service/AndroidContactsSync$ActivityState;->created:J

    .line 2560
    iput-wide v15, v9, Lcom/google/android/apps/plus/service/AndroidContactsSync$ActivityState;->lastModified:J

    .line 2561
    move-object/from16 v0, v17

    iget-object v2, v0, Lcom/google/android/apps/plus/service/AndroidContactsSync$PersonActivityState;->activities:Ljava/util/ArrayList;

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_a5
    .catchall {:try_start_8c .. :try_end_a5} :catchall_85

    goto :goto_81

    .line 2567
    .end local v8           #activityId:Ljava/lang/String;
    .end local v9           #activityState:Lcom/google/android/apps/plus/service/AndroidContactsSync$ActivityState;
    .end local v10           #created:J
    .end local v13           #gaiaId:Ljava/lang/String;
    .end local v14           #i$:Ljava/util/Iterator;
    .end local v15           #lastModified:J
    .end local v17           #state:Lcom/google/android/apps/plus/service/AndroidContactsSync$PersonActivityState;
    :cond_a6
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 2569
    return-void
.end method

.method private static reconcileContacts(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/util/HashMap;)Z
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
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 1569
    .local p3, stateMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/google/android/apps/plus/service/AndroidContactsSync$RawContactState;>;"
    move-object/from16 v0, p2

    array-length v1, v0

    new-array v5, v1, [Ljava/lang/String;

    .line 1570
    .local v5, args:[Ljava/lang/String;
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    .line 1571
    .local v16, sb:Ljava/lang/StringBuilder;
    const-string v1, "_id IN ("

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1572
    const/4 v14, 0x0

    .local v14, i:I
    :goto_12
    move-object/from16 v0, p2

    array-length v1, v0

    if-ge v14, v1, :cond_3c

    .line 1573
    aget-object v1, p2, v14

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/apps/plus/service/AndroidContactsSync$RawContactState;

    iget-wide v1, v1, Lcom/google/android/apps/plus/service/AndroidContactsSync$RawContactState;->rawContactId:J

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v5, v14

    .line 1574
    if-eqz v14, :cond_32

    .line 1575
    const/16 v1, 0x2c

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1577
    :cond_32
    const/16 v1, 0x3f

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1572
    add-int/lit8 v14, v14, 0x1

    goto :goto_12

    .line 1579
    :cond_3c
    const-string v1, ") AND "

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "mimetype IN (\'vnd.android.cursor.item/email_v2\',\'vnd.android.cursor.item/phone_v2\',\'vnd.android.cursor.item/postal-address_v2\',\'vnd.android.cursor.item/group_membership\')"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1581
    sget-object v3, Lcom/google/android/apps/plus/service/AndroidContactsSync;->ENTITIES_PROJECTION:[Ljava/lang/String;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13

    .line 1582
    .local v13, cursor:Landroid/database/Cursor;
    if-nez v13, :cond_5c

    .line 1583
    const/4 v1, 0x0

    .line 1600
    :goto_5b
    return v1

    .line 1587
    :cond_5c
    :goto_5c
    :try_start_5c
    invoke-interface {v13}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_91

    .line 1588
    const/4 v1, 0x0

    invoke-interface {v13, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 1589
    .local v15, personId:Ljava/lang/String;
    move-object/from16 v0, p3

    invoke-virtual {v0, v15}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/apps/plus/service/AndroidContactsSync$RawContactState;

    .line 1590
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
    :try_end_8b
    .catchall {:try_start_5c .. :try_end_8b} :catchall_8c

    goto :goto_5c

    .line 1597
    .end local v6           #state:Lcom/google/android/apps/plus/service/AndroidContactsSync$RawContactState;
    .end local v15           #personId:Ljava/lang/String;
    :catchall_8c
    move-exception v1

    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    throw v1

    :cond_91
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 1600
    const/4 v1, 0x1

    goto :goto_5b
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
    .line 1608
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 1609
    const/4 p4, 0x0

    .line 1611
    :cond_7
    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 1612
    const/4 p5, 0x0

    .line 1614
    :cond_e
    invoke-static {p6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_15

    .line 1615
    const/4 p6, 0x0

    .line 1618
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

    .line 1619
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

    .line 1621
    iput-wide p1, v0, Lcom/google/android/apps/plus/service/AndroidContactsSync$DataState;->dataId:J

    .line 1624
    iget-object v2, v0, Lcom/google/android/apps/plus/service/AndroidContactsSync$DataState;->data2:Ljava/lang/String;

    invoke-static {v2, p5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_51

    iget-object v2, v0, Lcom/google/android/apps/plus/service/AndroidContactsSync$DataState;->data3:Ljava/lang/String;

    invoke-static {v2, p6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_58

    .line 1626
    :cond_51
    iput-object p5, v0, Lcom/google/android/apps/plus/service/AndroidContactsSync$DataState;->data2:Ljava/lang/String;

    .line 1627
    iput-object p6, v0, Lcom/google/android/apps/plus/service/AndroidContactsSync$DataState;->data3:Ljava/lang/String;

    .line 1628
    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/google/android/apps/plus/service/AndroidContactsSync$DataState;->changed:Z

    .line 1638
    :cond_58
    :goto_58
    return-void

    .line 1635
    .end local v0           #dataState:Lcom/google/android/apps/plus/service/AndroidContactsSync$DataState;
    :cond_59
    new-instance v0, Lcom/google/android/apps/plus/service/AndroidContactsSync$DataState;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Lcom/google/android/apps/plus/service/AndroidContactsSync$DataState;-><init>(Lcom/google/android/apps/plus/service/AndroidContactsSync$1;)V

    .line 1636
    .restart local v0       #dataState:Lcom/google/android/apps/plus/service/AndroidContactsSync$DataState;
    iput-wide p1, v0, Lcom/google/android/apps/plus/service/AndroidContactsSync$DataState;->dataId:J

    .line 1637
    iget-object v2, p0, Lcom/google/android/apps/plus/service/AndroidContactsSync$RawContactState;->data:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_58
.end method

.method private static reconcileLargeAvatarSignatures(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/util/HashMap;)V
    .registers 13
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
            "Lcom/google/android/apps/plus/service/AndroidContactsSync$AvatarState;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, stateMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/google/android/apps/plus/service/AndroidContactsSync$AvatarState;>;"
    const/4 v9, 0x6

    const/4 v3, 0x0

    .line 2000
    new-instance v7, Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v7, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 2001
    .local v7, gaiaIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static {p0, p1, p2, v7}, Lcom/google/android/apps/plus/service/AndroidContactsSync;->retrieveAvatarSignatures(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/util/HashMap;Ljava/util/ArrayList;)V

    .line 2004
    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_a4

    .line 2005
    new-instance v0, Lcom/google/android/apps/plus/api/SmallAvatarOperation;

    move-object v1, p0

    move-object v2, p1

    move-object v4, v3

    move-object v5, v3

    invoke-direct/range {v0 .. v5}, Lcom/google/android/apps/plus/api/SmallAvatarOperation;-><init>(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Landroid/content/Intent;Lcom/google/android/apps/plus/network/HttpOperation$OperationListener;Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;)V

    .line 2007
    .local v0, op:Lcom/google/android/apps/plus/api/SmallAvatarOperation;
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, i$:Ljava/util/Iterator;
    :goto_21
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_31

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 2008
    .local v6, gaiaId:Ljava/lang/String;
    invoke-virtual {v0, v6}, Lcom/google/android/apps/plus/api/SmallAvatarOperation;->getAvatar(Ljava/lang/String;)V

    goto :goto_21

    .line 2010
    .end local v6           #gaiaId:Ljava/lang/String;
    :cond_31
    invoke-virtual {v0}, Lcom/google/android/apps/plus/api/SmallAvatarOperation;->start()V

    .line 2012
    invoke-virtual {v0}, Lcom/google/android/apps/plus/api/SmallAvatarOperation;->getException()Ljava/lang/Exception;

    move-result-object v1

    if-eqz v1, :cond_62

    .line 2013
    const-string v1, "GooglePlusContactsSync"

    invoke-static {v1, v9}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_62

    .line 2014
    const-string v1, "GooglePlusContactsSync"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not retrieve avatars: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v7}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/google/android/apps/plus/api/SmallAvatarOperation;->getException()Ljava/lang/Exception;

    move-result-object v3

    invoke-static {v1, v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2019
    :cond_62
    invoke-virtual {v0}, Lcom/google/android/apps/plus/api/SmallAvatarOperation;->hasError()Z

    move-result v1

    if-eqz v1, :cond_9a

    .line 2020
    const-string v1, "GooglePlusContactsSync"

    invoke-static {v1, v9}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_9a

    .line 2021
    const-string v1, "GooglePlusContactsSync"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not retrieve avatars: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v7}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/google/android/apps/plus/api/SmallAvatarOperation;->getErrorCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2026
    :cond_9a
    invoke-static {p0, p1, p2, v7}, Lcom/google/android/apps/plus/service/AndroidContactsSync;->retrieveAvatarSignatures(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/util/HashMap;Ljava/util/ArrayList;)V

    .line 2029
    invoke-virtual {p2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1, v7}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 2031
    .end local v0           #op:Lcom/google/android/apps/plus/api/SmallAvatarOperation;
    .end local v8           #i$:Ljava/util/Iterator;
    :cond_a4
    return-void
.end method

.method private static refreshStreamItemsForRawContact(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;JLjava/lang/String;Ljava/lang/String;)V
    .registers 17
    .parameter "context"
    .parameter "account"
    .parameter "rawContactId"
    .parameter "personId"
    .parameter "gaiaId"

    .prologue
    .line 1132
    new-instance v8, Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;

    invoke-direct {v8}, Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;-><init>()V

    .line 1133
    .local v8, syncState:Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;
    const-string v0, "Single raw contact sync"

    invoke-virtual {v8, v0}, Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;->onSyncStart(Ljava/lang/String;)V

    .line 1134
    const-string v0, "Activities:Sync"

    invoke-virtual {v8, v0}, Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;->onStart(Ljava/lang/String;)V

    .line 1136
    :try_start_f
    invoke-static {p0}, Lcom/google/android/apps/plus/service/AndroidContactsSync;->getMaxStreamItemsPerRawContact(Landroid/content/Context;)I

    move-result v6

    .line 1137
    .local v6, limit:I
    sget-object v2, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$View;->CIRCLES:Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$View;

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v4, p5

    invoke-static/range {v0 .. v8}, Lcom/google/android/apps/plus/content/EsPostsData;->doActivityStreamSync(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$View;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/google/android/apps/plus/network/HttpOperation$OperationListener;Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;)Lcom/google/android/apps/plus/service/ServiceResult;
    :try_end_1f
    .catchall {:try_start_f .. :try_end_1f} :catchall_6a
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_1f} :catch_52

    .line 1145
    invoke-virtual {v8}, Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;->onFinish()V

    .line 1146
    invoke-virtual {v8}, Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;->onSyncFinish()V

    .line 1149
    new-instance v10, Landroid/content/ContentValues;

    invoke-direct {v10}, Landroid/content/ContentValues;-><init>()V

    .line 1150
    .local v10, values:Landroid/content/ContentValues;
    const-string v0, "sync4"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v10, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1151
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {p1}, Lcom/google/android/apps/plus/service/AndroidContactsSync;->getRawContactsUri(Lcom/google/android/apps/plus/content/EsAccount;)Landroid/net/Uri;

    move-result-object v1

    invoke-static {v1, p2, p3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v10, v2, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-object/from16 v4, p5

    move-object v5, p4

    .line 1154
    invoke-static/range {v0 .. v5}, Lcom/google/android/apps/plus/service/AndroidContactsSync;->syncActivitiesForRawContact(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;JLjava/lang/String;Ljava/lang/String;)V

    .line 1155
    .end local v6           #limit:I
    .end local v10           #values:Landroid/content/ContentValues;
    :goto_51
    return-void

    .line 1139
    :catch_52
    move-exception v9

    .line 1140
    .local v9, e:Ljava/lang/Exception;
    :try_start_53
    const-string v0, "GooglePlusContactsSync"

    const/4 v1, 0x6

    invoke-static {v0, v1}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_63

    .line 1141
    const-string v0, "GooglePlusContactsSync"

    const-string v1, "Could not refresh posts"

    invoke-static {v0, v1, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_63
    .catchall {:try_start_53 .. :try_end_63} :catchall_6a

    .line 1145
    :cond_63
    invoke-virtual {v8}, Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;->onFinish()V

    .line 1146
    invoke-virtual {v8}, Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;->onSyncFinish()V

    goto :goto_51

    .line 1145
    .end local v9           #e:Ljava/lang/Exception;
    :catchall_6a
    move-exception v0

    invoke-virtual {v8}, Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;->onFinish()V

    .line 1146
    invoke-virtual {v8}, Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;->onSyncFinish()V

    throw v0
.end method

.method public static removeContactsFromOtherAccounts(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;)V
    .registers 7
    .parameter "context"
    .parameter "account"
    .parameter "syncState"

    .prologue
    const/4 v3, 0x1

    .line 878
    invoke-static {p0}, Lcom/google/android/apps/plus/service/AndroidContactsSync;->isAndroidSyncSupported(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_8

    .line 894
    :cond_7
    :goto_7
    return-void

    .line 882
    :cond_8
    invoke-static {p0}, Lcom/google/android/apps/plus/content/EsAccountsData;->isContactsSyncClean(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_15

    .line 884
    :try_start_e
    invoke-static {p0, p1, p2}, Lcom/google/android/apps/plus/service/AndroidContactsSync;->clearAndroidContactsForOtherAccounts(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;)V

    .line 885
    const/4 v1, 0x1

    invoke-static {p0, v1}, Lcom/google/android/apps/plus/content/EsAccountsData;->saveContactsSyncCleanupStatus(Landroid/content/Context;Z)V
    :try_end_15
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_15} :catch_1f

    .line 891
    :cond_15
    :goto_15
    invoke-static {p0}, Lcom/google/android/apps/plus/content/EsAccountsData;->isContactsStatsSyncClean(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 892
    invoke-static {p0, v3}, Lcom/google/android/apps/plus/content/EsAccountsData;->saveContactsStatsSyncCleanupStatus(Landroid/content/Context;Z)V

    goto :goto_7

    .line 886
    :catch_1f
    move-exception v0

    .line 887
    .local v0, t:Ljava/lang/Throwable;
    const-string v1, "GooglePlusContactsSync"

    const-string v2, "Failed to clear out contacts"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_15
.end method

.method public static removeContactsIfSyncDisabled(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;)V
    .registers 4
    .parameter "context"
    .parameter "account"
    .parameter "syncState"

    .prologue
    .line 901
    invoke-static {p0}, Lcom/google/android/apps/plus/service/AndroidContactsSync;->isAndroidSyncSupported(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-static {p0, p1}, Lcom/google/android/apps/plus/content/EsAccountsData;->isContactsSyncEnabled(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)Z

    move-result v0

    if-nez v0, :cond_12

    .line 903
    invoke-static {p0, p1, p2}, Lcom/google/android/apps/plus/service/AndroidContactsSync;->clearAndroidContacts(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;)V

    .line 904
    invoke-static {p0, p1, p2}, Lcom/google/android/apps/plus/service/AndroidContactsSync;->clearAndroidCircles(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;)V

    .line 906
    :cond_12
    return-void
.end method

.method public static declared-synchronized requestSync(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 848
    const-class v0, Lcom/google/android/apps/plus/service/AndroidContactsSync;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_4
    invoke-static {p0, v1}, Lcom/google/android/apps/plus/service/AndroidContactsSync;->requestSync(Landroid/content/Context;Z)V
    :try_end_7
    .catchall {:try_start_4 .. :try_end_7} :catchall_9

    .line 849
    monitor-exit v0

    return-void

    .line 848
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
    .line 855
    const-class v1, Lcom/google/android/apps/plus/service/AndroidContactsSync;

    monitor-enter v1

    :try_start_3
    invoke-static {p0}, Lcom/google/android/apps/plus/service/AndroidContactsSync;->isAndroidSyncSupported(Landroid/content/Context;)Z
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_20

    move-result v0

    if-nez v0, :cond_b

    .line 865
    :goto_9
    monitor-exit v1

    return-void

    .line 859
    :cond_b
    :try_start_b
    sget-object v0, Lcom/google/android/apps/plus/service/AndroidContactsSync;->sAndroidSyncThread:Lcom/google/android/apps/plus/service/AndroidContactsSync$AndroidContactsSyncThread;

    if-nez v0, :cond_23

    .line 860
    new-instance v0, Lcom/google/android/apps/plus/service/AndroidContactsSync$AndroidContactsSyncThread;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/google/android/apps/plus/service/AndroidContactsSync$AndroidContactsSyncThread;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/google/android/apps/plus/service/AndroidContactsSync;->sAndroidSyncThread:Lcom/google/android/apps/plus/service/AndroidContactsSync$AndroidContactsSyncThread;

    .line 861
    sget-object v0, Lcom/google/android/apps/plus/service/AndroidContactsSync;->sAndroidSyncThread:Lcom/google/android/apps/plus/service/AndroidContactsSync$AndroidContactsSyncThread;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/service/AndroidContactsSync$AndroidContactsSyncThread;->start()V
    :try_end_1f
    .catchall {:try_start_b .. :try_end_1f} :catchall_20

    goto :goto_9

    .line 855
    :catchall_20
    move-exception v0

    monitor-exit v1

    throw v0

    .line 863
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

    .line 2247
    if-nez p0, :cond_5

    move-object p0, v3

    .line 2272
    .end local p0
    :goto_4
    return-object p0

    .line 2251
    .restart local p0
    :cond_5
    const/4 v4, 0x0

    array-length v5, p0

    invoke-static {p0, v4, v5}, Lcom/google/android/apps/plus/util/ImageUtils;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 2252
    .local v0, bitmap:Landroid/graphics/Bitmap;
    if-nez v0, :cond_f

    move-object p0, v3

    .line 2253
    goto :goto_4

    .line 2255
    :cond_f
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    if-gt v4, p1, :cond_1f

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    if-gt v4, p1, :cond_1f

    .line 2256
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_4

    .line 2260
    :cond_1f
    invoke-static {v0, p1}, Lcom/google/android/apps/plus/util/ImageUtils;->resizeToSquareBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 2261
    .local v2, thumbnail:Landroid/graphics/Bitmap;
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 2262
    const/4 v0, 0x0

    .line 2264
    if-nez v2, :cond_2b

    move-object p0, v3

    .line 2265
    goto :goto_4

    .line 2268
    :cond_2b
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    const/16 v3, 0xfa0

    invoke-direct {v1, v3}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 2269
    .local v1, stream:Ljava/io/ByteArrayOutputStream;
    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v4, 0x64

    invoke-virtual {v2, v3, v4, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 2270
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 2271
    const/4 v2, 0x0

    .line 2272
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    goto :goto_4
.end method

.method protected static retrieveAvatarSignatures(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/util/HashMap;Ljava/util/ArrayList;)V
    .registers 16
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
            "Lcom/google/android/apps/plus/service/AndroidContactsSync$AvatarState;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2039
    .local p2, stateMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/google/android/apps/plus/service/AndroidContactsSync$AvatarState;>;"
    .local p3, gaiaIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v4, v0, [Ljava/lang/String;

    .line 2040
    .local v4, args:[Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 2041
    .local v9, sb:Ljava/lang/StringBuilder;
    const-string v0, "user_id"

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " IN ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2042
    const/4 v8, 0x0

    .local v8, i:I
    :goto_17
    array-length v0, v4

    if-ge v8, v0, :cond_35

    .line 2043
    if-eqz v8, :cond_21

    .line 2044
    const/16 v0, 0x2c

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2046
    :cond_21
    const/16 v0, 0x3f

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2047
    invoke-virtual {p3, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v8

    .line 2042
    add-int/lit8 v8, v8, 0x1

    goto :goto_17

    .line 2049
    :cond_35
    const-string v0, ")"

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2050
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/google/android/apps/plus/content/EsProvider;->AVATARS_URI:Landroid/net/Uri;

    invoke-static {v1, p1}, Lcom/google/android/apps/plus/content/EsProvider;->appendAccountParameter(Landroid/net/Uri;Lcom/google/android/apps/plus/content/EsAccount;)Landroid/net/Uri;

    move-result-object v1

    sget-object v2, Lcom/google/android/apps/plus/service/AndroidContactsSync;->AVATAR_SIGNATURE_PROJECTION:[Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 2054
    .local v6, cursor:Landroid/database/Cursor;
    :cond_4f
    :goto_4f
    :try_start_4f
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_7a

    .line 2055
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 2056
    .local v7, gaiaId:Ljava/lang/String;
    const/4 v0, 0x1

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    .line 2057
    .local v10, signature:I
    if-eqz v10, :cond_4f

    .line 2058
    invoke-virtual {p2, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/google/android/apps/plus/service/AndroidContactsSync$AvatarState;

    .line 2059
    .local v11, state:Lcom/google/android/apps/plus/service/AndroidContactsSync$AvatarState;
    iget v0, v11, Lcom/google/android/apps/plus/service/AndroidContactsSync$AvatarState;->signature:I

    if-ne v0, v10, :cond_77

    .line 2060
    invoke-virtual {p2, v7}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2064
    :goto_6e
    invoke-virtual {p3, v7}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_71
    .catchall {:try_start_4f .. :try_end_71} :catchall_72

    goto :goto_4f

    .line 2068
    .end local v7           #gaiaId:Ljava/lang/String;
    .end local v10           #signature:I
    .end local v11           #state:Lcom/google/android/apps/plus/service/AndroidContactsSync$AvatarState;
    :catchall_72
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0

    .line 2062
    .restart local v7       #gaiaId:Ljava/lang/String;
    .restart local v10       #signature:I
    .restart local v11       #state:Lcom/google/android/apps/plus/service/AndroidContactsSync$AvatarState;
    :cond_77
    :try_start_77
    iput v10, v11, Lcom/google/android/apps/plus/service/AndroidContactsSync$AvatarState;->signature:I
    :try_end_79
    .catchall {:try_start_77 .. :try_end_79} :catchall_72

    goto :goto_6e

    .line 2068
    .end local v7           #gaiaId:Ljava/lang/String;
    .end local v10           #signature:I
    .end local v11           #state:Lcom/google/android/apps/plus/service/AndroidContactsSync$AvatarState;
    :cond_7a
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 2070
    return-void
.end method

.method protected static saveAvatarSignature(Landroid/content/ContentResolver;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/android/apps/plus/service/AndroidContactsSync$AvatarState;)V
    .registers 9
    .parameter "resolver"
    .parameter "account"
    .parameter "state"

    .prologue
    const/4 v5, 0x0

    .line 2149
    invoke-static {p1}, Lcom/google/android/apps/plus/service/AndroidContactsSync;->getRawContactsUri(Lcom/google/android/apps/plus/content/EsAccount;)Landroid/net/Uri;

    move-result-object v2

    iget-wide v3, p2, Lcom/google/android/apps/plus/service/AndroidContactsSync$AvatarState;->rawContactId:J

    invoke-static {v2, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    .line 2151
    .local v0, rawContactUri:Landroid/net/Uri;
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 2152
    .local v1, values:Landroid/content/ContentValues;
    const-string v2, "sync2"

    iget v3, p2, Lcom/google/android/apps/plus/service/AndroidContactsSync$AvatarState;->signature:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2153
    const-string v2, "sync3"

    iget v3, p2, Lcom/google/android/apps/plus/service/AndroidContactsSync$AvatarState;->signature:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2154
    invoke-virtual {p0, v0, v1, v5, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2155
    return-void
.end method

.method private static shouldSync(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;)Z
    .registers 4
    .parameter "context"
    .parameter "account"
    .parameter "syncState"

    .prologue
    .line 3409
    invoke-static {p0}, Lcom/google/android/apps/plus/service/AndroidContactsSync;->isAndroidSyncSupported(Landroid/content/Context;)Z

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
    .line 3402
    invoke-static {p0, p1}, Lcom/google/android/apps/plus/content/EsPeopleData;->hasPublicCircle(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)Z

    move-result v0

    return v0
.end method

.method private static syncActivities(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;)V
    .registers 6
    .parameter "context"
    .parameter "account"
    .parameter "syncState"

    .prologue
    const/4 v1, 0x0

    .line 2356
    invoke-static {p0, p1, p2}, Lcom/google/android/apps/plus/service/AndroidContactsSync;->shouldSync(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;)Z

    move-result v2

    if-nez v2, :cond_8

    .line 2372
    :goto_7
    return-void

    .line 2360
    :cond_8
    const-string v2, "Android:Activities"

    invoke-virtual {p2, v2}, Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;->onStart(Ljava/lang/String;)V

    .line 2361
    invoke-static {p0, p1}, Lcom/google/android/apps/plus/service/AndroidContactsSync;->shouldSyncActivities(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)Z

    move-result v2

    if-eqz v2, :cond_2d

    .line 2362
    invoke-static {p0, p1}, Lcom/google/android/apps/plus/service/AndroidContactsSync;->findChangesInActivities(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)Ljava/util/HashMap;

    move-result-object v0

    .line 2364
    .local v0, stateMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/google/android/apps/plus/service/AndroidContactsSync$PersonActivityState;>;"
    if-eqz v0, :cond_22

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_22

    .line 2365
    invoke-static {p0, p1, v0}, Lcom/google/android/apps/plus/service/AndroidContactsSync;->applyActivityChanges(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/util/HashMap;)V

    .line 2367
    :cond_22
    if-nez v0, :cond_28

    :goto_24
    invoke-virtual {p2, v1}, Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;->onFinish(I)V

    goto :goto_7

    :cond_28
    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v1

    goto :goto_24

    .line 2369
    .end local v0           #stateMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/google/android/apps/plus/service/AndroidContactsSync$PersonActivityState;>;"
    :cond_2d
    invoke-static {p0, p1}, Lcom/google/android/apps/plus/service/AndroidContactsSync;->deleteStreamItems(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)V

    .line 2370
    invoke-virtual {p2, v1}, Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;->onFinish(I)V

    goto :goto_7
.end method

.method private static syncActivitiesForRawContact(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;JLjava/lang/String;Ljava/lang/String;)V
    .registers 13
    .parameter "context"
    .parameter "account"
    .parameter "rawContactId"
    .parameter "gaiaId"
    .parameter "personId"

    .prologue
    const/4 v4, 0x0

    .line 2379
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 2380
    .local v2, stateMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/google/android/apps/plus/service/AndroidContactsSync$PersonActivityState;>;"
    new-instance v6, Lcom/google/android/apps/plus/service/AndroidContactsSync$PersonActivityState;

    invoke-direct {v6, v4}, Lcom/google/android/apps/plus/service/AndroidContactsSync$PersonActivityState;-><init>(Lcom/google/android/apps/plus/service/AndroidContactsSync$1;)V

    .line 2381
    .local v6, state:Lcom/google/android/apps/plus/service/AndroidContactsSync$PersonActivityState;
    iput-object p4, v6, Lcom/google/android/apps/plus/service/AndroidContactsSync$PersonActivityState;->gaiaId:Ljava/lang/String;

    .line 2382
    iput-wide p2, v6, Lcom/google/android/apps/plus/service/AndroidContactsSync$PersonActivityState;->rawContactId:J

    .line 2383
    invoke-virtual {v2, p4, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2385
    invoke-static {p1}, Lcom/google/android/apps/plus/service/AndroidContactsSync;->getRawContactsUri(Lcom/google/android/apps/plus/content/EsAccount;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0, p2, p3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    const-string v1, "stream_items"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .local v3, uri:Landroid/net/Uri;
    move-object v0, p0

    move-object v1, p1

    move-object v5, v4

    .line 2388
    invoke-static/range {v0 .. v5}, Lcom/google/android/apps/plus/service/AndroidContactsSync;->queryStreamItemState(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/util/HashMap;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_43

    .line 2389
    const-string v0, "author_id=?"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p4, v1, v4

    invoke-static {p0, p1, v2, v0, v1}, Lcom/google/android/apps/plus/service/AndroidContactsSync;->reconcileActivitiesAndStreamItems(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/util/HashMap;Ljava/lang/String;[Ljava/lang/String;)V

    .line 2392
    invoke-static {p0, v2}, Lcom/google/android/apps/plus/service/AndroidContactsSync;->limitStreamItemsPerRawContact(Landroid/content/Context;Ljava/util/HashMap;)V

    .line 2393
    invoke-static {v2}, Lcom/google/android/apps/plus/service/AndroidContactsSync;->cleanUpActivityStateMap(Ljava/util/HashMap;)V

    .line 2395
    invoke-virtual {v2}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_43

    .line 2396
    invoke-static {p0, p1, v2}, Lcom/google/android/apps/plus/service/AndroidContactsSync;->applyActivityChanges(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/util/HashMap;)V

    .line 2399
    :cond_43
    return-void
.end method

.method private static syncCircles(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;)V
    .registers 5
    .parameter "context"
    .parameter "account"
    .parameter "syncState"

    .prologue
    .line 933
    invoke-static {p0, p1, p2}, Lcom/google/android/apps/plus/service/AndroidContactsSync;->shouldSync(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 943
    :goto_6
    return-void

    .line 937
    :cond_7
    const-string v1, "Android:Circles"

    invoke-virtual {p2, v1}, Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;->onStart(Ljava/lang/String;)V

    .line 938
    invoke-static {p0, p1}, Lcom/google/android/apps/plus/service/AndroidContactsSync;->findChangesInCircles(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)Ljava/util/HashMap;

    move-result-object v0

    .line 939
    .local v0, stateMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/google/android/apps/plus/service/AndroidContactsSync$CircleState;>;"
    if-eqz v0, :cond_15

    .line 940
    invoke-static {p0, p1, v0}, Lcom/google/android/apps/plus/service/AndroidContactsSync;->applyCircleChanges(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/util/HashMap;)V

    .line 942
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
    .line 1036
    invoke-static {p0, p1, p2}, Lcom/google/android/apps/plus/service/AndroidContactsSync;->shouldSync(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 1047
    :goto_6
    return-void

    .line 1040
    :cond_7
    const-string v2, "Android:Contacts"

    invoke-virtual {p2, v2}, Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;->onStart(Ljava/lang/String;)V

    .line 1041
    invoke-static {p0, p1}, Lcom/google/android/apps/plus/service/AndroidContactsSync;->findChangesInContacts(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)Ljava/util/HashMap;

    move-result-object v1

    .line 1042
    .local v1, stateMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/google/android/apps/plus/service/AndroidContactsSync$RawContactState;>;"
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v2, p1}, Lcom/google/android/apps/plus/service/AndroidContactsSync;->getCircleIdMap(Landroid/content/ContentResolver;Lcom/google/android/apps/plus/content/EsAccount;)Ljava/util/HashMap;

    move-result-object v0

    .line 1043
    .local v0, circleIdMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Long;>;"
    if-eqz v1, :cond_1f

    if-eqz v0, :cond_1f

    .line 1044
    invoke-static {p0, p1, v1, v0}, Lcom/google/android/apps/plus/service/AndroidContactsSync;->applyContactChanges(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/util/HashMap;Ljava/util/HashMap;)V

    .line 1046
    :cond_1f
    if-nez v1, :cond_26

    const/4 v2, 0x0

    :goto_22
    invoke-virtual {p2, v2}, Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;->onFinish(I)V

    goto :goto_6

    :cond_26
    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v2

    goto :goto_22
.end method

.method protected static syncContactsForCurrentAccount(Landroid/content/Context;Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;)V
    .registers 4
    .parameter "context"
    .parameter "syncState"

    .prologue
    .line 816
    invoke-static {p0}, Lcom/google/android/apps/plus/service/AndroidContactsSync;->isAndroidSyncSupported(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_c

    invoke-virtual {p1}, Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;->isCanceled()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 842
    :cond_c
    :goto_c
    return-void

    .line 820
    :cond_d
    const-string v1, "Android contacts sync"

    invoke-virtual {p1, v1}, Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;->onSyncStart(Ljava/lang/String;)V

    .line 822
    :try_start_12
    invoke-static {p0}, Lcom/google/android/apps/plus/content/EsAccountsData;->getActiveAccount(Landroid/content/Context;)Lcom/google/android/apps/plus/content/EsAccount;

    move-result-object v0

    .line 823
    .local v0, account:Lcom/google/android/apps/plus/content/EsAccount;
    invoke-static {p0, v0, p1}, Lcom/google/android/apps/plus/service/AndroidContactsSync;->removeContactsFromOtherAccounts(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;)V
    :try_end_19
    .catchall {:try_start_12 .. :try_end_19} :catchall_41

    .line 824
    if-nez v0, :cond_1f

    .line 840
    invoke-virtual {p1}, Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;->onSyncFinish()V

    goto :goto_c

    .line 828
    :cond_1f
    :try_start_1f
    invoke-static {p0, v0, p1}, Lcom/google/android/apps/plus/service/AndroidContactsSync;->removeContactsIfSyncDisabled(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;)V

    .line 829
    invoke-static {p0, v0, p1}, Lcom/google/android/apps/plus/service/AndroidContactsSync;->checkSyncVersion(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;)V

    .line 830
    invoke-static {p0, v0, p1}, Lcom/google/android/apps/plus/service/AndroidContactsSync;->syncMyProfile(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;)V

    .line 832
    invoke-static {p0, v0, p1}, Lcom/google/android/apps/plus/service/AndroidContactsSync;->shouldSync(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;)Z

    move-result v1

    if-eqz v1, :cond_3d

    .line 833
    invoke-static {p0, v0, p1}, Lcom/google/android/apps/plus/service/AndroidContactsSync;->syncCircles(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;)V

    .line 834
    invoke-static {p0, v0, p1}, Lcom/google/android/apps/plus/service/AndroidContactsSync;->syncContacts(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;)V

    .line 835
    invoke-static {p0, v0, p1}, Lcom/google/android/apps/plus/service/AndroidContactsSync;->syncLargeAvatars(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;)V

    .line 836
    invoke-static {p0, v0, p1}, Lcom/google/android/apps/plus/service/AndroidContactsSync;->syncActivities(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;)V

    .line 837
    invoke-static {p0, v0, p1}, Lcom/google/android/apps/plus/service/AndroidContactsSync;->syncSmallAvatars(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;)V
    :try_end_3d
    .catchall {:try_start_1f .. :try_end_3d} :catchall_41

    .line 840
    :cond_3d
    invoke-virtual {p1}, Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;->onSyncFinish()V

    goto :goto_c

    .end local v0           #account:Lcom/google/android/apps/plus/content/EsAccount;
    :catchall_41
    move-exception v1

    invoke-virtual {p1}, Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;->onSyncFinish()V

    throw v1
.end method

.method private static syncLargeAvatarForRawContact(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;JLjava/lang/String;I)V
    .registers 12
    .parameter "context"
    .parameter "account"
    .parameter "rawContactId"
    .parameter "gaiaId"
    .parameter "avatarSignature"

    .prologue
    .line 1919
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 1920
    .local v2, stateMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/google/android/apps/plus/service/AndroidContactsSync$AvatarState;>;"
    new-instance v1, Lcom/google/android/apps/plus/service/AndroidContactsSync$AvatarState;

    const/4 v4, 0x0

    invoke-direct {v1, v4}, Lcom/google/android/apps/plus/service/AndroidContactsSync$AvatarState;-><init>(Lcom/google/android/apps/plus/service/AndroidContactsSync$1;)V

    .line 1921
    .local v1, state:Lcom/google/android/apps/plus/service/AndroidContactsSync$AvatarState;
    iput-object p4, v1, Lcom/google/android/apps/plus/service/AndroidContactsSync$AvatarState;->gaiaId:Ljava/lang/String;

    .line 1922
    iput-wide p2, v1, Lcom/google/android/apps/plus/service/AndroidContactsSync$AvatarState;->rawContactId:J

    .line 1923
    iput p5, v1, Lcom/google/android/apps/plus/service/AndroidContactsSync$AvatarState;->signature:I

    .line 1924
    invoke-virtual {v2, p4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1926
    invoke-static {p0, p1, v2}, Lcom/google/android/apps/plus/service/AndroidContactsSync;->reconcileLargeAvatarSignatures(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/util/HashMap;)V

    .line 1928
    invoke-virtual {v2}, Ljava/util/HashMap;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_37

    .line 1929
    new-instance v3, Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;

    invoke-direct {v3}, Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;-><init>()V

    .line 1930
    .local v3, syncState:Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;
    const-string v4, "Large avatar sync for a single raw contact"

    invoke-virtual {v3, v4}, Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;->onSyncStart(Ljava/lang/String;)V

    .line 1932
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "display_max_dim"

    invoke-static {v4, v5}, Lcom/google/android/apps/plus/service/AndroidContactsSync;->getPreferredAvatarSize(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v0

    .line 1934
    .local v0, avatarSize:I
    invoke-static {p0, p1, v3, v2, v0}, Lcom/google/android/apps/plus/service/AndroidContactsSync;->downloadLargeAvatars(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;Ljava/util/HashMap;I)V

    .line 1935
    invoke-virtual {v3}, Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;->onSyncFinish()V

    .line 1937
    .end local v0           #avatarSize:I
    .end local v3           #syncState:Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;
    :cond_37
    return-void
.end method

.method private static syncLargeAvatars(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;)V
    .registers 7
    .parameter "context"
    .parameter "account"
    .parameter "syncState"

    .prologue
    .line 1893
    invoke-static {p0, p1, p2}, Lcom/google/android/apps/plus/service/AndroidContactsSync;->shouldSync(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 1912
    :goto_6
    return-void

    .line 1897
    :cond_7
    const-string v2, "Android:LargeAvatars"

    invoke-virtual {p2, v2}, Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;->onStart(Ljava/lang/String;)V

    .line 1899
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "display_max_dim"

    invoke-static {v2, v3}, Lcom/google/android/apps/plus/service/AndroidContactsSync;->getPreferredAvatarSize(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v0

    .line 1901
    .local v0, avatarSize:I
    invoke-static {p0, p1, v0}, Lcom/google/android/apps/plus/service/AndroidContactsSync;->checkForLargeAvatarSizeUpdate(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;I)V

    .line 1903
    invoke-static {p0, p1}, Lcom/google/android/apps/plus/service/AndroidContactsSync;->queryRawContactsRequiringLargeAvatars(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)Ljava/util/HashMap;

    move-result-object v1

    .line 1905
    .local v1, stateMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/google/android/apps/plus/service/AndroidContactsSync$AvatarState;>;"
    if-eqz v1, :cond_25

    invoke-virtual {v1}, Ljava/util/HashMap;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_29

    .line 1906
    :cond_25
    invoke-virtual {p2}, Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;->onFinish()V

    goto :goto_6

    .line 1910
    :cond_29
    invoke-static {p0, p1, p2, v1, v0}, Lcom/google/android/apps/plus/service/AndroidContactsSync;->downloadLargeAvatars(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;Ljava/util/HashMap;I)V

    .line 1911
    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v2

    invoke-virtual {p2, v2}, Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;->onFinish(I)V

    goto :goto_6
.end method

.method private static syncMyProfile(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;)V
    .registers 12
    .parameter "context"
    .parameter "account"
    .parameter "syncState"

    .prologue
    const/4 v3, 0x0

    .line 1323
    invoke-static {p0}, Lcom/google/android/apps/plus/service/AndroidContactsSync;->isAndroidSyncSupported(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-virtual {p2}, Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;->isCanceled()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 1349
    :cond_d
    :goto_d
    return-void

    .line 1327
    :cond_e
    const-string v0, "Android:MyProfile"

    invoke-virtual {p2, v0}, Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;->onStart(Ljava/lang/String;)V

    .line 1328
    sget-object v0, Lcom/google/android/apps/plus/content/EsProvider;->CONTACT_BY_PERSON_ID_URI:Landroid/net/Uri;

    invoke-virtual {p1}, Lcom/google/android/apps/plus/content/EsAccount;->getPersonId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/android/apps/plus/content/EsProvider;->appendAccountParameter(Landroid/net/Uri;Lcom/google/android/apps/plus/content/EsAccount;)Landroid/net/Uri;

    move-result-object v1

    .line 1332
    .local v1, uri:Landroid/net/Uri;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lcom/google/android/apps/plus/service/AndroidContactsSync;->MY_PROFILE_PROJECTION:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 1335
    .local v8, cursor:Landroid/database/Cursor;
    :try_start_2d
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_55

    .line 1336
    const/4 v0, 0x1

    invoke-interface {v8, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-nez v0, :cond_55

    const/4 v0, 0x2

    invoke-interface {v8, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-nez v0, :cond_55

    .line 1338
    const/4 v0, 0x0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 1339
    .local v4, name:Ljava/lang/String;
    const/4 v0, 0x1

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    .line 1340
    .local v5, lastUpdatedTime:J
    const/4 v0, 0x2

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v7

    .local v7, contactInfoJson:[B
    move-object v2, p0

    move-object v3, p1

    .line 1341
    invoke-static/range {v2 .. v7}, Lcom/google/android/apps/plus/service/AndroidContactsSync;->updateMyProfile(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;J[B)V
    :try_end_55
    .catchall {:try_start_2d .. :try_end_55} :catchall_5c

    .line 1345
    .end local v4           #name:Ljava/lang/String;
    .end local v5           #lastUpdatedTime:J
    .end local v7           #contactInfoJson:[B
    :cond_55
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 1348
    invoke-virtual {p2}, Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;->onFinish()V

    goto :goto_d

    .line 1345
    :catchall_5c
    move-exception v0

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public static syncRawContact(Landroid/content/Context;Landroid/net/Uri;)V
    .registers 4
    .parameter "context"
    .parameter "rawContactUri"

    .prologue
    .line 1053
    invoke-static {p0}, Lcom/google/android/apps/plus/content/EsAccountsData;->getActiveAccount(Landroid/content/Context;)Lcom/google/android/apps/plus/content/EsAccount;

    move-result-object v0

    .line 1054
    .local v0, account:Lcom/google/android/apps/plus/content/EsAccount;
    if-nez v0, :cond_7

    .line 1063
    :cond_6
    :goto_6
    return-void

    .line 1058
    :cond_7
    invoke-static {p0}, Lcom/google/android/apps/plus/service/AndroidContactsSync;->isAndroidSyncSupported(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1062
    invoke-static {p0, v0, p1}, Lcom/google/android/apps/plus/service/AndroidContactsSync;->syncRawContact(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Landroid/net/Uri;)V

    goto :goto_6
.end method

.method private static syncRawContact(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Landroid/net/Uri;)V
    .registers 28
    .parameter "context"
    .parameter "account"
    .parameter "rawContactUri"

    .prologue
    .line 1069
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v4, Lcom/google/android/apps/plus/service/AndroidContactsSync;->RAW_CONTACT_REFRESH_PROJECTION:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v3, p2

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v21

    .line 1071
    .local v21, cursor:Landroid/database/Cursor;
    if-nez v21, :cond_12

    .line 1125
    :cond_11
    :goto_11
    return-void

    .line 1075
    :cond_12
    const-wide/16 v4, 0x0

    .line 1076
    .local v4, rawContactId:J
    const/4 v12, 0x0

    .line 1077
    .local v12, personId:Ljava/lang/String;
    const/4 v7, 0x0

    .line 1078
    .local v7, avatarSignature:I
    const-wide/16 v23, 0x0

    .line 1081
    .local v23, streamLastUpdated:J
    :try_start_18
    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_ae

    .line 1082
    const/4 v2, 0x2

    move-object/from16 v0, v21

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    .line 1083
    .local v19, accountName:Ljava/lang/String;
    const/4 v2, 0x1

    move-object/from16 v0, v21

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v20

    .line 1084
    .local v20, accountType:Ljava/lang/String;
    const/4 v2, 0x3

    move-object/from16 v0, v21

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v22

    .line 1085
    .local v22, dataSet:Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/apps/plus/content/EsAccount;->getName()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_53

    const-string v2, "com.google"

    move-object/from16 v0, v20

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_53

    const-string v2, "plus"

    move-object/from16 v0, v22

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_92

    .line 1087
    :cond_53
    const-string v2, "GooglePlusContactsSync"

    const/4 v3, 0x6

    invoke-static {v2, v3}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_8e

    .line 1088
    const-string v2, "GooglePlusContactsSync"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Cannot refresh raw contact. It does not belong to the current account: "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v8, "/"

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v8, "/"

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v22

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8e
    .catchall {:try_start_18 .. :try_end_8e} :catchall_f5

    .line 1100
    :cond_8e
    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->close()V

    goto :goto_11

    .line 1094
    :cond_92
    const/4 v2, 0x0

    :try_start_93
    move-object/from16 v0, v21

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 1095
    const/4 v2, 0x4

    move-object/from16 v0, v21

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 1096
    const/4 v2, 0x5

    move-object/from16 v0, v21

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 1097
    const/4 v2, 0x6

    move-object/from16 v0, v21

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J
    :try_end_ad
    .catchall {:try_start_93 .. :try_end_ad} :catchall_f5

    move-result-wide v23

    .line 1100
    .end local v19           #accountName:Ljava/lang/String;
    .end local v20           #accountType:Ljava/lang/String;
    .end local v22           #dataSet:Ljava/lang/String;
    :cond_ae
    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->close()V

    .line 1103
    const-wide/16 v2, 0x0

    cmp-long v2, v4, v2

    if-eqz v2, :cond_11

    .line 1107
    invoke-static {v12}, Lcom/google/android/apps/plus/content/EsPeopleData;->extractGaiaId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1108
    .local v6, gaiaId:Ljava/lang/String;
    if-eqz v6, :cond_11

    .line 1112
    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Lcom/google/android/apps/plus/content/EsAccount;->isMyGaiaId(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_d0

    const/4 v2, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-static {v0, v1, v2}, Lcom/google/android/apps/plus/service/AndroidContactsSync;->shouldSync(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;)Z

    move-result v2

    if-eqz v2, :cond_11

    :cond_d0
    move-object/from16 v2, p0

    move-object/from16 v3, p1

    .line 1116
    invoke-static/range {v2 .. v7}, Lcom/google/android/apps/plus/service/AndroidContactsSync;->syncLargeAvatarForRawContact(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;JLjava/lang/String;I)V

    .line 1118
    invoke-static/range {p0 .. p1}, Lcom/google/android/apps/plus/service/AndroidContactsSync;->shouldSyncActivities(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 1119
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long v2, v2, v23

    const-wide/32 v8, 0x493e0

    cmp-long v2, v2, v8

    if-lez v2, :cond_fa

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move-wide v10, v4

    move-object v13, v6

    .line 1120
    invoke-static/range {v8 .. v13}, Lcom/google/android/apps/plus/service/AndroidContactsSync;->refreshStreamItemsForRawContact(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;JLjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_11

    .line 1100
    .end local v6           #gaiaId:Ljava/lang/String;
    :catchall_f5
    move-exception v2

    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->close()V

    throw v2

    .restart local v6       #gaiaId:Ljava/lang/String;
    :cond_fa
    move-object/from16 v13, p0

    move-object/from16 v14, p1

    move-wide v15, v4

    move-object/from16 v17, v6

    move-object/from16 v18, v12

    .line 1122
    invoke-static/range {v13 .. v18}, Lcom/google/android/apps/plus/service/AndroidContactsSync;->syncActivitiesForRawContact(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;JLjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_11
.end method

.method private static syncSmallAvatars(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;)V
    .registers 26
    .parameter "context"
    .parameter "account"
    .parameter "syncState"

    .prologue
    .line 2161
    invoke-static/range {p0 .. p2}, Lcom/google/android/apps/plus/service/AndroidContactsSync;->shouldSync(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 2241
    :goto_6
    return-void

    .line 2165
    :cond_7
    const-string v3, "Android:Avatars"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;->onStart(Ljava/lang/String;)V

    .line 2167
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 2168
    .local v2, resolver:Landroid/content/ContentResolver;
    move-object/from16 v0, p1

    invoke-static {v2, v0}, Lcom/google/android/apps/plus/service/AndroidContactsSync;->queryRawContactsRequiringThumbnails(Landroid/content/ContentResolver;Lcom/google/android/apps/plus/content/EsAccount;)Ljava/util/HashMap;

    move-result-object v17

    .line 2170
    .local v17, stateMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/google/android/apps/plus/service/AndroidContactsSync$AvatarState;>;"
    if-eqz v17, :cond_20

    invoke-virtual/range {v17 .. v17}, Ljava/util/HashMap;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_24

    .line 2171
    :cond_20
    invoke-virtual/range {p2 .. p2}, Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;->onFinish()V

    goto :goto_6

    .line 2175
    :cond_24
    const-string v3, "thumbnail_max_dim"

    invoke-static {v2, v3}, Lcom/google/android/apps/plus/service/AndroidContactsSync;->getPreferredAvatarSize(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v19

    .line 2177
    .local v19, thumbnailSize:I
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 2178
    .local v8, batch:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    new-instance v18, Ljava/util/ArrayList;

    invoke-virtual/range {v17 .. v17}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 2179
    .local v18, states:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/android/apps/plus/service/AndroidContactsSync$AvatarState;>;"
    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v15

    .line 2180
    .local v15, size:I
    const/4 v13, 0x0

    .line 2181
    .local v13, offset:I
    :goto_3f
    if-ge v13, v15, :cond_162

    invoke-virtual/range {p2 .. p2}, Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;->isCanceled()Z

    move-result v3

    if-nez v3, :cond_162

    .line 2182
    add-int/lit8 v20, v13, 0x8

    .line 2183
    .local v20, to:I
    move/from16 v0, v20

    if-le v0, v15, :cond_4f

    .line 2184
    move/from16 v20, v15

    .line 2187
    :cond_4f
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    .line 2188
    .local v14, sb:Ljava/lang/StringBuilder;
    const-string v3, "user_id IN ("

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2189
    sub-int v3, v20, v13

    new-array v6, v3, [Ljava/lang/String;

    .line 2190
    .local v6, gaiaIds:[Ljava/lang/String;
    const/4 v12, 0x0

    .local v12, i:I
    :goto_5e
    array-length v3, v6

    if-ge v12, v3, :cond_80

    .line 2191
    add-int v3, v13, v12

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/google/android/apps/plus/service/AndroidContactsSync$AvatarState;

    .line 2192
    .local v16, state:Lcom/google/android/apps/plus/service/AndroidContactsSync$AvatarState;
    if-eqz v12, :cond_72

    .line 2193
    const/16 v3, 0x2c

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2195
    :cond_72
    const/16 v3, 0x3f

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2196
    move-object/from16 v0, v16

    iget-object v3, v0, Lcom/google/android/apps/plus/service/AndroidContactsSync$AvatarState;->gaiaId:Ljava/lang/String;

    aput-object v3, v6, v12

    .line 2190
    add-int/lit8 v12, v12, 0x1

    goto :goto_5e

    .line 2198
    .end local v16           #state:Lcom/google/android/apps/plus/service/AndroidContactsSync$AvatarState;
    :cond_80
    const/16 v3, 0x29

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2200
    sget-object v3, Lcom/google/android/apps/plus/content/EsProvider;->AVATARS_URI:Landroid/net/Uri;

    move-object/from16 v0, p1

    invoke-static {v3, v0}, Lcom/google/android/apps/plus/content/EsProvider;->appendAccountParameter(Landroid/net/Uri;Lcom/google/android/apps/plus/content/EsAccount;)Landroid/net/Uri;

    move-result-object v3

    sget-object v4, Lcom/google/android/apps/plus/service/AndroidContactsSync;->THUMBNAILS_AVATAR_PROJECTION:[Ljava/lang/String;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 2204
    .local v10, cursor:Landroid/database/Cursor;
    :goto_98
    :try_start_98
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_155

    .line 2205
    const/4 v3, 0x0

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 2206
    .local v11, gaiaId:Ljava/lang/String;
    const/4 v3, 0x1

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v9

    .line 2207
    .local v9, bytes:[B
    move/from16 v0, v19

    invoke-static {v9, v0}, Lcom/google/android/apps/plus/service/AndroidContactsSync;->resizeThumbnail([BI)[B

    move-result-object v9

    .line 2209
    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/google/android/apps/plus/service/AndroidContactsSync$AvatarState;

    .line 2210
    .restart local v16       #state:Lcom/google/android/apps/plus/service/AndroidContactsSync$AvatarState;
    invoke-static/range {p1 .. p1}, Lcom/google/android/apps/plus/service/AndroidContactsSync;->getRawContactsUri(Lcom/google/android/apps/plus/content/EsAccount;)Landroid/net/Uri;

    move-result-object v3

    invoke-static {v3}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withYieldAllowed(Z)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v3

    const-string v4, "_id=?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v7, 0x0

    move-object/from16 v0, v16

    iget-wide v0, v0, Lcom/google/android/apps/plus/service/AndroidContactsSync$AvatarState;->rawContactId:J

    move-wide/from16 v21, v0

    invoke-static/range {v21 .. v22}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v21

    aput-object v21, v5, v7

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v3

    const-string v4, "sync3"

    move-object/from16 v0, v16

    iget v5, v0, Lcom/google/android/apps/plus/service/AndroidContactsSync$AvatarState;->signature:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v3

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2216
    move-object/from16 v0, v16

    iget-wide v3, v0, Lcom/google/android/apps/plus/service/AndroidContactsSync$AvatarState;->dataId:J

    const-wide/16 v21, 0x0

    cmp-long v3, v3, v21

    if-eqz v3, :cond_128

    .line 2217
    sget-object v3, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v3}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v3

    const-string v4, "_id=?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v7, 0x0

    move-object/from16 v0, v16

    iget-wide v0, v0, Lcom/google/android/apps/plus/service/AndroidContactsSync$AvatarState;->dataId:J

    move-wide/from16 v21, v0

    invoke-static/range {v21 .. v22}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v21

    aput-object v21, v5, v7

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v3

    const-string v4, "data15"

    invoke-virtual {v3, v4, v9}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v3

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_121
    .catchall {:try_start_98 .. :try_end_121} :catchall_123

    goto/16 :goto_98

    .line 2231
    .end local v9           #bytes:[B
    .end local v11           #gaiaId:Ljava/lang/String;
    .end local v16           #state:Lcom/google/android/apps/plus/service/AndroidContactsSync$AvatarState;
    :catchall_123
    move-exception v3

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    throw v3

    .line 2223
    .restart local v9       #bytes:[B
    .restart local v11       #gaiaId:Ljava/lang/String;
    .restart local v16       #state:Lcom/google/android/apps/plus/service/AndroidContactsSync$AvatarState;
    :cond_128
    :try_start_128
    sget-object v3, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v3}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v3

    const-string v4, "raw_contact_id"

    move-object/from16 v0, v16

    iget-wide v0, v0, Lcom/google/android/apps/plus/service/AndroidContactsSync$AvatarState;->rawContactId:J

    move-wide/from16 v21, v0

    invoke-static/range {v21 .. v22}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v3

    const-string v4, "mimetype"

    const-string v5, "vnd.android.cursor.item/photo"

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v3

    const-string v4, "data15"

    invoke-virtual {v3, v4, v9}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v3

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_153
    .catchall {:try_start_128 .. :try_end_153} :catchall_123

    goto/16 :goto_98

    .line 2231
    .end local v9           #bytes:[B
    .end local v11           #gaiaId:Ljava/lang/String;
    .end local v16           #state:Lcom/google/android/apps/plus/service/AndroidContactsSync$AvatarState;
    :cond_155
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 2234
    const/16 v3, 0x8

    const/4 v4, 0x0

    invoke-static {v2, v8, v3, v4}, Lcom/google/android/apps/plus/service/AndroidContactsSync;->flushBatch(Landroid/content/ContentResolver;Ljava/util/ArrayList;IZ)[Landroid/content/ContentProviderResult;

    .line 2236
    move/from16 v13, v20

    .line 2237
    goto/16 :goto_3f

    .line 2239
    .end local v6           #gaiaIds:[Ljava/lang/String;
    .end local v10           #cursor:Landroid/database/Cursor;
    .end local v12           #i:I
    .end local v14           #sb:Ljava/lang/StringBuilder;
    .end local v20           #to:I
    :cond_162
    const/4 v3, 0x1

    invoke-static {v2, v8, v3}, Lcom/google/android/apps/plus/service/AndroidContactsSync;->flushBatch(Landroid/content/ContentResolver;Ljava/util/ArrayList;Z)[Landroid/content/ContentProviderResult;

    .line 2240
    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;->onFinish(I)V

    goto/16 :goto_6
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
    .line 1259
    .local p2, stateMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/google/android/apps/plus/service/AndroidContactsSync$RawContactState;>;"
    .local p3, batch:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    .local p4, circleIdMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Long;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1261
    .local v3, stateList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/android/apps/plus/service/AndroidContactsSync$RawContactState;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 1264
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

    .line 1265
    .local v8, state:Lcom/google/android/apps/plus/service/AndroidContactsSync$RawContactState;
    iget-boolean v0, v8, Lcom/google/android/apps/plus/service/AndroidContactsSync$RawContactState;->exists:Z

    if-eqz v0, :cond_10

    iget-wide v0, v8, Lcom/google/android/apps/plus/service/AndroidContactsSync$RawContactState;->rawContactId:J

    const-wide/16 v4, 0x0

    cmp-long v0, v0, v4

    if-eqz v0, :cond_10

    .line 1266
    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_10

    .line 1270
    .end local v8           #state:Lcom/google/android/apps/plus/service/AndroidContactsSync$RawContactState;
    :cond_2c
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3b

    .line 1271
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p3

    move-object v4, p2

    move-object v6, p4

    invoke-static/range {v0 .. v6}, Lcom/google/android/apps/plus/service/AndroidContactsSync;->updateContacts(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/HashMap;ZLjava/util/HashMap;)V

    .line 1273
    :cond_3b
    return-void
.end method

.method private static updateContacts(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/HashMap;ZLjava/util/HashMap;)V
    .registers 20
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
    .line 1441
    .local p2, batch:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    .local p3, stateList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/android/apps/plus/service/AndroidContactsSync$RawContactState;>;"
    .local p4, stateMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/google/android/apps/plus/service/AndroidContactsSync$RawContactState;>;"
    .local p6, circleIdMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Long;>;"
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 1442
    .local v2, resolver:Landroid/content/ContentResolver;
    invoke-static {p1}, Lcom/google/android/apps/plus/service/AndroidContactsSync;->getRawContactsUri(Lcom/google/android/apps/plus/content/EsAccount;)Landroid/net/Uri;

    move-result-object v10

    .line 1443
    .local v10, rawContactsUri:Landroid/net/Uri;
    invoke-static {p1}, Lcom/google/android/apps/plus/service/AndroidContactsSync;->getEntitiesUri(Lcom/google/android/apps/plus/content/EsAccount;)Landroid/net/Uri;

    move-result-object v7

    .line 1444
    .local v7, entitiesUri:Landroid/net/Uri;
    sget-object v1, Lcom/google/android/apps/plus/content/EsProvider;->CONTACTS_URI:Landroid/net/Uri;

    invoke-static {v1, p1}, Lcom/google/android/apps/plus/content/EsProvider;->appendAccountParameter(Landroid/net/Uri;Lcom/google/android/apps/plus/content/EsAccount;)Landroid/net/Uri;

    move-result-object v3

    .line 1445
    .local v3, contactsUri:Landroid/net/Uri;
    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->size()I

    move-result v11

    .line 1446
    .local v11, size:I
    const/4 v9, 0x0

    .line 1447
    .local v9, offset:I
    :goto_17
    if-ge v9, v11, :cond_4e

    .line 1448
    add-int/lit8 v12, v9, 0x20

    .line 1449
    .local v12, to:I
    if-le v12, v11, :cond_1e

    .line 1450
    move v12, v11

    .line 1453
    :cond_1e
    sub-int v1, v12, v9

    new-array v4, v1, [Ljava/lang/String;

    .line 1454
    .local v4, personIds:[Ljava/lang/String;
    const/4 v8, 0x0

    .local v8, i:I
    :goto_23
    array-length v1, v4

    if-ge v8, v1, :cond_37

    .line 1455
    add-int v1, v9, v8

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/apps/plus/service/AndroidContactsSync$RawContactState;

    iget-object v1, v1, Lcom/google/android/apps/plus/service/AndroidContactsSync$RawContactState;->personId:Ljava/lang/String;

    aput-object v1, v4, v8

    .line 1454
    add-int/lit8 v8, v8, 0x1

    goto :goto_23

    .line 1458
    :cond_37
    move-object/from16 v0, p4

    invoke-static {p0, v2, v3, v4, v0}, Lcom/google/android/apps/plus/service/AndroidContactsSync;->loadContactProtobufs(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/util/HashMap;)V

    move-object v1, p0

    move-object/from16 v5, p4

    move-object/from16 v6, p6

    .line 1459
    invoke-static/range {v1 .. v6}, Lcom/google/android/apps/plus/service/AndroidContactsSync;->loadContactCircleMembership(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;)V

    .line 1461
    if-nez p5, :cond_4f

    move-object/from16 v0, p4

    invoke-static {v2, v7, v4, v0}, Lcom/google/android/apps/plus/service/AndroidContactsSync;->reconcileContacts(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/util/HashMap;)Z

    move-result v1

    if-nez v1, :cond_4f

    .line 1468
    .end local v4           #personIds:[Ljava/lang/String;
    .end local v8           #i:I
    .end local v12           #to:I
    :cond_4e
    return-void

    .line 1464
    .restart local v4       #personIds:[Ljava/lang/String;
    .restart local v8       #i:I
    .restart local v12       #to:I
    :cond_4f
    move-object/from16 v0, p4

    invoke-static {p0, v10, p2, v4, v0}, Lcom/google/android/apps/plus/service/AndroidContactsSync;->buildContentProviderOperations(Landroid/content/Context;Landroid/net/Uri;Ljava/util/ArrayList;[Ljava/lang/String;Ljava/util/HashMap;)V

    .line 1465
    const/4 v1, 0x0

    invoke-static {v2, p2, v1}, Lcom/google/android/apps/plus/service/AndroidContactsSync;->flushBatch(Landroid/content/ContentResolver;Ljava/util/ArrayList;Z)[Landroid/content/ContentProviderResult;

    .line 1466
    move v9, v12

    .line 1467
    goto :goto_17
.end method

.method private static updateMyProfile(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;J[B)V
    .registers 27
    .parameter "context"
    .parameter "account"
    .parameter "name"
    .parameter "lastUpdatedTime"
    .parameter "contactInfoJson"

    .prologue
    .line 1360
    invoke-static/range {p0 .. p0}, Lcom/google/android/apps/plus/service/AndroidContactsSync;->isAndroidSyncSupported(Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_7

    .line 1432
    :cond_6
    :goto_6
    return-void

    .line 1366
    :cond_7
    const/16 v16, 0x0

    .line 1367
    .local v16, isProfileFresh:Z
    new-instance v19, Lcom/google/android/apps/plus/service/AndroidContactsSync$RawContactState;

    const/4 v5, 0x0

    move-object/from16 v0, v19

    invoke-direct {v0, v5}, Lcom/google/android/apps/plus/service/AndroidContactsSync$RawContactState;-><init>(Lcom/google/android/apps/plus/service/AndroidContactsSync$1;)V

    .line 1368
    .local v19, state:Lcom/google/android/apps/plus/service/AndroidContactsSync$RawContactState;
    const/4 v5, 0x1

    move-object/from16 v0, v19

    iput-boolean v5, v0, Lcom/google/android/apps/plus/service/AndroidContactsSync$RawContactState;->exists:Z

    .line 1369
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/apps/plus/content/EsAccount;->getPersonId()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v19

    iput-object v5, v0, Lcom/google/android/apps/plus/service/AndroidContactsSync$RawContactState;->personId:Ljava/lang/String;

    .line 1370
    move-object/from16 v0, p2

    move-object/from16 v1, v19

    iput-object v0, v1, Lcom/google/android/apps/plus/service/AndroidContactsSync$RawContactState;->fullName:Ljava/lang/String;

    .line 1371
    move-wide/from16 v0, p3

    move-object/from16 v2, v19

    iput-wide v0, v2, Lcom/google/android/apps/plus/service/AndroidContactsSync$RawContactState;->lastUpdateTime:J

    .line 1373
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 1374
    .local v3, resolver:Landroid/content/ContentResolver;
    invoke-static/range {p1 .. p1}, Lcom/google/android/apps/plus/service/AndroidContactsSync;->getProfileRawContactUri(Lcom/google/android/apps/plus/content/EsAccount;)Landroid/net/Uri;

    move-result-object v4

    .line 1376
    .local v4, profileRawContactUri:Landroid/net/Uri;
    sget-object v5, Lcom/google/android/apps/plus/service/AndroidContactsSync;->PROFILE_RAW_CONTACT_PROJECTION:[Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v14

    .line 1378
    .local v14, cursor:Landroid/database/Cursor;
    if-eqz v14, :cond_6

    .line 1383
    :try_start_3d
    invoke-interface {v14}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_5b

    .line 1384
    const/4 v5, 0x0

    invoke-interface {v14, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    move-object/from16 v0, v19

    iput-wide v5, v0, Lcom/google/android/apps/plus/service/AndroidContactsSync$RawContactState;->rawContactId:J

    .line 1385
    move-object/from16 v0, v19

    iget-wide v5, v0, Lcom/google/android/apps/plus/service/AndroidContactsSync$RawContactState;->lastUpdateTime:J

    const/4 v7, 0x1

    invoke-interface {v14, v7}, Landroid/database/Cursor;->getLong(I)J
    :try_end_54
    .catchall {:try_start_3d .. :try_end_54} :catchall_ce

    move-result-wide v7

    cmp-long v5, v5, v7

    if-nez v5, :cond_cb

    const/16 v16, 0x1

    .line 1389
    :cond_5b
    :goto_5b
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 1392
    move-object/from16 v0, v19

    iget-wide v5, v0, Lcom/google/android/apps/plus/service/AndroidContactsSync$RawContactState;->rawContactId:J

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-eqz v5, :cond_6a

    if-nez v16, :cond_113

    .line 1393
    :cond_6a
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 1394
    .local v12, batch:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    move-object/from16 v0, p2

    move-object/from16 v1, v19

    iput-object v0, v1, Lcom/google/android/apps/plus/service/AndroidContactsSync$RawContactState;->fullName:Ljava/lang/String;

    .line 1395
    invoke-static/range {p5 .. p5}, Lcom/google/android/apps/plus/content/EsPeopleData;->deserializeContactInfo([B)Lcom/google/android/apps/plus/content/EsPeopleData$ContactInfo;

    move-result-object v13

    .line 1396
    .local v13, contactInfo:Lcom/google/android/apps/plus/content/EsPeopleData$ContactInfo;
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-static {v0, v1, v13}, Lcom/google/android/apps/plus/service/AndroidContactsSync;->populateRawContactState(Landroid/content/Context;Lcom/google/android/apps/plus/service/AndroidContactsSync$RawContactState;Lcom/google/android/apps/plus/content/EsPeopleData$ContactInfo;)V

    .line 1398
    move-object/from16 v0, v19

    iget-wide v5, v0, Lcom/google/android/apps/plus/service/AndroidContactsSync$RawContactState;->rawContactId:J

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-eqz v5, :cond_d6

    .line 1399
    move-object/from16 v0, v19

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

    move-result-object v15

    .line 1401
    .local v15, dataCursor:Landroid/database/Cursor;
    if-eqz v15, :cond_6

    .line 1406
    :goto_a1
    :try_start_a1
    invoke-interface {v15}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_d3

    .line 1407
    const/4 v5, 0x1

    invoke-interface {v15, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    const/4 v5, 0x0

    invoke-interface {v15, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    const/4 v5, 0x2

    invoke-interface {v15, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    const/4 v5, 0x3

    invoke-interface {v15, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    const/4 v5, 0x4

    invoke-interface {v15, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    move-object/from16 v5, v19

    invoke-static/range {v5 .. v11}, Lcom/google/android/apps/plus/service/AndroidContactsSync;->reconcileData(Lcom/google/android/apps/plus/service/AndroidContactsSync$RawContactState;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_c5
    .catchall {:try_start_a1 .. :try_end_c5} :catchall_c6

    goto :goto_a1

    .line 1414
    :catchall_c6
    move-exception v5

    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    throw v5

    .line 1385
    .end local v12           #batch:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    .end local v13           #contactInfo:Lcom/google/android/apps/plus/content/EsPeopleData$ContactInfo;
    .end local v15           #dataCursor:Landroid/database/Cursor;
    :cond_cb
    const/16 v16, 0x0

    goto :goto_5b

    .line 1389
    :catchall_ce
    move-exception v5

    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    throw v5

    .line 1414
    .restart local v12       #batch:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    .restart local v13       #contactInfo:Lcom/google/android/apps/plus/content/EsPeopleData$ContactInfo;
    .restart local v15       #dataCursor:Landroid/database/Cursor;
    :cond_d3
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    .line 1418
    .end local v15           #dataCursor:Landroid/database/Cursor;
    :cond_d6
    move-object/from16 v0, v19

    iget-wide v5, v0, Lcom/google/android/apps/plus/service/AndroidContactsSync$RawContactState;->rawContactId:J

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-nez v5, :cond_132

    invoke-static/range {p1 .. p1}, Lcom/google/android/apps/plus/service/AndroidContactsSync;->getProfileRawContactUri(Lcom/google/android/apps/plus/content/EsAccount;)Landroid/net/Uri;

    move-result-object v20

    .line 1420
    .local v20, uri:Landroid/net/Uri;
    :goto_e4
    const/4 v5, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v19

    invoke-static {v0, v1, v12, v2, v5}, Lcom/google/android/apps/plus/service/AndroidContactsSync;->buildContentProviderOperations(Landroid/content/Context;Landroid/net/Uri;Ljava/util/ArrayList;Lcom/google/android/apps/plus/service/AndroidContactsSync$RawContactState;Z)V

    .line 1421
    const/4 v5, 0x1

    invoke-static {v3, v12, v5}, Lcom/google/android/apps/plus/service/AndroidContactsSync;->flushBatch(Landroid/content/ContentResolver;Ljava/util/ArrayList;Z)[Landroid/content/ContentProviderResult;

    move-result-object v18

    .line 1422
    .local v18, results:[Landroid/content/ContentProviderResult;
    move-object/from16 v0, v19

    iget-wide v5, v0, Lcom/google/android/apps/plus/service/AndroidContactsSync$RawContactState;->rawContactId:J

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-nez v5, :cond_113

    if-eqz v18, :cond_113

    move-object/from16 v0, v18

    array-length v5, v0

    if-lez v5, :cond_113

    .line 1423
    const/4 v5, 0x0

    aget-object v5, v18, v5

    iget-object v0, v5, Landroid/content/ContentProviderResult;->uri:Landroid/net/Uri;

    move-object/from16 v17, v0

    .line 1424
    .local v17, rawContactUri:Landroid/net/Uri;
    invoke-static/range {v17 .. v17}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v5

    move-object/from16 v0, v19

    iput-wide v5, v0, Lcom/google/android/apps/plus/service/AndroidContactsSync$RawContactState;->rawContactId:J

    .line 1428
    .end local v12           #batch:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    .end local v13           #contactInfo:Lcom/google/android/apps/plus/content/EsPeopleData$ContactInfo;
    .end local v17           #rawContactUri:Landroid/net/Uri;
    .end local v18           #results:[Landroid/content/ContentProviderResult;
    .end local v20           #uri:Landroid/net/Uri;
    :cond_113
    move-object/from16 v0, v19

    iget-wide v5, v0, Lcom/google/android/apps/plus/service/AndroidContactsSync$RawContactState;->rawContactId:J

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-eqz v5, :cond_6

    .line 1429
    invoke-static/range {p1 .. p1}, Lcom/google/android/apps/plus/service/AndroidContactsSync;->getRawContactsUri(Lcom/google/android/apps/plus/content/EsAccount;)Landroid/net/Uri;

    move-result-object v5

    move-object/from16 v0, v19

    iget-wide v6, v0, Lcom/google/android/apps/plus/service/AndroidContactsSync$RawContactState;->rawContactId:J

    invoke-static {v5, v6, v7}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-static {v0, v1, v5}, Lcom/google/android/apps/plus/service/AndroidContactsSync;->syncRawContact(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Landroid/net/Uri;)V

    goto/16 :goto_6

    .line 1418
    .restart local v12       #batch:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    .restart local v13       #contactInfo:Lcom/google/android/apps/plus/content/EsPeopleData$ContactInfo;
    :cond_132
    invoke-static/range {p1 .. p1}, Lcom/google/android/apps/plus/service/AndroidContactsSync;->getRawContactsUri(Lcom/google/android/apps/plus/content/EsAccount;)Landroid/net/Uri;

    move-result-object v20

    goto :goto_e4
.end method

.method private static updateStreamItems(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/util/ArrayList;IILjava/util/ArrayList;[I)V
    .registers 50
    .parameter "context"
    .parameter "account"
    .parameter
    .parameter "offset"
    .parameter "to"
    .parameter
    .parameter "totalImageBytes"
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
    .line 2674
    .local p2, stateList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/android/apps/plus/service/AndroidContactsSync$PersonActivityState;>;"
    .local p5, batch:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    new-instance v13, Ljava/util/HashMap;

    invoke-direct {v13}, Ljava/util/HashMap;-><init>()V

    .line 2677
    .local v13, activityStateMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/google/android/apps/plus/service/AndroidContactsSync$ActivityState;>;"
    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    .line 2678
    .local v35, sb:Ljava/lang/StringBuilder;
    const-string v5, "activity_id IN ("

    move-object/from16 v0, v35

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2679
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 2680
    .local v11, activityIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    move/from16 v21, p3

    .local v21, i:I
    :goto_18
    move/from16 v0, v21

    move/from16 v1, p4

    if-ge v0, v1, :cond_74

    .line 2681
    move-object/from16 v0, p2

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Lcom/google/android/apps/plus/service/AndroidContactsSync$PersonActivityState;

    .line 2682
    .local v36, state:Lcom/google/android/apps/plus/service/AndroidContactsSync$PersonActivityState;
    move-object/from16 v0, v36

    iget-object v5, v0, Lcom/google/android/apps/plus/service/AndroidContactsSync$PersonActivityState;->activities:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v22

    .local v22, i$:Ljava/util/Iterator;
    :cond_30
    :goto_30
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_71

    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/google/android/apps/plus/service/AndroidContactsSync$ActivityState;

    .line 2683
    .local v12, activityState:Lcom/google/android/apps/plus/service/AndroidContactsSync$ActivityState;
    iget-boolean v5, v12, Lcom/google/android/apps/plus/service/AndroidContactsSync$ActivityState;->exists:Z

    if-eqz v5, :cond_30

    iget-boolean v5, v12, Lcom/google/android/apps/plus/service/AndroidContactsSync$ActivityState;->changed:Z

    if-nez v5, :cond_4c

    iget-wide v5, v12, Lcom/google/android/apps/plus/service/AndroidContactsSync$ActivityState;->streamItemId:J

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-nez v5, :cond_30

    .line 2685
    :cond_4c
    invoke-virtual {v11}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_59

    .line 2686
    const/16 v5, 0x2c

    move-object/from16 v0, v35

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2688
    :cond_59
    const/16 v5, 0x3f

    move-object/from16 v0, v35

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2689
    iget-object v5, v12, Lcom/google/android/apps/plus/service/AndroidContactsSync$ActivityState;->activityId:Ljava/lang/String;

    invoke-virtual {v11, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2690
    move-object/from16 v0, v36

    iget-wide v5, v0, Lcom/google/android/apps/plus/service/AndroidContactsSync$PersonActivityState;->rawContactId:J

    iput-wide v5, v12, Lcom/google/android/apps/plus/service/AndroidContactsSync$ActivityState;->rawContactId:J

    .line 2691
    iget-object v5, v12, Lcom/google/android/apps/plus/service/AndroidContactsSync$ActivityState;->activityId:Ljava/lang/String;

    invoke-virtual {v13, v5, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_30

    .line 2680
    .end local v12           #activityState:Lcom/google/android/apps/plus/service/AndroidContactsSync$ActivityState;
    :cond_71
    add-int/lit8 v21, v21, 0x1

    goto :goto_18

    .line 2696
    .end local v22           #i$:Ljava/util/Iterator;
    .end local v36           #state:Lcom/google/android/apps/plus/service/AndroidContactsSync$PersonActivityState;
    :cond_74
    invoke-virtual {v11}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_7b

    .line 2849
    :cond_7a
    :goto_7a
    return-void

    .line 2700
    :cond_7b
    const/16 v5, 0x29

    move-object/from16 v0, v35

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2702
    invoke-static/range {p1 .. p1}, Lcom/google/android/apps/plus/service/AndroidContactsSync;->getStreamItemsUri(Lcom/google/android/apps/plus/content/EsAccount;)Landroid/net/Uri;

    move-result-object v40

    .line 2703
    .local v40, streamItemsUri:Landroid/net/Uri;
    invoke-static/range {p1 .. p1}, Lcom/google/android/apps/plus/service/AndroidContactsSync;->getStreamItemsPhotoUri(Lcom/google/android/apps/plus/content/EsAccount;)Landroid/net/Uri;

    move-result-object v39

    .line 2704
    .local v39, streamItemsPhotoUri:Landroid/net/Uri;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v31

    .line 2705
    .local v31, packageName:Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0201b0

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v23

    .line 2706
    .local v23, iconResourceName:Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f080040

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v26

    .line 2707
    .local v26, labelResourceName:Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 2708
    .local v4, resolver:Landroid/content/ContentResolver;
    sget-object v5, Lcom/google/android/apps/plus/content/EsProvider;->ACTIVITIES_URI:Landroid/net/Uri;

    move-object/from16 v0, p1

    invoke-static {v5, v0}, Lcom/google/android/apps/plus/content/EsProvider;->appendAccountParameter(Landroid/net/Uri;Lcom/google/android/apps/plus/content/EsAccount;)Landroid/net/Uri;

    move-result-object v5

    sget-object v6, Lcom/google/android/apps/plus/service/AndroidContactsSync;->ACTIVITY_PROJECTION:[Ljava/lang/String;

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/String;

    invoke-virtual {v11, v8}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Ljava/lang/String;

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v16

    .line 2713
    .local v16, cursor:Landroid/database/Cursor;
    :cond_c4
    :goto_c4
    :try_start_c4
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_2f6

    .line 2714
    const/4 v5, 0x0

    move-object/from16 v0, v16

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 2715
    .local v10, activityId:Ljava/lang/String;
    const/4 v5, 0x1

    move-object/from16 v0, v16

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v29

    .line 2716
    .local v29, mediaBytes:[B
    const/4 v5, 0x2

    move-object/from16 v0, v16

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    .line 2717
    .local v15, commentCount:I
    const/4 v5, 0x3

    move-object/from16 v0, v16

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v33

    .line 2718
    .local v33, plusOneBytes:[B
    const/4 v5, 0x4

    move-object/from16 v0, v16

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v20

    .line 2719
    .local v20, explanations:[B
    const/16 v18, 0x0

    .line 2720
    .local v18, dbMedia:[Lcom/google/android/apps/plus/content/DbMedia;
    if-eqz v29, :cond_f5

    .line 2721
    invoke-static/range {v29 .. v29}, Lcom/google/android/apps/plus/content/DbMedia;->deserialize([B)[Lcom/google/android/apps/plus/content/DbMedia;

    move-result-object v18

    .line 2724
    :cond_f5
    invoke-virtual {v13, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Lcom/google/android/apps/plus/service/AndroidContactsSync$ActivityState;

    .line 2725
    .local v36, state:Lcom/google/android/apps/plus/service/AndroidContactsSync$ActivityState;
    invoke-virtual/range {p5 .. p5}, Ljava/util/ArrayList;->size()I

    move-result v37

    .line 2727
    .local v37, streamItemBackReference:I
    move-object/from16 v0, v36

    iget-wide v5, v0, Lcom/google/android/apps/plus/service/AndroidContactsSync$ActivityState;->streamItemId:J

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-nez v5, :cond_2a6

    .line 2728
    invoke-static/range {v40 .. v40}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/content/ContentProviderOperation$Builder;->withYieldAllowed(Z)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v5

    const-string v6, "raw_contact_id"

    move-object/from16 v0, v36

    iget-wide v7, v0, Lcom/google/android/apps/plus/service/AndroidContactsSync$ActivityState;->rawContactId:J

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v5

    const-string v6, "stream_item_sync1"

    invoke-virtual {v5, v6, v10}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v5

    const-string v6, "res_package"

    move-object/from16 v0, v31

    invoke-virtual {v5, v6, v0}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v5

    const-string v6, "icon"

    move-object/from16 v0, v23

    invoke-virtual {v5, v6, v0}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v5

    const-string v6, "label"

    move-object/from16 v0, v26

    invoke-virtual {v5, v6, v0}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v14

    .line 2741
    .local v14, builder:Landroid/content/ContentProviderOperation$Builder;
    :goto_13e
    const/16 v27, 0x0

    .line 2742
    .local v27, location:Lcom/google/wireless/tacotruck/proto/Data$Location;
    const/16 v17, 0x0

    .line 2743
    .local v17, dbExplanations:[Lcom/google/wireless/tacotruck/proto/Data$Explanation;
    if-eqz v20, :cond_15b

    .line 2744
    invoke-static/range {v20 .. v20}, Lcom/google/android/apps/plus/content/DbExplanation;->deserialize([B)[Lcom/google/wireless/tacotruck/proto/Data$Explanation;

    move-result-object v17

    .line 2745
    invoke-static/range {v17 .. v17}, Lcom/google/android/apps/plus/service/AndroidContactsSync;->isCheckin([Lcom/google/wireless/tacotruck/proto/Data$Explanation;)Z

    move-result v5

    if-eqz v5, :cond_15b

    .line 2746
    const/4 v5, 0x5

    move-object/from16 v0, v16

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getBlob(I)[B
    :try_end_154
    .catchall {:try_start_c4 .. :try_end_154} :catchall_2d0

    move-result-object v28

    .line 2747
    .local v28, locationBytes:[B
    if-eqz v28, :cond_15b

    .line 2749
    :try_start_157
    invoke-static/range {v28 .. v28}, Lcom/google/wireless/tacotruck/proto/Data$Location;->parseFrom([B)Lcom/google/wireless/tacotruck/proto/Data$Location;
    :try_end_15a
    .catchall {:try_start_157 .. :try_end_15a} :catchall_2d0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_157 .. :try_end_15a} :catch_30b

    move-result-object v27

    .line 2756
    .end local v28           #locationBytes:[B
    :cond_15b
    :goto_15b
    :try_start_15b
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v17

    move-object/from16 v3, v27

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/apps/plus/service/AndroidContactsSync;->buildStreamItemContentHtml(Landroid/content/Context;[Lcom/google/android/apps/plus/content/DbMedia;[Lcom/google/wireless/tacotruck/proto/Data$Explanation;Lcom/google/wireless/tacotruck/proto/Data$Location;)Ljava/lang/String;

    move-result-object v41

    .line 2759
    .local v41, text:Ljava/lang/String;
    const-string v5, "text"

    move-object/from16 v0, v41

    invoke-virtual {v14, v5, v0}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 2760
    const-string v5, "timestamp"

    move-object/from16 v0, v36

    iget-wide v6, v0, Lcom/google/android/apps/plus/service/AndroidContactsSync$ActivityState;->created:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v14, v5, v6}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 2761
    const-string v5, "stream_item_sync2"

    move-object/from16 v0, v36

    iget-wide v6, v0, Lcom/google/android/apps/plus/service/AndroidContactsSync$ActivityState;->lastModified:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v14, v5, v6}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 2763
    const/4 v5, 0x0

    move-object/from16 v0, v35

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 2764
    if-eqz v15, :cond_1ad

    .line 2765
    const v5, 0x7f0200ba

    move-object/from16 v0, p0

    move-object/from16 v1, v35

    invoke-static {v0, v1, v5}, Lcom/google/android/apps/plus/service/AndroidContactsSync;->appendImgTag(Landroid/content/Context;Ljava/lang/StringBuilder;I)V

    .line 2766
    const-string v5, " "

    move-object/from16 v0, v35

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2767
    move-object/from16 v0, v35

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2768
    const-string v5, " "

    move-object/from16 v0, v35

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1ad
    .catchall {:try_start_15b .. :try_end_1ad} :catchall_2d0

    .line 2771
    :cond_1ad
    if-eqz v33, :cond_1e5

    .line 2773
    :try_start_1af
    invoke-static/range {v33 .. v33}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;->parseFrom([B)Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;

    move-result-object v34

    .line 2774
    .local v34, plusOneData:Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;
    invoke-virtual/range {v34 .. v34}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;->getTotalPlusoneCount()I

    move-result v42

    .line 2775
    .local v42, totalPlusoneCount:I
    if-eqz v42, :cond_1e5

    .line 2776
    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    if-eqz v5, :cond_1c6

    .line 2777
    const-string v5, "&nbsp;&nbsp;"

    move-object/from16 v0, v35

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2779
    :cond_1c6
    const v5, 0x7f02015b

    move-object/from16 v0, p0

    move-object/from16 v1, v35

    invoke-static {v0, v1, v5}, Lcom/google/android/apps/plus/service/AndroidContactsSync;->appendImgTag(Landroid/content/Context;Ljava/lang/StringBuilder;I)V

    .line 2780
    const-string v5, " "

    move-object/from16 v0, v35

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2781
    move-object/from16 v0, v35

    move/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2782
    const-string v5, " "

    move-object/from16 v0, v35

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1e5
    .catchall {:try_start_1af .. :try_end_1e5} :catchall_2d0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_1af .. :try_end_1e5} :catch_2bb

    .line 2791
    .end local v34           #plusOneData:Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;
    .end local v42           #totalPlusoneCount:I
    :cond_1e5
    :goto_1e5
    :try_start_1e5
    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    if-lez v5, :cond_2d5

    .line 2792
    const-string v5, "comments"

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v14, v5, v6}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 2798
    :goto_1f4
    invoke-virtual {v14}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v5

    move-object/from16 v0, p5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2800
    const/16 v38, 0x0

    .line 2801
    .local v38, streamItemPhotoDirUri:Landroid/net/Uri;
    move-object/from16 v0, v36

    iget-wide v5, v0, Lcom/google/android/apps/plus/service/AndroidContactsSync$ActivityState;->streamItemId:J

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-eqz v5, :cond_228

    .line 2802
    invoke-static/range {p1 .. p1}, Lcom/google/android/apps/plus/service/AndroidContactsSync;->getStreamItemsUri(Lcom/google/android/apps/plus/content/EsAccount;)Landroid/net/Uri;

    move-result-object v5

    move-object/from16 v0, v36

    iget-wide v6, v0, Lcom/google/android/apps/plus/service/AndroidContactsSync$ActivityState;->streamItemId:J

    invoke-static {v5, v6, v7}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v5

    const-string v6, "photo"

    invoke-static {v5, v6}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v38

    .line 2805
    invoke-static/range {v38 .. v38}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v5

    move-object/from16 v0, p5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2808
    :cond_228
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v18

    invoke-static {v0, v1, v2}, Lcom/google/android/apps/plus/service/AndroidContactsSync;->getStreamItemPhotos(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;[Lcom/google/android/apps/plus/content/DbMedia;)Ljava/util/ArrayList;

    move-result-object v25

    .line 2809
    .local v25, images:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/android/apps/plus/service/AndroidContactsSync$ImageContainer;>;"
    if-eqz v25, :cond_c4

    .line 2810
    invoke-virtual/range {v25 .. v25}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v6, 0x6

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v32

    .line 2811
    .local v32, photoCount:I
    const/16 v21, 0x0

    :goto_23f
    move/from16 v0, v21

    move/from16 v1, v32

    if-ge v0, v1, :cond_2e3

    .line 2812
    move-object/from16 v0, v25

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lcom/google/android/apps/plus/service/AndroidContactsSync$ImageContainer;

    .line 2813
    .local v24, image:Lcom/google/android/apps/plus/service/AndroidContactsSync$ImageContainer;
    const/4 v5, 0x0

    aget v6, p6, v5

    move-object/from16 v0, v24

    iget-object v7, v0, Lcom/google/android/apps/plus/service/AndroidContactsSync$ImageContainer;->imageBytes:[B

    array-length v7, v7

    add-int/2addr v6, v7

    aput v6, p6, v5

    .line 2815
    move-object/from16 v0, v36

    iget-wide v5, v0, Lcom/google/android/apps/plus/service/AndroidContactsSync$ActivityState;->streamItemId:J

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-nez v5, :cond_2de

    .line 2816
    invoke-static/range {v39 .. v39}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v5

    const-string v6, "stream_item_id"

    move/from16 v0, v37

    invoke-virtual {v5, v6, v0}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v30

    .line 2822
    .local v30, op:Landroid/content/ContentProviderOperation$Builder;
    :goto_270
    const-string v5, "stream_item_photo_sync1"

    move-object/from16 v0, v30

    invoke-virtual {v0, v5, v10}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v5

    const-string v6, "sort_index"

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v5

    const-string v6, "stream_item_photo_sync2"

    move-object/from16 v0, v24

    iget v7, v0, Lcom/google/android/apps/plus/service/AndroidContactsSync$ImageContainer;->mediaIndex:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v5

    const-string v6, "photo"

    move-object/from16 v0, v24

    iget-object v7, v0, Lcom/google/android/apps/plus/service/AndroidContactsSync$ImageContainer;->imageBytes:[B

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v5

    move-object/from16 v0, p5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2811
    add-int/lit8 v21, v21, 0x1

    goto :goto_23f

    .line 2736
    .end local v14           #builder:Landroid/content/ContentProviderOperation$Builder;
    .end local v17           #dbExplanations:[Lcom/google/wireless/tacotruck/proto/Data$Explanation;
    .end local v24           #image:Lcom/google/android/apps/plus/service/AndroidContactsSync$ImageContainer;
    .end local v25           #images:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/android/apps/plus/service/AndroidContactsSync$ImageContainer;>;"
    .end local v27           #location:Lcom/google/wireless/tacotruck/proto/Data$Location;
    .end local v30           #op:Landroid/content/ContentProviderOperation$Builder;
    .end local v32           #photoCount:I
    .end local v38           #streamItemPhotoDirUri:Landroid/net/Uri;
    .end local v41           #text:Ljava/lang/String;
    :cond_2a6
    move-object/from16 v0, v36

    iget-wide v5, v0, Lcom/google/android/apps/plus/service/AndroidContactsSync$ActivityState;->streamItemId:J

    move-object/from16 v0, v40

    invoke-static {v0, v5, v6}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v5

    invoke-static {v5}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/content/ContentProviderOperation$Builder;->withYieldAllowed(Z)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v14

    .restart local v14       #builder:Landroid/content/ContentProviderOperation$Builder;
    goto/16 :goto_13e

    .line 2784
    .restart local v17       #dbExplanations:[Lcom/google/wireless/tacotruck/proto/Data$Explanation;
    .restart local v27       #location:Lcom/google/wireless/tacotruck/proto/Data$Location;
    .restart local v41       #text:Ljava/lang/String;
    :catch_2bb
    move-exception v19

    .line 2785
    .local v19, e:Lcom/google/protobuf/InvalidProtocolBufferException;
    const-string v5, "GooglePlusContactsSync"

    const/4 v6, 0x6

    invoke-static {v5, v6}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_1e5

    .line 2786
    const-string v5, "GooglePlusContactsSync"

    const-string v6, "Could not parse PlusOneData"

    move-object/from16 v0, v19

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2ce
    .catchall {:try_start_1e5 .. :try_end_2ce} :catchall_2d0

    goto/16 :goto_1e5

    .line 2841
    .end local v10           #activityId:Ljava/lang/String;
    .end local v14           #builder:Landroid/content/ContentProviderOperation$Builder;
    .end local v15           #commentCount:I
    .end local v17           #dbExplanations:[Lcom/google/wireless/tacotruck/proto/Data$Explanation;
    .end local v18           #dbMedia:[Lcom/google/android/apps/plus/content/DbMedia;
    .end local v19           #e:Lcom/google/protobuf/InvalidProtocolBufferException;
    .end local v20           #explanations:[B
    .end local v27           #location:Lcom/google/wireless/tacotruck/proto/Data$Location;
    .end local v29           #mediaBytes:[B
    .end local v33           #plusOneBytes:[B
    .end local v36           #state:Lcom/google/android/apps/plus/service/AndroidContactsSync$ActivityState;
    .end local v37           #streamItemBackReference:I
    .end local v41           #text:Ljava/lang/String;
    :catchall_2d0
    move-exception v5

    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    throw v5

    .line 2795
    .restart local v10       #activityId:Ljava/lang/String;
    .restart local v14       #builder:Landroid/content/ContentProviderOperation$Builder;
    .restart local v15       #commentCount:I
    .restart local v17       #dbExplanations:[Lcom/google/wireless/tacotruck/proto/Data$Explanation;
    .restart local v18       #dbMedia:[Lcom/google/android/apps/plus/content/DbMedia;
    .restart local v20       #explanations:[B
    .restart local v27       #location:Lcom/google/wireless/tacotruck/proto/Data$Location;
    .restart local v29       #mediaBytes:[B
    .restart local v33       #plusOneBytes:[B
    .restart local v36       #state:Lcom/google/android/apps/plus/service/AndroidContactsSync$ActivityState;
    .restart local v37       #streamItemBackReference:I
    .restart local v41       #text:Ljava/lang/String;
    :cond_2d5
    :try_start_2d5
    const-string v5, "comments"

    const-string v6, " "

    invoke-virtual {v14, v5, v6}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    goto/16 :goto_1f4

    .line 2820
    .restart local v24       #image:Lcom/google/android/apps/plus/service/AndroidContactsSync$ImageContainer;
    .restart local v25       #images:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/android/apps/plus/service/AndroidContactsSync$ImageContainer;>;"
    .restart local v32       #photoCount:I
    .restart local v38       #streamItemPhotoDirUri:Landroid/net/Uri;
    :cond_2de
    invoke-static/range {v38 .. v38}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v30

    .restart local v30       #op:Landroid/content/ContentProviderOperation$Builder;
    goto :goto_270

    .line 2830
    .end local v24           #image:Lcom/google/android/apps/plus/service/AndroidContactsSync$ImageContainer;
    .end local v30           #op:Landroid/content/ContentProviderOperation$Builder;
    :cond_2e3
    const/4 v5, 0x0

    aget v5, p6, v5

    const/high16 v6, 0x4

    if-lt v5, v6, :cond_c4

    .line 2834
    const/4 v5, 0x1

    move-object/from16 v0, p5

    invoke-static {v4, v0, v5}, Lcom/google/android/apps/plus/service/AndroidContactsSync;->flushBatch(Landroid/content/ContentResolver;Ljava/util/ArrayList;Z)[Landroid/content/ContentProviderResult;

    .line 2836
    const/4 v5, 0x0

    const/4 v6, 0x0

    aput v6, p6, v5
    :try_end_2f4
    .catchall {:try_start_2d5 .. :try_end_2f4} :catchall_2d0

    goto/16 :goto_c4

    .line 2841
    .end local v10           #activityId:Ljava/lang/String;
    .end local v14           #builder:Landroid/content/ContentProviderOperation$Builder;
    .end local v15           #commentCount:I
    .end local v17           #dbExplanations:[Lcom/google/wireless/tacotruck/proto/Data$Explanation;
    .end local v18           #dbMedia:[Lcom/google/android/apps/plus/content/DbMedia;
    .end local v20           #explanations:[B
    .end local v25           #images:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/android/apps/plus/service/AndroidContactsSync$ImageContainer;>;"
    .end local v27           #location:Lcom/google/wireless/tacotruck/proto/Data$Location;
    .end local v29           #mediaBytes:[B
    .end local v32           #photoCount:I
    .end local v33           #plusOneBytes:[B
    .end local v36           #state:Lcom/google/android/apps/plus/service/AndroidContactsSync$ActivityState;
    .end local v37           #streamItemBackReference:I
    .end local v38           #streamItemPhotoDirUri:Landroid/net/Uri;
    .end local v41           #text:Ljava/lang/String;
    :cond_2f6
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    .line 2844
    const/4 v5, 0x0

    move-object/from16 v0, p5

    invoke-static {v4, v0, v5}, Lcom/google/android/apps/plus/service/AndroidContactsSync;->flushBatch(Landroid/content/ContentResolver;Ljava/util/ArrayList;Z)[Landroid/content/ContentProviderResult;

    .line 2846
    invoke-virtual/range {p5 .. p5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-nez v5, :cond_7a

    .line 2847
    const/4 v5, 0x0

    const/4 v6, 0x0

    aput v6, p6, v5

    goto/16 :goto_7a

    .line 2750
    .restart local v10       #activityId:Ljava/lang/String;
    .restart local v14       #builder:Landroid/content/ContentProviderOperation$Builder;
    .restart local v15       #commentCount:I
    .restart local v17       #dbExplanations:[Lcom/google/wireless/tacotruck/proto/Data$Explanation;
    .restart local v18       #dbMedia:[Lcom/google/android/apps/plus/content/DbMedia;
    .restart local v20       #explanations:[B
    .restart local v27       #location:Lcom/google/wireless/tacotruck/proto/Data$Location;
    .restart local v28       #locationBytes:[B
    .restart local v29       #mediaBytes:[B
    .restart local v33       #plusOneBytes:[B
    .restart local v36       #state:Lcom/google/android/apps/plus/service/AndroidContactsSync$ActivityState;
    .restart local v37       #streamItemBackReference:I
    :catch_30b
    move-exception v5

    goto/16 :goto_15b
.end method
