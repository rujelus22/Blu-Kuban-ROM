.class public Lcom/syncmldstmo/smlMyPhonebook;
.super Landroid/preference/PreferenceActivity;
.source "smlMyPhonebook.java"

# interfaces
.implements Lcom/syncmldstmo/base/smlDef;


# instance fields
.field private calendar_sync:Landroid/preference/CheckBoxPreference;

.field private contacts_sync:Landroid/preference/CheckBoxPreference;

.field private profileInfo:Lcom/syncmldstmo/database/smlDbProfileInfo;

.field private sync_now:Landroid/preference/Preference;

.field private sync_result:Landroid/preference/Preference;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 23
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 27
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/syncmldstmo/smlMyPhonebook;->profileInfo:Lcom/syncmldstmo/database/smlDbProfileInfo;

    return-void
.end method

.method static synthetic access$000(Lcom/syncmldstmo/smlMyPhonebook;)Lcom/syncmldstmo/database/smlDbProfileInfo;
    .registers 2
    .parameter "x0"

    .prologue
    .line 23
    iget-object v0, p0, Lcom/syncmldstmo/smlMyPhonebook;->profileInfo:Lcom/syncmldstmo/database/smlDbProfileInfo;

    return-object v0
.end method

.method static synthetic access$100(Lcom/syncmldstmo/smlMyPhonebook;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/syncmldstmo/smlMyPhonebook;->smluiCheckMember()V

    return-void
.end method

.method static synthetic access$200(Lcom/syncmldstmo/smlMyPhonebook;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/syncmldstmo/smlMyPhonebook;->smluiRoaming()V

    return-void
.end method

.method static synthetic access$300(Lcom/syncmldstmo/smlMyPhonebook;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/syncmldstmo/smlMyPhonebook;->smluiStartSync()V

    return-void
.end method

.method static synthetic access$400(Lcom/syncmldstmo/smlMyPhonebook;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/syncmldstmo/smlMyPhonebook;->smluiSyncResult()V

    return-void
.end method

.method static synthetic access$500(Lcom/syncmldstmo/smlMyPhonebook;)Landroid/preference/CheckBoxPreference;
    .registers 2
    .parameter "x0"

    .prologue
    .line 23
    iget-object v0, p0, Lcom/syncmldstmo/smlMyPhonebook;->contacts_sync:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method static synthetic access$600(Lcom/syncmldstmo/smlMyPhonebook;)Landroid/preference/CheckBoxPreference;
    .registers 2
    .parameter "x0"

    .prologue
    .line 23
    iget-object v0, p0, Lcom/syncmldstmo/smlMyPhonebook;->calendar_sync:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method private smluiCheckMember()V
    .registers 3

    .prologue
    .line 185
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/syncmldstmo/smlCheckMember;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 186
    invoke-virtual {p0, v0}, Lcom/syncmldstmo/smlMyPhonebook;->startActivity(Landroid/content/Intent;)V

    .line 187
    return-void
.end method

.method private smluiRoaming()V
    .registers 3

    .prologue
    .line 173
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/syncmldstmo/smlCheckRoaming;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 174
    invoke-virtual {p0, v0}, Lcom/syncmldstmo/smlMyPhonebook;->startActivity(Landroid/content/Intent;)V

    .line 175
    return-void
.end method

.method private smluiStartSync()V
    .registers 3

    .prologue
    .line 179
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/syncmldstmo/smluiStartSync;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 180
    invoke-virtual {p0, v0}, Lcom/syncmldstmo/smlMyPhonebook;->startActivity(Landroid/content/Intent;)V

    .line 181
    return-void
.end method

.method private smluiSyncResult()V
    .registers 3

    .prologue
    .line 167
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/syncmldstmo/smlSyncResult;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 168
    invoke-virtual {p0, v0}, Lcom/syncmldstmo/smlMyPhonebook;->startActivity(Landroid/content/Intent;)V

    .line 169
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 5
    .parameter "savedInstanceState"

    .prologue
    const/4 v2, 0x0

    .line 41
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 44
    invoke-static {}, Lcom/syncmldstmo/DSService;->smlGetMyPhonebookString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/syncmldstmo/smlMyPhonebook;->setTitle(Ljava/lang/CharSequence;)V

    .line 46
    const/high16 v0, 0x7f04

    invoke-virtual {p0, v0}, Lcom/syncmldstmo/smlMyPhonebook;->addPreferencesFromResource(I)V

    .line 48
    invoke-static {}, Lcom/syncmldstmo/database/smlDb;->smlGetActivedProfileIndex()I

    move-result v0

    invoke-static {v0}, Lcom/syncmldstmo/database/smlDb;->smlGetProfileInfo(I)Lcom/syncmldstmo/database/smlDbProfileInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/syncmldstmo/smlMyPhonebook;->profileInfo:Lcom/syncmldstmo/database/smlDbProfileInfo;

    .line 51
    const-string v0, "sync_now"

    invoke-virtual {p0, v0}, Lcom/syncmldstmo/smlMyPhonebook;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/syncmldstmo/smlMyPhonebook;->sync_now:Landroid/preference/Preference;

    .line 52
    iget-object v0, p0, Lcom/syncmldstmo/smlMyPhonebook;->sync_now:Landroid/preference/Preference;

    new-instance v1, Lcom/syncmldstmo/smlMyPhonebook$1;

    invoke-direct {v1, p0}, Lcom/syncmldstmo/smlMyPhonebook$1;-><init>(Lcom/syncmldstmo/smlMyPhonebook;)V

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 100
    const-string v0, "sync_result"

    invoke-virtual {p0, v0}, Lcom/syncmldstmo/smlMyPhonebook;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/syncmldstmo/smlMyPhonebook;->sync_result:Landroid/preference/Preference;

    .line 101
    iget-object v0, p0, Lcom/syncmldstmo/smlMyPhonebook;->sync_result:Landroid/preference/Preference;

    new-instance v1, Lcom/syncmldstmo/smlMyPhonebook$2;

    invoke-direct {v1, p0}, Lcom/syncmldstmo/smlMyPhonebook$2;-><init>(Lcom/syncmldstmo/smlMyPhonebook;)V

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 111
    const-string v0, "contacts_sync"

    invoke-virtual {p0, v0}, Lcom/syncmldstmo/smlMyPhonebook;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/syncmldstmo/smlMyPhonebook;->contacts_sync:Landroid/preference/CheckBoxPreference;

    .line 112
    iget-object v0, p0, Lcom/syncmldstmo/smlMyPhonebook;->contacts_sync:Landroid/preference/CheckBoxPreference;

    invoke-static {}, Lcom/syncmldstmo/DSService;->smlGetContactString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 113
    iget-object v0, p0, Lcom/syncmldstmo/smlMyPhonebook;->profileInfo:Lcom/syncmldstmo/database/smlDbProfileInfo;

    iget-boolean v0, v0, Lcom/syncmldstmo/database/smlDbProfileInfo;->bIsMember:Z

    if-eqz v0, :cond_9b

    .line 114
    iget-object v0, p0, Lcom/syncmldstmo/smlMyPhonebook;->contacts_sync:Landroid/preference/CheckBoxPreference;

    iget-object v1, p0, Lcom/syncmldstmo/smlMyPhonebook;->profileInfo:Lcom/syncmldstmo/database/smlDbProfileInfo;

    iget-object v1, v1, Lcom/syncmldstmo/database/smlDbProfileInfo;->Contact_SyncInfo:Lcom/syncmldstmo/database/smlDbSyncItemInfo;

    iget-boolean v1, v1, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->Sync:Z

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 117
    :goto_62
    iget-object v0, p0, Lcom/syncmldstmo/smlMyPhonebook;->contacts_sync:Landroid/preference/CheckBoxPreference;

    new-instance v1, Lcom/syncmldstmo/smlMyPhonebook$3;

    invoke-direct {v1, p0}, Lcom/syncmldstmo/smlMyPhonebook$3;-><init>(Lcom/syncmldstmo/smlMyPhonebook;)V

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 138
    const-string v0, "calendar_sync"

    invoke-virtual {p0, v0}, Lcom/syncmldstmo/smlMyPhonebook;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/syncmldstmo/smlMyPhonebook;->calendar_sync:Landroid/preference/CheckBoxPreference;

    .line 139
    iget-object v0, p0, Lcom/syncmldstmo/smlMyPhonebook;->calendar_sync:Landroid/preference/CheckBoxPreference;

    invoke-static {}, Lcom/syncmldstmo/DSService;->smlGetCalendarString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 140
    iget-object v0, p0, Lcom/syncmldstmo/smlMyPhonebook;->profileInfo:Lcom/syncmldstmo/database/smlDbProfileInfo;

    iget-boolean v0, v0, Lcom/syncmldstmo/database/smlDbProfileInfo;->bIsMember:Z

    if-eqz v0, :cond_a1

    .line 141
    iget-object v0, p0, Lcom/syncmldstmo/smlMyPhonebook;->calendar_sync:Landroid/preference/CheckBoxPreference;

    iget-object v1, p0, Lcom/syncmldstmo/smlMyPhonebook;->profileInfo:Lcom/syncmldstmo/database/smlDbProfileInfo;

    iget-object v1, v1, Lcom/syncmldstmo/database/smlDbProfileInfo;->Calendar_SyncInfo:Lcom/syncmldstmo/database/smlDbSyncItemInfo;

    iget-boolean v1, v1, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->Sync:Z

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 144
    :goto_90
    iget-object v0, p0, Lcom/syncmldstmo/smlMyPhonebook;->calendar_sync:Landroid/preference/CheckBoxPreference;

    new-instance v1, Lcom/syncmldstmo/smlMyPhonebook$4;

    invoke-direct {v1, p0}, Lcom/syncmldstmo/smlMyPhonebook$4;-><init>(Lcom/syncmldstmo/smlMyPhonebook;)V

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 163
    return-void

    .line 116
    :cond_9b
    iget-object v0, p0, Lcom/syncmldstmo/smlMyPhonebook;->contacts_sync:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_62

    .line 143
    :cond_a1
    iget-object v0, p0, Lcom/syncmldstmo/smlMyPhonebook;->calendar_sync:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_90
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .registers 4
    .parameter "keycode"
    .parameter "event"

    .prologue
    .line 192
    packed-switch p1, :pswitch_data_c

    .line 197
    :goto_3
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceActivity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0

    .line 195
    :pswitch_8
    invoke-virtual {p0}, Lcom/syncmldstmo/smlMyPhonebook;->finish()V

    goto :goto_3

    .line 192
    :pswitch_data_c
    .packed-switch 0x4
        :pswitch_8
    .end packed-switch
.end method
