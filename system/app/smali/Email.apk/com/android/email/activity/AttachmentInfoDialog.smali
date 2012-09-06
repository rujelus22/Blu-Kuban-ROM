.class public Lcom/android/email/activity/AttachmentInfoDialog;
.super Landroid/app/DialogFragment;
.source "AttachmentInfoDialog.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 36
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method public static newInstance(Landroid/content/Context;I)Lcom/android/email/activity/AttachmentInfoDialog;
    .registers 12
    .parameter "context"
    .parameter "denyFlags"

    .prologue
    const/high16 v9, 0x1000

    const v8, 0x8000

    .line 46
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 47
    .local v5, res:Landroid/content/res/Resources;
    const v7, 0x7f080091

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 48
    .local v6, title:Ljava/lang/String;
    const v7, 0x7f080095

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 49
    .local v3, bodyText:Ljava/lang/String;
    const/4 v1, 0x0

    .line 50
    .local v1, actionText:Ljava/lang/String;
    const/4 v0, 0x0

    .line 56
    .local v0, actionIntent:Landroid/content/Intent;
    and-int/lit8 v7, p1, 0x1

    if-eqz v7, :cond_46

    .line 57
    const v7, 0x7f080096

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 78
    :cond_24
    :goto_24
    new-instance v4, Lcom/android/email/activity/AttachmentInfoDialog;

    invoke-direct {v4}, Lcom/android/email/activity/AttachmentInfoDialog;-><init>()V

    .line 79
    .local v4, dialog:Lcom/android/email/activity/AttachmentInfoDialog;
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 80
    .local v2, args:Landroid/os/Bundle;
    const-string v7, "title"

    invoke-virtual {v2, v7, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    const-string v7, "body_text"

    invoke-virtual {v2, v7, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    const-string v7, "action_text"

    invoke-virtual {v2, v7, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    const-string v7, "action_intent"

    invoke-virtual {v2, v7, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 84
    invoke-virtual {v4, v2}, Lcom/android/email/activity/AttachmentInfoDialog;->setArguments(Landroid/os/Bundle;)V

    .line 85
    return-object v4

    .line 58
    .end local v2           #args:Landroid/os/Bundle;
    .end local v4           #dialog:Lcom/android/email/activity/AttachmentInfoDialog;
    :cond_46
    and-int/lit8 v7, p1, 0x20

    if-eqz v7, :cond_52

    .line 59
    const v7, 0x7f080097

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_24

    .line 60
    :cond_52
    and-int/lit8 v7, p1, 0x4

    if-eqz v7, :cond_5e

    .line 61
    const v7, 0x7f080099

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_24

    .line 62
    :cond_5e
    and-int/lit8 v7, p1, 0x8

    if-eqz v7, :cond_7e

    .line 63
    const v7, 0x7f08009a

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 64
    const v7, 0x7f080094

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 65
    new-instance v0, Landroid/content/Intent;

    .end local v0           #actionIntent:Landroid/content/Intent;
    const-string v7, "android.settings.SECURITY_SETTINGS"

    invoke-direct {v0, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 66
    .restart local v0       #actionIntent:Landroid/content/Intent;
    invoke-virtual {v0, v9}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 67
    invoke-virtual {v0, v8}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    goto :goto_24

    .line 68
    :cond_7e
    and-int/lit8 v7, p1, 0x10

    if-eqz v7, :cond_8a

    .line 69
    const v7, 0x7f08009b

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_24

    .line 70
    :cond_8a
    and-int/lit8 v7, p1, 0x2

    if-eqz v7, :cond_24

    .line 71
    const v7, 0x7f080092

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 72
    const v7, 0x7f080098

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 73
    const v7, 0x7f080093

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 74
    new-instance v0, Landroid/content/Intent;

    .end local v0           #actionIntent:Landroid/content/Intent;
    const-string v7, "android.settings.WIFI_SETTINGS"

    invoke-direct {v0, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 75
    .restart local v0       #actionIntent:Landroid/content/Intent;
    invoke-virtual {v0, v9}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 76
    invoke-virtual {v0, v8}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    goto/16 :goto_24
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .registers 11
    .parameter "savedInstanceState"

    .prologue
    .line 90
    invoke-virtual {p0}, Lcom/android/email/activity/AttachmentInfoDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    .line 91
    .local v2, args:Landroid/os/Bundle;
    invoke-virtual {p0}, Lcom/android/email/activity/AttachmentInfoDialog;->getActivity()Landroid/app/Activity;

    move-result-object v4

    .line 92
    .local v4, context:Landroid/content/Context;
    const-string v8, "title"

    invoke-virtual {v2, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 93
    .local v7, title:Ljava/lang/String;
    const-string v8, "body_text"

    invoke-virtual {v2, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 94
    .local v5, infoText:Ljava/lang/String;
    const-string v8, "action_text"

    invoke-virtual {v2, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 95
    .local v1, actionText:Ljava/lang/String;
    const-string v8, "action_intent"

    invoke-virtual {v2, v8}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    .line 97
    .local v0, actionIntent:Landroid/content/Intent;
    new-instance v6, Lcom/android/email/activity/AttachmentInfoDialog$1;

    invoke-direct {v6, p0, v0}, Lcom/android/email/activity/AttachmentInfoDialog$1;-><init>(Lcom/android/email/activity/AttachmentInfoDialog;Landroid/content/Intent;)V

    .line 111
    .local v6, onClickListener:Landroid/content/DialogInterface$OnClickListener;
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 112
    .local v3, builder:Landroid/app/AlertDialog$Builder;
    invoke-virtual {v3, v7}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 113
    invoke-virtual {v3, v5}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 114
    const v8, 0x7f080009

    invoke-virtual {v3, v8, v6}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 115
    if-eqz v1, :cond_3f

    if-eqz v0, :cond_3f

    .line 116
    invoke-virtual {v3, v1, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 118
    :cond_3f
    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v8

    return-object v8
.end method
