.class final Lcom/acquariusoft/UpdateMe/b;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/acquariusoft/UpdateMe/a;


# direct methods
.method constructor <init>(Lcom/acquariusoft/UpdateMe/a;)V
    .registers 2

    iput-object p1, p0, Lcom/acquariusoft/UpdateMe/b;->a:Lcom/acquariusoft/UpdateMe/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/acquariusoft/UpdateMe/b;)Lcom/acquariusoft/UpdateMe/a;
    .registers 2

    iget-object v0, p0, Lcom/acquariusoft/UpdateMe/b;->a:Lcom/acquariusoft/UpdateMe/a;

    return-object v0
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 6

    iget-object v0, p0, Lcom/acquariusoft/UpdateMe/b;->a:Lcom/acquariusoft/UpdateMe/a;

    iget-object v0, v0, Lcom/acquariusoft/UpdateMe/a;->a:Lcom/acquariusoft/UpdateMe/b/e;

    iget-boolean v0, v0, Lcom/acquariusoft/UpdateMe/b/e;->h:Z

    if-nez v0, :cond_30

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "package:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/acquariusoft/UpdateMe/b;->a:Lcom/acquariusoft/UpdateMe/a;

    iget-object v1, v1, Lcom/acquariusoft/UpdateMe/a;->a:Lcom/acquariusoft/UpdateMe/b/e;

    iget-object v1, v1, Lcom/acquariusoft/UpdateMe/b/e;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iget-object v1, p0, Lcom/acquariusoft/UpdateMe/b;->a:Lcom/acquariusoft/UpdateMe/a;

    iget-object v1, v1, Lcom/acquariusoft/UpdateMe/a;->c:Landroid/app/Activity;

    invoke-static {v0, v1}, Lcom/acquariusoft/UpdateMe/ao;->a(Landroid/net/Uri;Landroid/app/Activity;)V

    iget-object v0, p0, Lcom/acquariusoft/UpdateMe/b;->a:Lcom/acquariusoft/UpdateMe/a;

    iget-object v0, v0, Lcom/acquariusoft/UpdateMe/a;->b:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    :goto_2f
    return-void

    :cond_30
    new-instance v0, Landroid/app/AlertDialog$Builder;

    sget-object v1, Lcom/acquariusoft/UpdateMe/an;->d:Lcom/acquariusoft/UpdateMe/UpdateMeActivity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setCancelable(Z)V

    const v1, 0x7f060043

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setTitle(I)V

    sget-object v1, Lcom/acquariusoft/UpdateMe/an;->d:Lcom/acquariusoft/UpdateMe/UpdateMeActivity;

    const v2, 0x7f060044

    invoke-virtual {v1, v2}, Lcom/acquariusoft/UpdateMe/UpdateMeActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    const/4 v1, -0x2

    sget-object v2, Lcom/acquariusoft/UpdateMe/an;->d:Lcom/acquariusoft/UpdateMe/UpdateMeActivity;

    const v3, 0x7f060013

    invoke-virtual {v2, v3}, Lcom/acquariusoft/UpdateMe/UpdateMeActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/acquariusoft/UpdateMe/c;

    invoke-direct {v3, p0}, Lcom/acquariusoft/UpdateMe/c;-><init>(Lcom/acquariusoft/UpdateMe/b;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    const/4 v1, -0x1

    sget-object v2, Lcom/acquariusoft/UpdateMe/an;->d:Lcom/acquariusoft/UpdateMe/UpdateMeActivity;

    const v3, 0x7f060012

    invoke-virtual {v2, v3}, Lcom/acquariusoft/UpdateMe/UpdateMeActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/acquariusoft/UpdateMe/d;

    invoke-direct {v3, p0}, Lcom/acquariusoft/UpdateMe/d;-><init>(Lcom/acquariusoft/UpdateMe/b;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto :goto_2f
.end method
