.class public Lcom/swype/android/connect/settings/RemoveLanguagesActivity;
.super Lcom/swype/android/connect/settings/AbstractLanguagesActivity;
.source "RemoveLanguagesActivity.java"


# static fields
.field private static final DIALOG_REMOVE_LANGUAGES:I = 0x1


# instance fields
.field private cancelButton:Landroid/widget/Button;

.field private removeButton:Landroid/widget/Button;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/swype/android/connect/settings/AbstractLanguagesActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/swype/android/connect/settings/RemoveLanguagesActivity;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/swype/android/connect/settings/RemoveLanguagesActivity;->removeLanguagesAndFinish()V

    return-void
.end method

.method private removeLanguagesAndFinish()V
    .registers 3

    .prologue
    .line 86
    invoke-direct {p0}, Lcom/swype/android/connect/settings/RemoveLanguagesActivity;->removeSelectedLanguages()V

    .line 87
    invoke-virtual {p0}, Lcom/swype/android/connect/settings/RemoveLanguagesActivity;->finish()V

    .line 88
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.swype.android.settings.SwypeInputMethodSettingsLanguages"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 89
    .local v0, i:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/swype/android/connect/settings/RemoveLanguagesActivity;->startActivity(Landroid/content/Intent;)V

    .line 90
    return-void
.end method

.method private removeSelectedLanguages()V
    .registers 5

    .prologue
    .line 93
    invoke-virtual {p0}, Lcom/swype/android/connect/settings/RemoveLanguagesActivity;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/swype/android/connect/settings/AbstractLanguagesActivity$LanguageListAdapter;

    .line 95
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 96
    invoke-virtual {v0}, Lcom/swype/android/connect/settings/AbstractLanguagesActivity$LanguageListAdapter;->getCount()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    :goto_11
    if-ltz v2, :cond_2d

    .line 97
    invoke-virtual {v0, v2}, Lcom/swype/android/connect/settings/AbstractLanguagesActivity$LanguageListAdapter;->getCheck(I)Z

    move-result v3

    if-eqz v3, :cond_2a

    .line 98
    invoke-virtual {v0, v2}, Lcom/swype/android/connect/settings/AbstractLanguagesActivity$LanguageListAdapter;->getLanguageKey(I)Ljava/lang/String;

    move-result-object v3

    .line 99
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    if-eqz v2, :cond_27

    .line 101
    const-string v3, ","

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    :cond_27
    invoke-virtual {v0, v2}, Lcom/swype/android/connect/settings/AbstractLanguagesActivity$LanguageListAdapter;->remove(I)V

    .line 96
    :cond_2a
    add-int/lit8 v2, v2, -0x1

    goto :goto_11

    .line 106
    :cond_2d
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.swype.android.connect.RemoveLanguage"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 107
    const-string v2, "DEFAULT_KEY"

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 108
    invoke-virtual {p0, v0}, Lcom/swype/android/connect/settings/RemoveLanguagesActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 109
    return-void
.end method


# virtual methods
.method protected getInitialLanguageSet()[Ljava/lang/String;
    .registers 2

    .prologue
    .line 29
    invoke-virtual {p0}, Lcom/swype/android/connect/settings/RemoveLanguagesActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/swype/android/connect/manager/LanguageManager;->getInstalledLanguages(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 4
    .parameter "savedInstanceState"

    .prologue
    .line 34
    invoke-super {p0, p1}, Lcom/swype/android/connect/settings/AbstractLanguagesActivity;->onCreate(Landroid/os/Bundle;)V

    .line 35
    const v0, 0x7f030007

    invoke-virtual {p0, v0}, Lcom/swype/android/connect/settings/RemoveLanguagesActivity;->setContentView(I)V

    .line 37
    const v0, 0x1020019

    invoke-virtual {p0, v0}, Lcom/swype/android/connect/settings/RemoveLanguagesActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/swype/android/connect/settings/RemoveLanguagesActivity;->removeButton:Landroid/widget/Button;

    .line 38
    iget-object v0, p0, Lcom/swype/android/connect/settings/RemoveLanguagesActivity;->removeButton:Landroid/widget/Button;

    new-instance v1, Lcom/swype/android/connect/settings/RemoveLanguagesActivity$1;

    invoke-direct {v1, p0}, Lcom/swype/android/connect/settings/RemoveLanguagesActivity$1;-><init>(Lcom/swype/android/connect/settings/RemoveLanguagesActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 50
    iget-object v0, p0, Lcom/swype/android/connect/settings/RemoveLanguagesActivity;->removeButton:Landroid/widget/Button;

    const v1, 0x7f070015

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 51
    iget-object v0, p0, Lcom/swype/android/connect/settings/RemoveLanguagesActivity;->removeButton:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 53
    const v0, 0x102001a

    invoke-virtual {p0, v0}, Lcom/swype/android/connect/settings/RemoveLanguagesActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/swype/android/connect/settings/RemoveLanguagesActivity;->cancelButton:Landroid/widget/Button;

    .line 54
    iget-object v0, p0, Lcom/swype/android/connect/settings/RemoveLanguagesActivity;->cancelButton:Landroid/widget/Button;

    new-instance v1, Lcom/swype/android/connect/settings/RemoveLanguagesActivity$2;

    invoke-direct {v1, p0}, Lcom/swype/android/connect/settings/RemoveLanguagesActivity$2;-><init>(Lcom/swype/android/connect/settings/RemoveLanguagesActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 60
    iget-object v0, p0, Lcom/swype/android/connect/settings/RemoveLanguagesActivity;->cancelButton:Landroid/widget/Button;

    const/high16 v1, 0x104

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 61
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .registers 7
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 65
    packed-switch p1, :pswitch_data_4a

    move-object v0, v4

    .line 82
    :goto_5
    return-object v0

    .line 67
    :pswitch_6
    invoke-virtual {p0}, Lcom/swype/android/connect/settings/RemoveLanguagesActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070017

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 68
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/swype/android/connect/settings/RemoveLanguagesActivity;->getSelectedLanguagesCount()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 69
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f070016

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    new-instance v2, Lcom/swype/android/connect/settings/RemoveLanguagesActivity$3;

    invoke-direct {v2, p0}, Lcom/swype/android/connect/settings/RemoveLanguagesActivity$3;-><init>(Lcom/swype/android/connect/settings/RemoveLanguagesActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v1, 0x104

    invoke-virtual {v0, v1, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_5

    .line 65
    :pswitch_data_4a
    .packed-switch 0x1
        :pswitch_6
    .end packed-switch
.end method

.method protected onItemClicked()V
    .registers 3

    .prologue
    .line 123
    invoke-virtual {p0}, Lcom/swype/android/connect/settings/RemoveLanguagesActivity;->getSelectedLanguagesCount()I

    move-result v0

    if-lez v0, :cond_d

    .line 124
    iget-object v0, p0, Lcom/swype/android/connect/settings/RemoveLanguagesActivity;->removeButton:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 128
    :goto_c
    return-void

    .line 126
    :cond_d
    iget-object v0, p0, Lcom/swype/android/connect/settings/RemoveLanguagesActivity;->removeButton:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_c
.end method

.method protected onPause()V
    .registers 1

    .prologue
    .line 118
    invoke-super {p0}, Lcom/swype/android/connect/settings/AbstractLanguagesActivity;->onPause()V

    .line 119
    return-void
.end method

.method protected onResume()V
    .registers 1

    .prologue
    .line 113
    invoke-super {p0}, Lcom/swype/android/connect/settings/AbstractLanguagesActivity;->onResume()V

    .line 114
    invoke-virtual {p0}, Lcom/swype/android/connect/settings/RemoveLanguagesActivity;->updateLanguageList()V

    .line 115
    return-void
.end method
