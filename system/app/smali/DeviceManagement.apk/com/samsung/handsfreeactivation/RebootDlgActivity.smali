.class public Lcom/samsung/handsfreeactivation/RebootDlgActivity;
.super Landroid/app/Activity;
.source "RebootDlgActivity.java"


# instance fields
.field private final REBOOT_DLG:I

.field private final TAG:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 9
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 11
    const-string v0, "RebootDlgActivity"

    iput-object v0, p0, Lcom/samsung/handsfreeactivation/RebootDlgActivity;->TAG:Ljava/lang/String;

    .line 13
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/handsfreeactivation/RebootDlgActivity;->REBOOT_DLG:I

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 4
    .parameter "savedInstanceState"

    .prologue
    .line 18
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 19
    const-string v0, "RebootDlgActivity"

    const-string v1, "onCreate ..... "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/handsfreeactivation/RebootDlgActivity;->showDialog(I)V

    .line 21
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .registers 5
    .parameter "id"

    .prologue
    .line 26
    const-string v0, "RebootDlgActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCreateDialog ..... "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    packed-switch p1, :pswitch_data_24

    .line 35
    const/4 v0, 0x0

    :goto_1c
    return-object v0

    .line 31
    :pswitch_1d
    new-instance v0, Lcom/samsung/handsfreeactivation/RebootDlg;

    invoke-direct {v0, p0}, Lcom/samsung/handsfreeactivation/RebootDlg;-><init>(Landroid/content/Context;)V

    goto :goto_1c

    .line 28
    nop

    :pswitch_data_24
    .packed-switch 0x0
        :pswitch_1d
    .end packed-switch
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 5
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 53
    const-string v0, "RebootDlgActivity"

    const-string v1, "reboot on reboot dialog on any Key down"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/handsfreeactivation/RebootDlgActivity;->dismissDialog(I)V

    .line 55
    const/4 v0, 0x1

    return v0
.end method

.method protected onPause()V
    .registers 3

    .prologue
    .line 46
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 47
    const-string v0, "RebootDlgActivity"

    const-string v1, "onPause ..... "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/handsfreeactivation/RebootDlgActivity;->dismissDialog(I)V

    .line 49
    return-void
.end method

.method protected onResume()V
    .registers 3

    .prologue
    .line 40
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 41
    const-string v0, "RebootDlgActivity"

    const-string v1, "onResume"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    return-void
.end method
