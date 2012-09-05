.class public Lcom/vlingo/client/social/DownloadFoursquarePopupActivity;
.super Landroid/app/Activity;
.source "DownloadFoursquarePopupActivity.java"


# static fields
.field public static final EXTRA_INTENT_TYPE:Ljava/lang/String; = "EXTRA_INTENT_TYPE"

.field public static final INTENT_TYPE_CHECK_IN:I = 0x232a

.field public static final INTENT_TYPE_FRIENDS:I = 0x2329

.field public static final INTENT_TYPE_SHOUT:I = 0x232b

.field private static final POPUP_ID_INSTALL_FS:I = 0xc9


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 4
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 45
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 46
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 3
    .parameter "savedInstanceState"

    .prologue
    .line 39
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 41
    const/16 v0, 0xc9

    invoke-virtual {p0, v0}, Lcom/vlingo/client/social/DownloadFoursquarePopupActivity;->showDialog(I)V

    .line 42
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .registers 5
    .parameter "id"

    .prologue
    .line 57
    packed-switch p1, :pswitch_data_48

    .line 76
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    :goto_7
    return-object v0

    .line 59
    :pswitch_8
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0903df

    invoke-virtual {p0, v1}, Lcom/vlingo/client/social/DownloadFoursquarePopupActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0903e0

    invoke-virtual {p0, v1}, Lcom/vlingo/client/social/DownloadFoursquarePopupActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f09040e

    invoke-virtual {p0, v1}, Lcom/vlingo/client/social/DownloadFoursquarePopupActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/vlingo/client/social/DownloadFoursquarePopupActivity$2;

    invoke-direct {v2, p0}, Lcom/vlingo/client/social/DownloadFoursquarePopupActivity$2;-><init>(Lcom/vlingo/client/social/DownloadFoursquarePopupActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0903fe

    invoke-virtual {p0, v1}, Lcom/vlingo/client/social/DownloadFoursquarePopupActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/vlingo/client/social/DownloadFoursquarePopupActivity$1;

    invoke-direct {v2, p0}, Lcom/vlingo/client/social/DownloadFoursquarePopupActivity$1;-><init>(Lcom/vlingo/client/social/DownloadFoursquarePopupActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_7

    .line 57
    :pswitch_data_48
    .packed-switch 0xc9
        :pswitch_8
    .end packed-switch
.end method
