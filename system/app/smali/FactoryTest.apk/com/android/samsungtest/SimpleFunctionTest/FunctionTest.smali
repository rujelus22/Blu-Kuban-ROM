.class public Lcom/android/samsungtest/SimpleFunctionTest/FunctionTest;
.super Landroid/app/Activity;
.source "FunctionTest.java"


# static fields
.field private static mRingtone:Landroid/media/Ringtone;

.field public static sft_status:Z


# instance fields
.field private AFTER_BT_OFF_BT_ON_DURATION:J

.field private final BT_ON_AFTER_BT_DISCOVERABLE_TIME:I

.field private BbatteryAuthTest:Landroid/widget/Button;

.field private IS_PASS_LOOPBACK_SPK_MODE:Z

.field private IS_PASS_LOOPBACK_SPK_MODE_RCV:Z

.field private final LOG_TAG:Ljava/lang/String;

.field private final SIMPLE_FUNCTION_TEST_STATUS:Ljava/lang/String;

.field private audioManager:Landroid/media/AudioManager;

.field private btAdapter:Landroid/bluetooth/BluetoothAdapter;

.field factory_test_result:Ljava/lang/String;

.field public localTestResultCall:Z

.field public localTestResultEarKey:Z

.field public localTestResultMp3:Z

.field public localTestResultSimpletest:Z

.field public localTestResultTsp:Z

.field private mBTRFButton:Landroid/widget/Button;

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mBroadcastReceiverforSDcard:Landroid/content/BroadcastReceiver;

.field private mCurrKey:I

.field private mCurrTime:J

.field private mHandler:Landroid/os/Handler;

.field private mHandlerBTOn:Landroid/os/Handler;

.field private mPrevKey:I

.field private mPrevTime:J

.field private mSecondaryButton:Landroid/widget/Button;

.field mSecondaryButtonHandler:Landroid/view/View$OnClickListener;

.field private off:Z

.field private on:Z

.field pm:Landroid/os/PowerManager;

.field private str_auth_battery_locate:Ljava/lang/String;

.field test_index:I

.field wl:Landroid/os/PowerManager$WakeLock;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 62
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 104
    const-string v0, "FunctionTest"

    iput-object v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/FunctionTest;->LOG_TAG:Ljava/lang/String;

    .line 109
    iput-boolean v1, p0, Lcom/android/samsungtest/SimpleFunctionTest/FunctionTest;->IS_PASS_LOOPBACK_SPK_MODE:Z

    .line 112
    iput-boolean v1, p0, Lcom/android/samsungtest/SimpleFunctionTest/FunctionTest;->IS_PASS_LOOPBACK_SPK_MODE_RCV:Z

    .line 113
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/FunctionTest;->on:Z

    .line 114
    iput-boolean v1, p0, Lcom/android/samsungtest/SimpleFunctionTest/FunctionTest;->off:Z

    .line 137
    const-string v0, "START"

    iput-object v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/FunctionTest;->SIMPLE_FUNCTION_TEST_STATUS:Ljava/lang/String;

    .line 138
    const-wide/16 v0, 0xbb8

    iput-wide v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/FunctionTest;->AFTER_BT_OFF_BT_ON_DURATION:J

    .line 139
    const/16 v0, 0x2710

    iput v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/FunctionTest;->BT_ON_AFTER_BT_DISCOVERABLE_TIME:I

    .line 140
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/FunctionTest;->mHandlerBTOn:Landroid/os/Handler;

    .line 141
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/FunctionTest;->mHandler:Landroid/os/Handler;

    .line 147
    const-string v0, "sys/class/power_supply/battery/auth_battery"

    iput-object v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/FunctionTest;->str_auth_battery_locate:Ljava/lang/String;

    .line 990
    new-instance v0, Lcom/android/samsungtest/SimpleFunctionTest/FunctionTest$15;

    invoke-direct {v0, p0}, Lcom/android/samsungtest/SimpleFunctionTest/FunctionTest$15;-><init>(Lcom/android/samsungtest/SimpleFunctionTest/FunctionTest;)V

    iput-object v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/FunctionTest;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 1020
    new-instance v0, Lcom/android/samsungtest/SimpleFunctionTest/FunctionTest$16;

    invoke-direct {v0, p0}, Lcom/android/samsungtest/SimpleFunctionTest/FunctionTest$16;-><init>(Lcom/android/samsungtest/SimpleFunctionTest/FunctionTest;)V

    iput-object v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/FunctionTest;->mBroadcastReceiverforSDcard:Landroid/content/BroadcastReceiver;

    .line 1133
    new-instance v0, Lcom/android/samsungtest/SimpleFunctionTest/FunctionTest$19;

    invoke-direct {v0, p0}, Lcom/android/samsungtest/SimpleFunctionTest/FunctionTest$19;-><init>(Lcom/android/samsungtest/SimpleFunctionTest/FunctionTest;)V

    iput-object v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/FunctionTest;->mSecondaryButtonHandler:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/samsungtest/SimpleFunctionTest/FunctionTest;Z)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 62
    invoke-direct {p0, p1}, Lcom/android/samsungtest/SimpleFunctionTest/FunctionTest;->simpleFunctionTestStart(Z)V

    return-void
.end method

.method static synthetic access$100()Landroid/media/Ringtone;
    .registers 1

    .prologue
    .line 62
    sget-object v0, Lcom/android/samsungtest/SimpleFunctionTest/FunctionTest;->mRingtone:Landroid/media/Ringtone;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/samsungtest/SimpleFunctionTest/FunctionTest;)Landroid/media/AudioManager;
    .registers 2
    .parameter "x0"

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/FunctionTest;->audioManager:Landroid/media/AudioManager;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/samsungtest/SimpleFunctionTest/FunctionTest;)Landroid/bluetooth/BluetoothAdapter;
    .registers 2
    .parameter "x0"

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/FunctionTest;->btAdapter:Landroid/bluetooth/BluetoothAdapter;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/samsungtest/SimpleFunctionTest/FunctionTest;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/android/samsungtest/SimpleFunctionTest/FunctionTest;->setOnDiscoverable()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/samsungtest/SimpleFunctionTest/FunctionTest;)Landroid/widget/Button;
    .registers 2
    .parameter "x0"

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/FunctionTest;->mBTRFButton:Landroid/widget/Button;

    return-object v0
.end method

.method private getIntFromFile(Ljava/lang/String;)I
    .registers 10
    .parameter "path"

    .prologue
    .line 759
    const/4 v1, 0x0

    .line 761
    .local v1, in:Ljava/io/BufferedReader;
    :try_start_1
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/FileReader;

    invoke-direct {v5, p1}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    const/16 v6, 0x1000

    invoke-direct {v2, v5, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_d} :catch_19

    .line 764
    .end local v1           #in:Ljava/io/BufferedReader;
    .local v2, in:Ljava/io/BufferedReader;
    :try_start_d
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    .line 766
    .local v4, s:Ljava/lang/String;
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    .line 768
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_17} :catch_34

    move-result v3

    .line 775
    .end local v2           #in:Ljava/io/BufferedReader;
    .end local v4           #s:Ljava/lang/String;
    .local v3, ret:I
    :goto_18
    return v3

    .line 770
    .end local v3           #ret:I
    .restart local v1       #in:Ljava/io/BufferedReader;
    :catch_19
    move-exception v0

    .line 771
    .local v0, e:Ljava/lang/Exception;
    :goto_1a
    const-string v5, "FunctionTest"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Can\'t open "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 772
    const/4 v3, 0x0

    .restart local v3       #ret:I
    goto :goto_18

    .line 770
    .end local v0           #e:Ljava/lang/Exception;
    .end local v1           #in:Ljava/io/BufferedReader;
    .end local v3           #ret:I
    .restart local v2       #in:Ljava/io/BufferedReader;
    :catch_34
    move-exception v0

    move-object v1, v2

    .end local v2           #in:Ljava/io/BufferedReader;
    .restart local v1       #in:Ljava/io/BufferedReader;
    goto :goto_1a
.end method

.method private setOnDiscoverable()V
    .registers 5

    .prologue
    .line 1120
    iget-object v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/FunctionTest;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/samsungtest/SimpleFunctionTest/FunctionTest$18;

    invoke-direct {v1, p0}, Lcom/android/samsungtest/SimpleFunctionTest/FunctionTest$18;-><init>(Lcom/android/samsungtest/SimpleFunctionTest/FunctionTest;)V

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1129
    return-void
.end method

.method private simpleFunctionTestStart(Z)V
    .registers 4
    .parameter

    .prologue
    .line 1065
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1066
    const-class v1, Lcom/android/samsungtest/SimpleFunctionTest/SimpleFunctionTest;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1067
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1068
    const-string v1, "START"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1069
    const/16 v1, 0xd

    invoke-virtual {p0, v0, v1}, Lcom/android/samsungtest/SimpleFunctionTest/FunctionTest;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1070
    return-void
.end method


# virtual methods
.method public BackKeyCheck()Z
    .registers 5

    .prologue
    .line 970
    iget v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/FunctionTest;->mPrevKey:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_25

    iget-wide v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/FunctionTest;->mPrevTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_25

    .line 971
    iget-wide v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/FunctionTest;->mCurrTime:J

    iget-wide v2, p0, Lcom/android/samsungtest/SimpleFunctionTest/FunctionTest;->mPrevTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x12c

    cmp-long v0, v0, v2

    if-lez v0, :cond_25

    iget-wide v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/FunctionTest;->mCurrTime:J

    iget-wide v2, p0, Lcom/android/samsungtest/SimpleFunctionTest/FunctionTest;->mPrevTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x5dc

    cmp-long v0, v0, v2

    if-gez v0, :cond_25

    .line 972
    const/4 v0, 0x1

    .line 978
    :goto_24
    return v0

    .line 976
    :cond_25
    iget v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/FunctionTest;->mCurrKey:I

    iput v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/FunctionTest;->mPrevKey:I

    .line 977
    iget-wide v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/FunctionTest;->mCurrTime:J

    iput-wide v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/FunctionTest;->mPrevTime:J

    .line 978
    const/4 v0, 0x0

    goto :goto_24
.end method

.method public batteryAuthTest()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 742
    const-string v0, "FunctionTest"

    const-string v1, "batteryAuthTest()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 743
    iget-object v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/FunctionTest;->str_auth_battery_locate:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/samsungtest/SimpleFunctionTest/FunctionTest;->getIntFromFile(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_22

    .line 745
    const-string v0, "Pass"

    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 746
    iget-object v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/FunctionTest;->BbatteryAuthTest:Landroid/widget/Button;

    const v1, -0xff0100

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 753
    :goto_21
    return-void

    .line 750
    :cond_22
    const-string v0, "Fail"

    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 751
    iget-object v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/FunctionTest;->BbatteryAuthTest:Landroid/widget/Button;

    const/high16 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    goto :goto_21
.end method

.method public bluetoothTestStart()V
    .registers 5

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1073
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/FunctionTest;->btAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 1074
    iget-object v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/FunctionTest;->btAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-nez v0, :cond_14

    .line 1075
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Platform does not support Bluetooth"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1078
    :cond_14
    iget-object v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/FunctionTest;->btAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_5d

    .line 1080
    const-string v0, "Bluetooth\'state is changed to Off!! wait for seconds"

    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1081
    const-string v0, "BT\'s visibility off"

    const-string v1, "BT\'s visibility is changed off"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1082
    iget-object v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/FunctionTest;->btAdapter:Landroid/bluetooth/BluetoothAdapter;

    const/16 v1, 0x15

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothAdapter;->setScanMode(I)Z

    .line 1084
    const-string v0, "BT Start"

    const-string v1, "So, BT is disabled"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1085
    iget-object v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/FunctionTest;->btAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->disable()Z

    .line 1089
    const-string v0, "bluetooth_settings"

    invoke-virtual {p0, v0, v2}, Lcom/android/samsungtest/SimpleFunctionTest/FunctionTest;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1090
    const-string v1, "discoverable_end_timestamp"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 1091
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1092
    const-string v0, "Set BT Timer"

    const-string v1, "BT discoverable time off"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1108
    :goto_5c
    return-void

    .line 1096
    :cond_5d
    const-string v0, "BT Start"

    const-string v1, "So, BT is enabled"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1097
    const-string v0, "Bluetooth\'state is changed to On!! wait for 10 seconds"

    invoke-static {p0, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1098
    const-string v0, "After 10 seconds, My devices is can be discoverable!"

    invoke-static {p0, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1100
    iget-object v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/FunctionTest;->mHandlerBTOn:Landroid/os/Handler;

    new-instance v1, Lcom/android/samsungtest/SimpleFunctionTest/FunctionTest$17;

    invoke-direct {v1, p0}, Lcom/android/samsungtest/SimpleFunctionTest/FunctionTest$17;-><init>(Lcom/android/samsungtest/SimpleFunctionTest/FunctionTest;)V

    iget-wide v2, p0, Lcom/android/samsungtest/SimpleFunctionTest/FunctionTest;->AFTER_BT_OFF_BT_ON_DURATION:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_5c
.end method

.method public cameraTest()V
    .registers 5

    .prologue
    const/4 v3, 0x1

    .line 806
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/samsungtest/camera/Camera;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 807
    const-string v1, "camera_id"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 808
    const-string v1, "ommision_test"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 809
    invoke-virtual {p0, v0, v3}, Lcom/android/samsungtest/SimpleFunctionTest/FunctionTest;->startActivityForResult(Landroid/content/Intent;I)V

    .line 811
    return-void
.end method

.method public changeLocalTestResult(I)V
    .registers 5
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 1046
    const-string v0, "FunctionTest"

    const-string v1, "changeLocalTestResult"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1047
    const/16 v0, 0x15

    if-ne p1, v0, :cond_e

    iput-boolean v2, p0, Lcom/android/samsungtest/SimpleFunctionTest/FunctionTest;->localTestResultSimpletest:Z

    .line 1048
    :cond_e
    const/16 v0, 0x16

    if-ne p1, v0, :cond_14

    iput-boolean v2, p0, Lcom/android/samsungtest/SimpleFunctionTest/FunctionTest;->localTestResultCall:Z

    .line 1049
    :cond_14
    const/16 v0, 0x1b

    if-ne p1, v0, :cond_1a

    iput-boolean v2, p0, Lcom/android/samsungtest/SimpleFunctionTest/FunctionTest;->localTestResultMp3:Z

    .line 1050
    :cond_1a
    const/16 v0, 0x21

    if-ne p1, v0, :cond_20

    iput-boolean v2, p0, Lcom/android/samsungtest/SimpleFunctionTest/FunctionTest;->localTestResultEarKey:Z

    .line 1051
    :cond_20
    const/16 v0, 0x22

    if-ne p1, v0, :cond_26

    iput-boolean v2, p0, Lcom/android/samsungtest/SimpleFunctionTest/FunctionTest;->localTestResultTsp:Z

    .line 1052
    :cond_26
    return-void
.end method

.method public checkSdCard()Z
    .registers 3

    .prologue
    .line 913
    new-instance v0, Ljava/io/File;

    const-string v1, "/sdcard/sd/1kHz.mp3"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 914
    .local v0, file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    return v1
.end method

.method public checkSdCardMounted()V
    .registers 6

    .prologue
    .line 919
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    .line 920
    .local v1, sdcardMountstate:Ljava/lang/String;
    const-string v2, "FunctionTest"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "checkSdCardMounted : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 921
    const-string v2, "mounted"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_42

    .line 922
    const v2, 0x7f090042

    invoke-virtual {p0, v2}, Lcom/android/samsungtest/SimpleFunctionTest/FunctionTest;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 923
    .local v0, sd_card:Landroid/widget/Button;
    invoke-virtual {p0}, Lcom/android/samsungtest/SimpleFunctionTest/FunctionTest;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070002

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setTextColor(I)V

    .line 924
    const-string v2, "24"

    const-string v3, "P"

    invoke-virtual {p0, v2, v3}, Lcom/android/samsungtest/SimpleFunctionTest/FunctionTest;->sendTestResultToRil(Ljava/lang/String;Ljava/lang/String;)V

    .line 927
    .end local v0           #sd_card:Landroid/widget/Button;
    :cond_42
    return-void
.end method

.method public loopbackTest()V
    .registers 3

    .prologue
    .line 848
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/FunctionTest;->IS_PASS_LOOPBACK_SPK_MODE:Z

    .line 849
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/samsungtest/SimpleFunctionTest/LoopbackTest;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 850
    const/4 v1, 0x7

    invoke-virtual {p0, v0, v1}, Lcom/android/samsungtest/SimpleFunctionTest/FunctionTest;->startActivityForResult(Landroid/content/Intent;I)V

    .line 851
    return-void
.end method

.method public loudSpkLoopbackTest()V
    .registers 3

    .prologue
    .line 854
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/FunctionTest;->IS_PASS_LOOPBACK_SPK_MODE:Z

    .line 855
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/samsungtest/SimpleFunctionTest/LoudSpkLoopbackTest;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 856
    const/16 v1, 0x8

    invoke-virtual {p0, v0, v1}, Lcom/android/samsungtest/SimpleFunctionTest/FunctionTest;->startActivityForResult(Landroid/content/Intent;I)V

    .line 857
    return-void
.end method

.method public makeFile()V
    .registers 7

    .prologue
    .line 888
    const/4 v3, 0x0

    .line 889
    .local v3, out:Ljava/io/OutputStream;
    const/4 v2, 0x0

    .line 891
    .local v2, in:Ljava/io/InputStream;
    :try_start_2
    const-string v4, "mp3_1khz.mp3"

    const/4 v5, 0x1

    invoke-virtual {p0, v4, v5}, Lcom/android/samsungtest/SimpleFunctionTest/FunctionTest;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v3

    .line 892
    invoke-virtual {p0}, Lcom/android/samsungtest/SimpleFunctionTest/FunctionTest;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f050008

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v2

    .line 893
    const/16 v4, 0x7d0

    new-array v0, v4, [B

    .line 895
    .local v0, buffer:[B
    :goto_18
    invoke-virtual {v2, v0}, Ljava/io/InputStream;->read([B)I

    move-result v4

    if-lez v4, :cond_39

    .line 896
    invoke-virtual {v3, v0}, Ljava/io/OutputStream;->write([B)V
    :try_end_21
    .catchall {:try_start_2 .. :try_end_21} :catchall_77
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_21} :catch_22
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_2 .. :try_end_21} :catch_49
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_21} :catch_60

    goto :goto_18

    .line 900
    .end local v0           #buffer:[B
    :catch_22
    move-exception v1

    .line 901
    .local v1, e:Ljava/io/FileNotFoundException;
    :try_start_23
    const-string v4, "FunctionTest"

    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2c
    .catchall {:try_start_23 .. :try_end_2c} :catchall_77

    .line 907
    if-eqz v3, :cond_32

    :try_start_2e
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_31
    .catch Ljava/io/IOException; {:try_start_2e .. :try_end_31} :catch_89

    const/4 v3, 0x0

    .line 908
    :cond_32
    :goto_32
    if-eqz v2, :cond_38

    :try_start_34
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_37
    .catch Ljava/io/IOException; {:try_start_34 .. :try_end_37} :catch_8b

    const/4 v2, 0x0

    .line 910
    .end local v1           #e:Ljava/io/FileNotFoundException;
    :cond_38
    :goto_38
    return-void

    .line 898
    .restart local v0       #buffer:[B
    :cond_39
    :try_start_39
    invoke-virtual {v3}, Ljava/io/OutputStream;->flush()V
    :try_end_3c
    .catchall {:try_start_39 .. :try_end_3c} :catchall_77
    .catch Ljava/io/FileNotFoundException; {:try_start_39 .. :try_end_3c} :catch_22
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_39 .. :try_end_3c} :catch_49
    .catch Ljava/io/IOException; {:try_start_39 .. :try_end_3c} :catch_60

    .line 907
    if-eqz v3, :cond_42

    :try_start_3e
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_41
    .catch Ljava/io/IOException; {:try_start_3e .. :try_end_41} :catch_85

    const/4 v3, 0x0

    .line 908
    :cond_42
    :goto_42
    if-eqz v2, :cond_38

    :try_start_44
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_47
    .catch Ljava/io/IOException; {:try_start_44 .. :try_end_47} :catch_87

    const/4 v2, 0x0

    goto :goto_38

    .line 902
    .end local v0           #buffer:[B
    :catch_49
    move-exception v1

    .line 903
    .local v1, e:Landroid/content/res/Resources$NotFoundException;
    :try_start_4a
    const-string v4, "FunctionTest"

    invoke-virtual {v1}, Landroid/content/res/Resources$NotFoundException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_53
    .catchall {:try_start_4a .. :try_end_53} :catchall_77

    .line 907
    if-eqz v3, :cond_59

    :try_start_55
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_58
    .catch Ljava/io/IOException; {:try_start_55 .. :try_end_58} :catch_8d

    const/4 v3, 0x0

    .line 908
    :cond_59
    :goto_59
    if-eqz v2, :cond_38

    :try_start_5b
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_5e
    .catch Ljava/io/IOException; {:try_start_5b .. :try_end_5e} :catch_8f

    const/4 v2, 0x0

    goto :goto_38

    .line 904
    .end local v1           #e:Landroid/content/res/Resources$NotFoundException;
    :catch_60
    move-exception v1

    .line 905
    .local v1, e:Ljava/io/IOException;
    :try_start_61
    const-string v4, "FunctionTest"

    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6a
    .catchall {:try_start_61 .. :try_end_6a} :catchall_77

    .line 907
    if-eqz v3, :cond_70

    :try_start_6c
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_6f
    .catch Ljava/io/IOException; {:try_start_6c .. :try_end_6f} :catch_91

    const/4 v3, 0x0

    .line 908
    :cond_70
    :goto_70
    if-eqz v2, :cond_38

    :try_start_72
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_75
    .catch Ljava/io/IOException; {:try_start_72 .. :try_end_75} :catch_93

    const/4 v2, 0x0

    goto :goto_38

    .line 907
    .end local v1           #e:Ljava/io/IOException;
    :catchall_77
    move-exception v4

    if-eqz v3, :cond_7e

    :try_start_7a
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_7d
    .catch Ljava/io/IOException; {:try_start_7a .. :try_end_7d} :catch_95

    const/4 v3, 0x0

    .line 908
    :cond_7e
    :goto_7e
    if-eqz v2, :cond_84

    :try_start_80
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_83
    .catch Ljava/io/IOException; {:try_start_80 .. :try_end_83} :catch_97

    const/4 v2, 0x0

    :cond_84
    :goto_84
    throw v4

    .line 907
    .restart local v0       #buffer:[B
    :catch_85
    move-exception v4

    goto :goto_42

    .line 908
    :catch_87
    move-exception v4

    goto :goto_38

    .line 907
    .end local v0           #buffer:[B
    .local v1, e:Ljava/io/FileNotFoundException;
    :catch_89
    move-exception v4

    goto :goto_32

    .line 908
    :catch_8b
    move-exception v4

    goto :goto_38

    .line 907
    .local v1, e:Landroid/content/res/Resources$NotFoundException;
    :catch_8d
    move-exception v4

    goto :goto_59

    .line 908
    :catch_8f
    move-exception v4

    goto :goto_38

    .line 907
    .local v1, e:Ljava/io/IOException;
    :catch_91
    move-exception v4

    goto :goto_70

    .line 908
    :catch_93
    move-exception v4

    goto :goto_38

    .line 907
    .end local v1           #e:Ljava/io/IOException;
    :catch_95
    move-exception v5

    goto :goto_7e

    .line 908
    :catch_97
    move-exception v5

    goto :goto_84
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 11
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "intent"

    .prologue
    const/16 v6, 0x22

    const/16 v5, 0x16

    const/16 v4, 0x8

    const/4 v3, 0x7

    .line 689
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 690
    const-string v0, "FunctionTest"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RequestCode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "ResultCode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Intent:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 691
    if-nez p2, :cond_4b

    .line 692
    const-string v0, "FunctionTest"

    const-string v1, "Finished by Result code"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 695
    :cond_4b
    packed-switch p1, :pswitch_data_a6

    .line 739
    :cond_4e
    :goto_4e
    :pswitch_4e
    return-void

    .line 697
    :pswitch_4f
    const/16 v0, 0x24

    if-ne p2, v0, :cond_57

    .line 698
    invoke-virtual {p0, v3}, Lcom/android/samsungtest/SimpleFunctionTest/FunctionTest;->finishActivity(I)V

    goto :goto_4e

    .line 700
    :cond_57
    const/16 v0, 0x2a

    if-ne p2, v0, :cond_64

    .line 701
    invoke-virtual {p0, v3}, Lcom/android/samsungtest/SimpleFunctionTest/FunctionTest;->finishActivity(I)V

    .line 702
    const/16 v0, 0x21

    invoke-virtual {p0, v0}, Lcom/android/samsungtest/SimpleFunctionTest/FunctionTest;->changeLocalTestResult(I)V

    goto :goto_4e

    .line 704
    :cond_64
    const/16 v0, 0x2b

    if-ne p2, v0, :cond_4e

    .line 705
    invoke-virtual {p0, v3}, Lcom/android/samsungtest/SimpleFunctionTest/FunctionTest;->finishActivity(I)V

    .line 706
    invoke-virtual {p0}, Lcom/android/samsungtest/SimpleFunctionTest/FunctionTest;->loudSpkLoopbackTest()V

    goto :goto_4e

    .line 710
    :pswitch_6f
    const/16 v0, 0x25

    if-ne p2, v0, :cond_84

    .line 711
    invoke-virtual {p0, v4}, Lcom/android/samsungtest/SimpleFunctionTest/FunctionTest;->finishActivity(I)V

    .line 712
    invoke-virtual {p0, v5}, Lcom/android/samsungtest/SimpleFunctionTest/FunctionTest;->changeLocalTestResult(I)V

    .line 713
    const-string v0, "22"

    const-string v1, "P"

    invoke-virtual {p0, v0, v1}, Lcom/android/samsungtest/SimpleFunctionTest/FunctionTest;->sendTestResultToRil(Ljava/lang/String;Ljava/lang/String;)V

    .line 714
    invoke-virtual {p0}, Lcom/android/samsungtest/SimpleFunctionTest/FunctionTest;->loopbackTest()V

    goto :goto_4e

    .line 716
    :cond_84
    const/16 v0, 0x2c

    if-ne p2, v0, :cond_4e

    .line 717
    invoke-virtual {p0, v4}, Lcom/android/samsungtest/SimpleFunctionTest/FunctionTest;->finishActivity(I)V

    .line 718
    invoke-virtual {p0, v5}, Lcom/android/samsungtest/SimpleFunctionTest/FunctionTest;->changeLocalTestResult(I)V

    .line 719
    const-string v0, "22"

    const-string v1, "P"

    invoke-virtual {p0, v0, v1}, Lcom/android/samsungtest/SimpleFunctionTest/FunctionTest;->sendTestResultToRil(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4e

    .line 724
    :pswitch_96
    if-ne p2, v6, :cond_4e

    .line 725
    invoke-virtual {p0, v6}, Lcom/android/samsungtest/SimpleFunctionTest/FunctionTest;->changeLocalTestResult(I)V

    goto :goto_4e

    .line 731
    :pswitch_9c
    const/16 v0, 0x29

    if-ne p2, v0, :cond_4e

    .line 732
    const/16 v0, 0x15

    invoke-virtual {p0, v0}, Lcom/android/samsungtest/SimpleFunctionTest/FunctionTest;->changeLocalTestResult(I)V

    goto :goto_4e

    .line 695
    :pswitch_data_a6
    .packed-switch 0x5
        :pswitch_96
        :pswitch_4e
        :pswitch_4f
        :pswitch_6f
        :pswitch_4e
        :pswitch_4e
        :pswitch_4e
        :pswitch_4e
        :pswitch_9c
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 22
    .parameter "savedInstanceState"

    .prologue
    .line 153
    invoke-super/range {p0 .. p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 154
    const v17, 0x7f030015

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/samsungtest/SimpleFunctionTest/FunctionTest;->setContentView(I)V

    .line 156
    const-string v17, "power"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/samsungtest/SimpleFunctionTest/FunctionTest;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/os/PowerManager;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/samsungtest/SimpleFunctionTest/FunctionTest;->pm:Landroid/os/PowerManager;

    .line 157
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/samsungtest/SimpleFunctionTest/FunctionTest;->pm:Landroid/os/PowerManager;

    move-object/from16 v17, v0

    const/16 v18, 0xa

    const-string v19, "FunctionTest"

    invoke-virtual/range {v17 .. v19}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/samsungtest/SimpleFunctionTest/FunctionTest;->wl:Landroid/os/PowerManager$WakeLock;

    .line 158
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/samsungtest/SimpleFunctionTest/FunctionTest;->wl:Landroid/os/PowerManager$WakeLock;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 164
    const v17, 0x7f090047

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/samsungtest/SimpleFunctionTest/FunctionTest;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/Button;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/samsungtest/SimpleFunctionTest/FunctionTest;->mSecondaryButton:Landroid/widget/Button;

    .line 165
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/samsungtest/SimpleFunctionTest/FunctionTest;->mSecondaryButton:Landroid/widget/Button;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/samsungtest/SimpleFunctionTest/FunctionTest;->mSecondaryButtonHandler:Landroid/view/View$OnClickListener;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 170
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/samsungtest/SimpleFunctionTest/FunctionTest;->mPrevKey:I

    .line 171
    const-wide/16 v17, 0x0

    move-wide/from16 v0, v17

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/samsungtest/SimpleFunctionTest/FunctionTest;->mPrevTime:J

    .line 172
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/samsungtest/SimpleFunctionTest/FunctionTest;->mCurrKey:I

    .line 173
    const-wide/16 v17, 0x0

    move-wide/from16 v0, v17

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/samsungtest/SimpleFunctionTest/FunctionTest;->mCurrTime:J

    .line 176
    const-string v17, "0"

    const-string v18, "27"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/android/samsungtest/SimpleFunctionTest/FunctionTest;->sendGetTestResultToRil(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/samsungtest/SimpleFunctionTest/FunctionTest;->localTestResultMp3:Z

    .line 179
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/samsungtest/SimpleFunctionTest/FunctionTest;->localTestResultCall:Z

    .line 180
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/samsungtest/SimpleFunctionTest/FunctionTest;->localTestResultTsp:Z

    .line 181
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/samsungtest/SimpleFunctionTest/FunctionTest;->localTestResultEarKey:Z

    .line 182
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/samsungtest/SimpleFunctionTest/FunctionTest;->localTestResultSimpletest:Z

    .line 185
    const-string v17, "audio"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/samsungtest/SimpleFunctionTest/FunctionTest;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/media/AudioManager;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/samsungtest/SimpleFunctionTest/FunctionTest;->audioManager:Landroid/media/AudioManager;

    .line 186
    const/16 v17, 0x1

    invoke-static/range {v17 .. v17}, Landroid/media/RingtoneManager;->getDefaultUri(I)Landroid/net/Uri;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object v17

    sput-object v17, Lcom/android/samsungtest/SimpleFunctionTest/FunctionTest;->mRingtone:Landroid/media/Ringtone;

    .line 189
    new-instance v7, Landroid/content/IntentFilter;

    invoke-direct {v7}, Landroid/content/IntentFilter;-><init>()V

    .line 190
    .local v7, intentFilter:Landroid/content/IntentFilter;
    const-string v17, "android.intent.action.HEADSET_PLUG"

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 191
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/samsungtest/SimpleFunctionTest/FunctionTest;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v7}, Lcom/android/samsungtest/SimpleFunctionTest/FunctionTest;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 195
    new-instance v8, Landroid/content/IntentFilter;

    invoke-direct {v8}, Landroid/content/IntentFilter;-><init>()V

    .line 196
    .local v8, intentFilter2:Landroid/content/IntentFilter;
    const-string v17, "android.intent.action.MEDIA_SCANNER_FINISHED"

    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 197
    const-string v17, "file"

    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 198
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/samsungtest/SimpleFunctionTest/FunctionTest;->mBroadcastReceiverforSDcard:Landroid/content/BroadcastReceiver;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v8}, Lcom/android/samsungtest/SimpleFunctionTest/FunctionTest;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 203
    const v17, 0x7f09003f

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/samsungtest/SimpleFunctionTest/FunctionTest;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/Button;

    .line 205
    .local v11, simple_test:Landroid/widget/Button;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/samsungtest/SimpleFunctionTest/FunctionTest;->factory_test_result:Ljava/lang/String;

    move-object/from16 v17, v0

    const-string v18, "T21"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/samsungtest/SimpleFunctionTest/FunctionTest;->test_index:I

    .line 206
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/samsungtest/SimpleFunctionTest/FunctionTest;->test_index:I

    move/from16 v17, v0

    const/16 v18, -0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_17f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/samsungtest/SimpleFunctionTest/FunctionTest;->factory_test_result:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/samsungtest/SimpleFunctionTest/FunctionTest;->test_index:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, 0x4

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->charAt(I)C

    move-result v17

    const/16 v18, 0x38

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_17f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/samsungtest/SimpleFunctionTest/FunctionTest;->factory_test_result:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/samsungtest/SimpleFunctionTest/FunctionTest;->test_index:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, 0x5

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->charAt(I)C

    move-result v17

    const/16 v18, 0x30

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_17f

    .line 207
    invoke-virtual/range {p0 .. p0}, Lcom/android/samsungtest/SimpleFunctionTest/FunctionTest;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    const v18, 0x7f070002

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getColor(I)I

    move-result v17

    move/from16 v0, v17

    invoke-virtual {v11, v0}, Landroid/widget/Button;->setTextColor(I)V

    .line 209
    :cond_17f
    new-instance v17, Lcom/android/samsungtest/SimpleFunctionTest/FunctionTest$1;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/samsungtest/SimpleFunctionTest/FunctionTest$1;-><init>(Lcom/android/samsungtest/SimpleFunctionTest/FunctionTest;)V

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 217
    const v17, 0x7f090040

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/samsungtest/SimpleFunctionTest/FunctionTest;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    .line 219
    .local v3, call:Landroid/widget/Button;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/samsungtest/SimpleFunctionTest/FunctionTest;->factory_test_result:Ljava/lang/String;

    move-object/from16 v17, v0

    const-string v18, "T22"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/samsungtest/SimpleFunctionTest/FunctionTest;->test_index:I

    .line 220
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/samsungtest/SimpleFunctionTest/FunctionTest;->test_index:I

    move/from16 v17, v0

    const/16 v18, -0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_1fe

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/samsungtest/SimpleFunctionTest/FunctionTest;->factory_test_result:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/samsungtest/SimpleFunctionTest/FunctionTest;->test_index:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, 0x4

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->charAt(I)C

    move-result v17

    const/16 v18, 0x38

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_1fe

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/samsungtest/SimpleFunctionTest/FunctionTest;->factory_test_result:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/samsungtest/SimpleFunctionTest/FunctionTest;->test_index:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, 0x5

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->charAt(I)C

    move-result v17

    const/16 v18, 0x30

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_1fe

    .line 221
    invoke-virtual/range {p0 .. p0}, Lcom/android/samsungtest/SimpleFunctionTest/FunctionTest;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    const v18, 0x7f070002

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getColor(I)I

    move-result v17

    move/from16 v0, v17

    invoke-virtual {v3, v0}, Landroid/widget/Button;->setTextColor(I)V

    .line 223
    :cond_1fe
    new-instance v17, Lcom/android/samsungtest/SimpleFunctionTest/FunctionTest$2;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/samsungtest/SimpleFunctionTest/FunctionTest$2;-><init>(Lcom/android/samsungtest/SimpleFunctionTest/FunctionTest;)V

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 229
    const v17, 0x7f090041

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/samsungtest/SimpleFunctionTest/FunctionTest;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/Button;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/samsungtest/SimpleFunctionTest/FunctionTest;->mBTRFButton:Landroid/widget/Button;

    .line 231
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/samsungtest/SimpleFunctionTest/FunctionTest;->factory_test_result:Ljava/lang/String;

    move-object/from16 v17, v0

    const-string v18, "T23"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/samsungtest/SimpleFunctionTest/FunctionTest;->test_index:I

    .line 232
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/samsungtest/SimpleFunctionTest/FunctionTest;->test_index:I

    move/from16 v17, v0

    const/16 v18, -0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_287

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/samsungtest/SimpleFunctionTest/FunctionTest;->factory_test_result:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/samsungtest/SimpleFunctionTest/FunctionTest;->test_index:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, 0x4

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->charAt(I)C

    move-result v17

    const/16 v18, 0x38

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_287

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/samsungtest/SimpleFunctionTest/FunctionTest;->factory_test_result:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/samsungtest/SimpleFunctionTest/FunctionTest;->test_index:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, 0x5

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->charAt(I)C

    move-result v17

    const/16 v18, 0x30

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_287

    .line 233
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/samsungtest/SimpleFunctionTest/FunctionTest;->mBTRFButton:Landroid/widget/Button;

    move-object/from16 v17, v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/samsungtest/SimpleFunctionTest/FunctionTest;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    const v19, 0x7f070002

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getColor(I)I

    move-result v18

    invoke-virtual/range {v17 .. v18}, Landroid/widget/Button;->setTextColor(I)V

    .line 235
    :cond_287
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/samsungtest/SimpleFunctionTest/FunctionTest;->mBTRFButton:Landroid/widget/Button;

    move-object/from16 v17, v0

    new-instance v18, Lcom/android/samsungtest/SimpleFunctionTest/FunctionTest$3;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/samsungtest/SimpleFunctionTest/FunctionTest$3;-><init>(Lcom/android/samsungtest/SimpleFunctionTest/FunctionTest;)V

    invoke-virtual/range {v17 .. v18}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 241
    const v17, 0x7f090042

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/samsungtest/SimpleFunctionTest/FunctionTest;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/Button;

    .line 243
    .local v10, sd_card:Landroid/widget/Button;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/samsungtest/SimpleFunctionTest/FunctionTest;->factory_test_result:Ljava/lang/String;

    move-object/from16 v17, v0

    const-string v18, "T24"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/samsungtest/SimpleFunctionTest/FunctionTest;->test_index:I

    .line 244
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/samsungtest/SimpleFunctionTest/FunctionTest;->test_index:I

    move/from16 v17, v0

    const/16 v18, -0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_623

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/samsungtest/SimpleFunctionTest/FunctionTest;->factory_test_result:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/samsungtest/SimpleFunctionTest/FunctionTest;->test_index:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, 0x4

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->charAt(I)C

    move-result v17

    const/16 v18, 0x38

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_623

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/samsungtest/SimpleFunctionTest/FunctionTest;->factory_test_result:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/samsungtest/SimpleFunctionTest/FunctionTest;->test_index:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, 0x5

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->charAt(I)C

    move-result v17

    const/16 v18, 0x30

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_623

    .line 245
    invoke-virtual/range {p0 .. p0}, Lcom/android/samsungtest/SimpleFunctionTest/FunctionTest;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    const v18, 0x7f070002

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getColor(I)I

    move-result v17

    move/from16 v0, v17

    invoke-virtual {v10, v0}, Landroid/widget/Button;->setTextColor(I)V

    .line 250
    :goto_30a
    new-instance v17, Lcom/android/samsungtest/SimpleFunctionTest/FunctionTest$4;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/samsungtest/SimpleFunctionTest/FunctionTest$4;-><init>(Lcom/android/samsungtest/SimpleFunctionTest/FunctionTest;)V

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 256
    const v17, 0x7f090043

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/samsungtest/SimpleFunctionTest/FunctionTest;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/Button;

    .line 258
    .local v12, spk:Landroid/widget/Button;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/samsungtest/SimpleFunctionTest/FunctionTest;->factory_test_result:Ljava/lang/String;

    move-object/from16 v17, v0

    const-string v18, "T25"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/samsungtest/SimpleFunctionTest/FunctionTest;->test_index:I

    .line 259
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/samsungtest/SimpleFunctionTest/FunctionTest;->test_index:I

    move/from16 v17, v0

    const/16 v18, -0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_389

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/samsungtest/SimpleFunctionTest/FunctionTest;->factory_test_result:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/samsungtest/SimpleFunctionTest/FunctionTest;->test_index:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, 0x4

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->charAt(I)C

    move-result v17

    const/16 v18, 0x38

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_389

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/samsungtest/SimpleFunctionTest/FunctionTest;->factory_test_result:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/samsungtest/SimpleFunctionTest/FunctionTest;->test_index:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, 0x5

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->charAt(I)C

    move-result v17

    const/16 v18, 0x30

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_389

    .line 260
    invoke-virtual/range {p0 .. p0}, Lcom/android/samsungtest/SimpleFunctionTest/FunctionTest;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    const v18, 0x7f070002

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getColor(I)I

    move-result v17

    move/from16 v0, v17

    invoke-virtual {v12, v0}, Landroid/widget/Button;->setTextColor(I)V

    .line 262
    :cond_389
    new-instance v17, Lcom/android/samsungtest/SimpleFunctionTest/FunctionTest$5;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/samsungtest/SimpleFunctionTest/FunctionTest$5;-><init>(Lcom/android/samsungtest/SimpleFunctionTest/FunctionTest;)V

    move-object/from16 v0, v17

    invoke-virtual {v12, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 284
    const v17, 0x7f090044

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/samsungtest/SimpleFunctionTest/FunctionTest;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/Button;

    .line 287
    .local v9, mp3:Landroid/widget/Button;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/samsungtest/SimpleFunctionTest/FunctionTest;->factory_test_result:Ljava/lang/String;

    move-object/from16 v17, v0

    const-string v18, "T27"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/samsungtest/SimpleFunctionTest/FunctionTest;->test_index:I

    .line 288
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/samsungtest/SimpleFunctionTest/FunctionTest;->test_index:I

    move/from16 v17, v0

    const/16 v18, -0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_408

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/samsungtest/SimpleFunctionTest/FunctionTest;->factory_test_result:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/samsungtest/SimpleFunctionTest/FunctionTest;->test_index:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, 0x4

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->charAt(I)C

    move-result v17

    const/16 v18, 0x38

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_408

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/samsungtest/SimpleFunctionTest/FunctionTest;->factory_test_result:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/samsungtest/SimpleFunctionTest/FunctionTest;->test_index:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, 0x5

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->charAt(I)C

    move-result v17

    const/16 v18, 0x30

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_408

    .line 289
    invoke-virtual/range {p0 .. p0}, Lcom/android/samsungtest/SimpleFunctionTest/FunctionTest;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    const v18, 0x7f070002

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getColor(I)I

    move-result v17

    move/from16 v0, v17

    invoke-virtual {v9, v0}, Landroid/widget/Button;->setTextColor(I)V

    .line 292
    :cond_408
    new-instance v17, Lcom/android/samsungtest/SimpleFunctionTest/FunctionTest$6;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/samsungtest/SimpleFunctionTest/FunctionTest$6;-><init>(Lcom/android/samsungtest/SimpleFunctionTest/FunctionTest;)V

    move-object/from16 v0, v17

    invoke-virtual {v9, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 323
    const v17, 0x7f090049

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/samsungtest/SimpleFunctionTest/FunctionTest;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    .line 325
    .local v5, ear:Landroid/widget/Button;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/samsungtest/SimpleFunctionTest/FunctionTest;->factory_test_result:Ljava/lang/String;

    move-object/from16 v17, v0

    const-string v18, "T32"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/samsungtest/SimpleFunctionTest/FunctionTest;->test_index:I

    .line 326
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/samsungtest/SimpleFunctionTest/FunctionTest;->test_index:I

    move/from16 v17, v0

    const/16 v18, -0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_487

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/samsungtest/SimpleFunctionTest/FunctionTest;->factory_test_result:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/samsungtest/SimpleFunctionTest/FunctionTest;->test_index:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, 0x4

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->charAt(I)C

    move-result v17

    const/16 v18, 0x38

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_487

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/samsungtest/SimpleFunctionTest/FunctionTest;->factory_test_result:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/samsungtest/SimpleFunctionTest/FunctionTest;->test_index:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, 0x5

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->charAt(I)C

    move-result v17

    const/16 v18, 0x30

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_487

    .line 327
    invoke-virtual/range {p0 .. p0}, Lcom/android/samsungtest/SimpleFunctionTest/FunctionTest;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    const v18, 0x7f070002

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getColor(I)I

    move-result v17

    move/from16 v0, v17

    invoke-virtual {v5, v0}, Landroid/widget/Button;->setTextColor(I)V

    .line 329
    :cond_487
    new-instance v17, Lcom/android/samsungtest/SimpleFunctionTest/FunctionTest$7;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/samsungtest/SimpleFunctionTest/FunctionTest$7;-><init>(Lcom/android/samsungtest/SimpleFunctionTest/FunctionTest;)V

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 336
    const v17, 0x7f09004a

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/samsungtest/SimpleFunctionTest/FunctionTest;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Button;

    .line 338
    .local v6, ear_key:Landroid/widget/Button;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/samsungtest/SimpleFunctionTest/FunctionTest;->factory_test_result:Ljava/lang/String;

    move-object/from16 v17, v0

    const-string v18, "T33"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/samsungtest/SimpleFunctionTest/FunctionTest;->test_index:I

    .line 339
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/samsungtest/SimpleFunctionTest/FunctionTest;->test_index:I

    move/from16 v17, v0

    const/16 v18, -0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_506

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/samsungtest/SimpleFunctionTest/FunctionTest;->factory_test_result:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/samsungtest/SimpleFunctionTest/FunctionTest;->test_index:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, 0x4

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->charAt(I)C

    move-result v17

    const/16 v18, 0x38

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_506

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/samsungtest/SimpleFunctionTest/FunctionTest;->factory_test_result:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/samsungtest/SimpleFunctionTest/FunctionTest;->test_index:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, 0x5

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->charAt(I)C

    move-result v17

    const/16 v18, 0x30

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_506

    .line 340
    invoke-virtual/range {p0 .. p0}, Lcom/android/samsungtest/SimpleFunctionTest/FunctionTest;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    const v18, 0x7f070002

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getColor(I)I

    move-result v17

    move/from16 v0, v17

    invoke-virtual {v6, v0}, Landroid/widget/Button;->setTextColor(I)V

    .line 342
    :cond_506
    new-instance v17, Lcom/android/samsungtest/SimpleFunctionTest/FunctionTest$8;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/samsungtest/SimpleFunctionTest/FunctionTest$8;-><init>(Lcom/android/samsungtest/SimpleFunctionTest/FunctionTest;)V

    move-object/from16 v0, v17

    invoke-virtual {v6, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 348
    const v17, 0x7f090045

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/samsungtest/SimpleFunctionTest/FunctionTest;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/Button;

    .line 350
    .local v13, tsp:Landroid/widget/Button;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/samsungtest/SimpleFunctionTest/FunctionTest;->factory_test_result:Ljava/lang/String;

    move-object/from16 v17, v0

    const-string v18, "T34"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/samsungtest/SimpleFunctionTest/FunctionTest;->test_index:I

    .line 351
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/samsungtest/SimpleFunctionTest/FunctionTest;->test_index:I

    move/from16 v17, v0

    const/16 v18, -0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_585

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/samsungtest/SimpleFunctionTest/FunctionTest;->factory_test_result:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/samsungtest/SimpleFunctionTest/FunctionTest;->test_index:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, 0x4

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->charAt(I)C

    move-result v17

    const/16 v18, 0x38

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_585

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/samsungtest/SimpleFunctionTest/FunctionTest;->factory_test_result:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/samsungtest/SimpleFunctionTest/FunctionTest;->test_index:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, 0x5

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->charAt(I)C

    move-result v17

    const/16 v18, 0x30

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_585

    .line 352
    invoke-virtual/range {p0 .. p0}, Lcom/android/samsungtest/SimpleFunctionTest/FunctionTest;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    const v18, 0x7f070002

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getColor(I)I

    move-result v17

    move/from16 v0, v17

    invoke-virtual {v13, v0}, Landroid/widget/Button;->setTextColor(I)V

    .line 354
    :cond_585
    new-instance v17, Lcom/android/samsungtest/SimpleFunctionTest/FunctionTest$9;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/samsungtest/SimpleFunctionTest/FunctionTest$9;-><init>(Lcom/android/samsungtest/SimpleFunctionTest/FunctionTest;)V

    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 361
    const v17, 0x7f09000d

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/samsungtest/SimpleFunctionTest/FunctionTest;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/Button;

    .line 362
    .local v15, ver4:Landroid/widget/Button;
    new-instance v17, Lcom/android/samsungtest/SimpleFunctionTest/FunctionTest$10;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/samsungtest/SimpleFunctionTest/FunctionTest$10;-><init>(Lcom/android/samsungtest/SimpleFunctionTest/FunctionTest;)V

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 369
    const v17, 0x7f090046

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/samsungtest/SimpleFunctionTest/FunctionTest;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/Button;

    .line 370
    .local v14, usb:Landroid/widget/Button;
    new-instance v17, Lcom/android/samsungtest/SimpleFunctionTest/FunctionTest$11;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/samsungtest/SimpleFunctionTest/FunctionTest$11;-><init>(Lcom/android/samsungtest/SimpleFunctionTest/FunctionTest;)V

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 378
    const v17, 0x7f090048

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/samsungtest/SimpleFunctionTest/FunctionTest;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/Button;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/samsungtest/SimpleFunctionTest/FunctionTest;->BbatteryAuthTest:Landroid/widget/Button;

    .line 379
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/samsungtest/SimpleFunctionTest/FunctionTest;->BbatteryAuthTest:Landroid/widget/Button;

    move-object/from16 v17, v0

    new-instance v18, Lcom/android/samsungtest/SimpleFunctionTest/FunctionTest$12;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/samsungtest/SimpleFunctionTest/FunctionTest$12;-><init>(Lcom/android/samsungtest/SimpleFunctionTest/FunctionTest;)V

    invoke-virtual/range {v17 .. v18}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 387
    const v17, 0x7f09001d

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/samsungtest/SimpleFunctionTest/FunctionTest;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    .line 388
    .local v4, camera:Landroid/widget/Button;
    new-instance v17, Lcom/android/samsungtest/SimpleFunctionTest/FunctionTest$13;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/samsungtest/SimpleFunctionTest/FunctionTest$13;-><init>(Lcom/android/samsungtest/SimpleFunctionTest/FunctionTest;)V

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 395
    const v17, 0x7f0900b4

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/samsungtest/SimpleFunctionTest/FunctionTest;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/widget/Button;

    .line 396
    .local v16, vgacam:Landroid/widget/Button;
    new-instance v17, Lcom/android/samsungtest/SimpleFunctionTest/FunctionTest$14;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/samsungtest/SimpleFunctionTest/FunctionTest$14;-><init>(Lcom/android/samsungtest/SimpleFunctionTest/FunctionTest;)V

    invoke-virtual/range {v16 .. v17}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 619
    return-void

    .line 247
    .end local v4           #camera:Landroid/widget/Button;
    .end local v5           #ear:Landroid/widget/Button;
    .end local v6           #ear_key:Landroid/widget/Button;
    .end local v9           #mp3:Landroid/widget/Button;
    .end local v12           #spk:Landroid/widget/Button;
    .end local v13           #tsp:Landroid/widget/Button;
    .end local v14           #usb:Landroid/widget/Button;
    .end local v15           #ver4:Landroid/widget/Button;
    .end local v16           #vgacam:Landroid/widget/Button;
    :cond_623
    invoke-virtual/range {p0 .. p0}, Lcom/android/samsungtest/SimpleFunctionTest/FunctionTest;->checkSdCardMounted()V

    goto/16 :goto_30a
.end method

.method public onDestroy()V
    .registers 3

    .prologue
    .line 779
    iget-object v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/FunctionTest;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/samsungtest/SimpleFunctionTest/FunctionTest;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 780
    iget-object v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/FunctionTest;->mBroadcastReceiverforSDcard:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/samsungtest/SimpleFunctionTest/FunctionTest;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 781
    iget-object v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/FunctionTest;->audioManager:Landroid/media/AudioManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setMode(I)V

    .line 782
    iget-object v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/FunctionTest;->wl:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 783
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 784
    const-string v0, "net.cdma.factory.incallmode"

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 785
    const-string v0, "FunctionTest"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 786
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 7
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v1, 0x1

    .line 931
    const-string v2, "FunctionTest"

    const-string v3, "onKeyDown"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 932
    sget-object v2, Lcom/android/samsungtest/SimpleFunctionTest/FunctionTest;->mRingtone:Landroid/media/Ringtone;

    invoke-virtual {v2}, Landroid/media/Ringtone;->stop()V

    .line 934
    iput p1, p0, Lcom/android/samsungtest/SimpleFunctionTest/FunctionTest;->mCurrKey:I

    .line 935
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/samsungtest/SimpleFunctionTest/FunctionTest;->mCurrTime:J

    .line 937
    const/4 v2, 0x6

    if-ne p1, v2, :cond_1c

    .line 938
    invoke-virtual {p0}, Lcom/android/samsungtest/SimpleFunctionTest/FunctionTest;->finish()V

    .line 966
    :cond_1b
    :goto_1b
    return v1

    .line 940
    :cond_1c
    const/16 v2, 0x17

    if-ne p1, v2, :cond_24

    .line 941
    invoke-virtual {p0}, Lcom/android/samsungtest/SimpleFunctionTest/FunctionTest;->finish()V

    goto :goto_1b

    .line 945
    :cond_24
    const/16 v2, 0x4f

    if-ne p1, v2, :cond_4e

    .line 946
    const v2, 0x7f09004a

    invoke-virtual {p0, v2}, Lcom/android/samsungtest/SimpleFunctionTest/FunctionTest;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 947
    .local v0, ear_key:Landroid/widget/Button;
    invoke-virtual {p0}, Lcom/android/samsungtest/SimpleFunctionTest/FunctionTest;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070002

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setTextColor(I)V

    .line 949
    const-string v2, "33"

    const-string v3, "P"

    invoke-virtual {p0, v2, v3}, Lcom/android/samsungtest/SimpleFunctionTest/FunctionTest;->sendTestResultToRil(Ljava/lang/String;Ljava/lang/String;)V

    .line 950
    const-string v2, "FunctionTest"

    const-string v3, "!! KEYCODE_HEADSETHOOK key pressed in FTA"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1b

    .line 954
    .end local v0           #ear_key:Landroid/widget/Button;
    :cond_4e
    const/4 v2, 0x4

    if-ne p1, v2, :cond_6e

    .line 955
    invoke-virtual {p0}, Lcom/android/samsungtest/SimpleFunctionTest/FunctionTest;->BackKeyCheck()Z

    move-result v2

    if-eqz v2, :cond_1b

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v2

    if-gtz v2, :cond_1b

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isLongPress()Z

    move-result v2

    if-nez v2, :cond_1b

    .line 957
    const-string v2, "KEYCODE"

    const-string v3, "This is back_key"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 958
    invoke-virtual {p0}, Lcom/android/samsungtest/SimpleFunctionTest/FunctionTest;->finish()V

    goto :goto_1b

    .line 962
    :cond_6e
    const/16 v2, 0x54

    if-eq p1, v2, :cond_1b

    .line 966
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_1b
.end method

.method public onPause()V
    .registers 3

    .prologue
    .line 789
    iget-object v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/FunctionTest;->wl:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 790
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 791
    const-string v0, "FunctionTest"

    const-string v1, "onPause"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 792
    return-void
.end method

.method public onResume()V
    .registers 16

    .prologue
    const v14, 0x7f070002

    const/16 v13, 0x38

    const/16 v12, 0x30

    const/4 v11, -0x1

    .line 622
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 623
    const-string v9, "FunctionTest"

    const-string v10, "onResume"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 625
    iget-object v9, p0, Lcom/android/samsungtest/SimpleFunctionTest/FunctionTest;->wl:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v9}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 627
    const-string v9, "0"

    const-string v10, "27"

    invoke-virtual {p0, v9, v10}, Lcom/android/samsungtest/SimpleFunctionTest/FunctionTest;->sendGetTestResultToRil(Ljava/lang/String;Ljava/lang/String;)V

    .line 631
    const v9, 0x7f09003f

    invoke-virtual {p0, v9}, Lcom/android/samsungtest/SimpleFunctionTest/FunctionTest;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Button;

    .line 632
    .local v6, simple_test:Landroid/widget/Button;
    iget-object v9, p0, Lcom/android/samsungtest/SimpleFunctionTest/FunctionTest;->factory_test_result:Ljava/lang/String;

    const-string v10, "T21"

    invoke-virtual {v9, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v9

    iput v9, p0, Lcom/android/samsungtest/SimpleFunctionTest/FunctionTest;->test_index:I

    .line 633
    iget v9, p0, Lcom/android/samsungtest/SimpleFunctionTest/FunctionTest;->test_index:I

    if-eq v9, v11, :cond_4d

    iget-object v9, p0, Lcom/android/samsungtest/SimpleFunctionTest/FunctionTest;->factory_test_result:Ljava/lang/String;

    iget v10, p0, Lcom/android/samsungtest/SimpleFunctionTest/FunctionTest;->test_index:I

    add-int/lit8 v10, v10, 0x4

    invoke-virtual {v9, v10}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-ne v9, v13, :cond_4d

    iget-object v9, p0, Lcom/android/samsungtest/SimpleFunctionTest/FunctionTest;->factory_test_result:Ljava/lang/String;

    iget v10, p0, Lcom/android/samsungtest/SimpleFunctionTest/FunctionTest;->test_index:I

    add-int/lit8 v10, v10, 0x5

    invoke-virtual {v9, v10}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-eq v9, v12, :cond_51

    :cond_4d
    iget-boolean v9, p0, Lcom/android/samsungtest/SimpleFunctionTest/FunctionTest;->localTestResultSimpletest:Z

    if-eqz v9, :cond_5c

    .line 634
    :cond_51
    invoke-virtual {p0}, Lcom/android/samsungtest/SimpleFunctionTest/FunctionTest;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9, v14}, Landroid/content/res/Resources;->getColor(I)I

    move-result v9

    invoke-virtual {v6, v9}, Landroid/widget/Button;->setTextColor(I)V

    .line 637
    :cond_5c
    const v9, 0x7f090040

    invoke-virtual {p0, v9}, Lcom/android/samsungtest/SimpleFunctionTest/FunctionTest;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 638
    .local v1, call:Landroid/widget/Button;
    iget-object v9, p0, Lcom/android/samsungtest/SimpleFunctionTest/FunctionTest;->factory_test_result:Ljava/lang/String;

    const-string v10, "T22"

    invoke-virtual {v9, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v9

    iput v9, p0, Lcom/android/samsungtest/SimpleFunctionTest/FunctionTest;->test_index:I

    .line 639
    iget v9, p0, Lcom/android/samsungtest/SimpleFunctionTest/FunctionTest;->test_index:I

    if-eq v9, v11, :cond_8b

    iget-object v9, p0, Lcom/android/samsungtest/SimpleFunctionTest/FunctionTest;->factory_test_result:Ljava/lang/String;

    iget v10, p0, Lcom/android/samsungtest/SimpleFunctionTest/FunctionTest;->test_index:I

    add-int/lit8 v10, v10, 0x4

    invoke-virtual {v9, v10}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-ne v9, v13, :cond_8b

    iget-object v9, p0, Lcom/android/samsungtest/SimpleFunctionTest/FunctionTest;->factory_test_result:Ljava/lang/String;

    iget v10, p0, Lcom/android/samsungtest/SimpleFunctionTest/FunctionTest;->test_index:I

    add-int/lit8 v10, v10, 0x5

    invoke-virtual {v9, v10}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-eq v9, v12, :cond_8f

    :cond_8b
    iget-boolean v9, p0, Lcom/android/samsungtest/SimpleFunctionTest/FunctionTest;->localTestResultCall:Z

    if-eqz v9, :cond_9a

    .line 640
    :cond_8f
    invoke-virtual {p0}, Lcom/android/samsungtest/SimpleFunctionTest/FunctionTest;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9, v14}, Landroid/content/res/Resources;->getColor(I)I

    move-result v9

    invoke-virtual {v1, v9}, Landroid/widget/Button;->setTextColor(I)V

    .line 643
    :cond_9a
    const v9, 0x7f090041

    invoke-virtual {p0, v9}, Lcom/android/samsungtest/SimpleFunctionTest/FunctionTest;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 644
    .local v0, bt_rf:Landroid/widget/Button;
    iget-object v9, p0, Lcom/android/samsungtest/SimpleFunctionTest/FunctionTest;->factory_test_result:Ljava/lang/String;

    const-string v10, "T23"

    invoke-virtual {v9, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v9

    iput v9, p0, Lcom/android/samsungtest/SimpleFunctionTest/FunctionTest;->test_index:I

    .line 645
    iget v9, p0, Lcom/android/samsungtest/SimpleFunctionTest/FunctionTest;->test_index:I

    if-eq v9, v11, :cond_d4

    iget-object v9, p0, Lcom/android/samsungtest/SimpleFunctionTest/FunctionTest;->factory_test_result:Ljava/lang/String;

    iget v10, p0, Lcom/android/samsungtest/SimpleFunctionTest/FunctionTest;->test_index:I

    add-int/lit8 v10, v10, 0x4

    invoke-virtual {v9, v10}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-ne v9, v13, :cond_d4

    iget-object v9, p0, Lcom/android/samsungtest/SimpleFunctionTest/FunctionTest;->factory_test_result:Ljava/lang/String;

    iget v10, p0, Lcom/android/samsungtest/SimpleFunctionTest/FunctionTest;->test_index:I

    add-int/lit8 v10, v10, 0x5

    invoke-virtual {v9, v10}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-ne v9, v12, :cond_d4

    .line 646
    invoke-virtual {p0}, Lcom/android/samsungtest/SimpleFunctionTest/FunctionTest;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9, v14}, Landroid/content/res/Resources;->getColor(I)I

    move-result v9

    invoke-virtual {v0, v9}, Landroid/widget/Button;->setTextColor(I)V

    .line 649
    :cond_d4
    const v9, 0x7f090044

    invoke-virtual {p0, v9}, Lcom/android/samsungtest/SimpleFunctionTest/FunctionTest;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    .line 650
    .local v4, mp3:Landroid/widget/Button;
    iget-object v9, p0, Lcom/android/samsungtest/SimpleFunctionTest/FunctionTest;->factory_test_result:Ljava/lang/String;

    const-string v10, "T27"

    invoke-virtual {v9, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v9

    iput v9, p0, Lcom/android/samsungtest/SimpleFunctionTest/FunctionTest;->test_index:I

    .line 651
    iget v9, p0, Lcom/android/samsungtest/SimpleFunctionTest/FunctionTest;->test_index:I

    if-eq v9, v11, :cond_103

    iget-object v9, p0, Lcom/android/samsungtest/SimpleFunctionTest/FunctionTest;->factory_test_result:Ljava/lang/String;

    iget v10, p0, Lcom/android/samsungtest/SimpleFunctionTest/FunctionTest;->test_index:I

    add-int/lit8 v10, v10, 0x4

    invoke-virtual {v9, v10}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-ne v9, v13, :cond_103

    iget-object v9, p0, Lcom/android/samsungtest/SimpleFunctionTest/FunctionTest;->factory_test_result:Ljava/lang/String;

    iget v10, p0, Lcom/android/samsungtest/SimpleFunctionTest/FunctionTest;->test_index:I

    add-int/lit8 v10, v10, 0x5

    invoke-virtual {v9, v10}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-eq v9, v12, :cond_107

    :cond_103
    iget-boolean v9, p0, Lcom/android/samsungtest/SimpleFunctionTest/FunctionTest;->localTestResultMp3:Z

    if-eqz v9, :cond_112

    .line 652
    :cond_107
    invoke-virtual {p0}, Lcom/android/samsungtest/SimpleFunctionTest/FunctionTest;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9, v14}, Landroid/content/res/Resources;->getColor(I)I

    move-result v9

    invoke-virtual {v4, v9}, Landroid/widget/Button;->setTextColor(I)V

    .line 655
    :cond_112
    const v9, 0x7f09004a

    invoke-virtual {p0, v9}, Lcom/android/samsungtest/SimpleFunctionTest/FunctionTest;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    .line 656
    .local v3, ear_key:Landroid/widget/Button;
    iget-object v9, p0, Lcom/android/samsungtest/SimpleFunctionTest/FunctionTest;->factory_test_result:Ljava/lang/String;

    const-string v10, "T33"

    invoke-virtual {v9, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v9

    iput v9, p0, Lcom/android/samsungtest/SimpleFunctionTest/FunctionTest;->test_index:I

    .line 657
    iget v9, p0, Lcom/android/samsungtest/SimpleFunctionTest/FunctionTest;->test_index:I

    if-eq v9, v11, :cond_141

    iget-object v9, p0, Lcom/android/samsungtest/SimpleFunctionTest/FunctionTest;->factory_test_result:Ljava/lang/String;

    iget v10, p0, Lcom/android/samsungtest/SimpleFunctionTest/FunctionTest;->test_index:I

    add-int/lit8 v10, v10, 0x4

    invoke-virtual {v9, v10}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-ne v9, v13, :cond_141

    iget-object v9, p0, Lcom/android/samsungtest/SimpleFunctionTest/FunctionTest;->factory_test_result:Ljava/lang/String;

    iget v10, p0, Lcom/android/samsungtest/SimpleFunctionTest/FunctionTest;->test_index:I

    add-int/lit8 v10, v10, 0x5

    invoke-virtual {v9, v10}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-eq v9, v12, :cond_145

    :cond_141
    iget-boolean v9, p0, Lcom/android/samsungtest/SimpleFunctionTest/FunctionTest;->localTestResultEarKey:Z

    if-eqz v9, :cond_150

    .line 658
    :cond_145
    invoke-virtual {p0}, Lcom/android/samsungtest/SimpleFunctionTest/FunctionTest;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9, v14}, Landroid/content/res/Resources;->getColor(I)I

    move-result v9

    invoke-virtual {v3, v9}, Landroid/widget/Button;->setTextColor(I)V

    .line 661
    :cond_150
    const v9, 0x7f090045

    invoke-virtual {p0, v9}, Lcom/android/samsungtest/SimpleFunctionTest/FunctionTest;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/Button;

    .line 662
    .local v8, tsp:Landroid/widget/Button;
    iget-object v9, p0, Lcom/android/samsungtest/SimpleFunctionTest/FunctionTest;->factory_test_result:Ljava/lang/String;

    const-string v10, "T34"

    invoke-virtual {v9, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v9

    iput v9, p0, Lcom/android/samsungtest/SimpleFunctionTest/FunctionTest;->test_index:I

    .line 663
    iget v9, p0, Lcom/android/samsungtest/SimpleFunctionTest/FunctionTest;->test_index:I

    if-eq v9, v11, :cond_17f

    iget-object v9, p0, Lcom/android/samsungtest/SimpleFunctionTest/FunctionTest;->factory_test_result:Ljava/lang/String;

    iget v10, p0, Lcom/android/samsungtest/SimpleFunctionTest/FunctionTest;->test_index:I

    add-int/lit8 v10, v10, 0x4

    invoke-virtual {v9, v10}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-ne v9, v13, :cond_17f

    iget-object v9, p0, Lcom/android/samsungtest/SimpleFunctionTest/FunctionTest;->factory_test_result:Ljava/lang/String;

    iget v10, p0, Lcom/android/samsungtest/SimpleFunctionTest/FunctionTest;->test_index:I

    add-int/lit8 v10, v10, 0x5

    invoke-virtual {v9, v10}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-eq v9, v12, :cond_183

    :cond_17f
    iget-boolean v9, p0, Lcom/android/samsungtest/SimpleFunctionTest/FunctionTest;->localTestResultTsp:Z

    if-eqz v9, :cond_18e

    .line 664
    :cond_183
    invoke-virtual {p0}, Lcom/android/samsungtest/SimpleFunctionTest/FunctionTest;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9, v14}, Landroid/content/res/Resources;->getColor(I)I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/widget/Button;->setTextColor(I)V

    .line 668
    :cond_18e
    const v9, 0x7f090042

    invoke-virtual {p0, v9}, Lcom/android/samsungtest/SimpleFunctionTest/FunctionTest;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    .line 669
    .local v5, sd_card:Landroid/widget/Button;
    iget-object v9, p0, Lcom/android/samsungtest/SimpleFunctionTest/FunctionTest;->factory_test_result:Ljava/lang/String;

    const-string v10, "T24"

    invoke-virtual {v9, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v9

    iput v9, p0, Lcom/android/samsungtest/SimpleFunctionTest/FunctionTest;->test_index:I

    .line 670
    iget v9, p0, Lcom/android/samsungtest/SimpleFunctionTest/FunctionTest;->test_index:I

    if-eq v9, v11, :cond_1c8

    iget-object v9, p0, Lcom/android/samsungtest/SimpleFunctionTest/FunctionTest;->factory_test_result:Ljava/lang/String;

    iget v10, p0, Lcom/android/samsungtest/SimpleFunctionTest/FunctionTest;->test_index:I

    add-int/lit8 v10, v10, 0x4

    invoke-virtual {v9, v10}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-ne v9, v13, :cond_1c8

    iget-object v9, p0, Lcom/android/samsungtest/SimpleFunctionTest/FunctionTest;->factory_test_result:Ljava/lang/String;

    iget v10, p0, Lcom/android/samsungtest/SimpleFunctionTest/FunctionTest;->test_index:I

    add-int/lit8 v10, v10, 0x5

    invoke-virtual {v9, v10}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-ne v9, v12, :cond_1c8

    .line 671
    invoke-virtual {p0}, Lcom/android/samsungtest/SimpleFunctionTest/FunctionTest;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9, v14}, Landroid/content/res/Resources;->getColor(I)I

    move-result v9

    invoke-virtual {v5, v9}, Landroid/widget/Button;->setTextColor(I)V

    .line 673
    :cond_1c8
    const v9, 0x7f090043

    invoke-virtual {p0, v9}, Lcom/android/samsungtest/SimpleFunctionTest/FunctionTest;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/Button;

    .line 674
    .local v7, spk:Landroid/widget/Button;
    iget-object v9, p0, Lcom/android/samsungtest/SimpleFunctionTest/FunctionTest;->factory_test_result:Ljava/lang/String;

    const-string v10, "T25"

    invoke-virtual {v9, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v9

    iput v9, p0, Lcom/android/samsungtest/SimpleFunctionTest/FunctionTest;->test_index:I

    .line 675
    iget v9, p0, Lcom/android/samsungtest/SimpleFunctionTest/FunctionTest;->test_index:I

    if-eq v9, v11, :cond_202

    iget-object v9, p0, Lcom/android/samsungtest/SimpleFunctionTest/FunctionTest;->factory_test_result:Ljava/lang/String;

    iget v10, p0, Lcom/android/samsungtest/SimpleFunctionTest/FunctionTest;->test_index:I

    add-int/lit8 v10, v10, 0x4

    invoke-virtual {v9, v10}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-ne v9, v13, :cond_202

    iget-object v9, p0, Lcom/android/samsungtest/SimpleFunctionTest/FunctionTest;->factory_test_result:Ljava/lang/String;

    iget v10, p0, Lcom/android/samsungtest/SimpleFunctionTest/FunctionTest;->test_index:I

    add-int/lit8 v10, v10, 0x5

    invoke-virtual {v9, v10}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-ne v9, v12, :cond_202

    .line 676
    invoke-virtual {p0}, Lcom/android/samsungtest/SimpleFunctionTest/FunctionTest;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9, v14}, Landroid/content/res/Resources;->getColor(I)I

    move-result v9

    invoke-virtual {v7, v9}, Landroid/widget/Button;->setTextColor(I)V

    .line 678
    :cond_202
    const v9, 0x7f090049

    invoke-virtual {p0, v9}, Lcom/android/samsungtest/SimpleFunctionTest/FunctionTest;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 679
    .local v2, ear:Landroid/widget/Button;
    iget-object v9, p0, Lcom/android/samsungtest/SimpleFunctionTest/FunctionTest;->factory_test_result:Ljava/lang/String;

    const-string v10, "T32"

    invoke-virtual {v9, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v9

    iput v9, p0, Lcom/android/samsungtest/SimpleFunctionTest/FunctionTest;->test_index:I

    .line 680
    iget v9, p0, Lcom/android/samsungtest/SimpleFunctionTest/FunctionTest;->test_index:I

    if-eq v9, v11, :cond_23c

    iget-object v9, p0, Lcom/android/samsungtest/SimpleFunctionTest/FunctionTest;->factory_test_result:Ljava/lang/String;

    iget v10, p0, Lcom/android/samsungtest/SimpleFunctionTest/FunctionTest;->test_index:I

    add-int/lit8 v10, v10, 0x4

    invoke-virtual {v9, v10}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-ne v9, v13, :cond_23c

    iget-object v9, p0, Lcom/android/samsungtest/SimpleFunctionTest/FunctionTest;->factory_test_result:Ljava/lang/String;

    iget v10, p0, Lcom/android/samsungtest/SimpleFunctionTest/FunctionTest;->test_index:I

    add-int/lit8 v10, v10, 0x5

    invoke-virtual {v9, v10}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-ne v9, v12, :cond_23c

    .line 681
    invoke-virtual {p0}, Lcom/android/samsungtest/SimpleFunctionTest/FunctionTest;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9, v14}, Landroid/content/res/Resources;->getColor(I)I

    move-result v9

    invoke-virtual {v2, v9}, Landroid/widget/Button;->setTextColor(I)V

    .line 685
    :cond_23c
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 4
    .parameter "event"

    .prologue
    .line 984
    const-string v0, "FunctionTest"

    const-string v1, "onTouchEvent"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 985
    sget-object v0, Lcom/android/samsungtest/SimpleFunctionTest/FunctionTest;->mRingtone:Landroid/media/Ringtone;

    invoke-virtual {v0}, Landroid/media/Ringtone;->stop()V

    .line 986
    invoke-super {p0, p1}, Landroid/app/Activity;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public sdcardTest()V
    .registers 3

    .prologue
    .line 870
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/samsungtest/SimpleFunctionTest/SdCardTest;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 871
    const/16 v1, 0x10

    invoke-virtual {p0, v0, v1}, Lcom/android/samsungtest/SimpleFunctionTest/FunctionTest;->startActivityForResult(Landroid/content/Intent;I)V

    .line 872
    return-void
.end method

.method public sendGetTestResultToRil(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 1056
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.samsungtest.SendGetResultToRil"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1057
    const-string v1, "READ_TYPE"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1058
    const-string v1, "INDEX"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1059
    invoke-virtual {p0, v0}, Lcom/android/samsungtest/SimpleFunctionTest/FunctionTest;->sendBroadcast(Landroid/content/Intent;)V

    .line 1060
    return-void
.end method

.method public sendTestResultToRil(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .parameter "function"
    .parameter "result"

    .prologue
    .line 1038
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.samsungtest.SendResultToRil"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1039
    .local v0, i:Landroid/content/Intent;
    const-string v1, "FUNCTION"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1040
    const-string v1, "RESULT"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1041
    invoke-virtual {p0, v0}, Lcom/android/samsungtest/SimpleFunctionTest/FunctionTest;->sendBroadcast(Landroid/content/Intent;)V

    .line 1042
    return-void
.end method

.method public touchTest()V
    .registers 3

    .prologue
    .line 843
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/samsungtest/SimpleFunctionTest/TouchTest;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 844
    const/4 v1, 0x5

    invoke-virtual {p0, v0, v1}, Lcom/android/samsungtest/SimpleFunctionTest/FunctionTest;->startActivityForResult(Landroid/content/Intent;I)V

    .line 845
    return-void
.end method

.method public usbTest()V
    .registers 3

    .prologue
    .line 823
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/samsungtest/SimpleFunctionTest/UsbTest;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 824
    const/16 v1, 0xf

    invoke-virtual {p0, v0, v1}, Lcom/android/samsungtest/SimpleFunctionTest/FunctionTest;->startActivityForResult(Landroid/content/Intent;I)V

    .line 825
    return-void
.end method

.method public vgacameraTest()V
    .registers 4

    .prologue
    const/4 v2, 0x1

    .line 815
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/samsungtest/camera/Camera;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 816
    const-string v1, "camera_id"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 817
    const-string v1, "ommision_test"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 818
    const/16 v1, 0x2e

    invoke-virtual {p0, v0, v1}, Lcom/android/samsungtest/SimpleFunctionTest/FunctionTest;->startActivityForResult(Landroid/content/Intent;I)V

    .line 820
    return-void
.end method
