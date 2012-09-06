.class final Lcom/acquariusoft/UpdateMe/af;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/mobfox/video/sdk/h;


# instance fields
.field final synthetic a:Lcom/acquariusoft/UpdateMe/UpdateMeActivity;


# direct methods
.method constructor <init>(Lcom/acquariusoft/UpdateMe/UpdateMeActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/acquariusoft/UpdateMe/af;->a:Lcom/acquariusoft/UpdateMe/UpdateMeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 3

    const-string v0, "MobFoxAdManager"

    const-string v1, "noAdFound"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final a(Lcom/mobfox/video/sdk/cg;)V
    .registers 4

    const-string v0, "MobFoxAdManager"

    invoke-virtual {p1}, Lcom/mobfox/video/sdk/cg;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final b()V
    .registers 3

    const-string v0, "MobFoxAdManager"

    const-string v1, "adShown"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final c()V
    .registers 5

    iget-object v0, p0, Lcom/acquariusoft/UpdateMe/af;->a:Lcom/acquariusoft/UpdateMe/UpdateMeActivity;

    iget-object v0, v0, Lcom/acquariusoft/UpdateMe/UpdateMeActivity;->b:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "first_launch_ads_int"

    sget v2, Lcom/acquariusoft/UpdateMe/ao;->b:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    new-instance v0, Landroid/app/AlertDialog$Builder;

    sget-object v1, Lcom/acquariusoft/UpdateMe/an;->d:Lcom/acquariusoft/UpdateMe/UpdateMeActivity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setCancelable(Z)V

    const-string v1, "Support us"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    sget-object v1, Lcom/acquariusoft/UpdateMe/an;->d:Lcom/acquariusoft/UpdateMe/UpdateMeActivity;

    const v2, 0x7f060046

    invoke-virtual {v1, v2}, Lcom/acquariusoft/UpdateMe/UpdateMeActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    const/4 v1, -0x2

    sget-object v2, Lcom/acquariusoft/UpdateMe/an;->d:Lcom/acquariusoft/UpdateMe/UpdateMeActivity;

    const v3, 0x7f060013

    invoke-virtual {v2, v3}, Lcom/acquariusoft/UpdateMe/UpdateMeActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/acquariusoft/UpdateMe/ag;

    invoke-direct {v3, p0}, Lcom/acquariusoft/UpdateMe/ag;-><init>(Lcom/acquariusoft/UpdateMe/af;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    const/4 v1, -0x3

    sget-object v2, Lcom/acquariusoft/UpdateMe/an;->d:Lcom/acquariusoft/UpdateMe/UpdateMeActivity;

    const v3, 0x7f060012

    invoke-virtual {v2, v3}, Lcom/acquariusoft/UpdateMe/UpdateMeActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/acquariusoft/UpdateMe/ah;

    invoke-direct {v3, p0}, Lcom/acquariusoft/UpdateMe/ah;-><init>(Lcom/acquariusoft/UpdateMe/af;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method public final d()V
    .registers 3

    const-string v0, "MobFoxAdManager"

    const-string v1, "adClosed"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
