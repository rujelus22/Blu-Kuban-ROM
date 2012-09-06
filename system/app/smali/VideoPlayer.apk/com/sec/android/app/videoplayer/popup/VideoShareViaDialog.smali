.class public Lcom/sec/android/app/videoplayer/popup/VideoShareViaDialog;
.super Lcom/sec/android/app/videoplayer/popup/VideoBaseDialog;
.source "VideoShareViaDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/videoplayer/popup/VideoShareViaDialog$SendAppItem;,
        Lcom/sec/android/app/videoplayer/popup/VideoShareViaDialog$SendAppListAdapter;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final MAX_SIZE:I = 0x3d090000

.field private static final TAG:Ljava/lang/String; = "SendAppListDialog"


# instance fields
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


# direct methods
.method protected constructor <init>(Landroid/content/Context;)V
    .registers 2
    .parameter "context"

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/sec/android/app/videoplayer/popup/VideoBaseDialog;-><init>(Landroid/content/Context;)V

    .line 44
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/videoplayer/popup/VideoShareViaDialog;)Ljava/util/List;
    .registers 2
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/popup/VideoShareViaDialog;->mDisplayAppList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/android/app/videoplayer/popup/VideoShareViaDialog;)Ljava/util/List;
    .registers 2
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/popup/VideoShareViaDialog;->mShareAppList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/android/app/videoplayer/popup/VideoShareViaDialog;)Landroid/content/pm/ResolveInfo;
    .registers 2
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/popup/VideoShareViaDialog;->mShareInfo:Landroid/content/pm/ResolveInfo;

    return-object v0
.end method

.method static synthetic access$202(Lcom/sec/android/app/videoplayer/popup/VideoShareViaDialog;Landroid/content/pm/ResolveInfo;)Landroid/content/pm/ResolveInfo;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 34
    iput-object p1, p0, Lcom/sec/android/app/videoplayer/popup/VideoShareViaDialog;->mShareInfo:Landroid/content/pm/ResolveInfo;

    return-object p1
.end method

.method static synthetic access$300(Lcom/sec/android/app/videoplayer/popup/VideoShareViaDialog;Landroid/content/pm/ResolveInfo;Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 34
    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/videoplayer/popup/VideoShareViaDialog;->getSetOfMimeType(Landroid/content/pm/ResolveInfo;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/sec/android/app/videoplayer/popup/VideoShareViaDialog;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/sec/android/app/videoplayer/popup/VideoShareViaDialog;->singleSend()V

    return-void
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
    .line 208
    .local p1, listResolveInfo:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    iget-object v1, p0, Lcom/sec/android/app/videoplayer/popup/VideoShareViaDialog;->mShareAppList:Ljava/util/List;

    if-nez v1, :cond_7

    .line 209
    iput-object p1, p0, Lcom/sec/android/app/videoplayer/popup/VideoShareViaDialog;->mShareAppList:Ljava/util/List;

    .line 215
    :cond_6
    return-void

    .line 213
    :cond_7
    const/4 v0, 0x0

    .local v0, i:I
    :goto_8
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_6

    .line 214
    iget-object v1, p0, Lcom/sec/android/app/videoplayer/popup/VideoShareViaDialog;->mShareAppList:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 213
    add-int/lit8 v0, v0, 0x1

    goto :goto_8
.end method

.method private getFileSize()J
    .registers 9

    .prologue
    const-wide/16 v4, 0x0

    .line 301
    const-wide/16 v0, 0x0

    .line 302
    .local v0, size:J
    invoke-static {}, Lcom/sec/android/app/videoplayer/util/VideoUtil;->getCurPlayingId()J

    move-result-wide v2

    .line 304
    .local v2, videoId:J
    sget v6, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mSchemeType:I

    const/16 v7, 0x1d

    if-eq v6, v7, :cond_20

    sget v6, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mSchemeType:I

    const/16 v7, 0x1c

    if-eq v6, v7, :cond_20

    sget v6, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mSchemeType:I

    const/16 v7, 0x1b

    if-eq v6, v7, :cond_20

    sget v6, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mSchemeType:I

    const/16 v7, 0x1f

    if-ne v6, v7, :cond_28

    .line 308
    :cond_20
    const-string v6, "SendAppListDialog"

    const-string v7, "getFileSize() - videoUri is null"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    :goto_27
    return-wide v4

    .line 311
    :cond_28
    cmp-long v4, v2, v4

    if-lez v4, :cond_32

    .line 312
    sget-object v4, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mVideoDB:Lcom/sec/android/app/videoplayer/db/VideoDB;

    invoke-virtual {v4, v2, v3}, Lcom/sec/android/app/videoplayer/db/VideoDB;->getSizebyId(J)J

    move-result-wide v0

    :cond_32
    move-wide v4, v0

    .line 314
    goto :goto_27
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
    .line 218
    iget-object v2, p0, Lcom/sec/android/app/videoplayer/popup/VideoBaseDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 220
    .local v1, mPackageManager:Landroid/content/pm/PackageManager;
    const/4 v0, 0x0

    .line 222
    .local v0, intent:Landroid/content/Intent;
    new-instance v0, Landroid/content/Intent;

    .end local v0           #intent:Landroid/content/Intent;
    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 223
    .restart local v0       #intent:Landroid/content/Intent;
    invoke-virtual {v0, p2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 224
    const-string v2, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 226
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
    .line 118
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget-object v1, p1, Landroid/content/pm/ResolveInfo;->filter:Landroid/content/IntentFilter;

    invoke-virtual {v1}, Landroid/content/IntentFilter;->countDataTypes()I

    move-result v1

    if-ge v0, v1, :cond_2d

    .line 119
    if-nez p2, :cond_18

    .line 120
    iget-object v1, p1, Landroid/content/pm/ResolveInfo;->filter:Landroid/content/IntentFilter;

    invoke-virtual {v1, v0}, Landroid/content/IntentFilter;->getDataType(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/sec/android/app/videoplayer/popup/VideoShareViaDialog;->makeMIMEType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 118
    :goto_15
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 122
    :cond_18
    const-string v1, ";"

    invoke-virtual {p2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 123
    iget-object v1, p1, Landroid/content/pm/ResolveInfo;->filter:Landroid/content/IntentFilter;

    invoke-virtual {v1, v0}, Landroid/content/IntentFilter;->getDataType(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/sec/android/app/videoplayer/popup/VideoShareViaDialog;->makeMIMEType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    goto :goto_15

    .line 127
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
    .line 243
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

    .line 244
    .local v1, resolveInfo:Landroid/content/pm/ResolveInfo;
    iget-object v2, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    iget-object v3, p2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 245
    const/4 v2, 0x1

    .line 247
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
    .line 131
    const/16 v0, 0x2f

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-gez v0, :cond_e

    .line 132
    const-string v0, "/*"

    invoke-virtual {p1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 134
    .end local p1
    :cond_e
    return-object p1
.end method

.method private setDisplayedList()V
    .registers 7

    .prologue
    .line 231
    const-string v1, "com.google.android.apps.uploader.youtube.YouTubeSettingsActivity"

    .line 232
    .local v1, mPackageName:Ljava/lang/String;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/sec/android/app/videoplayer/popup/VideoShareViaDialog;->mDisplayAppList:Ljava/util/List;

    .line 234
    const/4 v0, 0x0

    .local v0, i:I
    :goto_a
    iget-object v2, p0, Lcom/sec/android/app/videoplayer/popup/VideoShareViaDialog;->mShareAppList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_4d

    .line 235
    iget-object v3, p0, Lcom/sec/android/app/videoplayer/popup/VideoShareViaDialog;->mDisplayAppList:Ljava/util/List;

    iget-object v2, p0, Lcom/sec/android/app/videoplayer/popup/VideoShareViaDialog;->mShareAppList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    invoke-direct {p0, v3, v2}, Lcom/sec/android/app/videoplayer/popup/VideoShareViaDialog;->isExistedApp(Ljava/util/List;Landroid/content/pm/ResolveInfo;)Z

    move-result v2

    if-nez v2, :cond_4a

    .line 236
    iget-object v2, p0, Lcom/sec/android/app/videoplayer/popup/VideoShareViaDialog;->mShareAppList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3f

    invoke-direct {p0}, Lcom/sec/android/app/videoplayer/popup/VideoShareViaDialog;->getFileSize()J

    move-result-wide v2

    const-wide/32 v4, 0x3d090000

    cmp-long v2, v2, v4

    if-gtz v2, :cond_4a

    .line 237
    :cond_3f
    iget-object v2, p0, Lcom/sec/android/app/videoplayer/popup/VideoShareViaDialog;->mDisplayAppList:Ljava/util/List;

    iget-object v3, p0, Lcom/sec/android/app/videoplayer/popup/VideoShareViaDialog;->mShareAppList:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 234
    :cond_4a
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 240
    :cond_4d
    return-void
.end method

.method private setSendIntentList()V
    .registers 3

    .prologue
    .line 199
    const-string v0, "android.intent.action.SEND"

    const-string v1, "video/*"

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/videoplayer/popup/VideoShareViaDialog;->getResolveInfo(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/videoplayer/popup/VideoShareViaDialog;->addList(Ljava/util/List;)V

    .line 201
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/popup/VideoShareViaDialog;->mShareAppList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 202
    const-string v0, "SendAppListDialog"

    const-string v1, "setSendIntentList() - send app list count zero."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    :cond_1a
    invoke-direct {p0}, Lcom/sec/android/app/videoplayer/popup/VideoShareViaDialog;->setDisplayedList()V

    .line 205
    return-void
.end method

.method private singleSend()V
    .registers 10

    .prologue
    .line 138
    const/4 v5, 0x0

    .line 139
    .local v5, videoUri:Ljava/lang/String;
    const-wide/16 v3, 0x0

    .line 140
    .local v3, videoId:J
    const/4 v2, 0x0

    .line 142
    .local v2, uri:Landroid/net/Uri;
    invoke-static {}, Lcom/sec/android/app/videoplayer/util/VideoUtil;->getCurPlayingId()J

    move-result-wide v3

    .line 143
    invoke-static {}, Lcom/sec/android/app/videoplayer/util/VideoUtil;->getCurPlayingUri()Ljava/lang/String;

    move-result-object v5

    .line 145
    if-nez v5, :cond_27

    .line 146
    const-string v6, "SendAppListDialog"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "videoUri is null : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    :cond_26
    :goto_26
    return-void

    .line 150
    :cond_27
    const-wide/16 v6, 0x0

    cmp-long v6, v3, v6

    if-gtz v6, :cond_46

    .line 151
    const-string v6, "SendAppListDialog"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "videoId is invalid : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_26

    .line 154
    :cond_46
    sget v6, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mSchemeType:I

    const/16 v7, 0x14

    if-ne v6, v7, :cond_f8

    .line 155
    sget-object v6, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-static {v6, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    .line 168
    :goto_52
    const-string v6, "SendAppListDialog"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "singleSend uri: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_26

    .line 173
    new-instance v1, Landroid/content/Intent;

    const-string v6, "android.intent.action.SEND"

    invoke-direct {v1, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 174
    .local v1, shareIntent:Landroid/content/Intent;
    sget-object v6, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mVideoDB:Lcom/sec/android/app/videoplayer/db/VideoDB;

    invoke-virtual {v6, v3, v4}, Lcom/sec/android/app/videoplayer/db/VideoDB;->getMimeTypebyId(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 175
    const-string v6, "android.intent.extra.STREAM"

    invoke-virtual {v1, v6, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 176
    const-string v6, "res_pos"

    sget-wide v7, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mPositionWhenPaused:J

    invoke-virtual {v1, v6, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 177
    new-instance v6, Landroid/content/ComponentName;

    iget-object v7, p0, Lcom/sec/android/app/videoplayer/popup/VideoShareViaDialog;->mShareInfo:Landroid/content/pm/ResolveInfo;

    iget-object v7, v7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v8, p0, Lcom/sec/android/app/videoplayer/popup/VideoShareViaDialog;->mShareInfo:Landroid/content/pm/ResolveInfo;

    iget-object v8, v8, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v6, v7, v8}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v6}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 180
    :try_start_a4
    iget-object v6, p0, Lcom/sec/android/app/videoplayer/popup/VideoBaseDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 181
    invoke-static {}, Lcom/sec/android/app/videoplayer/util/VideoUtil;->getWasPlayingWhenPaused()Z

    move-result v6

    if-eqz v6, :cond_132

    .line 182
    invoke-static {}, Lcom/sec/android/app/videoplayer/popup/VideoDialog;->getInstance()Lcom/sec/android/app/videoplayer/popup/VideoDialog;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/app/videoplayer/popup/VideoDialog;->clearAllDialog()V
    :try_end_b6
    .catch Landroid/content/ActivityNotFoundException; {:try_start_a4 .. :try_end_b6} :catch_db

    .line 184
    :try_start_b6
    sget-object v6, Lcom/sec/android/app/videoplayer/util/VideoUtil;->sService:Lcom/sec/android/app/videoplayer/service/IMoviePlaybackService;

    invoke-interface {v6}, Lcom/sec/android/app/videoplayer/service/IMoviePlaybackService;->stop()V
    :try_end_bb
    .catch Landroid/os/RemoteException; {:try_start_b6 .. :try_end_bb} :catch_bd
    .catch Landroid/content/ActivityNotFoundException; {:try_start_b6 .. :try_end_bb} :catch_db

    goto/16 :goto_26

    .line 185
    :catch_bd
    move-exception v0

    .line 186
    .local v0, e:Landroid/os/RemoteException;
    :try_start_be
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 187
    const-string v6, "SendAppListDialog"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "singleSend() - e:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d9
    .catch Landroid/content/ActivityNotFoundException; {:try_start_be .. :try_end_d9} :catch_db

    goto/16 :goto_26

    .line 192
    .end local v0           #e:Landroid/os/RemoteException;
    :catch_db
    move-exception v0

    .line 193
    .local v0, e:Landroid/content/ActivityNotFoundException;
    const-string v6, "SendAppListDialog"

    const-string v7, "singleSend() - activity not found!"

    invoke-static {v6, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 194
    iget-object v6, p0, Lcom/sec/android/app/videoplayer/popup/VideoBaseDialog;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/sec/android/app/videoplayer/popup/VideoBaseDialog;->mContext:Landroid/content/Context;

    const v8, 0x7f080010

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    goto/16 :goto_26

    .line 156
    .end local v0           #e:Landroid/content/ActivityNotFoundException;
    .end local v1           #shareIntent:Landroid/content/Intent;
    :cond_f8
    sget v6, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mSchemeType:I

    const/16 v7, 0x15

    if-eq v6, v7, :cond_10a

    sget v6, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mSchemeType:I

    const/16 v7, 0x19

    if-eq v6, v7, :cond_10a

    sget v6, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mSchemeType:I

    const/16 v7, 0x17

    if-ne v6, v7, :cond_112

    .line 159
    :cond_10a
    sget-object v6, Landroid/provider/MediaStore$Video$Media;->INTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-static {v6, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    goto/16 :goto_52

    .line 160
    :cond_112
    sget v6, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mSchemeType:I

    const/16 v7, 0x16

    if-eq v6, v7, :cond_124

    sget v6, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mSchemeType:I

    const/16 v7, 0x1a

    if-eq v6, v7, :cond_124

    sget v6, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mSchemeType:I

    const/16 v7, 0x18

    if-ne v6, v7, :cond_12c

    .line 163
    :cond_124
    sget-object v6, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-static {v6, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    goto/16 :goto_52

    .line 165
    :cond_12c
    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    goto/16 :goto_52

    .line 190
    .restart local v1       #shareIntent:Landroid/content/Intent;
    :cond_132
    :try_start_132
    invoke-static {}, Lcom/sec/android/app/videoplayer/popup/VideoDialog;->getInstance()Lcom/sec/android/app/videoplayer/popup/VideoDialog;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/app/videoplayer/popup/VideoDialog;->returnToPrevDialog()V
    :try_end_139
    .catch Landroid/content/ActivityNotFoundException; {:try_start_132 .. :try_end_139} :catch_db

    goto/16 :goto_26
.end method


# virtual methods
.method protected bridge synthetic createAdapter()Landroid/widget/ListAdapter;
    .registers 2

    .prologue
    .line 34
    invoke-virtual {p0}, Lcom/sec/android/app/videoplayer/popup/VideoShareViaDialog;->createAdapter()Lcom/sec/android/app/videoplayer/popup/VideoShareViaDialog$SendAppListAdapter;

    move-result-object v0

    return-object v0
.end method

.method protected createAdapter()Lcom/sec/android/app/videoplayer/popup/VideoShareViaDialog$SendAppListAdapter;
    .registers 8

    .prologue
    .line 56
    iget-object v4, p0, Lcom/sec/android/app/videoplayer/popup/VideoBaseDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 57
    .local v2, pm:Landroid/content/pm/PackageManager;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 59
    .local v0, arrayList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/app/videoplayer/popup/VideoShareViaDialog$SendAppItem;>;"
    invoke-direct {p0}, Lcom/sec/android/app/videoplayer/popup/VideoShareViaDialog;->setSendIntentList()V

    .line 61
    const/4 v1, 0x0

    .local v1, i:I
    :goto_f
    iget-object v4, p0, Lcom/sec/android/app/videoplayer/popup/VideoShareViaDialog;->mDisplayAppList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_34

    .line 62
    iget-object v4, p0, Lcom/sec/android/app/videoplayer/popup/VideoShareViaDialog;->mDisplayAppList:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    .line 63
    .local v3, resolveInfo:Landroid/content/pm/ResolveInfo;
    new-instance v5, Lcom/sec/android/app/videoplayer/popup/VideoShareViaDialog$SendAppItem;

    invoke-virtual {v3, v2}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v3, v2}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-direct {v5, p0, v6, v4}, Lcom/sec/android/app/videoplayer/popup/VideoShareViaDialog$SendAppItem;-><init>(Lcom/sec/android/app/videoplayer/popup/VideoShareViaDialog;Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 61
    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    .line 65
    .end local v3           #resolveInfo:Landroid/content/pm/ResolveInfo;
    :cond_34
    new-instance v4, Lcom/sec/android/app/videoplayer/popup/VideoShareViaDialog$SendAppListAdapter;

    iget-object v5, p0, Lcom/sec/android/app/videoplayer/popup/VideoBaseDialog;->mContext:Landroid/content/Context;

    invoke-direct {v4, p0, v5, v0}, Lcom/sec/android/app/videoplayer/popup/VideoShareViaDialog$SendAppListAdapter;-><init>(Lcom/sec/android/app/videoplayer/popup/VideoShareViaDialog;Landroid/content/Context;Ljava/util/ArrayList;)V

    return-object v4
.end method

.method protected createOnClickListener()Landroid/content/DialogInterface$OnClickListener;
    .registers 2

    .prologue
    .line 69
    new-instance v0, Lcom/sec/android/app/videoplayer/popup/VideoShareViaDialog$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/videoplayer/popup/VideoShareViaDialog$1;-><init>(Lcom/sec/android/app/videoplayer/popup/VideoShareViaDialog;)V

    return-object v0
.end method

.method protected setDialogId()V
    .registers 2

    .prologue
    .line 47
    const/4 v0, 0x1

    iput v0, p0, Lcom/sec/android/app/videoplayer/popup/VideoBaseDialog;->dialogId:I

    .line 48
    return-void
.end method

.method protected setDialogTitle(Landroid/app/AlertDialog$Builder;)V
    .registers 3
    .parameter "dialogBuilder"

    .prologue
    .line 51
    const v0, 0x7f08000d

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 52
    return-void
.end method
