.class public Lcom/sec/android/app/myfiles/SendAppListDialogActivity;
.super Landroid/app/Activity;
.source "SendAppListDialogActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/myfiles/SendAppListDialogActivity$SendAppItem;,
        Lcom/sec/android/app/myfiles/SendAppListDialogActivity$SendAppListAdapter;
    }
.end annotation


# instance fields
.field private mComponentName:Landroid/content/ComponentName;

.field private mContext:Landroid/content/Context;

.field private mDialog:Landroid/app/Dialog;

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

.field private mIntentFilter:Landroid/content/IntentFilter;

.field private mReceiver:Landroid/content/BroadcastReceiver;

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


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 57
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 77
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/myfiles/SendAppListDialogActivity;->mDialog:Landroid/app/Dialog;

    .line 194
    new-instance v0, Lcom/sec/android/app/myfiles/SendAppListDialogActivity$5;

    invoke-direct {v0, p0}, Lcom/sec/android/app/myfiles/SendAppListDialogActivity$5;-><init>(Lcom/sec/android/app/myfiles/SendAppListDialogActivity;)V

    iput-object v0, p0, Lcom/sec/android/app/myfiles/SendAppListDialogActivity;->mShareListener:Landroid/content/DialogInterface$OnClickListener;

    .line 594
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/myfiles/SendAppListDialogActivity;)Ljava/util/List;
    .registers 2
    .parameter "x0"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/sec/android/app/myfiles/SendAppListDialogActivity;->mDisplayAppList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/android/app/myfiles/SendAppListDialogActivity;)Ljava/util/List;
    .registers 2
    .parameter "x0"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/sec/android/app/myfiles/SendAppListDialogActivity;->mShareAppList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/android/app/myfiles/SendAppListDialogActivity;)Landroid/content/pm/ResolveInfo;
    .registers 2
    .parameter "x0"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/sec/android/app/myfiles/SendAppListDialogActivity;->mShareInfo:Landroid/content/pm/ResolveInfo;

    return-object v0
.end method

.method static synthetic access$202(Lcom/sec/android/app/myfiles/SendAppListDialogActivity;Landroid/content/pm/ResolveInfo;)Landroid/content/pm/ResolveInfo;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 57
    iput-object p1, p0, Lcom/sec/android/app/myfiles/SendAppListDialogActivity;->mShareInfo:Landroid/content/pm/ResolveInfo;

    return-object p1
.end method

.method static synthetic access$302(Lcom/sec/android/app/myfiles/SendAppListDialogActivity;Landroid/content/ComponentName;)Landroid/content/ComponentName;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 57
    iput-object p1, p0, Lcom/sec/android/app/myfiles/SendAppListDialogActivity;->mComponentName:Landroid/content/ComponentName;

    return-object p1
.end method

.method static synthetic access$400(Lcom/sec/android/app/myfiles/SendAppListDialogActivity;Landroid/content/pm/ResolveInfo;Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 57
    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/myfiles/SendAppListDialogActivity;->getSetOfMimeType(Landroid/content/pm/ResolveInfo;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/sec/android/app/myfiles/SendAppListDialogActivity;)Landroid/content/Context;
    .registers 2
    .parameter "x0"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/sec/android/app/myfiles/SendAppListDialogActivity;->mContext:Landroid/content/Context;

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
    .line 506
    .local p1, listResolveInfo:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    iget-object v1, p0, Lcom/sec/android/app/myfiles/SendAppListDialogActivity;->mShareAppList:Ljava/util/List;

    if-nez v1, :cond_7

    .line 507
    iput-object p1, p0, Lcom/sec/android/app/myfiles/SendAppListDialogActivity;->mShareAppList:Ljava/util/List;

    .line 513
    :cond_6
    return-void

    .line 511
    :cond_7
    const/4 v0, 0x0

    .local v0, i:I
    :goto_8
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_6

    .line 512
    iget-object v1, p0, Lcom/sec/android/app/myfiles/SendAppListDialogActivity;->mShareAppList:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 511
    add-int/lit8 v0, v0, 0x1

    goto :goto_8
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
    .line 491
    iget-object v2, p0, Lcom/sec/android/app/myfiles/SendAppListDialogActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 492
    .local v1, mPackageManager:Landroid/content/pm/PackageManager;
    const/4 v0, 0x0

    .line 494
    .local v0, intent:Landroid/content/Intent;
    new-instance v0, Landroid/content/Intent;

    .end local v0           #intent:Landroid/content/Intent;
    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 495
    .restart local v0       #intent:Landroid/content/Intent;
    invoke-virtual {v0, p2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 496
    const-string v2, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 498
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
    .line 261
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget-object v1, p1, Landroid/content/pm/ResolveInfo;->filter:Landroid/content/IntentFilter;

    invoke-virtual {v1}, Landroid/content/IntentFilter;->countDataTypes()I

    move-result v1

    if-ge v0, v1, :cond_2d

    .line 263
    if-nez p2, :cond_18

    .line 264
    iget-object v1, p1, Landroid/content/pm/ResolveInfo;->filter:Landroid/content/IntentFilter;

    invoke-virtual {v1, v0}, Landroid/content/IntentFilter;->getDataType(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/sec/android/app/myfiles/SendAppListDialogActivity;->makeMIMEType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 261
    :goto_15
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 266
    :cond_18
    const-string v1, ";"

    invoke-virtual {p2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 267
    iget-object v1, p1, Landroid/content/pm/ResolveInfo;->filter:Landroid/content/IntentFilter;

    invoke-virtual {v1, v0}, Landroid/content/IntentFilter;->getDataType(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/sec/android/app/myfiles/SendAppListDialogActivity;->makeMIMEType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    goto :goto_15

    .line 271
    :cond_2d
    return-object p2
.end method

.method private isExistedApp(Ljava/util/List;Landroid/content/pm/ResolveInfo;)Z
    .registers 8
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
    .line 527
    .local p1, list:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-virtual {p0}, Lcom/sec/android/app/myfiles/SendAppListDialogActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 529
    .local v1, pm:Landroid/content/pm/PackageManager;
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_39

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    .line 531
    .local v2, resolveInfo:Landroid/content/pm/ResolveInfo;
    invoke-virtual {v2, v1}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {p2, v1}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    iget-object v3, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v4, p2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 532
    const-string v3, "Debug"

    const-string v4, "isExistedApp return true"

    invoke-static {v3, v4}, Lcom/sec/android/app/myfiles/Util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 533
    const/4 v3, 0x1

    .line 536
    .end local v2           #resolveInfo:Landroid/content/pm/ResolveInfo;
    :goto_38
    return v3

    :cond_39
    const/4 v3, 0x0

    goto :goto_38
.end method

.method private makeMIMEType(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .parameter "dataType"

    .prologue
    .line 276
    const/16 v0, 0x2f

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-gez v0, :cond_e

    .line 277
    const-string v0, "/*"

    invoke-virtual {p1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 279
    .end local p1
    :cond_e
    return-object p1
.end method

.method private multipleSend([Ljava/lang/String;)V
    .registers 9
    .parameter "files"

    .prologue
    .line 337
    new-instance v3, Landroid/content/Intent;

    const-string v5, "android.intent.action.SEND_MULTIPLE"

    invoke-direct {v3, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 338
    .local v3, shareIntent:Landroid/content/Intent;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 340
    .local v2, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/Parcelable;>;"
    const/4 v4, 0x0

    .line 342
    .local v4, uri:Landroid/net/Uri;
    const/4 v5, 0x0

    aget-object v5, p1, v5

    invoke-static {v5}, Lcom/sec/android/app/myfiles/MediaFile;->getMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 343
    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 345
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1c
    array-length v5, p1

    if-ge v1, v5, :cond_2d

    .line 346
    aget-object v5, p1, v1

    invoke-static {v5, p0}, Lcom/sec/android/app/myfiles/FileUtils;->pathToUri(Ljava/lang/String;Landroid/app/Activity;)Landroid/net/Uri;

    move-result-object v4

    .line 348
    if-eqz v4, :cond_2a

    .line 349
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 345
    :cond_2a
    add-int/lit8 v1, v1, 0x1

    goto :goto_1c

    .line 353
    :cond_2d
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_3b

    .line 354
    const-string v5, "SendAppListDialogActivity"

    const-string v6, "selected list is empty!!"

    invoke-static {v5, v6}, Lcom/sec/android/app/myfiles/Util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 365
    :goto_3a
    return-void

    .line 358
    :cond_3b
    const-string v5, "android.intent.extra.STREAM"

    invoke-virtual {v3, v5, v2}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 359
    iget-object v5, p0, Lcom/sec/android/app/myfiles/SendAppListDialogActivity;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v3, v5}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 361
    :try_start_45
    invoke-virtual {p0, v3}, Lcom/sec/android/app/myfiles/SendAppListDialogActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_48
    .catch Landroid/content/ActivityNotFoundException; {:try_start_45 .. :try_end_48} :catch_49

    goto :goto_3a

    .line 362
    :catch_49
    move-exception v0

    .line 363
    .local v0, e:Landroid/content/ActivityNotFoundException;
    const-string v5, "SendAppListDialogActivity"

    const-string v6, "ActivityNotFoundException"

    invoke-static {v5, v6}, Lcom/sec/android/app/myfiles/Util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3a
.end method

.method private setDisplayedList()V
    .registers 5

    .prologue
    .line 517
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/sec/android/app/myfiles/SendAppListDialogActivity;->mDisplayAppList:Ljava/util/List;

    .line 519
    const/4 v0, 0x0

    .local v0, i:I
    :goto_8
    iget-object v1, p0, Lcom/sec/android/app/myfiles/SendAppListDialogActivity;->mShareAppList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2e

    .line 520
    iget-object v2, p0, Lcom/sec/android/app/myfiles/SendAppListDialogActivity;->mDisplayAppList:Ljava/util/List;

    iget-object v1, p0, Lcom/sec/android/app/myfiles/SendAppListDialogActivity;->mShareAppList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    invoke-direct {p0, v2, v1}, Lcom/sec/android/app/myfiles/SendAppListDialogActivity;->isExistedApp(Ljava/util/List;Landroid/content/pm/ResolveInfo;)Z

    move-result v1

    if-nez v1, :cond_2b

    .line 521
    iget-object v1, p0, Lcom/sec/android/app/myfiles/SendAppListDialogActivity;->mDisplayAppList:Ljava/util/List;

    iget-object v2, p0, Lcom/sec/android/app/myfiles/SendAppListDialogActivity;->mShareAppList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 519
    :cond_2b
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 523
    :cond_2e
    iget-object v1, p0, Lcom/sec/android/app/myfiles/SendAppListDialogActivity;->mDisplayAppList:Ljava/util/List;

    new-instance v2, Landroid/content/pm/ResolveInfo$DisplayNameComparator;

    iget-object v3, p0, Lcom/sec/android/app/myfiles/SendAppListDialogActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/content/pm/ResolveInfo$DisplayNameComparator;-><init>(Landroid/content/pm/PackageManager;)V

    invoke-static {v1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 524
    return-void
.end method

.method private setSendIntentList()V
    .registers 3

    .prologue
    .line 468
    const-string v0, "android.intent.action.SEND"

    const-string v1, "image/*"

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/myfiles/SendAppListDialogActivity;->getResolveInfo(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/myfiles/SendAppListDialogActivity;->addList(Ljava/util/List;)V

    .line 469
    const-string v0, "android.intent.action.SEND"

    const-string v1, "video/*"

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/myfiles/SendAppListDialogActivity;->getResolveInfo(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/myfiles/SendAppListDialogActivity;->addList(Ljava/util/List;)V

    .line 470
    const-string v0, "android.intent.action.SEND"

    const-string v1, "audio/*"

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/myfiles/SendAppListDialogActivity;->getResolveInfo(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/myfiles/SendAppListDialogActivity;->addList(Ljava/util/List;)V

    .line 471
    const-string v0, "android.intent.action.SEND"

    const-string v1, "*/*"

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/myfiles/SendAppListDialogActivity;->getResolveInfo(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/myfiles/SendAppListDialogActivity;->addList(Ljava/util/List;)V

    .line 473
    iget-object v0, p0, Lcom/sec/android/app/myfiles/SendAppListDialogActivity;->mShareAppList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 474
    const-string v0, "SendAppListDialogActivity"

    const-string v1, "ACTION_SEND - SendIntentList is empty"

    invoke-static {v0, v1}, Lcom/sec/android/app/myfiles/Util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 477
    :cond_3b
    const-string v0, "android.intent.action.SEND_MULTIPLE"

    const-string v1, "image/*"

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/myfiles/SendAppListDialogActivity;->getResolveInfo(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/myfiles/SendAppListDialogActivity;->addList(Ljava/util/List;)V

    .line 478
    const-string v0, "android.intent.action.SEND_MULTIPLE"

    const-string v1, "video/*"

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/myfiles/SendAppListDialogActivity;->getResolveInfo(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/myfiles/SendAppListDialogActivity;->addList(Ljava/util/List;)V

    .line 479
    const-string v0, "android.intent.action.SEND_MULTIPLE"

    const-string v1, "audio/*"

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/myfiles/SendAppListDialogActivity;->getResolveInfo(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/myfiles/SendAppListDialogActivity;->addList(Ljava/util/List;)V

    .line 480
    const-string v0, "android.intent.action.SEND_MULTIPLE"

    const-string v1, "*/*"

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/myfiles/SendAppListDialogActivity;->getResolveInfo(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/myfiles/SendAppListDialogActivity;->addList(Ljava/util/List;)V

    .line 482
    iget-object v0, p0, Lcom/sec/android/app/myfiles/SendAppListDialogActivity;->mShareAppList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_76

    .line 483
    const-string v0, "SendAppListDialogActivity"

    const-string v1, "ACTION_SEND_MULTIPLE - SendIntentList is empty"

    invoke-static {v0, v1}, Lcom/sec/android/app/myfiles/Util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 486
    :cond_76
    invoke-direct {p0}, Lcom/sec/android/app/myfiles/SendAppListDialogActivity;->setDisplayedList()V

    .line 487
    return-void
.end method

.method private singleSend(Ljava/lang/String;Landroid/net/Uri;)V
    .registers 7
    .parameter "file"
    .parameter "uri"

    .prologue
    .line 319
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.SEND"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 321
    .local v1, shareIntent:Landroid/content/Intent;
    const-string v2, "SendAppListDialogActivity"

    const-string v3, "singleSend start"

    invoke-static {v2, v3}, Lcom/sec/android/app/myfiles/Util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 323
    new-instance v1, Landroid/content/Intent;

    .end local v1           #shareIntent:Landroid/content/Intent;
    const-string v2, "android.intent.action.SEND"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 324
    .restart local v1       #shareIntent:Landroid/content/Intent;
    invoke-static {p1, p0}, Lcom/sec/android/app/myfiles/MediaFile;->getShareMimeType(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 325
    const-string v2, "android.intent.extra.STREAM"

    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 326
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 327
    iget-object v2, p0, Lcom/sec/android/app/myfiles/SendAppListDialogActivity;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 329
    :try_start_2a
    invoke-virtual {p0, v1}, Lcom/sec/android/app/myfiles/SendAppListDialogActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_2d
    .catch Landroid/content/ActivityNotFoundException; {:try_start_2a .. :try_end_2d} :catch_2e

    .line 333
    :goto_2d
    return-void

    .line 330
    :catch_2e
    move-exception v0

    .line 331
    .local v0, e:Landroid/content/ActivityNotFoundException;
    const-string v2, "SendAppListDialogActivity"

    const-string v3, "ActivityNotFoundException"

    invoke-static {v2, v3}, Lcom/sec/android/app/myfiles/Util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2d
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 11
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "intent"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 284
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 286
    const/4 v2, -0x1

    if-eq p2, v2, :cond_24

    .line 287
    const-string v2, "SendAppListDialogActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onActivityResult - resultCode = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/android/app/myfiles/Util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 288
    invoke-virtual {p0}, Lcom/sec/android/app/myfiles/SendAppListDialogActivity;->finish()V

    .line 315
    :goto_23
    return-void

    .line 292
    :cond_24
    const-string v2, "SendAppListDialogActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onActivityResult - requestCode = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/android/app/myfiles/Util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 294
    if-ne p1, v6, :cond_4f

    .line 295
    const-string v2, "FILE"

    invoke-virtual {p3, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 296
    .local v0, file:Ljava/lang/String;
    invoke-static {v0, p0}, Lcom/sec/android/app/myfiles/FileUtils;->pathToUri(Ljava/lang/String;Landroid/app/Activity;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Lcom/sec/android/app/myfiles/SendAppListDialogActivity;->singleSend(Ljava/lang/String;Landroid/net/Uri;)V

    .line 314
    .end local v0           #file:Ljava/lang/String;
    :cond_4b
    :goto_4b
    invoke-virtual {p0}, Lcom/sec/android/app/myfiles/SendAppListDialogActivity;->finish()V

    goto :goto_23

    .line 297
    :cond_4f
    const/4 v2, 0x2

    if-ne p1, v2, :cond_5c

    .line 298
    const-string v2, "FILE"

    invoke-virtual {p3, v2}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 299
    .local v1, files:[Ljava/lang/String;
    invoke-direct {p0, v1}, Lcom/sec/android/app/myfiles/SendAppListDialogActivity;->multipleSend([Ljava/lang/String;)V

    goto :goto_4b

    .line 300
    .end local v1           #files:[Ljava/lang/String;
    :cond_5c
    const/4 v2, 0x3

    if-ne p1, v2, :cond_4b

    .line 301
    const-string v2, "FILE"

    invoke-virtual {p3, v2}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 303
    .restart local v1       #files:[Ljava/lang/String;
    array-length v2, v1

    if-le v2, v6, :cond_6c

    .line 304
    invoke-direct {p0, v1}, Lcom/sec/android/app/myfiles/SendAppListDialogActivity;->multipleSend([Ljava/lang/String;)V

    goto :goto_4b

    .line 305
    :cond_6c
    array-length v2, v1

    if-ne v2, v6, :cond_83

    .line 306
    aget-object v2, v1, v5

    invoke-static {v2, p0}, Lcom/sec/android/app/myfiles/FileUtils;->pathToUri(Ljava/lang/String;Landroid/app/Activity;)Landroid/net/Uri;

    move-result-object v2

    if-eqz v2, :cond_4b

    .line 307
    aget-object v2, v1, v5

    aget-object v3, v1, v5

    invoke-static {v3, p0}, Lcom/sec/android/app/myfiles/FileUtils;->pathToUri(Ljava/lang/String;Landroid/app/Activity;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/sec/android/app/myfiles/SendAppListDialogActivity;->singleSend(Ljava/lang/String;Landroid/net/Uri;)V

    goto :goto_4b

    .line 309
    :cond_83
    const-string v2, "SendAppListDialogActivity"

    const-string v3, "onActivityResult - There is no selected files"

    invoke-static {v2, v3}, Lcom/sec/android/app/myfiles/Util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 310
    invoke-virtual {p0}, Lcom/sec/android/app/myfiles/SendAppListDialogActivity;->finish()V

    goto :goto_23
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 6
    .parameter "savedInstanceState"

    .prologue
    const/4 v3, 0x1

    .line 86
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 88
    const-string v1, "SendAppListDialogActivity"

    const-string v2, "onCreate"

    invoke-static {v1, v2}, Lcom/sec/android/app/myfiles/Util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    invoke-virtual {p0}, Lcom/sec/android/app/myfiles/SendAppListDialogActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/Window;->requestFeature(I)Z

    .line 92
    const v1, 0x7f03002c

    invoke-virtual {p0, v1}, Lcom/sec/android/app/myfiles/SendAppListDialogActivity;->setContentView(I)V

    .line 93
    invoke-virtual {p0}, Lcom/sec/android/app/myfiles/SendAppListDialogActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/myfiles/SendAppListDialogActivity;->mContext:Landroid/content/Context;

    .line 94
    invoke-direct {p0}, Lcom/sec/android/app/myfiles/SendAppListDialogActivity;->setSendIntentList()V

    .line 95
    invoke-virtual {p0, v3}, Lcom/sec/android/app/myfiles/SendAppListDialogActivity;->showDialog(I)V

    .line 97
    const-string v1, "search"

    invoke-virtual {p0, v1}, Lcom/sec/android/app/myfiles/SendAppListDialogActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/SearchManager;

    .line 98
    .local v0, searchManager:Landroid/app/SearchManager;
    new-instance v1, Lcom/sec/android/app/myfiles/SendAppListDialogActivity$1;

    invoke-direct {v1, p0}, Lcom/sec/android/app/myfiles/SendAppListDialogActivity$1;-><init>(Lcom/sec/android/app/myfiles/SendAppListDialogActivity;)V

    invoke-virtual {v0, v1}, Landroid/app/SearchManager;->setOnDismissListener(Landroid/app/SearchManager$OnDismissListener;)V

    .line 104
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    iput-object v1, p0, Lcom/sec/android/app/myfiles/SendAppListDialogActivity;->mIntentFilter:Landroid/content/IntentFilter;

    .line 105
    iget-object v1, p0, Lcom/sec/android/app/myfiles/SendAppListDialogActivity;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 106
    iget-object v1, p0, Lcom/sec/android/app/myfiles/SendAppListDialogActivity;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v2, "file"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 108
    new-instance v1, Lcom/sec/android/app/myfiles/SendAppListDialogActivity$2;

    invoke-direct {v1, p0}, Lcom/sec/android/app/myfiles/SendAppListDialogActivity$2;-><init>(Lcom/sec/android/app/myfiles/SendAppListDialogActivity;)V

    iput-object v1, p0, Lcom/sec/android/app/myfiles/SendAppListDialogActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 115
    iget-object v1, p0, Lcom/sec/android/app/myfiles/SendAppListDialogActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/sec/android/app/myfiles/SendAppListDialogActivity;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {p0, v1, v2}, Lcom/sec/android/app/myfiles/SendAppListDialogActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 116
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .registers 11
    .parameter "id"

    .prologue
    .line 124
    iget-object v6, p0, Lcom/sec/android/app/myfiles/SendAppListDialogActivity;->mDialog:Landroid/app/Dialog;

    if-eqz v6, :cond_7

    .line 125
    iget-object v6, p0, Lcom/sec/android/app/myfiles/SendAppListDialogActivity;->mDialog:Landroid/app/Dialog;

    .line 184
    :goto_6
    return-object v6

    .line 127
    :cond_7
    packed-switch p1, :pswitch_data_92

    .line 184
    const/4 v6, 0x0

    goto :goto_6

    .line 129
    :pswitch_c
    new-instance v5, Landroid/app/AlertDialog$Builder;

    invoke-direct {v5, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 132
    .local v5, sendAppListAlertDialog:Landroid/app/AlertDialog$Builder;
    invoke-virtual {p0}, Lcom/sec/android/app/myfiles/SendAppListDialogActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 133
    .local v2, pm:Landroid/content/pm/PackageManager;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 135
    .local v0, arrayList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/app/myfiles/SendAppListDialogActivity$SendAppItem;>;"
    const v6, 0x7f090001

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 137
    const/4 v1, 0x0

    .local v1, i:I
    :goto_21
    iget-object v6, p0, Lcom/sec/android/app/myfiles/SendAppListDialogActivity;->mDisplayAppList:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v1, v6, :cond_46

    .line 138
    iget-object v6, p0, Lcom/sec/android/app/myfiles/SendAppListDialogActivity;->mDisplayAppList:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    .line 139
    .local v3, resolveInfo:Landroid/content/pm/ResolveInfo;
    new-instance v7, Lcom/sec/android/app/myfiles/SendAppListDialogActivity$SendAppItem;

    invoke-virtual {v3, v2}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v3, v2}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-direct {v7, p0, v8, v6}, Lcom/sec/android/app/myfiles/SendAppListDialogActivity$SendAppItem;-><init>(Lcom/sec/android/app/myfiles/SendAppListDialogActivity;Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 137
    add-int/lit8 v1, v1, 0x1

    goto :goto_21

    .line 142
    .end local v3           #resolveInfo:Landroid/content/pm/ResolveInfo;
    :cond_46
    new-instance v4, Lcom/sec/android/app/myfiles/SendAppListDialogActivity$SendAppListAdapter;

    invoke-direct {v4, p0, p0, v0}, Lcom/sec/android/app/myfiles/SendAppListDialogActivity$SendAppListAdapter;-><init>(Lcom/sec/android/app/myfiles/SendAppListDialogActivity;Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 143
    .local v4, sendAppListAdapter:Lcom/sec/android/app/myfiles/SendAppListDialogActivity$SendAppListAdapter;
    iget-object v6, p0, Lcom/sec/android/app/myfiles/SendAppListDialogActivity;->mShareListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v5, v4, v6}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 146
    const-string v6, "SPH-D710"

    const-string v7, "SPH-D710"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_78

    const-string v6, "SPH-D710"

    const-string v7, "SPH-D705"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_78

    const-string v6, "SPH-D710"

    const-string v7, "SCH-R760"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_78

    const-string v6, "SPH-D710"

    const-string v7, "ISW11SC"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_80

    .line 147
    :cond_78
    new-instance v6, Lcom/sec/android/app/myfiles/SendAppListDialogActivity$3;

    invoke-direct {v6, p0}, Lcom/sec/android/app/myfiles/SendAppListDialogActivity$3;-><init>(Lcom/sec/android/app/myfiles/SendAppListDialogActivity;)V

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    .line 167
    :cond_80
    new-instance v6, Lcom/sec/android/app/myfiles/SendAppListDialogActivity$4;

    invoke-direct {v6, p0}, Lcom/sec/android/app/myfiles/SendAppListDialogActivity$4;-><init>(Lcom/sec/android/app/myfiles/SendAppListDialogActivity;)V

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 173
    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v6

    iput-object v6, p0, Lcom/sec/android/app/myfiles/SendAppListDialogActivity;->mDialog:Landroid/app/Dialog;

    .line 180
    iget-object v6, p0, Lcom/sec/android/app/myfiles/SendAppListDialogActivity;->mDialog:Landroid/app/Dialog;

    goto/16 :goto_6

    .line 127
    :pswitch_data_92
    .packed-switch 0x1
        :pswitch_c
    .end packed-switch
.end method

.method protected onDestroy()V
    .registers 3

    .prologue
    .line 620
    const-string v0, "SendAppListDialogActivity"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Lcom/sec/android/app/myfiles/Util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 621
    iget-object v0, p0, Lcom/sec/android/app/myfiles/SendAppListDialogActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_13

    .line 622
    iget-object v0, p0, Lcom/sec/android/app/myfiles/SendAppListDialogActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/myfiles/SendAppListDialogActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 623
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/myfiles/SendAppListDialogActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 625
    :cond_13
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 626
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 4
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 188
    const/16 v0, 0x52

    if-ne p1, v0, :cond_7

    .line 189
    invoke-virtual {p0}, Lcom/sec/android/app/myfiles/SendAppListDialogActivity;->finish()V

    .line 191
    :cond_7
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .registers 5
    .parameter "savedInstanceState"

    .prologue
    .line 553
    invoke-super {p0, p1}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 555
    const-string v0, "SHARE_INFO"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    iput-object v0, p0, Lcom/sec/android/app/myfiles/SendAppListDialogActivity;->mComponentName:Landroid/content/ComponentName;

    .line 556
    const-string v0, "SendAppListDialogActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRestoreInstanceState mComponentName - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/myfiles/SendAppListDialogActivity;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/android/app/myfiles/Util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 557
    return-void
.end method

.method protected onResume()V
    .registers 3

    .prologue
    .line 119
    const-string v0, "SendAppListDialogActivity"

    const-string v1, "onResume"

    invoke-static {v0, v1}, Lcom/sec/android/app/myfiles/Util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 121
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 5
    .parameter "outState"

    .prologue
    .line 540
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 542
    iget-object v0, p0, Lcom/sec/android/app/myfiles/SendAppListDialogActivity;->mShareInfo:Landroid/content/pm/ResolveInfo;

    if-eqz v0, :cond_41

    .line 543
    new-instance v0, Landroid/content/ComponentName;

    iget-object v1, p0, Lcom/sec/android/app/myfiles/SendAppListDialogActivity;->mShareInfo:Landroid/content/pm/ResolveInfo;

    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v2, p0, Lcom/sec/android/app/myfiles/SendAppListDialogActivity;->mShareInfo:Landroid/content/pm/ResolveInfo;

    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sec/android/app/myfiles/SendAppListDialogActivity;->mComponentName:Landroid/content/ComponentName;

    .line 545
    const-string v0, "SHARE_INFO"

    iget-object v1, p0, Lcom/sec/android/app/myfiles/SendAppListDialogActivity;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 546
    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v0

    if-nez v0, :cond_41

    .line 547
    const-string v0, "SendAppListDialogActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSaveInstanceState mComponentName - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/myfiles/SendAppListDialogActivity;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/android/app/myfiles/Util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 550
    :cond_41
    return-void
.end method

.method protected onStop()V
    .registers 3

    .prologue
    .line 615
    const-string v0, "SendAppListDialogActivity"

    const-string v1, "onStop"

    invoke-static {v0, v1}, Lcom/sec/android/app/myfiles/Util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 616
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 617
    return-void
.end method
