.class public Lcom/acquariusoft/UpdateMe/UpdateMeActivity;
.super Landroid/preference/PreferenceActivity;

# interfaces
.implements Lcom/acquariusoft/UpdateMe/a/c;


# instance fields
.field a:Lcom/mobfox/video/sdk/i;

.field b:Landroid/content/SharedPreferences;

.field public c:Landroid/app/ProgressDialog;

.field public d:Landroid/app/ProgressDialog;

.field public e:Lcom/acquariusoft/UpdateMe/q;


# direct methods
.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    iput-object v0, p0, Lcom/acquariusoft/UpdateMe/UpdateMeActivity;->a:Lcom/mobfox/video/sdk/i;

    iput-object v0, p0, Lcom/acquariusoft/UpdateMe/UpdateMeActivity;->b:Landroid/content/SharedPreferences;

    return-void
.end method


# virtual methods
.method public final synthetic a()V
    .registers 2

    sget-object v0, Lcom/acquariusoft/UpdateMe/an;->d:Lcom/acquariusoft/UpdateMe/UpdateMeActivity;

    invoke-virtual {v0}, Lcom/acquariusoft/UpdateMe/UpdateMeActivity;->invalidateHeaders()V

    return-void
.end method

.method public final a(Lcom/acquariusoft/UpdateMe/b/j;)V
    .registers 7

    const/4 v4, 0x1

    new-instance v0, Lcom/acquariusoft/UpdateMe/q;

    invoke-direct {v0}, Lcom/acquariusoft/UpdateMe/q;-><init>()V

    iput-object v0, p0, Lcom/acquariusoft/UpdateMe/UpdateMeActivity;->e:Lcom/acquariusoft/UpdateMe/q;

    iget v0, p1, Lcom/acquariusoft/UpdateMe/b/j;->l:I

    if-ne v0, v4, :cond_10

    iget-object v0, p0, Lcom/acquariusoft/UpdateMe/UpdateMeActivity;->e:Lcom/acquariusoft/UpdateMe/q;

    iput-boolean v4, v0, Lcom/acquariusoft/UpdateMe/q;->j:Z

    :cond_10
    iget-object v0, p0, Lcom/acquariusoft/UpdateMe/UpdateMeActivity;->e:Lcom/acquariusoft/UpdateMe/q;

    iget-object v1, p1, Lcom/acquariusoft/UpdateMe/b/j;->e:Ljava/lang/String;

    iput-object v1, v0, Lcom/acquariusoft/UpdateMe/q;->f:Ljava/lang/String;

    iget-object v0, p0, Lcom/acquariusoft/UpdateMe/UpdateMeActivity;->e:Lcom/acquariusoft/UpdateMe/q;

    iget-object v1, p1, Lcom/acquariusoft/UpdateMe/b/j;->h:Ljava/lang/String;

    iput-object v1, v0, Lcom/acquariusoft/UpdateMe/q;->k:Ljava/lang/String;

    iget-object v0, p0, Lcom/acquariusoft/UpdateMe/UpdateMeActivity;->e:Lcom/acquariusoft/UpdateMe/q;

    iget-object v1, p1, Lcom/acquariusoft/UpdateMe/b/j;->i:Ljava/lang/String;

    iput-object v1, v0, Lcom/acquariusoft/UpdateMe/q;->l:Ljava/lang/String;

    iget-object v0, p0, Lcom/acquariusoft/UpdateMe/UpdateMeActivity;->e:Lcom/acquariusoft/UpdateMe/q;

    iget-object v1, p1, Lcom/acquariusoft/UpdateMe/b/j;->f:Ljava/lang/String;

    iput-object v1, v0, Lcom/acquariusoft/UpdateMe/q;->n:Ljava/lang/String;

    iget-object v0, p0, Lcom/acquariusoft/UpdateMe/UpdateMeActivity;->e:Lcom/acquariusoft/UpdateMe/q;

    iput-object p1, v0, Lcom/acquariusoft/UpdateMe/q;->q:Lcom/acquariusoft/UpdateMe/b/j;

    iget-object v0, p0, Lcom/acquariusoft/UpdateMe/UpdateMeActivity;->e:Lcom/acquariusoft/UpdateMe/q;

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v3, p1, Lcom/acquariusoft/UpdateMe/b/j;->c:Ljava/lang/String;

    aput-object v3, v1, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p1, Lcom/acquariusoft/UpdateMe/b/j;->g:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    const/4 v2, 0x2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, p1, Lcom/acquariusoft/UpdateMe/b/j;->j:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget-object v3, p1, Lcom/acquariusoft/UpdateMe/b/j;->e:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/acquariusoft/UpdateMe/q;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public onBuildHeaders(Ljava/util/List;)V
    .registers 11

    const/16 v8, 0x9

    const/4 v7, 0x5

    const/4 v6, 0x1

    const/4 v1, 0x0

    new-instance v0, Landroid/os/StrictMode$ThreadPolicy$Builder;

    invoke-direct {v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;-><init>()V

    invoke-virtual {v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;->permitAll()Landroid/os/StrictMode$ThreadPolicy$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;->build()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v0

    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    invoke-static {}, Lcom/acquariusoft/UpdateMe/an;->a()V

    invoke-static {}, Lcom/acquariusoft/UpdateMe/an;->c()V

    const v0, 0x7f050005

    invoke-virtual {p0, v0, p1}, Lcom/acquariusoft/UpdateMe/UpdateMeActivity;->loadHeadersFromResource(ILjava/util/List;)V

    sget-boolean v0, Lcom/acquariusoft/UpdateMe/ao;->f:Z

    if-eqz v0, :cond_bf

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity$Header;

    sget-object v2, Lcom/acquariusoft/UpdateMe/an;->b:[I

    aget v2, v2, v1

    iput v2, v0, Landroid/preference/PreferenceActivity$Header;->iconRes:I

    :goto_31
    sget-object v0, Lcom/acquariusoft/UpdateMe/ao;->n:Lcom/acquariusoft/UpdateMe/b/a;

    iget-object v0, v0, Lcom/acquariusoft/UpdateMe/b/a;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_39
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_cd

    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v2, "disable_apps"

    sget-object v3, Lcom/acquariusoft/UpdateMe/ao;->q:Lcom/acquariusoft/UpdateMe/b/g;

    iget-boolean v3, v3, Lcom/acquariusoft/UpdateMe/b/g;->h:Z

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_7a

    new-instance v2, Landroid/preference/PreferenceActivity$Header;

    invoke-direct {v2}, Landroid/preference/PreferenceActivity$Header;-><init>()V

    sget-boolean v3, Lcom/acquariusoft/UpdateMe/ao;->f:Z

    if-eqz v3, :cond_109

    sget-object v3, Lcom/acquariusoft/UpdateMe/an;->b:[I

    aget v3, v3, v6

    iput v3, v2, Landroid/preference/PreferenceActivity$Header;->iconRes:I

    :goto_5e
    const v3, 0x7f060045

    invoke-virtual {p0, v3}, Lcom/acquariusoft/UpdateMe/UpdateMeActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Landroid/preference/PreferenceActivity$Header;->title:Ljava/lang/CharSequence;

    const-string v3, "com.acquariusoft.UpdateMe.PreferencePage.PrefsFragmentInstalledApps"

    iput-object v3, v2, Landroid/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const-string v4, "pos"

    invoke-virtual {v3, v4, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iput-object v3, v2, Landroid/preference/PreferenceActivity$Header;->fragmentArguments:Landroid/os/Bundle;

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_7a
    const-string v1, "disable_scripts"

    sget-object v2, Lcom/acquariusoft/UpdateMe/ao;->q:Lcom/acquariusoft/UpdateMe/b/g;

    iget-boolean v2, v2, Lcom/acquariusoft/UpdateMe/b/g;->i:Z

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_a2

    const v0, 0x7f050007

    invoke-virtual {p0, v0, p1}, Lcom/acquariusoft/UpdateMe/UpdateMeActivity;->loadHeadersFromResource(ILjava/util/List;)V

    sget-boolean v0, Lcom/acquariusoft/UpdateMe/ao;->f:Z

    if-eqz v0, :cond_111

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity$Header;

    sget-object v1, Lcom/acquariusoft/UpdateMe/an;->b:[I

    aget v1, v1, v8

    iput v1, v0, Landroid/preference/PreferenceActivity$Header;->iconRes:I

    :cond_a2
    :goto_a2
    const v0, 0x7f050008

    invoke-virtual {p0, v0, p1}, Lcom/acquariusoft/UpdateMe/UpdateMeActivity;->loadHeadersFromResource(ILjava/util/List;)V

    sget-boolean v0, Lcom/acquariusoft/UpdateMe/ao;->f:Z

    if-eqz v0, :cond_125

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity$Header;

    sget-object v1, Lcom/acquariusoft/UpdateMe/an;->b:[I

    aget v1, v1, v7

    iput v1, v0, Landroid/preference/PreferenceActivity$Header;->iconRes:I

    :goto_be
    return-void

    :cond_bf
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity$Header;

    sget-object v2, Lcom/acquariusoft/UpdateMe/an;->a:[I

    aget v2, v2, v1

    iput v2, v0, Landroid/preference/PreferenceActivity$Header;->iconRes:I

    goto/16 :goto_31

    :cond_cd
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/acquariusoft/UpdateMe/b/i;

    new-instance v3, Landroid/preference/PreferenceActivity$Header;

    invoke-direct {v3}, Landroid/preference/PreferenceActivity$Header;-><init>()V

    sget-boolean v4, Lcom/acquariusoft/UpdateMe/ao;->f:Z

    if-eqz v4, :cond_100

    sget-object v4, Lcom/acquariusoft/UpdateMe/an;->b:[I

    iget v5, v0, Lcom/acquariusoft/UpdateMe/b/i;->b:I

    aget v4, v4, v5

    iput v4, v3, Landroid/preference/PreferenceActivity$Header;->iconRes:I

    :goto_e4
    iget-object v0, v0, Lcom/acquariusoft/UpdateMe/b/i;->a:Ljava/lang/String;

    iput-object v0, v3, Landroid/preference/PreferenceActivity$Header;->title:Ljava/lang/CharSequence;

    const-string v0, "com.acquariusoft.UpdateMe.PreferencePage.PrefsFragmentTabElement"

    iput-object v0, v3, Landroid/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v4, "pos"

    invoke-virtual {v0, v4, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iput-object v0, v3, Landroid/preference/PreferenceActivity$Header;->fragmentArguments:Landroid/os/Bundle;

    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_39

    :cond_100
    sget-object v4, Lcom/acquariusoft/UpdateMe/an;->a:[I

    iget v5, v0, Lcom/acquariusoft/UpdateMe/b/i;->b:I

    aget v4, v4, v5

    iput v4, v3, Landroid/preference/PreferenceActivity$Header;->iconRes:I

    goto :goto_e4

    :cond_109
    sget-object v3, Lcom/acquariusoft/UpdateMe/an;->a:[I

    aget v3, v3, v6

    iput v3, v2, Landroid/preference/PreferenceActivity$Header;->iconRes:I

    goto/16 :goto_5e

    :cond_111
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity$Header;

    sget-object v1, Lcom/acquariusoft/UpdateMe/an;->a:[I

    aget v1, v1, v8

    iput v1, v0, Landroid/preference/PreferenceActivity$Header;->iconRes:I

    goto/16 :goto_a2

    :cond_125
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity$Header;

    sget-object v1, Lcom/acquariusoft/UpdateMe/an;->a:[I

    aget v1, v1, v7

    iput v1, v0, Landroid/preference/PreferenceActivity$Header;->iconRes:I

    goto :goto_be
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 10

    const v6, 0x7f060013

    const/4 v5, -0x2

    const/4 v4, 0x1

    const/4 v7, 0x0

    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/acquariusoft/UpdateMe/UpdateMeActivity;->b:Landroid/content/SharedPreferences;

    iget-object v0, p0, Lcom/acquariusoft/UpdateMe/UpdateMeActivity;->b:Landroid/content/SharedPreferences;

    const-string v1, "light_theme"

    invoke-interface {v0, v1, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/acquariusoft/UpdateMe/ao;->f:Z

    sput-object p0, Lcom/acquariusoft/UpdateMe/an;->d:Lcom/acquariusoft/UpdateMe/UpdateMeActivity;

    sget-boolean v0, Lcom/acquariusoft/UpdateMe/ao;->f:Z

    if-eqz v0, :cond_22

    const v0, 0x103006e

    invoke-super {p0, v0}, Landroid/preference/PreferenceActivity;->setTheme(I)V

    :cond_22
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    new-instance v0, Lcom/mobfox/video/sdk/i;

    const-string v1, "9907d61e6dbdeedec135aba69830eebc"

    invoke-direct {v0, p0, v1}, Lcom/mobfox/video/sdk/i;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/acquariusoft/UpdateMe/UpdateMeActivity;->a:Lcom/mobfox/video/sdk/i;

    iget-object v0, p0, Lcom/acquariusoft/UpdateMe/UpdateMeActivity;->a:Lcom/mobfox/video/sdk/i;

    new-instance v1, Lcom/acquariusoft/UpdateMe/af;

    invoke-direct {v1, p0}, Lcom/acquariusoft/UpdateMe/af;-><init>(Lcom/acquariusoft/UpdateMe/UpdateMeActivity;)V

    invoke-virtual {v0, v1}, Lcom/mobfox/video/sdk/i;->a(Lcom/mobfox/video/sdk/h;)V

    invoke-virtual {p0}, Lcom/acquariusoft/UpdateMe/UpdateMeActivity;->isTaskRoot()Z

    move-result v0

    if-nez v0, :cond_5c

    invoke-virtual {p0}, Lcom/acquariusoft/UpdateMe/UpdateMeActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.intent.category.LAUNCHER"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->hasCategory(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5c

    if-eqz v1, :cond_5c

    const-string v0, "android.intent.action.MAIN"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5c

    invoke-virtual {p0}, Lcom/acquariusoft/UpdateMe/UpdateMeActivity;->finish()V

    :cond_5b
    :goto_5b
    return-void

    :cond_5c
    iget-object v0, p0, Lcom/acquariusoft/UpdateMe/UpdateMeActivity;->b:Landroid/content/SharedPreferences;

    const-string v1, "first_launch_donate"

    invoke-interface {v0, v1, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_c4

    iget-object v0, p0, Lcom/acquariusoft/UpdateMe/UpdateMeActivity;->b:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "first_launch_donate"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    new-instance v0, Landroid/app/AlertDialog$Builder;

    sget-object v1, Lcom/acquariusoft/UpdateMe/an;->d:Lcom/acquariusoft/UpdateMe/UpdateMeActivity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/app/AlertDialog;->setCancelable(Z)V

    const v1, 0x7f060025

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setTitle(I)V

    const v1, 0x7f060026

    invoke-virtual {p0, v1}, Lcom/acquariusoft/UpdateMe/UpdateMeActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    sget-object v1, Lcom/acquariusoft/UpdateMe/an;->d:Lcom/acquariusoft/UpdateMe/UpdateMeActivity;

    invoke-virtual {v1, v6}, Lcom/acquariusoft/UpdateMe/UpdateMeActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/acquariusoft/UpdateMe/ai;

    invoke-direct {v2, p0}, Lcom/acquariusoft/UpdateMe/ai;-><init>(Lcom/acquariusoft/UpdateMe/UpdateMeActivity;)V

    invoke-virtual {v0, v5, v1, v2}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    const/4 v1, -0x3

    sget-object v2, Lcom/acquariusoft/UpdateMe/an;->d:Lcom/acquariusoft/UpdateMe/UpdateMeActivity;

    const v3, 0x7f060027

    invoke-virtual {v2, v3}, Lcom/acquariusoft/UpdateMe/UpdateMeActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/acquariusoft/UpdateMe/aj;

    invoke-direct {v3, p0}, Lcom/acquariusoft/UpdateMe/aj;-><init>(Lcom/acquariusoft/UpdateMe/UpdateMeActivity;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    const/4 v1, -0x1

    sget-object v2, Lcom/acquariusoft/UpdateMe/an;->d:Lcom/acquariusoft/UpdateMe/UpdateMeActivity;

    const v3, 0x7f060028

    invoke-virtual {v2, v3}, Lcom/acquariusoft/UpdateMe/UpdateMeActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/acquariusoft/UpdateMe/ak;

    invoke-direct {v3, p0}, Lcom/acquariusoft/UpdateMe/ak;-><init>(Lcom/acquariusoft/UpdateMe/UpdateMeActivity;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    :cond_c4
    sget-object v0, Lcom/acquariusoft/UpdateMe/ao;->q:Lcom/acquariusoft/UpdateMe/b/g;

    iget-object v0, v0, Lcom/acquariusoft/UpdateMe/b/g;->a:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_ff

    new-instance v0, Landroid/app/AlertDialog$Builder;

    sget-object v1, Lcom/acquariusoft/UpdateMe/an;->d:Lcom/acquariusoft/UpdateMe/UpdateMeActivity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/app/AlertDialog;->setCancelable(Z)V

    const v1, 0x7f060029

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setTitle(I)V

    const v1, 0x7f06002e

    invoke-virtual {p0, v1}, Lcom/acquariusoft/UpdateMe/UpdateMeActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    sget-object v1, Lcom/acquariusoft/UpdateMe/an;->d:Lcom/acquariusoft/UpdateMe/UpdateMeActivity;

    invoke-virtual {v1, v6}, Lcom/acquariusoft/UpdateMe/UpdateMeActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/acquariusoft/UpdateMe/al;

    invoke-direct {v2, p0}, Lcom/acquariusoft/UpdateMe/al;-><init>(Lcom/acquariusoft/UpdateMe/UpdateMeActivity;)V

    invoke-virtual {v0, v5, v1, v2}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    :cond_ff
    invoke-virtual {p0}, Lcom/acquariusoft/UpdateMe/UpdateMeActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    :try_start_103
    const-string v1, "com.acquariusoft.UpdateMe.donate"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    const/4 v0, 0x1

    sput-boolean v0, Lcom/acquariusoft/UpdateMe/ao;->v:Z
    :try_end_10c
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_103 .. :try_end_10c} :catch_16b

    :goto_10c
    new-instance v0, Lcom/acquariusoft/UpdateMe/a/e;

    invoke-direct {v0, p0}, Lcom/acquariusoft/UpdateMe/a/e;-><init>(Lcom/acquariusoft/UpdateMe/a/c;)V

    new-array v1, v4, [Ljava/lang/String;

    const-string v2, ""

    aput-object v2, v1, v7

    invoke-virtual {v0, v1}, Lcom/acquariusoft/UpdateMe/a/e;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    iget-object v0, p0, Lcom/acquariusoft/UpdateMe/UpdateMeActivity;->b:Landroid/content/SharedPreferences;

    const-string v1, "first_launch_ads_int"

    invoke-interface {v0, v1, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    sget v1, Lcom/acquariusoft/UpdateMe/ao;->b:I

    if-eq v0, v1, :cond_12f

    sget-boolean v0, Lcom/acquariusoft/UpdateMe/ao;->v:Z

    if-nez v0, :cond_12f

    iget-object v0, p0, Lcom/acquariusoft/UpdateMe/UpdateMeActivity;->a:Lcom/mobfox/video/sdk/i;

    invoke-virtual {v0}, Lcom/mobfox/video/sdk/i;->a()V

    :cond_12f
    iget-object v0, p0, Lcom/acquariusoft/UpdateMe/UpdateMeActivity;->b:Landroid/content/SharedPreferences;

    const-string v1, "disable_check_rom"

    invoke-interface {v0, v1, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iget-object v1, p0, Lcom/acquariusoft/UpdateMe/UpdateMeActivity;->b:Landroid/content/SharedPreferences;

    const-string v2, "check_rom_time"

    const-string v3, "1"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    mul-int/lit8 v1, v1, 0x3c

    mul-int/lit8 v1, v1, 0x3c

    if-nez v0, :cond_5b

    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/acquariusoft/UpdateMe/BootService;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-static {p0, v7, v0, v7}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    const-string v0, "alarm"

    invoke-virtual {p0, v0}, Lcom/acquariusoft/UpdateMe/UpdateMeActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    mul-int/lit16 v1, v1, 0x3e8

    int-to-long v5, v1

    add-long/2addr v3, v5

    invoke-virtual {v0, v7, v3, v4, v2}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    goto/16 :goto_5b

    :catch_16b
    move-exception v0

    goto :goto_10c
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .registers 6

    const/4 v3, 0x0

    packed-switch p1, :pswitch_data_66

    const/4 v0, 0x0

    :goto_5
    return-object v0

    :pswitch_6
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/acquariusoft/UpdateMe/UpdateMeActivity;->d:Landroid/app/ProgressDialog;

    iget-object v0, p0, Lcom/acquariusoft/UpdateMe/UpdateMeActivity;->d:Landroid/app/ProgressDialog;

    const-string v1, "Wait..."

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/acquariusoft/UpdateMe/UpdateMeActivity;->d:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v3}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    iget-object v0, p0, Lcom/acquariusoft/UpdateMe/UpdateMeActivity;->d:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    iget-object v0, p0, Lcom/acquariusoft/UpdateMe/UpdateMeActivity;->d:Landroid/app/ProgressDialog;

    goto :goto_5

    :pswitch_21
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/acquariusoft/UpdateMe/UpdateMeActivity;->c:Landroid/app/ProgressDialog;

    iget-object v0, p0, Lcom/acquariusoft/UpdateMe/UpdateMeActivity;->c:Landroid/app/ProgressDialog;

    sget-object v1, Lcom/acquariusoft/UpdateMe/an;->d:Lcom/acquariusoft/UpdateMe/UpdateMeActivity;

    const v2, 0x7f06000d

    invoke-virtual {v1, v2}, Lcom/acquariusoft/UpdateMe/UpdateMeActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    sget-boolean v0, Lcom/acquariusoft/UpdateMe/ao;->t:Z

    if-eqz v0, :cond_60

    iget-object v0, p0, Lcom/acquariusoft/UpdateMe/UpdateMeActivity;->c:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    :goto_40
    iget-object v0, p0, Lcom/acquariusoft/UpdateMe/UpdateMeActivity;->c:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v3}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    iget-object v0, p0, Lcom/acquariusoft/UpdateMe/UpdateMeActivity;->c:Landroid/app/ProgressDialog;

    sget-object v1, Lcom/acquariusoft/UpdateMe/an;->d:Lcom/acquariusoft/UpdateMe/UpdateMeActivity;

    const v2, 0x7f060013

    invoke-virtual {v1, v2}, Lcom/acquariusoft/UpdateMe/UpdateMeActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/acquariusoft/UpdateMe/am;

    invoke-direct {v2, p0}, Lcom/acquariusoft/UpdateMe/am;-><init>(Lcom/acquariusoft/UpdateMe/UpdateMeActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/ProgressDialog;->setButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    iget-object v0, p0, Lcom/acquariusoft/UpdateMe/UpdateMeActivity;->c:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    iget-object v0, p0, Lcom/acquariusoft/UpdateMe/UpdateMeActivity;->c:Landroid/app/ProgressDialog;

    goto :goto_5

    :cond_60
    iget-object v0, p0, Lcom/acquariusoft/UpdateMe/UpdateMeActivity;->c:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v3}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    goto :goto_40

    :pswitch_data_66
    .packed-switch 0x0
        :pswitch_21
        :pswitch_6
    .end packed-switch
.end method
