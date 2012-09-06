.class final Lcom/anddoes/launcher/preference/aj;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# instance fields
.field a:Z

.field final synthetic b:Lcom/anddoes/launcher/preference/PreferencesActivity;


# direct methods
.method private constructor <init>(Lcom/anddoes/launcher/preference/PreferencesActivity;)V
    .registers 3
    .parameter

    .prologue
    .line 1905
    iput-object p1, p0, Lcom/anddoes/launcher/preference/aj;->b:Lcom/anddoes/launcher/preference/PreferencesActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 1907
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/anddoes/launcher/preference/aj;->a:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/anddoes/launcher/preference/PreferencesActivity;B)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 1905
    invoke-direct {p0, p1}, Lcom/anddoes/launcher/preference/aj;-><init>(Lcom/anddoes/launcher/preference/PreferencesActivity;)V

    return-void
.end method

.method private varargs a()Ljava/lang/Void;
    .registers 2

    .prologue
    .line 1918
    :try_start_0
    iget-object v0, p0, Lcom/anddoes/launcher/preference/aj;->b:Lcom/anddoes/launcher/preference/PreferencesActivity;

    invoke-static {v0}, Lcom/anddoes/launcher/preference/PreferencesActivity;->a(Lcom/anddoes/launcher/preference/PreferencesActivity;)Lcom/anddoes/launcher/preference/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anddoes/launcher/preference/b;->d()Z

    move-result v0

    iput-boolean v0, p0, Lcom/anddoes/launcher/preference/aj;->a:Z
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_c} :catch_e

    .line 1923
    :goto_c
    const/4 v0, 0x0

    return-object v0

    .line 1920
    :catch_e
    move-exception v0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/anddoes/launcher/preference/aj;->a:Z

    goto :goto_c
.end method


# virtual methods
.method protected final varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .parameter

    .prologue
    .line 1
    invoke-direct {p0}, Lcom/anddoes/launcher/preference/aj;->a()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 8
    .parameter

    .prologue
    const/4 v5, 0x0

    .line 1
    iget-object v0, p0, Lcom/anddoes/launcher/preference/aj;->b:Lcom/anddoes/launcher/preference/PreferencesActivity;

    invoke-virtual {v0}, Lcom/anddoes/launcher/preference/PreferencesActivity;->b()V

    iget-boolean v0, p0, Lcom/anddoes/launcher/preference/aj;->a:Z

    if-eqz v0, :cond_42

    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/anddoes/launcher/preference/aj;->b:Lcom/anddoes/launcher/preference/PreferencesActivity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x108009b

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v1, 0x7f06

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/anddoes/launcher/preference/aj;->b:Lcom/anddoes/launcher/preference/PreferencesActivity;

    const v2, 0x7f060134

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "/Android/data/apexlauncher/apex_data"

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Lcom/anddoes/launcher/preference/PreferencesActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f060007

    new-instance v2, Lcom/anddoes/launcher/preference/ak;

    invoke-direct {v2, p0}, Lcom/anddoes/launcher/preference/ak;-><init>(Lcom/anddoes/launcher/preference/aj;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    :goto_41
    return-void

    :cond_42
    iget-object v0, p0, Lcom/anddoes/launcher/preference/aj;->b:Lcom/anddoes/launcher/preference/PreferencesActivity;

    const v1, 0x7f060145

    invoke-static {v0, v1, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_41
.end method

.method protected final onPreExecute()V
    .registers 2

    .prologue
    .line 1911
    iget-object v0, p0, Lcom/anddoes/launcher/preference/aj;->b:Lcom/anddoes/launcher/preference/PreferencesActivity;

    invoke-virtual {v0}, Lcom/anddoes/launcher/preference/PreferencesActivity;->a()V

    .line 1912
    return-void
.end method
