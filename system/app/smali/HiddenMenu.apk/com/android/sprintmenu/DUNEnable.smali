.class public Lcom/android/sprintmenu/DUNEnable;
.super Ljava/lang/Object;
.source "DUNEnable.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnDismissListener;
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private enabled:Z

.field private final mAirplaneSateReceiver:Landroid/content/BroadcastReceiver;

.field private mButtonDataDun:Landroid/preference/CheckBoxPreference;

.field private final mContext:Landroid/content/Context;

.field private mDataDunClicked:Z

.field private final mIntentFilter:Landroid/content/IntentFilter;

.field private mOkClicked:Z

.field private settings:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/preference/CheckBoxPreference;)V
    .registers 7
    .parameter "context"
    .parameter "dunCheckBoxPreference"

    .prologue
    const/4 v3, 0x0

    .line 65
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-boolean v3, p0, Lcom/android/sprintmenu/DUNEnable;->enabled:Z

    .line 43
    new-instance v1, Lcom/android/sprintmenu/DUNEnable$1;

    invoke-direct {v1, p0}, Lcom/android/sprintmenu/DUNEnable$1;-><init>(Lcom/android/sprintmenu/DUNEnable;)V

    iput-object v1, p0, Lcom/android/sprintmenu/DUNEnable;->mAirplaneSateReceiver:Landroid/content/BroadcastReceiver;

    .line 66
    iput-object p1, p0, Lcom/android/sprintmenu/DUNEnable;->mContext:Landroid/content/Context;

    .line 67
    iput-object p2, p0, Lcom/android/sprintmenu/DUNEnable;->mButtonDataDun:Landroid/preference/CheckBoxPreference;

    .line 68
    invoke-virtual {p2, v3}, Landroid/preference/CheckBoxPreference;->setPersistent(Z)V

    .line 69
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/sprintmenu/DUNEnable;->mIntentFilter:Landroid/content/IntentFilter;

    .line 71
    iget-object v1, p0, Lcom/android/sprintmenu/DUNEnable;->mContext:Landroid/content/Context;

    const-string v2, "HiddenDUNEnabler"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/android/sprintmenu/DUNEnable;->settings:Landroid/content/SharedPreferences;

    .line 72
    iget-object v1, p0, Lcom/android/sprintmenu/DUNEnable;->settings:Landroid/content/SharedPreferences;

    const-string v2, "SHOWING_DIALOG"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 73
    .local v0, showing:Z
    if-eqz v0, :cond_34

    .line 74
    invoke-direct {p0}, Lcom/android/sprintmenu/DUNEnable;->showDialog()V

    .line 76
    :cond_34
    return-void
.end method

.method static synthetic access$000(Lcom/android/sprintmenu/DUNEnable;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 23
    iget-boolean v0, p0, Lcom/android/sprintmenu/DUNEnable;->enabled:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/sprintmenu/DUNEnable;)Landroid/preference/CheckBoxPreference;
    .registers 2
    .parameter "x0"

    .prologue
    .line 23
    iget-object v0, p0, Lcom/android/sprintmenu/DUNEnable;->mButtonDataDun:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/sprintmenu/DUNEnable;Ljava/lang/String;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lcom/android/sprintmenu/DUNEnable;->sendBroadcast(Ljava/lang/String;)V

    return-void
.end method

.method private getDataOnDunEnabled()Z
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 131
    iget-object v1, p0, Lcom/android/sprintmenu/DUNEnable;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "dun_enable"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_10

    const/4 v0, 0x1

    :cond_10
    return v0
.end method

.method private sendBroadcast(Ljava/lang/String;)V
    .registers 5
    .parameter "action"

    .prologue
    .line 163
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 164
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/sprintmenu/DUNEnable;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.CHANGE_DUN_STATE"

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 170
    return-void
.end method

.method private showDialog()V
    .registers 4

    .prologue
    .line 79
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/sprintmenu/DUNEnable;->mOkClicked:Z

    .line 80
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/sprintmenu/DUNEnable;->mDataDunClicked:Z

    .line 81
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/sprintmenu/DUNEnable;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/android/sprintmenu/DUNEnable;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0500a0

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1040014

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1080027

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1040013

    invoke-virtual {v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1040009

    invoke-virtual {v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 89
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 6
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 136
    iget-boolean v0, p0, Lcom/android/sprintmenu/DUNEnable;->mDataDunClicked:Z

    if-eqz v0, :cond_2a

    .line 137
    const/4 v0, -0x1

    if-ne p2, v0, :cond_2b

    .line 140
    const-string v0, "com.android.phone.EnableDUN"

    invoke-direct {p0, v0}, Lcom/android/sprintmenu/DUNEnable;->sendBroadcast(Ljava/lang/String;)V

    .line 141
    iput-boolean v1, p0, Lcom/android/sprintmenu/DUNEnable;->mOkClicked:Z

    .line 142
    iput-boolean v1, p0, Lcom/android/sprintmenu/DUNEnable;->enabled:Z

    .line 147
    :goto_12
    iget-object v0, p0, Lcom/android/sprintmenu/DUNEnable;->settings:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "SHOWING_DIALOG"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 148
    iget-object v0, p0, Lcom/android/sprintmenu/DUNEnable;->mButtonDataDun:Landroid/preference/CheckBoxPreference;

    iget-boolean v1, p0, Lcom/android/sprintmenu/DUNEnable;->enabled:Z

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 149
    iput-boolean v2, p0, Lcom/android/sprintmenu/DUNEnable;->mDataDunClicked:Z

    .line 151
    :cond_2a
    return-void

    .line 145
    :cond_2b
    iput-boolean v2, p0, Lcom/android/sprintmenu/DUNEnable;->enabled:Z

    goto :goto_12
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .registers 5
    .parameter "arg0"

    .prologue
    const/4 v2, 0x0

    .line 154
    iget-boolean v0, p0, Lcom/android/sprintmenu/DUNEnable;->mDataDunClicked:Z

    if-eqz v0, :cond_21

    iget-boolean v0, p0, Lcom/android/sprintmenu/DUNEnable;->mOkClicked:Z

    if-nez v0, :cond_21

    .line 155
    iput-boolean v2, p0, Lcom/android/sprintmenu/DUNEnable;->enabled:Z

    .line 156
    iget-object v0, p0, Lcom/android/sprintmenu/DUNEnable;->mButtonDataDun:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 157
    iput-boolean v2, p0, Lcom/android/sprintmenu/DUNEnable;->mDataDunClicked:Z

    .line 158
    iget-object v0, p0, Lcom/android/sprintmenu/DUNEnable;->settings:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "SHOWING_DIALOG"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 160
    :cond_21
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .registers 6
    .parameter "preference"
    .parameter "value"

    .prologue
    const/4 v2, 0x1

    .line 117
    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 118
    invoke-direct {p0}, Lcom/android/sprintmenu/DUNEnable;->showDialog()V

    .line 119
    iget-object v0, p0, Lcom/android/sprintmenu/DUNEnable;->settings:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "SHOWING_DIALOG"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 127
    :goto_1b
    return v2

    .line 124
    :cond_1c
    const-string v0, "com.android.phone.DisableDUN"

    invoke-direct {p0, v0}, Lcom/android/sprintmenu/DUNEnable;->sendBroadcast(Ljava/lang/String;)V

    .line 125
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/sprintmenu/DUNEnable;->enabled:Z

    goto :goto_1b
.end method

.method public pause()V
    .registers 3

    .prologue
    .line 112
    iget-object v0, p0, Lcom/android/sprintmenu/DUNEnable;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/sprintmenu/DUNEnable;->mAirplaneSateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 113
    iget-object v0, p0, Lcom/android/sprintmenu/DUNEnable;->mButtonDataDun:Landroid/preference/CheckBoxPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 114
    return-void
.end method

.method public resume()V
    .registers 4

    .prologue
    .line 92
    iget-object v0, p0, Lcom/android/sprintmenu/DUNEnable;->mButtonDataDun:Landroid/preference/CheckBoxPreference;

    invoke-direct {p0}, Lcom/android/sprintmenu/DUNEnable;->getDataOnDunEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 93
    iget-object v0, p0, Lcom/android/sprintmenu/DUNEnable;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/sprintmenu/DUNEnable;->mAirplaneSateReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/sprintmenu/DUNEnable;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 94
    iget-object v0, p0, Lcom/android/sprintmenu/DUNEnable;->mButtonDataDun:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 97
    iget-object v0, p0, Lcom/android/sprintmenu/DUNEnable;->mButtonDataDun:Landroid/preference/CheckBoxPreference;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 109
    return-void
.end method
