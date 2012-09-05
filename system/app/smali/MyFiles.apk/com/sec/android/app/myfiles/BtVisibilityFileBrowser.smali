.class public Lcom/sec/android/app/myfiles/BtVisibilityFileBrowser;
.super Landroid/app/ListActivity;
.source "BtVisibilityFileBrowser.java"

# interfaces
.implements Lcom/sec/android/app/myfiles/Util/GsLongRunningActionDispatcher$GsLongRunningActionCallback;


# static fields
.field static btVisibilityList:[Ljava/lang/String;

.field private static sMyThis:Lcom/sec/android/app/myfiles/BtVisibilityFileBrowser;


# instance fields
.field private currentPreudoFolder:Ljava/lang/String;

.field depth:I

.field private directoryEntries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sec/android/app/myfiles/SimpleItem;",
            ">;"
        }
    .end annotation
.end field

.field private mAdapter:Lcom/sec/android/app/myfiles/ListAdapter;

.field private mCurrentSortBy:I

.field private mHandler:Landroid/os/Handler;

.field private mInfoStore:Lcom/sec/android/app/myfiles/FileInfoStore;

.field mLeftButton:Landroid/widget/Button;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field mRightButton:Landroid/widget/Button;

.field mSoftKey:Lcom/sec/android/app/myfiles/SoftKeyLayout;

.field private mlistView:Landroid/widget/ListView;

.field private rootsFoldersString:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 49
    const/4 v0, 0x0

    sput-object v0, Lcom/sec/android/app/myfiles/BtVisibilityFileBrowser;->sMyThis:Lcom/sec/android/app/myfiles/BtVisibilityFileBrowser;

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 44
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    .line 51
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/myfiles/BtVisibilityFileBrowser;->directoryEntries:Ljava/util/List;

    .line 55
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/myfiles/BtVisibilityFileBrowser;->mHandler:Landroid/os/Handler;

    .line 57
    iput v2, p0, Lcom/sec/android/app/myfiles/BtVisibilityFileBrowser;->mCurrentSortBy:I

    .line 61
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    invoke-static {}, Lcom/sec/android/app/myfiles/Utils;->getRootFolder()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    iput-object v0, p0, Lcom/sec/android/app/myfiles/BtVisibilityFileBrowser;->rootsFoldersString:[Ljava/lang/String;

    .line 65
    invoke-static {}, Lcom/sec/android/app/myfiles/Utils;->getRootFolder()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/myfiles/BtVisibilityFileBrowser;->currentPreudoFolder:Ljava/lang/String;

    .line 79
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/myfiles/BtVisibilityFileBrowser;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 233
    iput v2, p0, Lcom/sec/android/app/myfiles/BtVisibilityFileBrowser;->depth:I

    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/myfiles/BtVisibilityFileBrowser;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/sec/android/app/myfiles/BtVisibilityFileBrowser;->currentPreudoFolder:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100()Lcom/sec/android/app/myfiles/BtVisibilityFileBrowser;
    .registers 1

    .prologue
    .line 44
    sget-object v0, Lcom/sec/android/app/myfiles/BtVisibilityFileBrowser;->sMyThis:Lcom/sec/android/app/myfiles/BtVisibilityFileBrowser;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/android/app/myfiles/BtVisibilityFileBrowser;Ljava/lang/String;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lcom/sec/android/app/myfiles/BtVisibilityFileBrowser;->browseTo(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/sec/android/app/myfiles/BtVisibilityFileBrowser;)Lcom/sec/android/app/myfiles/ListAdapter;
    .registers 2
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/sec/android/app/myfiles/BtVisibilityFileBrowser;->mAdapter:Lcom/sec/android/app/myfiles/ListAdapter;

    return-object v0
.end method

.method private browseTo(Ljava/lang/String;)V
    .registers 11
    .parameter "aDirectory"

    .prologue
    .line 161
    iput-object p1, p0, Lcom/sec/android/app/myfiles/BtVisibilityFileBrowser;->currentPreudoFolder:Ljava/lang/String;

    .line 164
    invoke-static {}, Lcom/sec/android/app/myfiles/Util/GsRequestQueue;->getInstance()Lcom/sec/android/app/myfiles/Util/GsRequestQueue;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/android/app/myfiles/Util/GsRequestQueue;->init()V

    .line 166
    sget-object v7, Lcom/sec/android/app/myfiles/BtVisibilityFileBrowser;->sMyThis:Lcom/sec/android/app/myfiles/BtVisibilityFileBrowser;

    new-instance v8, Lcom/sec/android/app/myfiles/BtVisibilityFileBrowser$4;

    invoke-direct {v8, p0}, Lcom/sec/android/app/myfiles/BtVisibilityFileBrowser$4;-><init>(Lcom/sec/android/app/myfiles/BtVisibilityFileBrowser;)V

    invoke-virtual {v7, v8}, Lcom/sec/android/app/myfiles/BtVisibilityFileBrowser;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 172
    invoke-static {}, Lcom/sec/android/app/myfiles/Util/GsRequestQueue;->getInstance()Lcom/sec/android/app/myfiles/Util/GsRequestQueue;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/android/app/myfiles/Util/GsRequestQueue;->getRequest()Lcom/sec/android/app/myfiles/Util/GsRequest;

    .line 173
    iget-object v6, p0, Lcom/sec/android/app/myfiles/BtVisibilityFileBrowser;->currentPreudoFolder:Ljava/lang/String;

    .line 177
    .local v6, path:Ljava/lang/String;
    iget-object v7, p0, Lcom/sec/android/app/myfiles/BtVisibilityFileBrowser;->directoryEntries:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->clear()V

    .line 179
    invoke-static {v6}, Lcom/sec/android/app/myfiles/Utils;->isRootFolder(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_63

    .line 180
    iget-object v0, p0, Lcom/sec/android/app/myfiles/BtVisibilityFileBrowser;->rootsFoldersString:[Ljava/lang/String;

    .local v0, arr$:[Ljava/lang/String;
    array-length v5, v0

    .local v5, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_2b
    if-ge v4, v5, :cond_7d

    aget-object v3, v0, v4

    .line 182
    .local v3, fld:Ljava/lang/String;
    :try_start_2f
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 183
    .local v1, buf:Ljava/lang/StringBuffer;
    invoke-virtual {v1, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 185
    new-instance v2, Ljava/io/File;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v2, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 186
    .local v2, dir:Ljava/io/File;
    invoke-static {v3}, Lcom/sec/android/app/myfiles/Utils;->isRootFolder(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4b

    .line 187
    new-instance v2, Ljava/io/File;

    .end local v2           #dir:Ljava/io/File;
    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 189
    .restart local v2       #dir:Ljava/io/File;
    :cond_4b
    if-eqz v2, :cond_60

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_60

    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v7

    if-eqz v7, :cond_60

    .line 192
    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/sec/android/app/myfiles/BtVisibilityFileBrowser;->fill([Ljava/io/File;)V
    :try_end_60
    .catch Ljava/lang/Exception; {:try_start_2f .. :try_end_60} :catch_80

    .line 180
    .end local v1           #buf:Ljava/lang/StringBuffer;
    .end local v2           #dir:Ljava/io/File;
    :cond_60
    :goto_60
    add-int/lit8 v4, v4, 0x1

    goto :goto_2b

    .line 200
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v3           #fld:Ljava/lang/String;
    .end local v4           #i$:I
    .end local v5           #len$:I
    :cond_63
    :try_start_63
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 202
    .restart local v2       #dir:Ljava/io/File;
    if-eqz v2, :cond_7d

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_7d

    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v7

    if-eqz v7, :cond_7d

    .line 203
    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/sec/android/app/myfiles/BtVisibilityFileBrowser;->fill([Ljava/io/File;)V
    :try_end_7d
    .catch Ljava/lang/Exception; {:try_start_63 .. :try_end_7d} :catch_7e

    .line 209
    .end local v2           #dir:Ljava/io/File;
    :cond_7d
    :goto_7d
    return-void

    .line 205
    :catch_7e
    move-exception v7

    goto :goto_7d

    .line 194
    .restart local v0       #arr$:[Ljava/lang/String;
    .restart local v3       #fld:Ljava/lang/String;
    .restart local v4       #i$:I
    .restart local v5       #len$:I
    :catch_80
    move-exception v7

    goto :goto_60
.end method

.method private browseToSameFolder()V
    .registers 6

    .prologue
    .line 147
    invoke-static {}, Lcom/sec/android/app/myfiles/Util/GsLongRunningActionDispatcher;->getInstance()Lcom/sec/android/app/myfiles/Util/GsLongRunningActionDispatcher;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/myfiles/BtVisibilityFileBrowser;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0, v1, p0}, Lcom/sec/android/app/myfiles/Util/GsLongRunningActionDispatcher;->init(Landroid/content/Context;Landroid/os/Handler;Lcom/sec/android/app/myfiles/Util/GsLongRunningActionDispatcher$GsLongRunningActionCallback;)V

    .line 148
    invoke-static {}, Lcom/sec/android/app/myfiles/Util/GsLongRunningActionDispatcher;->getInstance()Lcom/sec/android/app/myfiles/Util/GsLongRunningActionDispatcher;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/myfiles/BtVisibilityFileBrowser$3;

    invoke-direct {v1, p0}, Lcom/sec/android/app/myfiles/BtVisibilityFileBrowser$3;-><init>(Lcom/sec/android/app/myfiles/BtVisibilityFileBrowser;)V

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/sec/android/app/myfiles/BtVisibilityFileBrowser;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090033

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/app/myfiles/Util/GsLongRunningActionDispatcher;->startLongRunningAction(Ljava/util/concurrent/Callable;Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    return-void
.end method

.method private fill([Ljava/io/File;)V
    .registers 18
    .parameter "files"

    .prologue
    .line 252
    if-nez p1, :cond_a

    .line 253
    const-string v1, "[MyFiles]"

    const-string v2, "BtVisibility fill : files is null"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    :cond_9
    return-void

    .line 257
    :cond_a
    :try_start_a
    move-object/from16 v0, p1

    array-length v1, v0

    if-lez v1, :cond_1b

    .line 258
    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-virtual {v1}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/sec/android/app/myfiles/BtVisibilityFileBrowser;->initBtVisibilityList(Ljava/lang/String;)V
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_1b} :catch_6e

    .line 266
    :cond_1b
    :goto_1b
    move-object/from16 v11, p1

    .local v11, arr$:[Ljava/io/File;
    array-length v14, v11

    .local v14, len$:I
    const/4 v13, 0x0

    .local v13, i$:I
    :goto_1f
    if-ge v13, v14, :cond_9

    aget-object v3, v11, v13

    .line 298
    .local v3, currentFile:Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->isFile()Z

    move-result v1

    if-eqz v1, :cond_6b

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/app/myfiles/Utils;->isHiddenItem(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_6b

    .line 302
    invoke-virtual {v3}, Ljava/io/File;->isFile()Z

    move-result v1

    if-eqz v1, :cond_73

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/sec/android/app/myfiles/BtVisibilityFileBrowser;->btVisibilityList:[Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/myfiles/BtVisibilityFileBrowser;->isStringMatched(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v7

    .line 306
    .local v7, isBtVisible:Z
    :goto_45
    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/app/myfiles/MediaFile;->needThumbnail(Ljava/lang/String;)Z

    move-result v10

    .line 307
    .local v10, isImage:Z
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/app/myfiles/BtVisibilityFileBrowser;->directoryEntries:Ljava/util/List;

    new-instance v1, Lcom/sec/android/app/myfiles/SimpleItem;

    new-instance v4, Lcom/sec/android/app/myfiles/SimpleIcon;

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/sec/android/app/myfiles/BtVisibilityFileBrowser;->getIconByType(Ljava/io/File;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-direct {v4, v3, v2}, Lcom/sec/android/app/myfiles/SimpleIcon;-><init>(Ljava/io/File;Landroid/graphics/drawable/Drawable;)V

    const/4 v5, 0x0

    const/4 v6, 0x0

    sget-object v8, Lcom/sec/android/app/myfiles/SimpleItem$ItemType;->BT_VISIBILITY:Lcom/sec/android/app/myfiles/SimpleItem$ItemType;

    const/4 v9, 0x1

    move-object/from16 v2, p0

    invoke-direct/range {v1 .. v10}, Lcom/sec/android/app/myfiles/SimpleItem;-><init>(Landroid/content/Context;Ljava/io/File;Lcom/sec/android/app/myfiles/SimpleIcon;ZZZLcom/sec/android/app/myfiles/SimpleItem$ItemType;ZZ)V

    invoke-interface {v15, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 266
    .end local v7           #isBtVisible:Z
    .end local v10           #isImage:Z
    :cond_6b
    add-int/lit8 v13, v13, 0x1

    goto :goto_1f

    .line 259
    .end local v3           #currentFile:Ljava/io/File;
    .end local v11           #arr$:[Ljava/io/File;
    .end local v13           #i$:I
    .end local v14           #len$:I
    :catch_6e
    move-exception v12

    .line 260
    .local v12, e:Ljava/lang/Exception;
    invoke-virtual {v12}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1b

    .line 302
    .end local v12           #e:Ljava/lang/Exception;
    .restart local v3       #currentFile:Ljava/io/File;
    .restart local v11       #arr$:[Ljava/io/File;
    .restart local v13       #i$:I
    .restart local v14       #len$:I
    :cond_73
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/myfiles/BtVisibilityFileBrowser;->mInfoStore:Lcom/sec/android/app/myfiles/FileInfoStore;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    sget-object v4, Lcom/sec/android/app/myfiles/FileInfoStore$FileInfoType;->BT_VISIBILITY:Lcom/sec/android/app/myfiles/FileInfoStore$FileInfoType;

    invoke-virtual {v1, v2, v4}, Lcom/sec/android/app/myfiles/FileInfoStore;->getFileInfoState(Ljava/lang/String;Lcom/sec/android/app/myfiles/FileInfoStore$FileInfoType;)I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_86

    const/4 v7, 0x1

    goto :goto_45

    :cond_86
    const/4 v7, 0x0

    goto :goto_45
.end method

.method private getIconByType(Ljava/io/File;)Landroid/graphics/drawable/Drawable;
    .registers 3
    .parameter "f"

    .prologue
    .line 323
    invoke-static {p1, p0}, Lcom/sec/android/app/myfiles/MediaFile;->getSmallIconDrawable(Ljava/io/File;Landroid/app/Activity;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method private initBtVisibilityList(Ljava/lang/String;)V
    .registers 6
    .parameter "path"

    .prologue
    .line 239
    const/4 v1, 0x0

    iput v1, p0, Lcom/sec/android/app/myfiles/BtVisibilityFileBrowser;->depth:I

    .line 240
    if-eqz p1, :cond_29

    .line 241
    const/4 v0, 0x0

    .local v0, i:I
    :goto_6
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_1d

    .line 242
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x2f

    if-ne v1, v2, :cond_1a

    .line 243
    iget v1, p0, Lcom/sec/android/app/myfiles/BtVisibilityFileBrowser;->depth:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/sec/android/app/myfiles/BtVisibilityFileBrowser;->depth:I

    .line 241
    :cond_1a
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 245
    :cond_1d
    iget-object v1, p0, Lcom/sec/android/app/myfiles/BtVisibilityFileBrowser;->mInfoStore:Lcom/sec/android/app/myfiles/FileInfoStore;

    iget v2, p0, Lcom/sec/android/app/myfiles/BtVisibilityFileBrowser;->depth:I

    sget-object v3, Lcom/sec/android/app/myfiles/FileInfoStore$FileInfoType;->BT_VISIBILITY:Lcom/sec/android/app/myfiles/FileInfoStore$FileInfoType;

    invoke-virtual {v1, p1, v2, v3}, Lcom/sec/android/app/myfiles/FileInfoStore;->getFileInfoStateList(Ljava/lang/String;ILcom/sec/android/app/myfiles/FileInfoStore$FileInfoType;)[Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/sec/android/app/myfiles/BtVisibilityFileBrowser;->btVisibilityList:[Ljava/lang/String;

    .line 248
    .end local v0           #i:I
    :cond_29
    return-void
.end method

.method private isStringMatched(Ljava/lang/String;[Ljava/lang/String;)Z
    .registers 6
    .parameter "s"
    .parameter "ss"

    .prologue
    const/4 v1, 0x0

    .line 222
    if-nez p2, :cond_4

    .line 230
    :cond_3
    :goto_3
    return v1

    .line 225
    :cond_4
    const/4 v0, 0x0

    .local v0, i:I
    :goto_5
    array-length v2, p2

    if-ge v0, v2, :cond_3

    .line 226
    aget-object v2, p2, v0

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 227
    const/4 v1, 0x1

    goto :goto_3

    .line 225
    :cond_12
    add-int/lit8 v0, v0, 0x1

    goto :goto_5
.end method

.method private setAdapter()V
    .registers 3

    .prologue
    .line 212
    iget-object v0, p0, Lcom/sec/android/app/myfiles/BtVisibilityFileBrowser;->directoryEntries:Ljava/util/List;

    iget v1, p0, Lcom/sec/android/app/myfiles/BtVisibilityFileBrowser;->mCurrentSortBy:I

    invoke-static {v0, v1}, Lcom/sec/android/app/myfiles/SimpleItem;->sort(Ljava/util/List;I)V

    .line 213
    iget-object v0, p0, Lcom/sec/android/app/myfiles/BtVisibilityFileBrowser;->mAdapter:Lcom/sec/android/app/myfiles/ListAdapter;

    iget-object v1, p0, Lcom/sec/android/app/myfiles/BtVisibilityFileBrowser;->directoryEntries:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/myfiles/ListAdapter;->setListItems(Ljava/util/List;)V

    .line 214
    sget-object v0, Lcom/sec/android/app/myfiles/BtVisibilityFileBrowser;->sMyThis:Lcom/sec/android/app/myfiles/BtVisibilityFileBrowser;

    iget-object v1, p0, Lcom/sec/android/app/myfiles/BtVisibilityFileBrowser;->mAdapter:Lcom/sec/android/app/myfiles/ListAdapter;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/myfiles/BtVisibilityFileBrowser;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 215
    iget-object v0, p0, Lcom/sec/android/app/myfiles/BtVisibilityFileBrowser;->mAdapter:Lcom/sec/android/app/myfiles/ListAdapter;

    invoke-virtual {v0}, Lcom/sec/android/app/myfiles/ListAdapter;->start()V

    .line 217
    iget-object v0, p0, Lcom/sec/android/app/myfiles/BtVisibilityFileBrowser;->directoryEntries:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_28

    .line 218
    sget-object v0, Lcom/sec/android/app/myfiles/BtVisibilityFileBrowser;->sMyThis:Lcom/sec/android/app/myfiles/BtVisibilityFileBrowser;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/myfiles/BtVisibilityFileBrowser;->setSelection(I)V

    .line 219
    :cond_28
    return-void
.end method

.method private updateResult()V
    .registers 13

    .prologue
    const/4 v8, 0x1

    .line 327
    const/4 v3, 0x0

    .line 330
    .local v3, isPretectedExisting:Z
    const/4 v0, 0x0

    .line 331
    .local v0, i:I
    const/4 v6, 0x0

    .line 333
    .local v6, k:I
    iget-object v9, p0, Lcom/sec/android/app/myfiles/BtVisibilityFileBrowser;->directoryEntries:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_a
    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_5d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sec/android/app/myfiles/SimpleItem;

    .line 334
    .local v5, item:Lcom/sec/android/app/myfiles/SimpleItem;
    invoke-virtual {v5}, Lcom/sec/android/app/myfiles/SimpleItem;->getFile()Ljava/io/File;

    move-result-object v9

    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    .line 335
    .local v7, path:Ljava/lang/String;
    iget-object v9, p0, Lcom/sec/android/app/myfiles/BtVisibilityFileBrowser;->mInfoStore:Lcom/sec/android/app/myfiles/FileInfoStore;

    sget-object v10, Lcom/sec/android/app/myfiles/FileInfoStore$FileInfoType;->BT_VISIBILITY:Lcom/sec/android/app/myfiles/FileInfoStore$FileInfoType;

    invoke-virtual {v9, v7, v10}, Lcom/sec/android/app/myfiles/FileInfoStore;->getFileInfoState(Ljava/lang/String;Lcom/sec/android/app/myfiles/FileInfoStore$FileInfoType;)I

    move-result v9

    if-nez v9, :cond_49

    const/4 v4, 0x0

    .line 337
    .local v4, isVisible:Z
    :goto_29
    invoke-virtual {v5}, Lcom/sec/android/app/myfiles/SimpleItem;->isMarked()Z

    move-result v2

    .line 339
    .local v2, isMarked:Z
    if-eq v4, v2, :cond_a

    .line 340
    if-ne v2, v8, :cond_55

    .line 341
    if-nez v3, :cond_34

    .line 342
    const/4 v3, 0x1

    .line 346
    :cond_34
    if-nez v0, :cond_4b

    .line 347
    :goto_36
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v9

    if-ge v0, v9, :cond_4b

    .line 348
    invoke-virtual {v7, v0}, Ljava/lang/String;->charAt(I)C

    move-result v9

    const/16 v10, 0x2f

    if-ne v9, v10, :cond_46

    .line 349
    add-int/lit8 v6, v6, 0x1

    .line 347
    :cond_46
    add-int/lit8 v0, v0, 0x1

    goto :goto_36

    .end local v2           #isMarked:Z
    .end local v4           #isVisible:Z
    :cond_49
    move v4, v8

    .line 335
    goto :goto_29

    .line 351
    .restart local v2       #isMarked:Z
    .restart local v4       #isVisible:Z
    :cond_4b
    iget-object v9, p0, Lcom/sec/android/app/myfiles/BtVisibilityFileBrowser;->mInfoStore:Lcom/sec/android/app/myfiles/FileInfoStore;

    add-int/lit8 v10, v6, -0x1

    sget-object v11, Lcom/sec/android/app/myfiles/FileInfoStore$FileInfoType;->BT_VISIBILITY:Lcom/sec/android/app/myfiles/FileInfoStore$FileInfoType;

    invoke-virtual {v9, v7, v8, v10, v11}, Lcom/sec/android/app/myfiles/FileInfoStore;->insertFileInfoTable(Ljava/lang/String;IILcom/sec/android/app/myfiles/FileInfoStore$FileInfoType;)V

    goto :goto_a

    .line 353
    :cond_55
    iget-object v9, p0, Lcom/sec/android/app/myfiles/BtVisibilityFileBrowser;->mInfoStore:Lcom/sec/android/app/myfiles/FileInfoStore;

    sget-object v10, Lcom/sec/android/app/myfiles/FileInfoStore$FileInfoType;->BT_VISIBILITY:Lcom/sec/android/app/myfiles/FileInfoStore$FileInfoType;

    invoke-virtual {v9, v7, v10}, Lcom/sec/android/app/myfiles/FileInfoStore;->deleteFileInfoTable(Ljava/lang/String;Lcom/sec/android/app/myfiles/FileInfoStore$FileInfoType;)V

    goto :goto_a

    .line 357
    .end local v2           #isMarked:Z
    .end local v4           #isVisible:Z
    .end local v5           #item:Lcom/sec/android/app/myfiles/SimpleItem;
    .end local v7           #path:Ljava/lang/String;
    :cond_5d
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 8
    .parameter "savedInstanceState"

    .prologue
    .line 82
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 84
    const v3, 0x7f030007

    invoke-virtual {p0, v3}, Lcom/sec/android/app/myfiles/BtVisibilityFileBrowser;->setContentView(I)V

    .line 85
    const v3, 0x7f09000a

    invoke-virtual {p0, v3}, Lcom/sec/android/app/myfiles/BtVisibilityFileBrowser;->setTitle(I)V

    .line 86
    const v3, 0x1030008

    invoke-virtual {p0, v3}, Lcom/sec/android/app/myfiles/BtVisibilityFileBrowser;->setTheme(I)V

    .line 87
    const/4 v2, 0x0

    .line 89
    .local v2, path:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/sec/android/app/myfiles/BtVisibilityFileBrowser;->getBaseContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/android/app/myfiles/Util/SharedDataStore;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/myfiles/Util/SharedDataStore;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/myfiles/Util/SharedDataStore;->getCurrentSortBy()I

    move-result v3

    iput v3, p0, Lcom/sec/android/app/myfiles/BtVisibilityFileBrowser;->mCurrentSortBy:I

    .line 91
    const v3, 0x7f0c000f

    invoke-virtual {p0, v3}, Lcom/sec/android/app/myfiles/BtVisibilityFileBrowser;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/myfiles/SoftKeyLayout;

    iput-object v3, p0, Lcom/sec/android/app/myfiles/BtVisibilityFileBrowser;->mSoftKey:Lcom/sec/android/app/myfiles/SoftKeyLayout;

    .line 92
    const v3, 0x7f0c0045

    invoke-virtual {p0, v3}, Lcom/sec/android/app/myfiles/BtVisibilityFileBrowser;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/sec/android/app/myfiles/BtVisibilityFileBrowser;->mLeftButton:Landroid/widget/Button;

    .line 93
    const v3, 0x7f0c0046

    invoke-virtual {p0, v3}, Lcom/sec/android/app/myfiles/BtVisibilityFileBrowser;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/sec/android/app/myfiles/BtVisibilityFileBrowser;->mRightButton:Landroid/widget/Button;

    .line 95
    iget-object v3, p0, Lcom/sec/android/app/myfiles/BtVisibilityFileBrowser;->mLeftButton:Landroid/widget/Button;

    const v4, 0x7f090010

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setText(I)V

    .line 96
    iget-object v3, p0, Lcom/sec/android/app/myfiles/BtVisibilityFileBrowser;->mRightButton:Landroid/widget/Button;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 98
    iget-object v3, p0, Lcom/sec/android/app/myfiles/BtVisibilityFileBrowser;->mSoftKey:Lcom/sec/android/app/myfiles/SoftKeyLayout;

    invoke-virtual {v3}, Lcom/sec/android/app/myfiles/SoftKeyLayout;->getLeftButton()Landroid/widget/Button;

    move-result-object v3

    new-instance v4, Lcom/sec/android/app/myfiles/BtVisibilityFileBrowser$1;

    invoke-direct {v4, p0}, Lcom/sec/android/app/myfiles/BtVisibilityFileBrowser$1;-><init>(Lcom/sec/android/app/myfiles/BtVisibilityFileBrowser;)V

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 104
    if-nez v2, :cond_72

    .line 105
    invoke-virtual {p0}, Lcom/sec/android/app/myfiles/BtVisibilityFileBrowser;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 106
    .local v0, bundle:Landroid/os/Bundle;
    const-string v3, "uri"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 108
    .end local v0           #bundle:Landroid/os/Bundle;
    :cond_72
    iput-object v2, p0, Lcom/sec/android/app/myfiles/BtVisibilityFileBrowser;->currentPreudoFolder:Ljava/lang/String;

    .line 110
    new-instance v3, Lcom/sec/android/app/myfiles/FileInfoStore;

    invoke-direct {v3, p0}, Lcom/sec/android/app/myfiles/FileInfoStore;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/sec/android/app/myfiles/BtVisibilityFileBrowser;->mInfoStore:Lcom/sec/android/app/myfiles/FileInfoStore;

    .line 111
    iget-object v3, p0, Lcom/sec/android/app/myfiles/BtVisibilityFileBrowser;->mInfoStore:Lcom/sec/android/app/myfiles/FileInfoStore;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sec/android/app/myfiles/FileInfoStore;->open(Ljava/lang/String;)Lcom/sec/android/app/myfiles/FileInfoStore;

    .line 113
    iput-object v2, p0, Lcom/sec/android/app/myfiles/BtVisibilityFileBrowser;->currentPreudoFolder:Ljava/lang/String;

    .line 115
    const v3, 0x102000a

    invoke-virtual {p0, v3}, Lcom/sec/android/app/myfiles/BtVisibilityFileBrowser;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ListView;

    iput-object v3, p0, Lcom/sec/android/app/myfiles/BtVisibilityFileBrowser;->mlistView:Landroid/widget/ListView;

    .line 117
    iget-object v3, p0, Lcom/sec/android/app/myfiles/BtVisibilityFileBrowser;->mlistView:Landroid/widget/ListView;

    const v4, 0x7f0c000e

    invoke-virtual {p0, v4}, Lcom/sec/android/app/myfiles/BtVisibilityFileBrowser;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 119
    iget-object v3, p0, Lcom/sec/android/app/myfiles/BtVisibilityFileBrowser;->mAdapter:Lcom/sec/android/app/myfiles/ListAdapter;

    if-nez v3, :cond_b0

    .line 120
    new-instance v3, Lcom/sec/android/app/myfiles/ListAdapter;

    iget-object v4, p0, Lcom/sec/android/app/myfiles/BtVisibilityFileBrowser;->mHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/sec/android/app/myfiles/BtVisibilityFileBrowser;->mlistView:Landroid/widget/ListView;

    invoke-direct {v3, p0, v4, v5}, Lcom/sec/android/app/myfiles/ListAdapter;-><init>(Landroid/content/Context;Landroid/os/Handler;Landroid/widget/ListView;)V

    iput-object v3, p0, Lcom/sec/android/app/myfiles/BtVisibilityFileBrowser;->mAdapter:Lcom/sec/android/app/myfiles/ListAdapter;

    .line 123
    :cond_b0
    sput-object p0, Lcom/sec/android/app/myfiles/BtVisibilityFileBrowser;->sMyThis:Lcom/sec/android/app/myfiles/BtVisibilityFileBrowser;

    .line 126
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 127
    .local v1, intentFilter:Landroid/content/IntentFilter;
    const-string v3, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 128
    const-string v3, "file"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 130
    new-instance v3, Lcom/sec/android/app/myfiles/BtVisibilityFileBrowser$2;

    invoke-direct {v3, p0}, Lcom/sec/android/app/myfiles/BtVisibilityFileBrowser$2;-><init>(Lcom/sec/android/app/myfiles/BtVisibilityFileBrowser;)V

    iput-object v3, p0, Lcom/sec/android/app/myfiles/BtVisibilityFileBrowser;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 141
    iget-object v3, p0, Lcom/sec/android/app/myfiles/BtVisibilityFileBrowser;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v3, v1}, Lcom/sec/android/app/myfiles/BtVisibilityFileBrowser;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 142
    return-void
.end method

.method protected onDestroy()V
    .registers 3

    .prologue
    .line 395
    iget-object v0, p0, Lcom/sec/android/app/myfiles/BtVisibilityFileBrowser;->mInfoStore:Lcom/sec/android/app/myfiles/FileInfoStore;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/myfiles/FileInfoStore;->close(Ljava/lang/String;)V

    .line 397
    iget-object v0, p0, Lcom/sec/android/app/myfiles/BtVisibilityFileBrowser;->mReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_19

    .line 398
    iget-object v0, p0, Lcom/sec/android/app/myfiles/BtVisibilityFileBrowser;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/myfiles/BtVisibilityFileBrowser;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 399
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/myfiles/BtVisibilityFileBrowser;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 402
    :cond_19
    invoke-super {p0}, Landroid/app/ListActivity;->onDestroy()V

    .line 403
    return-void
.end method

.method protected onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .registers 9
    .parameter "l"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 360
    invoke-super/range {p0 .. p5}, Landroid/app/ListActivity;->onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V

    .line 362
    :try_start_3
    iget-object v2, p0, Lcom/sec/android/app/myfiles/BtVisibilityFileBrowser;->directoryEntries:Ljava/util/List;

    invoke-interface {v2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/myfiles/SimpleItem;

    .line 364
    .local v1, item:Lcom/sec/android/app/myfiles/SimpleItem;
    invoke-virtual {v1}, Lcom/sec/android/app/myfiles/SimpleItem;->isSelectable()Z

    move-result v2

    if-nez v2, :cond_12

    .line 375
    .end local v1           #item:Lcom/sec/android/app/myfiles/SimpleItem;
    :cond_11
    :goto_11
    return-void

    .line 367
    .restart local v1       #item:Lcom/sec/android/app/myfiles/SimpleItem;
    :cond_12
    if-ltz p3, :cond_11

    .line 368
    invoke-virtual {v1}, Lcom/sec/android/app/myfiles/SimpleItem;->isMarked()Z

    move-result v2

    if-nez v2, :cond_2c

    const/4 v2, 0x1

    :goto_1b
    invoke-virtual {v1, v2}, Lcom/sec/android/app/myfiles/SimpleItem;->setMarked(Z)V

    .line 369
    iget-object v2, p0, Lcom/sec/android/app/myfiles/BtVisibilityFileBrowser;->mAdapter:Lcom/sec/android/app/myfiles/ListAdapter;

    invoke-virtual {v2, p3}, Lcom/sec/android/app/myfiles/ListAdapter;->updateItem(I)V

    .line 370
    invoke-direct {p0}, Lcom/sec/android/app/myfiles/BtVisibilityFileBrowser;->updateResult()V
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_26} :catch_27

    goto :goto_11

    .line 372
    .end local v1           #item:Lcom/sec/android/app/myfiles/SimpleItem;
    :catch_27
    move-exception v0

    .line 373
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_11

    .line 368
    .end local v0           #e:Ljava/lang/Exception;
    .restart local v1       #item:Lcom/sec/android/app/myfiles/SimpleItem;
    :cond_2c
    const/4 v2, 0x0

    goto :goto_1b
.end method

.method public onLongRunningActionFinished(Ljava/lang/Void;Ljava/lang/Exception;)V
    .registers 5
    .parameter "result"
    .parameter "error"

    .prologue
    .line 410
    invoke-direct {p0}, Lcom/sec/android/app/myfiles/BtVisibilityFileBrowser;->setAdapter()V

    .line 411
    const-string v0, "[MyFiles]"

    const-string v1, "BtVisivility : onLongRunningActionFinished called"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 418
    return-void
.end method

.method protected onPause()V
    .registers 1

    .prologue
    .line 387
    invoke-super {p0}, Landroid/app/ListActivity;->onPause()V

    .line 388
    return-void
.end method

.method protected onRestart()V
    .registers 1

    .prologue
    .line 406
    invoke-super {p0}, Landroid/app/ListActivity;->onRestart()V

    .line 407
    return-void
.end method

.method public onResume()V
    .registers 1

    .prologue
    .line 382
    invoke-direct {p0}, Lcom/sec/android/app/myfiles/BtVisibilityFileBrowser;->browseToSameFolder()V

    .line 383
    invoke-super {p0}, Landroid/app/ListActivity;->onResume()V

    .line 384
    return-void
.end method

.method protected onStop()V
    .registers 1

    .prologue
    .line 391
    invoke-super {p0}, Landroid/app/ListActivity;->onStop()V

    .line 392
    return-void
.end method
