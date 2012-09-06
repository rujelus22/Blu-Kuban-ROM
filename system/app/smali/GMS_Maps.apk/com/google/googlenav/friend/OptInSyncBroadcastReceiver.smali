.class public Lcom/google/googlenav/friend/OptInSyncBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 29
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;)V
    .registers 4
    .parameter

    .prologue
    .line 75
    const/4 v0, 0x0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "identity"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v2, 0x1000

    invoke-static {p0, v0, v1, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 77
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.google.googlenav.friend.OptInSyncBroadcastReceiver.ACTION_SET_OPT_IN"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "sender"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v0

    .line 79
    const-string v1, "com.google.googlenav.friend.permission.OPT_IN"

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 80
    return-void
.end method

.method public static b(Landroid/content/Context;)Lcom/google/googlenav/friend/OptInSyncBroadcastReceiver;
    .registers 5
    .parameter

    .prologue
    .line 83
    new-instance v0, Lcom/google/googlenav/friend/OptInSyncBroadcastReceiver;

    invoke-direct {v0}, Lcom/google/googlenav/friend/OptInSyncBroadcastReceiver;-><init>()V

    .line 87
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "com.google.googlenav.friend.OptInSyncBroadcastReceiver.ACTION_SET_OPT_IN"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v2, "com.google.googlenav.friend.permission.OPT_IN"

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 91
    return-object v0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 43
    const-string v0, "sender"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    .line 44
    if-nez v0, :cond_14

    const/4 v0, 0x0

    .line 45
    :goto_b
    const-string v1, "com.google.android.apps.maps"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_19

    .line 69
    :cond_13
    :goto_13
    return-void

    .line 44
    :cond_14
    invoke-virtual {v0}, Landroid/app/PendingIntent;->getTargetPackage()Ljava/lang/String;

    move-result-object v0

    goto :goto_b

    .line 51
    :cond_19
    const-string v0, "com.google.googlenav.friend.OptInSyncBroadcastReceiver.ACTION_SET_OPT_IN"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 53
    invoke-static {}, Lcom/google/googlenav/common/Config;->a()Lcom/google/googlenav/common/Config;

    move-result-object v0

    .line 54
    if-eqz v0, :cond_13

    invoke-virtual {v0}, Lcom/google/googlenav/common/Config;->m()Lcom/google/googlenav/common/io/j;

    move-result-object v1

    if-eqz v1, :cond_13

    .line 58
    invoke-static {}, Lcom/google/googlenav/friend/ae;->c()Ljava/lang/String;

    move-result-object v1

    .line 59
    invoke-static {}, Lcom/google/googlenav/friend/ae;->d()I

    move-result v2

    .line 60
    invoke-static {v2}, Lcom/google/googlenav/common/util/e;->a(I)[B

    move-result-object v2

    .line 61
    invoke-virtual {v0}, Lcom/google/googlenav/common/Config;->m()Lcom/google/googlenav/common/io/j;

    move-result-object v0

    .line 62
    invoke-interface {v0, v1, v2}, Lcom/google/googlenav/common/io/j;->a(Ljava/lang/String;[B)Z

    .line 63
    const/4 v1, 0x1

    invoke-static {v1}, Lcom/google/googlenav/friend/au;->a(Z)Z

    .line 64
    invoke-interface {v0}, Lcom/google/googlenav/common/io/j;->a()V

    .line 65
    invoke-static {}, Lcom/google/googlenav/friend/aB;->a()V

    goto :goto_13
.end method
