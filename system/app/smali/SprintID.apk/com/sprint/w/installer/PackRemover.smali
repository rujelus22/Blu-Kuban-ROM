.class public Lcom/sprint/w/installer/PackRemover;
.super Landroid/app/Activity;
.source "PackRemover.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sprint/w/installer/PackRemover$DeleteObserver;
    }
.end annotation


# static fields
.field public static final EXTRA_CLEANUP:Ljava/lang/String; = "EXTRA_CLEANUP"

.field public static final EXTRA_KEEP_USER_MANAGED_ITEMS:Ljava/lang/String; = "keepUserContent"

.field public static final EXTRA_LOAD_HOME:Ljava/lang/String; = "com.sprint.w.installer.EXTRA_LOAD_HOME"

.field public static final EXTRA_PACK_ID:Ljava/lang/String; = "com.sprint.w.installer.EXTRA_PACK_ID"

.field private static log:Lcom/sprint/id/logger/Logger;


# instance fields
.field final mAppDeleteObserver:Landroid/content/pm/IPackageDeleteObserver;

.field mConn:Lcom/sprint/w/installer/service/SprintIDServiceConnection;

.field final mDone:Ljava/lang/Runnable;

.field private mKeepUserManagedItems:Z

.field private mLoadHome:Z

.field mPackageManager:Landroid/content/pm/PackageManager;

.field final mPackageManagerSignal:Ljava/lang/Object;

.field mProgresDialog:Landroid/app/ProgressDialog;

.field final mThreadSyncLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 25
    const-class v0, Lcom/sprint/w/installer/PackRemover;

    invoke-static {v0}, Lcom/sprint/id/logger/Logger;->getLogger(Ljava/lang/Class;)Lcom/sprint/id/logger/Logger;

    move-result-object v0

    sput-object v0, Lcom/sprint/w/installer/PackRemover;->log:Lcom/sprint/id/logger/Logger;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 23
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 37
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/sprint/w/installer/PackRemover;->mThreadSyncLock:Ljava/lang/Object;

    .line 100
    new-instance v0, Lcom/sprint/w/installer/PackRemover$2;

    invoke-direct {v0, p0}, Lcom/sprint/w/installer/PackRemover$2;-><init>(Lcom/sprint/w/installer/PackRemover;)V

    iput-object v0, p0, Lcom/sprint/w/installer/PackRemover;->mDone:Ljava/lang/Runnable;

    .line 164
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/sprint/w/installer/PackRemover;->mPackageManagerSignal:Ljava/lang/Object;

    .line 180
    new-instance v0, Lcom/sprint/w/installer/PackRemover$DeleteObserver;

    invoke-direct {v0, p0}, Lcom/sprint/w/installer/PackRemover$DeleteObserver;-><init>(Lcom/sprint/w/installer/PackRemover;)V

    iput-object v0, p0, Lcom/sprint/w/installer/PackRemover;->mAppDeleteObserver:Landroid/content/pm/IPackageDeleteObserver;

    return-void
.end method

.method static synthetic access$000(Lcom/sprint/w/installer/PackRemover;Ljava/lang/String;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lcom/sprint/w/installer/PackRemover;->removePackContent(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/sprint/w/installer/PackRemover;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 23
    iget-boolean v0, p0, Lcom/sprint/w/installer/PackRemover;->mLoadHome:Z

    return v0
.end method

.method static synthetic access$200()Lcom/sprint/id/logger/Logger;
    .registers 1

    .prologue
    .line 23
    sget-object v0, Lcom/sprint/w/installer/PackRemover;->log:Lcom/sprint/id/logger/Logger;

    return-object v0
.end method

.method public static deleteWidgets(Lcom/sprint/id/ISprintIDService;Landroid/content/Context;Ljava/lang/String;)V
    .registers 20
    .parameter "service"
    .parameter "c"
    .parameter "packId"

    .prologue
    .line 228
    const/4 v1, 0x1

    :try_start_1
    new-array v3, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "appWidgetId"

    aput-object v2, v3, v1

    .line 231
    .local v3, projection:[Ljava/lang/String;
    const-string v4, "packId=? AND itemType=4"

    .line 232
    .local v4, selection:Ljava/lang/String;
    const/4 v1, 0x1

    new-array v5, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p2, v5, v1

    .line 235
    .local v5, args:[Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/sprint/w/installer/ContentProvider;->URI_INSTALLER_FAVORITES:Landroid/net/Uri;

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1a} :catch_6d

    move-result-object v8

    .line 237
    .local v8, cur:Landroid/database/Cursor;
    :try_start_1b
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_64

    .line 238
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 239
    .local v13, ids:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const-string v1, "appWidgetId"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v14

    .line 241
    .local v14, index:I
    :cond_2c
    invoke-interface {v8, v14}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 242
    .local v7, appWidgetId:I
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v13, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 244
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_2c

    .line 246
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v15, v1, [I

    .line 247
    .local v15, ints:[I
    const/4 v10, 0x0

    .line 248
    .local v10, i:I
    invoke-virtual {v13}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .local v12, i$:Ljava/util/Iterator;
    move v11, v10

    .end local v10           #i:I
    .local v11, i:I
    :goto_49
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5f

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/Integer;

    .line 249
    .local v16, n:Ljava/lang/Integer;
    add-int/lit8 v10, v11, 0x1

    .end local v11           #i:I
    .restart local v10       #i:I
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Integer;->intValue()I

    move-result v1

    aput v1, v15, v11

    move v11, v10

    .end local v10           #i:I
    .restart local v11       #i:I
    goto :goto_49

    .line 252
    .end local v16           #n:Ljava/lang/Integer;
    :cond_5f
    move-object/from16 v0, p0

    invoke-interface {v0, v15}, Lcom/sprint/id/ISprintIDService;->deleteWidgetsFromHostByID([I)V
    :try_end_64
    .catchall {:try_start_1b .. :try_end_64} :catchall_68

    .line 255
    .end local v7           #appWidgetId:I
    .end local v11           #i:I
    .end local v12           #i$:Ljava/util/Iterator;
    .end local v13           #ids:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v14           #index:I
    .end local v15           #ints:[I
    :cond_64
    :try_start_64
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 261
    .end local v3           #projection:[Ljava/lang/String;
    .end local v4           #selection:Ljava/lang/String;
    .end local v5           #args:[Ljava/lang/String;
    .end local v8           #cur:Landroid/database/Cursor;
    :goto_67
    return-void

    .line 255
    .restart local v3       #projection:[Ljava/lang/String;
    .restart local v4       #selection:Ljava/lang/String;
    .restart local v5       #args:[Ljava/lang/String;
    .restart local v8       #cur:Landroid/database/Cursor;
    :catchall_68
    move-exception v1

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v1
    :try_end_6d
    .catch Landroid/os/RemoteException; {:try_start_64 .. :try_end_6d} :catch_6d

    .line 258
    .end local v3           #projection:[Ljava/lang/String;
    .end local v4           #selection:Ljava/lang/String;
    .end local v5           #args:[Ljava/lang/String;
    .end local v8           #cur:Landroid/database/Cursor;
    :catch_6d
    move-exception v9

    .line 259
    .local v9, e:Landroid/os/RemoteException;
    sget-object v1, Lcom/sprint/w/installer/PackRemover;->log:Lcom/sprint/id/logger/Logger;

    const-string v2, "Remote Error calling ISprintIDService.deleteWidgetsFromHostByID()"

    invoke-virtual {v1, v2, v9}, Lcom/sprint/id/logger/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_67
.end method

.method private isAppUnique(Ljava/lang/String;)Z
    .registers 11
    .parameter "packageName"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 211
    invoke-virtual {p0}, Lcom/sprint/w/installer/PackRemover;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/sprint/w/installer/ContentProvider;->URI:Landroid/net/Uri;

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "_id"

    aput-object v3, v2, v7

    const-string v3, "package=?"

    new-array v4, v8, [Ljava/lang/String;

    aput-object p1, v4, v7

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 217
    .local v6, cur:Landroid/database/Cursor;
    :try_start_19
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2a

    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_22
    .catchall {:try_start_19 .. :try_end_22} :catchall_2f

    move-result v0

    if-eqz v0, :cond_2a

    .line 221
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    move v0, v7

    .line 223
    :goto_29
    return v0

    .line 221
    :cond_2a
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    move v0, v8

    .line 223
    goto :goto_29

    .line 221
    :catchall_2f
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private removePackContent(Ljava/lang/String;)V
    .registers 20
    .parameter "packId"

    .prologue
    .line 109
    invoke-virtual/range {p0 .. p0}, Lcom/sprint/w/installer/PackRemover;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 111
    .local v2, cr:Landroid/content/ContentResolver;
    const/4 v3, 0x3

    new-array v4, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v7, "itemType"

    aput-object v7, v4, v3

    const/4 v3, 0x1

    const-string v7, "package"

    aput-object v7, v4, v3

    const/4 v3, 0x2

    const-string v7, "path"

    aput-object v7, v4, v3

    .line 114
    .local v4, projection:[Ljava/lang/String;
    const-string v5, "packId=?"

    .line 115
    .local v5, selection:Ljava/lang/String;
    const/4 v3, 0x1

    new-array v6, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p1, v6, v3

    .line 118
    .local v6, selectionArgs:[Ljava/lang/String;
    sget-object v3, Lcom/sprint/w/installer/ContentProvider;->URI:Landroid/net/Uri;

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 119
    .local v9, cur:Landroid/database/Cursor;
    const/4 v14, 0x1

    .line 121
    .local v14, shouldRemove:Z
    :try_start_26
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_5d

    .line 122
    const-string v3, "itemType"

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    .line 123
    .local v12, idxType:I
    const-string v3, "package"

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    .line 124
    .local v10, idxPackage:I
    const-string v3, "path"

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    .line 126
    .local v11, idxPath:I
    :cond_3e
    invoke-interface {v9, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    .line 127
    .local v15, type:I
    invoke-interface {v9, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 128
    .local v13, path:Ljava/lang/String;
    invoke-interface {v9, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 129
    .local v8, appPackage:Ljava/lang/String;
    if-nez v15, :cond_14e

    .line 131
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/sprint/w/installer/PackRemover;->mKeepUserManagedItems:Z

    if-nez v3, :cond_57

    .line 132
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/sprint/w/installer/PackRemover;->uninstallApp(Ljava/lang/String;)V

    .line 141
    :cond_57
    :goto_57
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_5a
    .catchall {:try_start_26 .. :try_end_5a} :catchall_169

    move-result v3

    if-nez v3, :cond_3e

    .line 144
    .end local v8           #appPackage:Ljava/lang/String;
    .end local v10           #idxPackage:I
    .end local v11           #idxPath:I
    .end local v12           #idxType:I
    .end local v13           #path:Ljava/lang/String;
    .end local v15           #type:I
    :cond_5d
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 146
    if-eqz v14, :cond_14d

    .line 148
    sget-object v3, Lcom/sprint/w/installer/ContentProvider;->URI:Landroid/net/Uri;

    invoke-virtual {v2, v3, v5, v6}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 150
    sget-object v3, Lcom/sprint/w/installer/ContentProvider;->URI_PACKS:Landroid/net/Uri;

    const-string v7, "id=?"

    invoke-virtual {v2, v3, v7, v6}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 152
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sprint/w/installer/PackRemover;->mConn:Lcom/sprint/w/installer/service/SprintIDServiceConnection;

    invoke-virtual {v3}, Lcom/sprint/w/installer/service/SprintIDServiceConnection;->getService()Lcom/sprint/id/ISprintIDService;

    move-result-object v3

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-static {v3, v0, v1}, Lcom/sprint/w/installer/PackRemover;->deleteWidgets(Lcom/sprint/id/ISprintIDService;Landroid/content/Context;Ljava/lang/String;)V

    .line 154
    sget-object v3, Lcom/sprint/w/installer/ContentProvider;->URI_INSTALLER_FAVORITES:Landroid/net/Uri;

    invoke-virtual {v2, v3, v5, v6}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 156
    new-instance v3, Ljava/io/File;

    invoke-virtual/range {p0 .. p0}, Lcom/sprint/w/installer/PackRemover;->getFilesDir()Ljava/io/File;

    move-result-object v7

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "th-wp-"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ".png"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-direct {v3, v7, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 157
    new-instance v3, Ljava/io/File;

    invoke-virtual/range {p0 .. p0}, Lcom/sprint/w/installer/PackRemover;->getFilesDir()Ljava/io/File;

    move-result-object v7

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "wp-"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ".png"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-direct {v3, v7, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 158
    new-instance v3, Ljava/io/File;

    invoke-virtual/range {p0 .. p0}, Lcom/sprint/w/installer/PackRemover;->getFilesDir()Ljava/io/File;

    move-result-object v7

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "wp-"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ".txt"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-direct {v3, v7, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 159
    new-instance v3, Ljava/io/File;

    invoke-virtual/range {p0 .. p0}, Lcom/sprint/w/installer/PackRemover;->getFilesDir()Ljava/io/File;

    move-result-object v7

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "rt-notification"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-direct {v3, v7, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 160
    new-instance v3, Ljava/io/File;

    invoke-virtual/range {p0 .. p0}, Lcom/sprint/w/installer/PackRemover;->getFilesDir()Ljava/io/File;

    move-result-object v7

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "rt-ringtone"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-direct {v3, v7, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 162
    :cond_14d
    return-void

    .line 134
    .restart local v8       #appPackage:Ljava/lang/String;
    .restart local v10       #idxPackage:I
    .restart local v11       #idxPath:I
    .restart local v12       #idxType:I
    .restart local v13       #path:Ljava/lang/String;
    .restart local v15       #type:I
    :cond_14e
    if-eqz v13, :cond_57

    .line 135
    :try_start_150
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/sprint/w/installer/PackRemover;->mKeepUserManagedItems:Z

    if-eqz v3, :cond_15f

    const/4 v3, 0x1

    if-eq v15, v3, :cond_57

    const/4 v3, 0x2

    if-eq v15, v3, :cond_57

    const/4 v3, 0x3

    if-eq v15, v3, :cond_57

    .line 138
    :cond_15f
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v13}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->delete()Z
    :try_end_167
    .catchall {:try_start_150 .. :try_end_167} :catchall_169

    goto/16 :goto_57

    .line 144
    .end local v8           #appPackage:Ljava/lang/String;
    .end local v10           #idxPackage:I
    .end local v11           #idxPath:I
    .end local v12           #idxType:I
    .end local v13           #path:Ljava/lang/String;
    .end local v15           #type:I
    :catchall_169
    move-exception v3

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    throw v3
.end method

.method private uninstallApp(Ljava/lang/String;)V
    .registers 8
    .parameter "packageName"

    .prologue
    const/4 v4, 0x0

    .line 183
    invoke-direct {p0, p1}, Lcom/sprint/w/installer/PackRemover;->isAppUnique(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5a

    .line 184
    const/4 v1, 0x1

    .line 186
    .local v1, installed:Z
    :try_start_8
    iget-object v2, p0, Lcom/sprint/w/installer/PackRemover;->mPackageManager:Landroid/content/pm/PackageManager;

    const/4 v3, 0x0

    invoke-virtual {v2, p1, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_e
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_8 .. :try_end_e} :catch_29

    .line 190
    :goto_e
    if-nez v1, :cond_2c

    .line 191
    sget-object v2, Lcom/sprint/w/installer/PackRemover;->log:Lcom/sprint/id/logger/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "App\'s already removed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sprint/id/logger/Logger;->d(Ljava/lang/String;)V

    .line 207
    .end local v1           #installed:Z
    :goto_28
    return-void

    .line 187
    .restart local v1       #installed:Z
    :catch_29
    move-exception v0

    .line 188
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v1, 0x0

    goto :goto_e

    .line 195
    .end local v0           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_2c
    iget-object v2, p0, Lcom/sprint/w/installer/PackRemover;->mPackageManager:Landroid/content/pm/PackageManager;

    iget-object v3, p0, Lcom/sprint/w/installer/PackRemover;->mAppDeleteObserver:Landroid/content/pm/IPackageDeleteObserver;

    invoke-virtual {v2, p1, v3, v4}, Landroid/content/pm/PackageManager;->deletePackage(Ljava/lang/String;Landroid/content/pm/IPackageDeleteObserver;I)V

    .line 196
    iget-object v3, p0, Lcom/sprint/w/installer/PackRemover;->mPackageManagerSignal:Ljava/lang/Object;

    monitor-enter v3

    .line 198
    :try_start_36
    iget-object v2, p0, Lcom/sprint/w/installer/PackRemover;->mPackageManagerSignal:Ljava/lang/Object;

    const-wide/16 v4, 0x1e

    invoke-virtual {v2, v4, v5}, Ljava/lang/Object;->wait(J)V
    :try_end_3d
    .catchall {:try_start_36 .. :try_end_3d} :catchall_57
    .catch Ljava/lang/InterruptedException; {:try_start_36 .. :try_end_3d} :catch_79

    .line 201
    :goto_3d
    :try_start_3d
    monitor-exit v3
    :try_end_3e
    .catchall {:try_start_3d .. :try_end_3e} :catchall_57

    .line 202
    sget-object v2, Lcom/sprint/w/installer/PackRemover;->log:Lcom/sprint/id/logger/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Removed app: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sprint/id/logger/Logger;->d(Ljava/lang/String;)V

    goto :goto_28

    .line 201
    :catchall_57
    move-exception v2

    :try_start_58
    monitor-exit v3
    :try_end_59
    .catchall {:try_start_58 .. :try_end_59} :catchall_57

    throw v2

    .line 205
    .end local v1           #installed:Z
    :cond_5a
    sget-object v2, Lcom/sprint/w/installer/PackRemover;->log:Lcom/sprint/id/logger/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Keeping app: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " -- used by other packs"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sprint/id/logger/Logger;->i(Ljava/lang/String;)V

    goto :goto_28

    .line 199
    .restart local v1       #installed:Z
    :catch_79
    move-exception v2

    goto :goto_3d
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 6
    .parameter "savedInstanceState"

    .prologue
    const/4 v3, 0x0

    .line 42
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 43
    invoke-virtual {p0}, Lcom/sprint/w/installer/PackRemover;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iput-object v1, p0, Lcom/sprint/w/installer/PackRemover;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 44
    invoke-virtual {p0}, Lcom/sprint/w/installer/PackRemover;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "com.sprint.w.installer.EXTRA_PACK_ID"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 45
    .local v0, packId:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/sprint/w/installer/PackRemover;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "keepUserContent"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/sprint/w/installer/PackRemover;->mKeepUserManagedItems:Z

    .line 46
    invoke-virtual {p0}, Lcom/sprint/w/installer/PackRemover;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "com.sprint.w.installer.EXTRA_LOAD_HOME"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/sprint/w/installer/PackRemover;->mLoadHome:Z

    .line 48
    if-eqz v0, :cond_4d

    .line 49
    new-instance v1, Lcom/sprint/w/installer/service/SprintIDServiceConnection;

    invoke-direct {v1}, Lcom/sprint/w/installer/service/SprintIDServiceConnection;-><init>()V

    iput-object v1, p0, Lcom/sprint/w/installer/PackRemover;->mConn:Lcom/sprint/w/installer/service/SprintIDServiceConnection;

    .line 50
    iget-object v1, p0, Lcom/sprint/w/installer/PackRemover;->mConn:Lcom/sprint/w/installer/service/SprintIDServiceConnection;

    new-instance v2, Lcom/sprint/w/installer/PackRemover$1;

    invoke-direct {v2, p0, v0}, Lcom/sprint/w/installer/PackRemover$1;-><init>(Lcom/sprint/w/installer/PackRemover;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/sprint/w/installer/service/SprintIDServiceConnection;->setOnConnectedCallback(Ljava/lang/Runnable;)V

    .line 85
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.sprint.id.BIND_SERVICE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/sprint/w/installer/PackRemover;->mConn:Lcom/sprint/w/installer/service/SprintIDServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {p0, v1, v2, v3}, Lcom/sprint/w/installer/PackRemover;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 90
    :goto_4c
    return-void

    .line 88
    :cond_4d
    invoke-virtual {p0}, Lcom/sprint/w/installer/PackRemover;->finish()V

    goto :goto_4c
.end method

.method protected onDestroy()V
    .registers 2

    .prologue
    .line 94
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 95
    iget-object v0, p0, Lcom/sprint/w/installer/PackRemover;->mConn:Lcom/sprint/w/installer/service/SprintIDServiceConnection;

    if-eqz v0, :cond_c

    .line 96
    iget-object v0, p0, Lcom/sprint/w/installer/PackRemover;->mConn:Lcom/sprint/w/installer/service/SprintIDServiceConnection;

    invoke-virtual {p0, v0}, Lcom/sprint/w/installer/PackRemover;->unbindService(Landroid/content/ServiceConnection;)V

    .line 98
    :cond_c
    return-void
.end method

.method protected onPause()V
    .registers 2

    .prologue
    .line 265
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 266
    iget-object v0, p0, Lcom/sprint/w/installer/PackRemover;->mProgresDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/sprint/w/installer/PackRemover;->mProgresDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 267
    iget-object v0, p0, Lcom/sprint/w/installer/PackRemover;->mProgresDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 269
    :cond_14
    return-void
.end method
