.class public Lcom/twitter/android/WelcomeActivity;
.super Lcom/twitter/android/BaseActivity;


# direct methods
.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/twitter/android/BaseActivity;-><init>(Z)V

    return-void
.end method


# virtual methods
.method public final a_(I)V
    .registers 6

    packed-switch p1, :pswitch_data_18

    invoke-super {p0, p1}, Lcom/twitter/android/BaseActivity;->a_(I)V

    :goto_6
    return-void

    :pswitch_7
    iget-object v0, p0, Lcom/twitter/android/WelcomeActivity;->a:Lcom/twitter/android/client/b;

    iget-object v1, p0, Lcom/twitter/android/WelcomeActivity;->a:Lcom/twitter/android/client/b;

    invoke-virtual {v1}, Lcom/twitter/android/client/b;->a()J

    move-result-wide v1

    sget-object v3, Lcom/twitter/android/service/ScribeEvent;->ap:Lcom/twitter/android/service/ScribeEvent;

    invoke-virtual {v0, v1, v2, v3}, Lcom/twitter/android/client/b;->a(JLcom/twitter/android/service/ScribeEvent;)V

    invoke-virtual {p0}, Lcom/twitter/android/WelcomeActivity;->finish()V

    goto :goto_6

    :pswitch_data_18
    .packed-switch 0x7f07004d
        :pswitch_7
    .end packed-switch
.end method

.method public onBackPressed()V
    .registers 5

    invoke-super {p0}, Lcom/twitter/android/BaseActivity;->onBackPressed()V

    iget-object v0, p0, Lcom/twitter/android/WelcomeActivity;->a:Lcom/twitter/android/client/b;

    iget-object v1, p0, Lcom/twitter/android/WelcomeActivity;->a:Lcom/twitter/android/client/b;

    invoke-virtual {v1}, Lcom/twitter/android/client/b;->a()J

    move-result-wide v1

    sget-object v3, Lcom/twitter/android/service/ScribeEvent;->ap:Lcom/twitter/android/service/ScribeEvent;

    invoke-virtual {v0, v1, v2, v3}, Lcom/twitter/android/client/b;->a(JLcom/twitter/android/service/ScribeEvent;)V

    return-void
.end method

.method public onClickHandler(Landroid/view/View;)V
    .registers 3

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_e

    :goto_7
    return-void

    :pswitch_8
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/twitter/android/WelcomeActivity;->showDialog(I)V

    goto :goto_7

    nop

    :pswitch_data_e
    .packed-switch 0x7f070089
        :pswitch_8
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 6

    const v0, 0x7f030065

    invoke-super {p0, p1, v0}, Lcom/twitter/android/BaseActivity;->a(Landroid/os/Bundle;I)V

    if-nez p1, :cond_15

    iget-object v0, p0, Lcom/twitter/android/WelcomeActivity;->a:Lcom/twitter/android/client/b;

    iget-object v1, p0, Lcom/twitter/android/WelcomeActivity;->a:Lcom/twitter/android/client/b;

    invoke-virtual {v1}, Lcom/twitter/android/client/b;->a()J

    move-result-wide v1

    sget-object v3, Lcom/twitter/android/service/ScribeEvent;->an:Lcom/twitter/android/service/ScribeEvent;

    invoke-virtual {v0, v1, v2, v3}, Lcom/twitter/android/client/b;->a(JLcom/twitter/android/service/ScribeEvent;)V

    :cond_15
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .registers 5

    packed-switch p1, :pswitch_data_34

    invoke-super {p0, p1}, Lcom/twitter/android/BaseActivity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    :goto_7
    return-object v0

    :pswitch_8
    new-instance v0, Lcom/twitter/android/gu;

    invoke-direct {v0, p0}, Lcom/twitter/android/gu;-><init>(Lcom/twitter/android/WelcomeActivity;)V

    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0b0013

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0b0129

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0b00d4

    invoke-virtual {v1, v2, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0b0124

    invoke-virtual {v1, v2, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_7

    nop

    :pswitch_data_34
    .packed-switch 0x1
        :pswitch_8
    .end packed-switch
.end method

.method public onSearchRequested()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method
