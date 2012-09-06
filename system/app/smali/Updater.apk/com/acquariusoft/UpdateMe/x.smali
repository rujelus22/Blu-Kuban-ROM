.class final Lcom/acquariusoft/UpdateMe/x;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/acquariusoft/UpdateMe/IconPreferenceOnline;


# direct methods
.method constructor <init>(Lcom/acquariusoft/UpdateMe/IconPreferenceOnline;)V
    .registers 2

    iput-object p1, p0, Lcom/acquariusoft/UpdateMe/x;->a:Lcom/acquariusoft/UpdateMe/IconPreferenceOnline;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/acquariusoft/UpdateMe/x;)Lcom/acquariusoft/UpdateMe/IconPreferenceOnline;
    .registers 2

    iget-object v0, p0, Lcom/acquariusoft/UpdateMe/x;->a:Lcom/acquariusoft/UpdateMe/IconPreferenceOnline;

    return-object v0
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 6

    iget-object v0, p0, Lcom/acquariusoft/UpdateMe/x;->a:Lcom/acquariusoft/UpdateMe/IconPreferenceOnline;

    invoke-virtual {v0}, Lcom/acquariusoft/UpdateMe/IconPreferenceOnline;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/acquariusoft/UpdateMe/an;->e:I

    iget-object v0, p0, Lcom/acquariusoft/UpdateMe/x;->a:Lcom/acquariusoft/UpdateMe/IconPreferenceOnline;

    iget-object v0, v0, Lcom/acquariusoft/UpdateMe/IconPreferenceOnline;->c:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_54

    new-instance v0, Landroid/app/AlertDialog$Builder;

    sget-object v1, Lcom/acquariusoft/UpdateMe/an;->d:Lcom/acquariusoft/UpdateMe/UpdateMeActivity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setCancelable(Z)V

    sget-object v1, Lcom/acquariusoft/UpdateMe/an;->d:Lcom/acquariusoft/UpdateMe/UpdateMeActivity;

    const v2, 0x7f060047

    invoke-virtual {v1, v2}, Lcom/acquariusoft/UpdateMe/UpdateMeActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    const/4 v1, -0x2

    sget-object v2, Lcom/acquariusoft/UpdateMe/an;->d:Lcom/acquariusoft/UpdateMe/UpdateMeActivity;

    const v3, 0x7f060013

    invoke-virtual {v2, v3}, Lcom/acquariusoft/UpdateMe/UpdateMeActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/acquariusoft/UpdateMe/y;

    invoke-direct {v3, p0}, Lcom/acquariusoft/UpdateMe/y;-><init>(Lcom/acquariusoft/UpdateMe/x;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    const/4 v1, -0x1

    sget-object v2, Lcom/acquariusoft/UpdateMe/an;->d:Lcom/acquariusoft/UpdateMe/UpdateMeActivity;

    const v3, 0x7f060012

    invoke-virtual {v2, v3}, Lcom/acquariusoft/UpdateMe/UpdateMeActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/acquariusoft/UpdateMe/z;

    invoke-direct {v3, p0}, Lcom/acquariusoft/UpdateMe/z;-><init>(Lcom/acquariusoft/UpdateMe/x;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    :cond_54
    return-void
.end method
