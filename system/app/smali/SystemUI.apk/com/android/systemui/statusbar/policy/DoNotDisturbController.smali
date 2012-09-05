.class public Lcom/android/systemui/statusbar/policy/DoNotDisturbController;
.super Ljava/lang/Object;
.source "DoNotDisturbController.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;
.implements Lcom/android/systemui/statusbar/policy/QuickSettingButton$Listener;


# static fields
.field private static final TAG:Ljava/lang/String; = "StatusBar.DoNotDisturbController"

.field private static final TW_TAG:Ljava/lang/String; = "STATUSBAR-DoNotDisturbController"


# instance fields
.field private mButton:Lcom/android/systemui/statusbar/policy/QuickSettingButton;

.field private mCheckBox:Landroid/widget/CompoundButton;

.field private mContext:Landroid/content/Context;

.field private mDoNotDisturb:Z

.field mPrefs:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/widget/CompoundButton;)V
    .registers 6
    .parameter "context"
    .parameter "checkbox"

    .prologue
    const/4 v0, 0x0

    .line 122
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 123
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/DoNotDisturbController;->mContext:Landroid/content/Context;

    .line 125
    invoke-static {p1}, Lcom/android/systemui/statusbar/policy/Prefs;->read(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/DoNotDisturbController;->mPrefs:Landroid/content/SharedPreferences;

    .line 126
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/DoNotDisturbController;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v1, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 127
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/DoNotDisturbController;->mPrefs:Landroid/content/SharedPreferences;

    const-string v2, "do_not_disturb"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/DoNotDisturbController;->mDoNotDisturb:Z

    .line 129
    iput-object p2, p0, Lcom/android/systemui/statusbar/policy/DoNotDisturbController;->mCheckBox:Landroid/widget/CompoundButton;

    .line 130
    invoke-virtual {p2, p0}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 132
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/DoNotDisturbController;->mDoNotDisturb:Z

    if-nez v1, :cond_25

    const/4 v0, 0x1

    :cond_25
    invoke-virtual {p2, v0}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 133
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/policy/QuickSettingButton;)V
    .registers 4
    .parameter "context"
    .parameter "button"

    .prologue
    .line 52
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/DoNotDisturbController;->mContext:Landroid/content/Context;

    .line 54
    iput-object p2, p0, Lcom/android/systemui/statusbar/policy/DoNotDisturbController;->mButton:Lcom/android/systemui/statusbar/policy/QuickSettingButton;

    .line 55
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/DoNotDisturbController;->mButton:Lcom/android/systemui/statusbar/policy/QuickSettingButton;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/policy/QuickSettingButton;->setListener(Lcom/android/systemui/statusbar/policy/QuickSettingButton$Listener;)V

    .line 56
    return-void
.end method


# virtual methods
.method public deinit()V
    .registers 2

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/DoNotDisturbController;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 73
    return-void
.end method

.method public init()V
    .registers 5

    .prologue
    .line 59
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/DoNotDisturbController;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/Prefs;->read(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/DoNotDisturbController;->mPrefs:Landroid/content/SharedPreferences;

    .line 60
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/DoNotDisturbController;->mPrefs:Landroid/content/SharedPreferences;

    const-string v2, "do_not_disturb"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/DoNotDisturbController;->mDoNotDisturb:Z

    .line 62
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/DoNotDisturbController;->mButton:Lcom/android/systemui/statusbar/policy/QuickSettingButton;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/DoNotDisturbController;->mDoNotDisturb:Z

    if-eqz v1, :cond_48

    const/4 v1, 0x2

    :goto_1a
    invoke-virtual {v2, v1}, Lcom/android/systemui/statusbar/policy/QuickSettingButton;->setActivateStatus(I)V

    .line 64
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/DoNotDisturbController;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/Prefs;->edit(Landroid/content/Context;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 65
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v1, "do_not_disturb"

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/policy/DoNotDisturbController;->mDoNotDisturb:Z

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 66
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 68
    const-string v1, "STATUSBAR-DoNotDisturbController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "init() - mDoNotDisturb : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/policy/DoNotDisturbController;->mDoNotDisturb:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    return-void

    .line 62
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    :cond_48
    const/4 v1, 0x1

    goto :goto_1a
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .registers 6
    .parameter "view"
    .parameter "checked"

    .prologue
    .line 139
    if-nez p2, :cond_16

    const/4 v1, 0x1

    .line 140
    .local v1, value:Z
    :goto_3
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/policy/DoNotDisturbController;->mDoNotDisturb:Z

    if-eq v1, v2, :cond_15

    .line 141
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/DoNotDisturbController;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/systemui/statusbar/policy/Prefs;->edit(Landroid/content/Context;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 142
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "do_not_disturb"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 143
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 145
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    :cond_15
    return-void

    .line 139
    .end local v1           #value:Z
    :cond_16
    const/4 v1, 0x0

    goto :goto_3
.end method

.method public onClick(Z)V
    .registers 8
    .parameter "state"

    .prologue
    const/4 v2, 0x1

    .line 76
    const-string v3, "STATUSBAR-DoNotDisturbController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onClick() - state : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    if-nez p1, :cond_38

    move v1, v2

    .line 79
    .local v1, newVal:Z
    :goto_1c
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/policy/DoNotDisturbController;->mDoNotDisturb:Z

    if-eq v1, v3, :cond_37

    .line 80
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/DoNotDisturbController;->mDoNotDisturb:Z

    .line 81
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/DoNotDisturbController;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/systemui/statusbar/policy/Prefs;->edit(Landroid/content/Context;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 82
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v3, "do_not_disturb"

    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 83
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 85
    if-eqz p1, :cond_3a

    .line 86
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/DoNotDisturbController;->mButton:Lcom/android/systemui/statusbar/policy/QuickSettingButton;

    invoke-virtual {v3, v2}, Lcom/android/systemui/statusbar/policy/QuickSettingButton;->setActivateStatus(I)V

    .line 91
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    :cond_37
    :goto_37
    return-void

    .line 78
    .end local v1           #newVal:Z
    :cond_38
    const/4 v1, 0x0

    goto :goto_1c

    .line 88
    .restart local v0       #editor:Landroid/content/SharedPreferences$Editor;
    .restart local v1       #newVal:Z
    :cond_3a
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/DoNotDisturbController;->mButton:Lcom/android/systemui/statusbar/policy/QuickSettingButton;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/policy/QuickSettingButton;->setActivateStatus(I)V

    goto :goto_37
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .registers 6
    .parameter "prefs"
    .parameter "key"

    .prologue
    const/4 v1, 0x0

    .line 148
    const-string v2, "do_not_disturb"

    invoke-interface {p1, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 150
    .local v0, val:Z
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/policy/DoNotDisturbController;->mDoNotDisturb:Z

    if-eq v0, v2, :cond_15

    .line 151
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/DoNotDisturbController;->mDoNotDisturb:Z

    .line 152
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/DoNotDisturbController;->mCheckBox:Landroid/widget/CompoundButton;

    if-nez v0, :cond_12

    const/4 v1, 0x1

    :cond_12
    invoke-virtual {v2, v1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 154
    :cond_15
    return-void
.end method

.method public release()V
    .registers 2

    .prologue
    .line 157
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/DoNotDisturbController;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 158
    return-void
.end method
