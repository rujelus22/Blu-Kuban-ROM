.class public Lcom/google/android/finsky/receivers/PackageMonitorReceiver;
.super Ljava/lang/Object;
.source "PackageMonitorReceiver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/finsky/receivers/PackageMonitorReceiver$ReferrerRebroadcaster;,
        Lcom/google/android/finsky/receivers/PackageMonitorReceiver$RegisteredReceiver;,
        Lcom/google/android/finsky/receivers/PackageMonitorReceiver$PackageStatusListener;
    }
.end annotation


# instance fields
.field private final mListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/receivers/PackageMonitorReceiver$PackageStatusListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 4

    .prologue
    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/finsky/receivers/PackageMonitorReceiver;->mListeners:Ljava/util/List;

    .line 82
    iget-object v0, p0, Lcom/google/android/finsky/receivers/PackageMonitorReceiver;->mListeners:Ljava/util/List;

    new-instance v1, Lcom/google/android/finsky/receivers/PackageMonitorReceiver$ReferrerRebroadcaster;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/google/android/finsky/receivers/PackageMonitorReceiver$ReferrerRebroadcaster;-><init>(Lcom/google/android/finsky/receivers/PackageMonitorReceiver$1;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 83
    return-void
.end method

.method private static getPackageName(Landroid/content/Intent;)Ljava/lang/String;
    .registers 3
    .parameter "intent"

    .prologue
    .line 195
    invoke-virtual {p0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 197
    .local v0, data:Landroid/net/Uri;
    if-eqz v0, :cond_b

    invoke-virtual {v0}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v1

    :goto_a
    return-object v1

    :cond_b
    const/4 v1, 0x0

    goto :goto_a
.end method

.method private notifyListeners(Lcom/google/android/finsky/utils/ParameterizedRunnable;)V
    .registers 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/finsky/utils/ParameterizedRunnable",
            "<",
            "Lcom/google/android/finsky/receivers/PackageMonitorReceiver$PackageStatusListener;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 172
    .local p1, listenerCaller:Lcom/google/android/finsky/utils/ParameterizedRunnable;,"Lcom/google/android/finsky/utils/ParameterizedRunnable<Lcom/google/android/finsky/receivers/PackageMonitorReceiver$PackageStatusListener;>;"
    iget-object v1, p0, Lcom/google/android/finsky/receivers/PackageMonitorReceiver;->mListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, i:I
    :goto_8
    if-ltz v0, :cond_16

    .line 173
    iget-object v1, p0, Lcom/google/android/finsky/receivers/PackageMonitorReceiver;->mListeners:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1, v1}, Lcom/google/android/finsky/utils/ParameterizedRunnable;->run(Ljava/lang/Object;)V

    .line 172
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 175
    :cond_16
    return-void
.end method


# virtual methods
.method public attach(Lcom/google/android/finsky/receivers/PackageMonitorReceiver$PackageStatusListener;)V
    .registers 3
    .parameter "listener"

    .prologue
    .line 182
    iget-object v0, p0, Lcom/google/android/finsky/receivers/PackageMonitorReceiver;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 183
    return-void
.end method

.method public detach(Lcom/google/android/finsky/receivers/PackageMonitorReceiver$PackageStatusListener;)V
    .registers 3
    .parameter "listener"

    .prologue
    .line 191
    iget-object v0, p0, Lcom/google/android/finsky/receivers/PackageMonitorReceiver;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 192
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 18
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 97
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 99
    .local v1, action:Ljava/lang/String;
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v12

    invoke-virtual {v12}, Lcom/google/android/finsky/FinskyApp;->getPackageInfoRepository()Lcom/google/android/finsky/appstate/PackageStateRepository;

    move-result-object v10

    .line 101
    .local v10, repository:Lcom/google/android/finsky/appstate/PackageStateRepository;
    const-string v12, "android.intent.action.EXTERNAL_APPLICATIONS_AVAILABLE"

    invoke-virtual {v12, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 102
    .local v3, available:Z
    const-string v12, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    invoke-virtual {v12, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    .line 103
    .local v11, unavailable:Z
    if-nez v3, :cond_1c

    if-eqz v11, :cond_3a

    .line 105
    :cond_1c
    const-string v12, "android.intent.extra.changed_package_list"

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 109
    .local v4, changedPackages:[Ljava/lang/String;
    move-object v2, v4

    .local v2, arr$:[Ljava/lang/String;
    array-length v7, v2

    .local v7, len$:I
    const/4 v6, 0x0

    .local v6, i$:I
    :goto_27
    if-ge v6, v7, :cond_31

    aget-object v8, v2, v6

    .line 110
    .local v8, packageName:Ljava/lang/String;
    invoke-interface {v10, v8}, Lcom/google/android/finsky/appstate/PackageStateRepository;->invalidate(Ljava/lang/String;)V

    .line 109
    add-int/lit8 v6, v6, 0x1

    goto :goto_27

    .line 113
    .end local v8           #packageName:Ljava/lang/String;
    :cond_31
    new-instance v12, Lcom/google/android/finsky/receivers/PackageMonitorReceiver$1;

    invoke-direct {v12, p0, v4, v3}, Lcom/google/android/finsky/receivers/PackageMonitorReceiver$1;-><init>(Lcom/google/android/finsky/receivers/PackageMonitorReceiver;[Ljava/lang/String;Z)V

    invoke-direct {p0, v12}, Lcom/google/android/finsky/receivers/PackageMonitorReceiver;->notifyListeners(Lcom/google/android/finsky/utils/ParameterizedRunnable;)V

    .line 166
    .end local v2           #arr$:[Ljava/lang/String;
    .end local v4           #changedPackages:[Ljava/lang/String;
    .end local v6           #i$:I
    .end local v7           #len$:I
    :cond_39
    :goto_39
    return-void

    .line 123
    :cond_3a
    invoke-static/range {p2 .. p2}, Lcom/google/android/finsky/receivers/PackageMonitorReceiver;->getPackageName(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v8

    .line 125
    .restart local v8       #packageName:Ljava/lang/String;
    if-eqz v8, :cond_39

    .line 128
    invoke-interface {v10, v8}, Lcom/google/android/finsky/appstate/PackageStateRepository;->invalidate(Ljava/lang/String;)V

    .line 130
    const-string v12, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v12, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_66

    .line 131
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v5

    .line 132
    .local v5, extras:Landroid/os/Bundle;
    if-eqz v5, :cond_64

    const-string v12, "android.intent.extra.REPLACING"

    const/4 v13, 0x0

    invoke-virtual {v5, v12, v13}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v12

    if-eqz v12, :cond_64

    const/4 v9, 0x1

    .line 135
    .local v9, replacing:Z
    :goto_5b
    new-instance v12, Lcom/google/android/finsky/receivers/PackageMonitorReceiver$2;

    invoke-direct {v12, p0, v8, v9}, Lcom/google/android/finsky/receivers/PackageMonitorReceiver$2;-><init>(Lcom/google/android/finsky/receivers/PackageMonitorReceiver;Ljava/lang/String;Z)V

    invoke-direct {p0, v12}, Lcom/google/android/finsky/receivers/PackageMonitorReceiver;->notifyListeners(Lcom/google/android/finsky/utils/ParameterizedRunnable;)V

    goto :goto_39

    .line 132
    .end local v9           #replacing:Z
    :cond_64
    const/4 v9, 0x0

    goto :goto_5b

    .line 141
    .end local v5           #extras:Landroid/os/Bundle;
    :cond_66
    const-string v12, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v12, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_7c

    .line 142
    new-instance v12, Lcom/google/android/finsky/receivers/PackageMonitorReceiver$3;

    invoke-direct {v12, p0, v8}, Lcom/google/android/finsky/receivers/PackageMonitorReceiver$3;-><init>(Lcom/google/android/finsky/receivers/PackageMonitorReceiver;Ljava/lang/String;)V

    invoke-direct {p0, v12}, Lcom/google/android/finsky/receivers/PackageMonitorReceiver;->notifyListeners(Lcom/google/android/finsky/utils/ParameterizedRunnable;)V

    .line 148
    move-object/from16 v0, p1

    invoke-static {v0, v8}, Lcom/google/android/finsky/receivers/ExpireLaunchUrlReceiver;->schedule(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_39

    .line 149
    :cond_7c
    const-string v12, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v12, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_8d

    .line 150
    new-instance v12, Lcom/google/android/finsky/receivers/PackageMonitorReceiver$4;

    invoke-direct {v12, p0, v8}, Lcom/google/android/finsky/receivers/PackageMonitorReceiver$4;-><init>(Lcom/google/android/finsky/receivers/PackageMonitorReceiver;Ljava/lang/String;)V

    invoke-direct {p0, v12}, Lcom/google/android/finsky/receivers/PackageMonitorReceiver;->notifyListeners(Lcom/google/android/finsky/utils/ParameterizedRunnable;)V

    goto :goto_39

    .line 156
    :cond_8d
    const-string v12, "android.intent.action.PACKAGE_FIRST_LAUNCH"

    invoke-virtual {v12, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_9e

    .line 157
    new-instance v12, Lcom/google/android/finsky/receivers/PackageMonitorReceiver$5;

    invoke-direct {v12, p0, v8}, Lcom/google/android/finsky/receivers/PackageMonitorReceiver$5;-><init>(Lcom/google/android/finsky/receivers/PackageMonitorReceiver;Ljava/lang/String;)V

    invoke-direct {p0, v12}, Lcom/google/android/finsky/receivers/PackageMonitorReceiver;->notifyListeners(Lcom/google/android/finsky/utils/ParameterizedRunnable;)V

    goto :goto_39

    .line 164
    :cond_9e
    const-string v12, "Unhandled intent type action type: %s"

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    aput-object v1, v13, v14

    invoke-static {v12, v13}, Lcom/google/android/finsky/utils/FinskyLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_39
.end method
