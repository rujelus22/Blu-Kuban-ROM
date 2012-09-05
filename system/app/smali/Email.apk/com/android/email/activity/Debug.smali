.class public Lcom/android/email/activity/Debug;
.super Landroid/app/Activity;
.source "Debug.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field private mEnableDebugLoggingView:Landroid/widget/CheckBox;

.field private mEnableExchangeFileLoggingView:Landroid/widget/CheckBox;

.field private mEnableExchangeLoggingView:Landroid/widget/CheckBox;

.field private mEnableSensitiveLoggingView:Landroid/widget/CheckBox;

.field private mPreferences:Lcom/android/email/Preferences;

.field private mVersionView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 35
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method public static updateLoggingFlags(Landroid/content/Context;)V
    .registers 8
    .parameter "context"

    .prologue
    const/4 v5, 0x0

    .line 129
    invoke-static {p0}, Lcom/android/email/Preferences;->getPreferences(Landroid/content/Context;)Lcom/android/email/Preferences;

    move-result-object v4

    .line 130
    .local v4, prefs:Lcom/android/email/Preferences;
    invoke-virtual {v4}, Lcom/android/email/Preferences;->getEnableDebugLogging()Z

    move-result v6

    if-eqz v6, :cond_26

    const/4 v1, 0x1

    .line 131
    .local v1, debugLogging:I
    :goto_c
    invoke-virtual {v4}, Lcom/android/email/Preferences;->getEnableExchangeLogging()Z

    move-result v6

    if-eqz v6, :cond_28

    const/4 v2, 0x2

    .line 132
    .local v2, exchangeLogging:I
    :goto_13
    invoke-virtual {v4}, Lcom/android/email/Preferences;->getEnableExchangeFileLogging()Z

    move-result v6

    if-eqz v6, :cond_2a

    const/4 v3, 0x4

    .line 133
    .local v3, fileLogging:I
    :goto_1a
    or-int v5, v1, v2

    or-int v0, v5, v3

    .line 134
    .local v0, debugBits:I
    invoke-static {p0}, Lcom/android/email/Controller;->getInstance(Landroid/content/Context;)Lcom/android/email/Controller;

    move-result-object v5

    invoke-virtual {v5, v0}, Lcom/android/email/Controller;->serviceLogging(I)V

    .line 136
    return-void

    .end local v0           #debugBits:I
    .end local v1           #debugLogging:I
    .end local v2           #exchangeLogging:I
    .end local v3           #fileLogging:I
    :cond_26
    move v1, v5

    .line 130
    goto :goto_c

    .restart local v1       #debugLogging:I
    :cond_28
    move v2, v5

    .line 131
    goto :goto_13

    .restart local v2       #exchangeLogging:I
    :cond_2a
    move v3, v5

    .line 132
    goto :goto_1a
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .registers 10
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    const/4 v4, 0x0

    .line 73
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getId()I

    move-result v5

    packed-switch v5, :pswitch_data_58

    .line 96
    :cond_8
    :goto_8
    invoke-static {p0}, Lcom/android/email/activity/Debug;->updateLoggingFlags(Landroid/content/Context;)V

    .line 98
    iget-object v5, p0, Lcom/android/email/activity/Debug;->mPreferences:Lcom/android/email/Preferences;

    invoke-virtual {v5}, Lcom/android/email/Preferences;->getEnableDebugLogging()Z

    move-result v5

    if-eqz v5, :cond_51

    const/4 v1, 0x1

    .line 99
    .local v1, debugLogging:I
    :goto_14
    iget-object v5, p0, Lcom/android/email/activity/Debug;->mPreferences:Lcom/android/email/Preferences;

    invoke-virtual {v5}, Lcom/android/email/Preferences;->getEnableExchangeLogging()Z

    move-result v5

    if-eqz v5, :cond_53

    const/4 v2, 0x2

    .line 101
    .local v2, exchangeLogging:I
    :goto_1d
    iget-object v5, p0, Lcom/android/email/activity/Debug;->mPreferences:Lcom/android/email/Preferences;

    invoke-virtual {v5}, Lcom/android/email/Preferences;->getEnableExchangeFileLogging()Z

    move-result v5

    if-eqz v5, :cond_55

    const/4 v3, 0x4

    .line 102
    .local v3, fileLogging:I
    :goto_26
    or-int v4, v1, v2

    or-int v0, v4, v3

    .line 103
    .local v0, debugBits:I
    invoke-virtual {p0}, Lcom/android/email/activity/Debug;->getApplication()Landroid/app/Application;

    move-result-object v4

    invoke-static {v4}, Lcom/android/email/Controller;->getInstance(Landroid/content/Context;)Lcom/android/email/Controller;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/android/email/Controller;->serviceLogging(I)V

    .line 104
    return-void

    .line 75
    .end local v0           #debugBits:I
    .end local v1           #debugLogging:I
    .end local v2           #exchangeLogging:I
    .end local v3           #fileLogging:I
    :pswitch_36
    sput-boolean p2, Lcom/android/email/Email;->DEBUG:Z

    .line 76
    iget-object v5, p0, Lcom/android/email/activity/Debug;->mPreferences:Lcom/android/email/Preferences;

    sget-boolean v6, Lcom/android/email/Email;->DEBUG:Z

    invoke-virtual {v5, v6}, Lcom/android/email/Preferences;->setEnableDebugLogging(Z)V

    goto :goto_8

    .line 84
    :pswitch_40
    iget-object v5, p0, Lcom/android/email/activity/Debug;->mPreferences:Lcom/android/email/Preferences;

    invoke-virtual {v5, p2}, Lcom/android/email/Preferences;->setEnableExchangeLogging(Z)V

    goto :goto_8

    .line 87
    :pswitch_46
    iget-object v5, p0, Lcom/android/email/activity/Debug;->mPreferences:Lcom/android/email/Preferences;

    invoke-virtual {v5, p2}, Lcom/android/email/Preferences;->setEnableExchangeFileLogging(Z)V

    .line 88
    if-nez p2, :cond_8

    .line 89
    invoke-static {}, Lcom/android/emailcommon/utility/FileLogger;->close()V

    goto :goto_8

    :cond_51
    move v1, v4

    .line 98
    goto :goto_14

    .restart local v1       #debugLogging:I
    :cond_53
    move v2, v4

    .line 99
    goto :goto_1d

    .restart local v2       #exchangeLogging:I
    :cond_55
    move v3, v4

    .line 101
    goto :goto_26

    .line 73
    nop

    :pswitch_data_58
    .packed-switch 0x7f100126
        :pswitch_36
        :pswitch_40
        :pswitch_46
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 9
    .parameter "savedInstanceState"

    .prologue
    const v6, 0x7f100128

    const v5, 0x7f100127

    .line 45
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 46
    const v0, 0x7f040062

    invoke-virtual {p0, v0}, Lcom/android/email/activity/Debug;->setContentView(I)V

    .line 47
    invoke-static {p0}, Lcom/android/email/Preferences;->getPreferences(Landroid/content/Context;)Lcom/android/email/Preferences;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/Debug;->mPreferences:Lcom/android/email/Preferences;

    .line 48
    const v0, 0x7f100125

    invoke-virtual {p0, v0}, Lcom/android/email/activity/Debug;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/email/activity/Debug;->mVersionView:Landroid/widget/TextView;

    .line 49
    const v0, 0x7f100126

    invoke-virtual {p0, v0}, Lcom/android/email/activity/Debug;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/android/email/activity/Debug;->mEnableDebugLoggingView:Landroid/widget/CheckBox;

    .line 52
    invoke-virtual {p0, v5}, Lcom/android/email/activity/Debug;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/android/email/activity/Debug;->mEnableExchangeLoggingView:Landroid/widget/CheckBox;

    .line 53
    invoke-virtual {p0, v6}, Lcom/android/email/activity/Debug;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/android/email/activity/Debug;->mEnableExchangeFileLoggingView:Landroid/widget/CheckBox;

    .line 54
    iget-object v0, p0, Lcom/android/email/activity/Debug;->mEnableDebugLoggingView:Landroid/widget/CheckBox;

    invoke-virtual {v0, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 55
    iget-object v0, p0, Lcom/android/email/activity/Debug;->mEnableSensitiveLoggingView:Landroid/widget/CheckBox;

    invoke-virtual {v0, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 56
    iget-object v0, p0, Lcom/android/email/activity/Debug;->mEnableExchangeLoggingView:Landroid/widget/CheckBox;

    invoke-virtual {v0, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 57
    iget-object v0, p0, Lcom/android/email/activity/Debug;->mEnableExchangeFileLoggingView:Landroid/widget/CheckBox;

    invoke-virtual {v0, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 58
    iget-object v0, p0, Lcom/android/email/activity/Debug;->mVersionView:Landroid/widget/TextView;

    const v1, 0x7f080096

    invoke-virtual {p0, v1}, Lcom/android/email/activity/Debug;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const v4, 0x7f080004

    invoke-virtual {p0, v4}, Lcom/android/email/activity/Debug;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 60
    iget-object v0, p0, Lcom/android/email/activity/Debug;->mEnableDebugLoggingView:Landroid/widget/CheckBox;

    sget-boolean v1, Lcom/android/email/Email;->DEBUG:Z

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 61
    iget-object v0, p0, Lcom/android/email/activity/Debug;->mEnableSensitiveLoggingView:Landroid/widget/CheckBox;

    sget-boolean v1, Lcom/android/email/Email;->DEBUG_SENSITIVE:Z

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 63
    invoke-virtual {p0, v5}, Lcom/android/email/activity/Debug;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/android/email/activity/Debug;->mEnableExchangeLoggingView:Landroid/widget/CheckBox;

    .line 64
    invoke-virtual {p0, v6}, Lcom/android/email/activity/Debug;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/android/email/activity/Debug;->mEnableExchangeFileLoggingView:Landroid/widget/CheckBox;

    .line 65
    iget-object v0, p0, Lcom/android/email/activity/Debug;->mEnableExchangeLoggingView:Landroid/widget/CheckBox;

    invoke-virtual {v0, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 66
    iget-object v0, p0, Lcom/android/email/activity/Debug;->mEnableExchangeFileLoggingView:Landroid/widget/CheckBox;

    invoke-virtual {v0, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 67
    iget-object v0, p0, Lcom/android/email/activity/Debug;->mEnableExchangeLoggingView:Landroid/widget/CheckBox;

    sget-boolean v1, Lcom/android/emailcommon/EasRefs;->USER_LOG:Z

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 68
    iget-object v0, p0, Lcom/android/email/activity/Debug;->mEnableExchangeFileLoggingView:Landroid/widget/CheckBox;

    sget-boolean v1, Lcom/android/emailcommon/EasRefs;->FILE_LOG:Z

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 70
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 4
    .parameter "menu"

    .prologue
    .line 118
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 119
    invoke-virtual {p0}, Lcom/android/email/activity/Debug;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0f0017

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 120
    const/4 v0, 0x1

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 4
    .parameter "item"

    .prologue
    .line 108
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 109
    .local v0, id:I
    const v1, 0x7f1002ed

    if-ne v0, v1, :cond_12

    .line 110
    invoke-static {p0}, Lcom/android/email/Preferences;->getPreferences(Landroid/content/Context;)Lcom/android/email/Preferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/email/Preferences;->dump()V

    .line 111
    const/4 v1, 0x1

    .line 113
    :goto_11
    return v1

    :cond_12
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    goto :goto_11
.end method
