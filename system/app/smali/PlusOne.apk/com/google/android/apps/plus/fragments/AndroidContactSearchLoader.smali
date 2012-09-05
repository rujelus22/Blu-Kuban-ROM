.class public Lcom/google/android/apps/plus/fragments/AndroidContactSearchLoader;
.super Lcom/google/android/apps/plus/phone/EsCursorLoader;
.source "AndroidContactSearchLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/plus/fragments/AndroidContactSearchLoader$1;,
        Lcom/google/android/apps/plus/fragments/AndroidContactSearchLoader$PhoneNumber;
    }
.end annotation


# static fields
.field private static final EMAIL_PROJECTION:[Ljava/lang/String;

.field private static final PHONE_PROJECTION:[Ljava/lang/String;


# instance fields
.field private mIncludePhoneNumbers:Z

.field private final mMinQueryLength:I

.field private final mProjection:[Ljava/lang/String;

.field private final mQuery:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 40
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "lookup"

    aput-object v1, v0, v2

    const-string v1, "display_name"

    aput-object v1, v0, v3

    const-string v1, "data1"

    aput-object v1, v0, v4

    sput-object v0, Lcom/google/android/apps/plus/fragments/AndroidContactSearchLoader;->EMAIL_PROJECTION:[Ljava/lang/String;

    .line 48
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "lookup"

    aput-object v1, v0, v2

    const-string v1, "display_name"

    aput-object v1, v0, v3

    const-string v1, "data1"

    aput-object v1, v0, v4

    const-string v1, "data2"

    aput-object v1, v0, v5

    const/4 v1, 0x4

    const-string v2, "data3"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/apps/plus/fragments/AndroidContactSearchLoader;->PHONE_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;[Ljava/lang/String;Ljava/lang/String;IZ)V
    .registers 7
    .parameter "context"
    .parameter "account"
    .parameter "projection"
    .parameter "query"
    .parameter "minQueryLength"
    .parameter "includePhoneNumbers"

    .prologue
    .line 75
    invoke-direct {p0, p1}, Lcom/google/android/apps/plus/phone/EsCursorLoader;-><init>(Landroid/content/Context;)V

    .line 76
    iput-object p3, p0, Lcom/google/android/apps/plus/fragments/AndroidContactSearchLoader;->mProjection:[Ljava/lang/String;

    .line 77
    iput-object p4, p0, Lcom/google/android/apps/plus/fragments/AndroidContactSearchLoader;->mQuery:Ljava/lang/String;

    .line 78
    iput p5, p0, Lcom/google/android/apps/plus/fragments/AndroidContactSearchLoader;->mMinQueryLength:I

    .line 79
    iput-boolean p6, p0, Lcom/google/android/apps/plus/fragments/AndroidContactSearchLoader;->mIncludePhoneNumbers:Z

    .line 80
    return-void
.end method

.method private addPhoneNumberRows(Lcom/google/android/apps/plus/phone/EsMatrixCursor;Ljava/util/HashMap;Ljava/lang/String;)V
    .registers 7
    .parameter "result"
    .parameter
    .parameter "lookupKey"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/apps/plus/phone/EsMatrixCursor;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/apps/plus/fragments/AndroidContactSearchLoader$PhoneNumber;",
            ">;>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 204
    .local p2, numberMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Lcom/google/android/apps/plus/fragments/AndroidContactSearchLoader$PhoneNumber;>;>;"
    invoke-virtual {p2, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 205
    .local v1, numbers:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/android/apps/plus/fragments/AndroidContactSearchLoader$PhoneNumber;>;"
    if-nez v1, :cond_9

    .line 214
    :goto_8
    return-void

    .line 209
    :cond_9
    const/4 v0, 0x0

    .local v0, i:I
    :goto_a
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_20

    .line 210
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/apps/plus/fragments/AndroidContactSearchLoader$PhoneNumber;

    invoke-direct {p0, v2}, Lcom/google/android/apps/plus/fragments/AndroidContactSearchLoader;->buildPhoneRow(Lcom/google/android/apps/plus/fragments/AndroidContactSearchLoader$PhoneNumber;)[Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/google/android/apps/plus/phone/EsMatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 209
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 213
    :cond_20
    invoke-virtual {p2, p3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_8
.end method

.method private buildEmailRow(Landroid/database/Cursor;)[Ljava/lang/Object;
    .registers 8
    .parameter "cursor"

    .prologue
    .line 220
    const/4 v4, 0x2

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 221
    .local v0, address:Ljava/lang/String;
    iget-object v4, p0, Lcom/google/android/apps/plus/fragments/AndroidContactSearchLoader;->mProjection:[Ljava/lang/String;

    array-length v4, v4

    new-array v3, v4, [Ljava/lang/Object;

    .line 222
    .local v3, row:[Ljava/lang/Object;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_b
    iget-object v4, p0, Lcom/google/android/apps/plus/fragments/AndroidContactSearchLoader;->mProjection:[Ljava/lang/String;

    array-length v4, v4

    if-ge v2, v4, :cond_5f

    .line 223
    iget-object v4, p0, Lcom/google/android/apps/plus/fragments/AndroidContactSearchLoader;->mProjection:[Ljava/lang/String;

    aget-object v1, v4, v2

    .line 224
    .local v1, column:Ljava/lang/String;
    const-string v4, "person_id"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_34

    .line 225
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "e:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v2

    .line 222
    :cond_31
    :goto_31
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 226
    :cond_34
    const-string v4, "lookup_key"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_44

    .line 227
    const/4 v4, 0x0

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v2

    goto :goto_31

    .line 228
    :cond_44
    const-string v4, "name"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_54

    .line 229
    const/4 v4, 0x1

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v2

    goto :goto_31

    .line 230
    :cond_54
    const-string v4, "email"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_31

    .line 231
    aput-object v0, v3, v2

    goto :goto_31

    .line 234
    .end local v1           #column:Ljava/lang/String;
    :cond_5f
    return-object v3
.end method

.method private buildPhoneRow(Lcom/google/android/apps/plus/fragments/AndroidContactSearchLoader$PhoneNumber;)[Ljava/lang/Object;
    .registers 7
    .parameter "phoneNumber"

    .prologue
    .line 241
    iget-object v3, p0, Lcom/google/android/apps/plus/fragments/AndroidContactSearchLoader;->mProjection:[Ljava/lang/String;

    array-length v3, v3

    new-array v2, v3, [Ljava/lang/Object;

    .line 242
    .local v2, row:[Ljava/lang/Object;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_6
    iget-object v3, p0, Lcom/google/android/apps/plus/fragments/AndroidContactSearchLoader;->mProjection:[Ljava/lang/String;

    array-length v3, v3

    if-ge v1, v3, :cond_65

    .line 243
    iget-object v3, p0, Lcom/google/android/apps/plus/fragments/AndroidContactSearchLoader;->mProjection:[Ljava/lang/String;

    aget-object v0, v3, v1

    .line 244
    .local v0, column:Ljava/lang/String;
    const-string v3, "person_id"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_31

    .line 245
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "p:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Lcom/google/android/apps/plus/fragments/AndroidContactSearchLoader$PhoneNumber;->phoneNumber:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    .line 242
    :cond_2e
    :goto_2e
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 246
    :cond_31
    const-string v3, "lookup_key"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3e

    .line 247
    iget-object v3, p1, Lcom/google/android/apps/plus/fragments/AndroidContactSearchLoader$PhoneNumber;->lookupKey:Ljava/lang/String;

    aput-object v3, v2, v1

    goto :goto_2e

    .line 248
    :cond_3e
    const-string v3, "name"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4b

    .line 249
    iget-object v3, p1, Lcom/google/android/apps/plus/fragments/AndroidContactSearchLoader$PhoneNumber;->name:Ljava/lang/String;

    aput-object v3, v2, v1

    goto :goto_2e

    .line 250
    :cond_4b
    const-string v3, "phone"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_58

    .line 251
    iget-object v3, p1, Lcom/google/android/apps/plus/fragments/AndroidContactSearchLoader$PhoneNumber;->phoneNumber:Ljava/lang/String;

    aput-object v3, v2, v1

    goto :goto_2e

    .line 252
    :cond_58
    const-string v3, "phone_type"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2e

    .line 253
    iget-object v3, p1, Lcom/google/android/apps/plus/fragments/AndroidContactSearchLoader$PhoneNumber;->phoneType:Ljava/lang/String;

    aput-object v3, v2, v1

    goto :goto_2e

    .line 256
    .end local v0           #column:Ljava/lang/String;
    :cond_65
    return-object v2
.end method

.method private findEmailAddresses()Landroid/database/Cursor;
    .registers 9

    .prologue
    const/4 v3, 0x0

    .line 102
    new-instance v7, Lcom/google/android/apps/plus/phone/EsMatrixCursor;

    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/AndroidContactSearchLoader;->mProjection:[Ljava/lang/String;

    invoke-direct {v7, v0}, Lcom/google/android/apps/plus/phone/EsMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 103
    .local v7, result:Lcom/google/android/apps/plus/phone/EsMatrixCursor;
    sget-object v0, Landroid/provider/ContactsContract$CommonDataKinds$Email;->CONTENT_FILTER_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/AndroidContactSearchLoader;->mQuery:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 104
    .local v1, uri:Landroid/net/Uri;
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/AndroidContactSearchLoader;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lcom/google/android/apps/plus/fragments/AndroidContactSearchLoader;->EMAIL_PROJECTION:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 107
    .local v6, cursor:Landroid/database/Cursor;
    :cond_24
    :goto_24
    :try_start_24
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_42

    .line 108
    const/4 v0, 0x2

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_24

    .line 109
    invoke-direct {p0, v6}, Lcom/google/android/apps/plus/fragments/AndroidContactSearchLoader;->buildEmailRow(Landroid/database/Cursor;)[Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/google/android/apps/plus/phone/EsMatrixCursor;->addRow([Ljava/lang/Object;)V
    :try_end_3c
    .catchall {:try_start_24 .. :try_end_3c} :catchall_3d

    goto :goto_24

    .line 113
    :catchall_3d
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_42
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 116
    return-object v7
.end method

.method private findEmailAddressesAndPhoneNumbers()Landroid/database/Cursor;
    .registers 21

    .prologue
    .line 123
    new-instance v19, Lcom/google/android/apps/plus/phone/EsMatrixCursor;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/apps/plus/fragments/AndroidContactSearchLoader;->mProjection:[Ljava/lang/String;

    move-object/from16 v0, v19

    invoke-direct {v0, v4}, Lcom/google/android/apps/plus/phone/EsMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 124
    .local v19, result:Lcom/google/android/apps/plus/phone/EsMatrixCursor;
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/plus/fragments/AndroidContactSearchLoader;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 125
    .local v2, resolver:Landroid/content/ContentResolver;
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/plus/fragments/AndroidContactSearchLoader;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    .line 127
    .local v18, resources:Landroid/content/res/Resources;
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 128
    .local v12, lookupKeys:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v14, Ljava/util/HashMap;

    invoke-direct {v14}, Ljava/util/HashMap;-><init>()V

    .line 130
    .local v14, numberMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Lcom/google/android/apps/plus/fragments/AndroidContactSearchLoader$PhoneNumber;>;>;"
    sget-object v4, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->CONTENT_FILTER_URI:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/apps/plus/fragments/AndroidContactSearchLoader;->mQuery:Ljava/lang/String;

    invoke-static {v5}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 131
    .local v3, uri:Landroid/net/Uri;
    sget-object v4, Lcom/google/android/apps/plus/fragments/AndroidContactSearchLoader;->PHONE_PROJECTION:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 133
    .local v9, cursor:Landroid/database/Cursor;
    :cond_3c
    :goto_3c
    :try_start_3c
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_99

    .line 134
    const/4 v4, 0x2

    invoke-interface {v9, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 135
    .local v16, phoneNumber:Ljava/lang/String;
    invoke-static/range {v16 .. v16}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3c

    .line 139
    const/4 v4, 0x0

    invoke-interface {v9, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 140
    .local v11, lookupKey:Ljava/lang/String;
    new-instance v13, Lcom/google/android/apps/plus/fragments/AndroidContactSearchLoader$PhoneNumber;

    const/4 v4, 0x0

    invoke-direct {v13, v4}, Lcom/google/android/apps/plus/fragments/AndroidContactSearchLoader$PhoneNumber;-><init>(Lcom/google/android/apps/plus/fragments/AndroidContactSearchLoader$1;)V

    .line 141
    .local v13, number:Lcom/google/android/apps/plus/fragments/AndroidContactSearchLoader$PhoneNumber;
    iput-object v11, v13, Lcom/google/android/apps/plus/fragments/AndroidContactSearchLoader$PhoneNumber;->lookupKey:Ljava/lang/String;

    .line 142
    const/4 v4, 0x1

    invoke-interface {v9, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v13, Lcom/google/android/apps/plus/fragments/AndroidContactSearchLoader$PhoneNumber;->name:Ljava/lang/String;

    .line 143
    move-object/from16 v0, v16

    iput-object v0, v13, Lcom/google/android/apps/plus/fragments/AndroidContactSearchLoader$PhoneNumber;->phoneNumber:Ljava/lang/String;

    .line 144
    const/4 v4, 0x3

    invoke-interface {v9, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    const/4 v5, 0x4

    invoke-interface {v9, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v18

    invoke-static {v0, v4, v5}, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->getTypeLabel(Landroid/content/res/Resources;ILjava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v17

    .line 146
    .local v17, phoneType:Ljava/lang/CharSequence;
    if-eqz v17, :cond_7d

    .line 147
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v13, Lcom/google/android/apps/plus/fragments/AndroidContactSearchLoader$PhoneNumber;->phoneType:Ljava/lang/String;

    .line 150
    :cond_7d
    invoke-virtual {v14, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/util/ArrayList;

    .line 151
    .local v15, numbers:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/android/apps/plus/fragments/AndroidContactSearchLoader$PhoneNumber;>;"
    if-nez v15, :cond_90

    .line 152
    new-instance v15, Ljava/util/ArrayList;

    .end local v15           #numbers:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/android/apps/plus/fragments/AndroidContactSearchLoader$PhoneNumber;>;"
    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 153
    .restart local v15       #numbers:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/android/apps/plus/fragments/AndroidContactSearchLoader$PhoneNumber;>;"
    invoke-virtual {v14, v11, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    invoke-virtual {v12, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 157
    :cond_90
    invoke-virtual {v15, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_93
    .catchall {:try_start_3c .. :try_end_93} :catchall_94

    goto :goto_3c

    .line 160
    .end local v11           #lookupKey:Ljava/lang/String;
    .end local v13           #number:Lcom/google/android/apps/plus/fragments/AndroidContactSearchLoader$PhoneNumber;
    .end local v15           #numbers:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/android/apps/plus/fragments/AndroidContactSearchLoader$PhoneNumber;>;"
    .end local v16           #phoneNumber:Ljava/lang/String;
    .end local v17           #phoneType:Ljava/lang/CharSequence;
    :catchall_94
    move-exception v4

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    throw v4

    :cond_99
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 163
    sget-object v4, Landroid/provider/ContactsContract$CommonDataKinds$Email;->CONTENT_FILTER_URI:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/apps/plus/fragments/AndroidContactSearchLoader;->mQuery:Ljava/lang/String;

    invoke-static {v5}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 164
    sget-object v4, Lcom/google/android/apps/plus/fragments/AndroidContactSearchLoader;->EMAIL_PROJECTION:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 166
    const/4 v8, 0x0

    .line 167
    .local v8, currentLookupKey:Ljava/lang/String;
    :cond_b4
    :goto_b4
    :try_start_b4
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_e9

    .line 168
    const/4 v4, 0x0

    invoke-interface {v9, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 172
    .restart local v11       #lookupKey:Ljava/lang/String;
    invoke-virtual {v11, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_cd

    .line 173
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1, v14, v8}, Lcom/google/android/apps/plus/fragments/AndroidContactSearchLoader;->addPhoneNumberRows(Lcom/google/android/apps/plus/phone/EsMatrixCursor;Ljava/util/HashMap;Ljava/lang/String;)V

    .line 174
    move-object v8, v11

    .line 177
    :cond_cd
    const/4 v4, 0x2

    invoke-interface {v9, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_b4

    .line 178
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/google/android/apps/plus/fragments/AndroidContactSearchLoader;->buildEmailRow(Landroid/database/Cursor;)[Ljava/lang/Object;

    move-result-object v4

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Lcom/google/android/apps/plus/phone/EsMatrixCursor;->addRow([Ljava/lang/Object;)V
    :try_end_e3
    .catchall {:try_start_b4 .. :try_end_e3} :catchall_e4

    goto :goto_b4

    .line 187
    .end local v11           #lookupKey:Ljava/lang/String;
    :catchall_e4
    move-exception v4

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    throw v4

    .line 183
    :cond_e9
    if-eqz v8, :cond_f2

    .line 184
    :try_start_eb
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1, v14, v8}, Lcom/google/android/apps/plus/fragments/AndroidContactSearchLoader;->addPhoneNumberRows(Lcom/google/android/apps/plus/phone/EsMatrixCursor;Ljava/util/HashMap;Ljava/lang/String;)V
    :try_end_f2
    .catchall {:try_start_eb .. :try_end_f2} :catchall_e4

    .line 187
    :cond_f2
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 191
    const/4 v10, 0x0

    .local v10, i:I
    :goto_f6
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v10, v4, :cond_10c

    .line 192
    invoke-virtual {v12, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1, v14, v4}, Lcom/google/android/apps/plus/fragments/AndroidContactSearchLoader;->addPhoneNumberRows(Lcom/google/android/apps/plus/phone/EsMatrixCursor;Ljava/util/HashMap;Ljava/lang/String;)V

    .line 191
    add-int/lit8 v10, v10, 0x1

    goto :goto_f6

    .line 195
    :cond_10c
    return-object v19
.end method


# virtual methods
.method public esLoadInBackground()Landroid/database/Cursor;
    .registers 3

    .prologue
    .line 87
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/AndroidContactSearchLoader;->mQuery:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_12

    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/AndroidContactSearchLoader;->mQuery:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iget v1, p0, Lcom/google/android/apps/plus/fragments/AndroidContactSearchLoader;->mMinQueryLength:I

    if-ge v0, v1, :cond_1a

    .line 88
    :cond_12
    new-instance v0, Lcom/google/android/apps/plus/phone/EsMatrixCursor;

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/AndroidContactSearchLoader;->mProjection:[Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/google/android/apps/plus/phone/EsMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 94
    :goto_19
    return-object v0

    .line 91
    :cond_1a
    iget-boolean v0, p0, Lcom/google/android/apps/plus/fragments/AndroidContactSearchLoader;->mIncludePhoneNumbers:Z

    if-eqz v0, :cond_23

    .line 92
    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/AndroidContactSearchLoader;->findEmailAddressesAndPhoneNumbers()Landroid/database/Cursor;

    move-result-object v0

    goto :goto_19

    .line 94
    :cond_23
    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/AndroidContactSearchLoader;->findEmailAddresses()Landroid/database/Cursor;

    move-result-object v0

    goto :goto_19
.end method
