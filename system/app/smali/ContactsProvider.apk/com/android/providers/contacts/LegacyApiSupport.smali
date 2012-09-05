.class public Lcom/android/providers/contacts/LegacyApiSupport;
.super Ljava/lang/Object;
.source "LegacyApiSupport.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/providers/contacts/LegacyApiSupport$SettingsMatchQuery;,
        Lcom/android/providers/contacts/LegacyApiSupport$LegacyPhotoData;,
        Lcom/android/providers/contacts/LegacyApiSupport$IdQuery;,
        Lcom/android/providers/contacts/LegacyApiSupport$LegacyTables;
    }
.end annotation


# static fields
.field private static CONTACT_METHOD_DATA_SQL:Ljava/lang/String;

.field private static final CONTACT_METHOD_MIME_TYPES:[Ljava/lang/String;

.field private static final EXTENSION_MIME_TYPES:[Ljava/lang/String;

.field private static final GROUP_MEMBERSHIP_MIME_TYPES:[Ljava/lang/String;

.field private static final LIVE_FOLDERS_CONTACTS_FAVORITES_URI:Landroid/net/Uri;

.field private static final LIVE_FOLDERS_CONTACTS_URI:Landroid/net/Uri;

.field private static final LIVE_FOLDERS_CONTACTS_WITH_PHONES_URI:Landroid/net/Uri;

.field private static final ORGANIZATION_MIME_TYPES:[Ljava/lang/String;

.field private static final PHONE_MIME_TYPES:[Ljava/lang/String;

.field private static final PHOTO_MIME_TYPES:[Ljava/lang/String;

.field private static final sContactMethodProjectionMap:Ljava/util/HashMap;
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

.field private static final sExtensionProjectionMap:Ljava/util/HashMap;
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

.field private static final sGroupMembershipProjectionMap:Ljava/util/HashMap;
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

.field private static final sGroupProjectionMap:Ljava/util/HashMap;
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

.field private static final sOrganizationProjectionMap:Ljava/util/HashMap;
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

.field private static final sPeopleProjectionMap:Ljava/util/HashMap;
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

.field private static final sPhoneProjectionMap:Ljava/util/HashMap;
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

.field private static final sPhotoProjectionMap:Ljava/util/HashMap;
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

.field private static final sUriMatcher:Landroid/content/UriMatcher;


# instance fields
.field private mAccount:Landroid/accounts/Account;

.field private final mContactsProvider:Lcom/android/providers/contacts/ContactsProvider2;

.field private final mContext:Landroid/content/Context;

.field private final mDataMimetypeQuery:Landroid/database/sqlite/SQLiteStatement;

.field private final mDataRawContactIdQuery:Landroid/database/sqlite/SQLiteStatement;

.field private final mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

.field private mDefaultAccountKnown:Z

.field private final mGlobalSearchSupport:Lcom/android/providers/contacts/GlobalSearchSupport;

.field private mMimetypeEmail:J

.field private mMimetypeIm:J

.field private mMimetypePostal:J

.field private final mPhoneticNameSplitter:Lcom/android/providers/contacts/NameSplitter;

.field private mSelectionArgs1:[Ljava/lang/String;

.field private mSelectionArgs2:[Ljava/lang/String;

.field private final mValues:Landroid/content/ContentValues;

.field private final mValues2:Landroid/content/ContentValues;

.field private final mValues3:Landroid/content/ContentValues;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/16 v7, 0x20

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v2, 0x0

    const/4 v4, 0x1

    .line 75
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lcom/android/providers/contacts/LegacyApiSupport;->sUriMatcher:Landroid/content/UriMatcher;

    .line 176
    const-string v0, "(CASE WHEN mimetype=\'vnd.android.cursor.item/im\' THEN (CASE WHEN data.data5=-1 THEN \'custom:\'||data.data6 ELSE \'pre:\'||data.data5 END) ELSE data.data1 END)"

    sput-object v0, Lcom/android/providers/contacts/LegacyApiSupport;->CONTACT_METHOD_DATA_SQL:Ljava/lang/String;

    .line 185
    sget-object v0, Landroid/provider/ContactsContract;->AUTHORITY_URI:Landroid/net/Uri;

    const-string v1, "live_folders/contacts"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/providers/contacts/LegacyApiSupport;->LIVE_FOLDERS_CONTACTS_URI:Landroid/net/Uri;

    .line 188
    sget-object v0, Landroid/provider/ContactsContract;->AUTHORITY_URI:Landroid/net/Uri;

    const-string v1, "live_folders/contacts_with_phones"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/providers/contacts/LegacyApiSupport;->LIVE_FOLDERS_CONTACTS_WITH_PHONES_URI:Landroid/net/Uri;

    .line 191
    sget-object v0, Landroid/provider/ContactsContract;->AUTHORITY_URI:Landroid/net/Uri;

    const-string v1, "live_folders/favorites"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/providers/contacts/LegacyApiSupport;->LIVE_FOLDERS_CONTACTS_FAVORITES_URI:Landroid/net/Uri;

    .line 219
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "vnd.android.cursor.item/organization"

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/providers/contacts/LegacyApiSupport;->ORGANIZATION_MIME_TYPES:[Ljava/lang/String;

    .line 223
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "vnd.android.cursor.item/email_v2"

    aput-object v1, v0, v2

    const-string v1, "vnd.android.cursor.item/im"

    aput-object v1, v0, v4

    const-string v1, "vnd.android.cursor.item/postal-address_v2"

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/providers/contacts/LegacyApiSupport;->CONTACT_METHOD_MIME_TYPES:[Ljava/lang/String;

    .line 229
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "vnd.android.cursor.item/phone_v2"

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/providers/contacts/LegacyApiSupport;->PHONE_MIME_TYPES:[Ljava/lang/String;

    .line 233
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "vnd.android.cursor.item/photo"

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/providers/contacts/LegacyApiSupport;->PHOTO_MIME_TYPES:[Ljava/lang/String;

    .line 237
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "vnd.android.cursor.item/group_membership"

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/providers/contacts/LegacyApiSupport;->GROUP_MEMBERSHIP_MIME_TYPES:[Ljava/lang/String;

    .line 241
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "vnd.android.cursor.item/contact_extensions"

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/providers/contacts/LegacyApiSupport;->EXTENSION_MIME_TYPES:[Ljava/lang/String;

    .line 284
    sget-object v0, Lcom/android/providers/contacts/LegacyApiSupport;->sUriMatcher:Landroid/content/UriMatcher;

    .line 286
    const-string v1, "contacts"

    .line 287
    const-string v2, "extensions"

    const/16 v3, 0xe

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 288
    const-string v2, "extensions/#"

    const/16 v3, 0xf

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 289
    const-string v2, "groups"

    const/16 v3, 0x12

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 290
    const-string v2, "groups/#"

    const/16 v3, 0x13

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 291
    const-string v2, "groups/name/*/members"

    const/16 v3, 0x28

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 294
    const-string v2, "groups/system_id/*/members"

    const/16 v3, 0x29

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 297
    const-string v2, "groupmembership"

    const/16 v3, 0x14

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 298
    const-string v2, "groupmembership/#"

    const/16 v3, 0x15

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 300
    const-string v2, "people"

    invoke-virtual {v0, v1, v2, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 303
    const-string v2, "people/filter/*"

    const/16 v3, 0x1d

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 308
    const-string v2, "people/#"

    invoke-virtual {v0, v1, v2, v5}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 309
    const-string v2, "people/#/extensions"

    const/16 v3, 0x10

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 310
    const-string v2, "people/#/extensions/#"

    const/16 v3, 0x11

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 311
    const-string v2, "people/#/phones"

    const/16 v3, 0xa

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 312
    const-string v2, "people/#/phones/#"

    const/16 v3, 0xb

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 315
    const-string v2, "people/#/photo"

    const/16 v3, 0x18

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 317
    const-string v2, "people/#/contact_methods"

    const/4 v3, 0x6

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 320
    const-string v2, "people/#/contact_methods/#"

    const/4 v3, 0x7

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 321
    const-string v2, "people/#/organizations"

    const/16 v3, 0x2a

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 322
    const-string v2, "people/#/organizations/#"

    const/16 v3, 0x2b

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 323
    const-string v2, "people/#/groupmembership"

    const/16 v3, 0x16

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 324
    const-string v2, "people/#/groupmembership/#"

    const/16 v3, 0x17

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 327
    const-string v2, "people/#/update_contact_time"

    invoke-virtual {v0, v1, v2, v6}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 329
    const-string v2, "deleted_people"

    const/16 v3, 0x1e

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 330
    const-string v2, "deleted_groups"

    const/16 v3, 0x1f

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 331
    const-string v2, "phones"

    const/16 v3, 0xc

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 333
    const-string v2, "phones/filter/*"

    const/16 v3, 0x22

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 337
    const-string v2, "phones/#"

    const/16 v3, 0xd

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 338
    const-string v2, "photos"

    const/16 v3, 0x19

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 339
    const-string v2, "photos/#"

    const/16 v3, 0x1a

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 340
    const-string v2, "contact_methods"

    const/16 v3, 0x8

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 341
    const-string v2, "contact_methods/email"

    const/16 v3, 0x27

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 343
    const-string v2, "contact_methods/#"

    const/16 v3, 0x9

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 346
    const-string v2, "organizations"

    const/4 v3, 0x4

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 347
    const-string v2, "organizations/#"

    const/4 v3, 0x5

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 349
    const-string v2, "search_suggest_query"

    invoke-virtual {v0, v1, v2, v7}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 351
    const-string v2, "search_suggest_query/*"

    invoke-virtual {v0, v1, v2, v7}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 353
    const-string v2, "search_suggest_shortcut/*"

    const/16 v3, 0x21

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 355
    const-string v2, "settings"

    const/16 v3, 0x2c

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 357
    const-string v2, "live_folders/people"

    const/16 v3, 0x23

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 358
    const-string v2, "live_folders/people/*"

    const/16 v3, 0x24

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 360
    const-string v2, "live_folders/people_with_phones"

    const/16 v3, 0x25

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 362
    const-string v2, "live_folders/favorites"

    const/16 v3, 0x26

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 366
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 367
    const-string v1, "name"

    const-string v2, "name"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 368
    const-string v1, "display_name"

    const-string v2, "display_name"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 369
    const-string v1, "display_name_alt"

    const-string v2, "display_name_alt"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 370
    const-string v1, "display_name_reverse"

    const-string v2, "display_name_alt AS display_name_reverse"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 372
    const-string v1, "phonetic_name"

    const-string v2, "phonetic_name"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 373
    const-string v1, "notes"

    const-string v2, "notes"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 374
    const-string v1, "times_contacted"

    const-string v2, "times_contacted"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 375
    const-string v1, "last_time_contacted"

    const-string v2, "last_time_contacted"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 376
    const-string v1, "custom_ringtone"

    const-string v2, "custom_ringtone"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 377
    const-string v1, "send_to_voicemail"

    const-string v2, "send_to_voicemail"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 378
    const-string v1, "starred"

    const-string v2, "starred"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 379
    const-string v1, "primary_organization"

    const-string v2, "primary_organization"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 380
    const-string v1, "primary_email"

    const-string v2, "primary_email"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 381
    const-string v1, "primary_phone"

    const-string v2, "primary_phone"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 383
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1, v0}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    sput-object v1, Lcom/android/providers/contacts/LegacyApiSupport;->sPeopleProjectionMap:Ljava/util/HashMap;

    .line 384
    sget-object v1, Lcom/android/providers/contacts/LegacyApiSupport;->sPeopleProjectionMap:Ljava/util/HashMap;

    const-string v2, "_id"

    const-string v3, "_id"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 385
    sget-object v1, Lcom/android/providers/contacts/LegacyApiSupport;->sPeopleProjectionMap:Ljava/util/HashMap;

    const-string v2, "number"

    const-string v3, "number"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 386
    sget-object v1, Lcom/android/providers/contacts/LegacyApiSupport;->sPeopleProjectionMap:Ljava/util/HashMap;

    const-string v2, "type"

    const-string v3, "type"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 387
    sget-object v1, Lcom/android/providers/contacts/LegacyApiSupport;->sPeopleProjectionMap:Ljava/util/HashMap;

    const-string v2, "label"

    const-string v3, "label"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 388
    sget-object v1, Lcom/android/providers/contacts/LegacyApiSupport;->sPeopleProjectionMap:Ljava/util/HashMap;

    const-string v2, "number_key"

    const-string v3, "number_key"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 389
    sget-object v1, Lcom/android/providers/contacts/LegacyApiSupport;->sPeopleProjectionMap:Ljava/util/HashMap;

    const-string v2, "im_protocol"

    const-string v3, "(CASE WHEN protocol=-1 THEN \'custom:\'||custom_protocol ELSE \'pre:\'||protocol END) AS im_protocol"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 390
    sget-object v1, Lcom/android/providers/contacts/LegacyApiSupport;->sPeopleProjectionMap:Ljava/util/HashMap;

    const-string v2, "im_handle"

    const-string v3, "im_handle"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 391
    sget-object v1, Lcom/android/providers/contacts/LegacyApiSupport;->sPeopleProjectionMap:Ljava/util/HashMap;

    const-string v2, "im_account"

    const-string v3, "im_account"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 392
    sget-object v1, Lcom/android/providers/contacts/LegacyApiSupport;->sPeopleProjectionMap:Ljava/util/HashMap;

    const-string v2, "mode"

    const-string v3, "mode"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 393
    sget-object v1, Lcom/android/providers/contacts/LegacyApiSupport;->sPeopleProjectionMap:Ljava/util/HashMap;

    const-string v2, "status"

    const-string v3, "(SELECT status FROM status_updates JOIN data   ON(status_update_data_id=data._id) WHERE data.raw_contact_id=people._id ORDER BY status_ts DESC  LIMIT 1) AS status"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 403
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lcom/android/providers/contacts/LegacyApiSupport;->sOrganizationProjectionMap:Ljava/util/HashMap;

    .line 404
    sget-object v1, Lcom/android/providers/contacts/LegacyApiSupport;->sOrganizationProjectionMap:Ljava/util/HashMap;

    const-string v2, "_id"

    const-string v3, "_id"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 406
    sget-object v1, Lcom/android/providers/contacts/LegacyApiSupport;->sOrganizationProjectionMap:Ljava/util/HashMap;

    const-string v2, "person"

    const-string v3, "person"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 408
    sget-object v1, Lcom/android/providers/contacts/LegacyApiSupport;->sOrganizationProjectionMap:Ljava/util/HashMap;

    const-string v2, "isprimary"

    const-string v3, "isprimary"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 410
    sget-object v1, Lcom/android/providers/contacts/LegacyApiSupport;->sOrganizationProjectionMap:Ljava/util/HashMap;

    const-string v2, "company"

    const-string v3, "company"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 412
    sget-object v1, Lcom/android/providers/contacts/LegacyApiSupport;->sOrganizationProjectionMap:Ljava/util/HashMap;

    const-string v2, "type"

    const-string v3, "type"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 414
    sget-object v1, Lcom/android/providers/contacts/LegacyApiSupport;->sOrganizationProjectionMap:Ljava/util/HashMap;

    const-string v2, "label"

    const-string v3, "label"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 416
    sget-object v1, Lcom/android/providers/contacts/LegacyApiSupport;->sOrganizationProjectionMap:Ljava/util/HashMap;

    const-string v2, "title"

    const-string v3, "title"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 419
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1, v0}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    sput-object v1, Lcom/android/providers/contacts/LegacyApiSupport;->sContactMethodProjectionMap:Ljava/util/HashMap;

    .line 420
    sget-object v1, Lcom/android/providers/contacts/LegacyApiSupport;->sContactMethodProjectionMap:Ljava/util/HashMap;

    const-string v2, "_id"

    const-string v3, "_id"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 421
    sget-object v1, Lcom/android/providers/contacts/LegacyApiSupport;->sContactMethodProjectionMap:Ljava/util/HashMap;

    const-string v2, "person"

    const-string v3, "person"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 422
    sget-object v1, Lcom/android/providers/contacts/LegacyApiSupport;->sContactMethodProjectionMap:Ljava/util/HashMap;

    const-string v2, "kind"

    const-string v3, "kind"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 423
    sget-object v1, Lcom/android/providers/contacts/LegacyApiSupport;->sContactMethodProjectionMap:Ljava/util/HashMap;

    const-string v2, "isprimary"

    const-string v3, "isprimary"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 424
    sget-object v1, Lcom/android/providers/contacts/LegacyApiSupport;->sContactMethodProjectionMap:Ljava/util/HashMap;

    const-string v2, "type"

    const-string v3, "type"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 425
    sget-object v1, Lcom/android/providers/contacts/LegacyApiSupport;->sContactMethodProjectionMap:Ljava/util/HashMap;

    const-string v2, "data"

    const-string v3, "data"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 426
    sget-object v1, Lcom/android/providers/contacts/LegacyApiSupport;->sContactMethodProjectionMap:Ljava/util/HashMap;

    const-string v2, "label"

    const-string v3, "label"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 427
    sget-object v1, Lcom/android/providers/contacts/LegacyApiSupport;->sContactMethodProjectionMap:Ljava/util/HashMap;

    const-string v2, "aux_data"

    const-string v3, "aux_data"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 429
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1, v0}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    sput-object v1, Lcom/android/providers/contacts/LegacyApiSupport;->sPhoneProjectionMap:Ljava/util/HashMap;

    .line 430
    sget-object v0, Lcom/android/providers/contacts/LegacyApiSupport;->sPhoneProjectionMap:Ljava/util/HashMap;

    const-string v1, "_id"

    const-string v2, "_id"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 432
    sget-object v0, Lcom/android/providers/contacts/LegacyApiSupport;->sPhoneProjectionMap:Ljava/util/HashMap;

    const-string v1, "person"

    const-string v2, "person"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 434
    sget-object v0, Lcom/android/providers/contacts/LegacyApiSupport;->sPhoneProjectionMap:Ljava/util/HashMap;

    const-string v1, "isprimary"

    const-string v2, "isprimary"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 436
    sget-object v0, Lcom/android/providers/contacts/LegacyApiSupport;->sPhoneProjectionMap:Ljava/util/HashMap;

    const-string v1, "number"

    const-string v2, "number"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 438
    sget-object v0, Lcom/android/providers/contacts/LegacyApiSupport;->sPhoneProjectionMap:Ljava/util/HashMap;

    const-string v1, "type"

    const-string v2, "type"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 440
    sget-object v0, Lcom/android/providers/contacts/LegacyApiSupport;->sPhoneProjectionMap:Ljava/util/HashMap;

    const-string v1, "label"

    const-string v2, "label"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 442
    sget-object v0, Lcom/android/providers/contacts/LegacyApiSupport;->sPhoneProjectionMap:Ljava/util/HashMap;

    const-string v1, "number_key"

    const-string v2, "number_key"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 445
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/providers/contacts/LegacyApiSupport;->sExtensionProjectionMap:Ljava/util/HashMap;

    .line 446
    sget-object v0, Lcom/android/providers/contacts/LegacyApiSupport;->sExtensionProjectionMap:Ljava/util/HashMap;

    const-string v1, "_id"

    const-string v2, "_id"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 448
    sget-object v0, Lcom/android/providers/contacts/LegacyApiSupport;->sExtensionProjectionMap:Ljava/util/HashMap;

    const-string v1, "person"

    const-string v2, "person"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 450
    sget-object v0, Lcom/android/providers/contacts/LegacyApiSupport;->sExtensionProjectionMap:Ljava/util/HashMap;

    const-string v1, "name"

    const-string v2, "name"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 452
    sget-object v0, Lcom/android/providers/contacts/LegacyApiSupport;->sExtensionProjectionMap:Ljava/util/HashMap;

    const-string v1, "value"

    const-string v2, "value"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 455
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/providers/contacts/LegacyApiSupport;->sGroupProjectionMap:Ljava/util/HashMap;

    .line 456
    sget-object v0, Lcom/android/providers/contacts/LegacyApiSupport;->sGroupProjectionMap:Ljava/util/HashMap;

    const-string v1, "_id"

    const-string v2, "_id"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 458
    sget-object v0, Lcom/android/providers/contacts/LegacyApiSupport;->sGroupProjectionMap:Ljava/util/HashMap;

    const-string v1, "name"

    const-string v2, "name"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 460
    sget-object v0, Lcom/android/providers/contacts/LegacyApiSupport;->sGroupProjectionMap:Ljava/util/HashMap;

    const-string v1, "notes"

    const-string v2, "notes"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 462
    sget-object v0, Lcom/android/providers/contacts/LegacyApiSupport;->sGroupProjectionMap:Ljava/util/HashMap;

    const-string v1, "system_id"

    const-string v2, "system_id"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 465
    new-instance v0, Ljava/util/HashMap;

    sget-object v1, Lcom/android/providers/contacts/LegacyApiSupport;->sGroupProjectionMap:Ljava/util/HashMap;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    sput-object v0, Lcom/android/providers/contacts/LegacyApiSupport;->sGroupMembershipProjectionMap:Ljava/util/HashMap;

    .line 466
    sget-object v0, Lcom/android/providers/contacts/LegacyApiSupport;->sGroupMembershipProjectionMap:Ljava/util/HashMap;

    const-string v1, "_id"

    const-string v2, "_id"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 468
    sget-object v0, Lcom/android/providers/contacts/LegacyApiSupport;->sGroupMembershipProjectionMap:Ljava/util/HashMap;

    const-string v1, "person"

    const-string v2, "person"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 470
    sget-object v0, Lcom/android/providers/contacts/LegacyApiSupport;->sGroupMembershipProjectionMap:Ljava/util/HashMap;

    const-string v1, "group_id"

    const-string v2, "group_id"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 472
    sget-object v0, Lcom/android/providers/contacts/LegacyApiSupport;->sGroupMembershipProjectionMap:Ljava/util/HashMap;

    const-string v1, "group_sync_id"

    const-string v2, "group_sync_id"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 475
    sget-object v0, Lcom/android/providers/contacts/LegacyApiSupport;->sGroupMembershipProjectionMap:Ljava/util/HashMap;

    const-string v1, "group_sync_account"

    const-string v2, "group_sync_account"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 478
    sget-object v0, Lcom/android/providers/contacts/LegacyApiSupport;->sGroupMembershipProjectionMap:Ljava/util/HashMap;

    const-string v1, "group_sync_account_type"

    const-string v2, "group_sync_account_type"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 482
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/providers/contacts/LegacyApiSupport;->sPhotoProjectionMap:Ljava/util/HashMap;

    .line 483
    sget-object v0, Lcom/android/providers/contacts/LegacyApiSupport;->sPhotoProjectionMap:Ljava/util/HashMap;

    const-string v1, "_id"

    const-string v2, "_id"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 485
    sget-object v0, Lcom/android/providers/contacts/LegacyApiSupport;->sPhotoProjectionMap:Ljava/util/HashMap;

    const-string v1, "person"

    const-string v2, "person"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 487
    sget-object v0, Lcom/android/providers/contacts/LegacyApiSupport;->sPhotoProjectionMap:Ljava/util/HashMap;

    const-string v1, "data"

    const-string v2, "data"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 489
    sget-object v0, Lcom/android/providers/contacts/LegacyApiSupport;->sPhotoProjectionMap:Ljava/util/HashMap;

    const-string v1, "local_version"

    const-string v2, "local_version"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 491
    sget-object v0, Lcom/android/providers/contacts/LegacyApiSupport;->sPhotoProjectionMap:Ljava/util/HashMap;

    const-string v1, "download_required"

    const-string v2, "download_required"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 493
    sget-object v0, Lcom/android/providers/contacts/LegacyApiSupport;->sPhotoProjectionMap:Ljava/util/HashMap;

    const-string v1, "exists_on_server"

    const-string v2, "exists_on_server"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 495
    sget-object v0, Lcom/android/providers/contacts/LegacyApiSupport;->sPhotoProjectionMap:Ljava/util/HashMap;

    const-string v1, "sync_error"

    const-string v2, "sync_error"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 497
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/providers/contacts/ContactsDatabaseHelper;Lcom/android/providers/contacts/ContactsProvider2;Lcom/android/providers/contacts/GlobalSearchSupport;)V
    .registers 12
    .parameter "context"
    .parameter "contactsDatabaseHelper"
    .parameter "contactsProvider"
    .parameter "globalSearchSupport"

    .prologue
    .line 520
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 203
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mSelectionArgs1:[Ljava/lang/String;

    .line 204
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mSelectionArgs2:[Ljava/lang/String;

    .line 508
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    iput-object v0, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues:Landroid/content/ContentValues;

    .line 509
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    iput-object v0, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues2:Landroid/content/ContentValues;

    .line 510
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    iput-object v0, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues3:Landroid/content/ContentValues;

    .line 521
    iput-object p1, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mContext:Landroid/content/Context;

    .line 522
    iput-object p3, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mContactsProvider:Lcom/android/providers/contacts/ContactsProvider2;

    .line 523
    iput-object p2, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    .line 524
    iput-object p4, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mGlobalSearchSupport:Lcom/android/providers/contacts/GlobalSearchSupport;

    .line 526
    new-instance v0, Lcom/android/providers/contacts/NameSplitter;

    const-string v1, ""

    const-string v2, ""

    const-string v3, ""

    const v4, 0x10400b7

    invoke-virtual {p1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/android/providers/contacts/NameSplitter;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Locale;)V

    iput-object v0, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mPhoneticNameSplitter:Lcom/android/providers/contacts/NameSplitter;

    .line 530
    iget-object v0, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    invoke-virtual {v0}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v6

    .line 531
    .local v6, db:Landroid/database/sqlite/SQLiteDatabase;
    const-string v0, "SELECT mimetype_id FROM data WHERE _id=?"

    invoke-virtual {v6, v0}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    iput-object v0, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mDataMimetypeQuery:Landroid/database/sqlite/SQLiteStatement;

    .line 536
    const-string v0, "SELECT raw_contact_id FROM data WHERE _id=?"

    invoke-virtual {v6, v0}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    iput-object v0, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mDataRawContactIdQuery:Landroid/database/sqlite/SQLiteStatement;

    .line 541
    iget-object v0, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    const-string v1, "vnd.android.cursor.item/email_v2"

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getMimeTypeId(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mMimetypeEmail:J

    .line 542
    iget-object v0, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    const-string v1, "vnd.android.cursor.item/im"

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getMimeTypeId(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mMimetypeIm:J

    .line 543
    iget-object v0, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    const-string v1, "vnd.android.cursor.item/postal-address_v2"

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getMimeTypeId(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mMimetypePostal:J

    .line 544
    return-void
.end method

.method private appendGroupAccount(Ljava/lang/StringBuilder;)V
    .registers 3
    .parameter

    .prologue
    .line 1959
    iget-object v0, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mAccount:Landroid/accounts/Account;

    if-eqz v0, :cond_1d

    .line 1960
    const-string v0, "account_name="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1961
    iget-object v0, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mAccount:Landroid/accounts/Account;

    iget-object v0, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-static {p1, v0}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 1962
    const-string v0, " AND account_type="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1963
    iget-object v0, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mAccount:Landroid/accounts/Account;

    iget-object v0, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-static {p1, v0}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 1971
    :goto_1c
    return-void

    .line 1967
    :cond_1d
    const-string v0, "account_name = \'vnd.sec.contact.phone\' AND account_type = \'vnd.sec.contact.phone\'"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1c
.end method

.method private appendRawContactsAccount(Ljava/lang/StringBuilder;)V
    .registers 3
    .parameter

    .prologue
    .line 1938
    iget-object v0, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mAccount:Landroid/accounts/Account;

    if-eqz v0, :cond_1d

    .line 1939
    const-string v0, "account_name="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1940
    iget-object v0, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mAccount:Landroid/accounts/Account;

    iget-object v0, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-static {p1, v0}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 1941
    const-string v0, " AND account_type="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1942
    iget-object v0, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mAccount:Landroid/accounts/Account;

    iget-object v0, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-static {p1, v0}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 1950
    :goto_1c
    return-void

    .line 1947
    :cond_1d
    const-string v0, "account_name = \'vnd.sec.contact.phone\' AND account_type = \'vnd.sec.contact.phone\'"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1c
.end method

.method private applyGroupAccount(Landroid/database/sqlite/SQLiteQueryBuilder;)V
    .registers 4
    .parameter "qb"

    .prologue
    .line 1953
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1954
    .local v0, sb:Ljava/lang/StringBuilder;
    invoke-direct {p0, v0}, Lcom/android/providers/contacts/LegacyApiSupport;->appendGroupAccount(Ljava/lang/StringBuilder;)V

    .line 1955
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 1956
    return-void
.end method

.method private applyRawContactsAccount(Landroid/database/sqlite/SQLiteQueryBuilder;)V
    .registers 4
    .parameter "qb"

    .prologue
    .line 1932
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1933
    .local v0, sb:Ljava/lang/StringBuilder;
    invoke-direct {p0, v0}, Lcom/android/providers/contacts/LegacyApiSupport;->appendRawContactsAccount(Ljava/lang/StringBuilder;)V

    .line 1934
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 1935
    return-void
.end method

.method private buildGroupNameMatchWhereClause(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .parameter

    .prologue
    .line 1982
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "people._id IN (SELECT data.raw_contact_id FROM data JOIN mimetypes ON (data.mimetype_id = mimetypes._id) WHERE mimetype=\'vnd.android.cursor.item/group_membership\' AND data1=(SELECT groups._id FROM groups WHERE title="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Landroid/database/DatabaseUtils;->sqlEscapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "))"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private buildGroupSystemIdMatchWhereClause(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .parameter

    .prologue
    .line 2002
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "people._id IN (SELECT data.raw_contact_id FROM data JOIN mimetypes ON (data.mimetype_id = mimetypes._id) WHERE mimetype=\'vnd.android.cursor.item/group_membership\' AND data1=(SELECT groups._id FROM groups WHERE system_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Landroid/database/DatabaseUtils;->sqlEscapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "))"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private copyCommonFields(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 8
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1477
    iget-object v0, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues:Landroid/content/ContentValues;

    const-string v1, "mimetype"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1478
    iget-object v0, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues:Landroid/content/ContentValues;

    const-string v1, "type"

    invoke-static {v0, p3, p1, v1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->copyLongValue(Landroid/content/ContentValues;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 1480
    iget-object v0, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues:Landroid/content/ContentValues;

    const-string v1, "label"

    invoke-static {v0, p4, p1, v1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->copyStringValue(Landroid/content/ContentValues;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 1482
    iget-object v0, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues:Landroid/content/ContentValues;

    const-string v1, "aux_data"

    invoke-static {v0, p5, p1, v1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->copyStringValue(Landroid/content/ContentValues;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 1484
    return-void
.end method

.method public static createDatabase(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 3
    .parameter "db"

    .prologue
    .line 554
    const-string v0, "ContactsProviderV1"

    const-string v1, "Bootstrapping database legacy support"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 555
    invoke-static {p0}, Lcom/android/providers/contacts/LegacyApiSupport;->createViews(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 556
    invoke-static {p0}, Lcom/android/providers/contacts/LegacyApiSupport;->createSettingsTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 557
    return-void
.end method

.method public static createSettingsTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 2
    .parameter "db"

    .prologue
    .line 771
    const-string v0, "DROP TABLE IF EXISTS v1_settings;"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 772
    const-string v0, "CREATE TABLE v1_settings (_id INTEGER PRIMARY KEY,_sync_account TEXT,_sync_account_type TEXT,key STRING NOT NULL,value STRING );"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 779
    return-void
.end method

.method public static createViews(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 4
    .parameter "db"

    .prologue
    .line 561
    const-string v0, "name.data1 AS name, raw_contacts.display_name AS display_name, raw_contacts.display_name_alt AS display_name_alt, trim(trim(ifnull(name.data7,\' \')||\' \'||ifnull(name.data8,\' \'))||\' \'||ifnull(name.data9,\' \'))  AS phonetic_name , note.data1 AS notes, account_name, account_type, raw_contacts.times_contacted AS times_contacted, raw_contacts.last_time_contacted AS last_time_contacted, raw_contacts.custom_ringtone AS custom_ringtone, raw_contacts.send_to_voicemail AS send_to_voicemail, raw_contacts.starred AS starred, organization._id AS primary_organization, email._id AS primary_email, phone._id AS primary_phone, phone.data1 AS number, phone.data2 AS type, phone.data3 AS label, _PHONE_NUMBER_STRIPPED_REVERSED(phone.data1) AS number_key"

    .line 598
    .local v0, peopleColumns:Ljava/lang/String;
    const-string v1, "DROP VIEW IF EXISTS view_v1_people;"

    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 599
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CREATE VIEW view_v1_people AS SELECT raw_contacts._id AS _id, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " FROM "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "raw_contacts"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " LEFT OUTER JOIN data name ON (raw_contacts._id = name.raw_contact_id AND (SELECT mimetype FROM mimetypes WHERE mimetypes._id = name.mimetype_id)=\'vnd.android.cursor.item/name\') LEFT OUTER JOIN data organization ON (raw_contacts._id = organization.raw_contact_id AND (SELECT mimetype FROM mimetypes WHERE mimetypes._id = organization.mimetype_id)=\'vnd.android.cursor.item/organization\' AND organization.is_primary) LEFT OUTER JOIN data email ON (raw_contacts._id = email.raw_contact_id AND (SELECT mimetype FROM mimetypes WHERE mimetypes._id = email.mimetype_id)=\'vnd.android.cursor.item/email_v2\' AND email.is_primary) LEFT OUTER JOIN data note ON (raw_contacts._id = note.raw_contact_id AND (SELECT mimetype FROM mimetypes WHERE mimetypes._id = note.mimetype_id)=\'vnd.android.cursor.item/note\') LEFT OUTER JOIN data phone ON (raw_contacts._id = phone.raw_contact_id AND (SELECT mimetype FROM mimetypes WHERE mimetypes._id = phone.mimetype_id)=\'vnd.android.cursor.item/phone_v2\' AND phone.is_primary)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " WHERE "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "raw_contacts"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "deleted"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "=0;"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 606
    const-string v1, "DROP VIEW IF EXISTS view_v1_organizations;"

    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 607
    const-string v1, "CREATE VIEW view_v1_organizations AS SELECT data._id AS _id, raw_contact_id AS person, is_primary AS isprimary, account_name, account_type, data1 AS company, data2 AS type, data3 AS label, data4 AS title FROM data JOIN mimetypes ON (data.mimetype_id = mimetypes._id) JOIN raw_contacts ON (data.raw_contact_id = raw_contacts._id) WHERE mimetypes.mimetype=\'vnd.android.cursor.item/organization\' AND raw_contacts.deleted=0;"

    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 630
    const-string v1, "DROP VIEW IF EXISTS view_v1_contact_methods;"

    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 631
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CREATE VIEW view_v1_contact_methods AS SELECT data._id AS _id, data.raw_contact_id AS person, CAST ((CASE WHEN mimetype=\'vnd.android.cursor.item/email_v2\' THEN 1 ELSE (CASE WHEN mimetype=\'vnd.android.cursor.item/im\' THEN 3 ELSE (CASE WHEN mimetype=\'vnd.android.cursor.item/postal-address_v2\' THEN 2 ELSE NULL END) END) END) AS INTEGER) AS kind, data.is_primary AS isprimary, data.data2 AS type, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/providers/contacts/LegacyApiSupport;->CONTACT_METHOD_DATA_SQL:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " AS "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "data"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "data"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "data3"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " AS "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "label"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "data.data14"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " AS "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "aux_data"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " FROM "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "data"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " JOIN mimetypes ON (mimetypes._id = data.mimetype_id) JOIN raw_contacts ON (raw_contacts._id = data.raw_contact_id) LEFT OUTER JOIN data name ON (raw_contacts._id = name.raw_contact_id AND (SELECT mimetype FROM mimetypes WHERE mimetypes._id = name.mimetype_id)=\'vnd.android.cursor.item/name\') LEFT OUTER JOIN data organization ON (raw_contacts._id = organization.raw_contact_id AND (SELECT mimetype FROM mimetypes WHERE mimetypes._id = organization.mimetype_id)=\'vnd.android.cursor.item/organization\' AND organization.is_primary) LEFT OUTER JOIN data email ON (raw_contacts._id = email.raw_contact_id AND (SELECT mimetype FROM mimetypes WHERE mimetypes._id = email.mimetype_id)=\'vnd.android.cursor.item/email_v2\' AND email.is_primary) LEFT OUTER JOIN data note ON (raw_contacts._id = note.raw_contact_id AND (SELECT mimetype FROM mimetypes WHERE mimetypes._id = note.mimetype_id)=\'vnd.android.cursor.item/note\') LEFT OUTER JOIN data phone ON (raw_contacts._id = phone.raw_contact_id AND (SELECT mimetype FROM mimetypes WHERE mimetypes._id = phone.mimetype_id)=\'vnd.android.cursor.item/phone_v2\' AND phone.is_primary)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " WHERE "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "kind"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " IS NOT NULL"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " AND "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "raw_contacts"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "deleted"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "=0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 655
    const-string v1, "DROP VIEW IF EXISTS view_v1_phones;"

    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 656
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CREATE VIEW view_v1_phones AS SELECT DISTINCT data._id AS _id, data.raw_contact_id AS person, data.is_primary AS isprimary, data.data1 AS number, data.data2 AS type, data.data3 AS label, _PHONE_NUMBER_STRIPPED_REVERSED(data.data1) AS number_key, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " FROM "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "data"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " JOIN "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "phone_lookup"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ON ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "data"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "._id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "phone_lookup"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "data_id"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " JOIN mimetypes ON (mimetypes._id = data.mimetype_id) JOIN raw_contacts ON (raw_contacts._id = data.raw_contact_id) LEFT OUTER JOIN data name ON (raw_contacts._id = name.raw_contact_id AND (SELECT mimetype FROM mimetypes WHERE mimetypes._id = name.mimetype_id)=\'vnd.android.cursor.item/name\') LEFT OUTER JOIN data organization ON (raw_contacts._id = organization.raw_contact_id AND (SELECT mimetype FROM mimetypes WHERE mimetypes._id = organization.mimetype_id)=\'vnd.android.cursor.item/organization\' AND organization.is_primary) LEFT OUTER JOIN data email ON (raw_contacts._id = email.raw_contact_id AND (SELECT mimetype FROM mimetypes WHERE mimetypes._id = email.mimetype_id)=\'vnd.android.cursor.item/email_v2\' AND email.is_primary) LEFT OUTER JOIN data note ON (raw_contacts._id = note.raw_contact_id AND (SELECT mimetype FROM mimetypes WHERE mimetypes._id = note.mimetype_id)=\'vnd.android.cursor.item/note\') LEFT OUTER JOIN data phone ON (raw_contacts._id = phone.raw_contact_id AND (SELECT mimetype FROM mimetypes WHERE mimetypes._id = phone.mimetype_id)=\'vnd.android.cursor.item/phone_v2\' AND phone.is_primary)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " WHERE "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "mimetypes.mimetype"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "=\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " AND "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "raw_contacts"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "deleted"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "=0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 682
    const-string v1, "DROP VIEW IF EXISTS view_v1_extensions;"

    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 683
    const-string v1, "CREATE VIEW view_v1_extensions AS SELECT data._id AS _id, data.raw_contact_id AS person, account_name, account_type, data1 AS name, data2 AS value FROM data JOIN mimetypes ON (data.mimetype_id = mimetypes._id) JOIN raw_contacts ON (data.raw_contact_id = raw_contacts._id) WHERE mimetypes.mimetype=\'vnd.android.cursor.item/contact_extensions\' AND raw_contacts.deleted=0;"

    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 700
    const-string v1, "DROP VIEW IF EXISTS view_v1_groups;"

    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 701
    const-string v1, "CREATE VIEW view_v1_groups AS SELECT groups._id AS _id, account_name, account_type, title AS name, notes AS notes , system_id AS system_id FROM groups;"

    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 711
    const-string v1, "DROP VIEW IF EXISTS view_v1_group_membership;"

    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 712
    const-string v1, "CREATE VIEW view_v1_group_membership AS SELECT data._id AS _id, data.raw_contact_id AS person, raw_contacts.account_name AS account_name, raw_contacts.account_type AS account_type, data1 AS group_id, title AS name, notes AS notes, system_id AS system_id, groups.sourceid AS group_sync_id, groups.account_name AS group_sync_account, groups.account_type AS group_sync_account_type FROM data JOIN mimetypes ON (data.mimetype_id = mimetypes._id) JOIN raw_contacts ON (data.raw_contact_id = raw_contacts._id) LEFT OUTER JOIN packages ON (data.package_id = packages._id) LEFT OUTER JOIN groups   ON (mimetypes.mimetype=\'vnd.android.cursor.item/group_membership\'       AND groups._id = data.data1)  WHERE mimetypes.mimetype=\'vnd.android.cursor.item/group_membership\' AND raw_contacts.deleted=0;"

    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 744
    const-string v1, "DROP VIEW IF EXISTS view_v1_photos;"

    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 745
    const-string v1, "CREATE VIEW view_v1_photos AS SELECT data._id AS _id, data.raw_contact_id AS person, account_name, account_type, data.data15 AS data, legacy_photo.data4 AS exists_on_server, legacy_photo.data3 AS download_required, legacy_photo.data2 AS local_version, legacy_photo.data5 AS sync_error FROM data JOIN mimetypes ON (mimetypes._id = data.mimetype_id) JOIN raw_contacts ON (raw_contacts._id = data.raw_contact_id) LEFT OUTER JOIN data name ON (raw_contacts._id = name.raw_contact_id AND (SELECT mimetype FROM mimetypes WHERE mimetypes._id = name.mimetype_id)=\'vnd.android.cursor.item/name\') LEFT OUTER JOIN data organization ON (raw_contacts._id = organization.raw_contact_id AND (SELECT mimetype FROM mimetypes WHERE mimetypes._id = organization.mimetype_id)=\'vnd.android.cursor.item/organization\' AND organization.is_primary) LEFT OUTER JOIN data email ON (raw_contacts._id = email.raw_contact_id AND (SELECT mimetype FROM mimetypes WHERE mimetypes._id = email.mimetype_id)=\'vnd.android.cursor.item/email_v2\' AND email.is_primary) LEFT OUTER JOIN data note ON (raw_contacts._id = note.raw_contact_id AND (SELECT mimetype FROM mimetypes WHERE mimetypes._id = note.mimetype_id)=\'vnd.android.cursor.item/note\') LEFT OUTER JOIN data phone ON (raw_contacts._id = phone.raw_contact_id AND (SELECT mimetype FROM mimetypes WHERE mimetypes._id = phone.mimetype_id)=\'vnd.android.cursor.item/phone_v2\' AND phone.is_primary) LEFT OUTER JOIN data legacy_photo ON (raw_contacts._id = legacy_photo.raw_contact_id AND (SELECT mimetype FROM mimetypes WHERE mimetypes._id = legacy_photo.mimetype_id)=\'vnd.android.cursor.item/photo_v1_extras\' AND data._id = legacy_photo.data1) WHERE mimetypes.mimetype=\'vnd.android.cursor.item/photo\' AND raw_contacts.deleted=0;"

    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 768
    return-void
.end method

.method private ensureDefaultAccount()V
    .registers 2

    .prologue
    .line 547
    iget-boolean v0, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mDefaultAccountKnown:Z

    if-nez v0, :cond_f

    .line 548
    iget-object v0, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mContactsProvider:Lcom/android/providers/contacts/ContactsProvider2;

    invoke-virtual {v0}, Lcom/android/providers/contacts/ContactsProvider2;->getDefaultAccount()Landroid/accounts/Account;

    move-result-object v0

    iput-object v0, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mAccount:Landroid/accounts/Account;

    .line 549
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mDefaultAccountKnown:Z

    .line 551
    :cond_f
    return-void
.end method

.method private findFirstDataId(JLjava/lang/String;)J
    .registers 12
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 1514
    const-wide/16 v6, -0x1

    .line 1515
    iget-object v0, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mContactsProvider:Lcom/android/providers/contacts/ContactsProvider2;

    sget-object v1, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/providers/contacts/LegacyApiSupport$IdQuery;->COLUMNS:[Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "raw_contact_id="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " AND "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "mimetype"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "=\'"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "\'"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Lcom/android/providers/contacts/ContactsProvider2;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 1520
    :try_start_3d
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_51

    .line 1521
    const/4 v0, 0x0

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getLong(I)J
    :try_end_47
    .catchall {:try_start_3d .. :try_end_47} :catchall_4c

    move-result-wide v0

    .line 1524
    :goto_48
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 1526
    return-wide v0

    .line 1524
    :catchall_4c
    move-exception v0

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_51
    move-wide v0, v6

    goto :goto_48
.end method

.method private findFirstDataRow(JLjava/lang/String;)Landroid/net/Uri;
    .registers 8
    .parameter "rawContactId"
    .parameter "contentItemType"

    .prologue
    .line 1505
    invoke-direct {p0, p1, p2, p3}, Lcom/android/providers/contacts/LegacyApiSupport;->findFirstDataId(JLjava/lang/String;)J

    move-result-wide v0

    .line 1506
    .local v0, dataId:J
    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-nez v2, :cond_c

    .line 1507
    const/4 v2, 0x0

    .line 1510
    :goto_b
    return-object v2

    :cond_c
    sget-object v2, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    goto :goto_b
.end method

.method private getContactMethodType(Landroid/net/Uri;)Ljava/lang/String;
    .registers 9
    .parameter

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 2099
    .line 2101
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "kind"

    aput-object v0, v2, v1

    move-object v0, p0

    move-object v1, p1

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    invoke-virtual/range {v0 .. v6}, Lcom/android/providers/contacts/LegacyApiSupport;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 2102
    if-eqz v1, :cond_25

    .line 2104
    :try_start_14
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_22

    .line 2105
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_1e
    .catchall {:try_start_14 .. :try_end_1e} :catchall_2f

    move-result v0

    .line 2106
    packed-switch v0, :pswitch_data_34

    .line 2121
    :cond_22
    :goto_22
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 2124
    :cond_25
    return-object v3

    .line 2108
    :pswitch_26
    :try_start_26
    const-string v3, "vnd.android.cursor.item/email"

    goto :goto_22

    .line 2112
    :pswitch_29
    const-string v3, "vnd.android.cursor.item/jabber-im"

    goto :goto_22

    .line 2116
    :pswitch_2c
    const-string v3, "vnd.android.cursor.item/postal-address"
    :try_end_2e
    .catchall {:try_start_26 .. :try_end_2e} :catchall_2f

    goto :goto_22

    .line 2121
    :catchall_2f
    move-exception v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0

    .line 2106
    :pswitch_data_34
    .packed-switch 0x1
        :pswitch_26
        :pswitch_2c
        :pswitch_29
    .end packed-switch
.end method

.method private getRawContactsByFilterAsNestedQuery(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .parameter

    .prologue
    .line 2014
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2015
    invoke-static {p1}, Lcom/android/providers/contacts/NameNormalizer;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2016
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_19

    .line 2018
    const-string v1, "(0)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2036
    :goto_14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 2020
    :cond_19
    const-string v2, "(SELECT raw_contact_id FROM name_lookup WHERE normalized_name GLOB \'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2027
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2028
    const-string v1, "*\' AND name_type IN (2,3"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2032
    const-string v1, ",4"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2034
    const-string v1, "))"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_14
.end method

.method private getRequiredValue(Landroid/content/ContentValues;Ljava/lang/String;)J
    .registers 6
    .parameter "values"
    .parameter "column"

    .prologue
    .line 853
    invoke-virtual {p1, p2}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1f

    .line 854
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Required value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 857
    :cond_1f
    invoke-virtual {p1, p2}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method private insertContactMethod(JLandroid/content/ContentValues;)J
    .registers 9
    .parameter "rawContactId"
    .parameter "values"

    .prologue
    .line 898
    const-string v2, "kind"

    invoke-virtual {p3, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 899
    .local v0, kind:Ljava/lang/Integer;
    if-nez v0, :cond_10

    .line 900
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Required value: kind"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 903
    :cond_10
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {p0, v2, p3}, Lcom/android/providers/contacts/LegacyApiSupport;->parseContactMethodValues(ILandroid/content/ContentValues;)V

    .line 905
    iget-object v2, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues:Landroid/content/ContentValues;

    const-string v3, "raw_contact_id"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 906
    iget-object v2, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mContactsProvider:Lcom/android/providers/contacts/ContactsProvider2;

    sget-object v3, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    iget-object v4, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues:Landroid/content/ContentValues;

    invoke-virtual {v2, v3, v4}, Lcom/android/providers/contacts/ContactsProvider2;->insertInTransaction(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v1

    .line 907
    .local v1, uri:Landroid/net/Uri;
    invoke-static {v1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v2

    return-wide v2
.end method

.method private insertExtension(JLandroid/content/ContentValues;)J
    .registers 8
    .parameter "rawContactId"
    .parameter "values"

    .prologue
    .line 911
    iget-object v1, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues:Landroid/content/ContentValues;

    invoke-virtual {v1}, Landroid/content/ContentValues;->clear()V

    .line 913
    iget-object v1, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues:Landroid/content/ContentValues;

    const-string v2, "raw_contact_id"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 914
    iget-object v1, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues:Landroid/content/ContentValues;

    const-string v2, "mimetype"

    const-string v3, "vnd.android.cursor.item/contact_extensions"

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 916
    invoke-direct {p0, p3}, Lcom/android/providers/contacts/LegacyApiSupport;->parseExtensionValues(Landroid/content/ContentValues;)V

    .line 918
    iget-object v1, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mContactsProvider:Lcom/android/providers/contacts/ContactsProvider2;

    sget-object v2, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    iget-object v3, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues:Landroid/content/ContentValues;

    invoke-virtual {v1, v2, v3}, Lcom/android/providers/contacts/ContactsProvider2;->insertInTransaction(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    .line 919
    .local v0, uri:Landroid/net/Uri;
    invoke-static {v0}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v1

    return-wide v1
.end method

.method private insertGroup(Landroid/content/ContentValues;)J
    .registers 6
    .parameter "values"

    .prologue
    .line 923
    invoke-direct {p0, p1}, Lcom/android/providers/contacts/LegacyApiSupport;->parseGroupValues(Landroid/content/ContentValues;)V

    .line 925
    iget-object v1, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mAccount:Landroid/accounts/Account;

    if-eqz v1, :cond_1d

    .line 926
    iget-object v1, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues:Landroid/content/ContentValues;

    const-string v2, "account_name"

    iget-object v3, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mAccount:Landroid/accounts/Account;

    iget-object v3, v3, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 927
    iget-object v1, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues:Landroid/content/ContentValues;

    const-string v2, "account_type"

    iget-object v3, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mAccount:Landroid/accounts/Account;

    iget-object v3, v3, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 930
    :cond_1d
    iget-object v1, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mContactsProvider:Lcom/android/providers/contacts/ContactsProvider2;

    sget-object v2, Landroid/provider/ContactsContract$Groups;->CONTENT_URI:Landroid/net/Uri;

    iget-object v3, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues:Landroid/content/ContentValues;

    invoke-virtual {v1, v2, v3}, Lcom/android/providers/contacts/ContactsProvider2;->insertInTransaction(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    .line 931
    .local v0, uri:Landroid/net/Uri;
    invoke-static {v0}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v1

    return-wide v1
.end method

.method private insertGroupMembership(JJ)J
    .registers 9
    .parameter "rawContactId"
    .parameter "groupId"

    .prologue
    .line 935
    iget-object v1, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues:Landroid/content/ContentValues;

    invoke-virtual {v1}, Landroid/content/ContentValues;->clear()V

    .line 937
    iget-object v1, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues:Landroid/content/ContentValues;

    const-string v2, "mimetype"

    const-string v3, "vnd.android.cursor.item/group_membership"

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 938
    iget-object v1, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues:Landroid/content/ContentValues;

    const-string v2, "raw_contact_id"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 939
    iget-object v1, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues:Landroid/content/ContentValues;

    const-string v2, "data1"

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 941
    iget-object v1, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mContactsProvider:Lcom/android/providers/contacts/ContactsProvider2;

    sget-object v2, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    iget-object v3, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues:Landroid/content/ContentValues;

    invoke-virtual {v1, v2, v3}, Lcom/android/providers/contacts/ContactsProvider2;->insertInTransaction(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    .line 942
    .local v0, uri:Landroid/net/Uri;
    invoke-static {v0}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v1

    return-wide v1
.end method

.method private insertOrganization(Landroid/content/ContentValues;)J
    .registers 6
    .parameter "values"

    .prologue
    .line 879
    invoke-direct {p0, p1}, Lcom/android/providers/contacts/LegacyApiSupport;->parseOrganizationValues(Landroid/content/ContentValues;)V

    .line 880
    iget-object v1, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues:Landroid/content/ContentValues;

    const-string v2, "raw_contact_id"

    const-string v3, "person"

    invoke-static {v1, v2, p1, v3}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->copyLongValue(Landroid/content/ContentValues;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 883
    iget-object v1, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mContactsProvider:Lcom/android/providers/contacts/ContactsProvider2;

    sget-object v2, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    iget-object v3, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues:Landroid/content/ContentValues;

    invoke-virtual {v1, v2, v3}, Lcom/android/providers/contacts/ContactsProvider2;->insertInTransaction(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    .line 885
    .local v0, uri:Landroid/net/Uri;
    invoke-static {v0}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v1

    return-wide v1
.end method

.method private insertPeople(Landroid/content/ContentValues;)J
    .registers 8
    .parameter "values"

    .prologue
    .line 861
    invoke-direct {p0, p1}, Lcom/android/providers/contacts/LegacyApiSupport;->parsePeopleValues(Landroid/content/ContentValues;)V

    .line 863
    iget-object v3, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mContactsProvider:Lcom/android/providers/contacts/ContactsProvider2;

    sget-object v4, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    iget-object v5, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues:Landroid/content/ContentValues;

    invoke-virtual {v3, v4, v5}, Lcom/android/providers/contacts/ContactsProvider2;->insertInTransaction(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    .line 864
    .local v0, contactUri:Landroid/net/Uri;
    invoke-static {v0}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v1

    .line 866
    .local v1, rawContactId:J
    iget-object v3, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues2:Landroid/content/ContentValues;

    invoke-virtual {v3}, Landroid/content/ContentValues;->size()I

    move-result v3

    if-eqz v3, :cond_2d

    .line 867
    iget-object v3, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues2:Landroid/content/ContentValues;

    const-string v4, "raw_contact_id"

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 868
    iget-object v3, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mContactsProvider:Lcom/android/providers/contacts/ContactsProvider2;

    sget-object v4, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    iget-object v5, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues2:Landroid/content/ContentValues;

    invoke-virtual {v3, v4, v5}, Lcom/android/providers/contacts/ContactsProvider2;->insertInTransaction(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 870
    :cond_2d
    iget-object v3, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues3:Landroid/content/ContentValues;

    invoke-virtual {v3}, Landroid/content/ContentValues;->size()I

    move-result v3

    if-eqz v3, :cond_49

    .line 871
    iget-object v3, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues3:Landroid/content/ContentValues;

    const-string v4, "raw_contact_id"

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 872
    iget-object v3, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mContactsProvider:Lcom/android/providers/contacts/ContactsProvider2;

    sget-object v4, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    iget-object v5, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues3:Landroid/content/ContentValues;

    invoke-virtual {v3, v4, v5}, Lcom/android/providers/contacts/ContactsProvider2;->insertInTransaction(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 875
    :cond_49
    return-wide v1
.end method

.method private insertPhone(JLandroid/content/ContentValues;)J
    .registers 8
    .parameter "rawContactId"
    .parameter "values"

    .prologue
    .line 889
    invoke-direct {p0, p3}, Lcom/android/providers/contacts/LegacyApiSupport;->parsePhoneValues(Landroid/content/ContentValues;)V

    .line 890
    iget-object v1, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues:Landroid/content/ContentValues;

    const-string v2, "raw_contact_id"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 892
    iget-object v1, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mContactsProvider:Lcom/android/providers/contacts/ContactsProvider2;

    sget-object v2, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    iget-object v3, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues:Landroid/content/ContentValues;

    invoke-virtual {v1, v2, v3}, Lcom/android/providers/contacts/ContactsProvider2;->insertInTransaction(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    .line 894
    .local v0, uri:Landroid/net/Uri;
    invoke-static {v0}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v1

    return-wide v1
.end method

.method private onChange(Landroid/net/Uri;)V
    .registers 5
    .parameter "uri"

    .prologue
    .line 2045
    iget-object v0, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Contacts;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 2046
    return-void
.end method

.method private parseContactMethodValues(ILandroid/content/ContentValues;)V
    .registers 9
    .parameter
    .parameter

    .prologue
    .line 1438
    iget-object v0, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues:Landroid/content/ContentValues;

    invoke-virtual {v0}, Landroid/content/ContentValues;->clear()V

    .line 1440
    iget-object v0, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues:Landroid/content/ContentValues;

    const-string v1, "is_primary"

    const-string v2, "isprimary"

    invoke-static {v0, v1, p2, v2}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->copyLongValue(Landroid/content/ContentValues;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 1443
    packed-switch p1, :pswitch_data_92

    .line 1473
    :goto_11
    return-void

    .line 1445
    :pswitch_12
    const-string v2, "vnd.android.cursor.item/email_v2"

    const-string v3, "data2"

    const-string v4, "data3"

    const-string v5, "data14"

    move-object v0, p0

    move-object v1, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/providers/contacts/LegacyApiSupport;->copyCommonFields(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1447
    iget-object v0, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues:Landroid/content/ContentValues;

    const-string v1, "data1"

    const-string v2, "data"

    invoke-static {v0, v1, p2, v2}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->copyStringValue(Landroid/content/ContentValues;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)V

    goto :goto_11

    .line 1453
    :pswitch_29
    const-string v0, "data"

    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1454
    const-string v1, "pre:"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_59

    .line 1455
    iget-object v1, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues:Landroid/content/ContentValues;

    const-string v2, "data5"

    const/4 v3, 0x4

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1461
    :cond_4b
    :goto_4b
    const-string v2, "vnd.android.cursor.item/im"

    const-string v3, "data2"

    const-string v4, "data3"

    const-string v5, "data14"

    move-object v0, p0

    move-object v1, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/providers/contacts/LegacyApiSupport;->copyCommonFields(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_11

    .line 1456
    :cond_59
    const-string v1, "custom:"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4b

    .line 1457
    iget-object v1, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues:Landroid/content/ContentValues;

    const-string v2, "data5"

    const/4 v3, -0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1458
    iget-object v1, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues:Landroid/content/ContentValues;

    const-string v2, "data6"

    const/4 v3, 0x7

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4b

    .line 1466
    :pswitch_7a
    const-string v2, "vnd.android.cursor.item/postal-address_v2"

    const-string v3, "data2"

    const-string v4, "data3"

    const-string v5, "data14"

    move-object v0, p0

    move-object v1, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/providers/contacts/LegacyApiSupport;->copyCommonFields(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1468
    iget-object v0, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues:Landroid/content/ContentValues;

    const-string v1, "data1"

    const-string v2, "data"

    invoke-static {v0, v1, p2, v2}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->copyStringValue(Landroid/content/ContentValues;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)V

    goto :goto_11

    .line 1443
    nop

    :pswitch_data_92
    .packed-switch 0x1
        :pswitch_12
        :pswitch_7a
        :pswitch_29
    .end packed-switch
.end method

.method private parseExtensionValues(Landroid/content/ContentValues;)V
    .registers 5
    .parameter "values"

    .prologue
    .line 1498
    iget-object v0, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues:Landroid/content/ContentValues;

    const-string v1, "data1"

    const-string v2, "name"

    invoke-static {v0, v1, p1, v2}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->copyStringValue(Landroid/content/ContentValues;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 1500
    iget-object v0, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues:Landroid/content/ContentValues;

    const-string v1, "data2"

    const-string v2, "value"

    invoke-static {v0, v1, p1, v2}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->copyStringValue(Landroid/content/ContentValues;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 1502
    return-void
.end method

.method private parseGroupValues(Landroid/content/ContentValues;)V
    .registers 5
    .parameter

    .prologue
    .line 1487
    iget-object v0, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues:Landroid/content/ContentValues;

    invoke-virtual {v0}, Landroid/content/ContentValues;->clear()V

    .line 1489
    iget-object v0, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues:Landroid/content/ContentValues;

    const-string v1, "title"

    const-string v2, "name"

    invoke-static {v0, v1, p1, v2}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->copyStringValue(Landroid/content/ContentValues;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 1491
    iget-object v0, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues:Landroid/content/ContentValues;

    const-string v1, "notes"

    const-string v2, "notes"

    invoke-static {v0, v1, p1, v2}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->copyStringValue(Landroid/content/ContentValues;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 1493
    iget-object v0, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues:Landroid/content/ContentValues;

    const-string v1, "system_id"

    const-string v2, "system_id"

    invoke-static {v0, v1, p1, v2}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->copyStringValue(Landroid/content/ContentValues;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 1495
    return-void
.end method

.method private parseOrganizationValues(Landroid/content/ContentValues;)V
    .registers 5
    .parameter

    .prologue
    .line 1398
    iget-object v0, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues:Landroid/content/ContentValues;

    invoke-virtual {v0}, Landroid/content/ContentValues;->clear()V

    .line 1400
    iget-object v0, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues:Landroid/content/ContentValues;

    const-string v1, "mimetype"

    const-string v2, "vnd.android.cursor.item/organization"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1402
    iget-object v0, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues:Landroid/content/ContentValues;

    const-string v1, "is_primary"

    const-string v2, "isprimary"

    invoke-static {v0, v1, p1, v2}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->copyLongValue(Landroid/content/ContentValues;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 1405
    iget-object v0, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues:Landroid/content/ContentValues;

    const-string v1, "data1"

    const-string v2, "company"

    invoke-static {v0, v1, p1, v2}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->copyStringValue(Landroid/content/ContentValues;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 1409
    iget-object v0, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues:Landroid/content/ContentValues;

    const-string v1, "data2"

    const-string v2, "type"

    invoke-static {v0, v1, p1, v2}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->copyLongValue(Landroid/content/ContentValues;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 1412
    iget-object v0, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues:Landroid/content/ContentValues;

    const-string v1, "data3"

    const-string v2, "label"

    invoke-static {v0, v1, p1, v2}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->copyStringValue(Landroid/content/ContentValues;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 1414
    iget-object v0, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues:Landroid/content/ContentValues;

    const-string v1, "data4"

    const-string v2, "title"

    invoke-static {v0, v1, p1, v2}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->copyStringValue(Landroid/content/ContentValues;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 1416
    return-void
.end method

.method private parsePeopleValues(Landroid/content/ContentValues;)V
    .registers 7
    .parameter "values"

    .prologue
    .line 1358
    iget-object v2, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues:Landroid/content/ContentValues;

    invoke-virtual {v2}, Landroid/content/ContentValues;->clear()V

    .line 1359
    iget-object v2, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues2:Landroid/content/ContentValues;

    invoke-virtual {v2}, Landroid/content/ContentValues;->clear()V

    .line 1360
    iget-object v2, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues3:Landroid/content/ContentValues;

    invoke-virtual {v2}, Landroid/content/ContentValues;->clear()V

    .line 1362
    iget-object v2, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues:Landroid/content/ContentValues;

    const-string v3, "custom_ringtone"

    const-string v4, "custom_ringtone"

    invoke-static {v2, v3, p1, v4}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->copyStringValue(Landroid/content/ContentValues;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 1364
    iget-object v2, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues:Landroid/content/ContentValues;

    const-string v3, "send_to_voicemail"

    const-string v4, "send_to_voicemail"

    invoke-static {v2, v3, p1, v4}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->copyLongValue(Landroid/content/ContentValues;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 1366
    iget-object v2, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues:Landroid/content/ContentValues;

    const-string v3, "last_time_contacted"

    const-string v4, "last_time_contacted"

    invoke-static {v2, v3, p1, v4}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->copyLongValue(Landroid/content/ContentValues;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 1368
    iget-object v2, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues:Landroid/content/ContentValues;

    const-string v3, "times_contacted"

    const-string v4, "times_contacted"

    invoke-static {v2, v3, p1, v4}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->copyLongValue(Landroid/content/ContentValues;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 1370
    iget-object v2, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues:Landroid/content/ContentValues;

    const-string v3, "starred"

    const-string v4, "starred"

    invoke-static {v2, v3, p1, v4}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->copyLongValue(Landroid/content/ContentValues;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 1372
    iget-object v2, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mAccount:Landroid/accounts/Account;

    if-eqz v2, :cond_56

    .line 1373
    iget-object v2, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues:Landroid/content/ContentValues;

    const-string v3, "account_name"

    iget-object v4, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mAccount:Landroid/accounts/Account;

    iget-object v4, v4, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1374
    iget-object v2, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues:Landroid/content/ContentValues;

    const-string v3, "account_type"

    iget-object v4, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mAccount:Landroid/accounts/Account;

    iget-object v4, v4, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1377
    :cond_56
    const-string v2, "name"

    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_66

    const-string v2, "phonetic_name"

    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_b1

    .line 1378
    :cond_66
    iget-object v2, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues2:Landroid/content/ContentValues;

    const-string v3, "mimetype"

    const-string v4, "vnd.android.cursor.item/name"

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1379
    iget-object v2, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues2:Landroid/content/ContentValues;

    const-string v3, "data1"

    const-string v4, "name"

    invoke-static {v2, v3, p1, v4}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->copyStringValue(Landroid/content/ContentValues;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 1381
    const-string v2, "phonetic_name"

    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_b1

    .line 1382
    const-string v2, "phonetic_name"

    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1383
    .local v1, phoneticName:Ljava/lang/String;
    new-instance v0, Lcom/android/providers/contacts/NameSplitter$Name;

    invoke-direct {v0}, Lcom/android/providers/contacts/NameSplitter$Name;-><init>()V

    .line 1384
    .local v0, parsedName:Lcom/android/providers/contacts/NameSplitter$Name;
    iget-object v2, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mPhoneticNameSplitter:Lcom/android/providers/contacts/NameSplitter;

    invoke-virtual {v2, v0, v1}, Lcom/android/providers/contacts/NameSplitter;->split(Lcom/android/providers/contacts/NameSplitter$Name;Ljava/lang/String;)V

    .line 1385
    iget-object v2, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues2:Landroid/content/ContentValues;

    const-string v3, "data7"

    invoke-virtual {v0}, Lcom/android/providers/contacts/NameSplitter$Name;->getGivenNames()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1386
    iget-object v2, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues2:Landroid/content/ContentValues;

    const-string v3, "data8"

    invoke-virtual {v0}, Lcom/android/providers/contacts/NameSplitter$Name;->getMiddleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1387
    iget-object v2, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues2:Landroid/content/ContentValues;

    const-string v3, "data9"

    invoke-virtual {v0}, Lcom/android/providers/contacts/NameSplitter$Name;->getFamilyName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1391
    .end local v0           #parsedName:Lcom/android/providers/contacts/NameSplitter$Name;
    .end local v1           #phoneticName:Ljava/lang/String;
    :cond_b1
    const-string v2, "notes"

    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_cb

    .line 1392
    iget-object v2, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues3:Landroid/content/ContentValues;

    const-string v3, "mimetype"

    const-string v4, "vnd.android.cursor.item/note"

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1393
    iget-object v2, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues3:Landroid/content/ContentValues;

    const-string v3, "data1"

    const-string v4, "notes"

    invoke-static {v2, v3, p1, v4}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->copyStringValue(Landroid/content/ContentValues;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 1395
    :cond_cb
    return-void
.end method

.method private parsePhoneValues(Landroid/content/ContentValues;)V
    .registers 5
    .parameter

    .prologue
    .line 1419
    iget-object v0, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues:Landroid/content/ContentValues;

    invoke-virtual {v0}, Landroid/content/ContentValues;->clear()V

    .line 1421
    iget-object v0, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues:Landroid/content/ContentValues;

    const-string v1, "mimetype"

    const-string v2, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1423
    iget-object v0, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues:Landroid/content/ContentValues;

    const-string v1, "is_primary"

    const-string v2, "isprimary"

    invoke-static {v0, v1, p1, v2}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->copyLongValue(Landroid/content/ContentValues;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 1426
    iget-object v0, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues:Landroid/content/ContentValues;

    const-string v1, "data1"

    const-string v2, "number"

    invoke-static {v0, v1, p1, v2}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->copyStringValue(Landroid/content/ContentValues;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 1430
    iget-object v0, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues:Landroid/content/ContentValues;

    const-string v1, "data2"

    const-string v2, "type"

    invoke-static {v0, v1, p1, v2}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->copyLongValue(Landroid/content/ContentValues;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 1433
    iget-object v0, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues:Landroid/content/ContentValues;

    const-string v1, "data3"

    const-string v2, "label"

    invoke-static {v0, v1, p1, v2}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->copyStringValue(Landroid/content/ContentValues;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 1435
    return-void
.end method

.method private updateAll(Landroid/net/Uri;ILandroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 17
    .parameter "uri"
    .parameter "match"
    .parameter "values"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    .line 985
    sget-object v2, Lcom/android/providers/contacts/LegacyApiSupport$IdQuery;->COLUMNS:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p4

    move-object/from16 v4, p5

    invoke-virtual/range {v0 .. v6}, Lcom/android/providers/contacts/LegacyApiSupport;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 986
    .local v7, c:Landroid/database/Cursor;
    if-nez v7, :cond_11

    .line 987
    const/4 v8, 0x0

    .line 1000
    :goto_10
    return v8

    .line 990
    :cond_11
    const/4 v8, 0x0

    .line 992
    .local v8, count:I
    :goto_12
    :try_start_12
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_23

    .line 993
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    .line 994
    .local v9, id:J
    invoke-virtual {p0, p2, v9, v10, p3}, Lcom/android/providers/contacts/LegacyApiSupport;->update(IJLandroid/content/ContentValues;)I
    :try_end_20
    .catchall {:try_start_12 .. :try_end_20} :catchall_27

    move-result v0

    add-int/2addr v8, v0

    .line 995
    goto :goto_12

    .line 997
    .end local v9           #id:J
    :cond_23
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_10

    :catchall_27
    move-exception v0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private updateContactMethods(JLandroid/content/ContentValues;)I
    .registers 13
    .parameter "dataId"
    .parameter "values"

    .prologue
    const/4 v4, 0x0

    .line 1106
    iget-object v5, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mDataMimetypeQuery:Landroid/database/sqlite/SQLiteStatement;

    const/4 v6, 0x1

    invoke-virtual {v5, v6, p1, p2}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 1109
    :try_start_7
    iget-object v5, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mDataMimetypeQuery:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteStatement;->simpleQueryForLong()J
    :try_end_c
    .catch Landroid/database/sqlite/SQLiteDoneException; {:try_start_7 .. :try_end_c} :catch_36

    move-result-wide v2

    .line 1115
    .local v2, mimetype_id:J
    iget-wide v5, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mMimetypeEmail:J

    cmp-long v5, v2, v5

    if-nez v5, :cond_38

    .line 1116
    const/4 v1, 0x1

    .line 1127
    .local v1, kind:I
    :goto_14
    invoke-direct {p0, v1, p3}, Lcom/android/providers/contacts/LegacyApiSupport;->parseContactMethodValues(ILandroid/content/ContentValues;)V

    .line 1129
    iget-object v4, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mContactsProvider:Lcom/android/providers/contacts/ContactsProvider2;

    sget-object v5, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    iget-object v6, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues:Landroid/content/ContentValues;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "_id="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/android/providers/contacts/ContactsProvider2;->updateInTransaction(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    .end local v1           #kind:I
    .end local v2           #mimetype_id:J
    :cond_35
    :goto_35
    return v4

    .line 1110
    :catch_36
    move-exception v0

    .line 1112
    .local v0, e:Landroid/database/sqlite/SQLiteDoneException;
    goto :goto_35

    .line 1117
    .end local v0           #e:Landroid/database/sqlite/SQLiteDoneException;
    .restart local v2       #mimetype_id:J
    :cond_38
    iget-wide v5, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mMimetypeIm:J

    cmp-long v5, v2, v5

    if-nez v5, :cond_40

    .line 1118
    const/4 v1, 0x3

    .restart local v1       #kind:I
    goto :goto_14

    .line 1119
    .end local v1           #kind:I
    :cond_40
    iget-wide v5, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mMimetypePostal:J

    cmp-long v5, v2, v5

    if-nez v5, :cond_35

    .line 1120
    const/4 v1, 0x2

    .restart local v1       #kind:I
    goto :goto_14
.end method

.method private updateContactTime(Landroid/net/Uri;Landroid/content/ContentValues;)I
    .registers 7
    .parameter "uri"
    .parameter "values"

    .prologue
    const/4 v3, 0x1

    .line 1148
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 1149
    .local v0, rawContactId:J
    invoke-direct {p0, v0, v1, p2}, Lcom/android/providers/contacts/LegacyApiSupport;->updateContactTime(JLandroid/content/ContentValues;)V

    .line 1150
    return v3
.end method

.method private updateContactTime(JLandroid/content/ContentValues;)V
    .registers 13
    .parameter "rawContactId"
    .parameter "values"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 1155
    const-string v5, "last_time_contacted"

    invoke-virtual {p3, v5}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6b

    .line 1156
    const-string v5, "last_time_contacted"

    invoke-virtual {p3, v5}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 1162
    .local v2, lastTimeContacted:J
    :goto_14
    iget-object v5, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    invoke-virtual {v5, p1, p2}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getContactId(J)J

    move-result-wide v0

    .line 1163
    .local v0, contactId:J
    iget-object v5, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    invoke-virtual {v5}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    .line 1164
    .local v4, mDb:Landroid/database/sqlite/SQLiteDatabase;
    iget-object v5, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mSelectionArgs2:[Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v7

    .line 1165
    const-wide/16 v5, 0x0

    cmp-long v5, v0, v5

    if-eqz v5, :cond_4c

    .line 1166
    iget-object v5, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mSelectionArgs2:[Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    .line 1167
    const-string v5, "UPDATE contacts SET last_time_contacted=? WHERE _id=?"

    iget-object v6, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mSelectionArgs2:[Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1169
    iget-object v5, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mSelectionArgs1:[Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v7

    .line 1170
    const-string v5, "UPDATE contacts SET times_contacted= CASE WHEN times_contacted IS NULL THEN 1 ELSE  (times_contacted + 1) END WHERE _id=?"

    iget-object v6, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mSelectionArgs1:[Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1172
    :cond_4c
    iget-object v5, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mSelectionArgs2:[Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    .line 1173
    const-string v5, "UPDATE raw_contacts SET last_time_contacted=? WHERE _id=?"

    iget-object v6, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mSelectionArgs2:[Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1175
    iget-object v5, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mSelectionArgs1:[Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v7

    .line 1176
    const-string v5, "UPDATE raw_contacts SET times_contacted= CASE WHEN times_contacted IS NULL THEN 1 ELSE  (times_contacted + 1) END WHERE contact_id=?"

    iget-object v6, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mSelectionArgs1:[Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1177
    return-void

    .line 1158
    .end local v0           #contactId:J
    .end local v2           #lastTimeContacted:J
    .end local v4           #mDb:Landroid/database/sqlite/SQLiteDatabase;
    :cond_6b
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .restart local v2       #lastTimeContacted:J
    goto :goto_14
.end method

.method private updateExtensions(JLandroid/content/ContentValues;)I
    .registers 9
    .parameter "dataId"
    .parameter "values"

    .prologue
    .line 1134
    invoke-direct {p0, p3}, Lcom/android/providers/contacts/LegacyApiSupport;->parseExtensionValues(Landroid/content/ContentValues;)V

    .line 1136
    iget-object v0, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mContactsProvider:Lcom/android/providers/contacts/ContactsProvider2;

    sget-object v1, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues:Landroid/content/ContentValues;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/providers/contacts/ContactsProvider2;->updateInTransaction(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private updateGroups(JLandroid/content/ContentValues;)I
    .registers 9
    .parameter "groupId"
    .parameter "values"

    .prologue
    .line 1141
    invoke-direct {p0, p3}, Lcom/android/providers/contacts/LegacyApiSupport;->parseGroupValues(Landroid/content/ContentValues;)V

    .line 1143
    iget-object v0, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mContactsProvider:Lcom/android/providers/contacts/ContactsProvider2;

    sget-object v1, Landroid/provider/ContactsContract$Groups;->CONTENT_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues:Landroid/content/ContentValues;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/providers/contacts/ContactsProvider2;->updateInTransaction(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private updateLegacyPhotoData(JJLandroid/content/ContentValues;)V
    .registers 12
    .parameter "rawContactId"
    .parameter "dataId"
    .parameter "values"

    .prologue
    .line 1233
    iget-object v1, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues:Landroid/content/ContentValues;

    invoke-virtual {v1}, Landroid/content/ContentValues;->clear()V

    .line 1234
    iget-object v1, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues:Landroid/content/ContentValues;

    const-string v2, "data2"

    const-string v3, "local_version"

    invoke-static {v1, v2, p5, v3}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->copyStringValue(Landroid/content/ContentValues;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 1236
    iget-object v1, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues:Landroid/content/ContentValues;

    const-string v2, "data3"

    const-string v3, "download_required"

    invoke-static {v1, v2, p5, v3}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->copyStringValue(Landroid/content/ContentValues;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 1238
    iget-object v1, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues:Landroid/content/ContentValues;

    const-string v2, "data4"

    const-string v3, "exists_on_server"

    invoke-static {v1, v2, p5, v3}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->copyStringValue(Landroid/content/ContentValues;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 1240
    iget-object v1, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues:Landroid/content/ContentValues;

    const-string v2, "data5"

    const-string v3, "sync_error"

    invoke-static {v1, v2, p5, v3}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->copyStringValue(Landroid/content/ContentValues;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 1243
    iget-object v1, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mContactsProvider:Lcom/android/providers/contacts/ContactsProvider2;

    sget-object v2, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    iget-object v3, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues:Landroid/content/ContentValues;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mimetype=\'vnd.android.cursor.item/photo_v1_extras\' AND raw_contact_id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " AND "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "data1"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/android/providers/contacts/ContactsProvider2;->updateInTransaction(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 1247
    .local v0, updated:I
    if-nez v0, :cond_87

    .line 1248
    iget-object v1, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues:Landroid/content/ContentValues;

    const-string v2, "raw_contact_id"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1249
    iget-object v1, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues:Landroid/content/ContentValues;

    const-string v2, "mimetype"

    const-string v3, "vnd.android.cursor.item/photo_v1_extras"

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1250
    iget-object v1, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues:Landroid/content/ContentValues;

    const-string v2, "data1"

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1251
    iget-object v1, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mContactsProvider:Lcom/android/providers/contacts/ContactsProvider2;

    sget-object v2, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    iget-object v3, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues:Landroid/content/ContentValues;

    invoke-virtual {v1, v2, v3}, Lcom/android/providers/contacts/ContactsProvider2;->insertInTransaction(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 1253
    :cond_87
    return-void
.end method

.method private updateOrganizations(JLandroid/content/ContentValues;)I
    .registers 9
    .parameter "dataId"
    .parameter "values"

    .prologue
    .line 1090
    invoke-direct {p0, p3}, Lcom/android/providers/contacts/LegacyApiSupport;->parseOrganizationValues(Landroid/content/ContentValues;)V

    .line 1092
    iget-object v0, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mContactsProvider:Lcom/android/providers/contacts/ContactsProvider2;

    sget-object v1, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues:Landroid/content/ContentValues;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/providers/contacts/ContactsProvider2;->updateInTransaction(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private updatePeople(JLandroid/content/ContentValues;)I
    .registers 12
    .parameter "rawContactId"
    .parameter "values"

    .prologue
    const/4 v7, 0x0

    .line 1052
    invoke-direct {p0, p3}, Lcom/android/providers/contacts/LegacyApiSupport;->parsePeopleValues(Landroid/content/ContentValues;)V

    .line 1054
    iget-object v2, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mContactsProvider:Lcom/android/providers/contacts/ContactsProvider2;

    sget-object v3, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    iget-object v4, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues:Landroid/content/ContentValues;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "_id="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v4, v5, v7}, Lcom/android/providers/contacts/ContactsProvider2;->updateInTransaction(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 1057
    .local v0, count:I
    if-nez v0, :cond_25

    .line 1058
    const/4 v0, 0x0

    .line 1086
    .end local v0           #count:I
    :cond_24
    :goto_24
    return v0

    .line 1061
    .restart local v0       #count:I
    :cond_25
    iget-object v2, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues2:Landroid/content/ContentValues;

    invoke-virtual {v2}, Landroid/content/ContentValues;->size()I

    move-result v2

    if-eqz v2, :cond_3c

    .line 1062
    const-string v2, "vnd.android.cursor.item/name"

    invoke-direct {p0, p1, p2, v2}, Lcom/android/providers/contacts/LegacyApiSupport;->findFirstDataRow(JLjava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 1063
    .local v1, dataUri:Landroid/net/Uri;
    if-eqz v1, :cond_67

    .line 1064
    iget-object v2, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mContactsProvider:Lcom/android/providers/contacts/ContactsProvider2;

    iget-object v3, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues2:Landroid/content/ContentValues;

    invoke-virtual {v2, v1, v3, v7, v7}, Lcom/android/providers/contacts/ContactsProvider2;->updateInTransaction(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1071
    .end local v1           #dataUri:Landroid/net/Uri;
    :cond_3c
    :goto_3c
    iget-object v2, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues3:Landroid/content/ContentValues;

    invoke-virtual {v2}, Landroid/content/ContentValues;->size()I

    move-result v2

    if-eqz v2, :cond_53

    .line 1072
    const-string v2, "vnd.android.cursor.item/note"

    invoke-direct {p0, p1, p2, v2}, Lcom/android/providers/contacts/LegacyApiSupport;->findFirstDataRow(JLjava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 1073
    .restart local v1       #dataUri:Landroid/net/Uri;
    if-eqz v1, :cond_7c

    .line 1074
    iget-object v2, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mContactsProvider:Lcom/android/providers/contacts/ContactsProvider2;

    iget-object v3, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues3:Landroid/content/ContentValues;

    invoke-virtual {v2, v1, v3, v7, v7}, Lcom/android/providers/contacts/ContactsProvider2;->updateInTransaction(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1081
    .end local v1           #dataUri:Landroid/net/Uri;
    :cond_53
    :goto_53
    const-string v2, "last_time_contacted"

    invoke-virtual {p3, v2}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_24

    const-string v2, "times_contacted"

    invoke-virtual {p3, v2}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_24

    .line 1083
    invoke-direct {p0, p1, p2, p3}, Lcom/android/providers/contacts/LegacyApiSupport;->updateContactTime(JLandroid/content/ContentValues;)V

    goto :goto_24

    .line 1066
    .restart local v1       #dataUri:Landroid/net/Uri;
    :cond_67
    iget-object v2, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues2:Landroid/content/ContentValues;

    const-string v3, "raw_contact_id"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1067
    iget-object v2, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mContactsProvider:Lcom/android/providers/contacts/ContactsProvider2;

    sget-object v3, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    iget-object v4, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues2:Landroid/content/ContentValues;

    invoke-virtual {v2, v3, v4}, Lcom/android/providers/contacts/ContactsProvider2;->insertInTransaction(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    goto :goto_3c

    .line 1076
    :cond_7c
    iget-object v2, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues3:Landroid/content/ContentValues;

    const-string v3, "raw_contact_id"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1077
    iget-object v2, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mContactsProvider:Lcom/android/providers/contacts/ContactsProvider2;

    sget-object v3, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    iget-object v4, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues3:Landroid/content/ContentValues;

    invoke-virtual {v2, v3, v4}, Lcom/android/providers/contacts/ContactsProvider2;->insertInTransaction(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    goto :goto_53
.end method

.method private updatePhones(JLandroid/content/ContentValues;)I
    .registers 9
    .parameter "dataId"
    .parameter "values"

    .prologue
    .line 1097
    invoke-direct {p0, p3}, Lcom/android/providers/contacts/LegacyApiSupport;->parsePhoneValues(Landroid/content/ContentValues;)V

    .line 1099
    iget-object v0, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mContactsProvider:Lcom/android/providers/contacts/ContactsProvider2;

    sget-object v1, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues:Landroid/content/ContentValues;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/providers/contacts/ContactsProvider2;->updateInTransaction(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private updatePhoto(JLandroid/content/ContentValues;)I
    .registers 13
    .parameter "rawContactId"
    .parameter "values"

    .prologue
    const/4 v2, 0x0

    .line 1185
    const-string v0, "vnd.android.cursor.item/photo"

    invoke-direct {p0, p1, p2, v0}, Lcom/android/providers/contacts/LegacyApiSupport;->findFirstDataId(JLjava/lang/String;)J

    move-result-wide v3

    .line 1187
    .local v3, dataId:J
    iget-object v0, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues:Landroid/content/ContentValues;

    invoke-virtual {v0}, Landroid/content/ContentValues;->clear()V

    .line 1188
    const-string v0, "data"

    invoke-virtual {p3, v0}, Landroid/content/ContentValues;->getAsByteArray(Ljava/lang/String;)[B

    move-result-object v6

    .line 1189
    .local v6, bytes:[B
    iget-object v0, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues:Landroid/content/ContentValues;

    const-string v1, "data15"

    invoke-virtual {v0, v1, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 1191
    const-wide/16 v0, -0x1

    cmp-long v0, v3, v0

    if-nez v0, :cond_49

    .line 1192
    iget-object v0, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues:Landroid/content/ContentValues;

    const-string v1, "mimetype"

    const-string v2, "vnd.android.cursor.item/photo"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1193
    iget-object v0, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues:Landroid/content/ContentValues;

    const-string v1, "raw_contact_id"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1194
    iget-object v0, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mContactsProvider:Lcom/android/providers/contacts/ContactsProvider2;

    sget-object v1, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues:Landroid/content/ContentValues;

    invoke-virtual {v0, v1, v2}, Lcom/android/providers/contacts/ContactsProvider2;->insertInTransaction(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v8

    .line 1195
    .local v8, dataUri:Landroid/net/Uri;
    invoke-static {v8}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v3

    .line 1196
    const/4 v7, 0x1

    .local v7, count:I
    :goto_42
    move-object v0, p0

    move-wide v1, p1

    move-object v5, p3

    .line 1202
    invoke-direct/range {v0 .. v5}, Lcom/android/providers/contacts/LegacyApiSupport;->updateLegacyPhotoData(JJLandroid/content/ContentValues;)V

    .line 1204
    return v7

    .line 1198
    .end local v7           #count:I
    .end local v8           #dataUri:Landroid/net/Uri;
    :cond_49
    sget-object v0, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v8

    .line 1199
    .restart local v8       #dataUri:Landroid/net/Uri;
    iget-object v0, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mContactsProvider:Lcom/android/providers/contacts/ContactsProvider2;

    iget-object v1, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues:Landroid/content/ContentValues;

    invoke-virtual {v0, v8, v1, v2, v2}, Lcom/android/providers/contacts/ContactsProvider2;->updateInTransaction(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v7

    .restart local v7       #count:I
    goto :goto_42
.end method

.method private updatePhotoByDataId(JLandroid/content/ContentValues;)I
    .registers 14
    .parameter "dataId"
    .parameter "values"

    .prologue
    const/4 v8, 0x1

    .line 1209
    iget-object v0, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mDataRawContactIdQuery:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v0, v8, p1, p2}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 1213
    :try_start_6
    iget-object v0, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mDataRawContactIdQuery:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->simpleQueryForLong()J
    :try_end_b
    .catch Landroid/database/sqlite/SQLiteDoneException; {:try_start_6 .. :try_end_b} :catch_4b

    move-result-wide v1

    .line 1219
    .local v1, rawContactId:J
    const-string v0, "data"

    invoke-virtual {p3, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_43

    .line 1220
    const-string v0, "data"

    invoke-virtual {p3, v0}, Landroid/content/ContentValues;->getAsByteArray(Ljava/lang/String;)[B

    move-result-object v6

    .line 1221
    .local v6, bytes:[B
    iget-object v0, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues:Landroid/content/ContentValues;

    invoke-virtual {v0}, Landroid/content/ContentValues;->clear()V

    .line 1222
    iget-object v0, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues:Landroid/content/ContentValues;

    const-string v3, "data15"

    invoke-virtual {v0, v3, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 1223
    iget-object v0, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mContactsProvider:Lcom/android/providers/contacts/ContactsProvider2;

    sget-object v3, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    iget-object v4, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues:Landroid/content/ContentValues;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "_id="

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v9, 0x0

    invoke-virtual {v0, v3, v4, v5, v9}, Lcom/android/providers/contacts/ContactsProvider2;->updateInTransaction(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .end local v6           #bytes:[B
    :cond_43
    move-object v0, p0

    move-wide v3, p1

    move-object v5, p3

    .line 1227
    invoke-direct/range {v0 .. v5}, Lcom/android/providers/contacts/LegacyApiSupport;->updateLegacyPhotoData(JJLandroid/content/ContentValues;)V

    move v0, v8

    .line 1229
    .end local v1           #rawContactId:J
    :goto_4a
    return v0

    .line 1214
    :catch_4b
    move-exception v7

    .line 1216
    .local v7, e:Landroid/database/sqlite/SQLiteDoneException;
    const/4 v0, 0x0

    goto :goto_4a
.end method

.method private updateSetting(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)V
    .registers 13
    .parameter "db"
    .parameter "accountName"
    .parameter "accountType"
    .parameter "values"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1296
    const-string v3, "key"

    invoke-virtual {p4, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1297
    .local v0, key:Ljava/lang/String;
    if-eqz p2, :cond_c

    if-nez p3, :cond_3e

    .line 1298
    :cond_c
    const-string v3, "v1_settings"

    const-string v4, "_sync_account IS NULL AND key=?"

    new-array v5, v7, [Ljava/lang/String;

    aput-object v0, v5, v6

    invoke-virtual {p1, v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1303
    :goto_17
    const-string v3, "v1_settings"

    const-string v4, "key"

    invoke-virtual {p1, v3, v4, p4}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v1

    .line 1305
    .local v1, rowId:J
    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-gez v3, :cond_50

    .line 1306
    new-instance v3, Landroid/database/SQLException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "error updating settings with "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/database/SQLException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1300
    .end local v1           #rowId:J
    :cond_3e
    const-string v3, "v1_settings"

    const-string v4, "_sync_account=? AND _sync_account_type=? AND key=?"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/String;

    aput-object p2, v5, v6

    aput-object p3, v5, v7

    const/4 v6, 0x2

    aput-object v0, v5, v6

    invoke-virtual {p1, v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_17

    .line 1308
    .restart local v1       #rowId:J
    :cond_50
    return-void
.end method

.method private updateSettings(Landroid/content/ContentValues;)I
    .registers 13
    .parameter "values"

    .prologue
    const/4 v10, 0x1

    .line 1256
    iget-object v7, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    invoke-virtual {v7}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    .line 1257
    .local v3, db:Landroid/database/sqlite/SQLiteDatabase;
    const-string v7, "_sync_account"

    invoke-virtual {p1, v7}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1258
    .local v0, accountName:Ljava/lang/String;
    const-string v7, "_sync_account_type"

    invoke-virtual {p1, v7}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1260
    .local v1, accountType:Ljava/lang/String;
    const-string v7, "key"

    invoke-virtual {p1, v7}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1261
    .local v4, key:Ljava/lang/String;
    if-nez v4, :cond_23

    .line 1262
    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string v8, "you must specify the key when updating settings"

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 1264
    :cond_23
    invoke-direct {p0, v3, v0, v1, p1}, Lcom/android/providers/contacts/LegacyApiSupport;->updateSetting(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)V

    .line 1265
    const-string v7, "syncEverything"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_71

    .line 1266
    iget-object v7, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues:Landroid/content/ContentValues;

    invoke-virtual {v7}, Landroid/content/ContentValues;->clear()V

    .line 1267
    iget-object v7, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues:Landroid/content/ContentValues;

    const-string v8, "should_sync"

    const-string v9, "value"

    invoke-virtual {p1, v9}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1271
    if-eqz v0, :cond_72

    if-eqz v1, :cond_72

    .line 1273
    const/4 v7, 0x2

    new-array v6, v7, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v0, v6, v7

    aput-object v1, v6, v10

    .line 1274
    .local v6, selectionArgs:[Ljava/lang/String;
    const-string v5, "account_name=? AND account_type=? AND data_set IS NULL"

    .line 1283
    .local v5, selection:Ljava/lang/String;
    :goto_4e
    iget-object v7, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mContactsProvider:Lcom/android/providers/contacts/ContactsProvider2;

    sget-object v8, Landroid/provider/ContactsContract$Settings;->CONTENT_URI:Landroid/net/Uri;

    iget-object v9, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues:Landroid/content/ContentValues;

    invoke-virtual {v7, v8, v9, v5, v6}, Lcom/android/providers/contacts/ContactsProvider2;->updateInTransaction(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    .line 1285
    .local v2, count:I
    if-nez v2, :cond_71

    .line 1286
    iget-object v7, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues:Landroid/content/ContentValues;

    const-string v8, "account_name"

    invoke-virtual {v7, v8, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1287
    iget-object v7, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues:Landroid/content/ContentValues;

    const-string v8, "account_type"

    invoke-virtual {v7, v8, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1288
    iget-object v7, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mContactsProvider:Lcom/android/providers/contacts/ContactsProvider2;

    sget-object v8, Landroid/provider/ContactsContract$Settings;->CONTENT_URI:Landroid/net/Uri;

    iget-object v9, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues:Landroid/content/ContentValues;

    invoke-virtual {v7, v8, v9}, Lcom/android/providers/contacts/ContactsProvider2;->insertInTransaction(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 1291
    .end local v2           #count:I
    .end local v5           #selection:Ljava/lang/String;
    .end local v6           #selectionArgs:[Ljava/lang/String;
    :cond_71
    return v10

    .line 1278
    :cond_72
    const/4 v6, 0x0

    .line 1279
    .restart local v6       #selectionArgs:[Ljava/lang/String;
    const-string v5, "account_name IS NULL AND account_type IS NULL AND data_set IS NULL"

    .restart local v5       #selection:Ljava/lang/String;
    goto :goto_4e
.end method


# virtual methods
.method public copySettingsToLegacySettings()V
    .registers 9

    .prologue
    .line 1337
    iget-object v5, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    invoke-virtual {v5}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    .line 1338
    .local v3, db:Landroid/database/sqlite/SQLiteDatabase;
    const-string v5, "SELECT account_name,account_type,should_sync FROM settings LEFT OUTER JOIN v1_settings ON (account_name=_sync_account AND account_type=_sync_account_type AND data_set IS NULL AND key=\'syncEverything\') WHERE should_sync<>value"

    const/4 v6, 0x0

    invoke-virtual {v3, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 1340
    .local v2, cursor:Landroid/database/Cursor;
    :goto_d
    :try_start_d
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_50

    .line 1341
    const/4 v5, 0x0

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1342
    .local v0, accountName:Ljava/lang/String;
    const/4 v5, 0x1

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1343
    .local v1, accountType:Ljava/lang/String;
    const/4 v5, 0x2

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 1344
    .local v4, value:Ljava/lang/String;
    iget-object v5, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues:Landroid/content/ContentValues;

    invoke-virtual {v5}, Landroid/content/ContentValues;->clear()V

    .line 1345
    iget-object v5, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues:Landroid/content/ContentValues;

    const-string v6, "_sync_account"

    invoke-virtual {v5, v6, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1346
    iget-object v5, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues:Landroid/content/ContentValues;

    const-string v6, "_sync_account_type"

    invoke-virtual {v5, v6, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1347
    iget-object v5, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues:Landroid/content/ContentValues;

    const-string v6, "key"

    const-string v7, "syncEverything"

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1349
    iget-object v5, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues:Landroid/content/ContentValues;

    const-string v6, "value"

    invoke-virtual {v5, v6, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1350
    iget-object v5, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues:Landroid/content/ContentValues;

    invoke-direct {p0, v3, v0, v1, v5}, Lcom/android/providers/contacts/LegacyApiSupport;->updateSetting(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)V
    :try_end_4a
    .catchall {:try_start_d .. :try_end_4a} :catchall_4b

    goto :goto_d

    .line 1353
    .end local v0           #accountName:Ljava/lang/String;
    .end local v1           #accountType:Ljava/lang/String;
    .end local v4           #value:Ljava/lang/String;
    :catchall_4b
    move-exception v5

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    throw v5

    :cond_50
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 1355
    return-void
.end method

.method public delete(Landroid/net/Uri;IJ)I
    .registers 12
    .parameter "uri"
    .parameter "match"
    .parameter "id"

    .prologue
    const/4 v5, 0x0

    .line 1555
    const/4 v6, 0x0

    .line 1556
    .local v6, count:I
    packed-switch p2, :pswitch_data_6e

    .line 1604
    :pswitch_5
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    iget-object v1, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    invoke-virtual {v1, p1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->exceptionMessage(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1559
    :pswitch_11
    iget-object v0, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mContactsProvider:Lcom/android/providers/contacts/ContactsProvider2;

    iget-object v1, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    invoke-virtual {v1, p3, p4}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getContactId(J)J

    move-result-wide v3

    move-wide v1, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/providers/contacts/ContactsProvider2;->deleteRawContact(JJZ)I

    move-result v6

    .line 1607
    :goto_1e
    return v6

    .line 1563
    :pswitch_1f
    iget-object v0, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues:Landroid/content/ContentValues;

    invoke-virtual {v0}, Landroid/content/ContentValues;->clear()V

    .line 1564
    iget-object v0, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues:Landroid/content/ContentValues;

    const-string v1, "data"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 1565
    iget-object v0, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues:Landroid/content/ContentValues;

    invoke-direct {p0, p3, p4, v0}, Lcom/android/providers/contacts/LegacyApiSupport;->updatePhoto(JLandroid/content/ContentValues;)I

    goto :goto_1e

    .line 1570
    :pswitch_31
    iget-object v0, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mContactsProvider:Lcom/android/providers/contacts/ContactsProvider2;

    sget-object v1, Lcom/android/providers/contacts/LegacyApiSupport;->ORGANIZATION_MIME_TYPES:[Ljava/lang/String;

    invoke-virtual {v0, p3, p4, v1}, Lcom/android/providers/contacts/ContactsProvider2;->deleteData(J[Ljava/lang/String;)I

    move-result v6

    .line 1571
    goto :goto_1e

    .line 1575
    :pswitch_3a
    iget-object v0, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mContactsProvider:Lcom/android/providers/contacts/ContactsProvider2;

    sget-object v1, Lcom/android/providers/contacts/LegacyApiSupport;->CONTACT_METHOD_MIME_TYPES:[Ljava/lang/String;

    invoke-virtual {v0, p3, p4, v1}, Lcom/android/providers/contacts/ContactsProvider2;->deleteData(J[Ljava/lang/String;)I

    move-result v6

    .line 1576
    goto :goto_1e

    .line 1580
    :pswitch_43
    iget-object v0, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mContactsProvider:Lcom/android/providers/contacts/ContactsProvider2;

    sget-object v1, Lcom/android/providers/contacts/LegacyApiSupport;->PHONE_MIME_TYPES:[Ljava/lang/String;

    invoke-virtual {v0, p3, p4, v1}, Lcom/android/providers/contacts/ContactsProvider2;->deleteData(J[Ljava/lang/String;)I

    move-result v6

    .line 1581
    goto :goto_1e

    .line 1585
    :pswitch_4c
    iget-object v0, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mContactsProvider:Lcom/android/providers/contacts/ContactsProvider2;

    sget-object v1, Lcom/android/providers/contacts/LegacyApiSupport;->EXTENSION_MIME_TYPES:[Ljava/lang/String;

    invoke-virtual {v0, p3, p4, v1}, Lcom/android/providers/contacts/ContactsProvider2;->deleteData(J[Ljava/lang/String;)I

    move-result v6

    .line 1586
    goto :goto_1e

    .line 1590
    :pswitch_55
    iget-object v0, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mContactsProvider:Lcom/android/providers/contacts/ContactsProvider2;

    sget-object v1, Lcom/android/providers/contacts/LegacyApiSupport;->PHOTO_MIME_TYPES:[Ljava/lang/String;

    invoke-virtual {v0, p3, p4, v1}, Lcom/android/providers/contacts/ContactsProvider2;->deleteData(J[Ljava/lang/String;)I

    move-result v6

    .line 1591
    goto :goto_1e

    .line 1595
    :pswitch_5e
    iget-object v0, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mContactsProvider:Lcom/android/providers/contacts/ContactsProvider2;

    sget-object v1, Lcom/android/providers/contacts/LegacyApiSupport;->GROUP_MEMBERSHIP_MIME_TYPES:[Ljava/lang/String;

    invoke-virtual {v0, p3, p4, v1}, Lcom/android/providers/contacts/ContactsProvider2;->deleteData(J[Ljava/lang/String;)I

    move-result v6

    .line 1596
    goto :goto_1e

    .line 1600
    :pswitch_67
    iget-object v0, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mContactsProvider:Lcom/android/providers/contacts/ContactsProvider2;

    invoke-virtual {v0, p1, p3, p4, v5}, Lcom/android/providers/contacts/ContactsProvider2;->deleteGroup(Landroid/net/Uri;JZ)I

    move-result v6

    .line 1601
    goto :goto_1e

    .line 1556
    :pswitch_data_6e
    .packed-switch 0x1
        :pswitch_11
        :pswitch_11
        :pswitch_5
        :pswitch_31
        :pswitch_31
        :pswitch_5
        :pswitch_5
        :pswitch_3a
        :pswitch_3a
        :pswitch_5
        :pswitch_5
        :pswitch_43
        :pswitch_43
        :pswitch_4c
        :pswitch_4c
        :pswitch_5
        :pswitch_5
        :pswitch_67
        :pswitch_67
        :pswitch_5e
        :pswitch_5e
        :pswitch_5
        :pswitch_5
        :pswitch_1f
        :pswitch_55
        :pswitch_55
    .end packed-switch
.end method

.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 16
    .parameter "uri"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    const/4 v5, 0x0

    const/4 v8, 0x0

    .line 1531
    sget-object v0, Lcom/android/providers/contacts/LegacyApiSupport;->sUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v11

    .line 1532
    .local v11, match:I
    const/4 v0, -0x1

    if-eq v11, v0, :cond_f

    const/16 v0, 0x2c

    if-ne v11, v0, :cond_1b

    .line 1533
    :cond_f
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    iget-object v1, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    invoke-virtual {v1, p1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->exceptionMessage(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1536
    :cond_1b
    sget-object v2, Lcom/android/providers/contacts/LegacyApiSupport$IdQuery;->COLUMNS:[Ljava/lang/String;

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v6, v5

    invoke-virtual/range {v0 .. v6}, Lcom/android/providers/contacts/LegacyApiSupport;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 1537
    .local v7, c:Landroid/database/Cursor;
    if-nez v7, :cond_29

    .line 1551
    :goto_28
    return v8

    .line 1541
    :cond_29
    const/4 v8, 0x0

    .line 1543
    .local v8, count:I
    :goto_2a
    :try_start_2a
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 1544
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    .line 1545
    .local v9, id:J
    invoke-virtual {p0, p1, v11, v9, v10}, Lcom/android/providers/contacts/LegacyApiSupport;->delete(Landroid/net/Uri;IJ)I
    :try_end_38
    .catchall {:try_start_2a .. :try_end_38} :catchall_3f

    move-result v0

    add-int/2addr v8, v0

    .line 1546
    goto :goto_2a

    .line 1548
    .end local v9           #id:J
    :cond_3b
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_28

    :catchall_3f
    move-exception v0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .registers 4
    .parameter

    .prologue
    .line 2049
    sget-object v0, Lcom/android/providers/contacts/LegacyApiSupport;->sUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    .line 2050
    packed-switch v0, :pswitch_data_56

    .line 2094
    :pswitch_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    iget-object v1, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    invoke-virtual {v1, p1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->exceptionMessage(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2053
    :pswitch_15
    const-string v0, "vnd.android.cursor.dir/contact_extensions"

    .line 2092
    :goto_17
    return-object v0

    .line 2056
    :pswitch_18
    const-string v0, "vnd.android.cursor.item/contact_extensions"

    goto :goto_17

    .line 2058
    :pswitch_1b
    const-string v0, "vnd.android.cursor.dir/person"

    goto :goto_17

    .line 2060
    :pswitch_1e
    const-string v0, "vnd.android.cursor.item/person"

    goto :goto_17

    .line 2062
    :pswitch_21
    const-string v0, "vnd.android.cursor.dir/phone"

    goto :goto_17

    .line 2064
    :pswitch_24
    const-string v0, "vnd.android.cursor.item/phone"

    goto :goto_17

    .line 2066
    :pswitch_27
    const-string v0, "vnd.android.cursor.dir/contact-methods"

    goto :goto_17

    .line 2068
    :pswitch_2a
    invoke-direct {p0, p1}, Lcom/android/providers/contacts/LegacyApiSupport;->getContactMethodType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    goto :goto_17

    .line 2070
    :pswitch_2f
    const-string v0, "vnd.android.cursor.dir/phone"

    goto :goto_17

    .line 2072
    :pswitch_32
    const-string v0, "vnd.android.cursor.item/phone"

    goto :goto_17

    .line 2074
    :pswitch_35
    const-string v0, "vnd.android.cursor.dir/phone"

    goto :goto_17

    .line 2076
    :pswitch_38
    const-string v0, "vnd.android.cursor.item/photo"

    goto :goto_17

    .line 2078
    :pswitch_3b
    const-string v0, "vnd.android.cursor.dir/photo"

    goto :goto_17

    .line 2080
    :pswitch_3e
    const-string v0, "vnd.android.cursor.item/photo"

    goto :goto_17

    .line 2082
    :pswitch_41
    const-string v0, "vnd.android.cursor.dir/contact-methods"

    goto :goto_17

    .line 2084
    :pswitch_44
    invoke-direct {p0, p1}, Lcom/android/providers/contacts/LegacyApiSupport;->getContactMethodType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    goto :goto_17

    .line 2086
    :pswitch_49
    const-string v0, "vnd.android.cursor.dir/organizations"

    goto :goto_17

    .line 2088
    :pswitch_4c
    const-string v0, "vnd.android.cursor.item/organization"

    goto :goto_17

    .line 2090
    :pswitch_4f
    const-string v0, "vnd.android.cursor.dir/vnd.android.search.suggest"

    goto :goto_17

    .line 2092
    :pswitch_52
    const-string v0, "vnd.android.cursor.item/vnd.android.search.suggest"

    goto :goto_17

    .line 2050
    nop

    :pswitch_data_56
    .packed-switch 0x1
        :pswitch_1b
        :pswitch_1e
        :pswitch_9
        :pswitch_49
        :pswitch_4c
        :pswitch_27
        :pswitch_2a
        :pswitch_41
        :pswitch_44
        :pswitch_21
        :pswitch_24
        :pswitch_2f
        :pswitch_32
        :pswitch_15
        :pswitch_18
        :pswitch_15
        :pswitch_18
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_3e
        :pswitch_3b
        :pswitch_38
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_4f
        :pswitch_52
        :pswitch_35
    .end packed-switch
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .registers 13
    .parameter "uri"
    .parameter "values"

    .prologue
    const/4 v9, 0x1

    .line 782
    invoke-direct {p0}, Lcom/android/providers/contacts/LegacyApiSupport;->ensureDefaultAccount()V

    .line 783
    sget-object v8, Lcom/android/providers/contacts/LegacyApiSupport;->sUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v8, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v4

    .line 784
    .local v4, match:I
    const-wide/16 v2, 0x0

    .line 785
    .local v2, id:J
    packed-switch v4, :pswitch_data_92

    .line 840
    :pswitch_f
    new-instance v8, Ljava/lang/UnsupportedOperationException;

    iget-object v9, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    invoke-virtual {v9, p1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->exceptionMessage(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 787
    :pswitch_1b
    invoke-direct {p0, p2}, Lcom/android/providers/contacts/LegacyApiSupport;->insertPeople(Landroid/content/ContentValues;)J

    move-result-wide v2

    .line 843
    :goto_1f
    const-wide/16 v8, 0x0

    cmp-long v8, v2, v8

    if-gez v8, :cond_89

    .line 844
    const/4 v7, 0x0

    .line 849
    :goto_26
    return-object v7

    .line 791
    :pswitch_27
    invoke-direct {p0, p2}, Lcom/android/providers/contacts/LegacyApiSupport;->insertOrganization(Landroid/content/ContentValues;)J

    move-result-wide v2

    .line 792
    goto :goto_1f

    .line 795
    :pswitch_2c
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-static {v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    .line 796
    .local v5, rawContactId:J
    invoke-direct {p0, v5, v6, p2}, Lcom/android/providers/contacts/LegacyApiSupport;->insertContactMethod(JLandroid/content/ContentValues;)J

    move-result-wide v2

    .line 797
    goto :goto_1f

    .line 801
    .end local v5           #rawContactId:J
    :pswitch_3f
    const-string v8, "person"

    invoke-direct {p0, p2, v8}, Lcom/android/providers/contacts/LegacyApiSupport;->getRequiredValue(Landroid/content/ContentValues;Ljava/lang/String;)J

    move-result-wide v5

    .line 802
    .restart local v5       #rawContactId:J
    invoke-direct {p0, v5, v6, p2}, Lcom/android/providers/contacts/LegacyApiSupport;->insertContactMethod(JLandroid/content/ContentValues;)J

    move-result-wide v2

    .line 803
    goto :goto_1f

    .line 807
    .end local v5           #rawContactId:J
    :pswitch_4a
    const-string v8, "person"

    invoke-direct {p0, p2, v8}, Lcom/android/providers/contacts/LegacyApiSupport;->getRequiredValue(Landroid/content/ContentValues;Ljava/lang/String;)J

    move-result-wide v5

    .line 809
    .restart local v5       #rawContactId:J
    invoke-direct {p0, v5, v6, p2}, Lcom/android/providers/contacts/LegacyApiSupport;->insertPhone(JLandroid/content/ContentValues;)J

    move-result-wide v2

    .line 810
    goto :goto_1f

    .line 814
    .end local v5           #rawContactId:J
    :pswitch_55
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-static {v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    .line 815
    .restart local v5       #rawContactId:J
    invoke-direct {p0, v5, v6, p2}, Lcom/android/providers/contacts/LegacyApiSupport;->insertPhone(JLandroid/content/ContentValues;)J

    move-result-wide v2

    .line 816
    goto :goto_1f

    .line 820
    .end local v5           #rawContactId:J
    :pswitch_68
    const-string v8, "person"

    invoke-direct {p0, p2, v8}, Lcom/android/providers/contacts/LegacyApiSupport;->getRequiredValue(Landroid/content/ContentValues;Ljava/lang/String;)J

    move-result-wide v5

    .line 822
    .restart local v5       #rawContactId:J
    invoke-direct {p0, v5, v6, p2}, Lcom/android/providers/contacts/LegacyApiSupport;->insertExtension(JLandroid/content/ContentValues;)J

    move-result-wide v2

    .line 823
    goto :goto_1f

    .line 827
    .end local v5           #rawContactId:J
    :pswitch_73
    invoke-direct {p0, p2}, Lcom/android/providers/contacts/LegacyApiSupport;->insertGroup(Landroid/content/ContentValues;)J

    move-result-wide v2

    .line 828
    goto :goto_1f

    .line 831
    :pswitch_78
    const-string v8, "person"

    invoke-direct {p0, p2, v8}, Lcom/android/providers/contacts/LegacyApiSupport;->getRequiredValue(Landroid/content/ContentValues;Ljava/lang/String;)J

    move-result-wide v5

    .line 833
    .restart local v5       #rawContactId:J
    const-string v8, "group_id"

    invoke-direct {p0, p2, v8}, Lcom/android/providers/contacts/LegacyApiSupport;->getRequiredValue(Landroid/content/ContentValues;Ljava/lang/String;)J

    move-result-wide v0

    .line 835
    .local v0, groupId:J
    invoke-direct {p0, v5, v6, v0, v1}, Lcom/android/providers/contacts/LegacyApiSupport;->insertGroupMembership(JJ)J

    move-result-wide v2

    .line 836
    goto :goto_1f

    .line 847
    .end local v0           #groupId:J
    .end local v5           #rawContactId:J
    :cond_89
    invoke-static {p1, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v7

    .line 848
    .local v7, result:Landroid/net/Uri;
    invoke-direct {p0, v7}, Lcom/android/providers/contacts/LegacyApiSupport;->onChange(Landroid/net/Uri;)V

    goto :goto_26

    .line 785
    nop

    :pswitch_data_92
    .packed-switch 0x1
        :pswitch_1b
        :pswitch_f
        :pswitch_f
        :pswitch_27
        :pswitch_f
        :pswitch_2c
        :pswitch_f
        :pswitch_3f
        :pswitch_f
        :pswitch_55
        :pswitch_f
        :pswitch_4a
        :pswitch_f
        :pswitch_68
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_73
        :pswitch_f
        :pswitch_78
    .end packed-switch
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .registers 16
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x0

    const/4 v6, 0x2

    const/4 v3, 0x3

    const/4 v4, 0x1

    .line 1612
    invoke-direct {p0}, Lcom/android/providers/contacts/LegacyApiSupport;->ensureDefaultAccount()V

    .line 1614
    iget-object v0, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    invoke-virtual {v0}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 1615
    new-instance v0, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v0}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 1618
    sget-object v2, Lcom/android/providers/contacts/LegacyApiSupport;->sUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v2, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v2

    .line 1619
    packed-switch v2, :pswitch_data_4fe

    .line 1918
    :pswitch_1b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    iget-object v1, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    invoke-virtual {v1, p1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->exceptionMessage(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1621
    :pswitch_27
    const-string v2, "view_v1_people people  LEFT OUTER JOIN presence ON (presence.presence_data_id=(SELECT MAX(presence_data_id) FROM presence WHERE people._id = presence_raw_contact_id) )"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 1622
    sget-object v2, Lcom/android/providers/contacts/LegacyApiSupport;->sPeopleProjectionMap:Ljava/util/HashMap;

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 1623
    invoke-direct {p0, v0}, Lcom/android/providers/contacts/LegacyApiSupport;->applyRawContactsAccount(Landroid/database/sqlite/SQLiteQueryBuilder;)V

    move-object v8, p6

    :goto_35
    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v6, v5

    move-object v7, p5

    .line 1922
    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 1924
    if-eqz v0, :cond_4b

    .line 1925
    iget-object v1, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-interface {v0, v1, v2}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    .line 1928
    :cond_4b
    :goto_4b
    return-object v0

    .line 1628
    :pswitch_4c
    const-string v2, "view_v1_people people  LEFT OUTER JOIN presence ON (presence.presence_data_id=(SELECT MAX(presence_data_id) FROM presence WHERE people._id = presence_raw_contact_id) )"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 1629
    sget-object v2, Lcom/android/providers/contacts/LegacyApiSupport;->sPeopleProjectionMap:Ljava/util/HashMap;

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 1630
    invoke-direct {p0, v0}, Lcom/android/providers/contacts/LegacyApiSupport;->applyRawContactsAccount(Landroid/database/sqlite/SQLiteQueryBuilder;)V

    .line 1631
    const-string v2, " AND _id="

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 1632
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    move-object v8, p6

    .line 1633
    goto :goto_35

    .line 1636
    :pswitch_6d
    const-string v2, "view_v1_people people  LEFT OUTER JOIN presence ON (presence.presence_data_id=(SELECT MAX(presence_data_id) FROM presence WHERE people._id = presence_raw_contact_id) )"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 1637
    sget-object v2, Lcom/android/providers/contacts/LegacyApiSupport;->sPeopleProjectionMap:Ljava/util/HashMap;

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 1638
    invoke-direct {p0, v0}, Lcom/android/providers/contacts/LegacyApiSupport;->applyRawContactsAccount(Landroid/database/sqlite/SQLiteQueryBuilder;)V

    .line 1639
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1640
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " AND _id IN "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0, v2}, Lcom/android/providers/contacts/LegacyApiSupport;->getRawContactsByFilterAsNestedQuery(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    move-object v8, p6

    .line 1642
    goto :goto_35

    .line 1646
    :pswitch_a0
    const-string v2, "view_v1_people people  LEFT OUTER JOIN presence ON (presence.presence_data_id=(SELECT MAX(presence_data_id) FROM presence WHERE people._id = presence_raw_contact_id) )"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 1647
    sget-object v2, Lcom/android/providers/contacts/LegacyApiSupport;->sPeopleProjectionMap:Ljava/util/HashMap;

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 1648
    invoke-direct {p0, v0}, Lcom/android/providers/contacts/LegacyApiSupport;->applyRawContactsAccount(Landroid/database/sqlite/SQLiteQueryBuilder;)V

    .line 1649
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1650
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " AND "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0, v2}, Lcom/android/providers/contacts/LegacyApiSupport;->buildGroupNameMatchWhereClause(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    move-object v8, p6

    .line 1651
    goto/16 :goto_35

    .line 1654
    :pswitch_d4
    const-string v2, "view_v1_people people  LEFT OUTER JOIN presence ON (presence.presence_data_id=(SELECT MAX(presence_data_id) FROM presence WHERE people._id = presence_raw_contact_id) )"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 1655
    sget-object v2, Lcom/android/providers/contacts/LegacyApiSupport;->sPeopleProjectionMap:Ljava/util/HashMap;

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 1656
    invoke-direct {p0, v0}, Lcom/android/providers/contacts/LegacyApiSupport;->applyRawContactsAccount(Landroid/database/sqlite/SQLiteQueryBuilder;)V

    .line 1657
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1658
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " AND "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0, v2}, Lcom/android/providers/contacts/LegacyApiSupport;->buildGroupSystemIdMatchWhereClause(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    move-object v8, p6

    .line 1659
    goto/16 :goto_35

    .line 1662
    :pswitch_108
    const-string v2, "view_v1_organizations organizations"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 1663
    sget-object v2, Lcom/android/providers/contacts/LegacyApiSupport;->sOrganizationProjectionMap:Ljava/util/HashMap;

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 1664
    invoke-direct {p0, v0}, Lcom/android/providers/contacts/LegacyApiSupport;->applyRawContactsAccount(Landroid/database/sqlite/SQLiteQueryBuilder;)V

    move-object v8, p6

    .line 1665
    goto/16 :goto_35

    .line 1668
    :pswitch_118
    const-string v2, "view_v1_organizations organizations"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 1669
    sget-object v2, Lcom/android/providers/contacts/LegacyApiSupport;->sOrganizationProjectionMap:Ljava/util/HashMap;

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 1670
    invoke-direct {p0, v0}, Lcom/android/providers/contacts/LegacyApiSupport;->applyRawContactsAccount(Landroid/database/sqlite/SQLiteQueryBuilder;)V

    .line 1671
    const-string v2, " AND _id="

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 1672
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    move-object v8, p6

    .line 1673
    goto/16 :goto_35

    .line 1676
    :pswitch_13a
    const-string v2, "view_v1_organizations organizations"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 1677
    sget-object v2, Lcom/android/providers/contacts/LegacyApiSupport;->sOrganizationProjectionMap:Ljava/util/HashMap;

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 1678
    invoke-direct {p0, v0}, Lcom/android/providers/contacts/LegacyApiSupport;->applyRawContactsAccount(Landroid/database/sqlite/SQLiteQueryBuilder;)V

    .line 1679
    const-string v2, " AND person="

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 1680
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    move-object v8, p6

    .line 1681
    goto/16 :goto_35

    .line 1684
    :pswitch_15c
    const-string v2, "view_v1_organizations organizations"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 1685
    sget-object v2, Lcom/android/providers/contacts/LegacyApiSupport;->sOrganizationProjectionMap:Ljava/util/HashMap;

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 1686
    invoke-direct {p0, v0}, Lcom/android/providers/contacts/LegacyApiSupport;->applyRawContactsAccount(Landroid/database/sqlite/SQLiteQueryBuilder;)V

    .line 1687
    const-string v2, " AND person="

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 1688
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 1689
    const-string v2, " AND _id="

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 1690
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    move-object v8, p6

    .line 1691
    goto/16 :goto_35

    .line 1694
    :pswitch_190
    const-string v2, "view_v1_contact_methods contact_methods"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 1695
    sget-object v2, Lcom/android/providers/contacts/LegacyApiSupport;->sContactMethodProjectionMap:Ljava/util/HashMap;

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 1696
    invoke-direct {p0, v0}, Lcom/android/providers/contacts/LegacyApiSupport;->applyRawContactsAccount(Landroid/database/sqlite/SQLiteQueryBuilder;)V

    move-object v8, p6

    .line 1697
    goto/16 :goto_35

    .line 1700
    :pswitch_1a0
    const-string v2, "view_v1_contact_methods contact_methods"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 1701
    sget-object v2, Lcom/android/providers/contacts/LegacyApiSupport;->sContactMethodProjectionMap:Ljava/util/HashMap;

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 1702
    invoke-direct {p0, v0}, Lcom/android/providers/contacts/LegacyApiSupport;->applyRawContactsAccount(Landroid/database/sqlite/SQLiteQueryBuilder;)V

    .line 1703
    const-string v2, " AND _id="

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 1704
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    move-object v8, p6

    .line 1705
    goto/16 :goto_35

    .line 1708
    :pswitch_1c2
    const-string v2, "view_v1_contact_methods contact_methods"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 1709
    sget-object v2, Lcom/android/providers/contacts/LegacyApiSupport;->sContactMethodProjectionMap:Ljava/util/HashMap;

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 1710
    invoke-direct {p0, v0}, Lcom/android/providers/contacts/LegacyApiSupport;->applyRawContactsAccount(Landroid/database/sqlite/SQLiteQueryBuilder;)V

    .line 1711
    const-string v2, " AND kind=1"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    move-object v8, p6

    .line 1713
    goto/16 :goto_35

    .line 1716
    :pswitch_1d7
    const-string v2, "view_v1_contact_methods contact_methods"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 1717
    sget-object v2, Lcom/android/providers/contacts/LegacyApiSupport;->sContactMethodProjectionMap:Ljava/util/HashMap;

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 1718
    invoke-direct {p0, v0}, Lcom/android/providers/contacts/LegacyApiSupport;->applyRawContactsAccount(Landroid/database/sqlite/SQLiteQueryBuilder;)V

    .line 1719
    const-string v2, " AND person="

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 1720
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 1721
    const-string v2, " AND kind IS NOT NULL"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    move-object v8, p6

    .line 1722
    goto/16 :goto_35

    .line 1725
    :pswitch_1fe
    const-string v2, "view_v1_contact_methods contact_methods"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 1726
    sget-object v2, Lcom/android/providers/contacts/LegacyApiSupport;->sContactMethodProjectionMap:Ljava/util/HashMap;

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 1727
    invoke-direct {p0, v0}, Lcom/android/providers/contacts/LegacyApiSupport;->applyRawContactsAccount(Landroid/database/sqlite/SQLiteQueryBuilder;)V

    .line 1728
    const-string v2, " AND person="

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 1729
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 1730
    const-string v2, " AND _id="

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 1731
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 1732
    const-string v2, " AND kind IS NOT NULL"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    move-object v8, p6

    .line 1733
    goto/16 :goto_35

    .line 1736
    :pswitch_237
    const-string v2, "view_v1_phones phones"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 1737
    sget-object v2, Lcom/android/providers/contacts/LegacyApiSupport;->sPhoneProjectionMap:Ljava/util/HashMap;

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 1738
    invoke-direct {p0, v0}, Lcom/android/providers/contacts/LegacyApiSupport;->applyRawContactsAccount(Landroid/database/sqlite/SQLiteQueryBuilder;)V

    move-object v8, p6

    .line 1739
    goto/16 :goto_35

    .line 1742
    :pswitch_247
    const-string v2, "view_v1_phones phones"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 1743
    sget-object v2, Lcom/android/providers/contacts/LegacyApiSupport;->sPhoneProjectionMap:Ljava/util/HashMap;

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 1744
    invoke-direct {p0, v0}, Lcom/android/providers/contacts/LegacyApiSupport;->applyRawContactsAccount(Landroid/database/sqlite/SQLiteQueryBuilder;)V

    .line 1745
    const-string v2, " AND _id="

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 1746
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    move-object v8, p6

    .line 1747
    goto/16 :goto_35

    .line 1750
    :pswitch_269
    const-string v2, "view_v1_phones phones"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 1751
    sget-object v2, Lcom/android/providers/contacts/LegacyApiSupport;->sPhoneProjectionMap:Ljava/util/HashMap;

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 1752
    invoke-direct {p0, v0}, Lcom/android/providers/contacts/LegacyApiSupport;->applyRawContactsAccount(Landroid/database/sqlite/SQLiteQueryBuilder;)V

    .line 1753
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-le v2, v6, :cond_4fb

    .line 1754
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v2

    .line 1755
    const-string v3, " AND person ="

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 1756
    iget-object v3, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    invoke-virtual {v3, v2}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->buildPhoneLookupAsNestedQuery(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 1757
    invoke-virtual {v0, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->setDistinct(Z)V

    move-object v8, p6

    .line 1758
    goto/16 :goto_35

    .line 1762
    :pswitch_298
    const-string v2, "view_v1_phones phones"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 1763
    sget-object v2, Lcom/android/providers/contacts/LegacyApiSupport;->sPhoneProjectionMap:Ljava/util/HashMap;

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 1764
    invoke-direct {p0, v0}, Lcom/android/providers/contacts/LegacyApiSupport;->applyRawContactsAccount(Landroid/database/sqlite/SQLiteQueryBuilder;)V

    .line 1765
    const-string v2, " AND person="

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 1766
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    move-object v8, p6

    .line 1767
    goto/16 :goto_35

    .line 1770
    :pswitch_2ba
    const-string v2, "view_v1_phones phones"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 1771
    sget-object v2, Lcom/android/providers/contacts/LegacyApiSupport;->sPhoneProjectionMap:Ljava/util/HashMap;

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 1772
    invoke-direct {p0, v0}, Lcom/android/providers/contacts/LegacyApiSupport;->applyRawContactsAccount(Landroid/database/sqlite/SQLiteQueryBuilder;)V

    .line 1773
    const-string v2, " AND person="

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 1774
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 1775
    const-string v2, " AND _id="

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 1776
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    move-object v8, p6

    .line 1777
    goto/16 :goto_35

    .line 1780
    :pswitch_2ee
    const-string v2, "view_v1_extensions extensions"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 1781
    sget-object v2, Lcom/android/providers/contacts/LegacyApiSupport;->sExtensionProjectionMap:Ljava/util/HashMap;

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 1782
    invoke-direct {p0, v0}, Lcom/android/providers/contacts/LegacyApiSupport;->applyRawContactsAccount(Landroid/database/sqlite/SQLiteQueryBuilder;)V

    move-object v8, p6

    .line 1783
    goto/16 :goto_35

    .line 1786
    :pswitch_2fe
    const-string v2, "view_v1_extensions extensions"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 1787
    sget-object v2, Lcom/android/providers/contacts/LegacyApiSupport;->sExtensionProjectionMap:Ljava/util/HashMap;

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 1788
    invoke-direct {p0, v0}, Lcom/android/providers/contacts/LegacyApiSupport;->applyRawContactsAccount(Landroid/database/sqlite/SQLiteQueryBuilder;)V

    .line 1789
    const-string v2, " AND _id="

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 1790
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    move-object v8, p6

    .line 1791
    goto/16 :goto_35

    .line 1794
    :pswitch_320
    const-string v2, "view_v1_extensions extensions"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 1795
    sget-object v2, Lcom/android/providers/contacts/LegacyApiSupport;->sExtensionProjectionMap:Ljava/util/HashMap;

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 1796
    invoke-direct {p0, v0}, Lcom/android/providers/contacts/LegacyApiSupport;->applyRawContactsAccount(Landroid/database/sqlite/SQLiteQueryBuilder;)V

    .line 1797
    const-string v2, " AND person="

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 1798
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    move-object v8, p6

    .line 1799
    goto/16 :goto_35

    .line 1802
    :pswitch_342
    const-string v2, "view_v1_extensions extensions"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 1803
    sget-object v2, Lcom/android/providers/contacts/LegacyApiSupport;->sExtensionProjectionMap:Ljava/util/HashMap;

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 1804
    invoke-direct {p0, v0}, Lcom/android/providers/contacts/LegacyApiSupport;->applyRawContactsAccount(Landroid/database/sqlite/SQLiteQueryBuilder;)V

    .line 1805
    const-string v2, " AND person="

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 1806
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 1807
    const-string v2, " AND _id="

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 1808
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    move-object v8, p6

    .line 1809
    goto/16 :goto_35

    .line 1812
    :pswitch_376
    const-string v2, "view_v1_groups groups"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 1813
    sget-object v2, Lcom/android/providers/contacts/LegacyApiSupport;->sGroupProjectionMap:Ljava/util/HashMap;

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 1814
    invoke-direct {p0, v0}, Lcom/android/providers/contacts/LegacyApiSupport;->applyGroupAccount(Landroid/database/sqlite/SQLiteQueryBuilder;)V

    move-object v8, p6

    .line 1815
    goto/16 :goto_35

    .line 1818
    :pswitch_386
    const-string v2, "view_v1_groups groups"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 1819
    sget-object v2, Lcom/android/providers/contacts/LegacyApiSupport;->sGroupProjectionMap:Ljava/util/HashMap;

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 1820
    invoke-direct {p0, v0}, Lcom/android/providers/contacts/LegacyApiSupport;->applyGroupAccount(Landroid/database/sqlite/SQLiteQueryBuilder;)V

    .line 1821
    const-string v2, " AND _id="

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 1822
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    move-object v8, p6

    .line 1823
    goto/16 :goto_35

    .line 1826
    :pswitch_3a8
    const-string v2, "view_v1_group_membership groupmembership"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 1827
    sget-object v2, Lcom/android/providers/contacts/LegacyApiSupport;->sGroupMembershipProjectionMap:Ljava/util/HashMap;

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 1828
    invoke-direct {p0, v0}, Lcom/android/providers/contacts/LegacyApiSupport;->applyRawContactsAccount(Landroid/database/sqlite/SQLiteQueryBuilder;)V

    move-object v8, p6

    .line 1829
    goto/16 :goto_35

    .line 1832
    :pswitch_3b8
    const-string v2, "view_v1_group_membership groupmembership"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 1833
    sget-object v2, Lcom/android/providers/contacts/LegacyApiSupport;->sGroupMembershipProjectionMap:Ljava/util/HashMap;

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 1834
    invoke-direct {p0, v0}, Lcom/android/providers/contacts/LegacyApiSupport;->applyRawContactsAccount(Landroid/database/sqlite/SQLiteQueryBuilder;)V

    .line 1835
    const-string v2, " AND _id="

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 1836
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    move-object v8, p6

    .line 1837
    goto/16 :goto_35

    .line 1840
    :pswitch_3da
    const-string v2, "view_v1_group_membership groupmembership"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 1841
    sget-object v2, Lcom/android/providers/contacts/LegacyApiSupport;->sGroupMembershipProjectionMap:Ljava/util/HashMap;

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 1842
    invoke-direct {p0, v0}, Lcom/android/providers/contacts/LegacyApiSupport;->applyRawContactsAccount(Landroid/database/sqlite/SQLiteQueryBuilder;)V

    .line 1843
    const-string v2, " AND person="

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 1844
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    move-object v8, p6

    .line 1845
    goto/16 :goto_35

    .line 1848
    :pswitch_3fc
    const-string v2, "view_v1_group_membership groupmembership"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 1849
    sget-object v2, Lcom/android/providers/contacts/LegacyApiSupport;->sGroupMembershipProjectionMap:Ljava/util/HashMap;

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 1850
    invoke-direct {p0, v0}, Lcom/android/providers/contacts/LegacyApiSupport;->applyRawContactsAccount(Landroid/database/sqlite/SQLiteQueryBuilder;)V

    .line 1851
    const-string v2, " AND person="

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 1852
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 1853
    const-string v2, " AND _id="

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 1854
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    move-object v8, p6

    .line 1855
    goto/16 :goto_35

    .line 1858
    :pswitch_430
    const-string v2, "view_v1_photos photos"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 1859
    sget-object v2, Lcom/android/providers/contacts/LegacyApiSupport;->sPhotoProjectionMap:Ljava/util/HashMap;

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 1860
    invoke-direct {p0, v0}, Lcom/android/providers/contacts/LegacyApiSupport;->applyRawContactsAccount(Landroid/database/sqlite/SQLiteQueryBuilder;)V

    .line 1861
    const-string v2, " AND person="

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 1862
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 1863
    const-string p6, "1"

    move-object v8, p6

    .line 1864
    goto/16 :goto_35

    .line 1867
    :pswitch_454
    const-string v2, "view_v1_photos photos"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 1868
    sget-object v2, Lcom/android/providers/contacts/LegacyApiSupport;->sPhotoProjectionMap:Ljava/util/HashMap;

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 1869
    invoke-direct {p0, v0}, Lcom/android/providers/contacts/LegacyApiSupport;->applyRawContactsAccount(Landroid/database/sqlite/SQLiteQueryBuilder;)V

    move-object v8, p6

    .line 1870
    goto/16 :goto_35

    .line 1873
    :pswitch_464
    const-string v2, "view_v1_photos photos"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 1874
    sget-object v2, Lcom/android/providers/contacts/LegacyApiSupport;->sPhotoProjectionMap:Ljava/util/HashMap;

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 1875
    invoke-direct {p0, v0}, Lcom/android/providers/contacts/LegacyApiSupport;->applyRawContactsAccount(Landroid/database/sqlite/SQLiteQueryBuilder;)V

    .line 1876
    const-string v2, " AND _id="

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 1877
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    move-object v8, p6

    .line 1878
    goto/16 :goto_35

    .line 1881
    :pswitch_486
    iget-object v0, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mGlobalSearchSupport:Lcom/android/providers/contacts/GlobalSearchSupport;

    invoke-virtual {v0, v1, p1, p2, p6}, Lcom/android/providers/contacts/GlobalSearchSupport;->handleSearchSuggestionsQuery(Landroid/database/sqlite/SQLiteDatabase;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    goto/16 :goto_4b

    .line 1885
    :pswitch_48e
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    .line 1886
    const-string v2, "filter"

    invoke-static {p1, v2}, Lcom/android/providers/contacts/ContactsProvider2;->getQueryParameter(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1887
    iget-object v3, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mGlobalSearchSupport:Lcom/android/providers/contacts/GlobalSearchSupport;

    invoke-virtual {v3, v1, p2, v0, v2}, Lcom/android/providers/contacts/GlobalSearchSupport;->handleSearchShortcutRefresh(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    goto/16 :goto_4b

    .line 1892
    :pswitch_4a0
    iget-object v0, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mContactsProvider:Lcom/android/providers/contacts/ContactsProvider2;

    sget-object v1, Lcom/android/providers/contacts/LegacyApiSupport;->LIVE_FOLDERS_CONTACTS_URI:Landroid/net/Uri;

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/android/providers/contacts/ContactsProvider2;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    goto/16 :goto_4b

    .line 1896
    :pswitch_4ae
    iget-object v0, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mContactsProvider:Lcom/android/providers/contacts/ContactsProvider2;

    sget-object v1, Lcom/android/providers/contacts/LegacyApiSupport;->LIVE_FOLDERS_CONTACTS_WITH_PHONES_URI:Landroid/net/Uri;

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/android/providers/contacts/ContactsProvider2;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    goto/16 :goto_4b

    .line 1900
    :pswitch_4bc
    iget-object v0, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mContactsProvider:Lcom/android/providers/contacts/ContactsProvider2;

    sget-object v1, Lcom/android/providers/contacts/LegacyApiSupport;->LIVE_FOLDERS_CONTACTS_FAVORITES_URI:Landroid/net/Uri;

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/android/providers/contacts/ContactsProvider2;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    goto/16 :goto_4b

    .line 1904
    :pswitch_4ca
    iget-object v0, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mContactsProvider:Lcom/android/providers/contacts/ContactsProvider2;

    sget-object v1, Lcom/android/providers/contacts/LegacyApiSupport;->LIVE_FOLDERS_CONTACTS_URI:Landroid/net/Uri;

    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/android/providers/contacts/ContactsProvider2;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    goto/16 :goto_4b

    .line 1910
    :pswitch_4e4
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    iget-object v1, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    invoke-virtual {v1, p1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->exceptionMessage(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1913
    :pswitch_4f0
    invoke-virtual {p0}, Lcom/android/providers/contacts/LegacyApiSupport;->copySettingsToLegacySettings()V

    .line 1914
    const-string v2, "v1_settings"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    move-object v8, p6

    .line 1915
    goto/16 :goto_35

    :cond_4fb
    move-object v8, p6

    goto/16 :goto_35

    .line 1619
    :pswitch_data_4fe
    .packed-switch 0x1
        :pswitch_27
        :pswitch_4c
        :pswitch_1b
        :pswitch_108
        :pswitch_118
        :pswitch_1d7
        :pswitch_1fe
        :pswitch_190
        :pswitch_1a0
        :pswitch_298
        :pswitch_2ba
        :pswitch_237
        :pswitch_247
        :pswitch_2ee
        :pswitch_2fe
        :pswitch_320
        :pswitch_342
        :pswitch_376
        :pswitch_386
        :pswitch_3a8
        :pswitch_3b8
        :pswitch_3da
        :pswitch_3fc
        :pswitch_430
        :pswitch_454
        :pswitch_464
        :pswitch_1b
        :pswitch_1b
        :pswitch_6d
        :pswitch_4e4
        :pswitch_4e4
        :pswitch_486
        :pswitch_48e
        :pswitch_269
        :pswitch_4a0
        :pswitch_4ca
        :pswitch_4ae
        :pswitch_4bc
        :pswitch_1c2
        :pswitch_a0
        :pswitch_d4
        :pswitch_13a
        :pswitch_15c
        :pswitch_4f0
    .end packed-switch
.end method

.method public update(IJLandroid/content/ContentValues;)I
    .registers 6
    .parameter "match"
    .parameter "id"
    .parameter "values"

    .prologue
    .line 1004
    const/4 v0, 0x0

    .line 1005
    .local v0, count:I
    packed-switch p1, :pswitch_data_28

    .line 1048
    :goto_4
    :pswitch_4
    return v0

    .line 1008
    :pswitch_5
    invoke-direct {p0, p2, p3, p4}, Lcom/android/providers/contacts/LegacyApiSupport;->updatePeople(JLandroid/content/ContentValues;)I

    move-result v0

    .line 1009
    goto :goto_4

    .line 1014
    :pswitch_a
    invoke-direct {p0, p2, p3, p4}, Lcom/android/providers/contacts/LegacyApiSupport;->updateOrganizations(JLandroid/content/ContentValues;)I

    move-result v0

    .line 1015
    goto :goto_4

    .line 1020
    :pswitch_f
    invoke-direct {p0, p2, p3, p4}, Lcom/android/providers/contacts/LegacyApiSupport;->updatePhones(JLandroid/content/ContentValues;)I

    move-result v0

    .line 1021
    goto :goto_4

    .line 1026
    :pswitch_14
    invoke-direct {p0, p2, p3, p4}, Lcom/android/providers/contacts/LegacyApiSupport;->updateContactMethods(JLandroid/content/ContentValues;)I

    move-result v0

    .line 1027
    goto :goto_4

    .line 1032
    :pswitch_19
    invoke-direct {p0, p2, p3, p4}, Lcom/android/providers/contacts/LegacyApiSupport;->updateExtensions(JLandroid/content/ContentValues;)I

    move-result v0

    .line 1033
    goto :goto_4

    .line 1038
    :pswitch_1e
    invoke-direct {p0, p2, p3, p4}, Lcom/android/providers/contacts/LegacyApiSupport;->updateGroups(JLandroid/content/ContentValues;)I

    move-result v0

    .line 1039
    goto :goto_4

    .line 1044
    :pswitch_23
    invoke-direct {p0, p2, p3, p4}, Lcom/android/providers/contacts/LegacyApiSupport;->updatePhotoByDataId(JLandroid/content/ContentValues;)I

    move-result v0

    goto :goto_4

    .line 1005
    :pswitch_data_28
    .packed-switch 0x1
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_a
        :pswitch_a
        :pswitch_4
        :pswitch_4
        :pswitch_14
        :pswitch_14
        :pswitch_4
        :pswitch_4
        :pswitch_f
        :pswitch_f
        :pswitch_19
        :pswitch_19
        :pswitch_4
        :pswitch_4
        :pswitch_1e
        :pswitch_1e
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_23
        :pswitch_23
    .end packed-switch
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 14
    .parameter "uri"
    .parameter "values"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    .line 946
    invoke-direct {p0}, Lcom/android/providers/contacts/LegacyApiSupport;->ensureDefaultAccount()V

    .line 948
    sget-object v0, Lcom/android/providers/contacts/LegacyApiSupport;->sUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v2

    .line 949
    .local v2, match:I
    const/4 v6, 0x0

    .line 950
    .local v6, count:I
    sparse-switch v2, :sswitch_data_4e

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    .line 972
    invoke-direct/range {v0 .. v5}, Lcom/android/providers/contacts/LegacyApiSupport;->updateAll(Landroid/net/Uri;ILandroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v6

    .line 976
    :goto_16
    if-lez v6, :cond_22

    .line 977
    iget-object v0, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    :cond_22
    move v0, v6

    .line 980
    :goto_23
    return v0

    .line 952
    :sswitch_24
    invoke-direct {p0, p1, p2}, Lcom/android/providers/contacts/LegacyApiSupport;->updateContactTime(Landroid/net/Uri;Landroid/content/ContentValues;)I

    move-result v6

    .line 953
    goto :goto_16

    .line 957
    :sswitch_29
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7

    .line 958
    .local v7, rawContactId:J
    invoke-direct {p0, v7, v8, p2}, Lcom/android/providers/contacts/LegacyApiSupport;->updatePhoto(JLandroid/content/ContentValues;)I

    move-result v0

    goto :goto_23

    .line 962
    .end local v7           #rawContactId:J
    :sswitch_3d
    invoke-direct {p0, p2}, Lcom/android/providers/contacts/LegacyApiSupport;->updateSettings(Landroid/content/ContentValues;)I

    move-result v0

    goto :goto_23

    .line 968
    :sswitch_42
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    iget-object v1, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    invoke-virtual {v1, p1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->exceptionMessage(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 950
    :sswitch_data_4e
    .sparse-switch
        -0x1 -> :sswitch_42
        0x3 -> :sswitch_24
        0x14 -> :sswitch_42
        0x15 -> :sswitch_42
        0x18 -> :sswitch_29
        0x2c -> :sswitch_3d
    .end sparse-switch
.end method
