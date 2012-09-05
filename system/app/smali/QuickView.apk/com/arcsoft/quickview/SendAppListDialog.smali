.class public Lcom/arcsoft/quickview/SendAppListDialog;
.super Ljava/lang/Object;
.source "SendAppListDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/arcsoft/quickview/SendAppListDialog$SendAppItem;,
        Lcom/arcsoft/quickview/SendAppListDialog$SendAppListAdapter;
    }
.end annotation


# static fields
.field private static final MMS_SEND_MSG:Ljava/lang/String; = "com.android.mms.QUICKSND"

.field private static final MMS_TO:Ljava/lang/String; = "mms_to"

.field public static final MMS_VIDEO_URI:Ljava/lang/String; = "mms_video_uri"

.field private static before_setting:Z


# instance fields
.field private final MAX_SIZE:I

.field private mContext:Landroid/content/Context;

.field private mDisplayAppList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mMimeType:Ljava/lang/String;

.field private mShareAppList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mShareInfo:Landroid/content/pm/ResolveInfo;

.field mShareListener:Landroid/content/DialogInterface$OnClickListener;

.field private onlineLockerToast:Landroid/widget/Toast;

.field private share_uri:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 35
    const/4 v0, 0x0

    sput-boolean v0, Lcom/arcsoft/quickview/SendAppListDialog;->before_setting:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    .line 56
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object v0, p0, Lcom/arcsoft/quickview/SendAppListDialog;->mShareAppList:Ljava/util/List;

    .line 31
    iput-object v0, p0, Lcom/arcsoft/quickview/SendAppListDialog;->mDisplayAppList:Ljava/util/List;

    .line 32
    iput-object v0, p0, Lcom/arcsoft/quickview/SendAppListDialog;->mContext:Landroid/content/Context;

    .line 33
    iput-object v0, p0, Lcom/arcsoft/quickview/SendAppListDialog;->mShareInfo:Landroid/content/pm/ResolveInfo;

    .line 36
    iput-object v0, p0, Lcom/arcsoft/quickview/SendAppListDialog;->share_uri:Landroid/net/Uri;

    .line 37
    iput-object v0, p0, Lcom/arcsoft/quickview/SendAppListDialog;->mMimeType:Ljava/lang/String;

    .line 39
    const/high16 v0, 0x3d09

    iput v0, p0, Lcom/arcsoft/quickview/SendAppListDialog;->MAX_SIZE:I

    .line 109
    new-instance v0, Lcom/arcsoft/quickview/SendAppListDialog$1;

    invoke-direct {v0, p0}, Lcom/arcsoft/quickview/SendAppListDialog$1;-><init>(Lcom/arcsoft/quickview/SendAppListDialog;)V

    iput-object v0, p0, Lcom/arcsoft/quickview/SendAppListDialog;->mShareListener:Landroid/content/DialogInterface$OnClickListener;

    .line 57
    iput-object p1, p0, Lcom/arcsoft/quickview/SendAppListDialog;->mContext:Landroid/content/Context;

    .line 58
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;JLandroid/net/Uri;)V
    .registers 8
    .parameter "context"
    .parameter "id"
    .parameter "uri"

    .prologue
    const/4 v0, 0x0

    .line 47
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object v0, p0, Lcom/arcsoft/quickview/SendAppListDialog;->mShareAppList:Ljava/util/List;

    .line 31
    iput-object v0, p0, Lcom/arcsoft/quickview/SendAppListDialog;->mDisplayAppList:Ljava/util/List;

    .line 32
    iput-object v0, p0, Lcom/arcsoft/quickview/SendAppListDialog;->mContext:Landroid/content/Context;

    .line 33
    iput-object v0, p0, Lcom/arcsoft/quickview/SendAppListDialog;->mShareInfo:Landroid/content/pm/ResolveInfo;

    .line 36
    iput-object v0, p0, Lcom/arcsoft/quickview/SendAppListDialog;->share_uri:Landroid/net/Uri;

    .line 37
    iput-object v0, p0, Lcom/arcsoft/quickview/SendAppListDialog;->mMimeType:Ljava/lang/String;

    .line 39
    const/high16 v0, 0x3d09

    iput v0, p0, Lcom/arcsoft/quickview/SendAppListDialog;->MAX_SIZE:I

    .line 109
    new-instance v0, Lcom/arcsoft/quickview/SendAppListDialog$1;

    invoke-direct {v0, p0}, Lcom/arcsoft/quickview/SendAppListDialog$1;-><init>(Lcom/arcsoft/quickview/SendAppListDialog;)V

    iput-object v0, p0, Lcom/arcsoft/quickview/SendAppListDialog;->mShareListener:Landroid/content/DialogInterface$OnClickListener;

    .line 48
    iput-object p1, p0, Lcom/arcsoft/quickview/SendAppListDialog;->mContext:Landroid/content/Context;

    .line 49
    iput-object p4, p0, Lcom/arcsoft/quickview/SendAppListDialog;->share_uri:Landroid/net/Uri;

    .line 51
    iget-object v0, p0, Lcom/arcsoft/quickview/SendAppListDialog;->mContext:Landroid/content/Context;

    const-string v1, "Currently unable to send your message."

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/arcsoft/quickview/SendAppListDialog;->onlineLockerToast:Landroid/widget/Toast;

    .line 53
    return-void
.end method

.method static synthetic access$000(Lcom/arcsoft/quickview/SendAppListDialog;)Ljava/util/List;
    .registers 2
    .parameter "x0"

    .prologue
    .line 28
    iget-object v0, p0, Lcom/arcsoft/quickview/SendAppListDialog;->mDisplayAppList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$100(Lcom/arcsoft/quickview/SendAppListDialog;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/arcsoft/quickview/SendAppListDialog;->sendToKodak()Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/arcsoft/quickview/SendAppListDialog;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/arcsoft/quickview/SendAppListDialog;->sendToSnapfish()Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/arcsoft/quickview/SendAppListDialog;)Ljava/util/List;
    .registers 2
    .parameter "x0"

    .prologue
    .line 28
    iget-object v0, p0, Lcom/arcsoft/quickview/SendAppListDialog;->mShareAppList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$402(Lcom/arcsoft/quickview/SendAppListDialog;Landroid/content/pm/ResolveInfo;)Landroid/content/pm/ResolveInfo;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 28
    iput-object p1, p0, Lcom/arcsoft/quickview/SendAppListDialog;->mShareInfo:Landroid/content/pm/ResolveInfo;

    return-object p1
.end method

.method static synthetic access$500(Lcom/arcsoft/quickview/SendAppListDialog;Landroid/content/pm/ResolveInfo;Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 28
    invoke-direct {p0, p1, p2}, Lcom/arcsoft/quickview/SendAppListDialog;->getSetOfMimeType(Landroid/content/pm/ResolveInfo;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/arcsoft/quickview/SendAppListDialog;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/arcsoft/quickview/SendAppListDialog;->singleSend()V

    return-void
.end method

.method static synthetic access$700(Lcom/arcsoft/quickview/SendAppListDialog;)Landroid/content/Context;
    .registers 2
    .parameter "x0"

    .prologue
    .line 28
    iget-object v0, p0, Lcom/arcsoft/quickview/SendAppListDialog;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private addList(Ljava/util/List;)V
    .registers 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 217
    .local p1, listResolveInfo:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    iget-object v1, p0, Lcom/arcsoft/quickview/SendAppListDialog;->mShareAppList:Ljava/util/List;

    if-nez v1, :cond_7

    .line 219
    iput-object p1, p0, Lcom/arcsoft/quickview/SendAppListDialog;->mShareAppList:Ljava/util/List;

    .line 225
    :cond_6
    return-void

    .line 223
    :cond_7
    const/4 v0, 0x0

    .local v0, i:I
    :goto_8
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_6

    .line 224
    iget-object v1, p0, Lcom/arcsoft/quickview/SendAppListDialog;->mShareAppList:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 223
    add-int/lit8 v0, v0, 0x1

    goto :goto_8
.end method

.method private getFileSize()J
    .registers 12

    .prologue
    .line 329
    const-wide/16 v8, 0x0

    .line 333
    .local v8, fileSize:J
    iget-object v0, p0, Lcom/arcsoft/quickview/SendAppListDialog;->share_uri:Landroid/net/Uri;

    if-nez v0, :cond_10

    .line 335
    const-string v0, "SendAppListDialog"

    const-string v1, "getFileSize() - video_uri is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    const-wide/16 v0, 0x0

    .line 365
    :goto_f
    return-wide v0

    .line 342
    :cond_10
    :try_start_10
    iget-object v0, p0, Lcom/arcsoft/quickview/SendAppListDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/arcsoft/quickview/SendAppListDialog;->share_uri:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1f
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_10 .. :try_end_1f} :catch_3c

    move-result-object v6

    .line 344
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_35

    .line 348
    :try_start_22
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_32

    .line 350
    const-string v0, "_size"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v10

    .line 351
    .local v10, idx:I
    invoke-interface {v6, v10}, Landroid/database/Cursor;->getLong(I)J
    :try_end_31
    .catchall {:try_start_22 .. :try_end_31} :catchall_37

    move-result-wide v8

    .line 356
    .end local v10           #idx:I
    :cond_32
    :try_start_32
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .end local v6           #cursor:Landroid/database/Cursor;
    :cond_35
    :goto_35
    move-wide v0, v8

    .line 365
    goto :goto_f

    .line 356
    .restart local v6       #cursor:Landroid/database/Cursor;
    :catchall_37
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
    :try_end_3c
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_32 .. :try_end_3c} :catch_3c

    .line 360
    .end local v6           #cursor:Landroid/database/Cursor;
    :catch_3c
    move-exception v7

    .line 362
    .local v7, e:Landroid/database/sqlite/SQLiteException;
    const-string v0, "SendAppListDialog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SQLiteException occured  14 :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_35
.end method

.method private getResolveInfo(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .registers 6
    .parameter "action"
    .parameter "dataType"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 229
    iget-object v2, p0, Lcom/arcsoft/quickview/SendAppListDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 231
    .local v1, mPackageManager:Landroid/content/pm/PackageManager;
    const/4 v0, 0x0

    .line 233
    .local v0, intent:Landroid/content/Intent;
    new-instance v0, Landroid/content/Intent;

    .end local v0           #intent:Landroid/content/Intent;
    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 234
    .restart local v0       #intent:Landroid/content/Intent;
    invoke-virtual {v0, p2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 235
    const-string v2, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 237
    const v2, 0x10060

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    return-object v2
.end method

.method private getSetOfMimeType(Landroid/content/pm/ResolveInfo;Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .parameter "resolveInfo"
    .parameter "mimeType"

    .prologue
    .line 160
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget-object v1, p1, Landroid/content/pm/ResolveInfo;->filter:Landroid/content/IntentFilter;

    invoke-virtual {v1}, Landroid/content/IntentFilter;->countDataTypes()I

    move-result v1

    if-ge v0, v1, :cond_2d

    .line 162
    if-nez p2, :cond_18

    .line 164
    iget-object v1, p1, Landroid/content/pm/ResolveInfo;->filter:Landroid/content/IntentFilter;

    invoke-virtual {v1, v0}, Landroid/content/IntentFilter;->getDataType(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/arcsoft/quickview/SendAppListDialog;->makeMIMEType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 160
    :goto_15
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 168
    :cond_18
    const-string v1, ";"

    invoke-virtual {p2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 169
    iget-object v1, p1, Landroid/content/pm/ResolveInfo;->filter:Landroid/content/IntentFilter;

    invoke-virtual {v1, v0}, Landroid/content/IntentFilter;->getDataType(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/arcsoft/quickview/SendAppListDialog;->makeMIMEType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    goto :goto_15

    .line 173
    :cond_2d
    return-object p2
.end method

.method private isExistedApp(Ljava/util/List;Landroid/content/pm/ResolveInfo;)Z
    .registers 7
    .parameter
    .parameter "info"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;",
            "Landroid/content/pm/ResolveInfo;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 259
    .local p1, list:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_20

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    .line 261
    .local v1, resolveInfo:Landroid/content/pm/ResolveInfo;
    iget-object v2, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    iget-object v3, p2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 262
    const/4 v2, 0x1

    .line 264
    .end local v1           #resolveInfo:Landroid/content/pm/ResolveInfo;
    :goto_1f
    return v2

    :cond_20
    const/4 v2, 0x0

    goto :goto_1f
.end method

.method private makeMIMEType(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .parameter "dataType"

    .prologue
    .line 179
    const/16 v0, 0x2f

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-gez v0, :cond_e

    .line 181
    const-string v0, "/*"

    invoke-virtual {p1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 183
    .end local p1
    :cond_e
    return-object p1
.end method

.method private sendToKodak()Z
    .registers 4

    .prologue
    .line 370
    const-string v1, "SendAppListDialog"

    const-string v2, "Send Kodak"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.mms.QUICKSND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 372
    .local v0, broadcastMmsSendIntent:Landroid/content/Intent;
    const-string v1, "mms_to"

    const-string v2, "save@kodakgallery.com"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 373
    iget-object v1, p0, Lcom/arcsoft/quickview/SendAppListDialog;->mMimeType:Ljava/lang/String;

    const-string v2, "image"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2d

    .line 375
    const-string v1, "mms_image_uri"

    iget-object v2, p0, Lcom/arcsoft/quickview/SendAppListDialog;->share_uri:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 386
    :goto_26
    iget-object v1, p0, Lcom/arcsoft/quickview/SendAppListDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 388
    const/4 v1, 0x1

    return v1

    .line 377
    :cond_2d
    iget-object v1, p0, Lcom/arcsoft/quickview/SendAppListDialog;->mMimeType:Ljava/lang/String;

    const-string v2, "video"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3f

    .line 379
    const-string v1, "mms_video_uri"

    iget-object v2, p0, Lcom/arcsoft/quickview/SendAppListDialog;->share_uri:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    goto :goto_26

    .line 383
    :cond_3f
    const-string v1, "SendAppListDialog"

    const-string v2, "Kodak gallery MimeType Error  "

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_26
.end method

.method private sendToSnapfish()Z
    .registers 4

    .prologue
    .line 392
    const-string v1, "SendAppListDialog"

    const-string v2, "Send Snapfish"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 393
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.mms.QUICKSND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 394
    .local v0, broadcastMmsSendIntent:Landroid/content/Intent;
    const-string v1, "mms_to"

    const-string v2, "save@mysnapfish.com"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 395
    iget-object v1, p0, Lcom/arcsoft/quickview/SendAppListDialog;->mMimeType:Ljava/lang/String;

    const-string v2, "image"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2d

    .line 397
    const-string v1, "mms_image_uri"

    iget-object v2, p0, Lcom/arcsoft/quickview/SendAppListDialog;->share_uri:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 408
    :goto_26
    iget-object v1, p0, Lcom/arcsoft/quickview/SendAppListDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 409
    const/4 v1, 0x1

    return v1

    .line 399
    :cond_2d
    iget-object v1, p0, Lcom/arcsoft/quickview/SendAppListDialog;->mMimeType:Ljava/lang/String;

    const-string v2, "video"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3f

    .line 401
    const-string v1, "mms_video_uri"

    iget-object v2, p0, Lcom/arcsoft/quickview/SendAppListDialog;->share_uri:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    goto :goto_26

    .line 405
    :cond_3f
    const-string v1, "SendAppListDialog"

    const-string v2, "Snapfish MimeType Error  "

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_26
.end method

.method private setDisplayedList()V
    .registers 8

    .prologue
    .line 242
    const-string v1, "com.google.android.apps.uploader.youtube.YouTubeSettingsActivity"

    .line 243
    .local v1, mPackageName:Ljava/lang/String;
    iget-object v2, p0, Lcom/arcsoft/quickview/SendAppListDialog;->share_uri:Landroid/net/Uri;

    .line 245
    .local v2, videoUri:Landroid/net/Uri;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/arcsoft/quickview/SendAppListDialog;->mDisplayAppList:Ljava/util/List;

    .line 247
    const/4 v0, 0x0

    .local v0, i:I
    :goto_c
    iget-object v3, p0, Lcom/arcsoft/quickview/SendAppListDialog;->mShareAppList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_4f

    .line 249
    iget-object v4, p0, Lcom/arcsoft/quickview/SendAppListDialog;->mDisplayAppList:Ljava/util/List;

    iget-object v3, p0, Lcom/arcsoft/quickview/SendAppListDialog;->mShareAppList:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    invoke-direct {p0, v4, v3}, Lcom/arcsoft/quickview/SendAppListDialog;->isExistedApp(Ljava/util/List;Landroid/content/pm/ResolveInfo;)Z

    move-result v3

    if-nez v3, :cond_4c

    .line 251
    iget-object v3, p0, Lcom/arcsoft/quickview/SendAppListDialog;->mShareAppList:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    iget-object v3, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_41

    invoke-direct {p0}, Lcom/arcsoft/quickview/SendAppListDialog;->getFileSize()J

    move-result-wide v3

    const-wide/32 v5, 0x3d090000

    cmp-long v3, v3, v5

    if-gtz v3, :cond_4c

    .line 252
    :cond_41
    iget-object v3, p0, Lcom/arcsoft/quickview/SendAppListDialog;->mDisplayAppList:Ljava/util/List;

    iget-object v4, p0, Lcom/arcsoft/quickview/SendAppListDialog;->mShareAppList:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 247
    :cond_4c
    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    .line 255
    :cond_4f
    return-void
.end method

.method private setSendIntentList(Z)V
    .registers 4
    .parameter "isVideo"

    .prologue
    .line 204
    if-eqz p1, :cond_20

    .line 205
    const-string v0, "android.intent.action.SEND"

    const-string v1, "video/*"

    invoke-direct {p0, v0, v1}, Lcom/arcsoft/quickview/SendAppListDialog;->getResolveInfo(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/arcsoft/quickview/SendAppListDialog;->addList(Ljava/util/List;)V

    .line 209
    :goto_d
    iget-object v0, p0, Lcom/arcsoft/quickview/SendAppListDialog;->mShareAppList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1c

    .line 210
    const-string v0, "SendAppListDialog"

    const-string v1, "setSendIntentList() - send app list count zero."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    :cond_1c
    invoke-direct {p0}, Lcom/arcsoft/quickview/SendAppListDialog;->setDisplayedList()V

    .line 213
    return-void

    .line 207
    :cond_20
    const-string v0, "android.intent.action.SEND"

    const-string v1, "image/*"

    invoke-direct {p0, v0, v1}, Lcom/arcsoft/quickview/SendAppListDialog;->getResolveInfo(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/arcsoft/quickview/SendAppListDialog;->addList(Ljava/util/List;)V

    goto :goto_d
.end method

.method private singleSend()V
    .registers 6

    .prologue
    .line 189
    iget-object v1, p0, Lcom/arcsoft/quickview/SendAppListDialog;->share_uri:Landroid/net/Uri;

    .line 191
    .local v1, uri:Landroid/net/Uri;
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.SEND"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 192
    .local v0, shareIntent:Landroid/content/Intent;
    iget-object v2, p0, Lcom/arcsoft/quickview/SendAppListDialog;->mMimeType:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 194
    const-string v2, "android.intent.extra.STREAM"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 196
    new-instance v2, Landroid/content/ComponentName;

    iget-object v3, p0, Lcom/arcsoft/quickview/SendAppListDialog;->mShareInfo:Landroid/content/pm/ResolveInfo;

    iget-object v3, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v4, p0, Lcom/arcsoft/quickview/SendAppListDialog;->mShareInfo:Landroid/content/pm/ResolveInfo;

    iget-object v4, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 198
    iget-object v2, p0, Lcom/arcsoft/quickview/SendAppListDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 199
    return-void
.end method


# virtual methods
.method public showSendAppListDialog(ZLandroid/net/Uri;Ljava/lang/String;)V
    .registers 16
    .parameter "isVideo"
    .parameter "uri"
    .parameter "MimeType"

    .prologue
    const/16 v11, 0x400

    .line 64
    iput-object p3, p0, Lcom/arcsoft/quickview/SendAppListDialog;->mMimeType:Ljava/lang/String;

    .line 65
    iput-object p2, p0, Lcom/arcsoft/quickview/SendAppListDialog;->share_uri:Landroid/net/Uri;

    .line 67
    invoke-direct {p0, p1}, Lcom/arcsoft/quickview/SendAppListDialog;->setSendIntentList(Z)V

    .line 69
    new-instance v7, Landroid/app/AlertDialog$Builder;

    iget-object v8, p0, Lcom/arcsoft/quickview/SendAppListDialog;->mContext:Landroid/content/Context;

    invoke-direct {v7, v8}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 73
    .local v7, sendAppListAlertDialog:Landroid/app/AlertDialog$Builder;
    iget-object v8, p0, Lcom/arcsoft/quickview/SendAppListDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 75
    .local v4, pm:Landroid/content/pm/PackageManager;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 77
    .local v0, arrayList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/arcsoft/quickview/SendAppListDialog$SendAppItem;>;"
    const v8, 0x7f040002

    invoke-virtual {v7, v8}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 79
    const/4 v2, 0x0

    .local v2, i:I
    :goto_22
    iget-object v8, p0, Lcom/arcsoft/quickview/SendAppListDialog;->mDisplayAppList:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-ge v2, v8, :cond_47

    .line 81
    iget-object v8, p0, Lcom/arcsoft/quickview/SendAppListDialog;->mDisplayAppList:Ljava/util/List;

    invoke-interface {v8, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ResolveInfo;

    .line 82
    .local v5, resolveInfo:Landroid/content/pm/ResolveInfo;
    new-instance v9, Lcom/arcsoft/quickview/SendAppListDialog$SendAppItem;

    invoke-virtual {v5, v4}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    invoke-virtual {v5, v4}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-direct {v9, p0, v10, v8}, Lcom/arcsoft/quickview/SendAppListDialog$SendAppItem;-><init>(Lcom/arcsoft/quickview/SendAppListDialog;Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 79
    add-int/lit8 v2, v2, 0x1

    goto :goto_22

    .line 86
    .end local v5           #resolveInfo:Landroid/content/pm/ResolveInfo;
    :cond_47
    iget-object v8, p0, Lcom/arcsoft/quickview/SendAppListDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f020010

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 87
    .local v3, img:Landroid/graphics/drawable/Drawable;
    new-instance v8, Lcom/arcsoft/quickview/SendAppListDialog$SendAppItem;

    iget-object v9, p0, Lcom/arcsoft/quickview/SendAppListDialog;->mContext:Landroid/content/Context;

    const v10, 0x7f040021

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, p0, v3, v9}, Lcom/arcsoft/quickview/SendAppListDialog$SendAppItem;-><init>(Lcom/arcsoft/quickview/SendAppListDialog;Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 89
    iget-object v8, p0, Lcom/arcsoft/quickview/SendAppListDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f020011

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 90
    new-instance v8, Lcom/arcsoft/quickview/SendAppListDialog$SendAppItem;

    iget-object v9, p0, Lcom/arcsoft/quickview/SendAppListDialog;->mContext:Landroid/content/Context;

    const v10, 0x7f040022

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, p0, v3, v9}, Lcom/arcsoft/quickview/SendAppListDialog$SendAppItem;-><init>(Lcom/arcsoft/quickview/SendAppListDialog;Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 93
    new-instance v6, Lcom/arcsoft/quickview/SendAppListDialog$SendAppListAdapter;

    iget-object v8, p0, Lcom/arcsoft/quickview/SendAppListDialog;->mContext:Landroid/content/Context;

    invoke-direct {v6, p0, v8, v0}, Lcom/arcsoft/quickview/SendAppListDialog$SendAppListAdapter;-><init>(Lcom/arcsoft/quickview/SendAppListDialog;Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 95
    .local v6, sendAppListAdapter:Lcom/arcsoft/quickview/SendAppListDialog$SendAppListAdapter;
    iget-object v8, p0, Lcom/arcsoft/quickview/SendAppListDialog;->mShareListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v7, v6, v8}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 101
    invoke-virtual {v7}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 102
    .local v1, dlg:Landroid/app/AlertDialog;
    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v8

    invoke-virtual {v8, v11, v11}, Landroid/view/Window;->setFlags(II)V

    .line 105
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 107
    return-void
.end method
