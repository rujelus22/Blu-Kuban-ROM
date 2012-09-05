.class public Lcom/android/phone/DataRoamingGuard;
.super Landroid/app/Activity;
.source "DataRoamingGuard.java"


# instance fields
.field cancelButton:Landroid/widget/Button;

.field cbNeverAsk:Landroid/widget/CheckBox;

.field private mCancelListener:Landroid/view/View$OnClickListener;

.field private mNeverAskListener:Landroid/view/View$OnClickListener;

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mRoamListener:Landroid/view/View$OnClickListener;

.field roamButton:Landroid/widget/Button;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 47
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 81
    new-instance v0, Lcom/android/phone/DataRoamingGuard$1;

    invoke-direct {v0, p0}, Lcom/android/phone/DataRoamingGuard$1;-><init>(Lcom/android/phone/DataRoamingGuard;)V

    iput-object v0, p0, Lcom/android/phone/DataRoamingGuard;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 93
    new-instance v0, Lcom/android/phone/DataRoamingGuard$2;

    invoke-direct {v0, p0}, Lcom/android/phone/DataRoamingGuard$2;-><init>(Lcom/android/phone/DataRoamingGuard;)V

    iput-object v0, p0, Lcom/android/phone/DataRoamingGuard;->mNeverAskListener:Landroid/view/View$OnClickListener;

    .line 100
    new-instance v0, Lcom/android/phone/DataRoamingGuard$3;

    invoke-direct {v0, p0}, Lcom/android/phone/DataRoamingGuard$3;-><init>(Lcom/android/phone/DataRoamingGuard;)V

    iput-object v0, p0, Lcom/android/phone/DataRoamingGuard;->mCancelListener:Landroid/view/View$OnClickListener;

    .line 121
    new-instance v0, Lcom/android/phone/DataRoamingGuard$4;

    invoke-direct {v0, p0}, Lcom/android/phone/DataRoamingGuard$4;-><init>(Lcom/android/phone/DataRoamingGuard;)V

    iput-object v0, p0, Lcom/android/phone/DataRoamingGuard;->mRoamListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/DataRoamingGuard;)Lcom/android/internal/telephony/Phone;
    .registers 2
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/phone/DataRoamingGuard;->mPhone:Lcom/android/internal/telephony/Phone;

    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 6
    .parameter "savedInstanceState"

    .prologue
    .line 59
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 60
    const v2, 0x7f04000b

    invoke-virtual {p0, v2}, Lcom/android/phone/DataRoamingGuard;->setContentView(I)V

    .line 61
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    .line 62
    .local v0, app:Lcom/android/phone/PhoneApp;
    invoke-virtual {v0, p0}, Lcom/android/phone/PhoneApp;->setDataRoamingGuardInstance(Lcom/android/phone/DataRoamingGuard;)V

    .line 65
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/DataRoamingGuard;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 67
    const v2, 0x7f09006b

    invoke-virtual {p0, v2}, Lcom/android/phone/DataRoamingGuard;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    iput-object v2, p0, Lcom/android/phone/DataRoamingGuard;->cbNeverAsk:Landroid/widget/CheckBox;

    .line 68
    iget-object v2, p0, Lcom/android/phone/DataRoamingGuard;->cbNeverAsk:Landroid/widget/CheckBox;

    iget-object v3, p0, Lcom/android/phone/DataRoamingGuard;->mNeverAskListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 70
    const v2, 0x7f09006e

    invoke-virtual {p0, v2}, Lcom/android/phone/DataRoamingGuard;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/android/phone/DataRoamingGuard;->cancelButton:Landroid/widget/Button;

    .line 71
    iget-object v2, p0, Lcom/android/phone/DataRoamingGuard;->cancelButton:Landroid/widget/Button;

    iget-object v3, p0, Lcom/android/phone/DataRoamingGuard;->mCancelListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 73
    const v2, 0x7f09006d

    invoke-virtual {p0, v2}, Lcom/android/phone/DataRoamingGuard;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/android/phone/DataRoamingGuard;->roamButton:Landroid/widget/Button;

    .line 74
    iget-object v2, p0, Lcom/android/phone/DataRoamingGuard;->roamButton:Landroid/widget/Button;

    iget-object v3, p0, Lcom/android/phone/DataRoamingGuard;->mRoamListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 76
    iget-object v2, p0, Lcom/android/phone/DataRoamingGuard;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "phone"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 78
    .local v1, telephonyManager:Landroid/telephony/TelephonyManager;
    iget-object v2, p0, Lcom/android/phone/DataRoamingGuard;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 79
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 8
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v4, 0x0

    .line 178
    packed-switch p1, :pswitch_data_3a

    .line 195
    :goto_4
    const/4 v2, 0x1

    return v2

    .line 182
    :pswitch_6
    iget-object v2, p0, Lcom/android/phone/DataRoamingGuard;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->IsDomesticRoaming()Z

    move-result v0

    .line 183
    .local v0, IsDomesticRoaming:Z
    iget-object v2, p0, Lcom/android/phone/DataRoamingGuard;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->IsInternationalRoaming()Z

    move-result v1

    .line 185
    .local v1, IsInternationalRoaming:Z
    if-eqz v0, :cond_27

    .line 186
    iget-object v2, p0, Lcom/android/phone/DataRoamingGuard;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "roam_setting_data_domestic"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 192
    :cond_23
    :goto_23
    invoke-virtual {p0}, Lcom/android/phone/DataRoamingGuard;->finish()V

    goto :goto_4

    .line 188
    :cond_27
    if-eqz v1, :cond_23

    .line 189
    iget-object v2, p0, Lcom/android/phone/DataRoamingGuard;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "roam_setting_data_international"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_23

    .line 178
    nop

    :pswitch_data_3a
    .packed-switch 0x4
        :pswitch_6
    .end packed-switch
.end method
