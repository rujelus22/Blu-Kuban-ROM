.class public Lcom/swype/android/connect/settings/DownloadLanguagesActivity;
.super Lcom/swype/android/connect/settings/AbstractLanguagesActivity;
.source "DownloadLanguagesActivity.java"


# static fields
.field private static final SWYPE_LANGUAGE_INTENT:Ljava/lang/String; = "com.swype.android.settings.SwypeInputMethodSettingsLanguages"


# instance fields
.field final NO_LANGUAGES_AVAILABLE:I

.field private cancelButton:Landroid/widget/Button;

.field private handler:Landroid/os/Handler;

.field private installButton:Landroid/widget/Button;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/swype/android/connect/settings/AbstractLanguagesActivity;-><init>()V

    .line 125
    const/4 v0, 0x1

    iput v0, p0, Lcom/swype/android/connect/settings/DownloadLanguagesActivity;->NO_LANGUAGES_AVAILABLE:I

    return-void
.end method

.method static synthetic access$000(Lcom/swype/android/connect/settings/DownloadLanguagesActivity;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/swype/android/connect/settings/DownloadLanguagesActivity;->populateList()V

    return-void
.end method

.method private populateList()V
    .registers 5

    .prologue
    const v1, 0x7f0d000b

    const/4 v2, 0x0

    .line 88
    invoke-virtual {p0}, Lcom/swype/android/connect/settings/DownloadLanguagesActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/swype/android/connect/manager/LanguageManager;->isLanguageListReady(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_22

    .line 89
    invoke-virtual {p0, v1}, Lcom/swype/android/connect/settings/DownloadLanguagesActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 90
    new-instance v0, Lcom/swype/android/connect/settings/DownloadLanguagesActivity$3;

    invoke-direct {v0, p0}, Lcom/swype/android/connect/settings/DownloadLanguagesActivity$3;-><init>(Lcom/swype/android/connect/settings/DownloadLanguagesActivity;)V

    .line 99
    iget-object v1, p0, Lcom/swype/android/connect/settings/DownloadLanguagesActivity;->handler:Landroid/os/Handler;

    const-wide/16 v2, 0x12c

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 112
    :goto_21
    return-void

    .line 104
    :cond_22
    invoke-virtual {p0}, Lcom/swype/android/connect/settings/DownloadLanguagesActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/swype/android/connect/manager/LanguageManager;->getAvailableLanguages(Landroid/content/Context;)Ljava/util/HashMap;

    move-result-object v0

    .line 105
    if-eqz v0, :cond_32

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_36

    .line 106
    :cond_32
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/swype/android/connect/settings/DownloadLanguagesActivity;->showDialog(I)V

    .line 109
    :cond_36
    invoke-virtual {p0, v1}, Lcom/swype/android/connect/settings/DownloadLanguagesActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 110
    iget-object v0, p0, Lcom/swype/android/connect/settings/DownloadLanguagesActivity;->installButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 111
    invoke-virtual {p0}, Lcom/swype/android/connect/settings/DownloadLanguagesActivity;->updateLanguageList()V

    goto :goto_21
.end method


# virtual methods
.method protected getInitialLanguageSet()[Ljava/lang/String;
    .registers 4

    .prologue
    .line 35
    invoke-virtual {p0}, Lcom/swype/android/connect/settings/DownloadLanguagesActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/swype/android/connect/manager/LanguageManager;->getAvailableLanguages(Landroid/content/Context;)Ljava/util/HashMap;

    move-result-object v0

    .line 36
    invoke-virtual {p0}, Lcom/swype/android/connect/settings/DownloadLanguagesActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/swype/android/connect/manager/LanguageManager;->getInstallingLanguages(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v1

    .line 37
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 38
    if-eqz v0, :cond_27

    .line 39
    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 40
    if-eqz v1, :cond_27

    .line 41
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 44
    :cond_27
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    return-object p0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 4
    .parameter "savedInstanceState"

    .prologue
    .line 49
    invoke-super {p0, p1}, Lcom/swype/android/connect/settings/AbstractLanguagesActivity;->onCreate(Landroid/os/Bundle;)V

    .line 51
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/swype/android/connect/settings/DownloadLanguagesActivity;->handler:Landroid/os/Handler;

    .line 53
    const v0, 0x1020019

    invoke-virtual {p0, v0}, Lcom/swype/android/connect/settings/DownloadLanguagesActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/swype/android/connect/settings/DownloadLanguagesActivity;->installButton:Landroid/widget/Button;

    .line 54
    iget-object v0, p0, Lcom/swype/android/connect/settings/DownloadLanguagesActivity;->installButton:Landroid/widget/Button;

    new-instance v1, Lcom/swype/android/connect/settings/DownloadLanguagesActivity$1;

    invoke-direct {v1, p0}, Lcom/swype/android/connect/settings/DownloadLanguagesActivity$1;-><init>(Lcom/swype/android/connect/settings/DownloadLanguagesActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 74
    iget-object v0, p0, Lcom/swype/android/connect/settings/DownloadLanguagesActivity;->installButton:Landroid/widget/Button;

    const v1, 0x7f070014

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 75
    iget-object v0, p0, Lcom/swype/android/connect/settings/DownloadLanguagesActivity;->installButton:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 77
    const v0, 0x102001a

    invoke-virtual {p0, v0}, Lcom/swype/android/connect/settings/DownloadLanguagesActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/swype/android/connect/settings/DownloadLanguagesActivity;->cancelButton:Landroid/widget/Button;

    .line 78
    iget-object v0, p0, Lcom/swype/android/connect/settings/DownloadLanguagesActivity;->cancelButton:Landroid/widget/Button;

    new-instance v1, Lcom/swype/android/connect/settings/DownloadLanguagesActivity$2;

    invoke-direct {v1, p0}, Lcom/swype/android/connect/settings/DownloadLanguagesActivity$2;-><init>(Lcom/swype/android/connect/settings/DownloadLanguagesActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 84
    iget-object v0, p0, Lcom/swype/android/connect/settings/DownloadLanguagesActivity;->cancelButton:Landroid/widget/Button;

    const/high16 v1, 0x104

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 85
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .registers 6
    .parameter "id"

    .prologue
    .line 129
    packed-switch p1, :pswitch_data_38

    .line 148
    const/4 v2, 0x0

    :goto_4
    return-object v2

    .line 131
    :pswitch_5
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 132
    .local v0, alertDialog:Landroid/app/AlertDialog;
    const v2, 0x7f070016

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog;->setTitle(I)V

    .line 134
    invoke-virtual {p0}, Lcom/swype/android/connect/settings/DownloadLanguagesActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070022

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 135
    .local v1, msg:Ljava/lang/String;
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 137
    invoke-virtual {p0}, Lcom/swype/android/connect/settings/DownloadLanguagesActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x104000a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 138
    const/4 v2, -0x1

    new-instance v3, Lcom/swype/android/connect/settings/DownloadLanguagesActivity$4;

    invoke-direct {v3, p0}, Lcom/swype/android/connect/settings/DownloadLanguagesActivity$4;-><init>(Lcom/swype/android/connect/settings/DownloadLanguagesActivity;)V

    invoke-virtual {v0, v2, v1, v3}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    move-object v2, v0

    .line 145
    goto :goto_4

    .line 129
    :pswitch_data_38
    .packed-switch 0x1
        :pswitch_5
    .end packed-switch
.end method

.method protected onItemClicked()V
    .registers 3

    .prologue
    .line 152
    invoke-virtual {p0}, Lcom/swype/android/connect/settings/DownloadLanguagesActivity;->getSelectedLanguagesCount()I

    move-result v0

    if-lez v0, :cond_d

    .line 153
    iget-object v0, p0, Lcom/swype/android/connect/settings/DownloadLanguagesActivity;->installButton:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 157
    :goto_c
    return-void

    .line 155
    :cond_d
    iget-object v0, p0, Lcom/swype/android/connect/settings/DownloadLanguagesActivity;->installButton:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_c
.end method

.method protected onPause()V
    .registers 1

    .prologue
    .line 122
    invoke-super {p0}, Lcom/swype/android/connect/settings/AbstractLanguagesActivity;->onPause()V

    .line 123
    return-void
.end method

.method protected onResume()V
    .registers 1

    .prologue
    .line 116
    invoke-super {p0}, Lcom/swype/android/connect/settings/AbstractLanguagesActivity;->onResume()V

    .line 117
    invoke-direct {p0}, Lcom/swype/android/connect/settings/DownloadLanguagesActivity;->populateList()V

    .line 118
    return-void
.end method
