.class final Lcom/anddoes/launcher/preference/j;
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
    iput-object p1, p0, Lcom/anddoes/launcher/preference/j;->a:Lcom/anddoes/launcher/preference/PreferencesActivity;

    .line 790
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/anddoes/launcher/preference/j;)Lcom/anddoes/launcher/preference/PreferencesActivity;
    .registers 2
    .parameter

    .prologue
    .line 790
    iget-object v0, p0, Lcom/anddoes/launcher/preference/j;->a:Lcom/anddoes/launcher/preference/PreferencesActivity;

    return-object v0
.end method


# virtual methods
.method public final onPreferenceClick(Landroid/preference/Preference;)Z
    .registers 7
    .parameter

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 792
    invoke-static {}, Lcom/anddoes/launcher/ia;->a()Z

    move-result v0

    if-nez v0, :cond_15

    .line 793
    iget-object v0, p0, Lcom/anddoes/launcher/preference/j;->a:Lcom/anddoes/launcher/preference/PreferencesActivity;

    .line 794
    const v1, 0x7f060146

    .line 793
    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 795
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 828
    :goto_14
    return v4

    .line 799
    :cond_15
    :try_start_15
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    .line 800
    const-string v2, "/Android/data/apexlauncher/apex_settings.bak"

    .line 799
    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 801
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_42

    .line 802
    iget-object v0, p0, Lcom/anddoes/launcher/preference/j;->a:Lcom/anddoes/launcher/preference/PreferencesActivity;

    .line 803
    const v1, 0x7f06013a

    .line 804
    const/4 v2, 0x0

    .line 802
    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 804
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_33} :catch_34

    goto :goto_14

    .line 824
    :catch_34
    move-exception v0

    iget-object v0, p0, Lcom/anddoes/launcher/preference/j;->a:Lcom/anddoes/launcher/preference/PreferencesActivity;

    .line 825
    const v1, 0x7f060145

    .line 824
    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 826
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_14

    .line 806
    :cond_42
    :try_start_42
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/anddoes/launcher/preference/j;->a:Lcom/anddoes/launcher/preference/PreferencesActivity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 807
    const v1, 0x108009b

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 808
    const v1, 0x7f060001

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 809
    const v1, 0x7f060138

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 810
    const v1, 0x7f06000e

    .line 811
    new-instance v2, Lcom/anddoes/launcher/preference/k;

    invoke-direct {v2, p0}, Lcom/anddoes/launcher/preference/k;-><init>(Lcom/anddoes/launcher/preference/j;)V

    .line 810
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 816
    const v1, 0x7f06000f

    .line 817
    new-instance v2, Lcom/anddoes/launcher/preference/l;

    invoke-direct {v2, p0}, Lcom/anddoes/launcher/preference/l;-><init>(Lcom/anddoes/launcher/preference/j;)V

    .line 816
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 821
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;
    :try_end_79
    .catch Ljava/lang/Exception; {:try_start_42 .. :try_end_79} :catch_34

    goto :goto_14
.end method
