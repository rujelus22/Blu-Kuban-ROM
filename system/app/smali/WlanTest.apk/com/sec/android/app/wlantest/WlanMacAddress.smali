.class public Lcom/sec/android/app/wlantest/WlanMacAddress;
.super Landroid/app/Activity;
.source "WlanMacAddress.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "WlanMac"


# instance fields
.field private mWifiManager:Landroid/net/wifi/WifiManager;

.field macAddress:Ljava/lang/String;

.field r1:Landroid/widget/RadioButton;

.field r2:Landroid/widget/RadioButton;

.field public tv:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 25
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 29
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/wlantest/WlanMacAddress;->tv:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public getMacAddress()V
    .registers 8

    .prologue
    .line 141
    const/high16 v4, 0x7f05

    invoke-virtual {p0, v4}, Lcom/sec/android/app/wlantest/WlanMacAddress;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/sec/android/app/wlantest/WlanMacAddress;->tv:Landroid/widget/TextView;

    .line 142
    const-string v4, "wifi"

    invoke-virtual {p0, v4}, Lcom/sec/android/app/wlantest/WlanMacAddress;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/wifi/WifiManager;

    iput-object v4, p0, Lcom/sec/android/app/wlantest/WlanMacAddress;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 143
    iget-object v4, p0, Lcom/sec/android/app/wlantest/WlanMacAddress;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v2

    .line 144
    .local v2, initialWifiState:Z
    if-nez v2, :cond_4a

    .line 145
    iget-object v4, p0, Lcom/sec/android/app/wlantest/WlanMacAddress;->mWifiManager:Landroid/net/wifi/WifiManager;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 146
    const/4 v0, 0x0

    .line 148
    .local v0, i:I
    :goto_23
    const-string v4, "WlanMac"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "count : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .local v1, i:I
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    const-wide/16 v4, 0x64

    :try_start_3f
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_42
    .catch Ljava/lang/InterruptedException; {:try_start_3f .. :try_end_42} :catch_7a

    .line 150
    :goto_42
    iget-object v4, p0, Lcom/sec/android/app/wlantest/WlanMacAddress;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v4

    if-eqz v4, :cond_7c

    .line 153
    .end local v1           #i:I
    :cond_4a
    iget-object v4, p0, Lcom/sec/android/app/wlantest/WlanMacAddress;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v3

    .line 154
    .local v3, wifiInfo:Landroid/net/wifi/WifiInfo;
    const-string v4, "WlanMac"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "wifiInfo : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    if-nez v2, :cond_70

    iget-object v4, p0, Lcom/sec/android/app/wlantest/WlanMacAddress;->mWifiManager:Landroid/net/wifi/WifiManager;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 156
    :cond_70
    iget-object v4, p0, Lcom/sec/android/app/wlantest/WlanMacAddress;->tv:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 157
    return-void

    .line 149
    .end local v3           #wifiInfo:Landroid/net/wifi/WifiInfo;
    .restart local v1       #i:I
    :catch_7a
    move-exception v4

    goto :goto_42

    :cond_7c
    move v0, v1

    .end local v1           #i:I
    .restart local v0       #i:I
    goto :goto_23
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 11
    .parameter "savedInstanceState"

    .prologue
    .line 36
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 37
    const-string v6, "WIFITEST"

    const-string v7, "on create"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    const/high16 v6, 0x7f02

    invoke-virtual {p0, v6}, Lcom/sec/android/app/wlantest/WlanMacAddress;->setContentView(I)V

    .line 40
    const v6, 0x7f050002

    invoke-virtual {p0, v6}, Lcom/sec/android/app/wlantest/WlanMacAddress;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/RadioButton;

    iput-object v6, p0, Lcom/sec/android/app/wlantest/WlanMacAddress;->r1:Landroid/widget/RadioButton;

    .line 41
    const v6, 0x7f050003

    invoke-virtual {p0, v6}, Lcom/sec/android/app/wlantest/WlanMacAddress;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/RadioButton;

    iput-object v6, p0, Lcom/sec/android/app/wlantest/WlanMacAddress;->r2:Landroid/widget/RadioButton;

    .line 43
    const/4 v2, 0x0

    .line 44
    .local v2, in:Ljava/io/FileReader;
    const/4 v4, 0x0

    .line 47
    .local v4, read:Ljava/io/BufferedReader;
    :try_start_27
    new-instance v3, Ljava/io/FileReader;

    const-string v6, "/data/.psm.info"

    invoke-direct {v3, v6}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_2e
    .catchall {:try_start_27 .. :try_end_2e} :catchall_bc
    .catch Ljava/io/IOException; {:try_start_27 .. :try_end_2e} :catch_d6

    .line 48
    .end local v2           #in:Ljava/io/FileReader;
    .local v3, in:Ljava/io/FileReader;
    :try_start_2e
    new-instance v5, Ljava/io/BufferedReader;

    invoke-direct {v5, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_33
    .catchall {:try_start_2e .. :try_end_33} :catchall_cf
    .catch Ljava/io/IOException; {:try_start_2e .. :try_end_33} :catch_d8

    .line 51
    .end local v4           #read:Ljava/io/BufferedReader;
    .local v5, read:Ljava/io/BufferedReader;
    :try_start_33
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    .line 53
    .local v0, chk:Ljava/lang/String;
    const-string v6, "WIFITEST"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "power mode : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    const-string v6, "0"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_85

    .line 56
    iget-object v6, p0, Lcom/sec/android/app/wlantest/WlanMacAddress;->r1:Landroid/widget/RadioButton;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 57
    iget-object v6, p0, Lcom/sec/android/app/wlantest/WlanMacAddress;->r2:Landroid/widget/RadioButton;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/widget/RadioButton;->setChecked(Z)V
    :try_end_63
    .catchall {:try_start_33 .. :try_end_63} :catchall_d2
    .catch Ljava/io/IOException; {:try_start_33 .. :try_end_63} :catch_92

    .line 67
    :goto_63
    if-eqz v3, :cond_db

    .line 69
    :try_start_65
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V

    .line 70
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V
    :try_end_6b
    .catch Ljava/io/IOException; {:try_start_65 .. :try_end_6b} :catch_b1

    move-object v4, v5

    .end local v5           #read:Ljava/io/BufferedReader;
    .restart local v4       #read:Ljava/io/BufferedReader;
    move-object v2, v3

    .line 77
    .end local v0           #chk:Ljava/lang/String;
    .end local v3           #in:Ljava/io/FileReader;
    .restart local v2       #in:Ljava/io/FileReader;
    :cond_6d
    :goto_6d
    iget-object v6, p0, Lcom/sec/android/app/wlantest/WlanMacAddress;->r1:Landroid/widget/RadioButton;

    new-instance v7, Lcom/sec/android/app/wlantest/WlanMacAddress$1;

    invoke-direct {v7, p0}, Lcom/sec/android/app/wlantest/WlanMacAddress$1;-><init>(Lcom/sec/android/app/wlantest/WlanMacAddress;)V

    invoke-virtual {v6, v7}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 107
    iget-object v6, p0, Lcom/sec/android/app/wlantest/WlanMacAddress;->r2:Landroid/widget/RadioButton;

    new-instance v7, Lcom/sec/android/app/wlantest/WlanMacAddress$2;

    invoke-direct {v7, p0}, Lcom/sec/android/app/wlantest/WlanMacAddress$2;-><init>(Lcom/sec/android/app/wlantest/WlanMacAddress;)V

    invoke-virtual {v6, v7}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 137
    invoke-virtual {p0}, Lcom/sec/android/app/wlantest/WlanMacAddress;->getMacAddress()V

    .line 138
    return-void

    .line 59
    .end local v2           #in:Ljava/io/FileReader;
    .end local v4           #read:Ljava/io/BufferedReader;
    .restart local v0       #chk:Ljava/lang/String;
    .restart local v3       #in:Ljava/io/FileReader;
    .restart local v5       #read:Ljava/io/BufferedReader;
    :cond_85
    :try_start_85
    iget-object v6, p0, Lcom/sec/android/app/wlantest/WlanMacAddress;->r1:Landroid/widget/RadioButton;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 60
    iget-object v6, p0, Lcom/sec/android/app/wlantest/WlanMacAddress;->r2:Landroid/widget/RadioButton;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/RadioButton;->setChecked(Z)V
    :try_end_91
    .catchall {:try_start_85 .. :try_end_91} :catchall_d2
    .catch Ljava/io/IOException; {:try_start_85 .. :try_end_91} :catch_92

    goto :goto_63

    .line 62
    .end local v0           #chk:Ljava/lang/String;
    :catch_92
    move-exception v1

    move-object v4, v5

    .end local v5           #read:Ljava/io/BufferedReader;
    .restart local v4       #read:Ljava/io/BufferedReader;
    move-object v2, v3

    .line 63
    .end local v3           #in:Ljava/io/FileReader;
    .local v1, e:Ljava/io/IOException;
    .restart local v2       #in:Ljava/io/FileReader;
    :goto_95
    :try_start_95
    const-string v6, "WlanMac"

    const-string v7, "File open error"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_9f
    .catchall {:try_start_95 .. :try_end_9f} :catchall_bc

    .line 67
    if-eqz v2, :cond_6d

    .line 69
    :try_start_a1
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V

    .line 70
    invoke-virtual {v2}, Ljava/io/FileReader;->close()V
    :try_end_a7
    .catch Ljava/io/IOException; {:try_start_a1 .. :try_end_a7} :catch_a8

    goto :goto_6d

    .line 71
    :catch_a8
    move-exception v1

    .line 72
    const-string v6, "WlanMac"

    const-string v7, "File Close error"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6d

    .line 71
    .end local v1           #e:Ljava/io/IOException;
    .end local v2           #in:Ljava/io/FileReader;
    .end local v4           #read:Ljava/io/BufferedReader;
    .restart local v0       #chk:Ljava/lang/String;
    .restart local v3       #in:Ljava/io/FileReader;
    .restart local v5       #read:Ljava/io/BufferedReader;
    :catch_b1
    move-exception v1

    .line 72
    .restart local v1       #e:Ljava/io/IOException;
    const-string v6, "WlanMac"

    const-string v7, "File Close error"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v4, v5

    .end local v5           #read:Ljava/io/BufferedReader;
    .restart local v4       #read:Ljava/io/BufferedReader;
    move-object v2, v3

    .line 73
    .end local v3           #in:Ljava/io/FileReader;
    .restart local v2       #in:Ljava/io/FileReader;
    goto :goto_6d

    .line 67
    .end local v0           #chk:Ljava/lang/String;
    .end local v1           #e:Ljava/io/IOException;
    :catchall_bc
    move-exception v6

    :goto_bd
    if-eqz v2, :cond_c5

    .line 69
    :try_start_bf
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V

    .line 70
    invoke-virtual {v2}, Ljava/io/FileReader;->close()V
    :try_end_c5
    .catch Ljava/io/IOException; {:try_start_bf .. :try_end_c5} :catch_c6

    .line 73
    :cond_c5
    :goto_c5
    throw v6

    .line 71
    :catch_c6
    move-exception v1

    .line 72
    .restart local v1       #e:Ljava/io/IOException;
    const-string v7, "WlanMac"

    const-string v8, "File Close error"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c5

    .line 67
    .end local v1           #e:Ljava/io/IOException;
    .end local v2           #in:Ljava/io/FileReader;
    .restart local v3       #in:Ljava/io/FileReader;
    :catchall_cf
    move-exception v6

    move-object v2, v3

    .end local v3           #in:Ljava/io/FileReader;
    .restart local v2       #in:Ljava/io/FileReader;
    goto :goto_bd

    .end local v2           #in:Ljava/io/FileReader;
    .end local v4           #read:Ljava/io/BufferedReader;
    .restart local v3       #in:Ljava/io/FileReader;
    .restart local v5       #read:Ljava/io/BufferedReader;
    :catchall_d2
    move-exception v6

    move-object v4, v5

    .end local v5           #read:Ljava/io/BufferedReader;
    .restart local v4       #read:Ljava/io/BufferedReader;
    move-object v2, v3

    .end local v3           #in:Ljava/io/FileReader;
    .restart local v2       #in:Ljava/io/FileReader;
    goto :goto_bd

    .line 62
    :catch_d6
    move-exception v1

    goto :goto_95

    .end local v2           #in:Ljava/io/FileReader;
    .restart local v3       #in:Ljava/io/FileReader;
    :catch_d8
    move-exception v1

    move-object v2, v3

    .end local v3           #in:Ljava/io/FileReader;
    .restart local v2       #in:Ljava/io/FileReader;
    goto :goto_95

    .end local v2           #in:Ljava/io/FileReader;
    .end local v4           #read:Ljava/io/BufferedReader;
    .restart local v0       #chk:Ljava/lang/String;
    .restart local v3       #in:Ljava/io/FileReader;
    .restart local v5       #read:Ljava/io/BufferedReader;
    :cond_db
    move-object v4, v5

    .end local v5           #read:Ljava/io/BufferedReader;
    .restart local v4       #read:Ljava/io/BufferedReader;
    move-object v2, v3

    .end local v3           #in:Ljava/io/FileReader;
    .restart local v2       #in:Ljava/io/FileReader;
    goto :goto_6d
.end method
