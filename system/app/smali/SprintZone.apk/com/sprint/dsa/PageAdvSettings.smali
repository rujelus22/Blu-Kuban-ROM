.class public Lcom/sprint/dsa/PageAdvSettings;
.super Landroid/preference/PreferenceActivity;
.source "PageAdvSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sprint/dsa/PageAdvSettings$AlertOnClickListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SprintZone:PageAdvSettings"


# instance fields
.field private mResources:Lcom/sprint/dsa/res/SzResources;

.field private m_dbHelper:Lcom/sprint/dsa/data/DbAdapter;

.field private m_prefs:Lcom/sprint/dsa/Prefs;

.field private m_save:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 21
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 26
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sprint/dsa/PageAdvSettings;->m_save:Z

    .line 21
    return-void
.end method

.method static synthetic access$0(Lcom/sprint/dsa/PageAdvSettings;)Lcom/sprint/dsa/data/DbAdapter;
    .registers 2
    .parameter

    .prologue
    .line 25
    iget-object v0, p0, Lcom/sprint/dsa/PageAdvSettings;->m_dbHelper:Lcom/sprint/dsa/data/DbAdapter;

    return-object v0
.end method

.method private confirmDelete(IILandroid/content/DialogInterface$OnClickListener;)V
    .registers 7
    .parameter "title"
    .parameter "message"
    .parameter "action"

    .prologue
    .line 116
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 117
    .local v0, alertDialog:Landroid/app/AlertDialog;
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog;->setTitle(I)V

    .line 118
    invoke-virtual {p0, p2}, Lcom/sprint/dsa/PageAdvSettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 119
    const v1, 0x108008a

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setIcon(I)V

    .line 120
    const v1, 0x7f080002

    invoke-virtual {p0, v1}, Lcom/sprint/dsa/PageAdvSettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p3}, Landroid/app/AlertDialog;->setButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 121
    const v1, 0x7f080003

    invoke-virtual {p0, v1}, Lcom/sprint/dsa/PageAdvSettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/sprint/dsa/PageAdvSettings$1;

    invoke-direct {v2, p0}, Lcom/sprint/dsa/PageAdvSettings$1;-><init>(Lcom/sprint/dsa/PageAdvSettings;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog;->setButton2(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 126
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 127
    return-void
.end method


# virtual methods
.method public getResources()Landroid/content/res/Resources;
    .registers 3

    .prologue
    .line 142
    iget-object v0, p0, Lcom/sprint/dsa/PageAdvSettings;->mResources:Lcom/sprint/dsa/res/SzResources;

    if-nez v0, :cond_f

    new-instance v0, Lcom/sprint/dsa/res/SzResources;

    invoke-super {p0}, Landroid/preference/PreferenceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sprint/dsa/res/SzResources;-><init>(Landroid/content/res/Resources;)V

    iput-object v0, p0, Lcom/sprint/dsa/PageAdvSettings;->mResources:Lcom/sprint/dsa/res/SzResources;

    .line 143
    :cond_f
    iget-object v0, p0, Lcom/sprint/dsa/PageAdvSettings;->mResources:Lcom/sprint/dsa/res/SzResources;

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 4
    .parameter "savedInstanceState"

    .prologue
    const/4 v1, 0x3

    .line 32
    invoke-virtual {p0, v1}, Lcom/sprint/dsa/PageAdvSettings;->requestWindowFeature(I)Z

    .line 33
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 35
    new-instance v0, Lcom/sprint/dsa/Prefs;

    invoke-direct {v0, p0}, Lcom/sprint/dsa/Prefs;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sprint/dsa/PageAdvSettings;->m_prefs:Lcom/sprint/dsa/Prefs;

    .line 39
    :try_start_e
    new-instance v0, Lcom/sprint/dsa/data/DbAdapter;

    invoke-direct {v0, p0}, Lcom/sprint/dsa/data/DbAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sprint/dsa/PageAdvSettings;->m_dbHelper:Lcom/sprint/dsa/data/DbAdapter;

    .line 40
    iget-object v0, p0, Lcom/sprint/dsa/PageAdvSettings;->m_dbHelper:Lcom/sprint/dsa/data/DbAdapter;

    invoke-virtual {v0}, Lcom/sprint/dsa/data/DbAdapter;->open()Lcom/sprint/dsa/data/DbAdapter;
    :try_end_1a
    .catch Landroid/database/SQLException; {:try_start_e .. :try_end_1a} :catch_26

    .line 45
    :goto_1a
    const/high16 v0, 0x7f04

    invoke-virtual {p0, v0}, Lcom/sprint/dsa/PageAdvSettings;->addPreferencesFromResource(I)V

    .line 46
    const v0, 0x7f020014

    invoke-virtual {p0, v1, v0}, Lcom/sprint/dsa/PageAdvSettings;->setFeatureDrawableResource(II)V

    .line 47
    return-void

    .line 41
    :catch_26
    move-exception v0

    goto :goto_1a
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 4
    .parameter "menu"

    .prologue
    .line 96
    invoke-virtual {p0}, Lcom/sprint/dsa/PageAdvSettings;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 97
    .local v0, inflater:Landroid/view/MenuInflater;
    const/high16 v1, 0x7f0a

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 99
    const/4 v1, 0x1

    return v1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 5
    .parameter "item"

    .prologue
    .line 105
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_1a

    .line 112
    const/4 v1, 0x0

    :goto_8
    return v1

    .line 107
    :pswitch_9
    new-instance v0, Lcom/sprint/dsa/PageAdvSettings$AlertOnClickListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sprint/dsa/PageAdvSettings$AlertOnClickListener;-><init>(Lcom/sprint/dsa/PageAdvSettings;Lcom/sprint/dsa/PageAdvSettings$AlertOnClickListener;)V

    .line 108
    .local v0, listener:Lcom/sprint/dsa/PageAdvSettings$AlertOnClickListener;
    const v1, 0x7f080027

    const v2, 0x7f080028

    invoke-direct {p0, v1, v2, v0}, Lcom/sprint/dsa/PageAdvSettings;->confirmDelete(IILandroid/content/DialogInterface$OnClickListener;)V

    .line 109
    const/4 v1, 0x1

    goto :goto_8

    .line 105
    :pswitch_data_1a
    .packed-switch 0x7f0b0053
        :pswitch_9
    .end packed-switch
.end method

.method protected onPause()V
    .registers 6

    .prologue
    .line 74
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    .line 77
    iget-boolean v2, p0, Lcom/sprint/dsa/PageAdvSettings;->m_save:Z

    if-eqz v2, :cond_37

    .line 78
    invoke-virtual {p0}, Lcom/sprint/dsa/PageAdvSettings;->getPreferenceManager()Landroid/preference/PreferenceManager;

    .line 80
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 82
    .local v1, pref:Landroid/content/SharedPreferences;
    iget-object v2, p0, Lcom/sprint/dsa/PageAdvSettings;->m_prefs:Lcom/sprint/dsa/Prefs;

    const v3, 0x7f080024

    invoke-virtual {p0, v3}, Lcom/sprint/dsa/PageAdvSettings;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/sprint/dsa/Prefs;->setDebug(Z)V

    .line 83
    const v2, 0x7f080025

    invoke-virtual {p0, v2}, Lcom/sprint/dsa/PageAdvSettings;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 84
    .local v0, baseUrl:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_37

    iget-object v2, p0, Lcom/sprint/dsa/PageAdvSettings;->m_prefs:Lcom/sprint/dsa/Prefs;

    invoke-virtual {v2, v0}, Lcom/sprint/dsa/Prefs;->setBaseUrl(Ljava/lang/String;)V

    .line 89
    .end local v0           #baseUrl:Ljava/lang/String;
    .end local v1           #pref:Landroid/content/SharedPreferences;
    :cond_37
    iget-object v2, p0, Lcom/sprint/dsa/PageAdvSettings;->m_dbHelper:Lcom/sprint/dsa/data/DbAdapter;

    invoke-virtual {v2}, Lcom/sprint/dsa/data/DbAdapter;->cleanup()V

    .line 90
    return-void
.end method

.method protected onResume()V
    .registers 2

    .prologue
    .line 68
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 69
    iget-object v0, p0, Lcom/sprint/dsa/PageAdvSettings;->m_dbHelper:Lcom/sprint/dsa/data/DbAdapter;

    invoke-virtual {v0}, Lcom/sprint/dsa/data/DbAdapter;->isOpen()Z

    move-result v0

    if-nez v0, :cond_10

    iget-object v0, p0, Lcom/sprint/dsa/PageAdvSettings;->m_dbHelper:Lcom/sprint/dsa/data/DbAdapter;

    invoke-virtual {v0}, Lcom/sprint/dsa/data/DbAdapter;->open()Lcom/sprint/dsa/data/DbAdapter;

    .line 70
    :cond_10
    return-void
.end method
