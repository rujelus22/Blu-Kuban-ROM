.class public Lcom/android/providers/contacts/DbModifierWithNotification;
.super Ljava/lang/Object;
.source "DbModifierWithNotification.java"

# interfaces
.implements Lcom/android/providers/contacts/DatabaseModifier;


# static fields
.field private static final PROJECTION:[Ljava/lang/String;


# instance fields
.field private final mBaseUri:Landroid/net/Uri;

.field private final mContext:Landroid/content/Context;

.field private final mDb:Landroid/database/sqlite/SQLiteDatabase;

.field private final mInsertHelper:Landroid/database/DatabaseUtils$InsertHelper;

.field private final mIsCallsTable:Z

.field private final mTableName:Ljava/lang/String;

.field private final mVoicemailPermissions:Lcom/android/providers/contacts/VoicemailPermissions;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 64
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "source_package"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/providers/contacts/DbModifierWithNotification;->PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;Landroid/content/Context;)V
    .registers 5
    .parameter "tableName"
    .parameter "db"
    .parameter "context"

    .prologue
    .line 88
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/android/providers/contacts/DbModifierWithNotification;-><init>(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;Landroid/database/DatabaseUtils$InsertHelper;Landroid/content/Context;)V

    .line 89
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;Landroid/database/DatabaseUtils$InsertHelper;Landroid/content/Context;)V
    .registers 7
    .parameter "tableName"
    .parameter "db"
    .parameter "insertHelper"
    .parameter "context"

    .prologue
    .line 96
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 97
    iput-object p1, p0, Lcom/android/providers/contacts/DbModifierWithNotification;->mTableName:Ljava/lang/String;

    .line 98
    iput-object p2, p0, Lcom/android/providers/contacts/DbModifierWithNotification;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    .line 99
    iput-object p3, p0, Lcom/android/providers/contacts/DbModifierWithNotification;->mInsertHelper:Landroid/database/DatabaseUtils$InsertHelper;

    .line 100
    iput-object p4, p0, Lcom/android/providers/contacts/DbModifierWithNotification;->mContext:Landroid/content/Context;

    .line 101
    iget-object v0, p0, Lcom/android/providers/contacts/DbModifierWithNotification;->mTableName:Ljava/lang/String;

    const-string v1, "voicemail_status"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2d

    sget-object v0, Landroid/provider/VoicemailContract$Status;->CONTENT_URI:Landroid/net/Uri;

    :goto_17
    iput-object v0, p0, Lcom/android/providers/contacts/DbModifierWithNotification;->mBaseUri:Landroid/net/Uri;

    .line 103
    iget-object v0, p0, Lcom/android/providers/contacts/DbModifierWithNotification;->mTableName:Ljava/lang/String;

    const-string v1, "logs"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/providers/contacts/DbModifierWithNotification;->mIsCallsTable:Z

    .line 104
    new-instance v0, Lcom/android/providers/contacts/VoicemailPermissions;

    iget-object v1, p0, Lcom/android/providers/contacts/DbModifierWithNotification;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/providers/contacts/VoicemailPermissions;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/providers/contacts/DbModifierWithNotification;->mVoicemailPermissions:Lcom/android/providers/contacts/VoicemailPermissions;

    .line 105
    return-void

    .line 101
    :cond_2d
    sget-object v0, Landroid/provider/VoicemailContract$Voicemails;->CONTENT_URI:Landroid/net/Uri;

    goto :goto_17
.end method

.method private getBroadcastReceiverComponents(Ljava/lang/String;Landroid/net/Uri;)Ljava/util/List;
    .registers 11
    .parameter "intentAction"
    .parameter "uri"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/net/Uri;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation

    .prologue
    .line 251
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 252
    .local v2, intent:Landroid/content/Intent;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 255
    .local v3, receiverComponents:Ljava/util/List;,"Ljava/util/List<Landroid/content/ComponentName;>;"
    iget-object v5, p0, Lcom/android/providers/contacts/DbModifierWithNotification;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v2, v6}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_19
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_34

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    .line 257
    .local v4, resolveInfo:Landroid/content/pm/ResolveInfo;
    iget-object v0, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 258
    .local v0, activityInfo:Landroid/content/pm/ActivityInfo;
    new-instance v5, Landroid/content/ComponentName;

    iget-object v6, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v7, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v5, v6, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_19

    .line 260
    .end local v0           #activityInfo:Landroid/content/pm/ActivityInfo;
    .end local v4           #resolveInfo:Landroid/content/pm/ResolveInfo;
    :cond_34
    return-object v3
.end method

.method private getCallingPackages()Ljava/util/Collection;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 268
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 269
    .local v0, caller:I
    if-nez v0, :cond_8

    .line 270
    const/4 v1, 0x0

    .line 272
    :goto_7
    return-object v1

    :cond_8
    iget-object v1, p0, Lcom/android/providers/contacts/DbModifierWithNotification;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/collect/Lists;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v1

    goto :goto_7
.end method

.method private getModifiedPackages(Landroid/content/ContentValues;)Ljava/util/Set;
    .registers 4
    .parameter "values"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentValues;",
            ")",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 201
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 202
    .local v0, impactedPackages:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    const-string v1, "source_package"

    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 203
    const-string v1, "source_package"

    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 205
    :cond_16
    return-object v0
.end method

.method private getModifiedPackages(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/Set;
    .registers 14
    .parameter "whereClause"
    .parameter "whereArgs"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v10, 0x0

    const/4 v5, 0x0

    .line 183
    new-instance v9, Ljava/util/HashSet;

    invoke-direct {v9}, Ljava/util/HashSet;-><init>()V

    .line 184
    .local v9, modifiedPackages:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/android/providers/contacts/DbModifierWithNotification;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    iget-object v1, p0, Lcom/android/providers/contacts/DbModifierWithNotification;->mTableName:Ljava/lang/String;

    sget-object v2, Lcom/android/providers/contacts/DbModifierWithNotification;->PROJECTION:[Ljava/lang/String;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const-string v4, "source_package IS NOT NULL"

    aput-object v4, v3, v10

    const/4 v4, 0x1

    aput-object p1, v3, v4

    invoke-static {v3}, Lcom/android/providers/contacts/util/DbQueryUtils;->concatenateClauses([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object v4, p2

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 186
    .local v8, cursor:Landroid/database/Cursor;
    :goto_22
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_30

    .line 187
    invoke-interface {v8, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v9, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_22

    .line 189
    :cond_30
    invoke-static {v8}, Lcom/android/common/io/MoreCloseables;->closeQuietly(Landroid/database/Cursor;)V

    .line 190
    return-object v9
.end method

.method private notifyCallLogChange()V
    .registers 5

    .prologue
    .line 136
    iget-object v0, p0, Lcom/android/providers/contacts/DbModifierWithNotification;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;Z)V

    .line 137
    return-void
.end method

.method private varargs notifyVoicemailChange(Landroid/net/Uri;Ljava/util/Set;[Ljava/lang/String;)V
    .registers 22
    .parameter "notificationUri"
    .parameter
    .parameter "intentActions"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 212
    .local p2, modifiedPackages:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/providers/contacts/DbModifierWithNotification;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    const/4 v13, 0x0

    const/4 v14, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v12, v0, v13, v14}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;Z)V

    .line 213
    invoke-direct/range {p0 .. p0}, Lcom/android/providers/contacts/DbModifierWithNotification;->getCallingPackages()Ljava/util/Collection;

    move-result-object v3

    .line 215
    .local v3, callingPackages:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/String;>;"
    move-object/from16 v2, p3

    .local v2, arr$:[Ljava/lang/String;
    array-length v10, v2

    .local v10, len$:I
    const/4 v5, 0x0

    .local v5, i$:I
    move v6, v5

    .end local v5           #i$:I
    .local v6, i$:I
    :goto_18
    if-ge v6, v10, :cond_d0

    aget-object v9, v2, v6

    .line 218
    .local v9, intentAction:Ljava/lang/String;
    const-string v12, "android.intent.action.PROVIDER_CHANGED"

    invoke-virtual {v9, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    .line 219
    .local v7, includeSelfChangeExtra:Z
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v9, v1}, Lcom/android/providers/contacts/DbModifierWithNotification;->getBroadcastReceiverComponents(Ljava/lang/String;Landroid/net/Uri;)Ljava/util/List;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .end local v6           #i$:I
    .local v5, i$:Ljava/util/Iterator;
    :cond_2e
    :goto_2e
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_cb

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ComponentName;

    .line 224
    .local v4, component:Landroid/content/ComponentName;
    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p2

    invoke-interface {v0, v12}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_54

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/providers/contacts/DbModifierWithNotification;->mVoicemailPermissions:Lcom/android/providers/contacts/VoicemailPermissions;

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/android/providers/contacts/VoicemailPermissions;->packageHasFullAccess(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_2e

    .line 229
    :cond_54
    new-instance v8, Landroid/content/Intent;

    move-object/from16 v0, p1

    invoke-direct {v8, v9, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 230
    .local v8, intent:Landroid/content/Intent;
    invoke-virtual {v8, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 231
    if-eqz v7, :cond_6f

    if-eqz v3, :cond_6f

    .line 232
    const-string v12, "com.android.voicemail.extra.SELF_CHANGE"

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v3, v13}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v13

    invoke-virtual {v8, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 235
    :cond_6f
    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p2

    invoke-interface {v0, v12}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_c6

    const-string v11, "com.android.voicemail.permission.ADD_VOICEMAIL"

    .line 237
    .local v11, permissionNeeded:Ljava/lang/String;
    :goto_7d
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/providers/contacts/DbModifierWithNotification;->mContext:Landroid/content/Context;

    invoke-virtual {v12, v8, v11}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 238
    const-string v13, "DbModifierWithVmNotification"

    const-string v14, "Sent intent. act:%s, url:%s, comp:%s, perm:%s, self_change:%s"

    const/4 v12, 0x5

    new-array v15, v12, [Ljava/lang/Object;

    const/4 v12, 0x0

    invoke-virtual {v8}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v16

    aput-object v16, v15, v12

    const/4 v12, 0x1

    invoke-virtual {v8}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v16

    aput-object v16, v15, v12

    const/4 v12, 0x2

    invoke-virtual {v4}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v16

    aput-object v16, v15, v12

    const/4 v12, 0x3

    aput-object v11, v15, v12

    const/16 v16, 0x4

    const-string v12, "com.android.voicemail.extra.SELF_CHANGE"

    invoke-virtual {v8, v12}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_c9

    const-string v12, "com.android.voicemail.extra.SELF_CHANGE"

    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v8, v12, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v12

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    :goto_bb
    aput-object v12, v15, v16

    invoke-static {v14, v15}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v13, v12}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2e

    .line 235
    .end local v11           #permissionNeeded:Ljava/lang/String;
    :cond_c6
    const-string v11, "com.android.voicemail.permission.READ_WRITE_ALL_VOICEMAIL"

    goto :goto_7d

    .line 238
    .restart local v11       #permissionNeeded:Ljava/lang/String;
    :cond_c9
    const/4 v12, 0x0

    goto :goto_bb

    .line 215
    .end local v4           #component:Landroid/content/ComponentName;
    .end local v8           #intent:Landroid/content/Intent;
    .end local v11           #permissionNeeded:Ljava/lang/String;
    :cond_cb
    add-int/lit8 v5, v6, 0x1

    .local v5, i$:I
    move v6, v5

    .end local v5           #i$:I
    .restart local v6       #i$:I
    goto/16 :goto_18

    .line 245
    .end local v7           #includeSelfChangeExtra:Z
    .end local v9           #intentAction:Ljava/lang/String;
    :cond_d0
    return-void
.end method

.method private notifyVoicemailChangeOnInsert(Landroid/net/Uri;Ljava/util/Set;)V
    .registers 7
    .parameter "notificationUri"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, packagesModified:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 140
    iget-boolean v0, p0, Lcom/android/providers/contacts/DbModifierWithNotification;->mIsCallsTable:Z

    if-eqz v0, :cond_15

    .line 141
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "android.intent.action.NEW_VOICEMAIL"

    aput-object v1, v0, v2

    const-string v1, "android.intent.action.PROVIDER_CHANGED"

    aput-object v1, v0, v3

    invoke-direct {p0, p1, p2, v0}, Lcom/android/providers/contacts/DbModifierWithNotification;->notifyVoicemailChange(Landroid/net/Uri;Ljava/util/Set;[Ljava/lang/String;)V

    .line 146
    :goto_14
    return-void

    .line 144
    :cond_15
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "android.intent.action.PROVIDER_CHANGED"

    aput-object v1, v0, v2

    invoke-direct {p0, p1, p2, v0}, Lcom/android/providers/contacts/DbModifierWithNotification;->notifyVoicemailChange(Landroid/net/Uri;Ljava/util/Set;[Ljava/lang/String;)V

    goto :goto_14
.end method


# virtual methods
.method public delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 10
    .parameter "table"
    .parameter "whereClause"
    .parameter "whereArgs"

    .prologue
    .line 164
    invoke-direct {p0, p2, p3}, Lcom/android/providers/contacts/DbModifierWithNotification;->getModifiedPackages(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/Set;

    move-result-object v1

    .line 165
    .local v1, packagesModified:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v2, p0, Lcom/android/providers/contacts/DbModifierWithNotification;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2, p1, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 166
    .local v0, count:I
    if-lez v0, :cond_1f

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v2

    if-eqz v2, :cond_1f

    .line 167
    iget-object v2, p0, Lcom/android/providers/contacts/DbModifierWithNotification;->mBaseUri:Landroid/net/Uri;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "android.intent.action.PROVIDER_CHANGED"

    aput-object v5, v3, v4

    invoke-direct {p0, v2, v1, v3}, Lcom/android/providers/contacts/DbModifierWithNotification;->notifyVoicemailChange(Landroid/net/Uri;Ljava/util/Set;[Ljava/lang/String;)V

    .line 169
    :cond_1f
    if-lez v0, :cond_28

    iget-boolean v2, p0, Lcom/android/providers/contacts/DbModifierWithNotification;->mIsCallsTable:Z

    if-eqz v2, :cond_28

    .line 170
    invoke-direct {p0}, Lcom/android/providers/contacts/DbModifierWithNotification;->notifyCallLogChange()V

    .line 172
    :cond_28
    return v0
.end method

.method public insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    .registers 10
    .parameter "table"
    .parameter "nullColumnHack"
    .parameter "values"

    .prologue
    const-wide/16 v4, 0x0

    .line 109
    invoke-direct {p0, p3}, Lcom/android/providers/contacts/DbModifierWithNotification;->getModifiedPackages(Landroid/content/ContentValues;)Ljava/util/Set;

    move-result-object v0

    .line 110
    .local v0, packagesModified:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v3, p0, Lcom/android/providers/contacts/DbModifierWithNotification;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v3, p1, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v1

    .line 111
    .local v1, rowId:J
    cmp-long v3, v1, v4

    if-lez v3, :cond_1f

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v3

    if-eqz v3, :cond_1f

    .line 112
    iget-object v3, p0, Lcom/android/providers/contacts/DbModifierWithNotification;->mBaseUri:Landroid/net/Uri;

    invoke-static {v3, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {p0, v3, v0}, Lcom/android/providers/contacts/DbModifierWithNotification;->notifyVoicemailChangeOnInsert(Landroid/net/Uri;Ljava/util/Set;)V

    .line 115
    :cond_1f
    cmp-long v3, v1, v4

    if-lez v3, :cond_2a

    iget-boolean v3, p0, Lcom/android/providers/contacts/DbModifierWithNotification;->mIsCallsTable:Z

    if-eqz v3, :cond_2a

    .line 116
    invoke-direct {p0}, Lcom/android/providers/contacts/DbModifierWithNotification;->notifyCallLogChange()V

    .line 118
    :cond_2a
    return-wide v1
.end method

.method public update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 11
    .parameter "table"
    .parameter "values"
    .parameter "whereClause"
    .parameter "whereArgs"

    .prologue
    .line 150
    invoke-direct {p0, p3, p4}, Lcom/android/providers/contacts/DbModifierWithNotification;->getModifiedPackages(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/Set;

    move-result-object v1

    .line 151
    .local v1, packagesModified:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    invoke-direct {p0, p2}, Lcom/android/providers/contacts/DbModifierWithNotification;->getModifiedPackages(Landroid/content/ContentValues;)Ljava/util/Set;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 152
    iget-object v2, p0, Lcom/android/providers/contacts/DbModifierWithNotification;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2, p1, p2, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 153
    .local v0, count:I
    if-lez v0, :cond_26

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v2

    if-eqz v2, :cond_26

    .line 154
    iget-object v2, p0, Lcom/android/providers/contacts/DbModifierWithNotification;->mBaseUri:Landroid/net/Uri;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "android.intent.action.PROVIDER_CHANGED"

    aput-object v5, v3, v4

    invoke-direct {p0, v2, v1, v3}, Lcom/android/providers/contacts/DbModifierWithNotification;->notifyVoicemailChange(Landroid/net/Uri;Ljava/util/Set;[Ljava/lang/String;)V

    .line 156
    :cond_26
    if-lez v0, :cond_2f

    iget-boolean v2, p0, Lcom/android/providers/contacts/DbModifierWithNotification;->mIsCallsTable:Z

    if-eqz v2, :cond_2f

    .line 157
    invoke-direct {p0}, Lcom/android/providers/contacts/DbModifierWithNotification;->notifyCallLogChange()V

    .line 159
    :cond_2f
    return v0
.end method
