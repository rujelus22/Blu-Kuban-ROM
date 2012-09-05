.class Leu/chainfire/supersu/MainActivity$1;
.super Landroid/os/AsyncTask;


# instance fields
.field final synthetic a:Leu/chainfire/supersu/MainActivity;

.field private b:Leu/chainfire/supersu/Installer;

.field private final synthetic c:Landroid/content/Context;


# direct methods
.method constructor <init>(Leu/chainfire/supersu/MainActivity;Landroid/content/Context;)V
    .registers 4

    iput-object p1, p0, Leu/chainfire/supersu/MainActivity$1;->a:Leu/chainfire/supersu/MainActivity;

    iput-object p2, p0, Leu/chainfire/supersu/MainActivity$1;->c:Landroid/content/Context;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Leu/chainfire/supersu/MainActivity$1;->b:Leu/chainfire/supersu/Installer;

    return-void
.end method

.method static synthetic a(Leu/chainfire/supersu/MainActivity$1;)Leu/chainfire/supersu/Installer;
    .registers 2

    iget-object v0, p0, Leu/chainfire/supersu/MainActivity$1;->b:Leu/chainfire/supersu/Installer;

    return-object v0
.end method

.method private varargs a()Ljava/lang/Integer;
    .registers 4

    const/4 v2, 0x0

    :try_start_1
    new-instance v0, Leu/chainfire/supersu/Installer;

    invoke-direct {v0}, Leu/chainfire/supersu/Installer;-><init>()V

    iput-object v0, p0, Leu/chainfire/supersu/MainActivity$1;->b:Leu/chainfire/supersu/Installer;

    iget-object v0, p0, Leu/chainfire/supersu/MainActivity$1;->b:Leu/chainfire/supersu/Installer;

    iget-object v1, p0, Leu/chainfire/supersu/MainActivity$1;->c:Landroid/content/Context;

    invoke-virtual {v0, v1}, Leu/chainfire/supersu/Installer;->a(Landroid/content/Context;)V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_f} :catch_10

    :goto_f
    return-object v2

    :catch_10
    move-exception v0

    iput-object v2, p0, Leu/chainfire/supersu/MainActivity$1;->b:Leu/chainfire/supersu/Installer;

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_f
.end method

.method static synthetic b(Leu/chainfire/supersu/MainActivity$1;)Leu/chainfire/supersu/MainActivity;
    .registers 2

    iget-object v0, p0, Leu/chainfire/supersu/MainActivity$1;->a:Leu/chainfire/supersu/MainActivity;

    return-object v0
.end method


# virtual methods
.method protected varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    invoke-direct {p0}, Leu/chainfire/supersu/MainActivity$1;->a()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 6

    const/16 v1, 0xb

    :try_start_2
    iget-object v0, p0, Leu/chainfire/supersu/MainActivity$1;->b:Leu/chainfire/supersu/Installer;

    if-eqz v0, :cond_57

    iget-object v0, p0, Leu/chainfire/supersu/MainActivity$1;->b:Leu/chainfire/supersu/Installer;

    invoke-virtual {v0}, Leu/chainfire/supersu/Installer;->a()Z

    move-result v0

    if-eqz v0, :cond_6b

    iget-object v0, p0, Leu/chainfire/supersu/MainActivity$1;->b:Leu/chainfire/supersu/Installer;

    invoke-virtual {v0}, Leu/chainfire/supersu/Installer;->b()Z

    move-result v0

    if-eqz v0, :cond_6b

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v1, :cond_5e

    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Leu/chainfire/supersu/MainActivity$1;->c:Landroid/content/Context;

    const v2, 0x7f0a0043

    invoke-direct {v0, v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    :goto_24
    const-string v1, "SuperSU"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f09001f

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f09000b

    new-instance v2, Leu/chainfire/supersu/MainActivity$1$1;

    iget-object v3, p0, Leu/chainfire/supersu/MainActivity$1;->c:Landroid/content/Context;

    invoke-direct {v2, p0, v3}, Leu/chainfire/supersu/MainActivity$1$1;-><init>(Leu/chainfire/supersu/MainActivity$1;Landroid/content/Context;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f090005

    new-instance v2, Leu/chainfire/supersu/MainActivity$1$2;

    invoke-direct {v2, p0}, Leu/chainfire/supersu/MainActivity$1$2;-><init>(Leu/chainfire/supersu/MainActivity$1;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Leu/chainfire/supersu/MainActivity$1$3;

    invoke-direct {v1, p0}, Leu/chainfire/supersu/MainActivity$1$3;-><init>(Leu/chainfire/supersu/MainActivity$1;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;
    :try_end_57
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_57} :catch_66

    :cond_57
    :goto_57
    iget-object v0, p0, Leu/chainfire/supersu/MainActivity$1;->a:Leu/chainfire/supersu/MainActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Leu/chainfire/supersu/MainActivity;->a(Leu/chainfire/supersu/MainActivity;Z)V

    return-void

    :cond_5e
    :try_start_5e
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Leu/chainfire/supersu/MainActivity$1;->c:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V
    :try_end_65
    .catch Ljava/lang/Exception; {:try_start_5e .. :try_end_65} :catch_66

    goto :goto_24

    :catch_66
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_57

    :cond_6b
    :try_start_6b
    iget-object v0, p0, Leu/chainfire/supersu/MainActivity$1;->b:Leu/chainfire/supersu/Installer;

    invoke-virtual {v0}, Leu/chainfire/supersu/Installer;->a()Z

    move-result v0

    if-eqz v0, :cond_57

    iget-object v0, p0, Leu/chainfire/supersu/MainActivity$1;->b:Leu/chainfire/supersu/Installer;

    invoke-virtual {v0}, Leu/chainfire/supersu/Installer;->b()Z

    move-result v0

    if-nez v0, :cond_57

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v1, :cond_af

    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Leu/chainfire/supersu/MainActivity$1;->c:Landroid/content/Context;

    const v2, 0x7f0a0043

    invoke-direct {v0, v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    :goto_89
    const-string v1, "SuperSU"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f090020

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f090004

    new-instance v2, Leu/chainfire/supersu/MainActivity$1$4;

    invoke-direct {v2, p0}, Leu/chainfire/supersu/MainActivity$1$4;-><init>(Leu/chainfire/supersu/MainActivity$1;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Leu/chainfire/supersu/MainActivity$1$5;

    invoke-direct {v1, p0}, Leu/chainfire/supersu/MainActivity$1$5;-><init>(Leu/chainfire/supersu/MainActivity$1;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_57

    :cond_af
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Leu/chainfire/supersu/MainActivity$1;->c:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V
    :try_end_b6
    .catch Ljava/lang/Exception; {:try_start_6b .. :try_end_b6} :catch_66

    goto :goto_89
.end method

.method protected onPreExecute()V
    .registers 3

    iget-object v0, p0, Leu/chainfire/supersu/MainActivity$1;->a:Leu/chainfire/supersu/MainActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Leu/chainfire/supersu/MainActivity;->a(Leu/chainfire/supersu/MainActivity;Z)V

    return-void
.end method
