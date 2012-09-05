.class public Lcom/google/android/finsky/receivers/PackageMonitorReceiver;
.super Landroid/content/BroadcastReceiver;
.source "PackageMonitorReceiver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
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
    .registers 2

    .prologue
    .line 24
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 54
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/finsky/receivers/PackageMonitorReceiver;->mListeners:Ljava/util/List;

    return-void
.end method

.method private getPackageName(Landroid/content/Intent;)Ljava/lang/String;
    .registers 4
    .parameter "intent"

    .prologue
    .line 151
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 153
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
    .line 127
    .local p1, listenerCaller:Lcom/google/android/finsky/utils/ParameterizedRunnable;,"Lcom/google/android/finsky/utils/ParameterizedRunnable<Lcom/google/android/finsky/receivers/PackageMonitorReceiver$PackageStatusListener;>;"
    iget-object v1, p0, Lcom/google/android/finsky/receivers/PackageMonitorReceiver;->mListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, i:I
    :goto_8
    if-ltz v0, :cond_16

    .line 128
    iget-object v1, p0, Lcom/google/android/finsky/receivers/PackageMonitorReceiver;->mListeners:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1, v1}, Lcom/google/android/finsky/utils/ParameterizedRunnable;->run(Ljava/lang/Object;)V

    .line 127
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 130
    :cond_16
    return-void
.end method


# virtual methods
.method public attach(Lcom/google/android/finsky/receivers/PackageMonitorReceiver$PackageStatusListener;)V
    .registers 3
    .parameter "listener"

    .prologue
    .line 137
    iget-object v0, p0, Lcom/google/android/finsky/receivers/PackageMonitorReceiver;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 138
    return-void
.end method

.method public detach(Lcom/google/android/finsky/receivers/PackageMonitorReceiver$PackageStatusListener;)V
    .registers 3
    .parameter "listener"

    .prologue
    .line 146
    iget-object v0, p0, Lcom/google/android/finsky/receivers/PackageMonitorReceiver;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 147
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 12
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 69
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 71
    .local v0, action:Ljava/lang/String;
    const-string v7, "android.intent.action.EXTERNAL_APPLICATIONS_AVAILABLE"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_16

    const-string v7, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2b

    .line 74
    :cond_16
    const-string v6, "android.intent.extra.changed_package_list"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 77
    .local v2, changedPackages:[Ljava/lang/String;
    const-string v6, "android.intent.action.EXTERNAL_APPLICATIONS_AVAILABLE"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 79
    .local v1, available:Z
    new-instance v6, Lcom/google/android/finsky/receivers/PackageMonitorReceiver$1;

    invoke-direct {v6, p0, v2, v1}, Lcom/google/android/finsky/receivers/PackageMonitorReceiver$1;-><init>(Lcom/google/android/finsky/receivers/PackageMonitorReceiver;[Ljava/lang/String;Z)V

    invoke-direct {p0, v6}, Lcom/google/android/finsky/receivers/PackageMonitorReceiver;->notifyListeners(Lcom/google/android/finsky/utils/ParameterizedRunnable;)V

    .line 121
    .end local v1           #available:Z
    .end local v2           #changedPackages:[Ljava/lang/String;
    :cond_2a
    :goto_2a
    return-void

    .line 89
    :cond_2b
    invoke-direct {p0, p2}, Lcom/google/android/finsky/receivers/PackageMonitorReceiver;->getPackageName(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v4

    .line 91
    .local v4, packageName:Ljava/lang/String;
    if-eqz v4, :cond_2a

    .line 93
    const-string v7, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_52

    .line 94
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    .line 95
    .local v3, extras:Landroid/os/Bundle;
    if-eqz v3, :cond_50

    const-string v7, "android.intent.extra.REPLACING"

    invoke-virtual {v3, v7, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    if-eqz v7, :cond_50

    .line 98
    .local v5, replacing:Z
    :goto_47
    new-instance v6, Lcom/google/android/finsky/receivers/PackageMonitorReceiver$2;

    invoke-direct {v6, p0, v4, v5}, Lcom/google/android/finsky/receivers/PackageMonitorReceiver$2;-><init>(Lcom/google/android/finsky/receivers/PackageMonitorReceiver;Ljava/lang/String;Z)V

    invoke-direct {p0, v6}, Lcom/google/android/finsky/receivers/PackageMonitorReceiver;->notifyListeners(Lcom/google/android/finsky/utils/ParameterizedRunnable;)V

    goto :goto_2a

    .end local v5           #replacing:Z
    :cond_50
    move v5, v6

    .line 95
    goto :goto_47

    .line 104
    .end local v3           #extras:Landroid/os/Bundle;
    :cond_52
    const-string v7, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_63

    .line 105
    new-instance v6, Lcom/google/android/finsky/receivers/PackageMonitorReceiver$3;

    invoke-direct {v6, p0, v4}, Lcom/google/android/finsky/receivers/PackageMonitorReceiver$3;-><init>(Lcom/google/android/finsky/receivers/PackageMonitorReceiver;Ljava/lang/String;)V

    invoke-direct {p0, v6}, Lcom/google/android/finsky/receivers/PackageMonitorReceiver;->notifyListeners(Lcom/google/android/finsky/utils/ParameterizedRunnable;)V

    goto :goto_2a

    .line 111
    :cond_63
    const-string v7, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_74

    .line 112
    new-instance v6, Lcom/google/android/finsky/receivers/PackageMonitorReceiver$4;

    invoke-direct {v6, p0, v4}, Lcom/google/android/finsky/receivers/PackageMonitorReceiver$4;-><init>(Lcom/google/android/finsky/receivers/PackageMonitorReceiver;Ljava/lang/String;)V

    invoke-direct {p0, v6}, Lcom/google/android/finsky/receivers/PackageMonitorReceiver;->notifyListeners(Lcom/google/android/finsky/utils/ParameterizedRunnable;)V

    goto :goto_2a

    .line 119
    :cond_74
    const-string v7, "Unhandled intent type action type: %s"

    new-array v8, v5, [Ljava/lang/Object;

    aput-object v0, v8, v6

    invoke-static {v7, v8}, Lcom/google/android/finsky/utils/FinskyLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2a
.end method
