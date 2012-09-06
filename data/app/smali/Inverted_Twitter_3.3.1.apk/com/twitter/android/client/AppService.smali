.class public Lcom/twitter/android/client/AppService;
.super Landroid/app/Service;


# static fields
.field private static final a:Ljava/util/HashMap;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/twitter/android/client/AppService;->a:Ljava/util/HashMap;

    const-string v1, "com.twitter.android.poll.alarm"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 3

    const/4 v0, 0x0

    return-object v0
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .registers 8

    const/4 v1, 0x0

    sget-object v0, Lcom/twitter/android/client/AppService;->a:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_1b

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_13
    packed-switch v0, :pswitch_data_44

    :cond_16
    :goto_16
    invoke-virtual {p0, p3}, Lcom/twitter/android/client/AppService;->stopSelf(I)V

    const/4 v0, 0x3

    return v0

    :cond_1b
    move v0, v1

    goto :goto_13

    :pswitch_1d
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v2, "show_notif"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-static {p0}, Lcom/twitter/android/platform/C2DMService;->a(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_33

    const-string v2, "messages"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_33
    const-string v2, "account_name"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/twitter/android/platform/j;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/accounts/Account;

    move-result-object v2

    if-eqz v2, :cond_16

    invoke-static {p0, v0, v1, v2}, Lcom/twitter/android/platform/TwitterDataSyncService;->a(Landroid/content/Context;Landroid/os/Bundle;ZLandroid/accounts/Account;)V

    goto :goto_16

    nop

    :pswitch_data_44
    .packed-switch 0x1
        :pswitch_1d
    .end packed-switch
.end method
