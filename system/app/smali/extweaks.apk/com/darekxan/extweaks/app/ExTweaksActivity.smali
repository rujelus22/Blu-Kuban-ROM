.class public Lcom/darekxan/extweaks/app/ExTweaksActivity;
.super Lcom/actionbarsherlock/app/SherlockFragmentActivity;
.source "ExTweaksActivity.java"

# interfaces
.implements Lcom/darekxan/extweaks/i;


# static fields
.field public static a:Z


# instance fields
.field private b:Z

.field private c:Z

.field private d:Lcom/darekxan/extweaks/app/h;

.field private e:Lcom/darekxan/extweaks/app/i;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 36
    const/4 v0, 0x0

    sput-boolean v0, Lcom/darekxan/extweaks/app/ExTweaksActivity;->a:Z

    .line 25
    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 25
    invoke-direct {p0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;-><init>()V

    .line 27
    iput-boolean v0, p0, Lcom/darekxan/extweaks/app/ExTweaksActivity;->b:Z

    .line 37
    iput-boolean v0, p0, Lcom/darekxan/extweaks/app/ExTweaksActivity;->c:Z

    .line 25
    return-void
.end method

.method static synthetic a(Lcom/darekxan/extweaks/app/ExTweaksActivity;)Lcom/darekxan/extweaks/app/i;
    .registers 2
    .parameter

    .prologue
    .line 39
    iget-object v0, p0, Lcom/darekxan/extweaks/app/ExTweaksActivity;->e:Lcom/darekxan/extweaks/app/i;

    return-object v0
.end method


# virtual methods
.method public final a()Lcom/darekxan/extweaks/g;
    .registers 2

    .prologue
    .line 153
    sget-object v0, Lcom/darekxan/extweaks/app/n;->a:Lcom/darekxan/extweaks/app/n;

    return-object v0
.end method

.method public final a(Lcom/darekxan/extweaks/app/h;)V
    .registers 2
    .parameter

    .prologue
    .line 171
    iput-object p1, p0, Lcom/darekxan/extweaks/app/ExTweaksActivity;->d:Lcom/darekxan/extweaks/app/h;

    .line 173
    return-void
.end method

.method public final a(Lcom/darekxan/extweaks/e;)V
    .registers 2
    .parameter

    .prologue
    .line 176
    check-cast p1, Lcom/darekxan/extweaks/app/i;

    iput-object p1, p0, Lcom/darekxan/extweaks/app/ExTweaksActivity;->e:Lcom/darekxan/extweaks/app/i;

    .line 178
    return-void
.end method

.method protected final declared-synchronized b()V
    .registers 2

    .prologue
    .line 33
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_2
    iput-boolean v0, p0, Lcom/darekxan/extweaks/app/ExTweaksActivity;->b:Z
    :try_end_4
    .catchall {:try_start_2 .. :try_end_4} :catchall_6

    .line 34
    monitor-exit p0

    return-void

    .line 33
    :catchall_6
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 9
    .parameter

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 43
    invoke-super {p0, p1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 50
    const v0, 0x7f03001d

    invoke-virtual {p0, v0}, Lcom/darekxan/extweaks/app/ExTweaksActivity;->setContentView(I)V

    .line 51
    new-instance v0, Lcom/darekxan/extweaks/app/a;

    invoke-direct {v0, p0}, Lcom/darekxan/extweaks/app/a;-><init>(Landroid/app/Activity;)V

    new-array v1, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/darekxan/extweaks/app/a;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 52
    invoke-static {}, Lcom/darekxan/extweaks/a;->values()[Lcom/darekxan/extweaks/a;

    move-result-object v1

    array-length v4, v1

    move v0, v2

    :goto_1b
    if-lt v0, v4, :cond_4c

    .line 56
    invoke-virtual {p0}, Lcom/darekxan/extweaks/app/ExTweaksActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v4

    move v1, v2

    :goto_28
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string v5, "com.darekxan.extweaks.plus"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_40

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-lt v1, v0, :cond_63

    :cond_40
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ge v1, v0, :cond_49

    move v2, v3

    :cond_49
    sput-boolean v2, Lcom/darekxan/extweaks/app/ExTweaksActivity;->a:Z

    .line 57
    return-void

    .line 52
    :cond_4c
    aget-object v5, v1, v0

    .line 53
    invoke-virtual {v5}, Lcom/darekxan/extweaks/a;->b()Lcom/darekxan/extweaks/widgets/SettingsRoot;

    move-result-object v6

    if-eqz v6, :cond_60

    .line 54
    invoke-virtual {v5}, Lcom/darekxan/extweaks/a;->b()Lcom/darekxan/extweaks/widgets/SettingsRoot;

    move-result-object v5

    invoke-virtual {v5}, Lcom/darekxan/extweaks/widgets/SettingsRoot;->getResetAction()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_60

    .line 55
    iput-boolean v3, p0, Lcom/darekxan/extweaks/app/ExTweaksActivity;->c:Z

    .line 52
    :cond_60
    add-int/lit8 v0, v0, 0x1

    goto :goto_1b

    .line 56
    :cond_63
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_28
.end method

.method protected onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
    .registers 8
    .parameter
    .parameter

    .prologue
    const v4, 0x104000a

    const/high16 v3, 0x104

    const/4 v0, 0x0

    .line 61
    packed-switch p1, :pswitch_data_50

    .line 87
    :goto_9
    return-object v0

    .line 63
    :pswitch_a
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v2, "Reset settings"

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const-string v2, "This will restore ALL tweaks to kernel defaults. App will be reloaded"

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/darekxan/extweaks/app/c;

    invoke-direct {v2, p0}, Lcom/darekxan/extweaks/app/c;-><init>(Lcom/darekxan/extweaks/app/ExTweaksActivity;)V

    invoke-virtual {v1, v4, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 75
    invoke-virtual {v1, v3, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_9

    .line 77
    :pswitch_2d
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v2, "Plus key needed"

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const-string v2, "Profile switching is an advanced feature. It is not available in free version. You can enable this feature by obtaining plus key from market, for equivalent of 2CHF"

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/darekxan/extweaks/app/d;

    invoke-direct {v2, p0}, Lcom/darekxan/extweaks/app/d;-><init>(Lcom/darekxan/extweaks/app/ExTweaksActivity;)V

    invoke-virtual {v1, v4, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 85
    invoke-virtual {v1, v3, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_9

    .line 61
    :pswitch_data_50
    .packed-switch 0x0
        :pswitch_a
        :pswitch_2d
    .end packed-switch
.end method

.method public onCreateOptionsMenu(Lcom/actionbarsherlock/view/Menu;)Z
    .registers 8
    .parameter

    .prologue
    const v5, 0x7f050010

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 93
    iget-boolean v0, p0, Lcom/darekxan/extweaks/app/ExTweaksActivity;->b:Z

    if-eqz v0, :cond_51

    .line 94
    invoke-virtual {p0}, Lcom/darekxan/extweaks/app/ExTweaksActivity;->getSupportMenuInflater()Lcom/actionbarsherlock/view/MenuInflater;

    move-result-object v0

    const/high16 v1, 0x7f0d

    invoke-virtual {v0, v1, p1}, Lcom/actionbarsherlock/view/MenuInflater;->inflate(ILcom/actionbarsherlock/view/Menu;)V

    .line 95
    iget-boolean v0, p0, Lcom/darekxan/extweaks/app/ExTweaksActivity;->c:Z

    if-nez v0, :cond_1c

    .line 96
    const v0, 0x7f050041

    invoke-interface {p1, v0}, Lcom/actionbarsherlock/view/Menu;->removeItem(I)V

    .line 97
    :cond_1c
    iget-object v0, p0, Lcom/darekxan/extweaks/app/ExTweaksActivity;->d:Lcom/darekxan/extweaks/app/h;

    iget-object v0, v0, Lcom/darekxan/extweaks/app/h;->a:Lcom/darekxan/extweaks/app/ExTweaksActivity;

    sget-object v0, Lcom/darekxan/extweaks/app/n;->a:Lcom/darekxan/extweaks/app/n;

    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Lcom/darekxan/extweaks/a;->a:Lcom/darekxan/extweaks/a;

    invoke-virtual {v2}, Lcom/darekxan/extweaks/a;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "uci.sh select"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/darekxan/extweaks/g;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v3, v5, v3, v0}, Lcom/actionbarsherlock/view/Menu;->addSubMenu(IIILjava/lang/CharSequence;)Lcom/actionbarsherlock/view/SubMenu;

    move-result-object v1

    .line 98
    iget-object v0, p0, Lcom/darekxan/extweaks/app/ExTweaksActivity;->d:Lcom/darekxan/extweaks/app/h;

    iget-object v0, v0, Lcom/darekxan/extweaks/app/h;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_4b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_52

    .line 105
    :cond_51
    return v4

    .line 98
    :cond_52
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 99
    invoke-interface {v1, v0}, Lcom/actionbarsherlock/view/SubMenu;->add(Ljava/lang/CharSequence;)Lcom/actionbarsherlock/view/MenuItem;

    .line 100
    invoke-interface {p1, v5}, Lcom/actionbarsherlock/view/Menu;->findItem(I)Lcom/actionbarsherlock/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v4}, Lcom/actionbarsherlock/view/MenuItem;->setShowAsAction(I)V

    .line 102
    const v0, 0x7f050042

    invoke-interface {p1, v0}, Lcom/actionbarsherlock/view/Menu;->removeItem(I)V

    goto :goto_4b
.end method

.method public onMenuItemSelected(ILcom/actionbarsherlock/view/MenuItem;)Z
    .registers 6
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 126
    invoke-interface {p2}, Lcom/actionbarsherlock/view/MenuItem;->getItemId()I

    move-result v0

    .line 127
    sparse-switch v0, :sswitch_data_48

    .line 139
    sget-boolean v0, Lcom/darekxan/extweaks/app/ExTweaksActivity;->a:Z

    if-eqz v0, :cond_3e

    .line 140
    iget-object v0, p0, Lcom/darekxan/extweaks/app/ExTweaksActivity;->d:Lcom/darekxan/extweaks/app/h;

    invoke-interface {p2}, Lcom/actionbarsherlock/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/darekxan/extweaks/app/h;->a(Ljava/lang/CharSequence;)V

    .line 141
    iget-object v0, p0, Lcom/darekxan/extweaks/app/ExTweaksActivity;->e:Lcom/darekxan/extweaks/app/i;

    invoke-virtual {v0, v2, v2}, Lcom/darekxan/extweaks/app/i;->a(ZZ)V

    .line 147
    :goto_1a
    :sswitch_1a
    invoke-super {p0, p1, p2}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->onMenuItemSelected(ILcom/actionbarsherlock/view/MenuItem;)Z

    move-result v0

    return v0

    .line 129
    :sswitch_1f
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/darekxan/extweaks/app/ExTweaksActivity;->showDialog(ILandroid/os/Bundle;)Z

    goto :goto_1a

    .line 132
    :sswitch_25
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/darekxan/extweaks/app/ExTweaksProfileManagementActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 133
    const v1, 0x7f0a000c

    invoke-virtual {p0, v1}, Lcom/darekxan/extweaks/app/ExTweaksActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/darekxan/extweaks/app/ExTweaksActivity;->d:Lcom/darekxan/extweaks/app/h;

    iget-object v2, v2, Lcom/darekxan/extweaks/app/h;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 134
    invoke-virtual {p0, v0}, Lcom/darekxan/extweaks/app/ExTweaksActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_1a

    .line 143
    :cond_3e
    const-string v0, "Plus key required to perform this action"

    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_1a

    .line 127
    :sswitch_data_48
    .sparse-switch
        0x7f050010 -> :sswitch_1a
        0x7f050041 -> :sswitch_1f
        0x7f050042 -> :sswitch_25
    .end sparse-switch
.end method

.method public onOptionsItemSelected(Lcom/actionbarsherlock/view/MenuItem;)Z
    .registers 5
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v0, 0x1

    .line 110
    invoke-interface {p1}, Lcom/actionbarsherlock/view/MenuItem;->getItemId()I

    move-result v1

    sparse-switch v1, :sswitch_data_1c

    .line 121
    :goto_9
    invoke-super {p0, p1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->onOptionsItemSelected(Lcom/actionbarsherlock/view/MenuItem;)Z

    move-result v0

    :cond_d
    :goto_d
    return v0

    .line 112
    :sswitch_e
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v2}, Lcom/darekxan/extweaks/app/ExTweaksActivity;->showDialog(ILandroid/os/Bundle;)Z

    goto :goto_9

    .line 115
    :sswitch_13
    sget-boolean v1, Lcom/darekxan/extweaks/app/ExTweaksActivity;->a:Z

    if-nez v1, :cond_d

    .line 116
    invoke-virtual {p0, v0, v2}, Lcom/darekxan/extweaks/app/ExTweaksActivity;->showDialog(ILandroid/os/Bundle;)Z

    goto :goto_d

    .line 110
    nop

    :sswitch_data_1c
    .sparse-switch
        0x7f050010 -> :sswitch_13
        0x7f050041 -> :sswitch_e
    .end sparse-switch
.end method

.method protected onPause()V
    .registers 2

    .prologue
    .line 158
    sget-object v0, Lcom/darekxan/extweaks/app/n;->a:Lcom/darekxan/extweaks/app/n;

    invoke-interface {v0}, Lcom/darekxan/extweaks/g;->a()Lcom/darekxan/extweaks/h;

    move-result-object v0

    if-eqz v0, :cond_f

    .line 159
    sget-object v0, Lcom/darekxan/extweaks/app/n;->a:Lcom/darekxan/extweaks/app/n;

    check-cast v0, Lcom/darekxan/extweaks/app/n;

    invoke-virtual {v0}, Lcom/darekxan/extweaks/app/n;->b()V

    .line 160
    :cond_f
    invoke-super {p0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->onPause()V

    .line 161
    return-void
.end method

.method protected onResume()V
    .registers 1

    .prologue
    .line 167
    invoke-super {p0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->onResume()V

    .line 168
    return-void
.end method
