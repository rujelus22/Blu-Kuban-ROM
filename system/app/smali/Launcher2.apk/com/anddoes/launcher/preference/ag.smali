.class final Lcom/anddoes/launcher/preference/ag;
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
    iput-object p1, p0, Lcom/anddoes/launcher/preference/ag;->a:Lcom/anddoes/launcher/preference/PreferencesActivity;

    .line 747
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/anddoes/launcher/preference/ag;)Lcom/anddoes/launcher/preference/PreferencesActivity;
    .registers 2
    .parameter

    .prologue
    .line 747
    iget-object v0, p0, Lcom/anddoes/launcher/preference/ag;->a:Lcom/anddoes/launcher/preference/PreferencesActivity;

    return-object v0
.end method


# virtual methods
.method public final onPreferenceClick(Landroid/preference/Preference;)Z
    .registers 7
    .parameter

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 749
    invoke-static {}, Lcom/anddoes/launcher/ia;->a()Z

    move-result v0

    if-nez v0, :cond_15

    .line 750
    iget-object v0, p0, Lcom/anddoes/launcher/preference/ag;->a:Lcom/anddoes/launcher/preference/PreferencesActivity;

    .line 751
    const v1, 0x7f060146

    .line 750
    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 752
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 783
    :goto_14
    return v4

    .line 756
    :cond_15
    :try_start_15
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    .line 757
    const-string v2, "/Android/data/apexlauncher/apex_settings.bak"

    .line 756
    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 758
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_43

    .line 759
    new-instance v0, Lcom/anddoes/launcher/preference/al;

    iget-object v1, p0, Lcom/anddoes/launcher/preference/ag;->a:Lcom/anddoes/launcher/preference/PreferencesActivity;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/anddoes/launcher/preference/al;-><init>(Lcom/anddoes/launcher/preference/PreferencesActivity;B)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/anddoes/launcher/preference/al;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_34} :catch_35

    goto :goto_14

    .line 779
    :catch_35
    move-exception v0

    iget-object v0, p0, Lcom/anddoes/launcher/preference/ag;->a:Lcom/anddoes/launcher/preference/PreferencesActivity;

    .line 780
    const v1, 0x7f060145

    .line 779
    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 781
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_14

    .line 761
    :cond_43
    :try_start_43
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/anddoes/launcher/preference/ag;->a:Lcom/anddoes/launcher/preference/PreferencesActivity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 762
    const v1, 0x108009b

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 763
    const v1, 0x7f060001

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 764
    const v1, 0x7f060135

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 765
    const v1, 0x7f06000e

    .line 766
    new-instance v2, Lcom/anddoes/launcher/preference/ah;

    invoke-direct {v2, p0}, Lcom/anddoes/launcher/preference/ah;-><init>(Lcom/anddoes/launcher/preference/ag;)V

    .line 765
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 771
    const v1, 0x7f06000f

    .line 772
    new-instance v2, Lcom/anddoes/launcher/preference/ai;

    invoke-direct {v2, p0}, Lcom/anddoes/launcher/preference/ai;-><init>(Lcom/anddoes/launcher/preference/ag;)V

    .line 771
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 776
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;
    :try_end_7a
    .catch Ljava/lang/Exception; {:try_start_43 .. :try_end_7a} :catch_35

    goto :goto_14
.end method
