.class Lcom/estrongs/android/pop/view/jb;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/view/PopPreferenceActivity;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/view/PopPreferenceActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/estrongs/android/pop/view/jb;->a:Lcom/estrongs/android/pop/view/PopPreferenceActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/estrongs/android/pop/view/jb;)Lcom/estrongs/android/pop/view/PopPreferenceActivity;
    .registers 2

    iget-object v0, p0, Lcom/estrongs/android/pop/view/jb;->a:Lcom/estrongs/android/pop/view/PopPreferenceActivity;

    return-object v0
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .registers 9

    const/16 v6, 0x8

    const/4 v5, 0x1

    iget-object v0, p0, Lcom/estrongs/android/pop/view/jb;->a:Lcom/estrongs/android/pop/view/PopPreferenceActivity;

    invoke-static {v0}, Lcom/estrongs/android/pop/c;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/c;->m()Z

    move-result v0

    new-instance v4, Lcom/estrongs/android/pop/view/jc;

    invoke-direct {v4, p0, v0}, Lcom/estrongs/android/pop/view/jc;-><init>(Lcom/estrongs/android/pop/view/jb;Z)V

    invoke-static {}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->Q()Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-result-object v2

    new-instance v0, Lcom/estrongs/android/widget/FileBrowserDialog;

    iget-object v1, p0, Lcom/estrongs/android/pop/view/jb;->a:Lcom/estrongs/android/pop/view/PopPreferenceActivity;

    if-nez v2, :cond_1e

    iget-object v2, p0, Lcom/estrongs/android/pop/view/jb;->a:Lcom/estrongs/android/pop/view/PopPreferenceActivity;

    :cond_1e
    invoke-static {v2}, Lcom/estrongs/android/pop/d/n;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/d/n;

    move-result-object v2

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-direct/range {v0 .. v5}, Lcom/estrongs/android/widget/FileBrowserDialog;-><init>(Landroid/app/Activity;Lcom/estrongs/android/pop/d/f;Ljava/lang/String;Ljava/io/FileFilter;Z)V

    const v1, 0x7f020094

    invoke-virtual {v0, v1}, Lcom/estrongs/android/widget/FileBrowserDialog;->setIcon(I)V

    iget-object v1, p0, Lcom/estrongs/android/pop/view/jb;->a:Lcom/estrongs/android/pop/view/PopPreferenceActivity;

    const v2, 0x7f09023c

    invoke-virtual {v1, v2}, Lcom/estrongs/android/pop/view/PopPreferenceActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/widget/FileBrowserDialog;->setTitle(Ljava/lang/CharSequence;)V

    const/4 v1, -0x2

    iget-object v2, p0, Lcom/estrongs/android/pop/view/jb;->a:Lcom/estrongs/android/pop/view/PopPreferenceActivity;

    const v3, 0x7f090060

    invoke-virtual {v2, v3}, Lcom/estrongs/android/pop/view/PopPreferenceActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/estrongs/android/pop/view/jd;

    invoke-direct {v3, p0}, Lcom/estrongs/android/pop/view/jd;-><init>(Lcom/estrongs/android/pop/view/jb;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/estrongs/android/widget/FileBrowserDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    new-instance v1, Lcom/estrongs/android/pop/view/je;

    invoke-direct {v1, p0, v0}, Lcom/estrongs/android/pop/view/je;-><init>(Lcom/estrongs/android/pop/view/jb;Lcom/estrongs/android/widget/FileBrowserDialog;)V

    invoke-virtual {v0, v1}, Lcom/estrongs/android/widget/FileBrowserDialog;->a(Lcom/estrongs/android/widget/u;)V

    const/4 v1, -0x3

    invoke-virtual {v0, v1, v6}, Lcom/estrongs/android/widget/FileBrowserDialog;->a(II)V

    const/4 v1, -0x1

    invoke-virtual {v0, v1, v6}, Lcom/estrongs/android/widget/FileBrowserDialog;->a(II)V

    invoke-virtual {v0}, Lcom/estrongs/android/widget/FileBrowserDialog;->show()V

    return v5
.end method
