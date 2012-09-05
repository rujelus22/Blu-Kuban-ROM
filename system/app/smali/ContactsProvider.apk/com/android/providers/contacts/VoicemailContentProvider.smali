.class public Lcom/android/providers/contacts/VoicemailContentProvider;
.super Landroid/content/ContentProvider;
.source "VoicemailContentProvider.java"

# interfaces
.implements Lcom/android/providers/contacts/VoicemailTable$DelegateHelper;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/providers/contacts/VoicemailContentProvider$1;,
        Lcom/android/providers/contacts/VoicemailContentProvider$UriData;
    }
.end annotation


# instance fields
.field private mVoicemailContentTable:Lcom/android/providers/contacts/VoicemailTable$Delegate;

.field private mVoicemailPermissions:Lcom/android/providers/contacts/VoicemailPermissions;

.field private mVoicemailStatusTable:Lcom/android/providers/contacts/VoicemailTable$Delegate;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 50
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    .line 166
    return-void
.end method

.method private checkPackagePermission(Lcom/android/providers/contacts/VoicemailContentProvider$UriData;)V
    .registers 7
    .parameter "uriData"

    .prologue
    .line 343
    iget-object v0, p0, Lcom/android/providers/contacts/VoicemailContentProvider;->mVoicemailPermissions:Lcom/android/providers/contacts/VoicemailPermissions;

    invoke-virtual {v0}, Lcom/android/providers/contacts/VoicemailPermissions;->callerHasFullAccess()Z

    move-result v0

    if-nez v0, :cond_44

    .line 344
    invoke-virtual {p1}, Lcom/android/providers/contacts/VoicemailContentProvider$UriData;->hasSourcePackage()Z

    move-result v0

    if-nez v0, :cond_35

    .line 346
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Provider %s does not have %s permission.\nPlease set query parameter \'%s\' in the URI.\nURI: %s"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/android/providers/contacts/VoicemailContentProvider;->getCallingPackage()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "com.android.voicemail.permission.READ_WRITE_ALL_VOICEMAIL"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "source_package"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    invoke-virtual {p1}, Lcom/android/providers/contacts/VoicemailContentProvider$UriData;->getUri()Landroid/net/Uri;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 352
    :cond_35
    invoke-virtual {p0}, Lcom/android/providers/contacts/VoicemailContentProvider;->getCallingPackage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/providers/contacts/VoicemailContentProvider$UriData;->getSourcePackage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/providers/contacts/VoicemailContentProvider$UriData;->getUri()Landroid/net/Uri;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/android/providers/contacts/VoicemailContentProvider;->checkPackagesMatch(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)V

    .line 354
    :cond_44
    return-void
.end method

.method private final checkPackagesMatch(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)V
    .registers 9
    .parameter "callingPackage"
    .parameter "voicemailSourcePackage"
    .parameter "uri"

    .prologue
    .line 325
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_23

    .line 326
    const-string v1, "Permission denied for URI: %s\n. Package %s cannot perform this operation for %s. Requires %s permission."

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p3, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    const/4 v3, 0x2

    aput-object p2, v2, v3

    const/4 v3, 0x3

    const-string v4, "com.android.voicemail.permission.READ_WRITE_ALL_VOICEMAIL"

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 330
    .local v0, errorMsg:Ljava/lang/String;
    new-instance v1, Ljava/lang/SecurityException;

    invoke-direct {v1, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 332
    .end local v0           #errorMsg:Ljava/lang/String;
    :cond_23
    return-void
.end method

.method private checkPermissionsAndCreateUriData(Landroid/net/Uri;)Lcom/android/providers/contacts/VoicemailContentProvider$UriData;
    .registers 4
    .parameter "uri"

    .prologue
    .line 301
    iget-object v1, p0, Lcom/android/providers/contacts/VoicemailContentProvider;->mVoicemailPermissions:Lcom/android/providers/contacts/VoicemailPermissions;

    invoke-virtual {v1}, Lcom/android/providers/contacts/VoicemailPermissions;->checkCallerHasOwnVoicemailAccess()V

    .line 302
    invoke-static {p1}, Lcom/android/providers/contacts/VoicemailContentProvider$UriData;->createUriData(Landroid/net/Uri;)Lcom/android/providers/contacts/VoicemailContentProvider$UriData;

    move-result-object v0

    .line 303
    .local v0, uriData:Lcom/android/providers/contacts/VoicemailContentProvider$UriData;
    invoke-direct {p0, v0}, Lcom/android/providers/contacts/VoicemailContentProvider;->checkPackagePermission(Lcom/android/providers/contacts/VoicemailContentProvider$UriData;)V

    .line 304
    return-object v0
.end method

.method private varargs checkPermissionsAndCreateUriData(Landroid/net/Uri;[Landroid/content/ContentValues;)Lcom/android/providers/contacts/VoicemailContentProvider$UriData;
    .registers 8
    .parameter "uri"
    .parameter "valuesArray"

    .prologue
    .line 312
    invoke-direct {p0, p1}, Lcom/android/providers/contacts/VoicemailContentProvider;->checkPermissionsAndCreateUriData(Landroid/net/Uri;)Lcom/android/providers/contacts/VoicemailContentProvider$UriData;

    move-result-object v3

    .line 313
    .local v3, uriData:Lcom/android/providers/contacts/VoicemailContentProvider$UriData;
    move-object v0, p2

    .local v0, arr$:[Landroid/content/ContentValues;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_7
    if-ge v1, v2, :cond_11

    aget-object v4, v0, v1

    .line 314
    .local v4, values:Landroid/content/ContentValues;
    invoke-direct {p0, v3, v4}, Lcom/android/providers/contacts/VoicemailContentProvider;->checkSourcePackageSameIfSet(Lcom/android/providers/contacts/VoicemailContentProvider$UriData;Landroid/content/ContentValues;)V

    .line 313
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 316
    .end local v4           #values:Landroid/content/ContentValues;
    :cond_11
    return-object v3
.end method

.method private checkPermissionsAndCreateUriDataForReadOperation(Landroid/net/Uri;)Lcom/android/providers/contacts/VoicemailContentProvider$UriData;
    .registers 4
    .parameter "uri"

    .prologue
    .line 289
    invoke-virtual {p0}, Lcom/android/providers/contacts/VoicemailContentProvider;->context()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->checkCallingUriPermission(Landroid/net/Uri;I)I

    move-result v0

    if-nez v0, :cond_10

    .line 291
    invoke-static {p1}, Lcom/android/providers/contacts/VoicemailContentProvider$UriData;->createUriData(Landroid/net/Uri;)Lcom/android/providers/contacts/VoicemailContentProvider$UriData;

    move-result-object v0

    .line 293
    :goto_f
    return-object v0

    :cond_10
    invoke-direct {p0, p1}, Lcom/android/providers/contacts/VoicemailContentProvider;->checkPermissionsAndCreateUriData(Landroid/net/Uri;)Lcom/android/providers/contacts/VoicemailContentProvider$UriData;

    move-result-object v0

    goto :goto_f
.end method

.method private checkSourcePackageSameIfSet(Lcom/android/providers/contacts/VoicemailContentProvider$UriData;Landroid/content/ContentValues;)V
    .registers 6
    .parameter "uriData"
    .parameter "values"

    .prologue
    .line 265
    invoke-virtual {p1}, Lcom/android/providers/contacts/VoicemailContentProvider$UriData;->hasSourcePackage()Z

    move-result v0

    if-eqz v0, :cond_4b

    const-string v0, "source_package"

    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4b

    .line 266
    invoke-virtual {p1}, Lcom/android/providers/contacts/VoicemailContentProvider$UriData;->getSourcePackage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "source_package"

    invoke-virtual {p2, v1}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4b

    .line 267
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "source_package in URI was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/providers/contacts/VoicemailContentProvider$UriData;->getSourcePackage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " but doesn\'t match source_package in ContentValues which was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "source_package"

    invoke-virtual {p2, v2}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 273
    :cond_4b
    return-void
.end method

.method private getPackageRestrictionClause()Ljava/lang/String;
    .registers 3

    .prologue
    .line 397
    iget-object v0, p0, Lcom/android/providers/contacts/VoicemailContentProvider;->mVoicemailPermissions:Lcom/android/providers/contacts/VoicemailPermissions;

    invoke-virtual {v0}, Lcom/android/providers/contacts/VoicemailPermissions;->callerHasFullAccess()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 398
    const/4 v0, 0x0

    .line 400
    :goto_9
    return-object v0

    :cond_a
    const-string v0, "source_package"

    invoke-virtual {p0}, Lcom/android/providers/contacts/VoicemailContentProvider;->getCallingPackage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/providers/contacts/util/DbQueryUtils;->getEqualityClause(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_9
.end method

.method private getTableDelegate(Lcom/android/providers/contacts/VoicemailContentProvider$UriData;)Lcom/android/providers/contacts/VoicemailTable$Delegate;
    .registers 5
    .parameter "uriData"

    .prologue
    .line 149
    sget-object v0, Lcom/android/providers/contacts/VoicemailContentProvider$1;->$SwitchMap$com$android$providers$contacts$VoicemailUriType:[I

    invoke-virtual {p1}, Lcom/android/providers/contacts/VoicemailContentProvider$UriData;->getUriType()Lcom/android/providers/contacts/VoicemailUriType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/providers/contacts/VoicemailUriType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_3a

    .line 159
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Impossible, all cases are covered."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 152
    :pswitch_17
    iget-object v0, p0, Lcom/android/providers/contacts/VoicemailContentProvider;->mVoicemailStatusTable:Lcom/android/providers/contacts/VoicemailTable$Delegate;

    .line 155
    :goto_19
    return-object v0

    :pswitch_1a
    iget-object v0, p0, Lcom/android/providers/contacts/VoicemailContentProvider;->mVoicemailContentTable:Lcom/android/providers/contacts/VoicemailTable$Delegate;

    goto :goto_19

    .line 157
    :pswitch_1d
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid uri type for uri: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/providers/contacts/VoicemailContentProvider$UriData;->getUri()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 149
    :pswitch_data_3a
    .packed-switch 0x1
        :pswitch_17
        :pswitch_17
        :pswitch_1a
        :pswitch_1a
        :pswitch_1d
    .end packed-switch
.end method


# virtual methods
.method public checkAndAddSourcePackageIntoValues(Lcom/android/providers/contacts/VoicemailContentProvider$UriData;Landroid/content/ContentValues;)V
    .registers 7
    .parameter "uriData"
    .parameter "values"

    .prologue
    .line 247
    const-string v1, "source_package"

    invoke-virtual {p2, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_17

    .line 248
    invoke-virtual {p1}, Lcom/android/providers/contacts/VoicemailContentProvider$UriData;->hasSourcePackage()Z

    move-result v1

    if-eqz v1, :cond_31

    invoke-virtual {p1}, Lcom/android/providers/contacts/VoicemailContentProvider$UriData;->getSourcePackage()Ljava/lang/String;

    move-result-object v0

    .line 250
    .local v0, provider:Ljava/lang/String;
    :goto_12
    const-string v1, "source_package"

    invoke-virtual {p2, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 253
    .end local v0           #provider:Ljava/lang/String;
    :cond_17
    iget-object v1, p0, Lcom/android/providers/contacts/VoicemailContentProvider;->mVoicemailPermissions:Lcom/android/providers/contacts/VoicemailPermissions;

    invoke-virtual {v1}, Lcom/android/providers/contacts/VoicemailPermissions;->callerHasFullAccess()Z

    move-result v1

    if-nez v1, :cond_30

    .line 254
    invoke-virtual {p0}, Lcom/android/providers/contacts/VoicemailContentProvider;->getCallingPackage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "source_package"

    invoke-virtual {p2, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/providers/contacts/VoicemailContentProvider$UriData;->getUri()Landroid/net/Uri;

    move-result-object v3

    invoke-direct {p0, v1, v2, v3}, Lcom/android/providers/contacts/VoicemailContentProvider;->checkPackagesMatch(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)V

    .line 258
    :cond_30
    return-void

    .line 248
    :cond_31
    invoke-virtual {p0}, Lcom/android/providers/contacts/VoicemailContentProvider;->getCallingPackage()Ljava/lang/String;

    move-result-object v0

    goto :goto_12
.end method

.method context()Landroid/content/Context;
    .registers 2
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 87
    invoke-virtual {p0}, Lcom/android/providers/contacts/VoicemailContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method createCallLogInsertionHelper(Landroid/content/Context;)Lcom/android/providers/contacts/CallLogInsertionHelper;
    .registers 3
    .parameter "context"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 77
    invoke-static {p1}, Lcom/android/providers/contacts/DefaultCallLogInsertionHelper;->getInstance(Landroid/content/Context;)Lcom/android/providers/contacts/DefaultCallLogInsertionHelper;

    move-result-object v0

    return-object v0
.end method

.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 8
    .parameter "uri"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    .line 129
    invoke-direct {p0, p1}, Lcom/android/providers/contacts/VoicemailContentProvider;->checkPermissionsAndCreateUriData(Landroid/net/Uri;)Lcom/android/providers/contacts/VoicemailContentProvider$UriData;

    move-result-object v1

    .line 130
    .local v1, uriData:Lcom/android/providers/contacts/VoicemailContentProvider$UriData;
    new-instance v0, Lcom/android/providers/contacts/util/SelectionBuilder;

    invoke-direct {v0, p2}, Lcom/android/providers/contacts/util/SelectionBuilder;-><init>(Ljava/lang/String;)V

    .line 131
    .local v0, selectionBuilder:Lcom/android/providers/contacts/util/SelectionBuilder;
    invoke-direct {p0}, Lcom/android/providers/contacts/VoicemailContentProvider;->getPackageRestrictionClause()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/providers/contacts/util/SelectionBuilder;->addClause(Ljava/lang/String;)Lcom/android/providers/contacts/util/SelectionBuilder;

    .line 132
    invoke-direct {p0, v1}, Lcom/android/providers/contacts/VoicemailContentProvider;->getTableDelegate(Lcom/android/providers/contacts/VoicemailContentProvider$UriData;)Lcom/android/providers/contacts/VoicemailTable$Delegate;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/providers/contacts/util/SelectionBuilder;->build()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v1, v3, p3}, Lcom/android/providers/contacts/VoicemailTable$Delegate;->delete(Lcom/android/providers/contacts/VoicemailContentProvider$UriData;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    return v2
.end method

.method getCallingPackage()Ljava/lang/String;
    .registers 11

    .prologue
    const/4 v3, 0x0

    const/4 v9, 0x0

    .line 365
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 366
    .local v2, caller:I
    if-nez v2, :cond_9

    .line 389
    :cond_8
    :goto_8
    return-object v3

    .line 369
    :cond_9
    invoke-virtual {p0}, Lcom/android/providers/contacts/VoicemailContentProvider;->context()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    invoke-virtual {v7, v2}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v4

    .line 370
    .local v4, callerPackages:[Ljava/lang/String;
    if-eqz v4, :cond_8

    array-length v7, v4

    if-eqz v7, :cond_8

    .line 373
    array-length v7, v4

    const/4 v8, 0x1

    if-ne v7, v8, :cond_21

    .line 374
    aget-object v3, v4, v9

    goto :goto_8

    .line 379
    :cond_21
    aget-object v1, v4, v9

    .line 380
    .local v1, bestSoFar:Ljava/lang/String;
    move-object v0, v4

    .local v0, arr$:[Ljava/lang/String;
    array-length v6, v0

    .local v6, len$:I
    const/4 v5, 0x0

    .local v5, i$:I
    :goto_26
    if-ge v5, v6, :cond_3e

    aget-object v3, v0, v5

    .line 381
    .local v3, callerPackage:Ljava/lang/String;
    iget-object v7, p0, Lcom/android/providers/contacts/VoicemailContentProvider;->mVoicemailPermissions:Lcom/android/providers/contacts/VoicemailPermissions;

    invoke-virtual {v7, v3}, Lcom/android/providers/contacts/VoicemailPermissions;->packageHasFullAccess(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_8

    .line 385
    iget-object v7, p0, Lcom/android/providers/contacts/VoicemailContentProvider;->mVoicemailPermissions:Lcom/android/providers/contacts/VoicemailPermissions;

    invoke-virtual {v7, v3}, Lcom/android/providers/contacts/VoicemailPermissions;->packageHasOwnVoicemailAccess(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3b

    .line 386
    move-object v1, v3

    .line 380
    :cond_3b
    add-int/lit8 v5, v5, 0x1

    goto :goto_26

    .end local v3           #callerPackage:Ljava/lang/String;
    :cond_3e
    move-object v3, v1

    .line 389
    goto :goto_8
.end method

.method getDatabaseHelper(Landroid/content/Context;)Lcom/android/providers/contacts/ContactsDatabaseHelper;
    .registers 3
    .parameter "context"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 82
    invoke-static {p1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getInstance(Landroid/content/Context;)Lcom/android/providers/contacts/ContactsDatabaseHelper;

    move-result-object v0

    return-object v0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .registers 5
    .parameter "uri"

    .prologue
    .line 92
    const/4 v1, 0x0

    .line 94
    .local v1, uriData:Lcom/android/providers/contacts/VoicemailContentProvider$UriData;
    :try_start_1
    invoke-static {p1}, Lcom/android/providers/contacts/VoicemailContentProvider$UriData;->createUriData(Landroid/net/Uri;)Lcom/android/providers/contacts/VoicemailContentProvider$UriData;
    :try_end_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_4} :catch_e

    move-result-object v1

    .line 99
    invoke-direct {p0, v1}, Lcom/android/providers/contacts/VoicemailContentProvider;->getTableDelegate(Lcom/android/providers/contacts/VoicemailContentProvider$UriData;)Lcom/android/providers/contacts/VoicemailTable$Delegate;

    move-result-object v2

    invoke-interface {v2, v1}, Lcom/android/providers/contacts/VoicemailTable$Delegate;->getType(Lcom/android/providers/contacts/VoicemailContentProvider$UriData;)Ljava/lang/String;

    move-result-object v2

    :goto_d
    return-object v2

    .line 95
    :catch_e
    move-exception v0

    .line 97
    .local v0, ignored:Ljava/lang/IllegalArgumentException;
    const/4 v2, 0x0

    goto :goto_d
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .registers 6
    .parameter "uri"
    .parameter "values"

    .prologue
    .line 104
    const/4 v1, 0x1

    new-array v1, v1, [Landroid/content/ContentValues;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-direct {p0, p1, v1}, Lcom/android/providers/contacts/VoicemailContentProvider;->checkPermissionsAndCreateUriData(Landroid/net/Uri;[Landroid/content/ContentValues;)Lcom/android/providers/contacts/VoicemailContentProvider$UriData;

    move-result-object v0

    .line 105
    .local v0, uriData:Lcom/android/providers/contacts/VoicemailContentProvider$UriData;
    invoke-direct {p0, v0}, Lcom/android/providers/contacts/VoicemailContentProvider;->getTableDelegate(Lcom/android/providers/contacts/VoicemailContentProvider$UriData;)Lcom/android/providers/contacts/VoicemailTable$Delegate;

    move-result-object v1

    invoke-interface {v1, v0, p2}, Lcom/android/providers/contacts/VoicemailTable$Delegate;->insert(Lcom/android/providers/contacts/VoicemailContentProvider$UriData;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v1

    return-object v1
.end method

.method public onCreate()Z
    .registers 8

    .prologue
    const/4 v6, 0x3

    .line 60
    const-string v0, "ContactsPerf"

    invoke-static {v0, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 61
    const-string v0, "ContactsPerf"

    const-string v1, "VoicemailContentProvider.onCreate start"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    :cond_10
    invoke-virtual {p0}, Lcom/android/providers/contacts/VoicemailContentProvider;->context()Landroid/content/Context;

    move-result-object v2

    .line 64
    .local v2, context:Landroid/content/Context;
    new-instance v0, Lcom/android/providers/contacts/VoicemailPermissions;

    invoke-direct {v0, v2}, Lcom/android/providers/contacts/VoicemailPermissions;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/providers/contacts/VoicemailContentProvider;->mVoicemailPermissions:Lcom/android/providers/contacts/VoicemailPermissions;

    .line 65
    new-instance v0, Lcom/android/providers/contacts/VoicemailContentTable;

    const-string v1, "calls"

    invoke-virtual {p0, v2}, Lcom/android/providers/contacts/VoicemailContentProvider;->getDatabaseHelper(Landroid/content/Context;)Lcom/android/providers/contacts/ContactsDatabaseHelper;

    move-result-object v3

    invoke-virtual {p0, v2}, Lcom/android/providers/contacts/VoicemailContentProvider;->createCallLogInsertionHelper(Landroid/content/Context;)Lcom/android/providers/contacts/CallLogInsertionHelper;

    move-result-object v5

    move-object v4, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/providers/contacts/VoicemailContentTable;-><init>(Ljava/lang/String;Landroid/content/Context;Landroid/database/sqlite/SQLiteOpenHelper;Lcom/android/providers/contacts/VoicemailTable$DelegateHelper;Lcom/android/providers/contacts/CallLogInsertionHelper;)V

    iput-object v0, p0, Lcom/android/providers/contacts/VoicemailContentProvider;->mVoicemailContentTable:Lcom/android/providers/contacts/VoicemailTable$Delegate;

    .line 67
    new-instance v0, Lcom/android/providers/contacts/VoicemailStatusTable;

    const-string v1, "voicemail_status"

    invoke-virtual {p0, v2}, Lcom/android/providers/contacts/VoicemailContentProvider;->getDatabaseHelper(Landroid/content/Context;)Lcom/android/providers/contacts/ContactsDatabaseHelper;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3, p0}, Lcom/android/providers/contacts/VoicemailStatusTable;-><init>(Ljava/lang/String;Landroid/content/Context;Landroid/database/sqlite/SQLiteOpenHelper;Lcom/android/providers/contacts/VoicemailTable$DelegateHelper;)V

    iput-object v0, p0, Lcom/android/providers/contacts/VoicemailContentProvider;->mVoicemailStatusTable:Lcom/android/providers/contacts/VoicemailTable$Delegate;

    .line 69
    const-string v0, "ContactsPerf"

    invoke-static {v0, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_49

    .line 70
    const-string v0, "ContactsPerf"

    const-string v1, "VoicemailContentProvider.onCreate finish"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    :cond_49
    const/4 v0, 0x1

    return v0
.end method

.method public openDataFile(Lcom/android/providers/contacts/VoicemailContentProvider$UriData;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .registers 4
    .parameter "uriData"
    .parameter "mode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 279
    invoke-virtual {p1}, Lcom/android/providers/contacts/VoicemailContentProvider$UriData;->getUri()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/android/providers/contacts/VoicemailContentProvider;->openFileHelper(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public openFile(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .registers 5
    .parameter "uri"
    .parameter "mode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 137
    const/4 v0, 0x0

    .line 138
    .local v0, uriData:Lcom/android/providers/contacts/VoicemailContentProvider$UriData;
    const-string v1, "r"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 139
    invoke-direct {p0, p1}, Lcom/android/providers/contacts/VoicemailContentProvider;->checkPermissionsAndCreateUriDataForReadOperation(Landroid/net/Uri;)Lcom/android/providers/contacts/VoicemailContentProvider$UriData;

    move-result-object v0

    .line 144
    :goto_d
    invoke-direct {p0, v0}, Lcom/android/providers/contacts/VoicemailContentProvider;->getTableDelegate(Lcom/android/providers/contacts/VoicemailContentProvider$UriData;)Lcom/android/providers/contacts/VoicemailTable$Delegate;

    move-result-object v1

    invoke-interface {v1, v0, p2}, Lcom/android/providers/contacts/VoicemailTable$Delegate;->openFile(Lcom/android/providers/contacts/VoicemailContentProvider$UriData;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    return-object v1

    .line 141
    :cond_16
    invoke-direct {p0, p1}, Lcom/android/providers/contacts/VoicemailContentProvider;->checkPermissionsAndCreateUriData(Landroid/net/Uri;)Lcom/android/providers/contacts/VoicemailContentProvider$UriData;

    move-result-object v0

    goto :goto_d
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .registers 13
    .parameter "uri"
    .parameter "projection"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sortOrder"

    .prologue
    .line 111
    invoke-direct {p0, p1}, Lcom/android/providers/contacts/VoicemailContentProvider;->checkPermissionsAndCreateUriDataForReadOperation(Landroid/net/Uri;)Lcom/android/providers/contacts/VoicemailContentProvider$UriData;

    move-result-object v1

    .line 112
    .local v1, uriData:Lcom/android/providers/contacts/VoicemailContentProvider$UriData;
    new-instance v6, Lcom/android/providers/contacts/util/SelectionBuilder;

    invoke-direct {v6, p3}, Lcom/android/providers/contacts/util/SelectionBuilder;-><init>(Ljava/lang/String;)V

    .line 113
    .local v6, selectionBuilder:Lcom/android/providers/contacts/util/SelectionBuilder;
    invoke-direct {p0}, Lcom/android/providers/contacts/VoicemailContentProvider;->getPackageRestrictionClause()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/android/providers/contacts/util/SelectionBuilder;->addClause(Ljava/lang/String;)Lcom/android/providers/contacts/util/SelectionBuilder;

    .line 114
    invoke-direct {p0, v1}, Lcom/android/providers/contacts/VoicemailContentProvider;->getTableDelegate(Lcom/android/providers/contacts/VoicemailContentProvider$UriData;)Lcom/android/providers/contacts/VoicemailTable$Delegate;

    move-result-object v0

    invoke-virtual {v6}, Lcom/android/providers/contacts/util/SelectionBuilder;->build()Ljava/lang/String;

    move-result-object v3

    move-object v2, p2

    move-object v4, p4

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/android/providers/contacts/VoicemailTable$Delegate;->query(Lcom/android/providers/contacts/VoicemailContentProvider$UriData;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 9
    .parameter "uri"
    .parameter "values"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    .line 120
    const/4 v2, 0x1

    new-array v2, v2, [Landroid/content/ContentValues;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    invoke-direct {p0, p1, v2}, Lcom/android/providers/contacts/VoicemailContentProvider;->checkPermissionsAndCreateUriData(Landroid/net/Uri;[Landroid/content/ContentValues;)Lcom/android/providers/contacts/VoicemailContentProvider$UriData;

    move-result-object v1

    .line 121
    .local v1, uriData:Lcom/android/providers/contacts/VoicemailContentProvider$UriData;
    new-instance v0, Lcom/android/providers/contacts/util/SelectionBuilder;

    invoke-direct {v0, p3}, Lcom/android/providers/contacts/util/SelectionBuilder;-><init>(Ljava/lang/String;)V

    .line 122
    .local v0, selectionBuilder:Lcom/android/providers/contacts/util/SelectionBuilder;
    invoke-direct {p0}, Lcom/android/providers/contacts/VoicemailContentProvider;->getPackageRestrictionClause()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/providers/contacts/util/SelectionBuilder;->addClause(Ljava/lang/String;)Lcom/android/providers/contacts/util/SelectionBuilder;

    .line 123
    invoke-direct {p0, v1}, Lcom/android/providers/contacts/VoicemailContentProvider;->getTableDelegate(Lcom/android/providers/contacts/VoicemailContentProvider$UriData;)Lcom/android/providers/contacts/VoicemailTable$Delegate;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/providers/contacts/util/SelectionBuilder;->build()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v1, p2, v3, p4}, Lcom/android/providers/contacts/VoicemailTable$Delegate;->update(Lcom/android/providers/contacts/VoicemailContentProvider$UriData;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    return v2
.end method
