.class public Lcom/android/samsungtest/SimpleFunctionTest/WLanRFTest;
.super Landroid/app/Activity;
.source "WLanRFTest.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private declared-synchronized HostRequestWIFIOFF(Landroid/content/Context;)V
    .registers 5
    .parameter "context"

    .prologue
    .line 61
    monitor-enter p0

    :try_start_1
    const-string v1, "WLanTest"

    const-string v2, "HostRequestWIFIOFF"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    const-string v1, "REQUEST TO MAKE WIFI OFF"

    const/4 v2, 0x0

    invoke-static {p1, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 67
    const-string v1, "wifi"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 68
    .local v0, mWifiManager:Landroid/net/wifi/WifiManager;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z
    :try_end_1e
    .catchall {:try_start_1 .. :try_end_1e} :catchall_20

    .line 70
    monitor-exit p0

    return-void

    .line 61
    .end local v0           #mWifiManager:Landroid/net/wifi/WifiManager;
    :catchall_20
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private declared-synchronized HostRequestWIFION(Landroid/content/Context;)V
    .registers 5
    .parameter "context"

    .prologue
    .line 49
    monitor-enter p0

    :try_start_1
    const-string v1, "WLanTest"

    const-string v2, "HostRequestWIFION"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    const-string v1, "REQUEST TO MAKE WIFI ON"

    const/4 v2, 0x0

    invoke-static {p1, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 55
    const-string v1, "wifi"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 57
    .local v0, mWifiManager:Landroid/net/wifi/WifiManager;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z
    :try_end_1e
    .catchall {:try_start_1 .. :try_end_1e} :catchall_20

    .line 58
    monitor-exit p0

    return-void

    .line 49
    .end local v0           #mWifiManager:Landroid/net/wifi/WifiManager;
    :catchall_20
    move-exception v1

    monitor-exit p0

    throw v1
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3
    .parameter "view"

    .prologue
    .line 36
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_14

    .line 45
    :goto_7
    return-void

    .line 39
    :pswitch_8
    sget-object v0, Lcom/android/samsungtest/SimpleFunctionTest/WLanRFTest;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/android/samsungtest/SimpleFunctionTest/WLanRFTest;->HostRequestWIFION(Landroid/content/Context;)V

    goto :goto_7

    .line 42
    :pswitch_e
    sget-object v0, Lcom/android/samsungtest/SimpleFunctionTest/WLanRFTest;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/android/samsungtest/SimpleFunctionTest/WLanRFTest;->HostRequestWIFIOFF(Landroid/content/Context;)V

    goto :goto_7

    .line 36
    :pswitch_data_14
    .packed-switch 0x7f0900ee
        :pswitch_8
        :pswitch_e
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 5
    .parameter "savedInstanceState"

    .prologue
    .line 22
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 23
    const v2, 0x7f030039

    invoke-virtual {p0, v2}, Lcom/android/samsungtest/SimpleFunctionTest/WLanRFTest;->setContentView(I)V

    .line 25
    sput-object p0, Lcom/android/samsungtest/SimpleFunctionTest/WLanRFTest;->mContext:Landroid/content/Context;

    .line 27
    const v2, 0x7f0900ee

    invoke-virtual {p0, v2}, Lcom/android/samsungtest/SimpleFunctionTest/WLanRFTest;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 28
    .local v1, mOnButton:Landroid/widget/Button;
    const v2, 0x7f0900ef

    invoke-virtual {p0, v2}, Lcom/android/samsungtest/SimpleFunctionTest/WLanRFTest;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 30
    .local v0, mOffButton:Landroid/widget/Button;
    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 31
    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 32
    return-void
.end method
