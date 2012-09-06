.class public Lcom/anddoes/launcher/LicenseActivity;
.super Landroid/app/Activity;
.source "SourceFile"


# instance fields
.field private a:Lcom/anddoes/launcher/preference/h;

.field private b:Z

.field private c:Lcom/anddoes/launcher/a/e;

.field private d:Landroid/widget/EditText;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 24
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 33
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/anddoes/launcher/LicenseActivity;->b:Z

    .line 34
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/anddoes/launcher/LicenseActivity;->c:Lcom/anddoes/launcher/a/e;

    .line 24
    return-void
.end method

.method static synthetic a(Lcom/anddoes/launcher/LicenseActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 121
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/anddoes/launcher/LicenseActivity;->showDialog(I)V

    return-void
.end method

.method static synthetic b(Lcom/anddoes/launcher/LicenseActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 125
    const/4 v0, 0x1

    :try_start_1
    invoke-virtual {p0, v0}, Lcom/anddoes/launcher/LicenseActivity;->dismissDialog(I)V
    :try_end_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_4} :catch_5

    :goto_4
    return-void

    :catch_5
    move-exception v0

    goto :goto_4
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 5
    .parameter

    .prologue
    .line 39
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 40
    const v0, 0x7f03001a

    invoke-virtual {p0, v0}, Lcom/anddoes/launcher/LicenseActivity;->setContentView(I)V

    .line 42
    invoke-static {p0}, Lcom/anddoes/launcher/a/e;->a(Landroid/content/Context;)Lcom/anddoes/launcher/a/e;

    move-result-object v0

    iput-object v0, p0, Lcom/anddoes/launcher/LicenseActivity;->c:Lcom/anddoes/launcher/a/e;

    .line 43
    iget-object v0, p0, Lcom/anddoes/launcher/LicenseActivity;->c:Lcom/anddoes/launcher/a/e;

    invoke-virtual {v0}, Lcom/anddoes/launcher/a/e;->b()Z

    move-result v0

    iput-boolean v0, p0, Lcom/anddoes/launcher/LicenseActivity;->b:Z

    .line 44
    iget-boolean v0, p0, Lcom/anddoes/launcher/LicenseActivity;->b:Z

    if-eqz v0, :cond_1f

    .line 45
    invoke-virtual {p0}, Lcom/anddoes/launcher/LicenseActivity;->finish()V

    .line 65
    :cond_1e
    :goto_1e
    return-void

    .line 49
    :cond_1f
    new-instance v0, Lcom/anddoes/launcher/preference/h;

    invoke-direct {v0, p0}, Lcom/anddoes/launcher/preference/h;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/anddoes/launcher/LicenseActivity;->a:Lcom/anddoes/launcher/preference/h;

    .line 50
    iget-object v0, p0, Lcom/anddoes/launcher/LicenseActivity;->a:Lcom/anddoes/launcher/preference/h;

    invoke-virtual {v0}, Lcom/anddoes/launcher/preference/h;->aX()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/anddoes/launcher/ia;->b(Landroid/content/Context;Ljava/lang/String;)V

    .line 52
    const v0, 0x7f08003f

    invoke-virtual {p0, v0}, Lcom/anddoes/launcher/LicenseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/anddoes/launcher/LicenseActivity;->d:Landroid/widget/EditText;

    .line 53
    iget-object v0, p0, Lcom/anddoes/launcher/LicenseActivity;->c:Lcom/anddoes/launcher/a/e;

    invoke-virtual {v0}, Lcom/anddoes/launcher/a/e;->e()Ljava/lang/String;

    move-result-object v0

    .line 54
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_62

    .line 55
    iget-object v1, p0, Lcom/anddoes/launcher/LicenseActivity;->d:Landroid/widget/EditText;

    invoke-static {v0}, Lcom/anddoes/launcher/a/g;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 56
    invoke-virtual {p0}, Lcom/anddoes/launcher/LicenseActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 57
    const v0, 0x7f06018d

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 60
    :cond_62
    const v0, 0x7f080040

    invoke-virtual {p0, v0}, Lcom/anddoes/launcher/LicenseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 61
    if-eqz v0, :cond_1e

    .line 62
    new-instance v1, Ljava/lang/StringBuilder;

    const v2, 0x7f060189

    invoke-virtual {p0, v2}, Lcom/anddoes/launcher/LicenseActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "\nhttp://www.apexlauncher.com/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1e
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .registers 4
    .parameter

    .prologue
    .line 107
    packed-switch p1, :pswitch_data_2c

    .line 118
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    :goto_7
    return-object v0

    .line 110
    :pswitch_8
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 111
    sget v1, Landroid/app/ProgressDialog;->STYLE_SPINNER:I

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 112
    const v1, 0x7f060015

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setTitle(I)V

    .line 113
    const v1, 0x7f060017

    invoke-virtual {p0, v1}, Lcom/anddoes/launcher/LicenseActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 114
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 115
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    goto :goto_7

    .line 107
    nop

    :pswitch_data_2c
    .packed-switch 0x1
        :pswitch_8
    .end packed-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 6
    .parameter

    .prologue
    const/4 v3, 0x5

    const/4 v2, 0x0

    .line 76
    const/4 v0, 0x1

    const v1, 0x7f060008

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 78
    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 79
    const/4 v0, 0x2

    const v1, 0x7f06018b

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 81
    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 83
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 7
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v4, 0x0

    .line 88
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_7c

    .line 102
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_d
    return v0

    .line 90
    :pswitch_e
    iget-object v0, p0, Lcom/anddoes/launcher/LicenseActivity;->d:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 91
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_51

    .line 92
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x1080027

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v2, 0x7f060005

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v2, 0x7f06018c

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v2, 0x7f060007

    new-instance v3, Lcom/anddoes/launcher/ib;

    invoke-direct {v3, p0}, Lcom/anddoes/launcher/ib;-><init>(Lcom/anddoes/launcher/LicenseActivity;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move v0, v1

    .line 93
    goto :goto_d

    .line 95
    :cond_51
    const-string v0, "input_method"

    invoke-virtual {p0, v0}, Lcom/anddoes/launcher/LicenseActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {p0}, Lcom/anddoes/launcher/LicenseActivity;->getCurrentFocus()Landroid/view/View;

    move-result-object v3

    if-eqz v0, :cond_68

    if-eqz v3, :cond_68

    invoke-virtual {v3}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {v0, v3, v4}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 96
    :cond_68
    new-instance v0, Lcom/anddoes/launcher/ic;

    invoke-direct {v0, p0, v4}, Lcom/anddoes/launcher/ic;-><init>(Lcom/anddoes/launcher/LicenseActivity;B)V

    new-array v3, v1, [Ljava/lang/String;

    aput-object v2, v3, v4

    invoke-virtual {v0, v3}, Lcom/anddoes/launcher/ic;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move v0, v1

    .line 97
    goto :goto_d

    .line 99
    :pswitch_76
    invoke-virtual {p0}, Lcom/anddoes/launcher/LicenseActivity;->finish()V

    move v0, v1

    .line 100
    goto :goto_d

    .line 88
    nop

    :pswitch_data_7c
    .packed-switch 0x1
        :pswitch_76
        :pswitch_e
    .end packed-switch
.end method

.method public onStart()V
    .registers 3

    .prologue
    .line 70
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 71
    invoke-static {p0}, Lcom/anddoes/launcher/i;->a(Landroid/content/Context;)Lcom/anddoes/launcher/i;

    move-result-object v0

    const-string v1, "/Unlock"

    invoke-virtual {v0, v1}, Lcom/anddoes/launcher/i;->b(Ljava/lang/String;)V

    .line 72
    return-void
.end method
