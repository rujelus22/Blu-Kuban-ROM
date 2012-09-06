.class final Lcom/anddoes/launcher/preference/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# instance fields
.field final synthetic a:Lcom/anddoes/launcher/preference/PreferencesActivity;


# direct methods
.method constructor <init>(Lcom/anddoes/launcher/preference/PreferencesActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/anddoes/launcher/preference/m;->a:Lcom/anddoes/launcher/preference/PreferencesActivity;

    .line 835
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/anddoes/launcher/preference/m;)Lcom/anddoes/launcher/preference/PreferencesActivity;
    .registers 2
    .parameter

    .prologue
    .line 835
    iget-object v0, p0, Lcom/anddoes/launcher/preference/m;->a:Lcom/anddoes/launcher/preference/PreferencesActivity;

    return-object v0
.end method


# virtual methods
.method public final onPreferenceClick(Landroid/preference/Preference;)Z
    .registers 5
    .parameter

    .prologue
    .line 838
    :try_start_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/anddoes/launcher/preference/m;->a:Lcom/anddoes/launcher/preference/PreferencesActivity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 839
    const v1, 0x1080027

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 840
    const v1, 0x7f060004

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 841
    const v1, 0x7f06013d

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 842
    const v1, 0x7f06000e

    .line 843
    new-instance v2, Lcom/anddoes/launcher/preference/n;

    invoke-direct {v2, p0}, Lcom/anddoes/launcher/preference/n;-><init>(Lcom/anddoes/launcher/preference/m;)V

    .line 842
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 848
    const v1, 0x7f06000f

    .line 849
    new-instance v2, Lcom/anddoes/launcher/preference/o;

    invoke-direct {v2, p0}, Lcom/anddoes/launcher/preference/o;-><init>(Lcom/anddoes/launcher/preference/m;)V

    .line 848
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 853
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;
    :try_end_37
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_37} :catch_39

    .line 859
    :goto_37
    const/4 v0, 0x1

    return v0

    .line 855
    :catch_39
    move-exception v0

    iget-object v0, p0, Lcom/anddoes/launcher/preference/m;->a:Lcom/anddoes/launcher/preference/PreferencesActivity;

    .line 856
    const v1, 0x7f060145

    .line 857
    const/4 v2, 0x0

    .line 855
    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 857
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_37
.end method
