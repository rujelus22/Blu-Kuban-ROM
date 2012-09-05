.class public Lcom/syncmldstmo/smluiSyncSetting;
.super Landroid/preference/PreferenceActivity;
.source "smluiSyncSetting.java"

# interfaces
.implements Lcom/syncmldstmo/base/smlDef;


# instance fields
.field private DeleteCalendar:Z

.field private DeleteContact:Z

.field private InputText:Ljava/lang/String;

.field private context:Landroid/content/Context;

.field private itemInfo:Lcom/syncmldstmo/database/smlDbSyncItemInfo;

.field private nModelIndex:I

.field private nPrivate_onoff:I

.field private profile:Landroid/preference/Preference;

.field private profileInfo:Lcom/syncmldstmo/database/smlDbProfileInfo;

.field private selected:I

.field private sync_item:Landroid/preference/Preference;

.field private sync_type:Landroid/preference/Preference;

.field private wbxml_onoff:I


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 40
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 42
    iput-object v1, p0, Lcom/syncmldstmo/smluiSyncSetting;->profileInfo:Lcom/syncmldstmo/database/smlDbProfileInfo;

    .line 51
    iput-object v1, p0, Lcom/syncmldstmo/smluiSyncSetting;->itemInfo:Lcom/syncmldstmo/database/smlDbSyncItemInfo;

    .line 57
    iput-object v1, p0, Lcom/syncmldstmo/smluiSyncSetting;->context:Landroid/content/Context;

    .line 61
    iput v0, p0, Lcom/syncmldstmo/smluiSyncSetting;->selected:I

    .line 62
    iput v0, p0, Lcom/syncmldstmo/smluiSyncSetting;->nModelIndex:I

    .line 64
    iput-boolean v0, p0, Lcom/syncmldstmo/smluiSyncSetting;->DeleteContact:Z

    .line 65
    iput-boolean v0, p0, Lcom/syncmldstmo/smluiSyncSetting;->DeleteCalendar:Z

    return-void
.end method

.method static synthetic access$000(Lcom/syncmldstmo/smluiSyncSetting;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/syncmldstmo/smluiSyncSetting;->smluiProfile()V

    return-void
.end method

.method static synthetic access$100(Lcom/syncmldstmo/smluiSyncSetting;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/syncmldstmo/smluiSyncSetting;->smluiSyncItem()V

    return-void
.end method

.method static synthetic access$200(Lcom/syncmldstmo/smluiSyncSetting;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/syncmldstmo/smluiSyncSetting;->smluiSyncType()V

    return-void
.end method

.method static synthetic access$300(Lcom/syncmldstmo/smluiSyncSetting;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/syncmldstmo/smluiSyncSetting;->InputText:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$302(Lcom/syncmldstmo/smluiSyncSetting;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 40
    iput-object p1, p0, Lcom/syncmldstmo/smluiSyncSetting;->InputText:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$400(Lcom/syncmldstmo/smluiSyncSetting;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 40
    iget-boolean v0, p0, Lcom/syncmldstmo/smluiSyncSetting;->DeleteContact:Z

    return v0
.end method

.method static synthetic access$402(Lcom/syncmldstmo/smluiSyncSetting;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 40
    iput-boolean p1, p0, Lcom/syncmldstmo/smluiSyncSetting;->DeleteContact:Z

    return p1
.end method

.method static synthetic access$500(Lcom/syncmldstmo/smluiSyncSetting;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 40
    iget-boolean v0, p0, Lcom/syncmldstmo/smluiSyncSetting;->DeleteCalendar:Z

    return v0
.end method

.method static synthetic access$502(Lcom/syncmldstmo/smluiSyncSetting;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 40
    iput-boolean p1, p0, Lcom/syncmldstmo/smluiSyncSetting;->DeleteCalendar:Z

    return p1
.end method

.method static synthetic access$600(Lcom/syncmldstmo/smluiSyncSetting;)Landroid/content/Context;
    .registers 2
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/syncmldstmo/smluiSyncSetting;->context:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$700(Lcom/syncmldstmo/smluiSyncSetting;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 40
    iget v0, p0, Lcom/syncmldstmo/smluiSyncSetting;->wbxml_onoff:I

    return v0
.end method

.method static synthetic access$702(Lcom/syncmldstmo/smluiSyncSetting;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 40
    iput p1, p0, Lcom/syncmldstmo/smluiSyncSetting;->wbxml_onoff:I

    return p1
.end method

.method static synthetic access$800(Lcom/syncmldstmo/smluiSyncSetting;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 40
    iget v0, p0, Lcom/syncmldstmo/smluiSyncSetting;->selected:I

    return v0
.end method

.method static synthetic access$802(Lcom/syncmldstmo/smluiSyncSetting;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 40
    iput p1, p0, Lcom/syncmldstmo/smluiSyncSetting;->selected:I

    return p1
.end method

.method static synthetic access$900(Lcom/syncmldstmo/smluiSyncSetting;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 40
    iget v0, p0, Lcom/syncmldstmo/smluiSyncSetting;->nPrivate_onoff:I

    return v0
.end method

.method static synthetic access$902(Lcom/syncmldstmo/smluiSyncSetting;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 40
    iput p1, p0, Lcom/syncmldstmo/smluiSyncSetting;->nPrivate_onoff:I

    return p1
.end method

.method private smlGetSyncItem()Ljava/lang/String;
    .registers 7

    .prologue
    .line 139
    const/4 v3, 0x0

    .line 140
    .local v3, szItem:Ljava/lang/String;
    const/4 v0, 0x1

    .line 142
    .local v0, bAllCheck:Z
    invoke-virtual {p0}, Lcom/syncmldstmo/smluiSyncSetting;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const/high16 v5, 0x7f05

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 144
    .local v2, mSyncItem:[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, idx:I
    :goto_d
    const/4 v4, 0x4

    if-ge v1, v4, :cond_51

    .line 146
    invoke-static {v1}, Lcom/syncmldstmo/database/smlDb;->smlGetCurrentSyncDBInfo(I)Lcom/syncmldstmo/database/smlDbSyncItemInfo;

    move-result-object v4

    iput-object v4, p0, Lcom/syncmldstmo/smluiSyncSetting;->itemInfo:Lcom/syncmldstmo/database/smlDbSyncItemInfo;

    .line 148
    iget-object v4, p0, Lcom/syncmldstmo/smluiSyncSetting;->itemInfo:Lcom/syncmldstmo/database/smlDbSyncItemInfo;

    if-eqz v4, :cond_2b

    .line 150
    iget-object v4, p0, Lcom/syncmldstmo/smluiSyncSetting;->itemInfo:Lcom/syncmldstmo/database/smlDbSyncItemInfo;

    iget-boolean v4, v4, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->Sync:Z

    if-nez v4, :cond_21

    .line 151
    const/4 v0, 0x0

    .line 153
    :cond_21
    iget-object v4, p0, Lcom/syncmldstmo/smluiSyncSetting;->itemInfo:Lcom/syncmldstmo/database/smlDbSyncItemInfo;

    iget-boolean v4, v4, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->Sync:Z

    if-eqz v4, :cond_2b

    .line 155
    if-nez v1, :cond_2e

    .line 156
    aget-object v3, v2, v1

    .line 144
    :cond_2b
    :goto_2b
    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    .line 159
    :cond_2e
    invoke-static {v3}, Lcom/syncmldstmo/base/smlDebug;->IsEmpty(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_4e

    .line 160
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v5, v2, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_2b

    .line 162
    :cond_4e
    aget-object v3, v2, v1

    goto :goto_2b

    .line 167
    :cond_51
    if-eqz v0, :cond_5a

    .line 169
    const v4, 0x7f060004

    invoke-virtual {p0, v4}, Lcom/syncmldstmo/smluiSyncSetting;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 171
    :cond_5a
    invoke-static {v3}, Lcom/syncmldstmo/base/smlDebug;->IsEmpty(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_67

    .line 173
    const v4, 0x7f060005

    invoke-virtual {p0, v4}, Lcom/syncmldstmo/smluiSyncSetting;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 175
    :cond_67
    return-object v3
.end method

.method private smlGetSyncType()Ljava/lang/String;
    .registers 5

    .prologue
    .line 180
    invoke-virtual {p0}, Lcom/syncmldstmo/smluiSyncSetting;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f050001

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 181
    .local v1, szType:[Ljava/lang/String;
    iget-object v2, p0, Lcom/syncmldstmo/smluiSyncSetting;->profileInfo:Lcom/syncmldstmo/database/smlDbProfileInfo;

    iget v2, v2, Lcom/syncmldstmo/database/smlDbProfileInfo;->UISyncType:I

    add-int/lit8 v2, v2, -0x1

    aget-object v0, v1, v2

    .line 183
    .local v0, szItem:Ljava/lang/String;
    return-object v0
.end method

.method private smluiProfile()V
    .registers 3

    .prologue
    .line 121
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/syncmldstmo/smluiProfileList;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 122
    invoke-virtual {p0, v0}, Lcom/syncmldstmo/smluiSyncSetting;->startActivity(Landroid/content/Intent;)V

    .line 123
    return-void
.end method

.method private smluiSyncItem()V
    .registers 3

    .prologue
    .line 127
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/syncmldstmo/smluiSyncItem;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 128
    invoke-virtual {p0, v0}, Lcom/syncmldstmo/smluiSyncSetting;->startActivity(Landroid/content/Intent;)V

    .line 129
    return-void
.end method

.method private smluiSyncType()V
    .registers 3

    .prologue
    .line 133
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/syncmldstmo/smluiSyncType;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 134
    invoke-virtual {p0, v0}, Lcom/syncmldstmo/smluiSyncSetting;->startActivity(Landroid/content/Intent;)V

    .line 135
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 4
    .parameter "savedInstanceState"

    .prologue
    .line 69
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 70
    const v0, 0x7f040001

    invoke-virtual {p0, v0}, Lcom/syncmldstmo/smluiSyncSetting;->addPreferencesFromResource(I)V

    .line 72
    iput-object p0, p0, Lcom/syncmldstmo/smluiSyncSetting;->context:Landroid/content/Context;

    .line 74
    invoke-static {}, Lcom/syncmldstmo/database/smlDb;->smlGetActivedProfileIndex()I

    move-result v0

    invoke-static {v0}, Lcom/syncmldstmo/database/smlDb;->smlGetProfileInfo(I)Lcom/syncmldstmo/database/smlDbProfileInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/syncmldstmo/smluiSyncSetting;->profileInfo:Lcom/syncmldstmo/database/smlDbProfileInfo;

    .line 75
    invoke-static {}, Lcom/syncmldstmo/network/smlHttpAdapter;->smlGetNetworkInfo()V

    .line 78
    const-string v0, "Profile"

    invoke-virtual {p0, v0}, Lcom/syncmldstmo/smluiSyncSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/syncmldstmo/smluiSyncSetting;->profile:Landroid/preference/Preference;

    .line 79
    iget-object v0, p0, Lcom/syncmldstmo/smluiSyncSetting;->profile:Landroid/preference/Preference;

    invoke-static {}, Lcom/syncmldstmo/database/smlDb;->smlGetActivedProfileName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 80
    iget-object v0, p0, Lcom/syncmldstmo/smluiSyncSetting;->profile:Landroid/preference/Preference;

    new-instance v1, Lcom/syncmldstmo/smluiSyncSetting$1;

    invoke-direct {v1, p0}, Lcom/syncmldstmo/smluiSyncSetting$1;-><init>(Lcom/syncmldstmo/smluiSyncSetting;)V

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 90
    const-string v0, "SyncItem"

    invoke-virtual {p0, v0}, Lcom/syncmldstmo/smluiSyncSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/syncmldstmo/smluiSyncSetting;->sync_item:Landroid/preference/Preference;

    .line 91
    iget-object v0, p0, Lcom/syncmldstmo/smluiSyncSetting;->sync_item:Landroid/preference/Preference;

    invoke-direct {p0}, Lcom/syncmldstmo/smluiSyncSetting;->smlGetSyncItem()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 92
    iget-object v0, p0, Lcom/syncmldstmo/smluiSyncSetting;->sync_item:Landroid/preference/Preference;

    new-instance v1, Lcom/syncmldstmo/smluiSyncSetting$2;

    invoke-direct {v1, p0}, Lcom/syncmldstmo/smluiSyncSetting$2;-><init>(Lcom/syncmldstmo/smluiSyncSetting;)V

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 102
    const-string v0, "SyncType"

    invoke-virtual {p0, v0}, Lcom/syncmldstmo/smluiSyncSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/syncmldstmo/smluiSyncSetting;->sync_type:Landroid/preference/Preference;

    .line 103
    iget-object v0, p0, Lcom/syncmldstmo/smluiSyncSetting;->sync_type:Landroid/preference/Preference;

    invoke-direct {p0}, Lcom/syncmldstmo/smluiSyncSetting;->smlGetSyncType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 104
    iget-object v0, p0, Lcom/syncmldstmo/smluiSyncSetting;->sync_type:Landroid/preference/Preference;

    new-instance v1, Lcom/syncmldstmo/smluiSyncSetting$3;

    invoke-direct {v1, p0}, Lcom/syncmldstmo/smluiSyncSetting$3;-><init>(Lcom/syncmldstmo/smluiSyncSetting;)V

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 113
    sget-boolean v0, Lcom/syncmldstmo/network/smlHttpAdapter;->ENABLE_HTTPDATA_DEBUG:Z

    if-eqz v0, :cond_71

    .line 114
    const/4 v0, 0x0

    iput v0, p0, Lcom/syncmldstmo/smluiSyncSetting;->wbxml_onoff:I

    .line 117
    :goto_70
    return-void

    .line 116
    :cond_71
    const/4 v0, 0x1

    iput v0, p0, Lcom/syncmldstmo/smluiSyncSetting;->wbxml_onoff:I

    goto :goto_70
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .registers 14
    .parameter "id"

    .prologue
    const v9, 0x7f06000f

    const/high16 v8, 0x7f03

    const v11, 0x7f06003b

    const v7, 0x108009b

    const v10, 0x7f06003a

    .line 456
    packed-switch p1, :pswitch_data_19c

    .line 713
    :pswitch_11
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v6

    :goto_15
    return-object v6

    .line 459
    :pswitch_16
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 460
    .local v0, factory:Landroid/view/LayoutInflater;
    const/4 v6, 0x0

    invoke-virtual {v0, v8, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 462
    .local v4, textEntryView:Landroid/view/View;
    const v6, 0x7f070001

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    .line 463
    .local v2, text:Landroid/widget/EditText;
    new-instance v6, Lcom/syncmldstmo/smluiSyncSetting$4;

    invoke-direct {v6, p0}, Lcom/syncmldstmo/smluiSyncSetting$4;-><init>(Lcom/syncmldstmo/smluiSyncSetting;)V

    invoke-virtual {v2, v6}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 478
    new-instance v6, Landroid/app/AlertDialog$Builder;

    invoke-direct {v6, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v6, v7}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    invoke-virtual {v6, v9}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    invoke-virtual {v6, v4}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    new-instance v7, Lcom/syncmldstmo/smluiSyncSetting$7;

    invoke-direct {v7, p0}, Lcom/syncmldstmo/smluiSyncSetting$7;-><init>(Lcom/syncmldstmo/smluiSyncSetting;)V

    invoke-virtual {v6, v10, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    new-instance v7, Lcom/syncmldstmo/smluiSyncSetting$6;

    invoke-direct {v7, p0}, Lcom/syncmldstmo/smluiSyncSetting$6;-><init>(Lcom/syncmldstmo/smluiSyncSetting;)V

    invoke-virtual {v6, v7}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    new-instance v7, Lcom/syncmldstmo/smluiSyncSetting$5;

    invoke-direct {v7, p0}, Lcom/syncmldstmo/smluiSyncSetting$5;-><init>(Lcom/syncmldstmo/smluiSyncSetting;)V

    invoke-virtual {v6, v7}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v6

    goto :goto_15

    .line 507
    .end local v0           #factory:Landroid/view/LayoutInflater;
    .end local v2           #text:Landroid/widget/EditText;
    .end local v4           #textEntryView:Landroid/view/View;
    :pswitch_61
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 508
    .local v1, factory1:Landroid/view/LayoutInflater;
    const/4 v6, 0x0

    invoke-virtual {v1, v8, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .line 510
    .local v5, textEntryView1:Landroid/view/View;
    const v6, 0x7f070001

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    .line 511
    .local v3, text1:Landroid/widget/EditText;
    new-instance v6, Lcom/syncmldstmo/smluiSyncSetting$8;

    invoke-direct {v6, p0}, Lcom/syncmldstmo/smluiSyncSetting$8;-><init>(Lcom/syncmldstmo/smluiSyncSetting;)V

    invoke-virtual {v3, v6}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 527
    new-instance v6, Landroid/app/AlertDialog$Builder;

    invoke-direct {v6, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v6, v7}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    invoke-virtual {p0, v9}, Lcom/syncmldstmo/smluiSyncSetting;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    new-instance v7, Lcom/syncmldstmo/smluiSyncSetting$10;

    invoke-direct {v7, p0}, Lcom/syncmldstmo/smluiSyncSetting$10;-><init>(Lcom/syncmldstmo/smluiSyncSetting;)V

    invoke-virtual {v6, v10, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    new-instance v7, Lcom/syncmldstmo/smluiSyncSetting$9;

    invoke-direct {v7, p0}, Lcom/syncmldstmo/smluiSyncSetting$9;-><init>(Lcom/syncmldstmo/smluiSyncSetting;)V

    invoke-virtual {v6, v7}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v6

    goto/16 :goto_15

    .line 549
    .end local v1           #factory1:Landroid/view/LayoutInflater;
    .end local v3           #text1:Landroid/widget/EditText;
    .end local v5           #textEntryView1:Landroid/view/View;
    :pswitch_a8
    new-instance v6, Landroid/app/AlertDialog$Builder;

    invoke-direct {v6, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v6, v7}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    const v7, 0x7f060011

    invoke-virtual {v6, v7}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    const/high16 v7, 0x7f05

    const/4 v8, 0x2

    new-array v8, v8, [Z

    fill-array-data v8, :array_1ae

    new-instance v9, Lcom/syncmldstmo/smluiSyncSetting$14;

    invoke-direct {v9, p0}, Lcom/syncmldstmo/smluiSyncSetting$14;-><init>(Lcom/syncmldstmo/smluiSyncSetting;)V

    invoke-virtual {v6, v7, v8, v9}, Landroid/app/AlertDialog$Builder;->setMultiChoiceItems(I[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    new-instance v7, Lcom/syncmldstmo/smluiSyncSetting$13;

    invoke-direct {v7, p0}, Lcom/syncmldstmo/smluiSyncSetting$13;-><init>(Lcom/syncmldstmo/smluiSyncSetting;)V

    invoke-virtual {v6, v10, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    new-instance v7, Lcom/syncmldstmo/smluiSyncSetting$12;

    invoke-direct {v7, p0}, Lcom/syncmldstmo/smluiSyncSetting$12;-><init>(Lcom/syncmldstmo/smluiSyncSetting;)V

    invoke-virtual {v6, v7}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    new-instance v7, Lcom/syncmldstmo/smluiSyncSetting$11;

    invoke-direct {v7, p0}, Lcom/syncmldstmo/smluiSyncSetting$11;-><init>(Lcom/syncmldstmo/smluiSyncSetting;)V

    invoke-virtual {v6, v7}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v6

    goto/16 :goto_15

    .line 594
    :pswitch_ea
    new-instance v6, Landroid/app/AlertDialog$Builder;

    invoke-direct {v6, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v7, 0x7f060010

    invoke-virtual {v6, v7}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    const v7, 0x7f050003

    iget v8, p0, Lcom/syncmldstmo/smluiSyncSetting;->wbxml_onoff:I

    new-instance v9, Lcom/syncmldstmo/smluiSyncSetting$18;

    invoke-direct {v9, p0}, Lcom/syncmldstmo/smluiSyncSetting$18;-><init>(Lcom/syncmldstmo/smluiSyncSetting;)V

    invoke-virtual {v6, v7, v8, v9}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(IILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    new-instance v7, Lcom/syncmldstmo/smluiSyncSetting$17;

    invoke-direct {v7, p0}, Lcom/syncmldstmo/smluiSyncSetting$17;-><init>(Lcom/syncmldstmo/smluiSyncSetting;)V

    invoke-virtual {v6, v10, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    new-instance v7, Lcom/syncmldstmo/smluiSyncSetting$16;

    invoke-direct {v7, p0}, Lcom/syncmldstmo/smluiSyncSetting$16;-><init>(Lcom/syncmldstmo/smluiSyncSetting;)V

    invoke-virtual {v6, v11, v7}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    new-instance v7, Lcom/syncmldstmo/smluiSyncSetting$15;

    invoke-direct {v7, p0}, Lcom/syncmldstmo/smluiSyncSetting$15;-><init>(Lcom/syncmldstmo/smluiSyncSetting;)V

    invoke-virtual {v6, v7}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v6

    goto/16 :goto_15

    .line 637
    :pswitch_125
    new-instance v6, Landroid/app/AlertDialog$Builder;

    invoke-direct {v6, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v7, 0x7f060010

    invoke-virtual {v6, v7}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    const v7, 0x7f050004

    iget v8, p0, Lcom/syncmldstmo/smluiSyncSetting;->nPrivate_onoff:I

    new-instance v9, Lcom/syncmldstmo/smluiSyncSetting$22;

    invoke-direct {v9, p0}, Lcom/syncmldstmo/smluiSyncSetting$22;-><init>(Lcom/syncmldstmo/smluiSyncSetting;)V

    invoke-virtual {v6, v7, v8, v9}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(IILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    new-instance v7, Lcom/syncmldstmo/smluiSyncSetting$21;

    invoke-direct {v7, p0}, Lcom/syncmldstmo/smluiSyncSetting$21;-><init>(Lcom/syncmldstmo/smluiSyncSetting;)V

    invoke-virtual {v6, v10, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    new-instance v7, Lcom/syncmldstmo/smluiSyncSetting$20;

    invoke-direct {v7, p0}, Lcom/syncmldstmo/smluiSyncSetting$20;-><init>(Lcom/syncmldstmo/smluiSyncSetting;)V

    invoke-virtual {v6, v11, v7}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    new-instance v7, Lcom/syncmldstmo/smluiSyncSetting$19;

    invoke-direct {v7, p0}, Lcom/syncmldstmo/smluiSyncSetting$19;-><init>(Lcom/syncmldstmo/smluiSyncSetting;)V

    invoke-virtual {v6, v7}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v6

    goto/16 :goto_15

    .line 680
    :pswitch_160
    new-instance v6, Landroid/app/AlertDialog$Builder;

    invoke-direct {v6, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v7, 0x7f060021

    invoke-virtual {v6, v7}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    const v7, 0x7f050005

    iget v8, p0, Lcom/syncmldstmo/smluiSyncSetting;->nModelIndex:I

    new-instance v9, Lcom/syncmldstmo/smluiSyncSetting$26;

    invoke-direct {v9, p0}, Lcom/syncmldstmo/smluiSyncSetting$26;-><init>(Lcom/syncmldstmo/smluiSyncSetting;)V

    invoke-virtual {v6, v7, v8, v9}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(IILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    new-instance v7, Lcom/syncmldstmo/smluiSyncSetting$25;

    invoke-direct {v7, p0}, Lcom/syncmldstmo/smluiSyncSetting$25;-><init>(Lcom/syncmldstmo/smluiSyncSetting;)V

    invoke-virtual {v6, v10, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    new-instance v7, Lcom/syncmldstmo/smluiSyncSetting$24;

    invoke-direct {v7, p0}, Lcom/syncmldstmo/smluiSyncSetting$24;-><init>(Lcom/syncmldstmo/smluiSyncSetting;)V

    invoke-virtual {v6, v11, v7}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    new-instance v7, Lcom/syncmldstmo/smluiSyncSetting$23;

    invoke-direct {v7, p0}, Lcom/syncmldstmo/smluiSyncSetting$23;-><init>(Lcom/syncmldstmo/smluiSyncSetting;)V

    invoke-virtual {v6, v7}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v6

    goto/16 :goto_15

    .line 456
    nop

    :pswitch_data_19c
    .packed-switch 0x64
        :pswitch_16
        :pswitch_61
        :pswitch_a8
        :pswitch_ea
        :pswitch_125
        :pswitch_11
        :pswitch_160
    .end packed-switch

    .line 549
    :array_1ae
    .array-data 0x1
        0x0t
        0x0t
    .end array-data
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 8
    .parameter "menu"

    .prologue
    const/4 v5, 0x2

    const/4 v1, 0x1

    const/16 v4, 0x72

    const/16 v3, 0x30

    const/4 v2, 0x0

    .line 198
    sget-boolean v0, Lcom/syncmldstmo/smlHiddenKeyStringReceiver;->bAdmin:Z

    if-eqz v0, :cond_6a

    .line 200
    const-string v0, "Add Contact"

    invoke-interface {p1, v2, v1, v2, v0}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3, v4}, Landroid/view/MenuItem;->setShortcut(CC)Landroid/view/MenuItem;

    .line 201
    const-string v0, "Add Photo Contact"

    invoke-interface {p1, v2, v5, v2, v0}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3, v4}, Landroid/view/MenuItem;->setShortcut(CC)Landroid/view/MenuItem;

    .line 202
    const/4 v0, 0x3

    const-string v1, "Delete All Item"

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3, v4}, Landroid/view/MenuItem;->setShortcut(CC)Landroid/view/MenuItem;

    .line 203
    const/4 v0, 0x4

    const-string v1, "Add Calendar"

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3, v4}, Landroid/view/MenuItem;->setShortcut(CC)Landroid/view/MenuItem;

    .line 204
    const/4 v0, 0x5

    const-string v1, "Syncmlds Full Reset"

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3, v4}, Landroid/view/MenuItem;->setShortcut(CC)Landroid/view/MenuItem;

    .line 205
    const/4 v0, 0x6

    const-string v1, "Wbxml Log"

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3, v4}, Landroid/view/MenuItem;->setShortcut(CC)Landroid/view/MenuItem;

    .line 206
    const/4 v0, 0x7

    const-string v1, "Private Log"

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3, v4}, Landroid/view/MenuItem;->setShortcut(CC)Landroid/view/MenuItem;

    .line 207
    const/16 v0, 0x8

    const-string v1, "Production CP"

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3, v4}, Landroid/view/MenuItem;->setShortcut(CC)Landroid/view/MenuItem;

    .line 208
    const/16 v0, 0x9

    const-string v1, "EMUL CP"

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3, v4}, Landroid/view/MenuItem;->setShortcut(CC)Landroid/view/MenuItem;

    .line 215
    :goto_65
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0

    .line 212
    :cond_6a
    const-string v0, "Change Model Name"

    invoke-interface {p1, v2, v1, v2, v0}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3, v4}, Landroid/view/MenuItem;->setShortcut(CC)Landroid/view/MenuItem;

    .line 213
    const-string v0, "CP Receiver"

    invoke-interface {p1, v2, v5, v2, v0}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3, v4}, Landroid/view/MenuItem;->setShortcut(CC)Landroid/view/MenuItem;

    goto :goto_65
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 6
    .parameter "item"

    .prologue
    const/16 v2, 0x64

    const/4 v3, 0x0

    .line 220
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_8c

    .line 281
    :goto_a
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    return v1

    .line 223
    :pswitch_f
    sget-boolean v1, Lcom/syncmldstmo/smlHiddenKeyStringReceiver;->bAdmin:Z

    if-eqz v1, :cond_17

    .line 225
    invoke-virtual {p0, v2}, Lcom/syncmldstmo/smluiSyncSetting;->showDialog(I)V

    goto :goto_a

    .line 229
    :cond_17
    invoke-static {}, Lcom/syncmldstmo/cust/smlDevInfoAdapter;->smldevAdpGetModelName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "GT-I9000"

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_2c

    .line 230
    const/4 v1, 0x1

    iput v1, p0, Lcom/syncmldstmo/smluiSyncSetting;->nModelIndex:I

    .line 235
    :goto_26
    const/16 v1, 0x6a

    invoke-virtual {p0, v1}, Lcom/syncmldstmo/smluiSyncSetting;->showDialog(I)V

    goto :goto_a

    .line 231
    :cond_2c
    invoke-static {}, Lcom/syncmldstmo/cust/smlDevInfoAdapter;->smldevAdpGetModelName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "GT-I5800"

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_3c

    .line 232
    const/4 v1, 0x2

    iput v1, p0, Lcom/syncmldstmo/smluiSyncSetting;->nModelIndex:I

    goto :goto_26

    .line 234
    :cond_3c
    iput v3, p0, Lcom/syncmldstmo/smluiSyncSetting;->nModelIndex:I

    goto :goto_26

    .line 240
    :pswitch_3f
    sget-boolean v1, Lcom/syncmldstmo/smlHiddenKeyStringReceiver;->bAdmin:Z

    if-eqz v1, :cond_47

    .line 241
    invoke-virtual {p0, v2}, Lcom/syncmldstmo/smluiSyncSetting;->showDialog(I)V

    goto :goto_a

    .line 243
    :cond_47
    invoke-virtual {p0}, Lcom/syncmldstmo/smluiSyncSetting;->testReceiveCpMessage()V

    goto :goto_a

    .line 247
    :pswitch_4b
    const/16 v1, 0x66

    invoke-virtual {p0, v1}, Lcom/syncmldstmo/smluiSyncSetting;->showDialog(I)V

    goto :goto_a

    .line 251
    :pswitch_51
    invoke-virtual {p0}, Lcom/syncmldstmo/smluiSyncSetting;->testAddCalendar()V

    goto :goto_a

    .line 255
    :pswitch_55
    invoke-static {}, Lcom/syncmldstmo/cust/smlDevInfoAdapter;->smldevAdpGetIMSIFromSIM()Ljava/lang/String;

    move-result-object v0

    .line 256
    .local v0, imsi:Ljava/lang/String;
    invoke-static {p0}, Lcom/syncmldstmo/database/smlDbSql;->smlDbSqlFullReset(Landroid/content/Context;)V

    .line 257
    invoke-static {}, Lcom/syncmldstmo/database/smlDb;->smlDbInit()V

    .line 258
    invoke-static {v0}, Lcom/syncmldstmo/database/smlDb;->smlSetPhoneIMSI(Ljava/lang/String;)V

    .line 259
    invoke-static {v3}, Lcom/syncmldstmo/network/smlHttpAdapter;->setIsConnected(Z)V

    .line 260
    invoke-static {v3}, Lcom/syncmldstmo/cust/smlPhoneStatus;->smlSetRoamingUI(Z)V

    .line 261
    invoke-static {v3}, Lcom/syncmldstmo/base/smlAgent;->setSyncStart(Z)V

    .line 262
    iget-object v1, p0, Lcom/syncmldstmo/smluiSyncSetting;->context:Landroid/content/Context;

    const-string v2, "full reset success"

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_a

    .line 266
    .end local v0           #imsi:Ljava/lang/String;
    :pswitch_77
    const/16 v1, 0x67

    invoke-virtual {p0, v1}, Lcom/syncmldstmo/smluiSyncSetting;->showDialog(I)V

    goto :goto_a

    .line 270
    :pswitch_7d
    const/16 v1, 0x68

    invoke-virtual {p0, v1}, Lcom/syncmldstmo/smluiSyncSetting;->showDialog(I)V

    goto :goto_a

    .line 274
    :pswitch_83
    invoke-virtual {p0}, Lcom/syncmldstmo/smluiSyncSetting;->test_production_cp_test()V

    goto :goto_a

    .line 278
    :pswitch_87
    invoke-virtual {p0}, Lcom/syncmldstmo/smluiSyncSetting;->test_emul_cp_test()V

    goto :goto_a

    .line 220
    nop

    :pswitch_data_8c
    .packed-switch 0x1
        :pswitch_f
        :pswitch_3f
        :pswitch_4b
        :pswitch_51
        :pswitch_55
        :pswitch_77
        :pswitch_7d
        :pswitch_83
        :pswitch_87
    .end packed-switch
.end method

.method protected onResume()V
    .registers 3

    .prologue
    .line 188
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 190
    iget-object v0, p0, Lcom/syncmldstmo/smluiSyncSetting;->profile:Landroid/preference/Preference;

    invoke-static {}, Lcom/syncmldstmo/database/smlDb;->smlGetActivedProfileName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 191
    iget-object v0, p0, Lcom/syncmldstmo/smluiSyncSetting;->sync_item:Landroid/preference/Preference;

    invoke-direct {p0}, Lcom/syncmldstmo/smluiSyncSetting;->smlGetSyncItem()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 192
    iget-object v0, p0, Lcom/syncmldstmo/smluiSyncSetting;->sync_type:Landroid/preference/Preference;

    invoke-direct {p0}, Lcom/syncmldstmo/smluiSyncSetting;->smlGetSyncType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 193
    return-void
.end method

.method public testAddCalendar()V
    .registers 7

    .prologue
    .line 412
    const-string v2, "BEGIN:VCALENDAR\r\nVERSION:1.0\r\nBEGIN:VEVENT\r\nSUMMARY:aaBB\r\nDTSTART:20110219T000000\r\nDTEND:20110219T240000\r\nX-ALLDAY:true\r\nEND:VEVENT\r\nEND:VCALENDAR\r\n"

    .line 424
    .local v2, szVCalData:Ljava/lang/String;
    iget-object v3, p0, Lcom/syncmldstmo/smluiSyncSetting;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 425
    .local v0, cResolver:Landroid/content/ContentResolver;
    invoke-static {v2}, Lcom/syncmldstmo/base/vitem/smlCalendarAdapter;->DecodeVCal(Ljava/lang/String;)Lcom/syncmldstmo/base/vitem/smlCalendarAdapter;

    move-result-object v1

    .line 427
    .local v1, calendarItem:Lcom/syncmldstmo/base/vitem/smlCalendarAdapter;
    invoke-virtual {v1, v0}, Lcom/syncmldstmo/base/vitem/smlCalendarAdapter;->addCalendar(Landroid/content/ContentResolver;)Ljava/lang/String;

    .line 429
    iget-object v3, p0, Lcom/syncmldstmo/smluiSyncSetting;->context:Landroid/content/Context;

    const-string v4, "Add Calendar Success"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 430
    return-void
.end method

.method public testAddContact(I)V
    .registers 10
    .parameter "nCount"

    .prologue
    const/4 v7, 0x0

    .line 300
    const/4 v2, 0x0

    .local v2, i:I
    :goto_2
    if-ge v2, p1, :cond_21

    .line 316
    const-string v4, "BEGIN:VCARD\r\nVERSION:2.1\r\nADR;HOME;CHARSET=UTF-8;ENCODING=QUOTED-PRINTABLE:;;=C3=96denSt=C3=A4=C3=9Fchen 5267f;RiesenG=C3=B6=C3=B6=C3=9Fe St=C3=A4de;;9=\r\n991000;=C3=96sterrei=C3=9Fch\r\nADR;WORK;ENCODING=QUOTED-PRINTABLE:;;professionsalstreet;professionsalcity;;professionsalzip;professionsalcount=\r\nry\r\nTEL;HOME;VOICE:01600000000237\r\nEMAIL;OTHER:email@willllliammsss.com\r\nEMAIL;INTERNET;HOME:emaihomel@williamwilliams.org\r\nEMAIL;WORK:emailwork@willlllllliaaaaaams.de\r\nN:Williams;William\r\nTITLE:professionsalfunction\r\nORG:professionsalcompany\r\nEND:VCARD\r\n"

    .line 332
    .local v4, szVCardData:Ljava/lang/String;
    iget-object v5, p0, Lcom/syncmldstmo/smluiSyncSetting;->context:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 333
    .local v0, cResolver:Landroid/content/ContentResolver;
    invoke-static {v4}, Lcom/syncmldstmo/base/vitem/smlContactAdapter;->DecodeVCard(Ljava/lang/String;)Lcom/syncmldstmo/base/vitem/smlContactAdapter;

    move-result-object v1

    .line 335
    .local v1, contactItem:Lcom/syncmldstmo/base/vitem/smlContactAdapter;
    invoke-static {v0, v1, v7}, Lcom/syncmldstmo/base/vitem/smlContactAdapter;->addContact(Landroid/content/ContentResolver;Lcom/syncmldstmo/base/vitem/smlContactAdapter;I)I

    move-result v3

    .line 336
    .local v3, nRawId:I
    if-gtz v3, :cond_1e

    .line 338
    const/high16 v5, 0x20

    const-string v6, "addContact() fail"

    invoke-static {v5, v6}, Lcom/syncmldstmo/base/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 344
    .end local v0           #cResolver:Landroid/content/ContentResolver;
    .end local v1           #contactItem:Lcom/syncmldstmo/base/vitem/smlContactAdapter;
    .end local v3           #nRawId:I
    .end local v4           #szVCardData:Ljava/lang/String;
    :goto_1d
    return-void

    .line 300
    .restart local v0       #cResolver:Landroid/content/ContentResolver;
    .restart local v1       #contactItem:Lcom/syncmldstmo/base/vitem/smlContactAdapter;
    .restart local v3       #nRawId:I
    .restart local v4       #szVCardData:Ljava/lang/String;
    :cond_1e
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 343
    .end local v0           #cResolver:Landroid/content/ContentResolver;
    .end local v1           #contactItem:Lcom/syncmldstmo/base/vitem/smlContactAdapter;
    .end local v3           #nRawId:I
    .end local v4           #szVCardData:Ljava/lang/String;
    :cond_21
    iget-object v5, p0, Lcom/syncmldstmo/smluiSyncSetting;->context:Landroid/content/Context;

    const-string v6, "Add Success"

    invoke-static {v5, v6, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    goto :goto_1d
.end method

.method public testAddPhotoContact(I)V
    .registers 10
    .parameter "nCount"

    .prologue
    const/4 v7, 0x0

    .line 350
    const/4 v2, 0x0

    .local v2, i:I
    :goto_2
    if-ge v2, p1, :cond_fb

    .line 352
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "BEGIN:VCARD\r\nVERSION:2.1\r\nFN;CHARSET=UTF-8;ENCODING=QUOTED-PRINTABLE:FName"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\r\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "N;CHARSET=UTF-8;ENCODING=QUOTED-PRINTABLE:Photo"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ";Data"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ";;;\r\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "TEL;HOME;CELL:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\r\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "TEL;WORK;CELL:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\r\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "EMAIL:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "aaa"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "@aaa.com"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\r\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "NOTE;ENCODING=QUOTED-PRINTABLE:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "1abcedefghigklmnopqrstuvwxyz2abcedefghigklmnopqrstuvwxyz3abcedefghigklmnopqrstuvwxyz4abcedefghigklmnopqrstuvwxyz5abcedefghigklmnopqrstuvwxyz1abcedefghigklmnopqrstuvwxyz2abcedefghigklmnopqrstuvwxyz3abcedefghigklmnopqrstuvwxyz4abcedefghigklmnopqrstuvwxyz5abcedefghigklmnopqrstuvwxyz"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\r\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "PHOTO;ENCODING=BASE64;TYPE=JPEG:iVBORw0KGgoAAAANSUhEUgAAAEwAAABMCAIAAABI9cZ8AAAAA3NCSVQFBgUzC42AAAAY0klEQVR4nJ2cTY8k2XWen44+UXwvnWVFED1yJz1joARxIUNciAsC1EKwKHgheGn4V/ifGbC988aANlxwIYBa0OAYsKEy0ANU2VN2BKZDc4+7DlNenHsjM6t7LEgxQFdWVnzc8/2e99yYV//29wXIADAEmArtVyz/pPxCI+2DFYDg7zie9YkvA6Cgen15gUp/9H5za7+dT3750PMVDkR98SDH7cUV2MfL+vibfl/7+KnaH/eda9m/2R8eeaXynroWD8OjnVwDrECXJAp2XoA++eC806e0ffGMffnNjEX28Zm6EiP6LdslurpkV8pzv3PXrICxnL/PZY94ZU37GzVlu1zkxc2bnNd6N8KvrBcvrzl/87wvuv/xwpJXhrJ+7cXPj1QpRm/yjPnXfo+xfRJtbYt5rsQvZQOinVn3xb9YRuTPwHMF9gmTejDdMr85Pjw88FKWdh0vvM7OXqNuUn/pSOpy7g8937kYamlCMjyYiwgc51mE7/H5wuHzO4Hv/mz5j+ml+3EdD88s26qxrUN2/uulxGpXaU9UHh+F/HclKtvv1BQkk4zSncXxAsWmBdeIni+s2iLFa1zkiAvh9VHkXdmy2STw91UjnzjTetggdaVI87ouV4K9jOFPJAFvfuQEMmEUwKjha1yklhfXnkW9zEwoSjOmQWBZJ47Hu+Xrh3b2lcDCykXlyNtNMjBdRV3g+PHNPE1vEY+PiwxC2Cdy2L6wHibnpRdDxgzpFHVP1wfVNUNU3Wu6V4a7XbuJIfCepS3X9/D1A5/IDddHS2VC6DCnUt0dr/sD7h8XPS069Jz0cR5Ow8ZlitbLc2iq6XnSkermn3CBMVP0Re2wTwTF6z/53YOfIgg7RZzMbggYB8BsANAw8hqAATMVk6b5ix//7Pf+9F/Fa+Kbp21wC/wDDBZDWBBbxI1sME4AsmKn0RjNRrMxTiM3/PTPfs63dfPQDUCeiXELB7Mwbk3vP4SfiME8nW6AAT95DBFDcJIG41UYMEQAA+OJOEH6/akLrsOMLwr3Hfdca9fHq9wrmKTjH/7k7c/+SAXe3XtIb5CxPq57ZE7tQ2navSzZErCsizsyykF/8OM/fvj1lw/rQtYMo6QZTeCSfHOktKpMHhBOmi8xWUjg+B6ioux56PWf/HAO98BkluYCjQNAWpJxjGcOI6AycLixW7vl/zJ+KMtfv+ObKB9evbISBh82i4gbHDQUhpEBTugGG2RmQTD0ovLNNlqMJ5OJk7/79n0hbjEkTsGN4oSf4MYcYrAYwChYnCJOcLK8OUSkI7zGXhsRr04XDmsAr3/6g+YqTaQBsBQyBswKJzRigwpoUBhG/PZUtqeFOkLEjR2GaTy9ig8Rw28PH0aLYBj3Z1gXzAazARuIgdubg2Q23cput23xgfFkhjFgNxawnbABrGyn0O8e57f/bPvm6xGCiCAl9BOWEu2eiUG8GhgHxoGU3zpubM7LiyOqrOiZXq8gWAO8yp2R+XhXKeXzScJ/8Rd8dY9cUnOcUNapEnt5pmRgq0ji7o6Q3t3PsWKwVexcNjVpXR0r04+O8+d36+MDmwMSnvcX7vvDEhWisTvLs5ezOc8iXWUwgUpJNFf2cxPah7s7t1RKOWj60R1v5+m/fsnjw5LVfAdDWdMPFHey8zDJCuL4xR/o3/xrgvU//vvl/q/8wF6/ctHujqGoj3/5q8dff0kA9RzeAoT57p1uTL3keNCyru1CXmCxst8hIU5XTC/r8kBBdVf19enBV6ovHuv6cN/EC08Jd8gi5K3GNtzQKlBTp2ZNOh4f7u/xluQk+bbKcL9o61QKtW5IOv7+3fzF3W9+8UtfF8wx7RBVKbxByJ/99R+/EcgGwDArBkNPpDcjJ26/Z+OpJSQGsEzlI6eI01LwbXuM7Wn7X4/4e4IYogwWWOk6lIGZYTaYDabvlwDDxtdhf/3f/L/8mm/X+lv82zVOwQ1C9n3zD44ZEdbyJy2eP8RoRLB9u4b747YczOZBNpjMwswIBmww2YET/qoJaXvWaXmVAqMZGomTBYyDKh6DjYMxYLwKPFNARPi6BqQuxsEYbFRwQgfZYLoxuyk2jMZoNyOD7GQaCHj1KnAnYjx5PGOD2fesfE+3v2PxivgQwmywOJlZmCkijDE+xDgwDuX9N4ug3MzcvIohMCzwU0Tw2Q+Pv/fnf+bfrr5udoad56MXt4tqWaFkpbqEMgHuWdYynmVk39CAEWSvn3A03WmWKu6ORup7Z6Q8Q8nYkEAq61aLxHM6tGNgYgOTh6eXALPNGGhyo4SzecUVeLCE30UlmK4akOscpI9RXnxKIe373S1b5y4r3kGcEKW1yLKUp8ftBVSuRsm8qtY91BECAkmZhAhkF82NocPknx3fvpnX+3tYCG9pfKu/+s+/LF4Bk4GVc/JM8brioaFojIpK9Lx5zm+9RZZazjDlKieTh6uoGDJ5s3Y/58p1VFWOf/gzwv3x3rdVAUHJZRTV5wZ0ZD3/t7ZOup3v/uXP+fw4//JXD7/4JfLqiIpDLLUt8FJCa6lJVz7plwZUwKFkNyw7t63ndsuYy1TDC2KkpA9LAnc5LqlhLit4L4xv3nI7g/u6TlsWgJqGrrHnYAj1Fj8bzlJFAlI/FCRJBa9eUHVEuLe6eynhuYHCgbFpvfTOACvELvVeDFss7RRbsUm4UDq5qyDpacEkzYCoCLfS4KnAFtynbfFrFqGgihdTBcwVrfoxUp8p7v6Lv/C/VF1XWFbSXatzrp+W1j/3+yM7ebOj7bITTZYdYCsx5SDCJTV2Kxr4JtDbwkpGpgBNgDRjcADg7RHE0yNICCvc37u7cEXTZu8Jq2ymsXjFo2KCQnTOafO6rjy3iMWoF3V4wq17psDTV3cPrJcJ1jJ79KNzs80sOodZGYVJId5MuOdTm2oO7VYcpC9mHMeVACmqw5RStYaj+1NqFrk5oJg9/OIEajjP1SOb28x2hahdLw1BS2N6uYqR+WMnIKC0szOPf9QHZ6gwUpoZk+DxSZOnm9A74MPsUTPVeUjZN6lR1fKaOAcT4YS8OWfP0tEYki497U/P1d1be52Khppykpi9+57aGaXpu/mwLj6TlERRp5sy8wa6paRXphhRGnadjllIPWASR2l1Laub2NyrQ9FBjPizEwVVxdTQtpTh54bI8ogct55pwz1qfWavRiKrS7aWTUIPLKGpsmxnKd9LSA/X9Ja0YWnWm7uCGz2nQ4uTaToS6V0zn80eUCsBc+Hzt35Ym1lMbivITRi+rTq4rHjjNQuBR9ej14SmyIm0c3Y5abTeiKQPpzMn0R6oRWQvlef4vDCguosWKzI8Kg0BI4kRnr1k1jmopd03MyGmiTdvp0Pxrx7SnrgTaJLTsjQd38ikZ1wooMirt+bOMw8VtV5Nit5hmEvFrVLdgxaovRQXqBl37oahlPBwEe5pu0CmYoVdVGOyjoXCGSkHNV/KTsfkKoT4bOLtzJsZCa/+9ChJmwOuArhECJO7S7300eyjeXJ3nh01skPRLJPLS+zmFxyajDxZns1mQz5ul2mkE+KSGuP4EWUqQ6NaD5XGtCJ170r61OSSG7IpGUQOsw6dnvMF1FNLM9dOtO9lthHTJjbnvSvYswjW80ucMZlG9/fpKa3LuxyZmXZD0Rv5hNcBKmXn1y9AQsmC3iGEGxLSBJCQ1dChON7Q0iEroeizjVSi+4ovzVZNm1J6dbKeCVn/x4M/rKI07jO8Ffp8ilfA614F5eFZtGtHpuZRRTlTda2gF1mHjinneO70aXoBkyTfE7sKEuOUnYGmuWGDM1Jt8K519YZrJhC1ERityegnGpL88yNfrx6VaCOgfKB7SxBUb+HT+TvfTd0MUWEE86VxAS1IcuFF8vxhSKWcS6VyKVhpwWCigMlVdJiYjjroQrwrrz/LbNlzSOaAe/XEjDoXZB3wokb/JPMSTkoYO7Lt1bOlpVr3L4PXP//hZ4xwGhlIem8k7EScjFPAq/FkcQocXjmUGOJWh+n7MpndFAb8Brs5xAjfF/94tjdv9IPP7DAxvMANHx0DDAaWZ/rJsFcHIwxOYTe3MHIK9y2+8cPpt/ZNEBGnMCxOYYxBjGbxt2FYEJwIzCKCGE/EkN9gRBs8tgLVm0PC3URUDpQQhld4roknV00YmooO4lYuoSKTT0em6e+Q7dOHJPeteoLv8GxQHFg9q/fZB5of1v2zn4dC7lYJao6qAg9viMepbXxrfTBk5yglcUYjqTsEDVgXD7GBCvPEm6P0XS76acHOH61XcEPmHkpY69s6tXzDucVtl1wIfPn5o2P3qOuRfh+JpZzZHHo42ZPS8e1BZLMZ8J4V6TD9PeW8XEurk54odMMDecOlSjLSJFJ6EovXFnieYMCj1ozulnucyBIydtTX5hAXqYUCKjvyM6mAFakhHkmoYHKTBLES8z9IyAah8Spzd+epsq1N2e8XX9OHncDdPSpZPWpPRdFHec0pzph2YG+0uxh0ckBWepbLNCiVIislhdOEhIqbOIhbcSho8otu4B9ypE9uVdHHm92NX7JOqcpxL2zXzeDVLceLi7NLlNpN1XoOWYqn0msXCdBNnl3i7ayupZe92N/n8OyG11XbXvrR+949CpgSJynU2qvMl6P82T3AcyRxlat2gN4LoKTepGqHPsAzbk6osQRRdSj7DfAK1SnYxCc3WOyL/P8erTkWHgvuqjRUHAubJwPqUbMQdACBP+c5Gbq4UUy1f86Y1JUnZEa2nV9k+myeD8p003mQbItb3915roKlMXUhToIb77//nWJmoW8m8nC8uq/uidHbxKnmJOaZXTZokp/hQfRxerhdpeDO9u395GzMEsHx8+PDVw81vMnZrN1DaOwTz81hZcc6mRKaKibhF878kcBNvIV1YXPqbhnJ3L2uG7m/xROjjruc516kthzrHeVNhNueTqupgFSuSNGd5PQ6S21u1immZEdlQKWNyTyhpMeiqeDw9NDuoOpvikIeLuR4e5B1otlXvLKte0OM17bcQDZL7kHdvGVU3P1iv05cSpjC47isNjCQjUnD88lKhYDFXe6zpoen1YPZGh/h+5w8+9QqCoTLhbk/rtoW3h59XeUV5Q64dZ89tc7wMJ8N66tvratmg+oJSNwh8M2T6ao5zCt47Wx6dAM2Hft5YYA509FwrztfbsBOQDiaCvjCYitFmGqmr510u8QZzxUrjvPugRzxL18CzBPbkrABl8fakMZhcl9khcNelp3cS5JNWe4AsFx2D7lzEF76+flfWQKFjlKFptn8HBxOCKuy1iK5X8xkKypOzoc7vnVH5p4KM7E4W0eem2PoIJYV5aymXi5IuDcOdvKsSoY/pb9nqj93wKhUX87po/bGav/G23+98xDgqm/f3nnI2EflLaOWhoj2PUS9Oc4za06jU7tWp6yoJp7cfWmTcF8w6VDYnEOGsvsz9G7QHd+SWW9KdFPuORKOr0RNlOXu7i6YJXevm/OMjz1oOfvqfDhiy7I5yHEPNME4s7q1brgVA4p/dzUfu6bMEzEWya2i4k9L9/bUt7fMNBU2d8GKxOpMDZ46z64iDzjMEoTz9MBTM5fOPimJdVsaXyF4zsRz3lXWPlhdkq3FsSqVafrnZfH16cF4dk/UFq2FphfA3YyeVdgTAHp6bRqgBh4r9OlI4wghN296X4efbZU1nXBcCvwrPMHj46rq7m2k1bzPcoNRWaLrMXc457zg3GGxrCtBsuwEeiNGLeuD+3KNCAMu91e2FgQgJ+CN4bWW/daaqnEZ/tzvNEJ15omQJ1DYKlbU2wIFvmXKdVgbc2Kiev6VqPQdD761MEvyuvpKuHr3uxuzZaNuWE3z/NldfXDfHgi3loW48NIOazzbSJonAzKKikdGbU2yi6h9U4pn0tetMu9rkkfio+rCqVLJocVkaYpKFCzLJr71zbvRW15jJz5aPo9U6HVu32llKirzZ8e6OOviUI2WXRv93E1Xg3JGJ35u5MAzf9LnWV4xKrX0qE4ynlgzP/Xpenos6mSpR+3Mv0vyxvCXvb476M2sg9b/7nWrfStLOot3gmd3QmGug3yr03EC+ea+PlRLZitaIk05Pan1BAYpcxsfJBvCbjHAN5eUuwX2vUiysr736Zb5oLo5Ug1v45NwVhKgNqOBG83atvtb4g0Q8gUD3LfUl1+U9A5Fckl3U3lbfJ3wub5zf/qNy0u7se2ssnuFUbLq2ZjlRKATIruH9C4ma0kvjADMBy3bMh/UtvWmB5r2jkHmRG8grLMt4XMie7kQkjTrIDc86rJWIVi9gTXnGVGc2t4ryPBZfP68SHO5Z1l/8wCKnC+61azLnBWzQo6om2BjxfAomCsoCSn21lu7nEipDi2bHw+zv6+6LV5r7usgMt7kmWOX6rc5ESzA4p6bxzmg6U63Mzbx/iF3XvbJHP7srZI1UH45z1qXbS731O1hDWZWUBaLIYlK741J0l7NUN0+ZMZr0eLJrCSMbI/vZK5vHUN69cDfw95sgsPiXnOGQyNp3KtH9a3i1Ni3yU1MUkGaXtbtZ6DSSJ7mL5p0PN6VJ/H0sG4rlPPiwdre0b7/poWyqbZa0tluYCypCxkto66O5QA4BwGglpkWPCcOEh71vNAWiTWf6wa4RjksCZjMta3oQZR1WfdmrQGm1lh5zbkVYO7S8YtZ61t/d/+lPzT92dSKNhhJv9l5F+N+VCghtz2dVgyNrMHU9oxoMnlz98Y+NMFArmpOKJFgU1NduqmdXrg9XL0a4ixxX7YlA2FZH677Q8jS3bZdOgcdvzgSPCz3qz9e+vBeNq23z7XRFn1s2OQ0em1wmYiUsFl7grsDDzatsbr7NE3rtkrKLcmeScud/NcldT6z936l46REGnrGwddsFF0m39ZcblLG7eT0r4BJ853Y4B3r+kgfInPWAuDW4fh5EOO0bJmvQ+wviXnPRg56RhLma7hnwQzWp7UNxfYj3VupLwfhXi/yVt2xRs6bs13stM0anrtyeuPaFETucvmM8vkdTxPL4/36m7YfxPpfL45zULdg2+VMmePilP7Z3d1wb+mqAYAGCdqA7Kwv3KNFdasclxhld5lo3kpwnjeljg33c1S33uAInx/1JP/al/UhB3NXN9zX3MBA98ZdzrMdDF281pcv0hTDw5dnZs19A50eHh+kUqFEQ6zeme5WhONKpfuHS6qngx2/eD+pGbv6uVaXu0mHOz2yfn3/4I8Jp1q/en1zwAOrfULgnU3QJXcQDVcncMjCXQ8s4UcmOjBa1gQyVSrnxuX8qAtJjCtfOr+i04AHOxFzvvoC3xyY56MfJr5a/Wtf/BFwW7qXXly+A6Pg9Y+/f4z2IkjEyUSOxIC26Z5TMJgBJziBxfHHdz/5Fz/96qt3/r83/xD87Sv/m2rfgwE7jQFjBGZtbDbAiTgRg0d7AaXdyk/VTsEQROTG+QhiwE7709ti/eRhYb9j8z+5w6Z4t73/5v7x23fBKKu4xamb/uTQXg3hFDRYFRdCZ/z085Pw17lnb8dP/vTnf/TnP3/48v5xuRfy2gmw0lBotbPLnemVPaQvTNXN2FvkRPDm2dO67WmJ+XjUYWJj+XotT/er5ZLq3kXt+bLGxQ0D4PWPNXOKGCxOjCdiMAgbxq6D8xsYcVIMEQP3X97b3/hf/eKXESr/6Na/zXdssFcFiKG9fRED46l9yNQYp7xhpRuTAU6+f/aTM0ScFCfzkxnOaeMHh+M//ZGd5P/H3//Pr3179CF3vI7EmLCNE3GWkHxXpLXHn6Y6zhniY/5XhPu6/qd/9x9AR5t9Oec9f64ayyfuc5VyLmz7qaOldMCcAzq+LXb01Vm8bg+Or1bbYCfY57DXGytfJNrv4nNa/5Wk0EUeuhwBBE6tkSiF7lhVSWoaamTKx1Dqykt7Pvc+fQFbOUjTpPlIUL9efUvSGc+W7uKe3p2zl4DdUVvGrHEh5Iuply6+PPco3TJtNZ6N4t58ZR1v9mxd4rVKa1zQK1cCA07Os99OzLNc5cHZliVWT/7SEGXa55B8quRel98CNbcrtU2dRptDUtT20GkXdXlxF0HoArtcqMDw55oI8ePC20hNdpKF0jeKcUDTxO08VfHO8WXZ1raF4LJsdn1daql+5KJ5VNwDK5Yj195q5BY06FCW9Ng5qJfVL/Y3CxxUvQ2CzvHWaJh6XXjZd2ER3okVdJAO4lDYxIrH4r4mP1D3V5z7HTKL5p5o/4RsHTm1frrrM3drFOuCpalMyYMkg9qBnve5nTelBNeabri8PaUh70/YE+CgMkkqSpU9useDR2sU21u3XOWtq2FBv9suzLUNzwqwNFexNmPa97ju/N3FW1o+9wJ3BrcGuae+r+OK3etL8k7Gy1RUcqakAMc3d5bcavfCFTv6rR77Lsnr4yrH5Gp1VSQDj2raU07sKtgHBLlFsD2s0ibYl5rrqvViatPLTHfpvX13Gm1D1/6/Jkj6P/NkbyzZE/jlnbNEfbeEL39tmdYvZkT/D4dy7VSgehyHAAAAAElFTkSuQmCC"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\r\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "END:VCARD\r\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 364
    .local v4, szVCardData:Ljava/lang/String;
    iget-object v5, p0, Lcom/syncmldstmo/smluiSyncSetting;->context:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 365
    .local v0, cResolver:Landroid/content/ContentResolver;
    invoke-static {v4}, Lcom/syncmldstmo/base/vitem/smlContactAdapter;->DecodeVCard(Ljava/lang/String;)Lcom/syncmldstmo/base/vitem/smlContactAdapter;

    move-result-object v1

    .line 367
    .local v1, contactItem:Lcom/syncmldstmo/base/vitem/smlContactAdapter;
    invoke-static {v0, v1, v7}, Lcom/syncmldstmo/base/vitem/smlContactAdapter;->addContact(Landroid/content/ContentResolver;Lcom/syncmldstmo/base/vitem/smlContactAdapter;I)I

    move-result v3

    .line 368
    .local v3, nRawId:I
    if-gtz v3, :cond_f7

    .line 370
    const/high16 v5, 0x20

    const-string v6, "addContact() fail"

    invoke-static {v5, v6}, Lcom/syncmldstmo/base/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 376
    .end local v0           #cResolver:Landroid/content/ContentResolver;
    .end local v1           #contactItem:Lcom/syncmldstmo/base/vitem/smlContactAdapter;
    .end local v3           #nRawId:I
    .end local v4           #szVCardData:Ljava/lang/String;
    :goto_f6
    return-void

    .line 350
    .restart local v0       #cResolver:Landroid/content/ContentResolver;
    .restart local v1       #contactItem:Lcom/syncmldstmo/base/vitem/smlContactAdapter;
    .restart local v3       #nRawId:I
    .restart local v4       #szVCardData:Ljava/lang/String;
    :cond_f7
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_2

    .line 375
    .end local v0           #cResolver:Landroid/content/ContentResolver;
    .end local v1           #contactItem:Lcom/syncmldstmo/base/vitem/smlContactAdapter;
    .end local v3           #nRawId:I
    .end local v4           #szVCardData:Ljava/lang/String;
    :cond_fb
    iget-object v5, p0, Lcom/syncmldstmo/smluiSyncSetting;->context:Landroid/content/Context;

    const-string v6, "Add Success"

    invoke-static {v5, v6, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    goto :goto_f6
.end method

.method public testReceiveCpMessage()V
    .registers 7

    .prologue
    .line 434
    const/4 v1, 0x0

    .line 435
    .local v1, nProfileIndex:I
    const/4 v2, 0x0

    .line 437
    .local v2, tProfileInfo:Lcom/syncmldstmo/database/smlDbProfileInfo;
    invoke-static {}, Lcom/syncmldstmo/database/smlDb;->smlGetActivedProfileIndex()I

    move-result v1

    .line 438
    invoke-static {v1}, Lcom/syncmldstmo/database/smlDb;->smlGetProfileInfo(I)Lcom/syncmldstmo/database/smlDbProfileInfo;

    move-result-object v2

    .line 440
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.intent.action.SET_DS_MYPHONEBOOK"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 442
    .local v0, i:Landroid/content/Intent;
    const-string v3, "PROFILENAME"

    invoke-static {}, Lcom/syncmldstmo/database/smlDb;->smlGetActivedProfileName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 443
    const-string v3, "ADDR"

    iget-object v4, v2, Lcom/syncmldstmo/database/smlDbProfileInfo;->ServerUrl:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 444
    const-string v3, "AAUTHNAME"

    iget-object v4, v2, Lcom/syncmldstmo/database/smlDbProfileInfo;->ServerID:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 445
    const-string v3, "AAUTHSECRET"

    iget-object v4, v2, Lcom/syncmldstmo/database/smlDbProfileInfo;->ServerPS:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 446
    const-string v3, "ContactsURI"

    const-string v4, "./Address"

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 447
    const-string v3, "CalendarURI"

    const-string v4, "./Event"

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 448
    const/16 v3, 0x20

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 450
    invoke-virtual {p0, v0}, Lcom/syncmldstmo/smluiSyncSetting;->sendBroadcast(Landroid/content/Intent;)V

    .line 451
    iget-object v3, p0, Lcom/syncmldstmo/smluiSyncSetting;->context:Landroid/content/Context;

    const-string v4, "Receive CP"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 452
    return-void
.end method

.method public test_deleteall_calendar()V
    .registers 3

    .prologue
    .line 292
    iget-object v1, p0, Lcom/syncmldstmo/smluiSyncSetting;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 293
    .local v0, cResolver:Landroid/content/ContentResolver;
    invoke-static {v0}, Lcom/syncmldstmo/base/vitem/smlCalendarAdapter;->deleteAllCalendar(Landroid/content/ContentResolver;)Z

    .line 294
    return-void
.end method

.method public test_deleteall_contacts()V
    .registers 3

    .prologue
    .line 286
    iget-object v1, p0, Lcom/syncmldstmo/smluiSyncSetting;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 287
    .local v0, cResolver:Landroid/content/ContentResolver;
    invoke-static {v0}, Lcom/syncmldstmo/base/vitem/smlContactAdapter;->deleteAllContacts(Landroid/content/ContentResolver;)Z

    .line 288
    return-void
.end method

.method public test_emul_cp_test()V
    .registers 4

    .prologue
    .line 395
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SET_DS_MYPHONEBOOK"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 397
    .local v0, i:Landroid/content/Intent;
    const-string v1, "PROFILENAME"

    const-string v2, "Sync"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 398
    const-string v1, "ADDR"

    const-string v2, "http://appsrv.voxmobili.com/emulsync2/s"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 399
    const-string v1, "AAUTHNAME"

    const-string v2, "11110000"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 400
    const-string v1, "AAUTHSECRET"

    const-string v2, "11110000"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 401
    const-string v1, "ContactsURI"

    const-string v2, "./Address"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 402
    const-string v1, "CalendarURI"

    const-string v2, "./Event"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 403
    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 405
    invoke-virtual {p0, v0}, Lcom/syncmldstmo/smluiSyncSetting;->sendBroadcast(Landroid/content/Intent;)V

    .line 406
    return-void
.end method

.method public test_production_cp_test()V
    .registers 4

    .prologue
    .line 380
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SET_DS_MYPHONEBOOK"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 382
    .local v0, i:Landroid/content/Intent;
    const-string v1, "PROFILENAME"

    const-string v2, "Sync"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 383
    const-string v1, "ADDR"

    const-string v2, "http://sync.t-mobile.de/tmdsync/s"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 384
    const-string v1, "AAUTHNAME"

    const-string v2, "T-Mobile"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 385
    const-string v1, "AAUTHSECRET"

    const-string v2, "T-Mobile"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 386
    const-string v1, "ContactsURI"

    const-string v2, "./Address"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 387
    const-string v1, "CalendarURI"

    const-string v2, "./Event"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 388
    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 390
    invoke-virtual {p0, v0}, Lcom/syncmldstmo/smluiSyncSetting;->sendBroadcast(Landroid/content/Intent;)V

    .line 391
    return-void
.end method
