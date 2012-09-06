.class public Lcom/android/internal/policy/impl/ClockWidget;
.super Landroid/widget/LinearLayout;
.source "ClockWidget.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/ClockWidget$CmasEmergencyAlert;,
        Lcom/android/internal/policy/impl/ClockWidget$Charge;,
        Lcom/android/internal/policy/impl/ClockWidget$EmergencyCall;,
        Lcom/android/internal/policy/impl/ClockWidget$TimeAndDate;,
        Lcom/android/internal/policy/impl/ClockWidget$Weather;
    }
.end annotation


# static fields
.field public static final DBG:Z = false

.field private static final TAG:Ljava/lang/String; = "ClockWidget"

.field private static mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;


# instance fields
.field private mCharger:Lcom/android/internal/policy/impl/ClockWidget$Charge;

.field private mClock:Lcom/android/internal/policy/impl/ClockWidget$TimeAndDate;

.field private mCmasText:Lcom/android/internal/policy/impl/ClockWidget$CmasEmergencyAlert;

.field private mCreationOrientation:I

.field private mEmergencyCall:Lcom/android/internal/policy/impl/ClockWidget$EmergencyCall;

.field private mRoot:Landroid/widget/LinearLayout;

.field private mWeather:Lcom/android/internal/policy/impl/ClockWidget$Weather;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Landroid/content/res/Configuration;)V
    .registers 9
    .parameter "context"
    .parameter "updateMonitor"
    .parameter "configuration"

    .prologue
    const/4 v1, 0x1

    .line 75
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 77
    sput-object p2, Lcom/android/internal/policy/impl/ClockWidget;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    .line 78
    iget v2, p3, Landroid/content/res/Configuration;->orientation:I

    iput v2, p0, Lcom/android/internal/policy/impl/ClockWidget;->mCreationOrientation:I

    .line 80
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 81
    .local v0, inflater:Landroid/view/LayoutInflater;
    iget v2, p0, Lcom/android/internal/policy/impl/ClockWidget;->mCreationOrientation:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_93

    .line 83
    const v2, 0x10900e0

    invoke-virtual {v0, v2, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 91
    :goto_19
    const v2, 0x1020374

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/ClockWidget;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/android/internal/policy/impl/ClockWidget;->mRoot:Landroid/widget/LinearLayout;

    .line 92
    const v2, 0x1020375

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/ClockWidget;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/internal/policy/impl/ClockWidget$EmergencyCall;

    iput-object v2, p0, Lcom/android/internal/policy/impl/ClockWidget;->mEmergencyCall:Lcom/android/internal/policy/impl/ClockWidget$EmergencyCall;

    .line 93
    const v2, 0x1020377

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/ClockWidget;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/internal/policy/impl/ClockWidget$TimeAndDate;

    iput-object v2, p0, Lcom/android/internal/policy/impl/ClockWidget;->mClock:Lcom/android/internal/policy/impl/ClockWidget$TimeAndDate;

    .line 94
    const v2, 0x1020378

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/ClockWidget;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/internal/policy/impl/ClockWidget$Weather;

    iput-object v2, p0, Lcom/android/internal/policy/impl/ClockWidget;->mWeather:Lcom/android/internal/policy/impl/ClockWidget$Weather;

    .line 95
    const v2, 0x102037f

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/ClockWidget;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/internal/policy/impl/ClockWidget$Charge;

    iput-object v2, p0, Lcom/android/internal/policy/impl/ClockWidget;->mCharger:Lcom/android/internal/policy/impl/ClockWidget$Charge;

    .line 97
    const v2, 0x1020382

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/ClockWidget;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/internal/policy/impl/ClockWidget$CmasEmergencyAlert;

    iput-object v2, p0, Lcom/android/internal/policy/impl/ClockWidget;->mCmasText:Lcom/android/internal/policy/impl/ClockWidget$CmasEmergencyAlert;

    .line 99
    invoke-static {}, Lcom/android/internal/policy/impl/SamsungLockScreenProperties;->isPLMNEnable()Z

    move-result v2

    if-eqz v2, :cond_9a

    .line 100
    iget-object v2, p0, Lcom/android/internal/policy/impl/ClockWidget;->mEmergencyCall:Lcom/android/internal/policy/impl/ClockWidget$EmergencyCall;

    #getter for: Lcom/android/internal/policy/impl/ClockWidget$EmergencyCall;->mEmergencyCallText:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/android/internal/policy/impl/ClockWidget$EmergencyCall;->access$000(Lcom/android/internal/policy/impl/ClockWidget$EmergencyCall;)Landroid/widget/TextView;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/policy/impl/ClockWidget;->mContext:Landroid/content/Context;

    const v4, 0x1040396

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/android/internal/policy/impl/ClockWidget;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v4}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getTelephonyPlmn()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/internal/policy/impl/ClockWidget$EmergencyCall;->getCarrierString(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 106
    :goto_7d
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "show_clock"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v1, :cond_a1

    .line 109
    .local v1, showClock:Z
    :goto_89
    if-nez v1, :cond_92

    iget-object v2, p0, Lcom/android/internal/policy/impl/ClockWidget;->mRoot:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/android/internal/policy/impl/ClockWidget;->mClock:Lcom/android/internal/policy/impl/ClockWidget$TimeAndDate;

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 110
    :cond_92
    return-void

    .line 87
    .end local v1           #showClock:Z
    :cond_93
    const v2, 0x10900e1

    invoke-virtual {v0, v2, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    goto :goto_19

    .line 102
    :cond_9a
    iget-object v2, p0, Lcom/android/internal/policy/impl/ClockWidget;->mEmergencyCall:Lcom/android/internal/policy/impl/ClockWidget$EmergencyCall;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/android/internal/policy/impl/ClockWidget$EmergencyCall;->setVisibility(I)V

    goto :goto_7d

    .line 106
    :cond_a1
    const/4 v1, 0x0

    goto :goto_89
.end method

.method static synthetic access$500()Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;
    .registers 1

    .prologue
    .line 59
    sget-object v0, Lcom/android/internal/policy/impl/ClockWidget;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    return-object v0
.end method


# virtual methods
.method public cleanUp()V
    .registers 1

    .prologue
    .line 125
    return-void
.end method

.method public getRootLayout()Landroid/widget/LinearLayout;
    .registers 2

    .prologue
    .line 161
    iget-object v0, p0, Lcom/android/internal/policy/impl/ClockWidget;->mRoot:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method public getTTSMessage()Ljava/lang/String;
    .registers 5

    .prologue
    .line 165
    const-string v0, ""

    .line 167
    .local v0, TTSMessage:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/internal/policy/impl/ClockWidget;->mWeather:Lcom/android/internal/policy/impl/ClockWidget$Weather;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/ClockWidget$Weather;->getTTSMessage()Ljava/lang/String;

    move-result-object v0

    .line 168
    const-string v1, "ClockWidget"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "TTS Message = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    return-object v0
.end method

.method public onCmasRecieved()V
    .registers 3

    .prologue
    .line 970
    const-string v0, "ClockWidget"

    const-string v1, "OnCmasRecieved"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 971
    iget-object v0, p0, Lcom/android/internal/policy/impl/ClockWidget;->mCmasText:Lcom/android/internal/policy/impl/ClockWidget$CmasEmergencyAlert;

    if-eqz v0, :cond_10

    .line 972
    iget-object v0, p0, Lcom/android/internal/policy/impl/ClockWidget;->mCmasText:Lcom/android/internal/policy/impl/ClockWidget$CmasEmergencyAlert;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/ClockWidget$CmasEmergencyAlert;->onCmasRecieved()V

    .line 973
    :cond_10
    return-void
.end method

.method public onPause()V
    .registers 1

    .prologue
    .line 122
    return-void
.end method

.method public onRefreshCarrierInfo(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .registers 5
    .parameter "plmn"
    .parameter "spn"

    .prologue
    .line 981
    const-string v0, "ClockWidget"

    const-string v1, "onRefreshCarrierInfo"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 982
    iget-object v0, p0, Lcom/android/internal/policy/impl/ClockWidget;->mEmergencyCall:Lcom/android/internal/policy/impl/ClockWidget$EmergencyCall;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/ClockWidget$EmergencyCall;->updateText()V

    .line 983
    return-void
.end method

.method public onResume()V
    .registers 2

    .prologue
    .line 115
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/ClockWidget;->setBatteryInfo()V

    .line 116
    iget-object v0, p0, Lcom/android/internal/policy/impl/ClockWidget;->mWeather:Lcom/android/internal/policy/impl/ClockWidget$Weather;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/ClockWidget$Weather;->updateWeatherInfo()V

    .line 117
    iget-object v0, p0, Lcom/android/internal/policy/impl/ClockWidget;->mCmasText:Lcom/android/internal/policy/impl/ClockWidget$CmasEmergencyAlert;

    if-eqz v0, :cond_11

    .line 118
    iget-object v0, p0, Lcom/android/internal/policy/impl/ClockWidget;->mCmasText:Lcom/android/internal/policy/impl/ClockWidget$CmasEmergencyAlert;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/ClockWidget$CmasEmergencyAlert;->updateText()V

    .line 119
    :cond_11
    return-void
.end method

.method public onSimStateChanged(Lcom/android/internal/telephony/IccCard$State;)V
    .registers 4
    .parameter "simState"

    .prologue
    .line 976
    const-string v0, "ClockWidget"

    const-string v1, "onSimStateChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 977
    iget-object v0, p0, Lcom/android/internal/policy/impl/ClockWidget;->mEmergencyCall:Lcom/android/internal/policy/impl/ClockWidget$EmergencyCall;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/ClockWidget$EmergencyCall;->updateText()V

    .line 978
    return-void
.end method

.method public refreshBatteryInfo(ZZI)V
    .registers 5
    .parameter "showBatteryInfo"
    .parameter "pluggedIn"
    .parameter "batteryLevel"

    .prologue
    .line 137
    iget-object v0, p0, Lcom/android/internal/policy/impl/ClockWidget;->mCharger:Lcom/android/internal/policy/impl/ClockWidget$Charge;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/policy/impl/ClockWidget$Charge;->refreshBatteryInfo(ZZI)V

    .line 138
    return-void
.end method

.method public setBatteryInfo()V
    .registers 5

    .prologue
    .line 146
    sget-object v3, Lcom/android/internal/policy/impl/ClockWidget;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->shouldShowBatteryInfo()Z

    move-result v2

    .line 147
    .local v2, showBatteryInfo:Z
    sget-object v3, Lcom/android/internal/policy/impl/ClockWidget;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->isDevicePluggedIn()Z

    move-result v1

    .line 148
    .local v1, pluggedIn:Z
    sget-object v3, Lcom/android/internal/policy/impl/ClockWidget;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getBatteryLevel()I

    move-result v0

    .line 151
    .local v0, batteryLevel:I
    iget-object v3, p0, Lcom/android/internal/policy/impl/ClockWidget;->mCharger:Lcom/android/internal/policy/impl/ClockWidget$Charge;

    invoke-virtual {v3, v2, v1, v0}, Lcom/android/internal/policy/impl/ClockWidget$Charge;->refreshBatteryInfo(ZZI)V

    .line 152
    return-void
.end method
