.class public Lcom/android/providers/contacts/LegacyMyProfileImporter;
.super Ljava/lang/Object;
.source "LegacyMyProfileImporter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/providers/contacts/LegacyMyProfileImporter$ContactLinkInfoUpdate;,
        Lcom/android/providers/contacts/LegacyMyProfileImporter$HasPhoneHasEmailUpdate;,
        Lcom/android/providers/contacts/LegacyMyProfileImporter$PhotoIdUpdate;,
        Lcom/android/providers/contacts/LegacyMyProfileImporter$PhoneLookupInsert;,
        Lcom/android/providers/contacts/LegacyMyProfileImporter$DataInsert;,
        Lcom/android/providers/contacts/LegacyMyProfileImporter$ContactsUpdate;,
        Lcom/android/providers/contacts/LegacyMyProfileImporter$RawContactsUpdate;,
        Lcom/android/providers/contacts/LegacyMyProfileImporter$RawContactsInsert;
    }
.end annotation


# static fields
.field private static RAW_CONTACT_ENTITIES_PROJECTION:[Ljava/lang/String;


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mContactsHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

.field private final mContactsProvider:Lcom/android/providers/contacts/ContactsProvider2;

.field private mProfileHelper:Lcom/android/providers/contacts/ProfileDatabaseHelper;

.field private final mProfileProvider:Lcom/android/providers/contacts/ProfileProvider;

.field private mSourceDb:Landroid/database/sqlite/SQLiteDatabase;

.field private mTargetDb:Landroid/database/sqlite/SQLiteDatabase;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 60
    const/16 v0, 0x12

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "data1"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "data2"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "data3"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "data4"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "data5"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "data6"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "data7"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "data8"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "data9"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "data10"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "data11"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "data12"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "data13"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "data14"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "data15"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "mimetype"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "is_primary"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "is_super_primary"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/providers/contacts/LegacyMyProfileImporter;->RAW_CONTACT_ENTITIES_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/android/providers/contacts/ContactsProvider2;Lcom/android/providers/contacts/ProfileProvider;)V
    .registers 4
    .parameter "contactsProvider"
    .parameter "profileProvider"

    .prologue
    .line 102
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 42
    const-string v0, "LegacyMyProfileImporter"

    iput-object v0, p0, Lcom/android/providers/contacts/LegacyMyProfileImporter;->TAG:Ljava/lang/String;

    .line 103
    iput-object p1, p0, Lcom/android/providers/contacts/LegacyMyProfileImporter;->mContactsProvider:Lcom/android/providers/contacts/ContactsProvider2;

    .line 104
    iput-object p2, p0, Lcom/android/providers/contacts/LegacyMyProfileImporter;->mProfileProvider:Lcom/android/providers/contacts/ProfileProvider;

    .line 105
    return-void
.end method

.method private bindPhoneNumberData(Landroid/database/sqlite/SQLiteStatement;Landroid/database/Cursor;Ljava/lang/String;Ljava/lang/String;)V
    .registers 9
    .parameter "dataInsert"
    .parameter "c"
    .parameter "number"
    .parameter "numberE164"

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 290
    invoke-virtual {p1, v1, p3}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 291
    invoke-interface {p2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v2, v1}, Lcom/android/providers/contacts/LegacyMyProfileImporter;->bindString(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/String;)V

    .line 292
    const/4 v1, 0x3

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p1, v1, v2}, Lcom/android/providers/contacts/LegacyMyProfileImporter;->bindString(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/String;)V

    .line 293
    if-eqz p4, :cond_2b

    .line 294
    invoke-virtual {p1, v3, p4}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 298
    :goto_1a
    const/4 v0, 0x5

    .local v0, i:I
    :goto_1b
    const/16 v1, 0x10

    if-ge v0, v1, :cond_2f

    .line 299
    add-int/lit8 v1, v0, -0x1

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Lcom/android/providers/contacts/LegacyMyProfileImporter;->bindString(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/String;)V

    .line 298
    add-int/lit8 v0, v0, 0x1

    goto :goto_1b

    .line 296
    .end local v0           #i:I
    :cond_2b
    invoke-virtual {p1, v3}, Landroid/database/sqlite/SQLiteStatement;->bindNull(I)V

    goto :goto_1a

    .line 302
    .restart local v0       #i:I
    :cond_2f
    return-void
.end method

.method private bindString(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/String;)V
    .registers 4
    .parameter "insert"
    .parameter "index"
    .parameter "string"

    .prologue
    .line 554
    if-nez p3, :cond_6

    .line 555
    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteStatement;->bindNull(I)V

    .line 559
    :goto_5
    return-void

    .line 557
    :cond_6
    invoke-virtual {p1, p2, p3}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    goto :goto_5
.end method

.method private checkForImportMyProfileData()Z
    .registers 6

    .prologue
    .line 369
    iget-object v2, p0, Lcom/android/providers/contacts/LegacyMyProfileImporter;->mSourceDb:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SELECT COUNT(*) FROM raw_contacts WHERE account_name= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "vnd.sec.contact.my_profile"

    invoke-static {v4}, Landroid/database/DatabaseUtils;->sqlEscapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " AND "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "account_type"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "vnd.sec.contact.my_profile"

    invoke-static {v4}, Landroid/database/DatabaseUtils;->sqlEscapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/database/DatabaseUtils;->longForQuery(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)J

    move-result-wide v0

    .line 376
    .local v0, count:J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_44

    const/4 v2, 0x1

    :goto_43
    return v2

    :cond_44
    const/4 v2, 0x0

    goto :goto_43
.end method

.method private importMyProfielDataFromContactsDb()V
    .registers 5

    .prologue
    .line 135
    const-wide/16 v0, 0x0

    .line 136
    .local v0, rawContactId:J
    iget-object v2, p0, Lcom/android/providers/contacts/LegacyMyProfileImporter;->mContactsProvider:Lcom/android/providers/contacts/ContactsProvider2;

    invoke-virtual {v2}, Lcom/android/providers/contacts/ContactsProvider2;->getDatabaseHelper()Landroid/database/sqlite/SQLiteOpenHelper;

    move-result-object v2

    check-cast v2, Lcom/android/providers/contacts/ContactsDatabaseHelper;

    iput-object v2, p0, Lcom/android/providers/contacts/LegacyMyProfileImporter;->mContactsHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    .line 137
    iget-object v2, p0, Lcom/android/providers/contacts/LegacyMyProfileImporter;->mContactsHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    invoke-virtual {v2}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    iput-object v2, p0, Lcom/android/providers/contacts/LegacyMyProfileImporter;->mSourceDb:Landroid/database/sqlite/SQLiteDatabase;

    .line 138
    invoke-direct {p0}, Lcom/android/providers/contacts/LegacyMyProfileImporter;->checkForImportMyProfileData()Z

    move-result v2

    if-nez v2, :cond_1b

    .line 152
    :goto_1a
    return-void

    .line 142
    :cond_1b
    iget-object v2, p0, Lcom/android/providers/contacts/LegacyMyProfileImporter;->mProfileProvider:Lcom/android/providers/contacts/ProfileProvider;

    invoke-virtual {v2}, Lcom/android/providers/contacts/ProfileProvider;->getDatabaseHelper()Landroid/database/sqlite/SQLiteOpenHelper;

    move-result-object v2

    check-cast v2, Lcom/android/providers/contacts/ProfileDatabaseHelper;

    iput-object v2, p0, Lcom/android/providers/contacts/LegacyMyProfileImporter;->mProfileHelper:Lcom/android/providers/contacts/ProfileDatabaseHelper;

    .line 143
    iget-object v2, p0, Lcom/android/providers/contacts/LegacyMyProfileImporter;->mProfileHelper:Lcom/android/providers/contacts/ProfileDatabaseHelper;

    invoke-virtual {v2}, Lcom/android/providers/contacts/ProfileDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    iput-object v2, p0, Lcom/android/providers/contacts/LegacyMyProfileImporter;->mTargetDb:Landroid/database/sqlite/SQLiteDatabase;

    .line 145
    iget-object v2, p0, Lcom/android/providers/contacts/LegacyMyProfileImporter;->mTargetDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 147
    :try_start_32
    invoke-direct {p0}, Lcom/android/providers/contacts/LegacyMyProfileImporter;->importMyprofileContacts()V

    .line 148
    iget-object v2, p0, Lcom/android/providers/contacts/LegacyMyProfileImporter;->mTargetDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_3a
    .catchall {:try_start_32 .. :try_end_3a} :catchall_40

    .line 150
    iget-object v2, p0, Lcom/android/providers/contacts/LegacyMyProfileImporter;->mTargetDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_1a

    :catchall_40
    move-exception v2

    iget-object v3, p0, Lcom/android/providers/contacts/LegacyMyProfileImporter;->mTargetDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v2
.end method

.method private importMyprofileContacts()V
    .registers 14

    .prologue
    const/4 v5, 0x0

    .line 155
    const-string v0, "LegacyMyProfileImporter"

    const-string v1, "importMyprofileContacts"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    const-wide/16 v8, 0x0

    .line 157
    .local v8, raw_contact_id:J
    const-wide/16 v10, 0x0

    .line 159
    .local v10, contact_id:J
    const-string v12, "account_name=? AND account_type=?"

    .line 161
    .local v12, selection:Ljava/lang/String;
    const/4 v0, 0x2

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "vnd.sec.contact.my_profile"

    aput-object v1, v4, v0

    const/4 v0, 0x1

    const-string v1, "vnd.sec.contact.my_profile"

    aput-object v1, v4, v0

    .line 164
    .local v4, selectionArgs:[Ljava/lang/String;
    iget-object v0, p0, Lcom/android/providers/contacts/LegacyMyProfileImporter;->mSourceDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "view_raw_entities"

    sget-object v2, Lcom/android/providers/contacts/LegacyMyProfileImporter;->RAW_CONTACT_ENTITIES_PROJECTION:[Ljava/lang/String;

    const-string v3, "account_name=? AND account_type=?"

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 166
    .local v7, c:Landroid/database/Cursor;
    if-eqz v7, :cond_35

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_35

    .line 167
    invoke-direct {p0}, Lcom/android/providers/contacts/LegacyMyProfileImporter;->insertRawContacts()J

    move-result-wide v8

    .line 169
    :cond_35
    iget-object v0, p0, Lcom/android/providers/contacts/LegacyMyProfileImporter;->mTargetDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "INSERT INTO data(data1,data2,data3,data4,data5,data6,data7,data8,data9,data10,data11,data12,data13,data14,data15,mimetype_id,raw_contact_id,is_primary,is_super_primary) VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v6

    .line 170
    .local v6, dataInsert:Landroid/database/sqlite/SQLiteStatement;
    const-wide/16 v0, 0x0

    cmp-long v0, v8, v0

    if-lez v0, :cond_57

    .line 172
    invoke-direct {p0, v8, v9}, Lcom/android/providers/contacts/LegacyMyProfileImporter;->insertContacts(J)J

    move-result-wide v10

    .line 174
    :goto_47
    :try_start_47
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_54

    move-object v5, p0

    .line 175
    invoke-direct/range {v5 .. v11}, Lcom/android/providers/contacts/LegacyMyProfileImporter;->insertMyProfileData(Landroid/database/sqlite/SQLiteStatement;Landroid/database/Cursor;JJ)V
    :try_end_51
    .catchall {:try_start_47 .. :try_end_51} :catchall_52

    goto :goto_47

    .line 178
    :catchall_52
    move-exception v0

    throw v0

    .line 177
    :cond_54
    :try_start_54
    invoke-direct {p0, v8, v9, v10, v11}, Lcom/android/providers/contacts/LegacyMyProfileImporter;->updateContactHasPhoneHasEmailLinkTypes(JJ)V
    :try_end_57
    .catchall {:try_start_54 .. :try_end_57} :catchall_52

    .line 181
    :cond_57
    if-eqz v7, :cond_5c

    .line 182
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 184
    :cond_5c
    if-eqz v6, :cond_61

    .line 185
    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 188
    :cond_61
    invoke-direct {p0, v8, v9}, Lcom/android/providers/contacts/LegacyMyProfileImporter;->updateRawContactDisplayName(J)V

    .line 189
    invoke-direct {p0, v10, v11}, Lcom/android/providers/contacts/LegacyMyProfileImporter;->updateLookupKeyForContact(J)V

    .line 191
    return-void
.end method

.method private insert(Landroid/database/sqlite/SQLiteStatement;)J
    .registers 6
    .parameter "insertStatement"

    .prologue
    .line 562
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteStatement;->executeInsert()J

    move-result-wide v0

    .line 563
    .local v0, rowId:J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_12

    .line 564
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Insert failed"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 566
    :cond_12
    return-wide v0
.end method

.method private insertContacts(J)J
    .registers 21
    .parameter "rawContactId"

    .prologue
    .line 194
    const-string v3, "LegacyMyProfileImporter"

    const-string v4, "insertContacts"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    const-wide/16 v12, 0x0

    .line 196
    .local v12, contact_id:J
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/providers/contacts/LegacyMyProfileImporter;->mTargetDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v4, "contacts"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "_id"

    aput-object v7, v5, v6

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-string v10, "_id limit 1"

    invoke-virtual/range {v3 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v16

    .line 199
    .local v16, cur:Landroid/database/Cursor;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/providers/contacts/LegacyMyProfileImporter;->mTargetDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v4, "UPDATE raw_contacts SET contact_id=? WHERE _id=?"

    invoke-virtual {v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v17

    .line 201
    .local v17, rawcontactUpdate:Landroid/database/sqlite/SQLiteStatement;
    :try_start_2b
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_51

    .line 202
    const/4 v3, 0x0

    move-object/from16 v0, v16

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    .line 203
    const/4 v3, 0x1

    move-object/from16 v0, v17

    invoke-virtual {v0, v3, v12, v13}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 204
    const/4 v3, 0x2

    move-object/from16 v0, v17

    move-wide/from16 v1, p1

    invoke-virtual {v0, v3, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 205
    invoke-virtual/range {v17 .. v17}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    .line 206
    invoke-virtual/range {v17 .. v17}, Landroid/database/sqlite/SQLiteStatement;->close()V
    :try_end_4c
    .catchall {:try_start_2b .. :try_end_4c} :catchall_83

    .line 210
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    move-wide v14, v12

    .line 227
    .end local v12           #contact_id:J
    .local v14, contact_id:J
    :goto_50
    return-wide v14

    .line 210
    .end local v14           #contact_id:J
    .restart local v12       #contact_id:J
    :cond_51
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    .line 214
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/providers/contacts/LegacyMyProfileImporter;->mTargetDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v4, "INSERT INTO contacts(name_raw_contact_id) VALUES(?)"

    invoke-virtual {v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v11

    .line 216
    .local v11, contactInsert:Landroid/database/sqlite/SQLiteStatement;
    const/4 v3, 0x1

    :try_start_5f
    move-wide/from16 v0, p1

    invoke-virtual {v11, v3, v0, v1}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 217
    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/android/providers/contacts/LegacyMyProfileImporter;->insert(Landroid/database/sqlite/SQLiteStatement;)J

    move-result-wide v12

    .line 218
    const/4 v3, 0x1

    move-object/from16 v0, v17

    invoke-virtual {v0, v3, v12, v13}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 219
    const/4 v3, 0x2

    move-object/from16 v0, v17

    move-wide/from16 v1, p1

    invoke-virtual {v0, v3, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 220
    invoke-virtual/range {v17 .. v17}, Landroid/database/sqlite/SQLiteStatement;->execute()V
    :try_end_7b
    .catchall {:try_start_5f .. :try_end_7b} :catchall_88

    .line 222
    invoke-virtual {v11}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 223
    invoke-virtual/range {v17 .. v17}, Landroid/database/sqlite/SQLiteStatement;->close()V

    move-wide v14, v12

    .line 227
    .end local v12           #contact_id:J
    .restart local v14       #contact_id:J
    goto :goto_50

    .line 210
    .end local v11           #contactInsert:Landroid/database/sqlite/SQLiteStatement;
    .end local v14           #contact_id:J
    .restart local v12       #contact_id:J
    :catchall_83
    move-exception v3

    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    throw v3

    .line 222
    .restart local v11       #contactInsert:Landroid/database/sqlite/SQLiteStatement;
    :catchall_88
    move-exception v3

    invoke-virtual {v11}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 223
    invoke-virtual/range {v17 .. v17}, Landroid/database/sqlite/SQLiteStatement;->close()V

    throw v3
.end method

.method private insertMyProfileData(Landroid/database/sqlite/SQLiteStatement;Landroid/database/Cursor;JJ)V
    .registers 29
    .parameter "dataInsert"
    .parameter "c"
    .parameter "rawContactId"
    .parameter "contactId"

    .prologue
    .line 236
    const-string v3, "LegacyMyProfileImporter"

    const-string v4, "insertMyProfileData"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    const/4 v9, 0x0

    .line 238
    .local v9, number:Ljava/lang/String;
    const/4 v10, 0x0

    .line 239
    .local v10, numberE164:Ljava/lang/String;
    const/16 v3, 0xf

    move-object/from16 v0, p2

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    .line 240
    .local v18, mimetype:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/providers/contacts/LegacyMyProfileImporter;->mProfileHelper:Lcom/android/providers/contacts/ProfileDatabaseHelper;

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Lcom/android/providers/contacts/ProfileDatabaseHelper;->getMimeTypeId(Ljava/lang/String;)J

    move-result-wide v19

    .line 241
    .local v19, mimetype_id:J
    const/16 v3, 0x10

    move-object/from16 v0, p1

    move-wide/from16 v1, v19

    invoke-virtual {v0, v3, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 242
    const/16 v3, 0x11

    move-object/from16 v0, p1

    move-wide/from16 v1, p3

    invoke-virtual {v0, v3, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 243
    const/16 v3, 0x12

    const/16 v4, 0x10

    move-object/from16 v0, p2

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4, v5}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 244
    const/16 v3, 0x13

    const/16 v4, 0x11

    move-object/from16 v0, p2

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4, v5}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 246
    const-string v3, "vnd.android.cursor.item/phone_v2"

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_89

    .line 249
    const/4 v3, 0x0

    move-object/from16 v0, p2

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 250
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/providers/contacts/LegacyMyProfileImporter;->mProfileHelper:Lcom/android/providers/contacts/ProfileDatabaseHelper;

    invoke-virtual {v3}, Lcom/android/providers/contacts/ProfileDatabaseHelper;->getCurrentCountryIso()Ljava/lang/String;

    move-result-object v3

    invoke-static {v9, v3}, Landroid/telephony/PhoneNumberUtils;->formatNumberToE164(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 252
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2, v9, v10}, Lcom/android/providers/contacts/LegacyMyProfileImporter;->bindPhoneNumberData(Landroid/database/sqlite/SQLiteStatement;Landroid/database/Cursor;Ljava/lang/String;Ljava/lang/String;)V

    .line 267
    :cond_71
    :goto_71
    invoke-direct/range {p0 .. p1}, Lcom/android/providers/contacts/LegacyMyProfileImporter;->insert(Landroid/database/sqlite/SQLiteStatement;)J

    move-result-wide v7

    .line 270
    .local v7, dataId:J
    const-string v3, "vnd.android.cursor.item/name"

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_db

    move-object/from16 v3, p0

    move-object/from16 v4, p2

    move-wide/from16 v5, p3

    .line 271
    invoke-direct/range {v3 .. v8}, Lcom/android/providers/contacts/LegacyMyProfileImporter;->insertProfileNameLookup(Landroid/database/Cursor;JJ)V

    .line 286
    :cond_88
    :goto_88
    return-void

    .line 253
    .end local v7           #dataId:J
    :cond_89
    const-string v3, "vnd.android.cursor.item/photo"

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_bf

    .line 254
    const/16 v17, 0x1

    .local v17, i:I
    :goto_95
    const/16 v3, 0xf

    move/from16 v0, v17

    if-ge v0, v3, :cond_af

    .line 255
    add-int/lit8 v3, v17, -0x1

    move-object/from16 v0, p2

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v17

    invoke-direct {v0, v1, v2, v3}, Lcom/android/providers/contacts/LegacyMyProfileImporter;->bindString(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/String;)V

    .line 254
    add-int/lit8 v17, v17, 0x1

    goto :goto_95

    .line 257
    :cond_af
    const/16 v3, 0xf

    const/16 v4, 0xe

    move-object/from16 v0, p2

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4}, Landroid/database/sqlite/SQLiteStatement;->bindBlob(I[B)V

    goto :goto_71

    .line 262
    .end local v17           #i:I
    :cond_bf
    const/16 v17, 0x1

    .restart local v17       #i:I
    :goto_c1
    const/16 v3, 0x10

    move/from16 v0, v17

    if-ge v0, v3, :cond_71

    .line 263
    add-int/lit8 v3, v17, -0x1

    move-object/from16 v0, p2

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v17

    invoke-direct {v0, v1, v2, v3}, Lcom/android/providers/contacts/LegacyMyProfileImporter;->bindString(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/String;)V

    .line 262
    add-int/lit8 v17, v17, 0x1

    goto :goto_c1

    .line 272
    .end local v17           #i:I
    .restart local v7       #dataId:J
    :cond_db
    const-string v3, "vnd.android.cursor.item/phone_v2"

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_ef

    move-object/from16 v3, p0

    move-object/from16 v4, p2

    move-wide/from16 v5, p3

    .line 273
    invoke-direct/range {v3 .. v10}, Lcom/android/providers/contacts/LegacyMyProfileImporter;->insertPhoneNumberLookup(Landroid/database/Cursor;JJLjava/lang/String;Ljava/lang/String;)V

    goto :goto_88

    .line 274
    :cond_ef
    const-string v3, "vnd.android.cursor.item/email_v2"

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_10c

    .line 276
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/providers/contacts/LegacyMyProfileImporter;->mProfileHelper:Lcom/android/providers/contacts/ProfileDatabaseHelper;

    const/4 v3, 0x0

    move-object/from16 v0, p2

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    move-wide/from16 v12, p3

    move-wide v14, v7

    invoke-virtual/range {v11 .. v16}, Lcom/android/providers/contacts/ProfileDatabaseHelper;->insertNameLookupForEmail(JJLjava/lang/String;)Ljava/lang/String;

    goto/16 :goto_88

    .line 278
    :cond_10c
    const-string v3, "vnd.android.cursor.item/photo"

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_88

    .line 279
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/providers/contacts/LegacyMyProfileImporter;->mTargetDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v4, "UPDATE contacts SET photo_id=? WHERE _id=?"

    invoke-virtual {v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v21

    .line 280
    .local v21, photoIdUpdate:Landroid/database/sqlite/SQLiteStatement;
    const/4 v3, 0x1

    move-object/from16 v0, v21

    invoke-virtual {v0, v3, v7, v8}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 281
    const/4 v3, 0x2

    move-object/from16 v0, v21

    move-wide/from16 v1, p5

    invoke-virtual {v0, v3, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 282
    invoke-virtual/range {v21 .. v21}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    .line 283
    invoke-virtual/range {v21 .. v21}, Landroid/database/sqlite/SQLiteStatement;->close()V

    goto/16 :goto_88
.end method

.method private insertPhoneNumberLookup(Landroid/database/Cursor;JJLjava/lang/String;Ljava/lang/String;)V
    .registers 16
    .parameter "c"
    .parameter "rawContactId"
    .parameter "dataId"
    .parameter "number"
    .parameter "numberE164"

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 324
    if-eqz p6, :cond_42

    .line 325
    iget-object v2, p0, Lcom/android/providers/contacts/LegacyMyProfileImporter;->mTargetDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "INSERT INTO phone_lookup(raw_contact_id,data_id,normalized_number,min_match) VALUES (?,?,?,?)"

    invoke-virtual {v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v1

    .line 327
    .local v1, phonelookupInsert:Landroid/database/sqlite/SQLiteStatement;
    invoke-static {p6}, Landroid/telephony/PhoneNumberUtils;->normalizeNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 328
    .local v0, normalizedNumber:Ljava/lang/String;
    invoke-virtual {v1, v4, p2, p3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 329
    invoke-virtual {v1, v5, p4, p5}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 330
    invoke-virtual {v1, v6, v0}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 331
    invoke-static {p6}, Landroid/telephony/PhoneNumberUtils;->toCallerIDMinMatch(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v7, v2}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 333
    invoke-direct {p0, v1}, Lcom/android/providers/contacts/LegacyMyProfileImporter;->insert(Landroid/database/sqlite/SQLiteStatement;)J

    .line 335
    if-eqz p7, :cond_3d

    .line 336
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteStatement;->clearBindings()V

    .line 337
    invoke-virtual {v1, v4, p2, p3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 338
    invoke-virtual {v1, v5, p4, p5}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 339
    invoke-virtual {v1, v6, v0}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 340
    invoke-static {p6}, Landroid/telephony/PhoneNumberUtils;->toCallerIDMinMatch(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v7, v2}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 342
    invoke-direct {p0, v1}, Lcom/android/providers/contacts/LegacyMyProfileImporter;->insert(Landroid/database/sqlite/SQLiteStatement;)J

    .line 344
    :cond_3d
    if-eqz v1, :cond_42

    .line 345
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 348
    .end local v0           #normalizedNumber:Ljava/lang/String;
    .end local v1           #phonelookupInsert:Landroid/database/sqlite/SQLiteStatement;
    :cond_42
    return-void
.end method

.method private insertProfileNameLookup(Landroid/database/Cursor;JJ)V
    .registers 23
    .parameter "c"
    .parameter "rawContactId"
    .parameter "dataId"

    .prologue
    .line 309
    const/4 v1, 0x0

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 310
    .local v7, displayName:Ljava/lang/String;
    const/4 v1, 0x6

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 311
    .local v16, phoneticGivenName:Ljava/lang/String;
    const/4 v1, 0x7

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 312
    .local v14, phoneticMiddleName:Ljava/lang/String;
    const/16 v1, 0x8

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 314
    .local v13, phoneticFamilyname:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/providers/contacts/LegacyMyProfileImporter;->mProfileHelper:Lcom/android/providers/contacts/ProfileDatabaseHelper;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/providers/contacts/LegacyMyProfileImporter;->mTargetDb:Landroid/database/sqlite/SQLiteDatabase;

    move-wide/from16 v3, p2

    move-wide/from16 v5, p4

    invoke-virtual/range {v1 .. v7}, Lcom/android/providers/contacts/ProfileDatabaseHelper;->insertStructuredNameLookup(Landroid/database/sqlite/SQLiteDatabase;JJLjava/lang/String;)V

    .line 316
    if-nez v16, :cond_32

    if-nez v14, :cond_32

    if-eqz v13, :cond_3e

    .line 317
    :cond_32
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/providers/contacts/LegacyMyProfileImporter;->mProfileHelper:Lcom/android/providers/contacts/ProfileDatabaseHelper;

    move-wide/from16 v9, p2

    move-wide/from16 v11, p4

    move-object v15, v13

    invoke-virtual/range {v8 .. v15}, Lcom/android/providers/contacts/ProfileDatabaseHelper;->insertNameLookupForPhoneticName(JJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 320
    :cond_3e
    return-void
.end method

.method private insertRawContacts()J
    .registers 6

    .prologue
    .line 356
    iget-object v3, p0, Lcom/android/providers/contacts/LegacyMyProfileImporter;->mTargetDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v4, "INSERT INTO raw_contacts(account_name,account_type) VALUES (?,?)"

    invoke-virtual {v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v2

    .line 357
    .local v2, rawContactInsert:Landroid/database/sqlite/SQLiteStatement;
    const/4 v3, 0x1

    const-string v4, "vnd.sec.contact.phone"

    invoke-virtual {v2, v3, v4}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 358
    const/4 v3, 0x2

    const-string v4, "vnd.sec.contact.phone"

    invoke-virtual {v2, v3, v4}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 359
    invoke-direct {p0, v2}, Lcom/android/providers/contacts/LegacyMyProfileImporter;->insert(Landroid/database/sqlite/SQLiteStatement;)J

    move-result-wide v0

    .line 360
    .local v0, rawContactId:J
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 361
    return-wide v0
.end method

.method private updateContactHasPhoneHasEmailLinkTypes(JJ)V
    .registers 30
    .parameter "rawContactId"
    .parameter "contactId"

    .prologue
    .line 500
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/providers/contacts/LegacyMyProfileImporter;->mTargetDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v4, "UPDATE contacts SET has_phone_number =  (CASE WHEN (SELECT COUNT(*) FROM data  JOIN mimetypes ON (data.mimetype_id = mimetypes._id AND mimetype = \'vnd.android.cursor.item/phone_v2\')  JOIN raw_contacts ON (data.raw_contact_id = raw_contacts._id AND raw_contacts.contact_id = contacts._id)) > 0 THEN 1 ELSE 0 END) ,has_email =  (CASE WHEN (SELECT COUNT(*) FROM data  JOIN mimetypes ON (data.mimetype_id = mimetypes._id AND mimetype = \'vnd.android.cursor.item/email_v2\')  JOIN raw_contacts ON (data.raw_contact_id = raw_contacts._id AND raw_contacts.contact_id = contacts._id)) > 0 THEN 1 ELSE 0 END) WHERE _id=?"

    invoke-virtual {v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v24

    .line 502
    .local v24, updateHasPhoneHasEmailContact:Landroid/database/sqlite/SQLiteStatement;
    const/4 v3, 0x1

    move-object/from16 v0, v24

    move-wide/from16 v1, p3

    invoke-virtual {v0, v3, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 503
    invoke-virtual/range {v24 .. v24}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    .line 504
    invoke-virtual/range {v24 .. v24}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 507
    const-string v22, "contact_id=? "

    .line 508
    .local v22, selection:Ljava/lang/String;
    const/4 v3, 0x1

    new-array v7, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static/range {p3 .. p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v7, v3

    .line 511
    .local v7, selectionArgs:[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/providers/contacts/LegacyMyProfileImporter;->mTargetDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v4, "raw_contacts"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v8, "_id"

    aput-object v8, v5, v6

    const/4 v6, 0x1

    const-string v8, "account_type"

    aput-object v8, v5, v6

    const/4 v6, 0x2

    const-string v8, "data_set"

    aput-object v8, v5, v6

    const-string v6, "contact_id=? "

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v3 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13

    .line 514
    .local v13, c:Landroid/database/Cursor;
    const/16 v21, 0x5

    .line 515
    .local v21, max_link_count:I
    const/16 v19, 0x0

    .line 516
    .local v19, link_count:I
    const/4 v12, 0x0

    .line 517
    .local v12, account_type:Ljava/lang/String;
    const/4 v14, 0x0

    .line 518
    .local v14, data_set:Ljava/lang/String;
    const/4 v3, 0x5

    new-array v0, v3, [J

    move-object/from16 v20, v0

    .line 519
    .local v20, link_raw_contact_id:[J
    const/4 v3, 0x5

    new-array v0, v3, [Ljava/lang/String;

    move-object/from16 v18, v0

    .line 522
    .local v18, link_account_type_and_data_set:[Ljava/lang/String;
    :goto_55
    :try_start_55
    invoke-interface {v13}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_90

    .line 523
    const/4 v3, 0x0

    invoke-interface {v13, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    aput-wide v3, v20, v19

    .line 524
    const/4 v3, 0x1

    invoke-interface {v13, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 525
    const/4 v3, 0x2

    invoke-interface {v13, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 526
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_8e

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 529
    .local v11, accountWithDataSet:Ljava/lang/String;
    :goto_89
    aput-object v11, v18, v19
    :try_end_8b
    .catchall {:try_start_55 .. :try_end_8b} :catchall_cb

    .line 530
    add-int/lit8 v19, v19, 0x1

    .line 531
    goto :goto_55

    .end local v11           #accountWithDataSet:Ljava/lang/String;
    :cond_8e
    move-object v11, v12

    .line 526
    goto :goto_89

    .line 533
    :cond_90
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 536
    if-lez v19, :cond_df

    .line 537
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/providers/contacts/LegacyMyProfileImporter;->mTargetDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v4, "UPDATE contacts SET link_count = ?, link_type1 = ?, raw_contact_linkpriority1 = ? ,link_type2 = ?, raw_contact_linkpriority2 = ? ,link_type3 = ?, raw_contact_linkpriority3 = ? ,link_type4 = ?, raw_contact_linkpriority4 = ? ,link_type5 = ?, raw_contact_linkpriority5 = ?  WHERE _id=?"

    invoke-virtual {v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v23

    .line 539
    .local v23, updateContactLink:Landroid/database/sqlite/SQLiteStatement;
    const/4 v3, 0x1

    move/from16 v0, v19

    int-to-long v4, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v3, v4, v5}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 540
    const/4 v15, 0x0

    .local v15, i:I
    const/16 v16, 0x2

    .local v16, j:I
    move/from16 v17, v16

    .end local v16           #j:I
    .local v17, j:I
    :goto_ad
    const/4 v3, 0x5

    if-ge v15, v3, :cond_d0

    .line 541
    add-int/lit8 v16, v17, 0x1

    .end local v17           #j:I
    .restart local v16       #j:I
    aget-object v3, v18, v15

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move/from16 v2, v17

    invoke-direct {v0, v1, v2, v3}, Lcom/android/providers/contacts/LegacyMyProfileImporter;->bindString(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/String;)V

    .line 542
    add-int/lit8 v17, v16, 0x1

    .end local v16           #j:I
    .restart local v17       #j:I
    aget-wide v3, v20, v15

    move-object/from16 v0, v23

    move/from16 v1, v16

    invoke-virtual {v0, v1, v3, v4}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 540
    add-int/lit8 v15, v15, 0x1

    goto :goto_ad

    .line 533
    .end local v15           #i:I
    .end local v17           #j:I
    .end local v23           #updateContactLink:Landroid/database/sqlite/SQLiteStatement;
    :catchall_cb
    move-exception v3

    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    throw v3

    .line 545
    .restart local v15       #i:I
    .restart local v17       #j:I
    .restart local v23       #updateContactLink:Landroid/database/sqlite/SQLiteStatement;
    :cond_d0
    const/16 v3, 0xc

    move-object/from16 v0, v23

    move-wide/from16 v1, p3

    invoke-virtual {v0, v3, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 546
    invoke-virtual/range {v23 .. v23}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    .line 547
    invoke-virtual/range {v23 .. v23}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 551
    .end local v15           #i:I
    .end local v17           #j:I
    .end local v23           #updateContactLink:Landroid/database/sqlite/SQLiteStatement;
    :cond_df
    return-void
.end method

.method private updateLookupKeyForContact(J)V
    .registers 6
    .parameter "contactId"

    .prologue
    .line 483
    iget-object v1, p0, Lcom/android/providers/contacts/LegacyMyProfileImporter;->mTargetDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "UPDATE contacts SET lookup=?  WHERE _id=?"

    invoke-virtual {v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    .line 487
    .local v0, lookupKeyUpdate:Landroid/database/sqlite/SQLiteStatement;
    const/4 v1, 0x1

    const-string v2, "profile"

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 488
    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1, p2}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 489
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    .line 490
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 491
    return-void
.end method

.method private updateRawContactDisplayName(J)V
    .registers 5
    .parameter "rawContactId"

    .prologue
    .line 496
    iget-object v0, p0, Lcom/android/providers/contacts/LegacyMyProfileImporter;->mProfileHelper:Lcom/android/providers/contacts/ProfileDatabaseHelper;

    iget-object v1, p0, Lcom/android/providers/contacts/LegacyMyProfileImporter;->mTargetDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/providers/contacts/ProfileDatabaseHelper;->updateRawContactDisplayName(Landroid/database/sqlite/SQLiteDatabase;J)V

    .line 497
    return-void
.end method


# virtual methods
.method public importLegacyMyProfileData()Z
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 109
    const-string v2, "LegacyMyProfileImporter"

    const-string v3, "Importing my profile contacts"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    const/4 v1, 0x0

    .local v1, i:I
    :goto_8
    const/4 v2, 0x5

    if-ge v1, v2, :cond_22

    .line 113
    :try_start_b
    invoke-direct {p0}, Lcom/android/providers/contacts/LegacyMyProfileImporter;->importMyProfielDataFromContactsDb()V
    :try_end_e
    .catchall {:try_start_b .. :try_end_e} :catchall_20
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_b .. :try_end_e} :catch_10

    .line 115
    const/4 v2, 0x1

    .line 130
    :goto_f
    return v2

    .line 117
    :catch_10
    move-exception v0

    .line 118
    .local v0, e:Landroid/database/sqlite/SQLiteException;
    :try_start_11
    const-string v2, "LegacyMyProfileImporter"

    const-string v3, "Database import exception. Will retry in 2000ms"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 123
    const-wide/16 v2, 0x7d0

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1d
    .catchall {:try_start_11 .. :try_end_1d} :catchall_20

    .line 111
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 125
    .end local v0           #e:Landroid/database/sqlite/SQLiteException;
    :catchall_20
    move-exception v2

    throw v2

    .line 130
    :cond_22
    const/4 v2, 0x0

    goto :goto_f
.end method
