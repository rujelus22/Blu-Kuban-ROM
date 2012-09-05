.class public Lcom/samsung/swift/service/phonebook/PhonebookPlugin;
.super Ljava/lang/Object;
.source "PhonebookPlugin.java"


# static fields
.field private static final GOOGLE:Ljava/lang/String; = "Google"

.field private static final GOOGLE_ACCOUNT:Ljava/lang/String; = "com.google"

.field private static final LOG_TAG:Ljava/lang/String; = null

.field private static final NOT_DELETED_WHERE_CLAUSE:Ljava/lang/String; = "deleted = 0"

.field private static final PHONE:Ljava/lang/String; = "Phone"

.field private static final PHONE_ACCOUNT:Ljava/lang/String; = "vnd.sec.contact.phone"

.field private static final PHONE_GOOGLE_URI:Landroid/net/Uri; = null

.field private static final PHOTO_MIME_TYPE_WHERE_CLAUSE:Ljava/lang/String; = "(mimetype=\'vnd.android.cursor.item/photo\' AND data15 IS NOT NULL)"

.field private static final SAMSUNG:Ljava/lang/String; = "Samsung"

.field private static final SAMSUNG_ACCOUNT:Ljava/lang/String; = "com.osp.app.signin"

.field private static final SIM:Ljava/lang/String; = "SIM"

.field private static final SIM_ACCOUNT:Ljava/lang/String; = "vnd.sec.contact.sim"

.field private static final SIM_URI:Landroid/net/Uri; = null

.field private static final SORT_ALPHA_ASC:I = 0x1

.field private static final SORT_ALPHA_DESC:I = 0x2

.field private static final SORT_ID_ASC:I = 0x3

.field private static final SORT_ID_DESC:I = 0x4

.field private static final STARRED_WHERE_CLAUSE:Ljava/lang/String; = "starred > 0"

.field private static final WITH_EMAILS_WHERE_CLAUSE:Ljava/lang/String; = "mimetype = \'vnd.android.cursor.item/email_v2\'"

.field private static final WITH_PHONE_NUMBER_WHERE_CLAUSE:Ljava/lang/String; = "mimetype = \'vnd.android.cursor.item/phone_v2\'"

.field private static final addrHash:I

.field private static androidVersion:I

.field private static final companyHash:I

.field private static final contactFields:[Ljava/lang/String;

.field private static final contentHash:I

.field private static final emailHash:I

.field private static final emptyAccountList:Lcom/samsung/swift/service/phonebook/AccountList;

.field private static final emptyLinkedHashMap:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/samsung/swift/service/phonebook/Contact;",
            ">;"
        }
    .end annotation
.end field

.field private static final emptyPage:Lcom/samsung/swift/service/phonebook/ContactPage;

.field private static final emptySet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private static final monitor:Ljava/lang/Object;

.field private static final nickHash:I

.field private static final noteHash:I

.field private static pbObserver:Lcom/samsung/swift/service/phonebook/PhoneBookContentObserver;

.field private static final phoneHash:I

.field private static final photoHash:I

.field private static final random:Ljava/util/Random;

.field protected static final refCounter:Lcom/samsung/swift/util/PeerRefCounter;

.field private static revision:Ljava/lang/String;

.field private static totalContacts:Ljava/lang/Integer;


# direct methods
.method static constructor <clinit>()V
    .registers 11

    .prologue
    const/4 v10, 0x4

    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 152
    new-instance v3, Ljava/util/Random;

    invoke-direct {v3}, Ljava/util/Random;-><init>()V

    sput-object v3, Lcom/samsung/swift/service/phonebook/PhonebookPlugin;->random:Ljava/util/Random;

    .line 153
    invoke-static {}, Lcom/samsung/swift/service/phonebook/PhonebookPlugin;->calcRandomRevision()Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/samsung/swift/service/phonebook/PhonebookPlugin;->revision:Ljava/lang/String;

    .line 158
    const-class v3, Lcom/samsung/swift/service/phonebook/PhonebookPlugin;

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/samsung/swift/service/phonebook/PhonebookPlugin;->LOG_TAG:Ljava/lang/String;

    .line 175
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    sput v3, Lcom/samsung/swift/service/phonebook/PhonebookPlugin;->androidVersion:I

    .line 178
    sget-object v3, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    sput-object v3, Lcom/samsung/swift/service/phonebook/PhonebookPlugin;->PHONE_GOOGLE_URI:Landroid/net/Uri;

    .line 181
    const-string v3, "content://com.android.contacts/raw_contacts/adn"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    sput-object v3, Lcom/samsung/swift/service/phonebook/PhonebookPlugin;->SIM_URI:Landroid/net/Uri;

    .line 184
    const-string v3, "vnd.android.cursor.item/name"

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    sput v3, Lcom/samsung/swift/service/phonebook/PhonebookPlugin;->contentHash:I

    .line 185
    const-string v3, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    sput v3, Lcom/samsung/swift/service/phonebook/PhonebookPlugin;->phoneHash:I

    .line 186
    const-string v3, "vnd.android.cursor.item/email_v2"

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    sput v3, Lcom/samsung/swift/service/phonebook/PhonebookPlugin;->emailHash:I

    .line 187
    const-string v3, "vnd.android.cursor.item/postal-address_v2"

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    sput v3, Lcom/samsung/swift/service/phonebook/PhonebookPlugin;->addrHash:I

    .line 188
    const-string v3, "vnd.android.cursor.item/photo"

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    sput v3, Lcom/samsung/swift/service/phonebook/PhonebookPlugin;->photoHash:I

    .line 189
    const-string v3, "vnd.android.cursor.item/organization"

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    sput v3, Lcom/samsung/swift/service/phonebook/PhonebookPlugin;->companyHash:I

    .line 190
    const-string v3, "vnd.android.cursor.item/nickname"

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    sput v3, Lcom/samsung/swift/service/phonebook/PhonebookPlugin;->nickHash:I

    .line 191
    const-string v3, "vnd.android.cursor.item/note"

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    sput v3, Lcom/samsung/swift/service/phonebook/PhonebookPlugin;->noteHash:I

    .line 202
    const/16 v3, 0x16

    new-array v3, v3, [Ljava/lang/String;

    const-string v4, "mimetype"

    aput-object v4, v3, v6

    const-string v4, "raw_contact_id"

    aput-object v4, v3, v7

    const-string v4, "display_name"

    aput-object v4, v3, v8

    const-string v4, "data2"

    aput-object v4, v3, v9

    const-string v4, "data3"

    aput-object v4, v3, v10

    const/4 v4, 0x5

    const-string v5, "data4"

    aput-object v5, v3, v4

    const/4 v4, 0x6

    const-string v5, "data6"

    aput-object v5, v3, v4

    const/4 v4, 0x7

    const-string v5, "data1"

    aput-object v5, v3, v4

    const/16 v4, 0x8

    const-string v5, "data4"

    aput-object v5, v3, v4

    const/16 v4, 0x9

    const-string v5, "data2"

    aput-object v5, v3, v4

    const/16 v4, 0xa

    const-string v5, "data1"

    aput-object v5, v3, v4

    const/16 v4, 0xb

    const-string v5, "data2"

    aput-object v5, v3, v4

    const/16 v4, 0xc

    const-string v5, "data4"

    aput-object v5, v3, v4

    const/16 v4, 0xd

    const-string v5, "data7"

    aput-object v5, v3, v4

    const/16 v4, 0xe

    const-string v5, "data9"

    aput-object v5, v3, v4

    const/16 v4, 0xf

    const-string v5, "data8"

    aput-object v5, v3, v4

    const/16 v4, 0x10

    const-string v5, "data10"

    aput-object v5, v3, v4

    const/16 v4, 0x11

    const-string v5, "data2"

    aput-object v5, v3, v4

    const/16 v4, 0x12

    const-string v5, "data1"

    aput-object v5, v3, v4

    const/16 v4, 0x13

    const-string v5, "is_super_primary"

    aput-object v5, v3, v4

    const/16 v4, 0x14

    const-string v5, "data2"

    aput-object v5, v3, v4

    const/16 v4, 0x15

    const-string v5, "data1"

    aput-object v5, v3, v4

    sput-object v3, Lcom/samsung/swift/service/phonebook/PhonebookPlugin;->contactFields:[Ljava/lang/String;

    .line 228
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3, v6}, Ljava/util/HashSet;-><init>(I)V

    sput-object v3, Lcom/samsung/swift/service/phonebook/PhonebookPlugin;->emptySet:Ljava/util/Set;

    .line 229
    new-instance v3, Ljava/util/LinkedHashMap;

    invoke-direct {v3, v6}, Ljava/util/LinkedHashMap;-><init>(I)V

    sput-object v3, Lcom/samsung/swift/service/phonebook/PhonebookPlugin;->emptyLinkedHashMap:Ljava/util/LinkedHashMap;

    .line 230
    new-instance v3, Lcom/samsung/swift/service/phonebook/ContactPage;

    invoke-direct {v3}, Lcom/samsung/swift/service/phonebook/ContactPage;-><init>()V

    sput-object v3, Lcom/samsung/swift/service/phonebook/PhonebookPlugin;->emptyPage:Lcom/samsung/swift/service/phonebook/ContactPage;

    .line 231
    new-instance v3, Ljava/lang/Object;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    sput-object v3, Lcom/samsung/swift/service/phonebook/PhonebookPlugin;->monitor:Ljava/lang/Object;

    .line 232
    new-instance v3, Lcom/samsung/swift/service/phonebook/AccountList;

    invoke-direct {v3}, Lcom/samsung/swift/service/phonebook/AccountList;-><init>()V

    sput-object v3, Lcom/samsung/swift/service/phonebook/PhonebookPlugin;->emptyAccountList:Lcom/samsung/swift/service/phonebook/AccountList;

    .line 233
    new-instance v3, Lcom/samsung/swift/util/PeerRefCounter;

    invoke-direct {v3}, Lcom/samsung/swift/util/PeerRefCounter;-><init>()V

    sput-object v3, Lcom/samsung/swift/service/phonebook/PhonebookPlugin;->refCounter:Lcom/samsung/swift/util/PeerRefCounter;

    .line 237
    const/16 v3, 0x8

    new-array v0, v3, [I

    sget v3, Lcom/samsung/swift/service/phonebook/PhonebookPlugin;->contentHash:I

    aput v3, v0, v6

    sget v3, Lcom/samsung/swift/service/phonebook/PhonebookPlugin;->phoneHash:I

    aput v3, v0, v7

    sget v3, Lcom/samsung/swift/service/phonebook/PhonebookPlugin;->emailHash:I

    aput v3, v0, v8

    sget v3, Lcom/samsung/swift/service/phonebook/PhonebookPlugin;->addrHash:I

    aput v3, v0, v9

    sget v3, Lcom/samsung/swift/service/phonebook/PhonebookPlugin;->photoHash:I

    aput v3, v0, v10

    const/4 v3, 0x5

    sget v4, Lcom/samsung/swift/service/phonebook/PhonebookPlugin;->companyHash:I

    aput v4, v0, v3

    const/4 v3, 0x6

    sget v4, Lcom/samsung/swift/service/phonebook/PhonebookPlugin;->nickHash:I

    aput v4, v0, v3

    const/4 v3, 0x7

    sget v4, Lcom/samsung/swift/service/phonebook/PhonebookPlugin;->noteHash:I

    aput v4, v0, v3

    .line 239
    .local v0, anArray:[I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_139
    array-length v3, v0

    if-ge v1, v3, :cond_155

    .line 241
    add-int/lit8 v2, v1, 0x1

    .local v2, j:I
    :goto_13e
    array-length v3, v0

    if-ge v2, v3, :cond_152

    .line 243
    aget v3, v0, v1

    aget v4, v0, v2

    if-ne v3, v4, :cond_14f

    .line 245
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Hash Code Exceptions - Same hash code generated!"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 241
    :cond_14f
    add-int/lit8 v2, v2, 0x1

    goto :goto_13e

    .line 239
    :cond_152
    add-int/lit8 v1, v1, 0x1

    goto :goto_139

    .line 251
    .end local v2           #j:I
    :cond_155
    const/4 v3, -0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    sput-object v3, Lcom/samsung/swift/service/phonebook/PhonebookPlugin;->totalContacts:Ljava/lang/Integer;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 148
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static accountList()Lcom/samsung/swift/service/phonebook/AccountList;
    .registers 17

    .prologue
    .line 2114
    invoke-static {}, Lcom/samsung/swift/service/phonebook/PhonebookPlugin;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 2116
    .local v0, cr:Landroid/content/ContentResolver;
    const/4 v8, 0x0

    .line 2118
    .local v8, accountList:Lcom/samsung/swift/service/phonebook/AccountList;
    const/4 v6, 0x0

    .line 2120
    .local v6, account:Lcom/samsung/swift/service/phonebook/Account;
    invoke-static {}, Lcom/samsung/swift/service/SwiftService;->instance()Lcom/samsung/swift/service/SwiftService;

    move-result-object v1

    const-string v2, "phone"

    invoke-virtual {v1, v2}, Lcom/samsung/swift/service/SwiftService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/telephony/TelephonyManager;

    .line 2122
    .local v16, tm:Landroid/telephony/TelephonyManager;
    const/4 v14, 0x0

    .line 2126
    .local v14, pCur:Landroid/database/Cursor;
    :try_start_13
    sget-object v1, Landroid/provider/ContactsContract$Settings;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "account_name"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "account_type"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v14

    .line 2129
    if-eqz v14, :cond_12d

    .line 2131
    invoke-interface {v14}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_107

    .line 2133
    new-instance v9, Lcom/samsung/swift/service/phonebook/AccountList;

    invoke-interface {v14}, Landroid/database/Cursor;->getCount()I

    move-result v1

    invoke-direct {v9, v1}, Lcom/samsung/swift/service/phonebook/AccountList;-><init>(I)V
    :try_end_3a
    .catchall {:try_start_13 .. :try_end_3a} :catchall_13d

    .end local v8           #accountList:Lcom/samsung/swift/service/phonebook/AccountList;
    .local v9, accountList:Lcom/samsung/swift/service/phonebook/AccountList;
    move-object v7, v6

    .line 2137
    .end local v6           #account:Lcom/samsung/swift/service/phonebook/Account;
    .local v7, account:Lcom/samsung/swift/service/phonebook/Account;
    :goto_3b
    :try_start_3b
    new-instance v6, Lcom/samsung/swift/service/phonebook/Account;

    invoke-direct {v6}, Lcom/samsung/swift/service/phonebook/Account;-><init>()V
    :try_end_40
    .catchall {:try_start_3b .. :try_end_40} :catchall_140

    .line 2139
    .end local v7           #account:Lcom/samsung/swift/service/phonebook/Account;
    .restart local v6       #account:Lcom/samsung/swift/service/phonebook/Account;
    :try_start_40
    const-string v1, "account_name"

    invoke-interface {v14, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v14, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 2140
    .local v10, accountName:Ljava/lang/String;
    const-string v1, "account_type"

    invoke-interface {v14, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v14, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 2142
    .local v11, accountType:Ljava/lang/String;
    const-string v1, "vnd.sec.contact.phone"

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9a

    .line 2144
    const-string v1, "Phone"

    invoke-virtual {v6, v1}, Lcom/samsung/swift/service/phonebook/Account;->setName(Ljava/lang/String;)V

    .line 2145
    const-string v1, "Phone"

    invoke-virtual {v6, v1}, Lcom/samsung/swift/service/phonebook/Account;->setType(Ljava/lang/String;)V

    .line 2176
    :goto_66
    invoke-virtual {v9, v6}, Lcom/samsung/swift/service/phonebook/AccountList;->add(Lcom/samsung/swift/service/phonebook/Account;)V

    .line 2178
    :cond_69
    invoke-interface {v14}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_145

    .line 2180
    invoke-static {}, Lcom/samsung/swift/Swift;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v1

    const-string v2, "com.google"

    invoke-virtual {v1, v2}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;
    :try_end_7c
    .catchall {:try_start_40 .. :try_end_7c} :catchall_b8

    move-result-object v12

    .line 2182
    .local v12, googleAccount:[Landroid/accounts/Account;
    const/4 v13, 0x0

    .local v13, i:I
    move-object v7, v6

    .end local v6           #account:Lcom/samsung/swift/service/phonebook/Account;
    .restart local v7       #account:Lcom/samsung/swift/service/phonebook/Account;
    :goto_7f
    :try_start_7f
    array-length v1, v12

    if-ge v13, v1, :cond_d5

    .line 2184
    new-instance v6, Lcom/samsung/swift/service/phonebook/Account;

    invoke-direct {v6}, Lcom/samsung/swift/service/phonebook/Account;-><init>()V
    :try_end_87
    .catchall {:try_start_7f .. :try_end_87} :catchall_140

    .line 2186
    .end local v7           #account:Lcom/samsung/swift/service/phonebook/Account;
    .restart local v6       #account:Lcom/samsung/swift/service/phonebook/Account;
    :try_start_87
    aget-object v1, v12, v13

    iget-object v1, v1, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v6, v1}, Lcom/samsung/swift/service/phonebook/Account;->setName(Ljava/lang/String;)V

    .line 2187
    const-string v1, "Google"

    invoke-virtual {v6, v1}, Lcom/samsung/swift/service/phonebook/Account;->setType(Ljava/lang/String;)V

    .line 2189
    invoke-virtual {v9, v6}, Lcom/samsung/swift/service/phonebook/AccountList;->add(Lcom/samsung/swift/service/phonebook/Account;)V

    .line 2182
    add-int/lit8 v13, v13, 0x1

    move-object v7, v6

    .end local v6           #account:Lcom/samsung/swift/service/phonebook/Account;
    .restart local v7       #account:Lcom/samsung/swift/service/phonebook/Account;
    goto :goto_7f

    .line 2147
    .end local v7           #account:Lcom/samsung/swift/service/phonebook/Account;
    .end local v12           #googleAccount:[Landroid/accounts/Account;
    .end local v13           #i:I
    .restart local v6       #account:Lcom/samsung/swift/service/phonebook/Account;
    :cond_9a
    const-string v1, "vnd.sec.contact.sim"

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c0

    .line 2150
    sget-boolean v1, Lcom/samsung/swift/service/phonebook/PhonebookInterfaceManager;->simDisabled:Z

    if-nez v1, :cond_69

    .line 2155
    invoke-virtual/range {v16 .. v16}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_69

    .line 2161
    const-string v1, "SIM"

    invoke-virtual {v6, v1}, Lcom/samsung/swift/service/phonebook/Account;->setName(Ljava/lang/String;)V

    .line 2162
    const-string v1, "SIM"

    invoke-virtual {v6, v1}, Lcom/samsung/swift/service/phonebook/Account;->setType(Ljava/lang/String;)V
    :try_end_b7
    .catchall {:try_start_87 .. :try_end_b7} :catchall_b8

    goto :goto_66

    .line 2228
    .end local v10           #accountName:Ljava/lang/String;
    .end local v11           #accountType:Ljava/lang/String;
    :catchall_b8
    move-exception v1

    move-object v8, v9

    .end local v9           #accountList:Lcom/samsung/swift/service/phonebook/AccountList;
    .restart local v8       #accountList:Lcom/samsung/swift/service/phonebook/AccountList;
    :goto_ba
    if-eqz v14, :cond_bf

    .line 2230
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 2228
    :cond_bf
    throw v1

    .line 2164
    .end local v8           #accountList:Lcom/samsung/swift/service/phonebook/AccountList;
    .restart local v9       #accountList:Lcom/samsung/swift/service/phonebook/AccountList;
    .restart local v10       #accountName:Ljava/lang/String;
    .restart local v11       #accountType:Ljava/lang/String;
    :cond_c0
    :try_start_c0
    invoke-static {}, Lcom/samsung/swift/Swift;->isEmulator()Z

    move-result v1

    if-eqz v1, :cond_69

    if-eqz v11, :cond_ca

    if-nez v10, :cond_69

    .line 2167
    :cond_ca
    const-string v1, "Phone"

    invoke-virtual {v6, v1}, Lcom/samsung/swift/service/phonebook/Account;->setName(Ljava/lang/String;)V

    .line 2168
    const-string v1, "Phone"

    invoke-virtual {v6, v1}, Lcom/samsung/swift/service/phonebook/Account;->setType(Ljava/lang/String;)V
    :try_end_d4
    .catchall {:try_start_c0 .. :try_end_d4} :catchall_b8

    goto :goto_66

    .line 2192
    .end local v6           #account:Lcom/samsung/swift/service/phonebook/Account;
    .restart local v7       #account:Lcom/samsung/swift/service/phonebook/Account;
    .restart local v12       #googleAccount:[Landroid/accounts/Account;
    .restart local v13       #i:I
    :cond_d5
    :try_start_d5
    invoke-static {}, Lcom/samsung/swift/Swift;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v1

    const-string v2, "com.osp.app.signin"

    invoke-virtual {v1, v2}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v15

    .line 2194
    .local v15, samsungAccount:[Landroid/accounts/Account;
    const/4 v13, 0x0

    :goto_e4
    array-length v1, v15

    if-ge v13, v1, :cond_ff

    .line 2196
    new-instance v6, Lcom/samsung/swift/service/phonebook/Account;

    invoke-direct {v6}, Lcom/samsung/swift/service/phonebook/Account;-><init>()V
    :try_end_ec
    .catchall {:try_start_d5 .. :try_end_ec} :catchall_140

    .line 2198
    .end local v7           #account:Lcom/samsung/swift/service/phonebook/Account;
    .restart local v6       #account:Lcom/samsung/swift/service/phonebook/Account;
    :try_start_ec
    aget-object v1, v15, v13

    iget-object v1, v1, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v6, v1}, Lcom/samsung/swift/service/phonebook/Account;->setName(Ljava/lang/String;)V

    .line 2199
    const-string v1, "Samsung"

    invoke-virtual {v6, v1}, Lcom/samsung/swift/service/phonebook/Account;->setType(Ljava/lang/String;)V

    .line 2201
    invoke-virtual {v9, v6}, Lcom/samsung/swift/service/phonebook/AccountList;->add(Lcom/samsung/swift/service/phonebook/Account;)V
    :try_end_fb
    .catchall {:try_start_ec .. :try_end_fb} :catchall_b8

    .line 2194
    add-int/lit8 v13, v13, 0x1

    move-object v7, v6

    .end local v6           #account:Lcom/samsung/swift/service/phonebook/Account;
    .restart local v7       #account:Lcom/samsung/swift/service/phonebook/Account;
    goto :goto_e4

    .line 2228
    :cond_ff
    if-eqz v14, :cond_104

    .line 2230
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    :cond_104
    move-object v6, v7

    .end local v7           #account:Lcom/samsung/swift/service/phonebook/Account;
    .restart local v6       #account:Lcom/samsung/swift/service/phonebook/Account;
    move-object v8, v9

    .line 2234
    .end local v9           #accountList:Lcom/samsung/swift/service/phonebook/AccountList;
    .end local v10           #accountName:Ljava/lang/String;
    .end local v11           #accountType:Ljava/lang/String;
    .end local v12           #googleAccount:[Landroid/accounts/Account;
    .end local v13           #i:I
    .end local v15           #samsungAccount:[Landroid/accounts/Account;
    .restart local v8       #accountList:Lcom/samsung/swift/service/phonebook/AccountList;
    :cond_106
    :goto_106
    return-object v9

    .line 2206
    :cond_107
    :try_start_107
    invoke-static {}, Lcom/samsung/swift/Swift;->isEmulator()Z

    move-result v1

    if-eqz v1, :cond_135

    .line 2209
    new-instance v9, Lcom/samsung/swift/service/phonebook/AccountList;

    const/4 v1, 0x1

    invoke-direct {v9, v1}, Lcom/samsung/swift/service/phonebook/AccountList;-><init>(I)V
    :try_end_113
    .catchall {:try_start_107 .. :try_end_113} :catchall_13d

    .line 2211
    .end local v8           #accountList:Lcom/samsung/swift/service/phonebook/AccountList;
    .restart local v9       #accountList:Lcom/samsung/swift/service/phonebook/AccountList;
    :try_start_113
    new-instance v7, Lcom/samsung/swift/service/phonebook/Account;

    invoke-direct {v7}, Lcom/samsung/swift/service/phonebook/Account;-><init>()V
    :try_end_118
    .catchall {:try_start_113 .. :try_end_118} :catchall_b8

    .line 2213
    .end local v6           #account:Lcom/samsung/swift/service/phonebook/Account;
    .restart local v7       #account:Lcom/samsung/swift/service/phonebook/Account;
    :try_start_118
    const-string v1, "Phone"

    invoke-virtual {v7, v1}, Lcom/samsung/swift/service/phonebook/Account;->setName(Ljava/lang/String;)V

    .line 2214
    const-string v1, "Phone"

    invoke-virtual {v7, v1}, Lcom/samsung/swift/service/phonebook/Account;->setType(Ljava/lang/String;)V

    .line 2216
    invoke-virtual {v9, v7}, Lcom/samsung/swift/service/phonebook/AccountList;->add(Lcom/samsung/swift/service/phonebook/Account;)V
    :try_end_125
    .catchall {:try_start_118 .. :try_end_125} :catchall_140

    .line 2228
    if-eqz v14, :cond_12a

    .line 2230
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    :cond_12a
    move-object v6, v7

    .end local v7           #account:Lcom/samsung/swift/service/phonebook/Account;
    .restart local v6       #account:Lcom/samsung/swift/service/phonebook/Account;
    move-object v8, v9

    .line 2218
    .end local v9           #accountList:Lcom/samsung/swift/service/phonebook/AccountList;
    .restart local v8       #accountList:Lcom/samsung/swift/service/phonebook/AccountList;
    goto :goto_106

    .line 2223
    :cond_12d
    :try_start_12d
    sget-object v9, Lcom/samsung/swift/service/phonebook/PhonebookPlugin;->emptyAccountList:Lcom/samsung/swift/service/phonebook/AccountList;
    :try_end_12f
    .catchall {:try_start_12d .. :try_end_12f} :catchall_13d

    .line 2228
    if-eqz v14, :cond_106

    .line 2230
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    goto :goto_106

    .line 2228
    :cond_135
    if-eqz v14, :cond_13a

    .line 2230
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 2234
    :cond_13a
    sget-object v9, Lcom/samsung/swift/service/phonebook/PhonebookPlugin;->emptyAccountList:Lcom/samsung/swift/service/phonebook/AccountList;

    goto :goto_106

    .line 2228
    :catchall_13d
    move-exception v1

    goto/16 :goto_ba

    .end local v6           #account:Lcom/samsung/swift/service/phonebook/Account;
    .end local v8           #accountList:Lcom/samsung/swift/service/phonebook/AccountList;
    .restart local v7       #account:Lcom/samsung/swift/service/phonebook/Account;
    .restart local v9       #accountList:Lcom/samsung/swift/service/phonebook/AccountList;
    :catchall_140
    move-exception v1

    move-object v6, v7

    .end local v7           #account:Lcom/samsung/swift/service/phonebook/Account;
    .restart local v6       #account:Lcom/samsung/swift/service/phonebook/Account;
    move-object v8, v9

    .end local v9           #accountList:Lcom/samsung/swift/service/phonebook/AccountList;
    .restart local v8       #accountList:Lcom/samsung/swift/service/phonebook/AccountList;
    goto/16 :goto_ba

    .end local v8           #accountList:Lcom/samsung/swift/service/phonebook/AccountList;
    .restart local v9       #accountList:Lcom/samsung/swift/service/phonebook/AccountList;
    .restart local v10       #accountName:Ljava/lang/String;
    .restart local v11       #accountType:Ljava/lang/String;
    :cond_145
    move-object v7, v6

    .end local v6           #account:Lcom/samsung/swift/service/phonebook/Account;
    .restart local v7       #account:Lcom/samsung/swift/service/phonebook/Account;
    goto/16 :goto_3b
.end method

.method private static add(Lcom/samsung/swift/service/phonebook/Contact;)V
    .registers 16
    .parameter "contact"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Landroid/content/OperationApplicationException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 291
    invoke-static {}, Lcom/samsung/swift/service/phonebook/PhonebookPlugin;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 293
    .local v3, cr:Landroid/content/ContentResolver;
    const-wide/16 v7, -0x1

    .line 295
    .local v7, rawContactId:J
    const/4 v9, 0x0

    .line 297
    .local v9, rawCur:Landroid/database/Cursor;
    const/4 v2, 0x0

    .line 299
    .local v2, cpo:Landroid/content/ContentProviderOperation;
    const/4 v1, 0x0

    .line 301
    .local v1, builder:Landroid/content/ContentProviderOperation$Builder;
    new-instance v6, Ljava/util/ArrayList;

    const/16 v11, 0x14

    invoke-direct {v6, v11}, Ljava/util/ArrayList;-><init>(I)V

    .line 303
    .local v6, op_list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    const/4 v0, 0x0

    .line 305
    .local v0, backRefIndex:I
    const-string v11, "SIM"

    invoke-virtual {p0}, Lcom/samsung/swift/service/phonebook/Contact;->getAccount()Lcom/samsung/swift/service/phonebook/Account;

    move-result-object v12

    invoke-virtual {v12}, Lcom/samsung/swift/service/phonebook/Account;->getType()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_29

    .line 307
    invoke-static {p0}, Lcom/samsung/swift/service/phonebook/PhonebookInterfaceManager;->insertSimContact(Lcom/samsung/swift/service/phonebook/Contact;)J

    move-result-wide v4

    .line 311
    .local v4, id:J
    invoke-virtual {p0, v4, v5}, Lcom/samsung/swift/service/phonebook/Contact;->setId(J)V

    .line 465
    .end local v4           #id:J
    :goto_28
    return-void

    .line 315
    :cond_29
    sget-object v11, Lcom/samsung/swift/service/phonebook/PhonebookPlugin;->PHONE_GOOGLE_URI:Landroid/net/Uri;

    invoke-static {v11}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    .line 317
    const-string v11, "Google"

    invoke-virtual {p0}, Lcom/samsung/swift/service/phonebook/Contact;->getAccount()Lcom/samsung/swift/service/phonebook/Account;

    move-result-object v12

    invoke-virtual {v12}, Lcom/samsung/swift/service/phonebook/Account;->getType()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_129

    .line 319
    const-string v11, "account_type"

    const-string v12, "com.google"

    invoke-virtual {v1, v11, v12}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 320
    const-string v11, "account_name"

    invoke-virtual {p0}, Lcom/samsung/swift/service/phonebook/Contact;->getAccount()Lcom/samsung/swift/service/phonebook/Account;

    move-result-object v12

    invoke-virtual {v12}, Lcom/samsung/swift/service/phonebook/Account;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v1, v11, v12}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 333
    :goto_53
    const-string v11, "aggregation_mode"

    const/4 v12, 0x3

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v1, v11, v12}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 336
    const-string v11, "starred"

    invoke-virtual {p0}, Lcom/samsung/swift/service/phonebook/Contact;->getFavourite()Z

    move-result v12

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    invoke-virtual {v1, v11, v12}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 338
    invoke-virtual {v1}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v11

    invoke-virtual {v6, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 340
    const-string v11, "Google"

    invoke-virtual {p0}, Lcom/samsung/swift/service/phonebook/Contact;->getAccount()Lcom/samsung/swift/service/phonebook/Account;

    move-result-object v12

    invoke-virtual {v12}, Lcom/samsung/swift/service/phonebook/Account;->getType()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_8a

    .line 343
    invoke-static {}, Lcom/samsung/swift/service/phonebook/PhonebookInterfaceManager;->insertGroupMembership()Landroid/content/ContentProviderOperation;

    move-result-object v2

    if-eqz v2, :cond_8a

    .line 345
    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 350
    :cond_8a
    const-wide/16 v11, 0x0

    const/4 v13, 0x0

    invoke-static {p0, v11, v12, v13}, Lcom/samsung/swift/service/phonebook/PhonebookInterfaceManager;->insertUpdateName(Lcom/samsung/swift/service/phonebook/Contact;JLjava/lang/String;)Landroid/content/ContentProviderOperation;

    move-result-object v2

    if-eqz v2, :cond_96

    .line 352
    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 357
    :cond_96
    const/4 v11, 0x1

    const-wide/16 v12, 0x0

    const/4 v14, 0x0

    invoke-static {p0, v11, v12, v13, v14}, Lcom/samsung/swift/service/phonebook/PhonebookInterfaceManager;->insertUpdateAddress(Lcom/samsung/swift/service/phonebook/Contact;IJLjava/lang/String;)Landroid/content/ContentProviderOperation;

    move-result-object v2

    if-eqz v2, :cond_a3

    .line 359
    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 379
    :cond_a3
    const-wide/16 v11, 0x0

    const/4 v13, 0x0

    invoke-static {p0, v11, v12, v13}, Lcom/samsung/swift/service/phonebook/PhonebookInterfaceManager;->insertUpdateNickname(Lcom/samsung/swift/service/phonebook/Contact;JLjava/lang/String;)Landroid/content/ContentProviderOperation;

    move-result-object v2

    if-eqz v2, :cond_af

    .line 381
    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 385
    :cond_af
    const-wide/16 v11, 0x0

    const/4 v13, 0x0

    invoke-static {p0, v11, v12, v13}, Lcom/samsung/swift/service/phonebook/PhonebookInterfaceManager;->insertUpdateOrganisation(Lcom/samsung/swift/service/phonebook/Contact;JLjava/lang/String;)Landroid/content/ContentProviderOperation;

    move-result-object v2

    if-eqz v2, :cond_bb

    .line 387
    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 391
    :cond_bb
    const/4 v11, 0x1

    const-wide/16 v12, 0x0

    const/4 v14, 0x0

    invoke-static {p0, v11, v12, v13, v14}, Lcom/samsung/swift/service/phonebook/PhonebookInterfaceManager;->insertUpdatePhoneNumber(Lcom/samsung/swift/service/phonebook/Contact;IJLjava/lang/String;)Landroid/content/ContentProviderOperation;

    move-result-object v2

    if-eqz v2, :cond_c8

    .line 393
    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 397
    :cond_c8
    const/4 v11, 0x3

    const-wide/16 v12, 0x0

    const/4 v14, 0x0

    invoke-static {p0, v11, v12, v13, v14}, Lcom/samsung/swift/service/phonebook/PhonebookInterfaceManager;->insertUpdatePhoneNumber(Lcom/samsung/swift/service/phonebook/Contact;IJLjava/lang/String;)Landroid/content/ContentProviderOperation;

    move-result-object v2

    if-eqz v2, :cond_d5

    .line 399
    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 403
    :cond_d5
    const/4 v11, 0x2

    const-wide/16 v12, 0x0

    const/4 v14, 0x0

    invoke-static {p0, v11, v12, v13, v14}, Lcom/samsung/swift/service/phonebook/PhonebookInterfaceManager;->insertUpdatePhoneNumber(Lcom/samsung/swift/service/phonebook/Contact;IJLjava/lang/String;)Landroid/content/ContentProviderOperation;

    move-result-object v2

    if-eqz v2, :cond_e2

    .line 405
    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 433
    :cond_e2
    const/4 v11, 0x2

    const-wide/16 v12, 0x0

    const/4 v14, 0x0

    invoke-static {p0, v11, v12, v13, v14}, Lcom/samsung/swift/service/phonebook/PhonebookInterfaceManager;->insertUpdateEmail(Lcom/samsung/swift/service/phonebook/Contact;IJLjava/lang/String;)Landroid/content/ContentProviderOperation;

    move-result-object v2

    if-eqz v2, :cond_ef

    .line 435
    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 439
    :cond_ef
    const/4 v11, 0x1

    const-wide/16 v12, 0x0

    const/4 v14, 0x0

    invoke-static {p0, v11, v12, v13, v14}, Lcom/samsung/swift/service/phonebook/PhonebookInterfaceManager;->insertUpdateEmail(Lcom/samsung/swift/service/phonebook/Contact;IJLjava/lang/String;)Landroid/content/ContentProviderOperation;

    move-result-object v2

    if-eqz v2, :cond_fc

    .line 441
    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 445
    :cond_fc
    const/4 v11, 0x3

    const-wide/16 v12, 0x0

    const/4 v14, 0x0

    invoke-static {p0, v11, v12, v13, v14}, Lcom/samsung/swift/service/phonebook/PhonebookInterfaceManager;->insertUpdateEmail(Lcom/samsung/swift/service/phonebook/Contact;IJLjava/lang/String;)Landroid/content/ContentProviderOperation;

    move-result-object v2

    if-eqz v2, :cond_109

    .line 447
    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 451
    :cond_109
    const-wide/16 v11, 0x0

    const/4 v13, 0x0

    invoke-static {p0, v11, v12, v13}, Lcom/samsung/swift/service/phonebook/PhonebookInterfaceManager;->insertUpdateLogo(Lcom/samsung/swift/service/phonebook/Contact;JLjava/lang/String;)Landroid/content/ContentProviderOperation;

    move-result-object v2

    if-eqz v2, :cond_115

    .line 453
    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 456
    :cond_115
    const-string v11, "com.android.contacts"

    invoke-virtual {v3, v11, v6}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    move-result-object v10

    .line 458
    .local v10, result:[Landroid/content/ContentProviderResult;
    const/4 v11, 0x0

    aget-object v11, v10, v11

    iget-object v11, v11, Landroid/content/ContentProviderResult;->uri:Landroid/net/Uri;

    invoke-static {v11}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v7

    .line 462
    invoke-virtual {p0, v7, v8}, Lcom/samsung/swift/service/phonebook/Contact;->setId(J)V

    goto/16 :goto_28

    .line 322
    .end local v10           #result:[Landroid/content/ContentProviderResult;
    :cond_129
    const-string v11, "Samsung"

    invoke-virtual {p0}, Lcom/samsung/swift/service/phonebook/Contact;->getAccount()Lcom/samsung/swift/service/phonebook/Account;

    move-result-object v12

    invoke-virtual {v12}, Lcom/samsung/swift/service/phonebook/Account;->getType()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_14f

    .line 324
    const-string v11, "account_type"

    const-string v12, "com.osp.app.signin"

    invoke-virtual {v1, v11, v12}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 325
    const-string v11, "account_name"

    invoke-virtual {p0}, Lcom/samsung/swift/service/phonebook/Contact;->getAccount()Lcom/samsung/swift/service/phonebook/Account;

    move-result-object v12

    invoke-virtual {v12}, Lcom/samsung/swift/service/phonebook/Account;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v1, v11, v12}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    goto/16 :goto_53

    .line 329
    :cond_14f
    const-string v11, "account_type"

    const-string v12, "vnd.sec.contact.phone"

    invoke-virtual {v1, v11, v12}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 330
    const-string v11, "account_name"

    const-string v12, "vnd.sec.contact.phone"

    invoke-virtual {v1, v11, v12}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    goto/16 :goto_53
.end method

.method private static calcRandomRevision()Ljava/lang/String;
    .registers 3

    .prologue
    .line 270
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/samsung/swift/service/phonebook/PhonebookPlugin;->random:Ljava/util/Random;

    invoke-virtual {v1}, Ljava/util/Random;->nextInt()I

    move-result v1

    rem-int/lit8 v1, v1, 0x64

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static delete(J)V
    .registers 6
    .parameter "id"

    .prologue
    const/4 v3, 0x0

    .line 899
    const-wide/16 v1, 0x0

    cmp-long v1, p0, v1

    if-gez v1, :cond_f

    .line 901
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Invalid contact Id"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 904
    :cond_f
    invoke-static {}, Lcom/samsung/swift/service/phonebook/PhonebookPlugin;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 906
    .local v0, cr:Landroid/content/ContentResolver;
    invoke-static {p0, p1}, Lcom/samsung/swift/service/phonebook/PhonebookPlugin;->isSimContact(J)Z

    move-result v1

    if-eqz v1, :cond_2d

    .line 908
    sget-object v1, Lcom/samsung/swift/service/phonebook/PhonebookPlugin;->SIM_URI:Landroid/net/Uri;

    invoke-static {v1, p0, p1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v3, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_41

    .line 909
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Delete SIM contact failed!!"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 914
    :cond_2d
    sget-object v1, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1, p0, p1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v3, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_41

    .line 915
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Delete contact failed!!"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 918
    :cond_41
    return-void
.end method

.method private static edit(Lcom/samsung/swift/service/phonebook/Contact;)V
    .registers 47
    .parameter "contact"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Landroid/content/OperationApplicationException;,
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 478
    invoke-static {}, Lcom/samsung/swift/service/phonebook/PhonebookPlugin;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 480
    .local v2, cr:Landroid/content/ContentResolver;
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/swift/service/phonebook/Contact;->getId()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v10

    .line 482
    .local v10, contactId:Ljava/lang/String;
    const/16 v39, 0x0

    .line 484
    .local v39, pCur:Landroid/database/Cursor;
    const/16 v31, 0x0

    .line 485
    .local v31, nameId:Ljava/lang/String;
    const/16 v36, 0x0

    .line 486
    .local v36, organizationId:Ljava/lang/String;
    const/16 v32, 0x0

    .line 488
    .local v32, nickNameId:Ljava/lang/String;
    const/16 v26, 0x0

    .line 489
    .local v26, homeAddressId:Ljava/lang/String;
    const/4 v9, 0x0

    .line 491
    .local v9, businessAddressId:Ljava/lang/String;
    const/16 v34, 0x0

    .line 493
    .local v34, noteId:Ljava/lang/String;
    const/16 v28, 0x0

    .line 494
    .local v28, homePhoneId:Ljava/lang/String;
    const/16 v45, 0x0

    .line 495
    .local v45, workPhoneId:Ljava/lang/String;
    const/16 v30, 0x0

    .line 496
    .local v30, mobilePhoneId:Ljava/lang/String;
    const/16 v38, 0x0

    .line 497
    .local v38, otherPhoneId:Ljava/lang/String;
    const/16 v40, 0x0

    .line 498
    .local v40, pagerPhoneId:Ljava/lang/String;
    const/4 v14, 0x0

    .line 499
    .local v14, faxPhoneId:Ljava/lang/String;
    const/16 v27, 0x0

    .line 500
    .local v27, homeEmailId:Ljava/lang/String;
    const/16 v44, 0x0

    .line 501
    .local v44, workEmailId:Ljava/lang/String;
    const/16 v37, 0x0

    .line 503
    .local v37, otherEmailId:Ljava/lang/String;
    const/16 v42, 0x0

    .line 505
    .local v42, photoId:Ljava/lang/String;
    const/16 v18, 0x0

    .line 506
    .local v18, firstHomePhone:Z
    const/16 v25, 0x0

    .line 507
    .local v25, firstWorkPhone:Z
    const/16 v19, 0x0

    .line 508
    .local v19, firstMobilePhone:Z
    const/16 v21, 0x0

    .line 509
    .local v21, firstOtherPhone:Z
    const/16 v22, 0x0

    .line 510
    .local v22, firstPagerPhone:Z
    const/4 v15, 0x0

    .line 512
    .local v15, firstFaxPhone:Z
    const/16 v17, 0x0

    .line 513
    .local v17, firstHomeEmail:Z
    const/16 v24, 0x0

    .line 514
    .local v24, firstWorkEmail:Z
    const/16 v20, 0x0

    .line 516
    .local v20, firstOtherEmail:Z
    const/16 v16, 0x0

    .line 517
    .local v16, firstHomeAddress:Z
    const/16 v23, 0x0

    .line 519
    .local v23, firstWorkAddress:Z
    const/4 v11, 0x0

    .line 521
    .local v11, cpo:Landroid/content/ContentProviderOperation;
    new-instance v35, Ljava/util/ArrayList;

    const/16 v3, 0x14

    move-object/from16 v0, v35

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 525
    .local v35, op_list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    :try_start_4b
    const-string v3, "SIM"

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/swift/service/phonebook/Contact;->getAccount()Lcom/samsung/swift/service/phonebook/Account;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/swift/service/phonebook/Account;->getType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_64

    .line 527
    invoke-static/range {p0 .. p0}, Lcom/samsung/swift/service/phonebook/PhonebookInterfaceManager;->updateSimContact(Lcom/samsung/swift/service/phonebook/Contact;)Z
    :try_end_5e
    .catchall {:try_start_4b .. :try_end_5e} :catchall_1c3

    .line 792
    :cond_5e
    :goto_5e
    if-eqz v39, :cond_63

    .line 794
    invoke-interface/range {v39 .. v39}, Landroid/database/Cursor;->close()V

    .line 797
    :cond_63
    return-void

    .line 532
    :cond_64
    const/4 v13, 0x0

    .line 533
    .local v13, favint:I
    :try_start_65
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/swift/service/phonebook/Contact;->getFavourite()Z

    move-result v3

    if-eqz v3, :cond_6c

    .line 534
    const/4 v13, 0x1

    .line 535
    :cond_6c
    sget-object v3, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v3}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v3

    const-string v4, "_id=?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v10, v5, v7

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v3

    const-string v4, "starred"

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v3

    move-object/from16 v0, v35

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 540
    const-string v43, "raw_contact_id = ?"

    .line 542
    .local v43, whereClause:Ljava/lang/String;
    const/4 v3, 0x1

    new-array v6, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v10, v6, v3

    .line 544
    .local v6, whereClauseParams:[Ljava/lang/String;
    sget-object v3, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    const-string v5, "raw_contact_id = ?"

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v39

    .line 546
    if-eqz v39, :cond_5e

    .line 548
    invoke-interface/range {v39 .. v39}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_d7

    .line 552
    :cond_ab
    const-string v3, "mimetype"

    move-object/from16 v0, v39

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v39

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v29

    .line 554
    .local v29, mimeType:Ljava/lang/String;
    const-string v3, "vnd.android.cursor.item/name"

    move-object/from16 v0, v29

    invoke-virtual {v0, v3}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1ca

    .line 557
    const-string v3, "_id"

    move-object/from16 v0, v39

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v39

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v31

    .line 669
    :cond_d1
    :goto_d1
    invoke-interface/range {v39 .. v39}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-nez v3, :cond_ab

    .line 673
    .end local v29           #mimeType:Ljava/lang/String;
    :cond_d7
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/swift/service/phonebook/Contact;->getId()J

    move-result-wide v3

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-static {v0, v3, v4, v1}, Lcom/samsung/swift/service/phonebook/PhonebookInterfaceManager;->insertUpdateName(Lcom/samsung/swift/service/phonebook/Contact;JLjava/lang/String;)Landroid/content/ContentProviderOperation;

    move-result-object v11

    if-eqz v11, :cond_ea

    .line 675
    move-object/from16 v0, v35

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 680
    :cond_ea
    const/4 v3, 0x1

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/swift/service/phonebook/Contact;->getId()J

    move-result-wide v4

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-static {v0, v3, v4, v5, v1}, Lcom/samsung/swift/service/phonebook/PhonebookInterfaceManager;->insertUpdateAddress(Lcom/samsung/swift/service/phonebook/Contact;IJLjava/lang/String;)Landroid/content/ContentProviderOperation;

    move-result-object v11

    if-eqz v11, :cond_fe

    .line 682
    move-object/from16 v0, v35

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 702
    :cond_fe
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/swift/service/phonebook/Contact;->getId()J

    move-result-wide v3

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-static {v0, v3, v4, v1}, Lcom/samsung/swift/service/phonebook/PhonebookInterfaceManager;->insertUpdateNickname(Lcom/samsung/swift/service/phonebook/Contact;JLjava/lang/String;)Landroid/content/ContentProviderOperation;

    move-result-object v11

    if-eqz v11, :cond_111

    .line 704
    move-object/from16 v0, v35

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 708
    :cond_111
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/swift/service/phonebook/Contact;->getId()J

    move-result-wide v3

    move-object/from16 v0, p0

    move-object/from16 v1, v36

    invoke-static {v0, v3, v4, v1}, Lcom/samsung/swift/service/phonebook/PhonebookInterfaceManager;->insertUpdateOrganisation(Lcom/samsung/swift/service/phonebook/Contact;JLjava/lang/String;)Landroid/content/ContentProviderOperation;

    move-result-object v11

    if-eqz v11, :cond_124

    .line 710
    move-object/from16 v0, v35

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 714
    :cond_124
    const/4 v3, 0x1

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/swift/service/phonebook/Contact;->getId()J

    move-result-wide v4

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-static {v0, v3, v4, v5, v1}, Lcom/samsung/swift/service/phonebook/PhonebookInterfaceManager;->insertUpdatePhoneNumber(Lcom/samsung/swift/service/phonebook/Contact;IJLjava/lang/String;)Landroid/content/ContentProviderOperation;

    move-result-object v11

    if-eqz v11, :cond_138

    .line 716
    move-object/from16 v0, v35

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 720
    :cond_138
    const/4 v3, 0x3

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/swift/service/phonebook/Contact;->getId()J

    move-result-wide v4

    move-object/from16 v0, p0

    move-object/from16 v1, v45

    invoke-static {v0, v3, v4, v5, v1}, Lcom/samsung/swift/service/phonebook/PhonebookInterfaceManager;->insertUpdatePhoneNumber(Lcom/samsung/swift/service/phonebook/Contact;IJLjava/lang/String;)Landroid/content/ContentProviderOperation;

    move-result-object v11

    if-eqz v11, :cond_14c

    .line 722
    move-object/from16 v0, v35

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 726
    :cond_14c
    const/4 v3, 0x2

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/swift/service/phonebook/Contact;->getId()J

    move-result-wide v4

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-static {v0, v3, v4, v5, v1}, Lcom/samsung/swift/service/phonebook/PhonebookInterfaceManager;->insertUpdatePhoneNumber(Lcom/samsung/swift/service/phonebook/Contact;IJLjava/lang/String;)Landroid/content/ContentProviderOperation;

    move-result-object v11

    if-eqz v11, :cond_160

    .line 728
    move-object/from16 v0, v35

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 756
    :cond_160
    invoke-static/range {p0 .. p0}, Lcom/samsung/swift/service/phonebook/PhonebookInterfaceManager;->setDefaultPhoneNumberField(Lcom/samsung/swift/service/phonebook/Contact;)Landroid/content/ContentProviderOperation;

    move-result-object v11

    if-eqz v11, :cond_16b

    .line 758
    move-object/from16 v0, v35

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 762
    :cond_16b
    const/4 v3, 0x2

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/swift/service/phonebook/Contact;->getId()J

    move-result-wide v4

    move-object/from16 v0, p0

    move-object/from16 v1, v44

    invoke-static {v0, v3, v4, v5, v1}, Lcom/samsung/swift/service/phonebook/PhonebookInterfaceManager;->insertUpdateEmail(Lcom/samsung/swift/service/phonebook/Contact;IJLjava/lang/String;)Landroid/content/ContentProviderOperation;

    move-result-object v11

    if-eqz v11, :cond_17f

    .line 764
    move-object/from16 v0, v35

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 768
    :cond_17f
    const/4 v3, 0x1

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/swift/service/phonebook/Contact;->getId()J

    move-result-wide v4

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-static {v0, v3, v4, v5, v1}, Lcom/samsung/swift/service/phonebook/PhonebookInterfaceManager;->insertUpdateEmail(Lcom/samsung/swift/service/phonebook/Contact;IJLjava/lang/String;)Landroid/content/ContentProviderOperation;

    move-result-object v11

    if-eqz v11, :cond_193

    .line 770
    move-object/from16 v0, v35

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 774
    :cond_193
    const/4 v3, 0x3

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/swift/service/phonebook/Contact;->getId()J

    move-result-wide v4

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-static {v0, v3, v4, v5, v1}, Lcom/samsung/swift/service/phonebook/PhonebookInterfaceManager;->insertUpdateEmail(Lcom/samsung/swift/service/phonebook/Contact;IJLjava/lang/String;)Landroid/content/ContentProviderOperation;

    move-result-object v11

    if-eqz v11, :cond_1a7

    .line 776
    move-object/from16 v0, v35

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 780
    :cond_1a7
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/swift/service/phonebook/Contact;->getId()J

    move-result-wide v3

    move-object/from16 v0, p0

    move-object/from16 v1, v42

    invoke-static {v0, v3, v4, v1}, Lcom/samsung/swift/service/phonebook/PhonebookInterfaceManager;->insertUpdateLogo(Lcom/samsung/swift/service/phonebook/Contact;JLjava/lang/String;)Landroid/content/ContentProviderOperation;

    move-result-object v11

    if-eqz v11, :cond_1ba

    .line 782
    move-object/from16 v0, v35

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 785
    :cond_1ba
    const-string v3, "com.android.contacts"

    move-object/from16 v0, v35

    invoke-virtual {v2, v3, v0}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    :try_end_1c1
    .catchall {:try_start_65 .. :try_end_1c1} :catchall_1c3

    goto/16 :goto_5e

    .line 792
    .end local v6           #whereClauseParams:[Ljava/lang/String;
    .end local v13           #favint:I
    .end local v43           #whereClause:Ljava/lang/String;
    :catchall_1c3
    move-exception v3

    if-eqz v39, :cond_1c9

    .line 794
    invoke-interface/range {v39 .. v39}, Landroid/database/Cursor;->close()V

    .line 792
    :cond_1c9
    throw v3

    .line 559
    .restart local v6       #whereClauseParams:[Ljava/lang/String;
    .restart local v13       #favint:I
    .restart local v29       #mimeType:Ljava/lang/String;
    .restart local v43       #whereClause:Ljava/lang/String;
    :cond_1ca
    :try_start_1ca
    const-string v3, "vnd.android.cursor.item/organization"

    move-object/from16 v0, v29

    invoke-virtual {v0, v3}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1e4

    .line 562
    const-string v3, "_id"

    move-object/from16 v0, v39

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v39

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v36

    goto/16 :goto_d1

    .line 564
    :cond_1e4
    const-string v3, "vnd.android.cursor.item/photo"

    move-object/from16 v0, v29

    invoke-virtual {v0, v3}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1fe

    .line 567
    const-string v3, "_id"

    move-object/from16 v0, v39

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v39

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v42

    goto/16 :goto_d1

    .line 569
    :cond_1fe
    const-string v3, "vnd.android.cursor.item/nickname"

    move-object/from16 v0, v29

    invoke-virtual {v0, v3}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_22b

    .line 572
    const-string v3, "data2"

    move-object/from16 v0, v39

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v39

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v33

    .line 574
    .local v33, nickNameType:I
    const/4 v3, 0x1

    move/from16 v0, v33

    if-ne v0, v3, :cond_d1

    .line 576
    const-string v3, "_id"

    move-object/from16 v0, v39

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v39

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v32

    goto/16 :goto_d1

    .line 579
    .end local v33           #nickNameType:I
    :cond_22b
    const-string v3, "vnd.android.cursor.item/note"

    move-object/from16 v0, v29

    invoke-virtual {v0, v3}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_245

    .line 582
    const-string v3, "_id"

    move-object/from16 v0, v39

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v39

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v34

    goto/16 :goto_d1

    .line 584
    :cond_245
    const-string v3, "vnd.android.cursor.item/postal-address_v2"

    move-object/from16 v0, v29

    invoke-virtual {v0, v3}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_28b

    .line 587
    const-string v3, "data2"

    move-object/from16 v0, v39

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v39

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 589
    .local v8, addressType:I
    const/4 v3, 0x1

    if-ne v8, v3, :cond_274

    if-nez v16, :cond_274

    .line 591
    const-string v3, "_id"

    move-object/from16 v0, v39

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v39

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v26

    .line 593
    const/16 v16, 0x1

    goto/16 :goto_d1

    .line 595
    :cond_274
    const/4 v3, 0x2

    if-ne v8, v3, :cond_d1

    if-nez v23, :cond_d1

    .line 597
    const-string v3, "_id"

    move-object/from16 v0, v39

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v39

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 599
    const/16 v23, 0x1

    goto/16 :goto_d1

    .line 602
    .end local v8           #addressType:I
    :cond_28b
    const-string v3, "vnd.android.cursor.item/phone_v2"

    move-object/from16 v0, v29

    invoke-virtual {v0, v3}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_338

    .line 605
    const-string v3, "data2"

    move-object/from16 v0, v39

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v39

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v41

    .line 607
    .local v41, phoneType:I
    const/4 v3, 0x1

    move/from16 v0, v41

    if-ne v0, v3, :cond_2bc

    if-nez v18, :cond_2bc

    .line 609
    const-string v3, "_id"

    move-object/from16 v0, v39

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v39

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v28

    .line 611
    const/16 v18, 0x1

    goto/16 :goto_d1

    .line 613
    :cond_2bc
    const/4 v3, 0x2

    move/from16 v0, v41

    if-ne v0, v3, :cond_2d5

    if-nez v19, :cond_2d5

    .line 615
    const-string v3, "_id"

    move-object/from16 v0, v39

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v39

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v30

    .line 617
    const/16 v19, 0x1

    goto/16 :goto_d1

    .line 619
    :cond_2d5
    const/4 v3, 0x3

    move/from16 v0, v41

    if-ne v0, v3, :cond_2ee

    if-nez v25, :cond_2ee

    .line 621
    const-string v3, "_id"

    move-object/from16 v0, v39

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v39

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v45

    .line 623
    const/16 v25, 0x1

    goto/16 :goto_d1

    .line 625
    :cond_2ee
    const/4 v3, 0x7

    move/from16 v0, v41

    if-ne v0, v3, :cond_307

    if-nez v21, :cond_307

    .line 627
    const-string v3, "_id"

    move-object/from16 v0, v39

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v39

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v38

    .line 629
    const/16 v21, 0x1

    goto/16 :goto_d1

    .line 631
    :cond_307
    const/4 v3, 0x6

    move/from16 v0, v41

    if-ne v0, v3, :cond_320

    if-nez v22, :cond_320

    .line 633
    const-string v3, "_id"

    move-object/from16 v0, v39

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v39

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v40

    .line 635
    const/16 v22, 0x1

    goto/16 :goto_d1

    .line 637
    :cond_320
    const/4 v3, 0x4

    move/from16 v0, v41

    if-ne v0, v3, :cond_d1

    if-nez v15, :cond_d1

    .line 639
    const-string v3, "_id"

    move-object/from16 v0, v39

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v39

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 641
    const/4 v15, 0x1

    goto/16 :goto_d1

    .line 644
    .end local v41           #phoneType:I
    :cond_338
    const-string v3, "vnd.android.cursor.item/email_v2"

    move-object/from16 v0, v29

    invoke-virtual {v0, v3}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_d1

    .line 647
    const-string v3, "data2"

    move-object/from16 v0, v39

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v39

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    .line 649
    .local v12, emailType:I
    const/4 v3, 0x1

    if-ne v12, v3, :cond_367

    if-nez v17, :cond_367

    .line 651
    const-string v3, "_id"

    move-object/from16 v0, v39

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v39

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v27

    .line 653
    const/16 v17, 0x1

    goto/16 :goto_d1

    .line 655
    :cond_367
    const/4 v3, 0x2

    if-ne v12, v3, :cond_37e

    if-nez v24, :cond_37e

    .line 657
    const-string v3, "_id"

    move-object/from16 v0, v39

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v39

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v44

    .line 659
    const/16 v24, 0x1

    goto/16 :goto_d1

    .line 661
    :cond_37e
    const/4 v3, 0x3

    if-ne v12, v3, :cond_d1

    if-nez v20, :cond_d1

    .line 663
    const-string v3, "_id"

    move-object/from16 v0, v39

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v39

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_390
    .catchall {:try_start_1ca .. :try_end_390} :catchall_1c3

    move-result-object v37

    .line 665
    const/16 v20, 0x1

    goto/16 :goto_d1
.end method

.method static fetchData(Ljava/util/Map;)V
    .registers 63
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/samsung/swift/service/phonebook/Contact;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1203
    .local p0, contacts:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Long;Lcom/samsung/swift/service/phonebook/Contact;>;"
    const/16 v53, 0x0

    .line 1206
    .local v53, pCur:Landroid/database/Cursor;
    :try_start_2
    const-string v7, "raw_contact_id ASC"

    .line 1207
    .local v7, sortParam:Ljava/lang/String;
    const-string v2, "raw_contact_id"

    invoke-interface/range {p0 .. p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/swift/service/phonebook/PhonebookPlugin;->generateInClause(Ljava/lang/String;Ljava/util/Set;)Ljava/lang/String;

    move-result-object v5

    .line 1208
    .local v5, whereClause:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/swift/service/phonebook/PhonebookPlugin;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    sget-object v4, Lcom/samsung/swift/service/phonebook/PhonebookPlugin;->contactFields:[Ljava/lang/String;

    const/4 v6, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v53

    .line 1210
    const/16 v35, 0x0

    .line 1211
    .local v35, firstHomePhone:Z
    const/16 v42, 0x0

    .line 1212
    .local v42, firstWorkPhone:Z
    const/16 v36, 0x0

    .line 1213
    .local v36, firstMobilePhone:Z
    const/16 v38, 0x0

    .line 1214
    .local v38, firstOtherPhone:Z
    const/16 v39, 0x0

    .line 1215
    .local v39, firstPagerPhone:Z
    const/16 v32, 0x0

    .line 1217
    .local v32, firstFaxPhone:Z
    const/16 v34, 0x0

    .line 1218
    .local v34, firstHomeEmail:Z
    const/16 v41, 0x0

    .line 1219
    .local v41, firstWorkEmail:Z
    const/16 v37, 0x0

    .line 1221
    .local v37, firstOtherEmail:Z
    const/16 v33, 0x0

    .line 1222
    .local v33, firstHomeAddress:Z
    const/16 v40, 0x0

    .line 1224
    .local v40, firstWorkAddress:Z
    const/16 v24, 0x0

    .line 1226
    .local v24, defaultNumberSet:Z
    if-eqz v53, :cond_34c

    .line 1228
    invoke-interface/range {v53 .. v53}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_38
    .catchall {:try_start_2 .. :try_end_38} :catchall_144

    move-result v2

    if-nez v2, :cond_41

    .line 1456
    if-eqz v53, :cond_40

    :goto_3d
    invoke-interface/range {v53 .. v53}, Landroid/database/Cursor;->close()V

    .line 1458
    :cond_40
    return-void

    .line 1238
    :cond_41
    :try_start_41
    const-string v2, "mimetype"

    move-object/from16 v0, v53

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v48

    .line 1239
    .local v48, mimeTypeCol:I
    const-string v2, "raw_contact_id"

    move-object/from16 v0, v53

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v19

    .line 1241
    .local v19, contactIDCol:I
    const-string v2, "display_name"

    move-object/from16 v0, v53

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v26

    .line 1243
    .local v26, displayNameCol:I
    const-string v2, "data2"

    move-object/from16 v0, v53

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v43

    .line 1244
    .local v43, givenName:I
    const-string v2, "data3"

    move-object/from16 v0, v53

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v31

    .line 1245
    .local v31, familyName:I
    const-string v2, "data4"

    move-object/from16 v0, v53

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v58

    .line 1246
    .local v58, prefix:I
    const-string v2, "data6"

    move-object/from16 v0, v53

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v61

    .line 1248
    .local v61, suffix:I
    const-string v2, "data1"

    move-object/from16 v0, v53

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v18

    .line 1249
    .local v18, company:I
    const-string v2, "data4"

    move-object/from16 v0, v53

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v45

    .line 1251
    .local v45, jobTitle:I
    const-string v2, "data2"

    move-object/from16 v0, v53

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v51

    .line 1252
    .local v51, nickNameTypeCol:I
    const-string v2, "data1"

    move-object/from16 v0, v53

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v49

    .line 1254
    .local v49, nickName:I
    const-string v2, "data2"

    move-object/from16 v0, v53

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v16

    .line 1255
    .local v16, addressTypeCol:I
    const-string v2, "data4"

    move-object/from16 v0, v53

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v60

    .line 1256
    .local v60, streetCol:I
    const-string v2, "data7"

    move-object/from16 v0, v53

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v17

    .line 1257
    .local v17, cityCol:I
    const-string v2, "data9"

    move-object/from16 v0, v53

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v57

    .line 1258
    .local v57, postCodeCol:I
    const-string v2, "data8"

    move-object/from16 v0, v53

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v59

    .line 1259
    .local v59, regionCol:I
    const-string v2, "data10"

    move-object/from16 v0, v53

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v20

    .line 1261
    .local v20, countryCol:I
    const-string v2, "data2"

    move-object/from16 v0, v53

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v55

    .line 1262
    .local v55, phoneNumberTypeCol:I
    const-string v2, "data1"

    move-object/from16 v0, v53

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v54

    .line 1263
    .local v54, phoneNumberCol:I
    const-string v2, "is_super_primary"

    move-object/from16 v0, v53

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v25

    .line 1265
    .local v25, defaultPhoneNumberCol:I
    const-string v2, "data2"

    move-object/from16 v0, v53

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v30

    .line 1266
    .local v30, emailTypeCol:I
    const-string v2, "data1"

    move-object/from16 v0, v53

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v28

    .line 1271
    .local v28, emailCol:I
    const/4 v8, 0x0

    .line 1277
    .local v8, contact:Lcom/samsung/swift/service/phonebook/Contact;
    :cond_f2
    const/16 v44, 0x0

    .local v44, i:I
    :goto_f4
    invoke-interface/range {v53 .. v53}, Landroid/database/Cursor;->getColumnCount()I

    move-result v2

    move/from16 v0, v44

    if-ge v0, v2, :cond_106

    .line 1279
    move-object/from16 v0, v53

    move/from16 v1, v44

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnName(I)Ljava/lang/String;

    .line 1277
    add-int/lit8 v44, v44, 0x1

    goto :goto_f4

    .line 1283
    :cond_106
    move-object/from16 v0, v53

    move/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v21

    .line 1285
    .local v21, dataContactID:J
    if-eqz v8, :cond_118

    invoke-virtual {v8}, Lcom/samsung/swift/service/phonebook/Contact;->getId()J

    move-result-wide v2

    cmp-long v2, v2, v21

    if-eqz v2, :cond_14b

    .line 1287
    :cond_118
    const/16 v35, 0x0

    .line 1288
    const/16 v42, 0x0

    .line 1289
    const/16 v36, 0x0

    .line 1290
    const/16 v38, 0x0

    .line 1291
    const/16 v39, 0x0

    .line 1292
    const/16 v32, 0x0

    .line 1293
    const/16 v34, 0x0

    .line 1294
    const/16 v41, 0x0

    .line 1295
    const/16 v37, 0x0

    .line 1296
    const/16 v33, 0x0

    .line 1297
    const/16 v40, 0x0

    .line 1298
    const/16 v24, 0x0

    .line 1300
    invoke-static/range {v21 .. v22}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    .end local v8           #contact:Lcom/samsung/swift/service/phonebook/Contact;
    check-cast v8, Lcom/samsung/swift/service/phonebook/Contact;

    .line 1302
    .restart local v8       #contact:Lcom/samsung/swift/service/phonebook/Contact;
    if-nez v8, :cond_14b

    .line 1304
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2
    :try_end_144
    .catchall {:try_start_41 .. :try_end_144} :catchall_144

    .line 1456
    .end local v5           #whereClause:Ljava/lang/String;
    .end local v7           #sortParam:Ljava/lang/String;
    .end local v8           #contact:Lcom/samsung/swift/service/phonebook/Contact;
    .end local v16           #addressTypeCol:I
    .end local v17           #cityCol:I
    .end local v18           #company:I
    .end local v19           #contactIDCol:I
    .end local v20           #countryCol:I
    .end local v21           #dataContactID:J
    .end local v24           #defaultNumberSet:Z
    .end local v25           #defaultPhoneNumberCol:I
    .end local v26           #displayNameCol:I
    .end local v28           #emailCol:I
    .end local v30           #emailTypeCol:I
    .end local v31           #familyName:I
    .end local v32           #firstFaxPhone:Z
    .end local v33           #firstHomeAddress:Z
    .end local v34           #firstHomeEmail:Z
    .end local v35           #firstHomePhone:Z
    .end local v36           #firstMobilePhone:Z
    .end local v37           #firstOtherEmail:Z
    .end local v38           #firstOtherPhone:Z
    .end local v39           #firstPagerPhone:Z
    .end local v40           #firstWorkAddress:Z
    .end local v41           #firstWorkEmail:Z
    .end local v42           #firstWorkPhone:Z
    .end local v43           #givenName:I
    .end local v44           #i:I
    .end local v45           #jobTitle:I
    .end local v48           #mimeTypeCol:I
    .end local v49           #nickName:I
    .end local v51           #nickNameTypeCol:I
    .end local v54           #phoneNumberCol:I
    .end local v55           #phoneNumberTypeCol:I
    .end local v57           #postCodeCol:I
    .end local v58           #prefix:I
    .end local v59           #regionCol:I
    .end local v60           #streetCol:I
    .end local v61           #suffix:I
    :catchall_144
    move-exception v2

    if-eqz v53, :cond_14a

    invoke-interface/range {v53 .. v53}, Landroid/database/Cursor;->close()V

    :cond_14a
    throw v2

    .line 1308
    .restart local v5       #whereClause:Ljava/lang/String;
    .restart local v7       #sortParam:Ljava/lang/String;
    .restart local v8       #contact:Lcom/samsung/swift/service/phonebook/Contact;
    .restart local v16       #addressTypeCol:I
    .restart local v17       #cityCol:I
    .restart local v18       #company:I
    .restart local v19       #contactIDCol:I
    .restart local v20       #countryCol:I
    .restart local v21       #dataContactID:J
    .restart local v24       #defaultNumberSet:Z
    .restart local v25       #defaultPhoneNumberCol:I
    .restart local v26       #displayNameCol:I
    .restart local v28       #emailCol:I
    .restart local v30       #emailTypeCol:I
    .restart local v31       #familyName:I
    .restart local v32       #firstFaxPhone:Z
    .restart local v33       #firstHomeAddress:Z
    .restart local v34       #firstHomeEmail:Z
    .restart local v35       #firstHomePhone:Z
    .restart local v36       #firstMobilePhone:Z
    .restart local v37       #firstOtherEmail:Z
    .restart local v38       #firstOtherPhone:Z
    .restart local v39       #firstPagerPhone:Z
    .restart local v40       #firstWorkAddress:Z
    .restart local v41       #firstWorkEmail:Z
    .restart local v42       #firstWorkPhone:Z
    .restart local v43       #givenName:I
    .restart local v44       #i:I
    .restart local v45       #jobTitle:I
    .restart local v48       #mimeTypeCol:I
    .restart local v49       #nickName:I
    .restart local v51       #nickNameTypeCol:I
    .restart local v54       #phoneNumberCol:I
    .restart local v55       #phoneNumberTypeCol:I
    .restart local v57       #postCodeCol:I
    .restart local v58       #prefix:I
    .restart local v59       #regionCol:I
    .restart local v60       #streetCol:I
    .restart local v61       #suffix:I
    :cond_14b
    :try_start_14b
    invoke-static {}, Lcom/samsung/swift/service/phonebook/PhonebookPlugin;->isSKT()Z

    move-result v2

    if-eqz v2, :cond_161

    sget v2, Lcom/samsung/swift/service/phonebook/PhonebookPlugin;->androidVersion:I

    const/4 v3, 0x7

    if-ne v2, v3, :cond_161

    .line 1311
    move-object/from16 v0, v53

    move/from16 v1, v26

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Lcom/samsung/swift/service/phonebook/Contact;->setDisplayName(Ljava/lang/String;)V

    .line 1314
    :cond_161
    move-object/from16 v0, v53

    move/from16 v1, v48

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v47

    .line 1315
    .local v47, mimeType:Ljava/lang/String;
    invoke-virtual/range {v47 .. v47}, Ljava/lang/String;->hashCode()I

    move-result v46

    .line 1317
    .local v46, mimeHash:I
    sget v2, Lcom/samsung/swift/service/phonebook/PhonebookPlugin;->contentHash:I

    move/from16 v0, v46

    if-ne v0, v2, :cond_1a9

    .line 1320
    move-object/from16 v0, v53

    move/from16 v1, v43

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Lcom/samsung/swift/service/phonebook/Contact;->setFirstName(Ljava/lang/String;)V

    .line 1321
    move-object/from16 v0, v53

    move/from16 v1, v31

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Lcom/samsung/swift/service/phonebook/Contact;->setLastName(Ljava/lang/String;)V

    .line 1322
    move-object/from16 v0, v53

    move/from16 v1, v58

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Lcom/samsung/swift/service/phonebook/Contact;->setTitle(Ljava/lang/String;)V

    .line 1323
    move-object/from16 v0, v53

    move/from16 v1, v61

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Lcom/samsung/swift/service/phonebook/Contact;->setSuffix(Ljava/lang/String;)V

    .line 1452
    :cond_19f
    :goto_19f
    invoke-interface/range {v53 .. v53}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_f2

    .line 1456
    if-eqz v53, :cond_40

    goto/16 :goto_3d

    .line 1325
    :cond_1a9
    sget v2, Lcom/samsung/swift/service/phonebook/PhonebookPlugin;->phoneHash:I

    move/from16 v0, v46

    if-ne v0, v2, :cond_234

    .line 1328
    move-object/from16 v0, v53

    move/from16 v1, v55

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v56

    .line 1329
    .local v56, phoneType:I
    invoke-interface/range {v53 .. v54}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v52

    .line 1330
    .local v52, number:Ljava/lang/String;
    move-object/from16 v0, v53

    move/from16 v1, v25

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v23

    .line 1332
    .local v23, defaultNumber:I
    const/4 v2, 0x1

    move/from16 v0, v56

    if-ne v0, v2, :cond_1e4

    if-nez v35, :cond_1e4

    .line 1334
    const/4 v2, 0x1

    move-object/from16 v0, v52

    invoke-virtual {v8, v0, v2}, Lcom/samsung/swift/service/phonebook/Contact;->setNumber(Ljava/lang/String;I)V

    .line 1336
    const/16 v35, 0x1

    .line 1369
    :cond_1d2
    :goto_1d2
    invoke-static/range {v52 .. v52}, Lcom/samsung/swift/service/phonebook/PhonebookPlugin;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_19f

    if-lez v23, :cond_19f

    if-nez v24, :cond_19f

    .line 1371
    move-object/from16 v0, v52

    invoke-virtual {v8, v0}, Lcom/samsung/swift/service/phonebook/Contact;->setDefaultNumber(Ljava/lang/String;)V

    .line 1373
    const/16 v24, 0x1

    goto :goto_19f

    .line 1338
    :cond_1e4
    const/4 v2, 0x2

    move/from16 v0, v56

    if-ne v0, v2, :cond_1f4

    if-nez v36, :cond_1f4

    .line 1340
    const/4 v2, 0x2

    move-object/from16 v0, v52

    invoke-virtual {v8, v0, v2}, Lcom/samsung/swift/service/phonebook/Contact;->setNumber(Ljava/lang/String;I)V

    .line 1342
    const/16 v36, 0x1

    goto :goto_1d2

    .line 1344
    :cond_1f4
    const/4 v2, 0x3

    move/from16 v0, v56

    if-ne v0, v2, :cond_204

    if-nez v42, :cond_204

    .line 1346
    const/4 v2, 0x3

    move-object/from16 v0, v52

    invoke-virtual {v8, v0, v2}, Lcom/samsung/swift/service/phonebook/Contact;->setNumber(Ljava/lang/String;I)V

    .line 1348
    const/16 v42, 0x1

    goto :goto_1d2

    .line 1350
    :cond_204
    const/4 v2, 0x7

    move/from16 v0, v56

    if-ne v0, v2, :cond_214

    if-nez v38, :cond_214

    .line 1352
    const/4 v2, 0x7

    move-object/from16 v0, v52

    invoke-virtual {v8, v0, v2}, Lcom/samsung/swift/service/phonebook/Contact;->setNumber(Ljava/lang/String;I)V

    .line 1354
    const/16 v38, 0x1

    goto :goto_1d2

    .line 1356
    :cond_214
    const/4 v2, 0x6

    move/from16 v0, v56

    if-ne v0, v2, :cond_224

    if-nez v39, :cond_224

    .line 1358
    const/4 v2, 0x6

    move-object/from16 v0, v52

    invoke-virtual {v8, v0, v2}, Lcom/samsung/swift/service/phonebook/Contact;->setNumber(Ljava/lang/String;I)V

    .line 1360
    const/16 v39, 0x1

    goto :goto_1d2

    .line 1362
    :cond_224
    const/4 v2, 0x4

    move/from16 v0, v56

    if-ne v0, v2, :cond_1d2

    if-nez v32, :cond_1d2

    .line 1364
    const/4 v2, 0x4

    move-object/from16 v0, v52

    invoke-virtual {v8, v0, v2}, Lcom/samsung/swift/service/phonebook/Contact;->setNumber(Ljava/lang/String;I)V

    .line 1366
    const/16 v32, 0x1

    goto :goto_1d2

    .line 1376
    .end local v23           #defaultNumber:I
    .end local v52           #number:Ljava/lang/String;
    .end local v56           #phoneType:I
    :cond_234
    sget v2, Lcom/samsung/swift/service/phonebook/PhonebookPlugin;->emailHash:I

    move/from16 v0, v46

    if-ne v0, v2, :cond_27d

    .line 1379
    move-object/from16 v0, v53

    move/from16 v1, v30

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v29

    .line 1380
    .local v29, emailType:I
    move-object/from16 v0, v53

    move/from16 v1, v28

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v27

    .line 1382
    .local v27, email:Ljava/lang/String;
    const/4 v2, 0x1

    move/from16 v0, v29

    if-ne v0, v2, :cond_25b

    if-nez v34, :cond_25b

    .line 1384
    const/4 v2, 0x1

    move-object/from16 v0, v27

    invoke-virtual {v8, v0, v2}, Lcom/samsung/swift/service/phonebook/Contact;->setEmail(Ljava/lang/String;I)V

    .line 1386
    const/16 v34, 0x1

    goto/16 :goto_19f

    .line 1388
    :cond_25b
    const/4 v2, 0x2

    move/from16 v0, v29

    if-ne v0, v2, :cond_26c

    if-nez v41, :cond_26c

    .line 1390
    const/4 v2, 0x2

    move-object/from16 v0, v27

    invoke-virtual {v8, v0, v2}, Lcom/samsung/swift/service/phonebook/Contact;->setEmail(Ljava/lang/String;I)V

    .line 1392
    const/16 v41, 0x1

    goto/16 :goto_19f

    .line 1394
    :cond_26c
    const/4 v2, 0x3

    move/from16 v0, v29

    if-ne v0, v2, :cond_19f

    if-nez v37, :cond_19f

    .line 1396
    const/4 v2, 0x3

    move-object/from16 v0, v27

    invoke-virtual {v8, v0, v2}, Lcom/samsung/swift/service/phonebook/Contact;->setEmail(Ljava/lang/String;I)V

    .line 1398
    const/16 v37, 0x1

    goto/16 :goto_19f

    .line 1402
    .end local v27           #email:Ljava/lang/String;
    .end local v29           #emailType:I
    :cond_27d
    sget v2, Lcom/samsung/swift/service/phonebook/PhonebookPlugin;->addrHash:I

    move/from16 v0, v46

    if-ne v0, v2, :cond_2f5

    .line 1405
    move-object/from16 v0, v53

    move/from16 v1, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    .line 1407
    .local v15, addressType:I
    const/4 v2, 0x1

    if-ne v15, v2, :cond_2c0

    if-nez v33, :cond_2c0

    .line 1409
    move-object/from16 v0, v53

    move/from16 v1, v60

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, v53

    move/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, v53

    move/from16 v1, v57

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, v53

    move/from16 v1, v59

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, v53

    move/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x1

    invoke-virtual/range {v8 .. v14}, Lcom/samsung/swift/service/phonebook/Contact;->setPostalAddress(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 1416
    const/16 v33, 0x1

    goto/16 :goto_19f

    .line 1418
    :cond_2c0
    const/4 v2, 0x2

    if-ne v15, v2, :cond_19f

    if-nez v40, :cond_19f

    .line 1420
    move-object/from16 v0, v53

    move/from16 v1, v60

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, v53

    move/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, v53

    move/from16 v1, v57

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, v53

    move/from16 v1, v59

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, v53

    move/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x2

    invoke-virtual/range {v8 .. v14}, Lcom/samsung/swift/service/phonebook/Contact;->setPostalAddress(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 1427
    const/16 v40, 0x1

    goto/16 :goto_19f

    .line 1430
    .end local v15           #addressType:I
    :cond_2f5
    sget v2, Lcom/samsung/swift/service/phonebook/PhonebookPlugin;->companyHash:I

    move/from16 v0, v46

    if-ne v0, v2, :cond_313

    .line 1433
    move-object/from16 v0, v53

    move/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Lcom/samsung/swift/service/phonebook/Contact;->setOrganisation(Ljava/lang/String;)V

    .line 1434
    move-object/from16 v0, v53

    move/from16 v1, v45

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Lcom/samsung/swift/service/phonebook/Contact;->setJobTitle(Ljava/lang/String;)V

    goto/16 :goto_19f

    .line 1436
    :cond_313
    sget v2, Lcom/samsung/swift/service/phonebook/PhonebookPlugin;->nickHash:I

    move/from16 v0, v46

    if-ne v0, v2, :cond_333

    .line 1439
    move-object/from16 v0, v53

    move/from16 v1, v51

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v50

    .line 1441
    .local v50, nickNameType:I
    const/4 v2, 0x1

    move/from16 v0, v50

    if-ne v0, v2, :cond_19f

    .line 1443
    move-object/from16 v0, v53

    move/from16 v1, v49

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Lcom/samsung/swift/service/phonebook/Contact;->setNickName(Ljava/lang/String;)V

    goto/16 :goto_19f

    .line 1446
    .end local v50           #nickNameType:I
    :cond_333
    sget v2, Lcom/samsung/swift/service/phonebook/PhonebookPlugin;->noteHash:I

    move/from16 v0, v46

    if-ne v0, v2, :cond_19f

    .line 1449
    const-string v2, "data1"

    move-object/from16 v0, v53

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v53

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Lcom/samsung/swift/service/phonebook/Contact;->setNotes(Ljava/lang/String;)V
    :try_end_34a
    .catchall {:try_start_14b .. :try_end_34a} :catchall_144

    goto/16 :goto_19f

    .line 1456
    .end local v8           #contact:Lcom/samsung/swift/service/phonebook/Contact;
    .end local v16           #addressTypeCol:I
    .end local v17           #cityCol:I
    .end local v18           #company:I
    .end local v19           #contactIDCol:I
    .end local v20           #countryCol:I
    .end local v21           #dataContactID:J
    .end local v25           #defaultPhoneNumberCol:I
    .end local v26           #displayNameCol:I
    .end local v28           #emailCol:I
    .end local v30           #emailTypeCol:I
    .end local v31           #familyName:I
    .end local v43           #givenName:I
    .end local v44           #i:I
    .end local v45           #jobTitle:I
    .end local v46           #mimeHash:I
    .end local v47           #mimeType:Ljava/lang/String;
    .end local v48           #mimeTypeCol:I
    .end local v49           #nickName:I
    .end local v51           #nickNameTypeCol:I
    .end local v54           #phoneNumberCol:I
    .end local v55           #phoneNumberTypeCol:I
    .end local v57           #postCodeCol:I
    .end local v58           #prefix:I
    .end local v59           #regionCol:I
    .end local v60           #streetCol:I
    .end local v61           #suffix:I
    :cond_34c
    if-eqz v53, :cond_40

    goto/16 :goto_3d
.end method

.method static fetchLogo(Ljava/util/Map;)V
    .registers 13
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/samsung/swift/service/phonebook/Contact;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1142
    .local p0, contacts:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Long;Lcom/samsung/swift/service/phonebook/Contact;>;"
    const/4 v11, 0x0

    .line 1146
    .local v11, photoCursor:Landroid/database/Cursor;
    :try_start_1
    const-string v0, "raw_contact_id"

    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/swift/service/phonebook/PhonebookPlugin;->generateInClause(Ljava/lang/String;Ljava/util/Set;)Ljava/lang/String;

    move-result-object v3

    .line 1147
    .local v3, whereClause:Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuffer;

    const-string v0, "(mimetype=\'vnd.android.cursor.item/photo\' AND data15 IS NOT NULL)"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v0, v1

    const-string v1, " AND "

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v0, v1

    invoke-direct {v6, v0}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 1148
    .local v6, buf:Ljava/lang/StringBuffer;
    invoke-virtual {v6, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1149
    const-string v0, " AND "

    invoke-virtual {v6, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1150
    const-string v0, "(mimetype=\'vnd.android.cursor.item/photo\' AND data15 IS NOT NULL)"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1151
    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1153
    invoke-static {}, Lcom/samsung/swift/service/phonebook/PhonebookPlugin;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "raw_contact_id"

    aput-object v5, v2, v4

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 1155
    if-eqz v11, :cond_89

    .line 1157
    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_83

    .line 1161
    :cond_4f
    const-string v0, "raw_contact_id"

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    int-to-long v8, v0

    .line 1162
    .local v8, id:J
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/samsung/swift/service/phonebook/Contact;

    .line 1163
    .local v7, contact:Lcom/samsung/swift/service/phonebook/Contact;
    if-nez v7, :cond_75

    .line 1165
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "may not be null"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
    :try_end_6e
    .catchall {:try_start_1 .. :try_end_6e} :catchall_6e

    .line 1179
    .end local v3           #whereClause:Ljava/lang/String;
    .end local v6           #buf:Ljava/lang/StringBuffer;
    .end local v7           #contact:Lcom/samsung/swift/service/phonebook/Contact;
    .end local v8           #id:J
    :catchall_6e
    move-exception v0

    if-eqz v11, :cond_74

    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    :cond_74
    throw v0

    .line 1167
    .restart local v3       #whereClause:Ljava/lang/String;
    .restart local v6       #buf:Ljava/lang/StringBuffer;
    .restart local v7       #contact:Lcom/samsung/swift/service/phonebook/Contact;
    .restart local v8       #id:J
    :cond_75
    :try_start_75
    new-instance v10, Lcom/samsung/swift/service/phonebook/LogoResource;

    invoke-direct {v10}, Lcom/samsung/swift/service/phonebook/LogoResource;-><init>()V

    .line 1168
    .local v10, logo:Lcom/samsung/swift/service/phonebook/LogoResource;
    invoke-virtual {v7, v10}, Lcom/samsung/swift/service/phonebook/Contact;->setLogo(Lcom/samsung/swift/util/Resource;)V

    .line 1169
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_80
    .catchall {:try_start_75 .. :try_end_80} :catchall_6e

    move-result v0

    if-nez v0, :cond_4f

    .line 1179
    .end local v7           #contact:Lcom/samsung/swift/service/phonebook/Contact;
    .end local v8           #id:J
    .end local v10           #logo:Lcom/samsung/swift/service/phonebook/LogoResource;
    :cond_83
    if-eqz v11, :cond_88

    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 1181
    :cond_88
    return-void

    .line 1174
    :cond_89
    :try_start_89
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "may not be null"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
    :try_end_91
    .catchall {:try_start_89 .. :try_end_91} :catchall_6e
.end method

.method private static generateInClause(Ljava/lang/String;Ljava/util/Set;)Ljava/lang/String;
    .registers 8
    .parameter "column"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 1185
    .local p1, set:Ljava/util/Set;,"Ljava/util/Set<*>;"
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v4

    mul-int/lit8 v4, v4, 0xa

    add-int/lit8 v4, v4, 0x64

    invoke-direct {v3, v4}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 1186
    .local v3, strBuf:Ljava/lang/StringBuffer;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " IN ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1187
    const/4 v0, 0x0

    .line 1188
    .local v0, i:I
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_28
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 1190
    .local v2, id:Ljava/lang/Object;
    if-eqz v0, :cond_39

    .line 1192
    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1194
    :cond_39
    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 1195
    add-int/lit8 v0, v0, 0x1

    goto :goto_28

    .line 1197
    .end local v2           #id:Ljava/lang/Object;
    :cond_3f
    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1198
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method private static get(J)Lcom/samsung/swift/service/phonebook/Contact;
    .registers 9
    .parameter "contactId"

    .prologue
    const/4 v0, 0x0

    const/4 v6, 0x0

    .line 927
    const-wide/16 v4, 0x0

    cmp-long v4, p0, v4

    if-lez v4, :cond_1f

    .line 929
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 931
    .local v3, set:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Long;>;"
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 934
    const/4 v4, 0x1

    invoke-static {v3, v6, v4, v6}, Lcom/samsung/swift/service/phonebook/PhonebookPlugin;->sortAndPaginate(Ljava/util/Set;III)Ljava/util/LinkedHashMap;

    move-result-object v1

    .line 936
    .local v1, contacts:Ljava/util/LinkedHashMap;,"Ljava/util/LinkedHashMap<Ljava/lang/Long;Lcom/samsung/swift/service/phonebook/Contact;>;"
    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_20

    .line 950
    .end local v1           #contacts:Ljava/util/LinkedHashMap;,"Ljava/util/LinkedHashMap<Ljava/lang/Long;Lcom/samsung/swift/service/phonebook/Contact;>;"
    .end local v3           #set:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Long;>;"
    :cond_1f
    :goto_1f
    return-object v0

    .line 941
    .restart local v1       #contacts:Ljava/util/LinkedHashMap;,"Ljava/util/LinkedHashMap<Ljava/lang/Long;Lcom/samsung/swift/service/phonebook/Contact;>;"
    .restart local v3       #set:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Long;>;"
    :cond_20
    invoke-static {v1}, Lcom/samsung/swift/service/phonebook/PhonebookPlugin;->fetchLogo(Ljava/util/Map;)V

    .line 942
    invoke-static {v1}, Lcom/samsung/swift/service/phonebook/PhonebookPlugin;->fetchData(Ljava/util/Map;)V

    .line 944
    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/swift/service/phonebook/Contact;

    .line 946
    .local v0, contact:Lcom/samsung/swift/service/phonebook/Contact;
    goto :goto_1f
.end method

.method private static getContactCapabilities()Lcom/samsung/swift/service/phonebook/ContactCapabilities;
    .registers 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 824
    new-instance v0, Lcom/samsung/swift/service/phonebook/ContactCapabilities;

    invoke-direct {v0}, Lcom/samsung/swift/service/phonebook/ContactCapabilities;-><init>()V

    .line 826
    .local v0, conatctCapabilities:Lcom/samsung/swift/service/phonebook/ContactCapabilities;
    invoke-static {}, Lcom/samsung/swift/service/phonebook/PhonebookPlugin;->getLogoHeight()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/swift/service/phonebook/ContactCapabilities;->setHeight(I)V

    .line 827
    invoke-static {}, Lcom/samsung/swift/service/phonebook/PhonebookPlugin;->getLogoWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/swift/service/phonebook/ContactCapabilities;->setWidth(I)V

    .line 829
    invoke-virtual {v0, v2}, Lcom/samsung/swift/service/phonebook/ContactCapabilities;->setEmailLen(I)V

    .line 830
    invoke-virtual {v0, v2}, Lcom/samsung/swift/service/phonebook/ContactCapabilities;->setNameLen(I)V

    .line 831
    invoke-virtual {v0, v2}, Lcom/samsung/swift/service/phonebook/ContactCapabilities;->setNumberLen(I)V

    .line 833
    invoke-virtual {v0, v3}, Lcom/samsung/swift/service/phonebook/ContactCapabilities;->setDefaultNoSupported(Z)V

    .line 834
    invoke-virtual {v0, v3}, Lcom/samsung/swift/service/phonebook/ContactCapabilities;->setFavouritesSupported(Z)V

    .line 835
    invoke-virtual {v0, v3}, Lcom/samsung/swift/service/phonebook/ContactCapabilities;->setThumnailRequired(Z)V

    .line 837
    return-object v0
.end method

.method private static getContactsNumber()I
    .registers 7

    .prologue
    .line 1899
    sget-object v1, Lcom/samsung/swift/service/phonebook/PhonebookPlugin;->monitor:Ljava/lang/Object;

    monitor-enter v1

    .line 1901
    :try_start_3
    sget-object v0, Lcom/samsung/swift/service/phonebook/PhonebookPlugin;->totalContacts:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_14

    .line 1903
    sget-object v0, Lcom/samsung/swift/service/phonebook/PhonebookPlugin;->totalContacts:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    monitor-exit v1

    .line 1919
    .local v6, searchCursor:Landroid/database/Cursor;
    :cond_13
    :goto_13
    return v0

    .line 1905
    .end local v6           #searchCursor:Landroid/database/Cursor;
    :cond_14
    monitor-exit v1
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_48

    .line 1906
    const/4 v6, 0x0

    .line 1909
    .restart local v6       #searchCursor:Landroid/database/Cursor;
    :try_start_16
    invoke-static {}, Lcom/samsung/swift/service/phonebook/PhonebookPlugin;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v3

    const-string v3, "deleted = 0"

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1912
    sget-object v1, Lcom/samsung/swift/service/phonebook/PhonebookPlugin;->monitor:Ljava/lang/Object;

    monitor-enter v1
    :try_end_2f
    .catchall {:try_start_16 .. :try_end_2f} :catchall_4e

    .line 1914
    if-eqz v6, :cond_3b

    .line 1916
    :try_start_31
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/samsung/swift/service/phonebook/PhonebookPlugin;->totalContacts:Ljava/lang/Integer;

    .line 1919
    :cond_3b
    sget-object v0, Lcom/samsung/swift/service/phonebook/PhonebookPlugin;->totalContacts:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    monitor-exit v1
    :try_end_42
    .catchall {:try_start_31 .. :try_end_42} :catchall_4b

    .line 1924
    if-eqz v6, :cond_13

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_13

    .line 1905
    .end local v6           #searchCursor:Landroid/database/Cursor;
    :catchall_48
    move-exception v0

    :try_start_49
    monitor-exit v1
    :try_end_4a
    .catchall {:try_start_49 .. :try_end_4a} :catchall_48

    throw v0

    .line 1920
    .restart local v6       #searchCursor:Landroid/database/Cursor;
    :catchall_4b
    move-exception v0

    :try_start_4c
    monitor-exit v1
    :try_end_4d
    .catchall {:try_start_4c .. :try_end_4d} :catchall_4b

    :try_start_4d
    throw v0
    :try_end_4e
    .catchall {:try_start_4d .. :try_end_4e} :catchall_4e

    .line 1924
    :catchall_4e
    move-exception v0

    if-eqz v6, :cond_54

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_54
    throw v0
.end method

.method private static getContentResolver()Landroid/content/ContentResolver;
    .registers 1

    .prologue
    .line 1473
    invoke-static {}, Lcom/samsung/swift/service/SwiftService;->instance()Lcom/samsung/swift/service/SwiftService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/swift/service/SwiftService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method private static getEmptyContactPage(I)Lcom/samsung/swift/service/phonebook/ContactPage;
    .registers 3
    .parameter "maxResults"

    .prologue
    .line 264
    new-instance v0, Lcom/samsung/swift/service/phonebook/ContactPage;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/swift/service/phonebook/ContactPage;-><init>(I)V

    .line 265
    .local v0, page:Lcom/samsung/swift/service/phonebook/ContactPage;
    invoke-virtual {v0, p0}, Lcom/samsung/swift/service/phonebook/ContactPage;->setTotalSize(I)V

    .line 266
    return-object v0
.end method

.method private static getListEmptyPage()Lcom/samsung/swift/service/phonebook/ContactPage;
    .registers 3

    .prologue
    .line 255
    sget-object v1, Lcom/samsung/swift/service/phonebook/PhonebookPlugin;->monitor:Ljava/lang/Object;

    monitor-enter v1

    .line 257
    :try_start_3
    sget-object v0, Lcom/samsung/swift/service/phonebook/PhonebookPlugin;->emptyPage:Lcom/samsung/swift/service/phonebook/ContactPage;

    invoke-static {}, Lcom/samsung/swift/service/phonebook/PhonebookPlugin;->getContactsNumber()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/samsung/swift/service/phonebook/ContactPage;->setTotalSize(I)V

    .line 258
    sget-object v0, Lcom/samsung/swift/service/phonebook/PhonebookPlugin;->emptyPage:Lcom/samsung/swift/service/phonebook/ContactPage;

    monitor-exit v1

    return-object v0

    .line 259
    :catchall_10
    move-exception v0

    monitor-exit v1
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

    throw v0
.end method

.method private static getLogo(J)Lcom/samsung/swift/util/Resource;
    .registers 15
    .parameter "contactId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v12, 0x2

    const/4 v11, 0x1

    const/4 v3, 0x0

    const/4 v5, 0x0

    .line 1073
    const-wide/16 v9, 0x0

    cmp-long v1, p0, v9

    if-gez v1, :cond_b

    .line 1116
    :cond_a
    :goto_a
    return-object v5

    .line 1078
    :cond_b
    invoke-static {}, Lcom/samsung/swift/service/phonebook/PhonebookPlugin;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1080
    .local v0, cr:Landroid/content/ContentResolver;
    invoke-static {p0, p1}, Lcom/samsung/swift/service/phonebook/PhonebookPlugin;->getLogoFromDB(J)Ljava/io/InputStream;

    move-result-object v7

    .line 1082
    .local v7, input:Ljava/io/InputStream;
    if-eqz v7, :cond_a

    .line 1087
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V

    .line 1091
    const-string v8, "raw_contact_id = ? AND mimetype = ?"

    .line 1093
    .local v8, whereClause:Ljava/lang/String;
    new-array v4, v12, [Ljava/lang/String;

    invoke-static {p0, p1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v3

    const-string v1, "vnd.android.cursor.item/photo"

    aput-object v1, v4, v11

    .line 1095
    .local v4, whereClauseParams:[Ljava/lang/String;
    const/4 v1, 0x3

    new-array v2, v1, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v2, v3

    const-string v1, "raw_contact_id"

    aput-object v1, v2, v11

    const-string v1, "data_version"

    aput-object v1, v2, v12

    .line 1097
    .local v2, selectedColumns:[Ljava/lang/String;
    sget-object v1, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    const-string v3, "raw_contact_id = ? AND mimetype = ?"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1099
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_a

    .line 1103
    :try_start_3f
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_42
    .catchall {:try_start_3f .. :try_end_42} :catchall_4e

    move-result v1

    if-nez v1, :cond_49

    .line 1111
    :goto_45
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_a

    .line 1107
    :cond_49
    :try_start_49
    invoke-static {p0, p1, v6}, Lcom/samsung/swift/service/phonebook/PhonebookPlugin;->loadResourceFromCursor(JLandroid/database/Cursor;)Lcom/samsung/swift/service/phonebook/LogoResource;
    :try_end_4c
    .catchall {:try_start_49 .. :try_end_4c} :catchall_4e

    move-result-object v5

    goto :goto_45

    .line 1111
    :catchall_4e
    move-exception v1

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v1
.end method

.method private static getLogoFromDB(J)Ljava/io/InputStream;
    .registers 12
    .parameter "contactId"

    .prologue
    const/4 v1, 0x1

    const/4 v9, 0x0

    const/4 v2, 0x0

    .line 1025
    const/4 v7, 0x0

    .line 1027
    .local v7, pCur:Landroid/database/Cursor;
    invoke-static {}, Lcom/samsung/swift/service/phonebook/PhonebookPlugin;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1029
    .local v0, cr:Landroid/content/ContentResolver;
    const-string v8, "raw_contact_id = ? AND (mimetype=\'vnd.android.cursor.item/photo\' AND data15 IS NOT NULL)"

    .line 1031
    .local v8, whereClause:Ljava/lang/String;
    new-array v4, v1, [Ljava/lang/String;

    invoke-static {p0, p1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v2

    .line 1035
    .local v4, whereClauseParams:[Ljava/lang/String;
    :try_start_12
    sget-object v1, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v5, "data15"

    aput-object v5, v2, v3

    const-string v3, "raw_contact_id = ? AND (mimetype=\'vnd.android.cursor.item/photo\' AND data15 IS NOT NULL)"

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 1037
    if-eqz v7, :cond_32

    .line 1039
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_28
    .catchall {:try_start_12 .. :try_end_28} :catchall_49

    move-result v1

    if-nez v1, :cond_39

    .line 1055
    if-eqz v7, :cond_30

    .line 1057
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_30
    move-object v1, v9

    .line 1051
    :cond_31
    :goto_31
    return-object v1

    .line 1055
    :cond_32
    if-eqz v7, :cond_37

    .line 1057
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_37
    move-object v1, v9

    .line 1046
    goto :goto_31

    .line 1049
    :cond_39
    const/4 v1, 0x0

    :try_start_3a
    invoke-interface {v7, v1}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v6

    .line 1051
    .local v6, data:[B
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, v6}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_43
    .catchall {:try_start_3a .. :try_end_43} :catchall_49

    .line 1055
    if-eqz v7, :cond_31

    .line 1057
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_31

    .line 1055
    .end local v6           #data:[B
    :catchall_49
    move-exception v1

    if-eqz v7, :cond_4f

    .line 1057
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 1055
    :cond_4f
    throw v1
.end method

.method private static getLogoHeight()I
    .registers 1

    .prologue
    .line 806
    const/16 v0, 0x8a

    return v0
.end method

.method private static getLogoMimeType()Lcom/samsung/swift/service/phonebook/SupportedFieldList;
    .registers 2

    .prologue
    .line 811
    new-instance v0, Lcom/samsung/swift/service/phonebook/SupportedFieldList;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lcom/samsung/swift/service/phonebook/SupportedFieldList;-><init>(I)V

    .line 813
    .local v0, supportedMimeTypes:Lcom/samsung/swift/service/phonebook/SupportedFieldList;
    const-string v1, "image/jpeg"

    invoke-virtual {v0, v1}, Lcom/samsung/swift/service/phonebook/SupportedFieldList;->add(Ljava/lang/String;)V

    .line 814
    const-string v1, "image/png"

    invoke-virtual {v0, v1}, Lcom/samsung/swift/service/phonebook/SupportedFieldList;->add(Ljava/lang/String;)V

    .line 815
    const-string v1, "image/gif"

    invoke-virtual {v0, v1}, Lcom/samsung/swift/service/phonebook/SupportedFieldList;->add(Ljava/lang/String;)V

    .line 816
    const-string v1, "image/bmp"

    invoke-virtual {v0, v1}, Lcom/samsung/swift/service/phonebook/SupportedFieldList;->add(Ljava/lang/String;)V

    .line 818
    return-object v0
.end method

.method private static getLogoWidth()I
    .registers 1

    .prologue
    .line 801
    const/16 v0, 0x8a

    return v0
.end method

.method private static getSearchWhereCause(Lcom/samsung/swift/util/SearchQueryFilter;)Ljava/lang/StringBuffer;
    .registers 7
    .parameter "sqf"

    .prologue
    const/4 v5, 0x0

    .line 2354
    new-instance v2, Ljava/lang/StringBuffer;

    const/16 v3, 0x1e

    invoke-direct {v2, v3}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 2357
    .local v2, whereClause:Ljava/lang/StringBuffer;
    sget v3, Lcom/samsung/swift/util/SearchQueryFilter;->phoneNumber:I

    invoke-virtual {p0, v3}, Lcom/samsung/swift/util/SearchQueryFilter;->getFilterTerms(I)[Ljava/lang/String;

    move-result-object v1

    .line 2359
    .local v1, phoneNumberArray:[Ljava/lang/String;
    array-length v3, v1

    if-lez v3, :cond_31

    .line 2361
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->length()I

    move-result v3

    if-lez v3, :cond_1c

    .line 2362
    const-string v3, " OR "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2365
    :cond_1c
    const-string v3, "data1 in("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2366
    const-string v3, ","

    const-string v4, "\""

    invoke-static {v1, v3, v4, v5}, Lcom/samsung/swift/service/phonebook/PhonebookPlugin;->joinArray([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Vector;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2367
    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2371
    :cond_31
    sget v3, Lcom/samsung/swift/util/SearchQueryFilter;->email:I

    invoke-virtual {p0, v3}, Lcom/samsung/swift/util/SearchQueryFilter;->getFilterTerms(I)[Ljava/lang/String;

    move-result-object v0

    .line 2373
    .local v0, emailArray:[Ljava/lang/String;
    array-length v3, v0

    if-lez v3, :cond_5a

    .line 2375
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->length()I

    move-result v3

    if-lez v3, :cond_45

    .line 2376
    const-string v3, " OR "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2378
    :cond_45
    const-string v3, "data1 in("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2379
    const-string v3, ","

    const-string v4, "\""

    invoke-static {v0, v3, v4, v5}, Lcom/samsung/swift/service/phonebook/PhonebookPlugin;->joinArray([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Vector;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2380
    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2383
    :cond_5a
    return-object v2
.end method

.method private static getSimFields()Lcom/samsung/swift/service/phonebook/SupportedFieldList;
    .registers 2

    .prologue
    .line 2241
    invoke-static {}, Lcom/samsung/swift/Swift;->isEmulator()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 2243
    new-instance v0, Lcom/samsung/swift/service/phonebook/SupportedFieldList;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/swift/service/phonebook/SupportedFieldList;-><init>(I)V

    .line 2259
    .local v0, supportedFields:Lcom/samsung/swift/service/phonebook/SupportedFieldList;
    :cond_c
    :goto_c
    return-object v0

    .line 2249
    .end local v0           #supportedFields:Lcom/samsung/swift/service/phonebook/SupportedFieldList;
    :cond_d
    new-instance v0, Lcom/samsung/swift/service/phonebook/SupportedFieldList;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lcom/samsung/swift/service/phonebook/SupportedFieldList;-><init>(I)V

    .line 2251
    .restart local v0       #supportedFields:Lcom/samsung/swift/service/phonebook/SupportedFieldList;
    const-string v1, "fullname"

    invoke-virtual {v0, v1}, Lcom/samsung/swift/service/phonebook/SupportedFieldList;->add(Ljava/lang/String;)V

    .line 2252
    const-string v1, "mobilePhoneNumber"

    invoke-virtual {v0, v1}, Lcom/samsung/swift/service/phonebook/SupportedFieldList;->add(Ljava/lang/String;)V

    .line 2254
    invoke-static {}, Lcom/samsung/swift/service/phonebook/PhonebookInterfaceManager;->isSimEmailSupported()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 2256
    const-string v1, "homeEmail"

    invoke-virtual {v0, v1}, Lcom/samsung/swift/service/phonebook/SupportedFieldList;->add(Ljava/lang/String;)V

    goto :goto_c
.end method

.method protected static declared-synchronized invalidateCache()V
    .registers 3

    .prologue
    .line 274
    const-class v1, Lcom/samsung/swift/service/phonebook/PhonebookPlugin;

    monitor-enter v1

    :try_start_3
    sget-object v2, Lcom/samsung/swift/service/phonebook/PhonebookPlugin;->monitor:Ljava/lang/Object;

    monitor-enter v2
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_19

    .line 276
    :try_start_6
    invoke-static {}, Lcom/samsung/swift/service/phonebook/PhonebookPlugin;->calcRandomRevision()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/swift/service/phonebook/PhonebookPlugin;->revision:Ljava/lang/String;

    .line 277
    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/samsung/swift/service/phonebook/PhonebookPlugin;->totalContacts:Ljava/lang/Integer;

    .line 278
    monitor-exit v2
    :try_end_14
    .catchall {:try_start_6 .. :try_end_14} :catchall_16

    .line 279
    monitor-exit v1

    return-void

    .line 278
    :catchall_16
    move-exception v0

    :try_start_17
    monitor-exit v2
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    :try_start_18
    throw v0
    :try_end_19
    .catchall {:try_start_18 .. :try_end_19} :catchall_19

    .line 274
    :catchall_19
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static isEmpty(Ljava/lang/String;)Z
    .registers 2
    .parameter "s"

    .prologue
    .line 2269
    if-eqz p0, :cond_a

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public static isSKT()Z
    .registers 7

    .prologue
    .line 2338
    sget v6, Lcom/samsung/swift/R$string;->galaxy_korean_model_m110:I

    invoke-static {v6}, Lcom/samsung/swift/Swift;->getString(I)Ljava/lang/CharSequence;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    .line 2339
    .local v1, galaxyKoreanSKT110Model:Ljava/lang/String;
    sget v6, Lcom/samsung/swift/R$string;->galaxy_korean_model_m115:I

    invoke-static {v6}, Lcom/samsung/swift/Swift;->getString(I)Ljava/lang/CharSequence;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    .line 2340
    .local v2, galaxyKoreanSKT115Model:Ljava/lang/String;
    sget v6, Lcom/samsung/swift/R$string;->galaxy_korean_lgt_model:I

    invoke-static {v6}, Lcom/samsung/swift/Swift;->getString(I)Ljava/lang/CharSequence;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 2342
    .local v0, galaxyKoreanLGTModel:Ljava/lang/String;
    sget-object v6, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    .line 2343
    .local v4, skt110:Z
    sget-object v6, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    .line 2344
    .local v5, skt115:Z
    sget-object v6, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 2346
    .local v3, lgt:Z
    if-nez v4, :cond_48

    if-nez v5, :cond_48

    if-eqz v3, :cond_4a

    :cond_48
    const/4 v6, 0x1

    :goto_49
    return v6

    :cond_4a
    const/4 v6, 0x0

    goto :goto_49
.end method

.method private static isSimContact(J)Z
    .registers 13
    .parameter "raw_id"

    .prologue
    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 2086
    invoke-static {}, Lcom/samsung/swift/service/phonebook/PhonebookPlugin;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 2088
    .local v0, cr:Landroid/content/ContentResolver;
    const-string v8, "_id = ?"

    .line 2090
    .local v8, where:Ljava/lang/String;
    new-array v4, v9, [Ljava/lang/String;

    invoke-static {p0, p1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v10

    .line 2092
    .local v4, whereParams:[Ljava/lang/String;
    sget-object v1, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    new-array v2, v9, [Ljava/lang/String;

    const-string v3, "account_type"

    aput-object v3, v2, v10

    const-string v3, "_id = ?"

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 2094
    .local v7, pCur:Landroid/database/Cursor;
    if-eqz v7, :cond_3b

    .line 2096
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_3b

    .line 2098
    const-string v1, "account_type"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 2100
    .local v6, accountType:Ljava/lang/String;
    const-string v1, "vnd.sec.contact.sim"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3b

    move v1, v9

    .line 2107
    .end local v6           #accountType:Ljava/lang/String;
    :goto_3a
    return v1

    :cond_3b
    move v1, v10

    goto :goto_3a
.end method

.method private static joinArray([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Vector;)Ljava/lang/String;
    .registers 8
    .parameter "array"
    .parameter "delimiter"
    .parameter "quotechar"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .local p3, selectionArgs:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/lang/String;>;"
    const/4 v3, 0x0

    .line 2279
    array-length v2, p0

    if-nez v2, :cond_7

    .line 2280
    const-string v2, ""

    .line 2305
    :goto_6
    return-object v2

    .line 2282
    :cond_7
    new-instance v0, Ljava/lang/StringBuffer;

    array-length v2, p0

    mul-int/lit8 v2, v2, 0xa

    invoke-direct {v0, v2}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 2283
    .local v0, buffer:Ljava/lang/StringBuffer;
    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2284
    if-eqz p3, :cond_3d

    .line 2285
    const-string v2, "?"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2286
    aget-object v2, p0, v3

    invoke-virtual {p3, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 2291
    :goto_1e
    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2292
    const/4 v1, 0x1

    .local v1, i:I
    :goto_22
    array-length v2, p0

    if-ge v1, v2, :cond_49

    .line 2294
    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2295
    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2296
    if-eqz p3, :cond_43

    .line 2297
    const-string v2, "?"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2298
    aget-object v2, p0, v1

    invoke-virtual {p3, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 2303
    :goto_37
    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2292
    add-int/lit8 v1, v1, 0x1

    goto :goto_22

    .line 2289
    .end local v1           #i:I
    :cond_3d
    aget-object v2, p0, v3

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1e

    .line 2301
    .restart local v1       #i:I
    :cond_43
    aget-object v2, p0, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_37

    .line 2305
    :cond_49
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_6
.end method

.method private static list(III)Lcom/samsung/swift/service/phonebook/ContactPage;
    .registers 4
    .parameter "startIndex"
    .parameter "maxItems"
    .parameter "sort"

    .prologue
    .line 1467
    const/4 v0, 0x0

    invoke-static {p0, p1, v0, p2}, Lcom/samsung/swift/service/phonebook/PhonebookPlugin;->search(IILcom/samsung/swift/util/SearchQueryFilter;I)Lcom/samsung/swift/service/phonebook/ContactPage;

    move-result-object v0

    return-object v0
.end method

.method public static loadInputLogo(Lcom/samsung/swift/service/phonebook/Contact;)[B
    .registers 13
    .parameter "contact"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 845
    invoke-virtual {p0}, Lcom/samsung/swift/service/phonebook/Contact;->getLogo()Lcom/samsung/swift/util/Resource;

    move-result-object v5

    .line 847
    .local v5, logo:Lcom/samsung/swift/util/Resource;
    if-eqz v5, :cond_10

    invoke-virtual {v5}, Lcom/samsung/swift/util/Resource;->getPath()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/samsung/swift/service/phonebook/PhonebookPlugin;->isEmpty(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_12

    .line 849
    :cond_10
    const/4 v0, 0x0

    .line 888
    :cond_11
    return-object v0

    .line 852
    :cond_12
    new-instance v6, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v6}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 853
    .local v6, options:Landroid/graphics/BitmapFactory$Options;
    const/4 v9, 0x1

    iput-boolean v9, v6, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 855
    new-instance v1, Ljava/io/File;

    invoke-virtual {v5}, Lcom/samsung/swift/util/Resource;->getPath()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v1, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 857
    .local v1, file:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v9

    if-nez v9, :cond_48

    .line 859
    new-instance v9, Ljava/lang/RuntimeException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "File "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " does not exist"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 862
    :cond_48
    invoke-virtual {v5}, Lcom/samsung/swift/util/Resource;->getPath()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9, v6}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 864
    invoke-static {}, Lcom/samsung/swift/service/phonebook/PhonebookPlugin;->getLogoMimeType()Lcom/samsung/swift/service/phonebook/SupportedFieldList;

    move-result-object v9

    iget-object v10, v6, Landroid/graphics/BitmapFactory$Options;->outMimeType:Ljava/lang/String;

    invoke-virtual {v9, v10}, Lcom/samsung/swift/service/phonebook/SupportedFieldList;->contains(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_78

    .line 866
    new-instance v9, Ljava/lang/IllegalArgumentException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Must be "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {}, Lcom/samsung/swift/service/phonebook/PhonebookPlugin;->getLogoMimeType()Lcom/samsung/swift/service/phonebook/SupportedFieldList;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 868
    :cond_78
    iget v9, v6, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    invoke-static {}, Lcom/samsung/swift/service/phonebook/PhonebookPlugin;->getLogoWidth()I

    move-result v10

    if-ne v9, v10, :cond_88

    iget v9, v6, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-static {}, Lcom/samsung/swift/service/phonebook/PhonebookPlugin;->getLogoHeight()I

    move-result v10

    if-eq v9, v10, :cond_b3

    .line 870
    :cond_88
    new-instance v9, Ljava/lang/IllegalArgumentException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Must be "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {}, Lcom/samsung/swift/service/phonebook/PhonebookPlugin;->getLogoWidth()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "x"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {}, Lcom/samsung/swift/service/phonebook/PhonebookPlugin;->getLogoHeight()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 873
    :cond_b3
    new-instance v9, Ljava/io/File;

    invoke-virtual {v5}, Lcom/samsung/swift/util/Resource;->getPath()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/io/File;->length()J

    move-result-wide v2

    .line 874
    .local v2, fileSize:J
    long-to-int v9, v2

    new-array v0, v9, [B

    .line 875
    .local v0, bytes:[B
    const/4 v7, 0x0

    .line 877
    .local v7, read:I
    new-instance v4, Ljava/io/FileInputStream;

    invoke-virtual {v5}, Lcom/samsung/swift/util/Resource;->getPath()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v4, v9}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 879
    .local v4, is:Ljava/io/FileInputStream;
    :goto_cd
    int-to-long v9, v7

    cmp-long v9, v9, v2

    if-gez v9, :cond_11

    .line 881
    int-to-long v9, v7

    sub-long v9, v2, v9

    long-to-int v9, v9

    invoke-virtual {v4, v0, v7, v9}, Ljava/io/FileInputStream;->read([BII)I

    move-result v8

    .line 882
    .local v8, readThisTime:I
    const/4 v9, -0x1

    if-ne v8, v9, :cond_e5

    .line 884
    new-instance v9, Ljava/lang/RuntimeException;

    const-string v10, "Cant read file properly"

    invoke-direct {v9, v10}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 886
    :cond_e5
    add-int/2addr v7, v8

    .line 887
    goto :goto_cd
.end method

.method private static loadResourceFromCursor(JLandroid/database/Cursor;)Lcom/samsung/swift/service/phonebook/LogoResource;
    .registers 10
    .parameter "contactId"
    .parameter "cursor"

    .prologue
    const/4 v4, 0x0

    .line 999
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "_id"

    invoke-interface {p2, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {p2, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "data_version"

    invoke-interface {p2, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {p2, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1001
    .local v3, revision:Ljava/lang/String;
    new-instance v1, Lcom/samsung/swift/service/phonebook/LogoResource;

    invoke-direct {v1}, Lcom/samsung/swift/service/phonebook/LogoResource;-><init>()V

    .line 1003
    .local v1, logo:Lcom/samsung/swift/service/phonebook/LogoResource;
    invoke-static {p0, p1}, Lcom/samsung/swift/service/phonebook/PhonebookPlugin;->getLogoFromDB(J)Ljava/io/InputStream;

    move-result-object v0

    .line 1005
    .local v0, input:Ljava/io/InputStream;
    if-nez v0, :cond_39

    move-object v1, v4

    .line 1020
    .end local v1           #logo:Lcom/samsung/swift/service/phonebook/LogoResource;
    :goto_38
    return-object v1

    .line 1010
    .restart local v1       #logo:Lcom/samsung/swift/service/phonebook/LogoResource;
    :cond_39
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 1011
    .local v2, options:Landroid/graphics/BitmapFactory$Options;
    const/4 v5, 0x1

    iput-boolean v5, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 1013
    invoke-static {v0, v4, v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 1015
    sget-object v4, Lcom/samsung/swift/service/phonebook/PhonebookPlugin;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "loadResourceFromCursor mimetype: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v2, Landroid/graphics/BitmapFactory$Options;->outMimeType:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1017
    iget-object v4, v2, Landroid/graphics/BitmapFactory$Options;->outMimeType:Ljava/lang/String;

    invoke-virtual {v1, v4}, Lcom/samsung/swift/service/phonebook/LogoResource;->setMimeType(Ljava/lang/String;)V

    .line 1018
    invoke-virtual {v1, p0, p1}, Lcom/samsung/swift/service/phonebook/LogoResource;->setContactId(J)V

    .line 1019
    invoke-virtual {v1, v3}, Lcom/samsung/swift/service/phonebook/LogoResource;->setRevision(Ljava/lang/String;)V

    goto :goto_38
.end method

.method private static pluginLoading()V
    .registers 2

    .prologue
    .line 2327
    sget-object v0, Lcom/samsung/swift/service/phonebook/PhonebookPlugin;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Java PhonebookPlugin loading called..."

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2330
    invoke-static {}, Lcom/samsung/swift/contentobserver/ContentObserverFactory;->instance()Lcom/samsung/swift/contentobserver/ContentObserverFactory;

    move-result-object v0

    const-class v1, Lcom/samsung/swift/service/phonebook/PhoneBookContentObserver;

    invoke-virtual {v0, v1}, Lcom/samsung/swift/contentobserver/ContentObserverFactory;->get(Ljava/lang/Class;)Lcom/samsung/swift/contentobserver/SwiftContentObserver;

    move-result-object v0

    check-cast v0, Lcom/samsung/swift/service/phonebook/PhoneBookContentObserver;

    sput-object v0, Lcom/samsung/swift/service/phonebook/PhonebookPlugin;->pbObserver:Lcom/samsung/swift/service/phonebook/PhoneBookContentObserver;

    .line 2331
    return-void
.end method

.method private static pluginUnloading()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 2320
    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/swift/service/phonebook/PhonebookPlugin;->pbObserver:Lcom/samsung/swift/service/phonebook/PhoneBookContentObserver;

    .line 2321
    sget-object v0, Lcom/samsung/swift/service/phonebook/PhonebookPlugin;->refCounter:Lcom/samsung/swift/util/PeerRefCounter;

    invoke-virtual {v0}, Lcom/samsung/swift/util/PeerRefCounter;->garbageCollectPeers()V

    .line 2322
    return-void
.end method

.method private static revision()Ljava/lang/String;
    .registers 2

    .prologue
    .line 2311
    sget-object v1, Lcom/samsung/swift/service/phonebook/PhonebookPlugin;->monitor:Ljava/lang/Object;

    monitor-enter v1

    .line 2313
    :try_start_3
    sget-object v0, Lcom/samsung/swift/service/phonebook/PhonebookPlugin;->revision:Ljava/lang/String;

    monitor-exit v1

    return-object v0

    .line 2314
    :catchall_7
    move-exception v0

    monitor-exit v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v0
.end method

.method private static search(IILcom/samsung/swift/util/SearchQueryFilter;I)Lcom/samsung/swift/service/phonebook/ContactPage;
    .registers 14
    .parameter "startIndex"
    .parameter "maxItems"
    .parameter "sqf"
    .parameter "sort"

    .prologue
    const/4 v9, 0x7

    .line 1743
    sget-object v4, Lcom/samsung/swift/service/phonebook/PhonebookPlugin;->emptySet:Ljava/util/Set;

    .line 1744
    .local v4, selectedContacts:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Long;>;"
    const/4 v7, 0x0

    .line 1745
    .local v7, totalSize:I
    sget-object v2, Lcom/samsung/swift/service/phonebook/PhonebookPlugin;->emptyLinkedHashMap:Ljava/util/LinkedHashMap;

    .line 1748
    .local v2, contacts:Ljava/util/LinkedHashMap;,"Ljava/util/LinkedHashMap<Ljava/lang/Long;Lcom/samsung/swift/service/phonebook/Contact;>;"
    if-nez p2, :cond_66

    .line 1754
    if-ltz p0, :cond_c

    if-gtz p1, :cond_11

    .line 1756
    :cond_c
    invoke-static {}, Lcom/samsung/swift/service/phonebook/PhonebookPlugin;->getListEmptyPage()Lcom/samsung/swift/service/phonebook/ContactPage;

    move-result-object v1

    .line 1894
    :cond_10
    :goto_10
    return-object v1

    .line 1759
    :cond_11
    sget-object v4, Lcom/samsung/swift/service/phonebook/PhonebookPlugin;->emptySet:Ljava/util/Set;

    .line 1762
    invoke-static {}, Lcom/samsung/swift/service/phonebook/PhonebookPlugin;->isSKT()Z

    move-result v8

    if-eqz v8, :cond_24

    sget v8, Lcom/samsung/swift/service/phonebook/PhonebookPlugin;->androidVersion:I

    if-ne v8, v9, :cond_24

    .line 1764
    sget-object v8, Lcom/samsung/swift/service/phonebook/PhonebookPlugin;->emptySet:Ljava/util/Set;

    invoke-static {v8, p3, p0, p1}, Lcom/samsung/swift/service/phonebook/PhonebookPlugin;->sortByDisplayNameSDK7(Ljava/util/Set;III)Ljava/util/LinkedHashMap;

    move-result-object v2

    .line 1766
    const/4 p0, 0x0

    .line 1769
    :cond_24
    invoke-static {}, Lcom/samsung/swift/service/phonebook/PhonebookPlugin;->getContactsNumber()I

    move-result v7

    .line 1870
    :cond_28
    :goto_28
    invoke-static {}, Lcom/samsung/swift/service/phonebook/PhonebookPlugin;->isSKT()Z

    move-result v8

    if-eqz v8, :cond_163

    sget v8, Lcom/samsung/swift/service/phonebook/PhonebookPlugin;->androidVersion:I

    if-ne v8, v9, :cond_163

    .line 1872
    invoke-static {v2, p0, p1, p3}, Lcom/samsung/swift/service/phonebook/PhonebookPlugin;->sortAndPaginateSDK7(Ljava/util/LinkedHashMap;III)Ljava/util/LinkedHashMap;

    move-result-object v2

    .line 1879
    :goto_36
    new-instance v1, Lcom/samsung/swift/service/phonebook/ContactPage;

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->size()I

    move-result v8

    invoke-direct {v1, v8}, Lcom/samsung/swift/service/phonebook/ContactPage;-><init>(I)V

    .line 1880
    .local v1, contactPage:Lcom/samsung/swift/service/phonebook/ContactPage;
    invoke-virtual {v1, v7}, Lcom/samsung/swift/service/phonebook/ContactPage;->setTotalSize(I)V

    .line 1881
    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_10

    .line 1886
    invoke-static {v2}, Lcom/samsung/swift/service/phonebook/PhonebookPlugin;->fetchLogo(Ljava/util/Map;)V

    .line 1887
    invoke-static {v2}, Lcom/samsung/swift/service/phonebook/PhonebookPlugin;->fetchData(Ljava/util/Map;)V

    .line 1889
    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_56
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_10

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/swift/service/phonebook/Contact;

    .line 1891
    .local v0, contact:Lcom/samsung/swift/service/phonebook/Contact;
    invoke-virtual {v1, v0}, Lcom/samsung/swift/service/phonebook/ContactPage;->add(Lcom/samsung/swift/service/phonebook/Contact;)V

    goto :goto_56

    .line 1771
    .end local v0           #contact:Lcom/samsung/swift/service/phonebook/Contact;
    .end local v1           #contactPage:Lcom/samsung/swift/service/phonebook/ContactPage;
    .end local v3           #i$:Ljava/util/Iterator;
    :cond_66
    sget v8, Lcom/samsung/swift/util/SearchQueryFilter;->email:I

    invoke-virtual {p2, v8}, Lcom/samsung/swift/util/SearchQueryFilter;->getFilterTerms(I)[Ljava/lang/String;

    move-result-object v8

    array-length v8, v8

    if-gtz v8, :cond_9c

    sget v8, Lcom/samsung/swift/util/SearchQueryFilter;->phoneNumber:I

    invoke-virtual {p2, v8}, Lcom/samsung/swift/util/SearchQueryFilter;->getFilterTerms(I)[Ljava/lang/String;

    move-result-object v8

    array-length v8, v8

    if-gtz v8, :cond_9c

    sget v8, Lcom/samsung/swift/util/SearchQueryFilter;->Unqualified:I

    invoke-virtual {p2, v8}, Lcom/samsung/swift/util/SearchQueryFilter;->getFilterTerms(I)[Ljava/lang/String;

    move-result-object v8

    array-length v8, v8

    if-gtz v8, :cond_9c

    sget v8, Lcom/samsung/swift/util/SearchQueryFilter;->fullSearch:I

    invoke-virtual {p2, v8}, Lcom/samsung/swift/util/SearchQueryFilter;->getFilterTerms(I)[Ljava/lang/String;

    move-result-object v8

    array-length v8, v8

    if-gtz v8, :cond_9c

    sget v8, Lcom/samsung/swift/util/SearchQueryFilter;->withPhoneNumber:I

    invoke-virtual {p2, v8}, Lcom/samsung/swift/util/SearchQueryFilter;->getFilterTerms(I)[Ljava/lang/String;

    move-result-object v8

    array-length v8, v8

    if-gtz v8, :cond_9c

    sget v8, Lcom/samsung/swift/util/SearchQueryFilter;->withEmails:I

    invoke-virtual {p2, v8}, Lcom/samsung/swift/util/SearchQueryFilter;->getFilterTerms(I)[Ljava/lang/String;

    move-result-object v8

    array-length v8, v8

    if-lez v8, :cond_138

    .line 1779
    :cond_9c
    invoke-static {}, Lcom/samsung/swift/service/phonebook/PhonebookPlugin;->isSKT()Z

    move-result v8

    if-eqz v8, :cond_ff

    sget v8, Lcom/samsung/swift/service/phonebook/PhonebookPlugin;->androidVersion:I

    if-ne v8, v9, :cond_ff

    .line 1781
    sget v8, Lcom/samsung/swift/util/SearchQueryFilter;->favourite:I

    invoke-virtual {p2, v8}, Lcom/samsung/swift/util/SearchQueryFilter;->getFilterTerms(I)[Ljava/lang/String;

    move-result-object v8

    array-length v8, v8

    if-lez v8, :cond_e2

    .line 1786
    invoke-static {p2, p3}, Lcom/samsung/swift/service/phonebook/PhonebookPlugin;->selectCotactsBySearchQueryFullSDK7(Lcom/samsung/swift/util/SearchQueryFilter;I)Ljava/util/Set;

    move-result-object v6

    .line 1788
    .local v6, selectedFullSearchContacts:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Long;>;"
    invoke-interface {v6}, Ljava/util/Set;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_bd

    if-ltz p0, :cond_bd

    if-gtz p1, :cond_c3

    .line 1790
    :cond_bd
    invoke-static {v7}, Lcom/samsung/swift/service/phonebook/PhonebookPlugin;->getEmptyContactPage(I)Lcom/samsung/swift/service/phonebook/ContactPage;

    move-result-object v1

    goto/16 :goto_10

    .line 1795
    :cond_c3
    invoke-static {v6}, Lcom/samsung/swift/service/phonebook/PhonebookPlugin;->selectFavouriteContacts(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v5

    .line 1797
    .local v5, selectedFavContacts:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Long;>;"
    invoke-interface {v5}, Ljava/util/Set;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_d1

    if-ltz p0, :cond_d1

    if-gtz p1, :cond_d7

    .line 1799
    :cond_d1
    invoke-static {v7}, Lcom/samsung/swift/service/phonebook/PhonebookPlugin;->getEmptyContactPage(I)Lcom/samsung/swift/service/phonebook/ContactPage;

    move-result-object v1

    goto/16 :goto_10

    .line 1802
    :cond_d7
    invoke-interface {v5}, Ljava/util/Set;->size()I

    move-result v7

    .line 1805
    invoke-static {v5, p3, p0, p1}, Lcom/samsung/swift/service/phonebook/PhonebookPlugin;->sortByDisplayNameSDK7(Ljava/util/Set;III)Ljava/util/LinkedHashMap;

    move-result-object v2

    .line 1807
    const/4 p0, 0x0

    .line 1808
    goto/16 :goto_28

    .line 1813
    .end local v5           #selectedFavContacts:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Long;>;"
    .end local v6           #selectedFullSearchContacts:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Long;>;"
    :cond_e2
    invoke-static {p2, p3}, Lcom/samsung/swift/service/phonebook/PhonebookPlugin;->selectCotactsBySearchQueryFullSDK7(Lcom/samsung/swift/util/SearchQueryFilter;I)Ljava/util/Set;

    move-result-object v6

    .line 1815
    .restart local v6       #selectedFullSearchContacts:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Long;>;"
    invoke-interface {v6}, Ljava/util/Set;->size()I

    move-result v7

    .line 1818
    invoke-static {v6, p3, p0, p1}, Lcom/samsung/swift/service/phonebook/PhonebookPlugin;->sortByDisplayNameSDK7(Ljava/util/Set;III)Ljava/util/LinkedHashMap;

    move-result-object v2

    .line 1820
    const/4 p0, 0x0

    .line 1822
    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_f9

    if-ltz p0, :cond_f9

    if-gtz p1, :cond_28

    .line 1824
    :cond_f9
    invoke-static {v7}, Lcom/samsung/swift/service/phonebook/PhonebookPlugin;->getEmptyContactPage(I)Lcom/samsung/swift/service/phonebook/ContactPage;

    move-result-object v1

    goto/16 :goto_10

    .line 1830
    .end local v6           #selectedFullSearchContacts:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Long;>;"
    :cond_ff
    invoke-static {p2}, Lcom/samsung/swift/service/phonebook/PhonebookPlugin;->selectCotactsBySearchQuery(Lcom/samsung/swift/util/SearchQueryFilter;)Ljava/util/Set;

    move-result-object v4

    .line 1831
    invoke-interface {v4}, Ljava/util/Set;->size()I

    move-result v7

    .line 1833
    invoke-interface {v4}, Ljava/util/Set;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_111

    if-ltz p0, :cond_111

    if-gtz p1, :cond_117

    .line 1835
    :cond_111
    invoke-static {v7}, Lcom/samsung/swift/service/phonebook/PhonebookPlugin;->getEmptyContactPage(I)Lcom/samsung/swift/service/phonebook/ContactPage;

    move-result-object v1

    goto/16 :goto_10

    .line 1838
    :cond_117
    sget v8, Lcom/samsung/swift/util/SearchQueryFilter;->favourite:I

    invoke-virtual {p2, v8}, Lcom/samsung/swift/util/SearchQueryFilter;->getFilterTerms(I)[Ljava/lang/String;

    move-result-object v8

    array-length v8, v8

    if-lez v8, :cond_28

    .line 1840
    invoke-static {v4}, Lcom/samsung/swift/service/phonebook/PhonebookPlugin;->selectFavouriteContacts(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v4

    .line 1841
    invoke-interface {v4}, Ljava/util/Set;->size()I

    move-result v7

    .line 1843
    invoke-interface {v4}, Ljava/util/Set;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_132

    if-ltz p0, :cond_132

    if-gtz p1, :cond_28

    .line 1845
    :cond_132
    invoke-static {v7}, Lcom/samsung/swift/service/phonebook/PhonebookPlugin;->getEmptyContactPage(I)Lcom/samsung/swift/service/phonebook/ContactPage;

    move-result-object v1

    goto/16 :goto_10

    .line 1852
    :cond_138
    sget-object v8, Lcom/samsung/swift/service/phonebook/PhonebookPlugin;->emptySet:Ljava/util/Set;

    invoke-static {v8}, Lcom/samsung/swift/service/phonebook/PhonebookPlugin;->selectFavouriteContacts(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v4

    .line 1853
    invoke-interface {v4}, Ljava/util/Set;->size()I

    move-result v7

    .line 1854
    invoke-interface {v4}, Ljava/util/Set;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_14c

    if-ltz p0, :cond_14c

    if-gtz p1, :cond_152

    .line 1856
    :cond_14c
    invoke-static {v7}, Lcom/samsung/swift/service/phonebook/PhonebookPlugin;->getEmptyContactPage(I)Lcom/samsung/swift/service/phonebook/ContactPage;

    move-result-object v1

    goto/16 :goto_10

    .line 1860
    :cond_152
    invoke-static {}, Lcom/samsung/swift/service/phonebook/PhonebookPlugin;->isSKT()Z

    move-result v8

    if-eqz v8, :cond_28

    sget v8, Lcom/samsung/swift/service/phonebook/PhonebookPlugin;->androidVersion:I

    if-ne v8, v9, :cond_28

    .line 1862
    invoke-static {v4, p3, p0, p1}, Lcom/samsung/swift/service/phonebook/PhonebookPlugin;->sortByDisplayNameSDK7(Ljava/util/Set;III)Ljava/util/LinkedHashMap;

    move-result-object v2

    .line 1864
    const/4 p0, 0x0

    goto/16 :goto_28

    .line 1876
    :cond_163
    invoke-static {v4, p0, p1, p3}, Lcom/samsung/swift/service/phonebook/PhonebookPlugin;->sortAndPaginate(Ljava/util/Set;III)Ljava/util/LinkedHashMap;

    move-result-object v2

    goto/16 :goto_36
.end method

.method private static selectCotactsBySearchQuery(Lcom/samsung/swift/util/SearchQueryFilter;)Ljava/util/Set;
    .registers 21
    .parameter "sqf"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/swift/util/SearchQueryFilter;",
            ")",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1528
    sget-object v1, Lcom/samsung/swift/service/phonebook/PhonebookPlugin;->LOG_TAG:Ljava/lang/String;

    const-string v2, " ********* selectCotactsBySearchQuery ******"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1530
    invoke-static/range {p0 .. p0}, Lcom/samsung/swift/service/phonebook/PhonebookPlugin;->getSearchWhereCause(Lcom/samsung/swift/util/SearchQueryFilter;)Ljava/lang/StringBuffer;

    move-result-object v17

    .line 1535
    .local v17, whereClause:Ljava/lang/StringBuffer;
    new-instance v14, Ljava/util/Vector;

    const/16 v1, 0x1e

    invoke-direct {v14, v1}, Ljava/util/Vector;-><init>(I)V

    .line 1537
    .local v14, selectionArgs:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/lang/String;>;"
    sget v1, Lcom/samsung/swift/util/SearchQueryFilter;->fullSearch:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/samsung/swift/util/SearchQueryFilter;->getFilterTerms(I)[Ljava/lang/String;

    move-result-object v1

    array-length v1, v1

    if-eqz v1, :cond_1c6

    .line 1539
    sget v1, Lcom/samsung/swift/util/SearchQueryFilter;->fullSearch:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/samsung/swift/util/SearchQueryFilter;->getFilterTerms(I)[Ljava/lang/String;

    move-result-object v16

    .line 1540
    .local v16, unqArray:[Ljava/lang/String;
    const-string v1, "("

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1541
    const-string v1, "mimetype = \'vnd.android.cursor.item/name\'"

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1542
    const-string v1, " AND ("

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1543
    const-string v1, "data1 like ?"

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1544
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "%"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v2, v16, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "%"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v14, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 1545
    const-string v1, " OR "

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1546
    const-string v1, "data2 like ?"

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1547
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "%"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v2, v16, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "%"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v14, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 1548
    const-string v1, " OR "

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1549
    const-string v1, "data3 like ?"

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1550
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "%"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v2, v16, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "%"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v14, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 1551
    const-string v1, "))"

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1553
    const-string v1, " OR "

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1555
    const-string v1, "("

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1556
    const-string v1, "mimetype = \'vnd.android.cursor.item/nickname\'"

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1557
    const-string v1, " AND ("

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1558
    const-string v1, "data1 like ?"

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1559
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "%"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v2, v16, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "%"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v14, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 1560
    const-string v1, "))"

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1562
    const-string v1, " OR "

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1564
    const-string v1, "("

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1565
    const-string v1, "mimetype = \'vnd.android.cursor.item/organization\'"

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1566
    const-string v1, " AND ("

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1567
    const-string v1, "data4 like ?"

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1568
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "%"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v2, v16, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "%"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v14, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 1569
    const-string v1, " OR "

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1570
    const-string v1, "data1 like ?"

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1571
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "%"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v2, v16, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "%"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v14, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 1572
    const-string v1, "))"

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1597
    :cond_180
    sget v1, Lcom/samsung/swift/util/SearchQueryFilter;->withPhoneNumber:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/samsung/swift/util/SearchQueryFilter;->getFilterTerms(I)[Ljava/lang/String;

    move-result-object v19

    .line 1600
    .local v19, withPhoneNumberArray:[Ljava/lang/String;
    sget v1, Lcom/samsung/swift/util/SearchQueryFilter;->withEmails:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/samsung/swift/util/SearchQueryFilter;->getFilterTerms(I)[Ljava/lang/String;

    move-result-object v18

    .line 1602
    .local v18, withEmailsArray:[Ljava/lang/String;
    const/4 v13, 0x0

    .line 1607
    .local v13, searchCursor:Landroid/database/Cursor;
    :try_start_191
    invoke-static {}, Lcom/samsung/swift/service/phonebook/PhonebookPlugin;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "raw_contact_id"

    aput-object v5, v3, v4

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v14}, Ljava/util/Vector;->size()I

    move-result v5

    new-array v5, v5, [Ljava/lang/String;

    invoke-virtual {v14, v5}, Ljava/util/Vector;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/String;

    check-cast v5, [Ljava/lang/String;

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13

    .line 1610
    if-eqz v13, :cond_209

    .line 1612
    invoke-interface {v13}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-nez v1, :cond_20e

    .line 1614
    sget-object v15, Lcom/samsung/swift/service/phonebook/PhonebookPlugin;->emptySet:Ljava/util/Set;
    :try_end_1c0
    .catchall {:try_start_191 .. :try_end_1c0} :catchall_243

    .line 1645
    if-eqz v13, :cond_1c5

    :goto_1c2
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 1641
    :cond_1c5
    return-object v15

    .line 1577
    .end local v13           #searchCursor:Landroid/database/Cursor;
    .end local v16           #unqArray:[Ljava/lang/String;
    .end local v18           #withEmailsArray:[Ljava/lang/String;
    .end local v19           #withPhoneNumberArray:[Ljava/lang/String;
    :cond_1c6
    sget v1, Lcom/samsung/swift/util/SearchQueryFilter;->Unqualified:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/samsung/swift/util/SearchQueryFilter;->getFilterTerms(I)[Ljava/lang/String;

    move-result-object v16

    .line 1578
    .restart local v16       #unqArray:[Ljava/lang/String;
    const/4 v9, 0x0

    .local v9, i:I
    :goto_1cf
    move-object/from16 v0, v16

    array-length v1, v0

    if-ge v9, v1, :cond_180

    .line 1580
    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    if-lez v1, :cond_1e1

    .line 1581
    const-string v1, " OR "

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1583
    :cond_1e1
    const-string v1, "data1 like ?"

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1584
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "%"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget-object v2, v16, v9

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "%"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v14, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 1578
    add-int/lit8 v9, v9, 0x1

    goto :goto_1cf

    .line 1619
    .end local v9           #i:I
    .restart local v13       #searchCursor:Landroid/database/Cursor;
    .restart local v18       #withEmailsArray:[Ljava/lang/String;
    .restart local v19       #withPhoneNumberArray:[Ljava/lang/String;
    :cond_209
    :try_start_209
    sget-object v15, Lcom/samsung/swift/service/phonebook/PhonebookPlugin;->emptySet:Ljava/util/Set;

    .line 1645
    if-eqz v13, :cond_1c5

    goto :goto_1c2

    .line 1622
    :cond_20e
    new-instance v15, Ljava/util/HashSet;

    invoke-direct {v15}, Ljava/util/HashSet;-><init>()V

    .line 1624
    .local v15, set:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Long;>;"
    const-wide/16 v11, -0x1

    .line 1625
    .local v11, prevContactId:J
    const-string v1, "raw_contact_id"

    invoke-interface {v13, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    .line 1628
    .local v10, idCol:I
    :cond_21b
    invoke-interface {v13, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    .line 1629
    .local v7, contactId:J
    cmp-long v1, v11, v7

    if-eqz v1, :cond_22a

    .line 1631
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v15, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1634
    :cond_22a
    invoke-interface {v13}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_21b

    .line 1636
    move-object/from16 v0, v19

    array-length v1, v0

    if-gtz v1, :cond_23a

    move-object/from16 v0, v18

    array-length v1, v0

    if-lez v1, :cond_240

    .line 1638
    :cond_23a
    move-object/from16 v0, p0

    invoke-static {v15, v0}, Lcom/samsung/swift/service/phonebook/PhonebookPlugin;->selectCotactsWithPhoneNumberAndEmails(Ljava/util/Set;Lcom/samsung/swift/util/SearchQueryFilter;)Ljava/util/Set;
    :try_end_23f
    .catchall {:try_start_209 .. :try_end_23f} :catchall_243

    move-result-object v15

    .line 1645
    :cond_240
    if-eqz v13, :cond_1c5

    goto :goto_1c2

    .end local v7           #contactId:J
    .end local v10           #idCol:I
    .end local v11           #prevContactId:J
    .end local v15           #set:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Long;>;"
    :catchall_243
    move-exception v1

    if-eqz v13, :cond_249

    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    :cond_249
    throw v1
.end method

.method private static selectCotactsBySearchQueryFullSDK7(Lcom/samsung/swift/util/SearchQueryFilter;I)Ljava/util/Set;
    .registers 24
    .parameter "sqf"
    .parameter "sort"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/swift/util/SearchQueryFilter;",
            "I)",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2392
    sget-object v2, Lcom/samsung/swift/service/phonebook/PhonebookPlugin;->LOG_TAG:Ljava/lang/String;

    const-string v3, " ********* selectCotactsBySearchQueryFullSDK7 ******"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2394
    invoke-static/range {p0 .. p0}, Lcom/samsung/swift/service/phonebook/PhonebookPlugin;->getSearchWhereCause(Lcom/samsung/swift/util/SearchQueryFilter;)Ljava/lang/StringBuffer;

    move-result-object v19

    .line 2399
    .local v19, whereClause:Ljava/lang/StringBuffer;
    new-instance v16, Ljava/util/Vector;

    const/16 v2, 0x1e

    move-object/from16 v0, v16

    invoke-direct {v0, v2}, Ljava/util/Vector;-><init>(I)V

    .line 2401
    .local v16, selectionArgs:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/lang/String;>;"
    sget v2, Lcom/samsung/swift/util/SearchQueryFilter;->fullSearch:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/samsung/swift/util/SearchQueryFilter;->getFilterTerms(I)[Ljava/lang/String;

    move-result-object v2

    array-length v2, v2

    if-eqz v2, :cond_1fa

    .line 2403
    sget v2, Lcom/samsung/swift/util/SearchQueryFilter;->fullSearch:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/samsung/swift/util/SearchQueryFilter;->getFilterTerms(I)[Ljava/lang/String;

    move-result-object v18

    .line 2404
    .local v18, unqArray:[Ljava/lang/String;
    const-string v2, "("

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2405
    const-string v2, "mimetype = \'vnd.android.cursor.item/name\'"

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2406
    const-string v2, " AND ("

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2407
    const-string v2, "data1 like ?"

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2408
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x0

    aget-object v3, v18, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "%"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 2409
    const-string v2, " OR "

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2410
    const-string v2, "data2 like ?"

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2411
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x0

    aget-object v3, v18, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "%"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 2412
    const-string v2, " OR "

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2413
    const-string v2, "data3 like ?"

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2414
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x0

    aget-object v3, v18, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "%"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 2415
    const-string v2, "))"

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2417
    const-string v2, " OR "

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2419
    const-string v2, "("

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2420
    const-string v2, "mimetype = \'vnd.android.cursor.item/email_v2\'"

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2421
    const-string v2, " AND ("

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2422
    const-string v2, "data1 like ?"

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2423
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x0

    aget-object v3, v18, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "%"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 2424
    const-string v2, "))"

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2426
    const-string v2, " OR "

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2428
    const-string v2, "("

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2429
    const-string v2, "mimetype = \'vnd.android.cursor.item/nickname\'"

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2430
    const-string v2, " AND ("

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2431
    const-string v2, "data1 like ?"

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2432
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x0

    aget-object v3, v18, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "%"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 2433
    const-string v2, "))"

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2435
    const-string v2, " OR "

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2437
    const-string v2, "("

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2438
    const-string v2, "mimetype = \'vnd.android.cursor.item/organization\'"

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2439
    const-string v2, " AND ("

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2440
    const-string v2, "data4 like ?"

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2441
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x0

    aget-object v3, v18, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "%"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 2442
    const-string v2, " OR "

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2443
    const-string v2, "data1 like ?"

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2444
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x0

    aget-object v3, v18, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "%"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 2445
    const-string v2, "))"

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2460
    :cond_1af
    sget-object v2, Lcom/samsung/swift/service/phonebook/PhonebookPlugin;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " Where Clause ----> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2461
    invoke-virtual/range {v16 .. v16}, Ljava/util/Vector;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/util/Vector;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Ljava/lang/String;

    .line 2462
    .local v8, args:[Ljava/lang/String;
    const/4 v11, 0x0

    .local v11, i:I
    :goto_1da
    array-length v2, v8

    if-ge v11, v2, :cond_23f

    .line 2464
    sget-object v2, Lcom/samsung/swift/service/phonebook/PhonebookPlugin;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " selectionArgs  ----> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, v8, v11

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2462
    add-int/lit8 v11, v11, 0x1

    goto :goto_1da

    .line 2449
    .end local v8           #args:[Ljava/lang/String;
    .end local v11           #i:I
    .end local v18           #unqArray:[Ljava/lang/String;
    :cond_1fa
    sget v2, Lcom/samsung/swift/util/SearchQueryFilter;->Unqualified:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/samsung/swift/util/SearchQueryFilter;->getFilterTerms(I)[Ljava/lang/String;

    move-result-object v18

    .line 2450
    .restart local v18       #unqArray:[Ljava/lang/String;
    const/4 v11, 0x0

    .restart local v11       #i:I
    :goto_203
    move-object/from16 v0, v18

    array-length v2, v0

    if-ge v11, v2, :cond_1af

    .line 2452
    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    if-lez v2, :cond_215

    .line 2453
    const-string v2, " OR "

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2455
    :cond_215
    const-string v2, "data1 like ?"

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2456
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "%"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, v18, v11

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "%"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 2450
    add-int/lit8 v11, v11, 0x1

    goto :goto_203

    .line 2469
    .restart local v8       #args:[Ljava/lang/String;
    :cond_23f
    sget v2, Lcom/samsung/swift/util/SearchQueryFilter;->withPhoneNumber:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/samsung/swift/util/SearchQueryFilter;->getFilterTerms(I)[Ljava/lang/String;

    move-result-object v21

    .line 2472
    .local v21, withPhoneNumberArray:[Ljava/lang/String;
    sget v2, Lcom/samsung/swift/util/SearchQueryFilter;->withEmails:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/samsung/swift/util/SearchQueryFilter;->getFilterTerms(I)[Ljava/lang/String;

    move-result-object v20

    .line 2474
    .local v20, withEmailsArray:[Ljava/lang/String;
    const/4 v15, 0x0

    .line 2478
    .local v15, searchCursor:Landroid/database/Cursor;
    :try_start_250
    invoke-static/range {p1 .. p1}, Lcom/samsung/swift/service/phonebook/PhonebookPlugin;->sortClauseSDK7(I)Ljava/lang/String;

    move-result-object v7

    .line 2480
    .local v7, sortClause:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/swift/service/phonebook/PhonebookPlugin;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "raw_contact_id"

    aput-object v6, v4, v5

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {v16 .. v16}, Ljava/util/Vector;->size()I

    move-result v6

    new-array v6, v6, [Ljava/lang/String;

    move-object/from16 v0, v16

    invoke-virtual {v0, v6}, Ljava/util/Vector;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/String;

    check-cast v6, [Ljava/lang/String;

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v15

    .line 2483
    if-eqz v15, :cond_28a

    .line 2485
    invoke-interface {v15}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-nez v2, :cond_28f

    .line 2487
    sget-object v17, Lcom/samsung/swift/service/phonebook/PhonebookPlugin;->emptySet:Ljava/util/Set;
    :try_end_284
    .catchall {:try_start_250 .. :try_end_284} :catchall_2c9

    .line 2523
    if-eqz v15, :cond_289

    :goto_286
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    .line 2518
    :cond_289
    return-object v17

    .line 2492
    :cond_28a
    :try_start_28a
    sget-object v17, Lcom/samsung/swift/service/phonebook/PhonebookPlugin;->emptySet:Ljava/util/Set;

    .line 2523
    if-eqz v15, :cond_289

    goto :goto_286

    .line 2495
    :cond_28f
    new-instance v17, Ljava/util/HashSet;

    invoke-direct/range {v17 .. v17}, Ljava/util/HashSet;-><init>()V

    .line 2497
    .local v17, set:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Long;>;"
    const-wide/16 v13, -0x1

    .line 2498
    .local v13, prevContactId:J
    const-string v2, "raw_contact_id"

    invoke-interface {v15, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    .line 2501
    .local v12, idCol:I
    :cond_29c
    invoke-interface {v15, v12}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    .line 2503
    .local v9, contactId:J
    cmp-long v2, v13, v9

    if-eqz v2, :cond_2ad

    .line 2505
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2508
    :cond_2ad
    move-wide v13, v9

    .line 2510
    invoke-interface {v15}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_29c

    .line 2513
    move-object/from16 v0, v21

    array-length v2, v0

    if-gtz v2, :cond_2be

    move-object/from16 v0, v20

    array-length v2, v0

    if-lez v2, :cond_2c6

    .line 2515
    :cond_2be
    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-static {v0, v1}, Lcom/samsung/swift/service/phonebook/PhonebookPlugin;->selectCotactsWithPhoneNumberAndEmails(Ljava/util/Set;Lcom/samsung/swift/util/SearchQueryFilter;)Ljava/util/Set;
    :try_end_2c5
    .catchall {:try_start_28a .. :try_end_2c5} :catchall_2c9

    move-result-object v17

    .line 2523
    :cond_2c6
    if-eqz v15, :cond_289

    goto :goto_286

    .end local v7           #sortClause:Ljava/lang/String;
    .end local v9           #contactId:J
    .end local v12           #idCol:I
    .end local v13           #prevContactId:J
    .end local v17           #set:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Long;>;"
    :catchall_2c9
    move-exception v2

    if-eqz v15, :cond_2cf

    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    :cond_2cf
    throw v2
.end method

.method private static selectCotactsWithPhoneNumberAndEmails(Ljava/util/Set;Lcom/samsung/swift/util/SearchQueryFilter;)Ljava/util/Set;
    .registers 19
    .parameter
    .parameter "sqf"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Lcom/samsung/swift/util/SearchQueryFilter;",
            ")",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1652
    .local p0, selectedContacts:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Long;>;"
    new-instance v14, Ljava/lang/StringBuffer;

    const/16 v1, 0x1e

    invoke-direct {v14, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 1654
    .local v14, whereClause:Ljava/lang/StringBuffer;
    invoke-interface/range {p0 .. p0}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_18

    .line 1656
    const-string v1, "raw_contact_id"

    move-object/from16 v0, p0

    invoke-static {v1, v0}, Lcom/samsung/swift/service/phonebook/PhonebookPlugin;->generateInClause(Ljava/lang/String;Ljava/util/Set;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v14, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1660
    :cond_18
    sget v1, Lcom/samsung/swift/util/SearchQueryFilter;->withPhoneNumber:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Lcom/samsung/swift/util/SearchQueryFilter;->getFilterTerms(I)[Ljava/lang/String;

    move-result-object v16

    .line 1662
    .local v16, withPhoneNumberArray:[Ljava/lang/String;
    move-object/from16 v0, v16

    array-length v1, v0

    if-lez v1, :cond_49

    .line 1664
    invoke-virtual {v14}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    if-lez v1, :cond_30

    .line 1665
    const-string v1, " AND "

    invoke-virtual {v14, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1667
    :cond_30
    const-string v1, "mimetype = \'vnd.android.cursor.item/phone_v2\'"

    invoke-virtual {v14, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1669
    const-string v1, " AND "

    invoke-virtual {v14, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1672
    const-string v1, "data2 in("

    invoke-virtual {v14, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1673
    const-string v1, "2,3,1"

    invoke-virtual {v14, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1674
    const-string v1, ")"

    invoke-virtual {v14, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1678
    :cond_49
    sget v1, Lcom/samsung/swift/util/SearchQueryFilter;->withEmails:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Lcom/samsung/swift/util/SearchQueryFilter;->getFilterTerms(I)[Ljava/lang/String;

    move-result-object v15

    .line 1680
    .local v15, withEmailsArray:[Ljava/lang/String;
    array-length v1, v15

    if-lez v1, :cond_78

    .line 1682
    invoke-virtual {v14}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    if-lez v1, :cond_5f

    .line 1683
    const-string v1, " AND "

    invoke-virtual {v14, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1685
    :cond_5f
    const-string v1, "mimetype = \'vnd.android.cursor.item/email_v2\'"

    invoke-virtual {v14, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1687
    const-string v1, " AND "

    invoke-virtual {v14, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1690
    const-string v1, "data2 in("

    invoke-virtual {v14, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1691
    const-string v1, "3,2,1"

    invoke-virtual {v14, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1692
    const-string v1, ")"

    invoke-virtual {v14, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1695
    :cond_78
    const/4 v12, 0x0

    .line 1700
    .local v12, searchCursor:Landroid/database/Cursor;
    :try_start_79
    invoke-static {}, Lcom/samsung/swift/service/phonebook/PhonebookPlugin;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "raw_contact_id"

    aput-object v5, v3, v4

    invoke-virtual {v14}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 1703
    if-eqz v12, :cond_a1

    .line 1705
    invoke-interface {v12}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-nez v1, :cond_a6

    .line 1707
    sget-object v13, Lcom/samsung/swift/service/phonebook/PhonebookPlugin;->emptySet:Ljava/util/Set;
    :try_end_9b
    .catchall {:try_start_79 .. :try_end_9b} :catchall_cb

    .line 1735
    if-eqz v12, :cond_a0

    :goto_9d
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 1730
    :cond_a0
    return-object v13

    .line 1712
    :cond_a1
    :try_start_a1
    sget-object v13, Lcom/samsung/swift/service/phonebook/PhonebookPlugin;->emptySet:Ljava/util/Set;

    .line 1735
    if-eqz v12, :cond_a0

    goto :goto_9d

    .line 1716
    :cond_a6
    new-instance v13, Ljava/util/HashSet;

    invoke-direct {v13}, Ljava/util/HashSet;-><init>()V

    .line 1718
    .local v13, set:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Long;>;"
    const-wide/16 v10, -0x1

    .line 1719
    .local v10, prevContactId:J
    const-string v1, "raw_contact_id"

    invoke-interface {v12, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    .line 1722
    .local v9, idCol:I
    :cond_b3
    invoke-interface {v12, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    .line 1723
    .local v7, contactId:J
    cmp-long v1, v10, v7

    if-eqz v1, :cond_c2

    .line 1725
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v13, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1728
    :cond_c2
    invoke-interface {v12}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_c5
    .catchall {:try_start_a1 .. :try_end_c5} :catchall_cb

    move-result v1

    if-nez v1, :cond_b3

    .line 1735
    if-eqz v12, :cond_a0

    goto :goto_9d

    .end local v7           #contactId:J
    .end local v9           #idCol:I
    .end local v10           #prevContactId:J
    .end local v13           #set:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Long;>;"
    :catchall_cb
    move-exception v1

    if-eqz v12, :cond_d1

    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    :cond_d1
    throw v1
.end method

.method private static selectFavouriteContacts(Ljava/util/Set;)Ljava/util/Set;
    .registers 12
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;)",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1479
    .local p0, selectedContacts:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Long;>;"
    const/4 v6, 0x0

    .line 1482
    .local v6, cursor:Landroid/database/Cursor;
    const/4 v3, 0x0

    .line 1484
    .local v3, whereClause:Ljava/lang/String;
    :try_start_2
    invoke-interface {p0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4b

    .line 1486
    const-string v0, "_id"

    invoke-static {v0, p0}, Lcom/samsung/swift/service/phonebook/PhonebookPlugin;->generateInClause(Ljava/lang/String;Ljava/util/Set;)Ljava/lang/String;

    move-result-object v3

    .line 1488
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AND starred > 0 AND deleted = 0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1495
    :goto_21
    invoke-static {}, Lcom/samsung/swift/service/phonebook/PhonebookPlugin;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "_id"

    aput-object v5, v2, v4

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1497
    if-eqz v6, :cond_67

    .line 1499
    const-string v0, "_id"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    .line 1501
    .local v9, idCol:I
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_4e

    .line 1503
    sget-object v10, Lcom/samsung/swift/service/phonebook/PhonebookPlugin;->emptySet:Ljava/util/Set;
    :try_end_45
    .catchall {:try_start_2 .. :try_end_45} :catchall_6c

    .line 1522
    if-eqz v6, :cond_4a

    .end local v9           #idCol:I
    :goto_47
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1517
    :cond_4a
    return-object v10

    .line 1492
    :cond_4b
    :try_start_4b
    const-string v3, "starred > 0 AND deleted = 0"

    goto :goto_21

    .line 1506
    .restart local v9       #idCol:I
    :cond_4e
    new-instance v10, Ljava/util/HashSet;

    invoke-direct {v10}, Ljava/util/HashSet;-><init>()V

    .line 1509
    .local v10, set:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Long;>;"
    :cond_53
    invoke-interface {v6, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    .line 1510
    .local v7, id:J
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v10, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1511
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_53

    .line 1522
    if-eqz v6, :cond_4a

    goto :goto_47

    .line 1517
    .end local v7           #id:J
    .end local v9           #idCol:I
    .end local v10           #set:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Long;>;"
    :cond_67
    sget-object v10, Lcom/samsung/swift/service/phonebook/PhonebookPlugin;->emptySet:Ljava/util/Set;
    :try_end_69
    .catchall {:try_start_4b .. :try_end_69} :catchall_6c

    .line 1522
    if-eqz v6, :cond_4a

    goto :goto_47

    :catchall_6c
    move-exception v0

    if-eqz v6, :cond_72

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_72
    throw v0
.end method

.method private static sortAndPaginate(Ljava/util/Set;III)Ljava/util/LinkedHashMap;
    .registers 25
    .parameter
    .parameter "startIndex"
    .parameter "maxItems"
    .parameter "sort"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;III)",
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/samsung/swift/service/phonebook/Contact;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1975
    .local p0, set:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Long;>;"
    const/16 v18, 0x0

    .line 1978
    .local v18, searchCursor:Landroid/database/Cursor;
    const/4 v5, 0x0

    .line 1979
    .local v5, whereClause:Ljava/lang/String;
    :try_start_3
    invoke-interface/range {p0 .. p0}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_5e

    .line 1981
    const-string v2, "_id"

    move-object/from16 v0, p0

    invoke-static {v2, v0}, Lcom/samsung/swift/service/phonebook/PhonebookPlugin;->generateInClause(Ljava/lang/String;Ljava/util/Set;)Ljava/lang/String;

    move-result-object v5

    .line 1983
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " AND deleted = 0"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1990
    :goto_24
    invoke-static/range {p3 .. p3}, Lcom/samsung/swift/service/phonebook/PhonebookPlugin;->sortClause(I)Ljava/lang/String;

    move-result-object v7

    .line 1991
    .local v7, sortClause:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/swift/service/phonebook/PhonebookPlugin;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v20, "_id"

    aput-object v20, v4, v6

    const/4 v6, 0x1

    const-string v20, "starred"

    aput-object v20, v4, v6

    const/4 v6, 0x2

    const-string v20, "account_type"

    aput-object v20, v4, v6

    const/4 v6, 0x3

    const-string v20, "account_name"

    aput-object v20, v4, v6

    const/4 v6, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v18

    .line 1994
    if-eqz v18, :cond_61

    .line 1996
    move-object/from16 v0, v18

    move/from16 v1, p1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v2

    if-nez v2, :cond_66

    .line 1998
    sget-object v12, Lcom/samsung/swift/service/phonebook/PhonebookPlugin;->emptyLinkedHashMap:Ljava/util/LinkedHashMap;
    :try_end_58
    .catchall {:try_start_3 .. :try_end_58} :catchall_f5

    .line 2077
    if-eqz v18, :cond_5d

    :goto_5a
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->close()V

    .line 2073
    :cond_5d
    return-object v12

    .line 1987
    .end local v7           #sortClause:Ljava/lang/String;
    :cond_5e
    :try_start_5e
    const-string v5, "deleted = 0"

    goto :goto_24

    .line 2003
    .restart local v7       #sortClause:Ljava/lang/String;
    :cond_61
    sget-object v12, Lcom/samsung/swift/service/phonebook/PhonebookPlugin;->emptyLinkedHashMap:Ljava/util/LinkedHashMap;

    .line 2077
    if-eqz v18, :cond_5d

    goto :goto_5a

    .line 2006
    :cond_66
    new-instance v12, Ljava/util/LinkedHashMap;

    move/from16 v0, p2

    invoke-direct {v12, v0}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 2007
    .local v12, contacts:Ljava/util/LinkedHashMap;,"Ljava/util/LinkedHashMap<Ljava/lang/Long;Lcom/samsung/swift/service/phonebook/Contact;>;"
    const-string v2, "_id"

    move-object/from16 v0, v18

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    .line 2009
    .local v13, idCol:I
    const-wide/16 v14, -0x1

    .line 2012
    .local v14, prevContactId:J
    :cond_77
    move-object/from16 v0, v18

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v16

    .line 2014
    .local v16, searchContactId:J
    const-string v2, "account_type"

    move-object/from16 v0, v18

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v18

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 2016
    .local v10, accountType:Ljava/lang/String;
    const-string v2, "account_name"

    move-object/from16 v0, v18

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v18

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 2018
    .local v9, accountName:Ljava/lang/String;
    new-instance v8, Lcom/samsung/swift/service/phonebook/Account;

    invoke-direct {v8}, Lcom/samsung/swift/service/phonebook/Account;-><init>()V

    .line 2020
    .local v8, account:Lcom/samsung/swift/service/phonebook/Account;
    const-string v2, "starred"

    move-object/from16 v0, v18

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v18

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v19

    .line 2022
    .local v19, starred:I
    cmp-long v2, v14, v16

    if-eqz v2, :cond_de

    .line 2024
    new-instance v11, Lcom/samsung/swift/service/phonebook/Contact;

    invoke-direct {v11}, Lcom/samsung/swift/service/phonebook/Contact;-><init>()V

    .line 2025
    .local v11, contact:Lcom/samsung/swift/service/phonebook/Contact;
    move-wide/from16 v0, v16

    invoke-virtual {v11, v0, v1}, Lcom/samsung/swift/service/phonebook/Contact;->setId(J)V

    .line 2027
    if-lez v19, :cond_f0

    .line 2029
    const/4 v2, 0x1

    invoke-virtual {v11, v2}, Lcom/samsung/swift/service/phonebook/Contact;->setFavourite(Z)V

    .line 2036
    :goto_c0
    invoke-static {}, Lcom/samsung/swift/Swift;->isEmulator()Z

    move-result v2

    if-eqz v2, :cond_fc

    if-eqz v10, :cond_ca

    if-nez v9, :cond_fc

    .line 2039
    :cond_ca
    const-string v2, "Phone"

    invoke-virtual {v8, v2}, Lcom/samsung/swift/service/phonebook/Account;->setName(Ljava/lang/String;)V

    .line 2040
    const-string v2, "Phone"

    invoke-virtual {v8, v2}, Lcom/samsung/swift/service/phonebook/Account;->setType(Ljava/lang/String;)V

    .line 2066
    :cond_d4
    :goto_d4
    invoke-virtual {v11, v8}, Lcom/samsung/swift/service/phonebook/Contact;->setAccount(Lcom/samsung/swift/service/phonebook/Account;)V

    .line 2068
    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v12, v2, v11}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2071
    .end local v11           #contact:Lcom/samsung/swift/service/phonebook/Contact;
    :cond_de
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_ec

    invoke-virtual {v12}, Ljava/util/LinkedHashMap;->size()I

    move-result v2

    move/from16 v0, p2

    if-lt v2, v0, :cond_77

    .line 2077
    :cond_ec
    if-eqz v18, :cond_5d

    goto/16 :goto_5a

    .line 2033
    .restart local v11       #contact:Lcom/samsung/swift/service/phonebook/Contact;
    :cond_f0
    const/4 v2, 0x0

    invoke-virtual {v11, v2}, Lcom/samsung/swift/service/phonebook/Contact;->setFavourite(Z)V
    :try_end_f4
    .catchall {:try_start_5e .. :try_end_f4} :catchall_f5

    goto :goto_c0

    .line 2077
    .end local v7           #sortClause:Ljava/lang/String;
    .end local v8           #account:Lcom/samsung/swift/service/phonebook/Account;
    .end local v9           #accountName:Ljava/lang/String;
    .end local v10           #accountType:Ljava/lang/String;
    .end local v11           #contact:Lcom/samsung/swift/service/phonebook/Contact;
    .end local v12           #contacts:Ljava/util/LinkedHashMap;,"Ljava/util/LinkedHashMap<Ljava/lang/Long;Lcom/samsung/swift/service/phonebook/Contact;>;"
    .end local v13           #idCol:I
    .end local v14           #prevContactId:J
    .end local v16           #searchContactId:J
    .end local v19           #starred:I
    :catchall_f5
    move-exception v2

    if-eqz v18, :cond_fb

    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->close()V

    :cond_fb
    throw v2

    .line 2044
    .restart local v7       #sortClause:Ljava/lang/String;
    .restart local v8       #account:Lcom/samsung/swift/service/phonebook/Account;
    .restart local v9       #accountName:Ljava/lang/String;
    .restart local v10       #accountType:Ljava/lang/String;
    .restart local v11       #contact:Lcom/samsung/swift/service/phonebook/Contact;
    .restart local v12       #contacts:Ljava/util/LinkedHashMap;,"Ljava/util/LinkedHashMap<Ljava/lang/Long;Lcom/samsung/swift/service/phonebook/Contact;>;"
    .restart local v13       #idCol:I
    .restart local v14       #prevContactId:J
    .restart local v16       #searchContactId:J
    .restart local v19       #starred:I
    :cond_fc
    :try_start_fc
    const-string v2, "vnd.sec.contact.phone"

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10f

    .line 2046
    const-string v2, "Phone"

    invoke-virtual {v8, v2}, Lcom/samsung/swift/service/phonebook/Account;->setName(Ljava/lang/String;)V

    .line 2047
    const-string v2, "Phone"

    invoke-virtual {v8, v2}, Lcom/samsung/swift/service/phonebook/Account;->setType(Ljava/lang/String;)V

    goto :goto_d4

    .line 2049
    :cond_10f
    const-string v2, "vnd.sec.contact.sim"

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_122

    .line 2051
    const-string v2, "SIM"

    invoke-virtual {v8, v2}, Lcom/samsung/swift/service/phonebook/Account;->setName(Ljava/lang/String;)V

    .line 2052
    const-string v2, "SIM"

    invoke-virtual {v8, v2}, Lcom/samsung/swift/service/phonebook/Account;->setType(Ljava/lang/String;)V

    goto :goto_d4

    .line 2054
    :cond_122
    const-string v2, "com.google"

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_133

    .line 2056
    invoke-virtual {v8, v9}, Lcom/samsung/swift/service/phonebook/Account;->setName(Ljava/lang/String;)V

    .line 2057
    const-string v2, "Google"

    invoke-virtual {v8, v2}, Lcom/samsung/swift/service/phonebook/Account;->setType(Ljava/lang/String;)V

    goto :goto_d4

    .line 2059
    :cond_133
    const-string v2, "com.osp.app.signin"

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d4

    .line 2061
    invoke-virtual {v8, v9}, Lcom/samsung/swift/service/phonebook/Account;->setName(Ljava/lang/String;)V

    .line 2062
    const-string v2, "Samsung"

    invoke-virtual {v8, v2}, Lcom/samsung/swift/service/phonebook/Account;->setType(Ljava/lang/String;)V
    :try_end_143
    .catchall {:try_start_fc .. :try_end_143} :catchall_f5

    goto :goto_d4
.end method

.method private static sortAndPaginateSDK7(Ljava/util/LinkedHashMap;III)Ljava/util/LinkedHashMap;
    .registers 24
    .parameter
    .parameter "startIndex"
    .parameter "maxItems"
    .parameter "sort"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/samsung/swift/service/phonebook/Contact;",
            ">;III)",
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/samsung/swift/service/phonebook/Contact;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2626
    .local p0, sortedContacts:Ljava/util/LinkedHashMap;,"Ljava/util/LinkedHashMap<Ljava/lang/Long;Lcom/samsung/swift/service/phonebook/Contact;>;"
    const/16 v17, 0x0

    .line 2629
    .local v17, searchCursor:Landroid/database/Cursor;
    const/4 v5, 0x0

    .line 2630
    .local v5, whereClause:Ljava/lang/String;
    :try_start_3
    invoke-virtual/range {p0 .. p0}, Ljava/util/LinkedHashMap;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_60

    .line 2632
    const-string v2, "_id"

    invoke-virtual/range {p0 .. p0}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/swift/service/phonebook/PhonebookPlugin;->generateInClause(Ljava/lang/String;Ljava/util/Set;)Ljava/lang/String;

    move-result-object v5

    .line 2634
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " AND deleted = 0"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 2641
    :goto_26
    invoke-static/range {p3 .. p3}, Lcom/samsung/swift/service/phonebook/PhonebookPlugin;->sortClause(I)Ljava/lang/String;

    move-result-object v7

    .line 2642
    .local v7, sortClause:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/swift/service/phonebook/PhonebookPlugin;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v19, "_id"

    aput-object v19, v4, v6

    const/4 v6, 0x1

    const-string v19, "starred"

    aput-object v19, v4, v6

    const/4 v6, 0x2

    const-string v19, "account_type"

    aput-object v19, v4, v6

    const/4 v6, 0x3

    const-string v19, "account_name"

    aput-object v19, v4, v6

    const/4 v6, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v17

    .line 2645
    if-eqz v17, :cond_63

    .line 2647
    move-object/from16 v0, v17

    move/from16 v1, p1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v2

    if-nez v2, :cond_68

    .line 2649
    sget-object p0, Lcom/samsung/swift/service/phonebook/PhonebookPlugin;->emptyLinkedHashMap:Ljava/util/LinkedHashMap;
    :try_end_5a
    .catchall {:try_start_3 .. :try_end_5a} :catchall_e9

    .line 2729
    .end local p0           #sortedContacts:Ljava/util/LinkedHashMap;,"Ljava/util/LinkedHashMap<Ljava/lang/Long;Lcom/samsung/swift/service/phonebook/Contact;>;"
    if-eqz v17, :cond_5f

    :goto_5c
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->close()V

    .line 2725
    :cond_5f
    return-object p0

    .line 2638
    .end local v7           #sortClause:Ljava/lang/String;
    .restart local p0       #sortedContacts:Ljava/util/LinkedHashMap;,"Ljava/util/LinkedHashMap<Ljava/lang/Long;Lcom/samsung/swift/service/phonebook/Contact;>;"
    :cond_60
    :try_start_60
    const-string v5, "deleted = 0"

    goto :goto_26

    .line 2654
    .restart local v7       #sortClause:Ljava/lang/String;
    :cond_63
    sget-object p0, Lcom/samsung/swift/service/phonebook/PhonebookPlugin;->emptyLinkedHashMap:Ljava/util/LinkedHashMap;

    .line 2729
    .end local p0           #sortedContacts:Ljava/util/LinkedHashMap;,"Ljava/util/LinkedHashMap<Ljava/lang/Long;Lcom/samsung/swift/service/phonebook/Contact;>;"
    if-eqz v17, :cond_5f

    goto :goto_5c

    .line 2657
    .restart local p0       #sortedContacts:Ljava/util/LinkedHashMap;,"Ljava/util/LinkedHashMap<Ljava/lang/Long;Lcom/samsung/swift/service/phonebook/Contact;>;"
    :cond_68
    const-string v2, "_id"

    move-object/from16 v0, v17

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    .line 2659
    .local v12, idCol:I
    const-wide/16 v13, -0x1

    .line 2662
    .local v13, prevContactId:J
    :cond_72
    move-object/from16 v0, v17

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v15

    .line 2664
    .local v15, searchContactId:J
    const-string v2, "account_type"

    move-object/from16 v0, v17

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v17

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 2666
    .local v10, accountType:Ljava/lang/String;
    const-string v2, "account_name"

    move-object/from16 v0, v17

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v17

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 2668
    .local v9, accountName:Ljava/lang/String;
    new-instance v8, Lcom/samsung/swift/service/phonebook/Account;

    invoke-direct {v8}, Lcom/samsung/swift/service/phonebook/Account;-><init>()V

    .line 2670
    .local v8, account:Lcom/samsung/swift/service/phonebook/Account;
    const-string v2, "starred"

    move-object/from16 v0, v17

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v17

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v18

    .line 2672
    .local v18, starred:I
    cmp-long v2, v13, v15

    if-eqz v2, :cond_da

    .line 2674
    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/samsung/swift/service/phonebook/Contact;

    .line 2676
    .local v11, contact:Lcom/samsung/swift/service/phonebook/Contact;
    if-eqz v11, :cond_da

    .line 2678
    move-wide v0, v15

    invoke-virtual {v11, v0, v1}, Lcom/samsung/swift/service/phonebook/Contact;->setId(J)V

    .line 2680
    if-lez v18, :cond_e4

    .line 2682
    const/4 v2, 0x1

    invoke-virtual {v11, v2}, Lcom/samsung/swift/service/phonebook/Contact;->setFavourite(Z)V

    .line 2689
    :goto_c3
    invoke-static {}, Lcom/samsung/swift/Swift;->isEmulator()Z

    move-result v2

    if-eqz v2, :cond_f0

    if-eqz v10, :cond_cd

    if-nez v9, :cond_f0

    .line 2692
    :cond_cd
    const-string v2, "Phone"

    invoke-virtual {v8, v2}, Lcom/samsung/swift/service/phonebook/Account;->setName(Ljava/lang/String;)V

    .line 2693
    const-string v2, "Phone"

    invoke-virtual {v8, v2}, Lcom/samsung/swift/service/phonebook/Account;->setType(Ljava/lang/String;)V

    .line 2719
    :cond_d7
    :goto_d7
    invoke-virtual {v11, v8}, Lcom/samsung/swift/service/phonebook/Contact;->setAccount(Lcom/samsung/swift/service/phonebook/Account;)V

    .line 2723
    .end local v11           #contact:Lcom/samsung/swift/service/phonebook/Contact;
    :cond_da
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_72

    .line 2729
    if-eqz v17, :cond_5f

    goto/16 :goto_5c

    .line 2686
    .restart local v11       #contact:Lcom/samsung/swift/service/phonebook/Contact;
    :cond_e4
    const/4 v2, 0x0

    invoke-virtual {v11, v2}, Lcom/samsung/swift/service/phonebook/Contact;->setFavourite(Z)V
    :try_end_e8
    .catchall {:try_start_60 .. :try_end_e8} :catchall_e9

    goto :goto_c3

    .line 2729
    .end local v7           #sortClause:Ljava/lang/String;
    .end local v8           #account:Lcom/samsung/swift/service/phonebook/Account;
    .end local v9           #accountName:Ljava/lang/String;
    .end local v10           #accountType:Ljava/lang/String;
    .end local v11           #contact:Lcom/samsung/swift/service/phonebook/Contact;
    .end local v12           #idCol:I
    .end local v13           #prevContactId:J
    .end local v15           #searchContactId:J
    .end local v18           #starred:I
    :catchall_e9
    move-exception v2

    if-eqz v17, :cond_ef

    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->close()V

    :cond_ef
    throw v2

    .line 2697
    .restart local v7       #sortClause:Ljava/lang/String;
    .restart local v8       #account:Lcom/samsung/swift/service/phonebook/Account;
    .restart local v9       #accountName:Ljava/lang/String;
    .restart local v10       #accountType:Ljava/lang/String;
    .restart local v11       #contact:Lcom/samsung/swift/service/phonebook/Contact;
    .restart local v12       #idCol:I
    .restart local v13       #prevContactId:J
    .restart local v15       #searchContactId:J
    .restart local v18       #starred:I
    :cond_f0
    :try_start_f0
    const-string v2, "vnd.sec.contact.phone"

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_103

    .line 2699
    const-string v2, "Phone"

    invoke-virtual {v8, v2}, Lcom/samsung/swift/service/phonebook/Account;->setName(Ljava/lang/String;)V

    .line 2700
    const-string v2, "Phone"

    invoke-virtual {v8, v2}, Lcom/samsung/swift/service/phonebook/Account;->setType(Ljava/lang/String;)V

    goto :goto_d7

    .line 2702
    :cond_103
    const-string v2, "vnd.sec.contact.sim"

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_116

    .line 2704
    const-string v2, "SIM"

    invoke-virtual {v8, v2}, Lcom/samsung/swift/service/phonebook/Account;->setName(Ljava/lang/String;)V

    .line 2705
    const-string v2, "SIM"

    invoke-virtual {v8, v2}, Lcom/samsung/swift/service/phonebook/Account;->setType(Ljava/lang/String;)V

    goto :goto_d7

    .line 2707
    :cond_116
    const-string v2, "com.google"

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_127

    .line 2709
    invoke-virtual {v8, v9}, Lcom/samsung/swift/service/phonebook/Account;->setName(Ljava/lang/String;)V

    .line 2710
    const-string v2, "Google"

    invoke-virtual {v8, v2}, Lcom/samsung/swift/service/phonebook/Account;->setType(Ljava/lang/String;)V

    goto :goto_d7

    .line 2712
    :cond_127
    const-string v2, "com.osp.app.signin"

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d7

    .line 2714
    invoke-virtual {v8, v9}, Lcom/samsung/swift/service/phonebook/Account;->setName(Ljava/lang/String;)V

    .line 2715
    const-string v2, "Samsung"

    invoke-virtual {v8, v2}, Lcom/samsung/swift/service/phonebook/Account;->setType(Ljava/lang/String;)V
    :try_end_137
    .catchall {:try_start_f0 .. :try_end_137} :catchall_e9

    goto :goto_d7
.end method

.method private static sortByDisplayNameSDK7(Ljava/util/Set;III)Ljava/util/LinkedHashMap;
    .registers 23
    .parameter
    .parameter "sort"
    .parameter "startIndex"
    .parameter "maxItems"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;III)",
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/samsung/swift/service/phonebook/Contact;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2531
    .local p0, selectedContacts:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Long;>;"
    const/16 v16, 0x0

    .line 2535
    .local v16, searchCursor:Landroid/database/Cursor;
    :try_start_2
    invoke-static/range {p1 .. p1}, Lcom/samsung/swift/service/phonebook/PhonebookPlugin;->sortClauseSDK7(I)Ljava/lang/String;

    move-result-object v7

    .line 2537
    .local v7, sortClause:Ljava/lang/String;
    const/4 v5, 0x0

    .line 2539
    .local v5, whereClause:Ljava/lang/String;
    invoke-interface/range {p0 .. p0}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_15

    .line 2541
    const-string v2, "raw_contact_id"

    move-object/from16 v0, p0

    invoke-static {v2, v0}, Lcom/samsung/swift/service/phonebook/PhonebookPlugin;->generateInClause(Ljava/lang/String;Ljava/util/Set;)Ljava/lang/String;

    move-result-object v5

    .line 2544
    :cond_15
    invoke-static {}, Lcom/samsung/swift/service/phonebook/PhonebookPlugin;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v18, "raw_contact_id"

    aput-object v18, v4, v6

    const/4 v6, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v16

    .line 2547
    if-eqz v16, :cond_38

    .line 2549
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-nez v2, :cond_3d

    .line 2551
    sget-object v11, Lcom/samsung/swift/service/phonebook/PhonebookPlugin;->emptyLinkedHashMap:Ljava/util/LinkedHashMap;
    :try_end_32
    .catchall {:try_start_2 .. :try_end_32} :catchall_82

    .line 2591
    if-eqz v16, :cond_37

    :goto_34
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    .line 2586
    :cond_37
    return-object v11

    .line 2556
    :cond_38
    :try_start_38
    sget-object v11, Lcom/samsung/swift/service/phonebook/PhonebookPlugin;->emptyLinkedHashMap:Ljava/util/LinkedHashMap;

    .line 2591
    if-eqz v16, :cond_37

    goto :goto_34

    .line 2559
    :cond_3d
    new-instance v11, Ljava/util/LinkedHashMap;

    move/from16 v0, p3

    invoke-direct {v11, v0}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 2561
    .local v11, contacts:Ljava/util/LinkedHashMap;,"Ljava/util/LinkedHashMap<Ljava/lang/Long;Lcom/samsung/swift/service/phonebook/Contact;>;"
    const-wide/16 v14, -0x1

    .line 2562
    .local v14, prevContactId:J
    const-string v2, "raw_contact_id"

    move-object/from16 v0, v16

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    .line 2563
    .local v13, idCol:I
    const/16 v17, 0x0

    .line 2564
    .local v17, totalCount:I
    const/4 v12, 0x0

    .line 2567
    .local v12, firstIndex:I
    :cond_51
    move-object/from16 v0, v16

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    .line 2568
    .local v9, contactId:J
    cmp-long v2, v14, v9

    if-eqz v2, :cond_72

    .line 2570
    move/from16 v0, p2

    if-lt v12, v0, :cond_70

    .line 2572
    new-instance v8, Lcom/samsung/swift/service/phonebook/Contact;

    invoke-direct {v8}, Lcom/samsung/swift/service/phonebook/Contact;-><init>()V

    .line 2573
    .local v8, contact:Lcom/samsung/swift/service/phonebook/Contact;
    invoke-virtual {v8, v9, v10}, Lcom/samsung/swift/service/phonebook/Contact;->setId(J)V

    .line 2574
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v11, v2, v8}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2575
    add-int/lit8 v17, v17, 0x1

    .line 2578
    .end local v8           #contact:Lcom/samsung/swift/service/phonebook/Contact;
    :cond_70
    add-int/lit8 v12, v12, 0x1

    .line 2581
    :cond_72
    move-wide v14, v9

    .line 2584
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_76
    .catchall {:try_start_38 .. :try_end_76} :catchall_82

    move-result v2

    if-eqz v2, :cond_7f

    move/from16 v0, v17

    move/from16 v1, p3

    if-lt v0, v1, :cond_51

    .line 2591
    :cond_7f
    if-eqz v16, :cond_37

    goto :goto_34

    .end local v5           #whereClause:Ljava/lang/String;
    .end local v7           #sortClause:Ljava/lang/String;
    .end local v9           #contactId:J
    .end local v11           #contacts:Ljava/util/LinkedHashMap;,"Ljava/util/LinkedHashMap<Ljava/lang/Long;Lcom/samsung/swift/service/phonebook/Contact;>;"
    .end local v12           #firstIndex:I
    .end local v13           #idCol:I
    .end local v14           #prevContactId:J
    .end local v17           #totalCount:I
    :catchall_82
    move-exception v2

    if-eqz v16, :cond_88

    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    :cond_88
    throw v2
.end method

.method private static sortClause(I)Ljava/lang/String;
    .registers 4
    .parameter "sort"

    .prologue
    const/4 v2, 0x7

    const/4 v0, 0x0

    .line 1934
    const/4 v1, 0x1

    if-ne p0, v1, :cond_13

    .line 1937
    invoke-static {}, Lcom/samsung/swift/service/phonebook/PhonebookPlugin;->isSKT()Z

    move-result v1

    if-eqz v1, :cond_10

    sget v1, Lcom/samsung/swift/service/phonebook/PhonebookPlugin;->androidVersion:I

    if-ne v1, v2, :cond_10

    .line 1968
    :cond_f
    :goto_f
    return-object v0

    .line 1943
    :cond_10
    const-string v0, "display_name COLLATE LOCALIZED ASC"

    goto :goto_f

    .line 1946
    :cond_13
    const/4 v1, 0x2

    if-ne p0, v1, :cond_23

    .line 1949
    invoke-static {}, Lcom/samsung/swift/service/phonebook/PhonebookPlugin;->isSKT()Z

    move-result v1

    if-eqz v1, :cond_20

    sget v1, Lcom/samsung/swift/service/phonebook/PhonebookPlugin;->androidVersion:I

    if-eq v1, v2, :cond_f

    .line 1955
    :cond_20
    const-string v0, "display_name COLLATE LOCALIZED DESC"

    goto :goto_f

    .line 1958
    :cond_23
    const/4 v1, 0x3

    if-ne p0, v1, :cond_29

    .line 1960
    const-string v0, "_id ASC"

    goto :goto_f

    .line 1962
    :cond_29
    const/4 v1, 0x4

    if-ne p0, v1, :cond_2f

    .line 1964
    const-string v0, "_id DESC"

    goto :goto_f

    .line 1966
    :cond_2f
    if-eqz p0, :cond_f

    .line 1970
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method private static sortClauseSDK7(I)Ljava/lang/String;
    .registers 2
    .parameter "sort"

    .prologue
    .line 2599
    const/4 v0, 0x1

    if-ne p0, v0, :cond_6

    .line 2601
    const-string v0, "display_name COLLATE LOCALIZED ASC"

    .line 2617
    :goto_5
    return-object v0

    .line 2603
    :cond_6
    const/4 v0, 0x2

    if-ne p0, v0, :cond_c

    .line 2605
    const-string v0, "display_name COLLATE LOCALIZED DESC"

    goto :goto_5

    .line 2607
    :cond_c
    const/4 v0, 0x3

    if-ne p0, v0, :cond_12

    .line 2609
    const-string v0, "raw_contact_id ASC"

    goto :goto_5

    .line 2611
    :cond_12
    const/4 v0, 0x4

    if-ne p0, v0, :cond_18

    .line 2613
    const-string v0, "raw_contact_id DESC"

    goto :goto_5

    .line 2615
    :cond_18
    if-nez p0, :cond_1c

    .line 2617
    const/4 v0, 0x0

    goto :goto_5

    .line 2619
    :cond_1c
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method private static streamLogo(JLjava/io/OutputStream;)V
    .registers 7
    .parameter "contactId"
    .parameter "os"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1124
    invoke-static {p0, p1}, Lcom/samsung/swift/service/phonebook/PhonebookPlugin;->getLogoFromDB(J)Ljava/io/InputStream;

    move-result-object v2

    .line 1126
    .local v2, input:Ljava/io/InputStream;
    const/16 v3, 0x400

    new-array v0, v3, [B

    .line 1128
    .local v0, buffer:[B
    array-length v1, v0

    .line 1129
    .local v1, bytes:I
    :goto_9
    array-length v3, v0

    if-ne v1, v3, :cond_13

    .line 1131
    invoke-virtual {v2, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    .line 1132
    const/4 v3, -0x1

    if-ne v1, v3, :cond_14

    .line 1138
    :cond_13
    return-void

    .line 1136
    :cond_14
    const/4 v3, 0x0

    invoke-virtual {p2, v0, v3, v1}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_9
.end method

.method public static verifyContact(J)Z
    .registers 11
    .parameter "contactId"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 959
    const-wide/16 v1, 0x0

    cmp-long v1, p0, v1

    if-gez v1, :cond_a

    move v1, v7

    .line 985
    :goto_9
    return v1

    .line 964
    :cond_a
    invoke-static {}, Lcom/samsung/swift/service/phonebook/PhonebookPlugin;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 966
    .local v0, cr:Landroid/content/ContentResolver;
    const/4 v6, 0x0

    .line 970
    .local v6, contactCur:Landroid/database/Cursor;
    :try_start_f
    sget-object v1, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1, p0, p1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v3

    const-string v3, "deleted = 0"

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 973
    if-eqz v6, :cond_34

    .line 975
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_2a
    .catchall {:try_start_f .. :try_end_2a} :catchall_42

    move-result v1

    if-nez v1, :cond_3b

    .line 989
    if-eqz v6, :cond_32

    .line 991
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_32
    move v1, v7

    .line 977
    goto :goto_9

    .line 989
    :cond_34
    if-eqz v6, :cond_39

    .line 991
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_39
    move v1, v7

    .line 982
    goto :goto_9

    .line 989
    :cond_3b
    if-eqz v6, :cond_40

    .line 991
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_40
    move v1, v8

    .line 985
    goto :goto_9

    .line 989
    :catchall_42
    move-exception v1

    if-eqz v6, :cond_48

    .line 991
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 989
    :cond_48
    throw v1
.end method
