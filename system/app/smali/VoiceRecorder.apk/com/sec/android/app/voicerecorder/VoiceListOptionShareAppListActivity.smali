.class public Lcom/sec/android/app/voicerecorder/VoiceListOptionShareAppListActivity;
.super Landroid/app/Activity;
.source "VoiceListOptionShareAppListActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/voicerecorder/VoiceListOptionShareAppListActivity$SendAppItem;,
        Lcom/sec/android/app/voicerecorder/VoiceListOptionShareAppListActivity$SendAppListAdapter;
    }
.end annotation


# static fields
.field public static mShareInfo:Landroid/content/pm/ResolveInfo;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDialog:Landroid/app/Dialog;

.field private mDisplayedAppList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mEventHandler:Landroid/os/Handler;

.field private mFile:Ljava/lang/String;

.field private mId:J

.field private mMode:I

.field private mSharableAppList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation
.end field

.field mShareListener:Landroid/content/DialogInterface$OnClickListener;

.field private mVRIntent:Lcom/sec/android/app/voicerecorder/util/VRIntent;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 44
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 52
    iput-object v1, p0, Lcom/sec/android/app/voicerecorder/VoiceListOptionShareAppListActivity;->mFile:Ljava/lang/String;

    .line 55
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/app/voicerecorder/VoiceListOptionShareAppListActivity;->mMode:I

    .line 61
    iput-object v1, p0, Lcom/sec/android/app/voicerecorder/VoiceListOptionShareAppListActivity;->mDialog:Landroid/app/Dialog;

    .line 131
    new-instance v0, Lcom/sec/android/app/voicerecorder/VoiceListOptionShareAppListActivity$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/voicerecorder/VoiceListOptionShareAppListActivity$1;-><init>(Lcom/sec/android/app/voicerecorder/VoiceListOptionShareAppListActivity;)V

    iput-object v0, p0, Lcom/sec/android/app/voicerecorder/VoiceListOptionShareAppListActivity;->mEventHandler:Landroid/os/Handler;

    .line 250
    new-instance v0, Lcom/sec/android/app/voicerecorder/VoiceListOptionShareAppListActivity$4;

    invoke-direct {v0, p0}, Lcom/sec/android/app/voicerecorder/VoiceListOptionShareAppListActivity$4;-><init>(Lcom/sec/android/app/voicerecorder/VoiceListOptionShareAppListActivity;)V

    iput-object v0, p0, Lcom/sec/android/app/voicerecorder/VoiceListOptionShareAppListActivity;->mShareListener:Landroid/content/DialogInterface$OnClickListener;

    .line 615
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/voicerecorder/VoiceListOptionShareAppListActivity;)Ljava/util/List;
    .registers 2
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/VoiceListOptionShareAppListActivity;->mDisplayedAppList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/android/app/voicerecorder/VoiceListOptionShareAppListActivity;)Ljava/util/List;
    .registers 2
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/VoiceListOptionShareAppListActivity;->mSharableAppList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/android/app/voicerecorder/VoiceListOptionShareAppListActivity;Landroid/content/pm/ResolveInfo;Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 44
    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/voicerecorder/VoiceListOptionShareAppListActivity;->getSetOfMimeType(Landroid/content/pm/ResolveInfo;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/android/app/voicerecorder/VoiceListOptionShareAppListActivity;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 44
    iget v0, p0, Lcom/sec/android/app/voicerecorder/VoiceListOptionShareAppListActivity;->mMode:I

    return v0
.end method

.method static synthetic access$400(Lcom/sec/android/app/voicerecorder/VoiceListOptionShareAppListActivity;)J
    .registers 3
    .parameter "x0"

    .prologue
    .line 44
    iget-wide v0, p0, Lcom/sec/android/app/voicerecorder/VoiceListOptionShareAppListActivity;->mId:J

    return-wide v0
.end method

.method static synthetic access$500(Lcom/sec/android/app/voicerecorder/VoiceListOptionShareAppListActivity;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/VoiceListOptionShareAppListActivity;->mFile:Ljava/lang/String;

    return-object v0
.end method

.method private addToSharableAppList(Ljava/util/List;)V
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
    .line 539
    .local p1, resolveInfoList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    iget-object v1, p0, Lcom/sec/android/app/voicerecorder/VoiceListOptionShareAppListActivity;->mSharableAppList:Ljava/util/List;

    if-nez v1, :cond_7

    .line 540
    iput-object p1, p0, Lcom/sec/android/app/voicerecorder/VoiceListOptionShareAppListActivity;->mSharableAppList:Ljava/util/List;

    .line 546
    :cond_6
    return-void

    .line 544
    :cond_7
    const/4 v0, 0x0

    .local v0, i:I
    :goto_8
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_6

    .line 545
    iget-object v1, p0, Lcom/sec/android/app/voicerecorder/VoiceListOptionShareAppListActivity;->mSharableAppList:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 544
    add-int/lit8 v0, v0, 0x1

    goto :goto_8
.end method

.method private static getContentMimeType(Landroid/content/Context;J)Ljava/lang/String;
    .registers 14
    .parameter "context"
    .parameter "id"

    .prologue
    const/4 v10, 0x0

    .line 496
    const/4 v3, 0x0

    .line 497
    .local v3, selection:Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 498
    .local v6, builder:Ljava/lang/StringBuilder;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "_id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 499
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 500
    const/4 v9, 0x0

    .line 503
    .local v9, mimeType:Ljava/lang/String;
    :try_start_22
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 505
    .local v0, cr:Landroid/content/ContentResolver;
    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 507
    .local v7, c:Landroid/database/Cursor;
    if-eqz v7, :cond_44

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_44

    .line 508
    const-string v1, "mime_type"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 510
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_44
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_44} :catch_46

    :cond_44
    move-object v1, v9

    .line 520
    .end local v0           #cr:Landroid/content/ContentResolver;
    .end local v7           #c:Landroid/database/Cursor;
    :goto_45
    return-object v1

    .line 515
    :catch_46
    move-exception v8

    .line 516
    .local v8, e:Ljava/lang/Exception;
    const-string v1, "VoiceListOptionShareAppListActivity"

    const-string v2, "mimetype is null"

    invoke-static {v1, v2}, Lcom/sec/android/app/voicerecorder/util/VRUtil$VRLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v10

    .line 517
    goto :goto_45
.end method

.method public static getContentURI(Landroid/content/Context;J)Landroid/net/Uri;
    .registers 15
    .parameter "context"
    .parameter "id"

    .prologue
    const/4 v11, 0x0

    .line 462
    const/4 v8, 0x0

    .line 464
    .local v8, contentUri:Landroid/net/Uri;
    const/4 v3, 0x0

    .line 465
    .local v3, selection:Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 466
    .local v6, builder:Ljava/lang/StringBuilder;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 467
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 470
    const/4 v10, 0x0

    .line 471
    .local v10, sendId:I
    :try_start_23
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 473
    .local v7, c:Landroid/database/Cursor;
    if-eqz v7, :cond_45

    .line 474
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_42

    .line 475
    const-string v0, "_id"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    .line 477
    :cond_42
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 482
    :cond_45
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "content://media/external/audio/media/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
    :try_end_5b
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_5b} :catch_5e

    move-result-object v8

    move-object v0, v8

    .line 491
    .end local v7           #c:Landroid/database/Cursor;
    :goto_5d
    return-object v0

    .line 486
    :catch_5e
    move-exception v9

    .local v9, e:Ljava/lang/Exception;
    move-object v0, v11

    .line 488
    goto :goto_5d
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
    .line 549
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 550
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "android.intent.category.DEFAULT"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 555
    invoke-virtual {p0}, Lcom/sec/android/app/voicerecorder/VoiceListOptionShareAppListActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const v2, 0x10060

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method private getSetOfMimeType(Landroid/content/pm/ResolveInfo;Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .parameter "resolveInfo"
    .parameter "mimeType"

    .prologue
    .line 352
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget-object v1, p1, Landroid/content/pm/ResolveInfo;->filter:Landroid/content/IntentFilter;

    invoke-virtual {v1}, Landroid/content/IntentFilter;->countDataTypes()I

    move-result v1

    if-ge v0, v1, :cond_2d

    .line 353
    if-nez p2, :cond_18

    .line 354
    iget-object v1, p1, Landroid/content/pm/ResolveInfo;->filter:Landroid/content/IntentFilter;

    invoke-virtual {v1, v0}, Landroid/content/IntentFilter;->getDataType(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/sec/android/app/voicerecorder/VoiceListOptionShareAppListActivity;->makeMIMEType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 352
    :goto_15
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 356
    :cond_18
    const-string v1, ";"

    invoke-virtual {p2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 357
    iget-object v1, p1, Landroid/content/pm/ResolveInfo;->filter:Landroid/content/IntentFilter;

    invoke-virtual {v1, v0}, Landroid/content/IntentFilter;->getDataType(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/sec/android/app/voicerecorder/VoiceListOptionShareAppListActivity;->makeMIMEType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    goto :goto_15

    .line 361
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
    .line 574
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

    .line 575
    .local v1, resolveInfo:Landroid/content/pm/ResolveInfo;
    iget-object v2, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    iget-object v3, p2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 576
    const/4 v2, 0x1

    .line 578
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
    .line 365
    const/16 v0, 0x2f

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-gez v0, :cond_e

    .line 366
    const-string v0, "/*"

    invoke-virtual {p1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 368
    .end local p1
    :cond_e
    return-object p1
.end method

.method public static multipleSend(Landroid/content/Context;[J[Ljava/lang/String;)V
    .registers 16
    .parameter "context"
    .parameter "ids"
    .parameter "files"

    .prologue
    const/4 v12, 0x0

    .line 407
    new-instance v4, Landroid/content/Intent;

    const-string v10, "android.intent.action.SEND_MULTIPLE"

    invoke-direct {v4, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 408
    .local v4, shareIntent:Landroid/content/Intent;
    const/high16 v10, 0x1000

    invoke-virtual {v4, v10}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 409
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 411
    .local v2, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/Parcelable;>;"
    const/4 v9, 0x0

    .line 413
    .local v9, uri:Landroid/net/Uri;
    const-string v10, "audio/*"

    invoke-virtual {v4, v10}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 414
    array-length v7, p1

    .line 416
    .local v7, size:I
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 417
    .local v8, strBuilder:Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1f
    if-ge v1, v7, :cond_48

    .line 419
    aget-wide v10, p1, v1

    invoke-static {p0, v10, v11}, Lcom/sec/android/app/voicerecorder/VoiceListOptionShareAppListActivity;->getContentURI(Landroid/content/Context;J)Landroid/net/Uri;

    move-result-object v9

    if-eqz v9, :cond_45

    .line 420
    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 422
    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 423
    const-string v10, "multipleSend : selected file - "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 424
    aget-object v10, p2, v1

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 425
    const-string v10, " Uri ="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 426
    invoke-virtual {v9}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 417
    :cond_45
    add-int/lit8 v1, v1, 0x1

    goto :goto_1f

    .line 431
    :cond_48
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_56

    .line 432
    const-string v10, "VoiceListOptionShareAppListActivity"

    const-string v11, "multipleSend : selected list is empty!!"

    invoke-static {v10, v11}, Lcom/sec/android/app/voicerecorder/util/VRUtil$VRLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 458
    :goto_55
    return-void

    .line 436
    :cond_56
    const-string v10, "android.intent.extra.STREAM"

    invoke-virtual {v4, v10, v2}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 439
    const/4 v10, 0x1

    invoke-virtual {v4, v10}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 441
    const-string v6, ""

    .line 442
    .local v6, share_app_packageName:Ljava/lang/String;
    const-string v5, ""

    .line 443
    .local v5, share_app_name:Ljava/lang/String;
    sget-object v10, Lcom/sec/android/app/voicerecorder/VoiceListOptionShareAppListActivity;->mShareInfo:Landroid/content/pm/ResolveInfo;

    if-eqz v10, :cond_88

    .line 444
    sget-object v10, Lcom/sec/android/app/voicerecorder/VoiceListOptionShareAppListActivity;->mShareInfo:Landroid/content/pm/ResolveInfo;

    iget-object v10, v10, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v10, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 445
    sget-object v10, Lcom/sec/android/app/voicerecorder/VoiceListOptionShareAppListActivity;->mShareInfo:Landroid/content/pm/ResolveInfo;

    iget-object v10, v10, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v10, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 451
    :goto_73
    new-instance v10, Landroid/content/ComponentName;

    invoke-direct {v10, v6, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v10}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 454
    :try_start_7b
    invoke-virtual {p0, v4}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_7e
    .catch Landroid/content/ActivityNotFoundException; {:try_start_7b .. :try_end_7e} :catch_7f

    goto :goto_55

    .line 455
    :catch_7f
    move-exception v0

    .line 456
    .local v0, e:Landroid/content/ActivityNotFoundException;
    const-string v10, "VoiceListOptionShareAppListActivity"

    const-string v11, "multipleSend() - activity not found!"

    invoke-static {v10, v11, v0}, Lcom/sec/android/app/voicerecorder/util/VRUtil$VRLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_55

    .line 447
    .end local v0           #e:Landroid/content/ActivityNotFoundException;
    :cond_88
    const-string v10, "share_app_info"

    invoke-virtual {p0, v10, v12}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 448
    .local v3, pref:Landroid/content/SharedPreferences;
    const-string v10, "share_app_packageName"

    const-string v11, ""

    invoke-interface {v3, v10, v11}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 449
    const-string v10, "share_app_name"

    const-string v11, ""

    invoke-interface {v3, v10, v11}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto :goto_73
.end method

.method private setDisplayedAppList()V
    .registers 6

    .prologue
    .line 560
    const-string v1, "com.sec.android.app.dlna.ui.AddinActivity"

    .line 561
    .local v1, packageName:Ljava/lang/String;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/sec/android/app/voicerecorder/VoiceListOptionShareAppListActivity;->mDisplayedAppList:Ljava/util/List;

    .line 563
    const/4 v0, 0x0

    .local v0, i:I
    :goto_a
    iget-object v2, p0, Lcom/sec/android/app/voicerecorder/VoiceListOptionShareAppListActivity;->mSharableAppList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_42

    .line 564
    iget-object v3, p0, Lcom/sec/android/app/voicerecorder/VoiceListOptionShareAppListActivity;->mDisplayedAppList:Ljava/util/List;

    iget-object v2, p0, Lcom/sec/android/app/voicerecorder/VoiceListOptionShareAppListActivity;->mSharableAppList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    invoke-direct {p0, v3, v2}, Lcom/sec/android/app/voicerecorder/VoiceListOptionShareAppListActivity;->isExistedApp(Ljava/util/List;Landroid/content/pm/ResolveInfo;)Z

    move-result v2

    if-nez v2, :cond_3f

    .line 565
    iget-object v2, p0, Lcom/sec/android/app/voicerecorder/VoiceListOptionShareAppListActivity;->mSharableAppList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3f

    .line 566
    iget-object v2, p0, Lcom/sec/android/app/voicerecorder/VoiceListOptionShareAppListActivity;->mDisplayedAppList:Ljava/util/List;

    iget-object v3, p0, Lcom/sec/android/app/voicerecorder/VoiceListOptionShareAppListActivity;->mSharableAppList:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 563
    :cond_3f
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 570
    :cond_42
    iget-object v2, p0, Lcom/sec/android/app/voicerecorder/VoiceListOptionShareAppListActivity;->mDisplayedAppList:Ljava/util/List;

    new-instance v3, Landroid/content/pm/ResolveInfo$DisplayNameComparator;

    iget-object v4, p0, Lcom/sec/android/app/voicerecorder/VoiceListOptionShareAppListActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/content/pm/ResolveInfo$DisplayNameComparator;-><init>(Landroid/content/pm/PackageManager;)V

    invoke-static {v2, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 571
    return-void
.end method

.method private setSendIntentList()V
    .registers 3

    .prologue
    .line 524
    const-string v0, "android.intent.action.SEND"

    const-string v1, "audio/*"

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/voicerecorder/VoiceListOptionShareAppListActivity;->getResolveInfo(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/voicerecorder/VoiceListOptionShareAppListActivity;->addToSharableAppList(Ljava/util/List;)V

    .line 529
    const-string v0, "android.intent.action.SEND_MULTIPLE"

    const-string v1, "audio/*"

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/voicerecorder/VoiceListOptionShareAppListActivity;->getResolveInfo(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/voicerecorder/VoiceListOptionShareAppListActivity;->addToSharableAppList(Ljava/util/List;)V

    .line 531
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/VoiceListOptionShareAppListActivity;->mSharableAppList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 535
    :cond_1e
    invoke-direct {p0}, Lcom/sec/android/app/voicerecorder/VoiceListOptionShareAppListActivity;->setDisplayedAppList()V

    .line 536
    return-void
.end method

.method public static singleSend(Landroid/content/Context;JLjava/lang/String;)V
    .registers 12
    .parameter "context"
    .parameter "id"
    .parameter "file"

    .prologue
    .line 373
    const/4 v5, 0x0

    .line 375
    .local v5, uri:Landroid/net/Uri;
    invoke-static {p0, p1, p2}, Lcom/sec/android/app/voicerecorder/VoiceListOptionShareAppListActivity;->getContentURI(Landroid/content/Context;J)Landroid/net/Uri;

    move-result-object v5

    if-nez v5, :cond_10

    .line 376
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, p3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v6}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v5

    .line 378
    :cond_10
    new-instance v2, Landroid/content/Intent;

    const-string v6, "android.intent.action.SEND"

    invoke-direct {v2, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 380
    .local v2, shareIntent:Landroid/content/Intent;
    invoke-static {p0, p1, p2}, Lcom/sec/android/app/voicerecorder/VoiceListOptionShareAppListActivity;->getContentMimeType(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 381
    const-string v6, "android.intent.extra.STREAM"

    invoke-virtual {v2, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 383
    const/high16 v6, 0x1000

    invoke-virtual {v2, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 385
    const-string v4, ""

    .line 386
    .local v4, share_app_packageName:Ljava/lang/String;
    const-string v3, ""

    .line 387
    .local v3, share_app_name:Ljava/lang/String;
    sget-object v6, Lcom/sec/android/app/voicerecorder/VoiceListOptionShareAppListActivity;->mShareInfo:Landroid/content/pm/ResolveInfo;

    if-eqz v6, :cond_48

    .line 388
    sget-object v6, Lcom/sec/android/app/voicerecorder/VoiceListOptionShareAppListActivity;->mShareInfo:Landroid/content/pm/ResolveInfo;

    iget-object v6, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v6, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 389
    sget-object v6, Lcom/sec/android/app/voicerecorder/VoiceListOptionShareAppListActivity;->mShareInfo:Landroid/content/pm/ResolveInfo;

    iget-object v6, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v6, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 395
    :goto_3c
    new-instance v6, Landroid/content/ComponentName;

    invoke-direct {v6, v4, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v6}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 399
    :try_start_44
    invoke-virtual {p0, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_47
    .catch Landroid/content/ActivityNotFoundException; {:try_start_44 .. :try_end_47} :catch_60

    .line 403
    :goto_47
    return-void

    .line 391
    :cond_48
    const-string v6, "share_app_info"

    const/4 v7, 0x0

    invoke-virtual {p0, v6, v7}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 392
    .local v1, pref:Landroid/content/SharedPreferences;
    const-string v6, "share_app_packageName"

    const-string v7, ""

    invoke-interface {v1, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 393
    const-string v6, "share_app_name"

    const-string v7, ""

    invoke-interface {v1, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_3c

    .line 400
    .end local v1           #pref:Landroid/content/SharedPreferences;
    :catch_60
    move-exception v0

    .line 401
    .local v0, e:Landroid/content/ActivityNotFoundException;
    const-string v6, "SendAppListDialog"

    const-string v7, "singleSend() - activity not found!"

    invoke-static {v6, v7, v0}, Lcom/sec/android/app/voicerecorder/util/VRUtil$VRLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_47
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 8
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "intent"

    .prologue
    .line 320
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 322
    const/4 v0, -0x1

    if-eq p2, v0, :cond_22

    .line 323
    const-string v0, "VoiceListOptionShareAppListActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onActivityResult - resultCode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/android/app/voicerecorder/util/VRUtil$VRLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 324
    invoke-virtual {p0}, Lcom/sec/android/app/voicerecorder/VoiceListOptionShareAppListActivity;->finish()V

    .line 349
    :goto_21
    return-void

    .line 329
    :cond_22
    const/16 v0, 0xa

    if-ne p1, v0, :cond_3b

    .line 330
    const-string v0, "id"

    const-wide/16 v1, -0x1

    invoke-virtual {p3, v0, v1, v2}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sec/android/app/voicerecorder/VoiceListOptionShareAppListActivity;->mId:J

    .line 332
    invoke-virtual {p0}, Lcom/sec/android/app/voicerecorder/VoiceListOptionShareAppListActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-wide v1, p0, Lcom/sec/android/app/voicerecorder/VoiceListOptionShareAppListActivity;->mId:J

    iget-object v3, p0, Lcom/sec/android/app/voicerecorder/VoiceListOptionShareAppListActivity;->mFile:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcom/sec/android/app/voicerecorder/VoiceListOptionShareAppListActivity;->singleSend(Landroid/content/Context;JLjava/lang/String;)V

    .line 347
    :cond_3b
    invoke-virtual {p0}, Lcom/sec/android/app/voicerecorder/VoiceListOptionShareAppListActivity;->finish()V

    goto :goto_21
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 7
    .parameter "savedInstanceState"

    .prologue
    const/4 v4, 0x1

    .line 66
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 67
    const-string v1, "VoiceListOptionShareAppListActivity"

    const-string v2, "onCreate()"

    invoke-static {v1, v2}, Lcom/sec/android/app/voicerecorder/util/VRUtil$VRLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    invoke-virtual {p0}, Lcom/sec/android/app/voicerecorder/VoiceListOptionShareAppListActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/Window;->requestFeature(I)Z

    .line 71
    invoke-virtual {p0}, Lcom/sec/android/app/voicerecorder/VoiceListOptionShareAppListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 72
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "file"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/voicerecorder/VoiceListOptionShareAppListActivity;->mFile:Ljava/lang/String;

    .line 73
    const-string v1, "mode"

    const/16 v2, 0xb

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/voicerecorder/VoiceListOptionShareAppListActivity;->mMode:I

    .line 74
    const-string v1, "id"

    const-wide/16 v2, -0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/sec/android/app/voicerecorder/VoiceListOptionShareAppListActivity;->mId:J

    .line 76
    const v1, 0x7f030007

    invoke-virtual {p0, v1}, Lcom/sec/android/app/voicerecorder/VoiceListOptionShareAppListActivity;->setContentView(I)V

    .line 77
    invoke-virtual {p0}, Lcom/sec/android/app/voicerecorder/VoiceListOptionShareAppListActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/voicerecorder/VoiceListOptionShareAppListActivity;->mContext:Landroid/content/Context;

    .line 78
    invoke-direct {p0}, Lcom/sec/android/app/voicerecorder/VoiceListOptionShareAppListActivity;->setSendIntentList()V

    .line 79
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/sec/android/app/voicerecorder/VoiceListOptionShareAppListActivity;->showDialog(I)V

    .line 81
    new-instance v1, Lcom/sec/android/app/voicerecorder/util/VRIntent;

    iget-object v2, p0, Lcom/sec/android/app/voicerecorder/VoiceListOptionShareAppListActivity;->mEventHandler:Landroid/os/Handler;

    invoke-direct {v1, p0, v2}, Lcom/sec/android/app/voicerecorder/util/VRIntent;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/sec/android/app/voicerecorder/VoiceListOptionShareAppListActivity;->mVRIntent:Lcom/sec/android/app/voicerecorder/util/VRIntent;

    .line 82
    iget-object v1, p0, Lcom/sec/android/app/voicerecorder/VoiceListOptionShareAppListActivity;->mVRIntent:Lcom/sec/android/app/voicerecorder/util/VRIntent;

    invoke-virtual {v1, v4}, Lcom/sec/android/app/voicerecorder/util/VRIntent;->registerBroadcastReceiversForActivity(Z)V

    .line 84
    const-string v1, "VoiceListOptionShareAppListActivity"

    const-string v2, "onCreate Exit"

    invoke-static {v1, v2}, Lcom/sec/android/app/voicerecorder/util/VRUtil$VRLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .registers 12
    .parameter "id"

    .prologue
    .line 162
    const-string v7, "VoiceListOptionShareAppListActivity"

    const-string v8, "onCreateDialog()"

    invoke-static {v7, v8}, Lcom/sec/android/app/voicerecorder/util/VRUtil$VRLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    const/4 v2, 0x0

    .line 167
    .local v2, mIsFile3gpp:Z
    iget-object v7, p0, Lcom/sec/android/app/voicerecorder/VoiceListOptionShareAppListActivity;->mDialog:Landroid/app/Dialog;

    if-eqz v7, :cond_f

    .line 168
    iget-object v7, p0, Lcom/sec/android/app/voicerecorder/VoiceListOptionShareAppListActivity;->mDialog:Landroid/app/Dialog;

    .line 236
    :goto_e
    return-object v7

    .line 170
    :cond_f
    packed-switch p1, :pswitch_data_78

    .line 236
    const/4 v7, 0x0

    goto :goto_e

    .line 172
    :pswitch_14
    const-string v7, "VoiceListOptionShareAppListActivity"

    const-string v8, "DIALOG_SEND_APPLIST"

    invoke-static {v7, v8}, Lcom/sec/android/app/voicerecorder/util/VRUtil$VRLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    new-instance v6, Landroid/app/AlertDialog$Builder;

    invoke-direct {v6, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 175
    .local v6, sendAppListAlertDialog:Landroid/app/AlertDialog$Builder;
    invoke-virtual {p0}, Lcom/sec/android/app/voicerecorder/VoiceListOptionShareAppListActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 176
    .local v3, pm:Landroid/content/pm/PackageManager;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 178
    .local v0, arrayList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/app/voicerecorder/VoiceListOptionShareAppListActivity$SendAppItem;>;"
    const v7, 0x7f060022

    invoke-virtual {v6, v7}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 195
    const/4 v1, 0x0

    .local v1, i:I
    :goto_30
    iget-object v7, p0, Lcom/sec/android/app/voicerecorder/VoiceListOptionShareAppListActivity;->mDisplayedAppList:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-ge v1, v7, :cond_55

    .line 196
    iget-object v7, p0, Lcom/sec/android/app/voicerecorder/VoiceListOptionShareAppListActivity;->mDisplayedAppList:Ljava/util/List;

    invoke-interface {v7, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    .line 208
    .local v4, resolveInfo:Landroid/content/pm/ResolveInfo;
    new-instance v8, Lcom/sec/android/app/voicerecorder/VoiceListOptionShareAppListActivity$SendAppItem;

    invoke-virtual {v4, v3}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-virtual {v4, v3}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-direct {v8, p0, v9, v7}, Lcom/sec/android/app/voicerecorder/VoiceListOptionShareAppListActivity$SendAppItem;-><init>(Lcom/sec/android/app/voicerecorder/VoiceListOptionShareAppListActivity;Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 195
    add-int/lit8 v1, v1, 0x1

    goto :goto_30

    .line 211
    .end local v4           #resolveInfo:Landroid/content/pm/ResolveInfo;
    :cond_55
    new-instance v5, Lcom/sec/android/app/voicerecorder/VoiceListOptionShareAppListActivity$SendAppListAdapter;

    invoke-direct {v5, p0, p0, v0}, Lcom/sec/android/app/voicerecorder/VoiceListOptionShareAppListActivity$SendAppListAdapter;-><init>(Lcom/sec/android/app/voicerecorder/VoiceListOptionShareAppListActivity;Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 213
    .local v5, sendAppListAdapter:Lcom/sec/android/app/voicerecorder/VoiceListOptionShareAppListActivity$SendAppListAdapter;
    iget-object v7, p0, Lcom/sec/android/app/voicerecorder/VoiceListOptionShareAppListActivity;->mShareListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v6, v5, v7}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 216
    new-instance v7, Lcom/sec/android/app/voicerecorder/VoiceListOptionShareAppListActivity$2;

    invoke-direct {v7, p0}, Lcom/sec/android/app/voicerecorder/VoiceListOptionShareAppListActivity$2;-><init>(Lcom/sec/android/app/voicerecorder/VoiceListOptionShareAppListActivity;)V

    invoke-virtual {v6, v7}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    .line 226
    new-instance v7, Lcom/sec/android/app/voicerecorder/VoiceListOptionShareAppListActivity$3;

    invoke-direct {v7, p0}, Lcom/sec/android/app/voicerecorder/VoiceListOptionShareAppListActivity$3;-><init>(Lcom/sec/android/app/voicerecorder/VoiceListOptionShareAppListActivity;)V

    invoke-virtual {v6, v7}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 232
    invoke-virtual {v6}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v7

    iput-object v7, p0, Lcom/sec/android/app/voicerecorder/VoiceListOptionShareAppListActivity;->mDialog:Landroid/app/Dialog;

    .line 233
    iget-object v7, p0, Lcom/sec/android/app/voicerecorder/VoiceListOptionShareAppListActivity;->mDialog:Landroid/app/Dialog;

    goto :goto_e

    .line 170
    :pswitch_data_78
    .packed-switch 0x2
        :pswitch_14
    .end packed-switch
.end method

.method public onDestroy()V
    .registers 3

    .prologue
    .line 156
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/VoiceListOptionShareAppListActivity;->mVRIntent:Lcom/sec/android/app/voicerecorder/util/VRIntent;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/voicerecorder/util/VRIntent;->registerBroadcastReceiversForActivity(Z)V

    .line 157
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 158
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 4
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 243
    const/16 v0, 0x52

    if-ne p1, v0, :cond_7

    .line 244
    invoke-virtual {p0}, Lcom/sec/android/app/voicerecorder/VoiceListOptionShareAppListActivity;->finish()V

    .line 247
    :cond_7
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method protected onResume()V
    .registers 11

    .prologue
    .line 90
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 91
    const/4 v8, 0x0

    .line 94
    .local v8, cursor:Landroid/database/Cursor;
    const/4 v7, 0x0

    .line 97
    .local v7, count:I
    const/4 v3, 0x0

    .line 98
    .local v3, selection:Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 100
    .local v6, builder:Ljava/lang/StringBuilder;
    const-string v0, "(_data LIKE \'%.3ga\' or _data LIKE \'%.amr\')"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " and (_data NOT LIKE \'%/.voice.3ga\' and _data NOT LIKE \'%/.voice.amr\')"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " and (mime_type LIKE \'audio/3gpp\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " or mime_type LIKE \'audio/amr\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " or mime_type LIKE \'audio/mp4\')"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " and (_size != \'0\')"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 110
    :try_start_32
    invoke-virtual {p0}, Lcom/sec/android/app/voicerecorder/VoiceListOptionShareAppListActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v4, 0x0

    const-string v5, "date_modified DESC"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 113
    if-eqz v8, :cond_4c

    invoke-interface {v8}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_4c

    .line 114
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I
    :try_end_4b
    .catchall {:try_start_32 .. :try_end_4b} :catchall_6f
    .catch Ljava/lang/Exception; {:try_start_32 .. :try_end_4b} :catch_5e

    move-result v7

    .line 119
    :cond_4c
    if-eqz v8, :cond_58

    invoke-interface {v8}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_58

    .line 120
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 121
    const/4 v8, 0x0

    .line 124
    :cond_58
    :goto_58
    if-nez v7, :cond_5d

    .line 125
    invoke-virtual {p0}, Lcom/sec/android/app/voicerecorder/VoiceListOptionShareAppListActivity;->finish()V

    .line 128
    :cond_5d
    return-void

    .line 116
    :catch_5e
    move-exception v9

    .line 117
    .local v9, e:Ljava/lang/Exception;
    :try_start_5f
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_62
    .catchall {:try_start_5f .. :try_end_62} :catchall_6f

    .line 119
    if-eqz v8, :cond_58

    invoke-interface {v8}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_58

    .line 120
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 121
    const/4 v8, 0x0

    goto :goto_58

    .line 119
    .end local v9           #e:Ljava/lang/Exception;
    :catchall_6f
    move-exception v0

    if-eqz v8, :cond_7c

    invoke-interface {v8}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_7c

    .line 120
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 121
    const/4 v8, 0x0

    :cond_7c
    throw v0
.end method
