.class public Lcom/google/googlenav/friend/android/ContactsAccessorSdk5;
.super Lcom/google/googlenav/friend/android/e;
.source "SourceFile"


# static fields
.field public static final a:[Ljava/lang/String;

.field private static final b:[Ljava/lang/String;

.field private static final c:[Ljava/lang/String;

.field private static final d:[Ljava/lang/String;

.field private static final e:Ljava/lang/String;

.field private static final f:Ljava/util/HashMap;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 50
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v2

    const-string v1, "contact_id"

    aput-object v1, v0, v3

    sput-object v0, Lcom/google/googlenav/friend/android/ContactsAccessorSdk5;->b:[Ljava/lang/String;

    .line 56
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v2

    const-string v1, "contact_id"

    aput-object v1, v0, v3

    const-string v1, "data1"

    aput-object v1, v0, v4

    const-string v1, "display_name"

    aput-object v1, v0, v5

    sput-object v0, Lcom/google/googlenav/friend/android/ContactsAccessorSdk5;->c:[Ljava/lang/String;

    .line 64
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v2

    const-string v1, "contact_id"

    aput-object v1, v0, v3

    const-string v1, "display_name"

    aput-object v1, v0, v4

    const-string v1, "data1"

    aput-object v1, v0, v5

    sput-object v0, Lcom/google/googlenav/friend/android/ContactsAccessorSdk5;->d:[Ljava/lang/String;

    .line 73
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v2

    const-string v1, "system_id"

    aput-object v1, v0, v3

    const-string v1, "title"

    aput-object v1, v0, v4

    sput-object v0, Lcom/google/googlenav/friend/android/ContactsAccessorSdk5;->a:[Ljava/lang/String;

    .line 85
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "data1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " like ? OR "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "data1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " like ? OR "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "display_name"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " like ? OR "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "display_name"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " like ? )"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/googlenav/friend/android/ContactsAccessorSdk5;->e:Ljava/lang/String;

    .line 98
    invoke-static {}, Lcom/google/googlenav/friend/android/ContactsAccessorSdk5;->d()Ljava/util/HashMap;

    move-result-object v0

    sput-object v0, Lcom/google/googlenav/friend/android/ContactsAccessorSdk5;->f:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/google/googlenav/friend/android/e;-><init>()V

    .line 27
    return-void
.end method

.method private b(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;
    .registers 9
    .parameter
    .parameter

    .prologue
    .line 215
    const-string v3, "data1=? AND mimetype=?"

    .line 217
    const/4 v0, 0x2

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p2, v4, v0

    const/4 v0, 0x1

    const-string v1, "vnd.android.cursor.item/group_membership"

    aput-object v1, v4, v0

    .line 222
    sget-object v1, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/google/googlenav/friend/android/ContactsAccessorSdk5;->b:[Ljava/lang/String;

    const/4 v5, 0x0

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 224
    const-string v1, "contact_id"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/google/googlenav/friend/android/ContactsAccessorSdk5;->a(Landroid/database/Cursor;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic c()Ljava/util/HashMap;
    .registers 1

    .prologue
    .line 25
    sget-object v0, Lcom/google/googlenav/friend/android/ContactsAccessorSdk5;->f:Ljava/util/HashMap;

    return-object v0
.end method

.method private static final d()Ljava/util/HashMap;
    .registers 3

    .prologue
    .line 101
    invoke-static {}, Lcom/google/common/collect/Maps;->a()Ljava/util/HashMap;

    move-result-object v0

    .line 102
    const-string v1, "_id"

    const-string v2, "_id"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    const-string v1, "contacts_accessor_contact_id"

    const-string v2, "_id"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    const-string v1, "contacts_accessor_email_address"

    const-string v2, "data1"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    const-string v1, "contacts_accessor_phone_number"

    const-string v2, "_id"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    const-string v1, "contacts_accessor_contact_display_name"

    const-string v2, "display_name"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    const-string v1, "contacts_accessor_group_id"

    const-string v2, "_id"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    const-string v1, "contacts_accessor_group_system_id"

    const-string v2, "system_id"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    const-string v1, "contacts_accessor_group_title"

    const-string v2, "title"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    const-string v1, "contacts_accessor_formatted_address"

    const-string v2, "data1"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    return-object v0
.end method


# virtual methods
.method public a(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/database/Cursor;
    .registers 9
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 121
    sget-object v2, Lcom/google/googlenav/friend/android/ContactsAccessorSdk5;->d:[Ljava/lang/String;

    move-object v0, p1

    move-object v1, p2

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 126
    invoke-virtual {p0, v0}, Lcom/google/googlenav/friend/android/ContactsAccessorSdk5;->a(Landroid/database/Cursor;)Lcom/google/googlenav/friend/android/f;

    move-result-object v0

    .line 127
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 128
    return-object v0
.end method

.method public a(Landroid/content/ContentResolver;Ljava/lang/String;)Landroid/database/Cursor;
    .registers 9
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 135
    .line 137
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_57

    .line 138
    sget-object v3, Lcom/google/googlenav/friend/android/ContactsAccessorSdk5;->e:Ljava/lang/String;

    .line 142
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "%"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 143
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "% "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "%"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 146
    const/4 v2, 0x4

    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v0, v4, v2

    const/4 v2, 0x1

    aput-object v1, v4, v2

    const/4 v2, 0x2

    aput-object v0, v4, v2

    const/4 v0, 0x3

    aput-object v1, v4, v0

    .line 148
    :goto_44
    sget-object v1, Landroid/provider/ContactsContract$CommonDataKinds$StructuredPostal;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/google/googlenav/friend/android/ContactsAccessorSdk5;->d:[Ljava/lang/String;

    const-string v5, "display_name ASC"

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 150
    invoke-virtual {p0, v0}, Lcom/google/googlenav/friend/android/ContactsAccessorSdk5;->a(Landroid/database/Cursor;)Lcom/google/googlenav/friend/android/f;

    move-result-object v0

    .line 151
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 152
    return-object v0

    :cond_57
    move-object v3, v4

    goto :goto_44
.end method

.method public a(Landroid/content/ContentResolver;Ljava/lang/String;ZLjava/lang/CharSequence;)Landroid/database/Cursor;
    .registers 11
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 169
    .line 170
    if-eqz p2, :cond_1b

    .line 171
    invoke-direct {p0, p1, p2}, Lcom/google/googlenav/friend/android/ContactsAccessorSdk5;->b(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 173
    :goto_7
    invoke-virtual {p0, v0, p4}, Lcom/google/googlenav/friend/android/ContactsAccessorSdk5;->a(Ljava/lang/String;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    .line 175
    sget-object v1, Landroid/provider/ContactsContract$CommonDataKinds$Email;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/google/googlenav/friend/android/ContactsAccessorSdk5;->c:[Ljava/lang/String;

    const-string v5, "display_name COLLATE NOCASE ASC"

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 177
    invoke-virtual {p0, v0}, Lcom/google/googlenav/friend/android/ContactsAccessorSdk5;->a(Landroid/database/Cursor;)Lcom/google/googlenav/friend/android/f;

    move-result-object v0

    return-object v0

    :cond_1b
    move-object v0, v4

    goto :goto_7
.end method

.method public a(Landroid/database/Cursor;)Lcom/google/googlenav/friend/android/f;
    .registers 3
    .parameter

    .prologue
    .line 203
    new-instance v0, Lcom/google/googlenav/friend/android/g;

    invoke-direct {v0, p0, p1}, Lcom/google/googlenav/friend/android/g;-><init>(Lcom/google/googlenav/friend/android/ContactsAccessorSdk5;Landroid/database/Cursor;)V

    return-object v0
.end method

.method public a(Ljava/lang/String;Ljava/lang/CharSequence;)Ljava/lang/String;
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 238
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 239
    if-eqz p1, :cond_14

    .line 240
    const-string v1, "contact_id"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 241
    const-string v1, " IN "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 242
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 244
    :cond_14
    if-eqz p2, :cond_1d

    if-eqz p1, :cond_1d

    .line 245
    const-string v1, " AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 247
    :cond_1d
    if-eqz p2, :cond_31

    .line 248
    const-string v1, "display_name"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 249
    const-string v1, " LIKE \'%"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 250
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 251
    const-string v1, "%\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 253
    :cond_31
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public b()Landroid/content/Intent;
    .registers 4

    .prologue
    .line 116
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.PICK"

    sget-object v2, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    return-object v0
.end method

.method public b(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/database/Cursor;
    .registers 9
    .parameter
    .parameter

    .prologue
    .line 182
    invoke-virtual {p2}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    .line 183
    sget-object v1, Landroid/provider/ContactsContract$CommonDataKinds$Email;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/google/googlenav/friend/android/ContactsAccessorSdk5;->c:[Ljava/lang/String;

    const-string v3, "contact_id=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    const/4 v5, 0x0

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 186
    invoke-virtual {p0, v0}, Lcom/google/googlenav/friend/android/ContactsAccessorSdk5;->a(Landroid/database/Cursor;)Lcom/google/googlenav/friend/android/f;

    move-result-object v0

    .line 187
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 188
    return-object v0
.end method
