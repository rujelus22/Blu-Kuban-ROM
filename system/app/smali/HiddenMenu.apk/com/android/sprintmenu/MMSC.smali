.class public Lcom/android/sprintmenu/MMSC;
.super Landroid/preference/PreferenceActivity;
.source "MMSC.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static sNotSet:Ljava/lang/String;

.field private static final sProjection:[Ljava/lang/String;


# instance fields
.field private mCursor:Landroid/database/Cursor;

.field private mMmsc:Landroid/preference/EditTextPreference;

.field private mRes:Landroid/content/res/Resources;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 27
    const-class v0, Lcom/android/sprintmenu/MMSC;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/sprintmenu/MMSC;->TAG:Ljava/lang/String;

    .line 30
    const-string v0, "<Not set>"

    sput-object v0, Lcom/android/sprintmenu/MMSC;->sNotSet:Ljava/lang/String;

    .line 40
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "user"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "mmsc"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/sprintmenu/MMSC;->sProjection:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 24
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    return-void
.end method

.method private checkNotSet(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .parameter "value"

    .prologue
    .line 181
    if-eqz p1, :cond_a

    sget-object v0, Lcom/android/sprintmenu/MMSC;->sNotSet:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 182
    :cond_a
    const-string p1, ""

    .line 184
    .end local p1
    :cond_c
    return-object p1
.end method

.method private checkNull(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .parameter "value"

    .prologue
    .line 173
    if-eqz p1, :cond_8

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_a

    .line 174
    :cond_8
    sget-object p1, Lcom/android/sprintmenu/MMSC;->sNotSet:Ljava/lang/String;

    .line 176
    .end local p1
    :cond_a
    return-object p1
.end method

.method private fillUi()V
    .registers 4

    .prologue
    .line 103
    iget-object v0, p0, Lcom/android/sprintmenu/MMSC;->mMmsc:Landroid/preference/EditTextPreference;

    iget-object v1, p0, Lcom/android/sprintmenu/MMSC;->mCursor:Landroid/database/Cursor;

    const/4 v2, 0x2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 104
    iget-object v0, p0, Lcom/android/sprintmenu/MMSC;->mMmsc:Landroid/preference/EditTextPreference;

    iget-object v1, p0, Lcom/android/sprintmenu/MMSC;->mMmsc:Landroid/preference/EditTextPreference;

    invoke-virtual {v1}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/sprintmenu/MMSC;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 105
    return-void
.end method

.method private showErrorMessage(Ljava/lang/String;)V
    .registers 5
    .parameter "message"

    .prologue
    .line 165
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f05008b

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 170
    return-void
.end method

.method private validateAndSave(Z)Z
    .registers 12
    .parameter "force"

    .prologue
    const/4 v9, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 134
    iget-object v7, p0, Lcom/android/sprintmenu/MMSC;->mMmsc:Landroid/preference/EditTextPreference;

    invoke-virtual {v7}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/sprintmenu/MMSC;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 135
    .local v2, mmsc_url:Ljava/lang/String;
    const/4 v1, 0x0

    .line 137
    .local v1, errorMsg:Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v7

    if-ge v7, v6, :cond_1d

    .line 138
    iget-object v7, p0, Lcom/android/sprintmenu/MMSC;->mRes:Landroid/content/res/Resources;

    const v8, 0x7f05008c

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 139
    :cond_1d
    if-eqz v1, :cond_34

    if-nez p1, :cond_34

    .line 140
    iget-object v6, p0, Lcom/android/sprintmenu/MMSC;->mMmsc:Landroid/preference/EditTextPreference;

    invoke-virtual {v6}, Landroid/preference/EditTextPreference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 141
    .local v0, before_mmsc:Ljava/lang/String;
    iget-object v6, p0, Lcom/android/sprintmenu/MMSC;->mMmsc:Landroid/preference/EditTextPreference;

    invoke-virtual {v6, v0}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 142
    invoke-direct {p0, v1}, Lcom/android/sprintmenu/MMSC;->showErrorMessage(Ljava/lang/String;)V

    .line 161
    .end local v0           #before_mmsc:Ljava/lang/String;
    :cond_33
    :goto_33
    return v5

    .line 146
    :cond_34
    iget-object v7, p0, Lcom/android/sprintmenu/MMSC;->mCursor:Landroid/database/Cursor;

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v7

    if-nez v7, :cond_44

    .line 147
    sget-object v6, Lcom/android/sprintmenu/MMSC;->TAG:Ljava/lang/String;

    const-string v7, "Could not go to the first row in the Cursor when saving data."

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_33

    .line 153
    :cond_44
    iget-object v7, p0, Lcom/android/sprintmenu/MMSC;->mCursor:Landroid/database/Cursor;

    invoke-interface {v7, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 154
    .local v3, value:Ljava/lang/String;
    if-eqz v3, :cond_54

    const-string v7, "Sprint"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_33

    .line 157
    :cond_54
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 158
    .local v4, values:Landroid/content/ContentValues;
    const-string v5, "mmsc"

    iget-object v7, p0, Lcom/android/sprintmenu/MMSC;->mMmsc:Landroid/preference/EditTextPreference;

    invoke-virtual {v7}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/sprintmenu/MMSC;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v5, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    invoke-virtual {p0}, Lcom/android/sprintmenu/MMSC;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    sget-object v7, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v5, v7, v4, v9, v9}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move v5, v6

    .line 161
    goto :goto_33
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 8
    .parameter "icicle"

    .prologue
    const/4 v5, 0x0

    .line 52
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 54
    const v3, 0x7f03000b

    invoke-virtual {p0, v3}, Lcom/android/sprintmenu/MMSC;->addPreferencesFromResource(I)V

    .line 56
    const-string v3, "mmsc"

    invoke-virtual {p0, v3}, Lcom/android/sprintmenu/MMSC;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/EditTextPreference;

    iput-object v3, p0, Lcom/android/sprintmenu/MMSC;->mMmsc:Landroid/preference/EditTextPreference;

    .line 57
    invoke-virtual {p0}, Lcom/android/sprintmenu/MMSC;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iput-object v3, p0, Lcom/android/sprintmenu/MMSC;->mRes:Landroid/content/res/Resources;

    .line 59
    sget-object v3, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    sget-object v4, Lcom/android/sprintmenu/MMSC;->sProjection:[Ljava/lang/String;

    invoke-virtual {p0, v3, v4, v5, v5}, Lcom/android/sprintmenu/MMSC;->managedQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    iput-object v3, p0, Lcom/android/sprintmenu/MMSC;->mCursor:Landroid/database/Cursor;

    .line 61
    iget-object v3, p0, Lcom/android/sprintmenu/MMSC;->mCursor:Landroid/database/Cursor;

    if-eqz v3, :cond_2d

    .line 62
    iget-object v3, p0, Lcom/android/sprintmenu/MMSC;->mCursor:Landroid/database/Cursor;

    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    .line 65
    :cond_2d
    iget-object v3, p0, Lcom/android/sprintmenu/MMSC;->mCursor:Landroid/database/Cursor;

    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v0

    .line 67
    .local v0, countOfCursor:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_34
    add-int/lit8 v3, v0, -0x1

    if-ge v1, v3, :cond_4e

    .line 68
    iget-object v3, p0, Lcom/android/sprintmenu/MMSC;->mCursor:Landroid/database/Cursor;

    const/4 v4, 0x1

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 70
    .local v2, value:Ljava/lang/String;
    if-eqz v2, :cond_52

    const-string v3, "Sprint"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_52

    .line 71
    iget-object v3, p0, Lcom/android/sprintmenu/MMSC;->mCursor:Landroid/database/Cursor;

    invoke-interface {v3, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 78
    .end local v2           #value:Ljava/lang/String;
    :cond_4e
    invoke-direct {p0}, Lcom/android/sprintmenu/MMSC;->fillUi()V

    .line 79
    return-void

    .line 75
    .restart local v2       #value:Ljava/lang/String;
    :cond_52
    iget-object v3, p0, Lcom/android/sprintmenu/MMSC;->mCursor:Landroid/database/Cursor;

    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    .line 67
    add-int/lit8 v1, v1, 0x1

    goto :goto_34
.end method

.method protected onDestroy()V
    .registers 2

    .prologue
    .line 95
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onDestroy()V

    .line 96
    iget-object v0, p0, Lcom/android/sprintmenu/MMSC;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/android/sprintmenu/MMSC;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_14

    .line 97
    iget-object v0, p0, Lcom/android/sprintmenu/MMSC;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 98
    :cond_14
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 4
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 109
    packed-switch p1, :pswitch_data_14

    .line 117
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_7
    return v0

    .line 111
    :pswitch_8
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/sprintmenu/MMSC;->validateAndSave(Z)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 112
    invoke-virtual {p0}, Lcom/android/sprintmenu/MMSC;->finish()V

    .line 114
    :cond_12
    const/4 v0, 0x1

    goto :goto_7

    .line 109
    :pswitch_data_14
    .packed-switch 0x4
        :pswitch_8
    .end packed-switch
.end method

.method public onPause()V
    .registers 2

    .prologue
    .line 89
    invoke-virtual {p0}, Lcom/android/sprintmenu/MMSC;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 90
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    .line 91
    return-void
.end method

.method public onResume()V
    .registers 2

    .prologue
    .line 83
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 84
    invoke-virtual {p0}, Lcom/android/sprintmenu/MMSC;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 85
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 5
    .parameter "icicle"

    .prologue
    .line 122
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 123
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/sprintmenu/MMSC;->validateAndSave(Z)Z

    .line 124
    const-string v0, "pos"

    iget-object v1, p0, Lcom/android/sprintmenu/MMSC;->mCursor:Landroid/database/Cursor;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 125
    return-void
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .registers 5
    .parameter "sharedPreferences"
    .parameter "key"

    .prologue
    .line 189
    invoke-virtual {p0, p2}, Lcom/android/sprintmenu/MMSC;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 190
    .local v0, pref:Landroid/preference/Preference;
    if-eqz v0, :cond_1a

    .line 191
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/sprintmenu/MMSC;->validateAndSave(Z)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 192
    const-string v1, ""

    invoke-interface {p1, p2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/sprintmenu/MMSC;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 195
    :cond_1a
    return-void
.end method
