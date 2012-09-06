.class public Lcom/anddoes/launcher/ThemeListActivity;
.super Landroid/app/Activity;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field private a:Landroid/widget/ListView;

.field private b:Z

.field private c:Lcom/anddoes/launcher/ku;

.field private d:Landroid/view/LayoutInflater;

.field private e:Lcom/anddoes/launcher/preference/h;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 36
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/anddoes/launcher/ThemeListActivity;)Z
    .registers 2
    .parameter

    .prologue
    .line 41
    iget-boolean v0, p0, Lcom/anddoes/launcher/ThemeListActivity;->b:Z

    return v0
.end method

.method static synthetic b(Lcom/anddoes/launcher/ThemeListActivity;)Landroid/view/LayoutInflater;
    .registers 2
    .parameter

    .prologue
    .line 43
    iget-object v0, p0, Lcom/anddoes/launcher/ThemeListActivity;->d:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method static synthetic c(Lcom/anddoes/launcher/ThemeListActivity;)Ljava/lang/String;
    .registers 2
    .parameter

    .prologue
    .line 45
    iget-object v0, p0, Lcom/anddoes/launcher/ThemeListActivity;->f:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic d(Lcom/anddoes/launcher/ThemeListActivity;)Ljava/lang/String;
    .registers 2
    .parameter

    .prologue
    .line 47
    iget-object v0, p0, Lcom/anddoes/launcher/ThemeListActivity;->h:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic e(Lcom/anddoes/launcher/ThemeListActivity;)Ljava/lang/String;
    .registers 2
    .parameter

    .prologue
    .line 46
    iget-object v0, p0, Lcom/anddoes/launcher/ThemeListActivity;->g:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 4
    .parameter

    .prologue
    .line 51
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 52
    const v0, 0x7f03002c

    invoke-virtual {p0, v0}, Lcom/anddoes/launcher/ThemeListActivity;->setContentView(I)V

    .line 54
    new-instance v0, Lcom/anddoes/launcher/preference/h;

    invoke-direct {v0, p0}, Lcom/anddoes/launcher/preference/h;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/anddoes/launcher/ThemeListActivity;->e:Lcom/anddoes/launcher/preference/h;

    .line 55
    iget-object v0, p0, Lcom/anddoes/launcher/ThemeListActivity;->e:Lcom/anddoes/launcher/preference/h;

    invoke-virtual {v0}, Lcom/anddoes/launcher/preference/h;->aA()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/anddoes/launcher/ThemeListActivity;->f:Ljava/lang/String;

    .line 56
    iget-object v0, p0, Lcom/anddoes/launcher/ThemeListActivity;->e:Lcom/anddoes/launcher/preference/h;

    invoke-virtual {v0}, Lcom/anddoes/launcher/preference/h;->aC()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/anddoes/launcher/ThemeListActivity;->g:Ljava/lang/String;

    .line 57
    iget-object v0, p0, Lcom/anddoes/launcher/ThemeListActivity;->e:Lcom/anddoes/launcher/preference/h;

    invoke-virtual {v0}, Lcom/anddoes/launcher/preference/h;->aB()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/anddoes/launcher/ThemeListActivity;->h:Ljava/lang/String;

    .line 59
    const-string v0, "layout_inflater"

    invoke-virtual {p0, v0}, Lcom/anddoes/launcher/ThemeListActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/anddoes/launcher/ThemeListActivity;->d:Landroid/view/LayoutInflater;

    .line 60
    const v0, 0x7f08005e

    invoke-virtual {p0, v0}, Lcom/anddoes/launcher/ThemeListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/anddoes/launcher/ThemeListActivity;->a:Landroid/widget/ListView;

    .line 61
    invoke-static {p0}, Lcom/anddoes/launcher/a/e;->a(Landroid/content/Context;)Lcom/anddoes/launcher/a/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anddoes/launcher/a/e;->b()Z

    move-result v0

    iput-boolean v0, p0, Lcom/anddoes/launcher/ThemeListActivity;->b:Z

    .line 62
    new-instance v0, Lcom/anddoes/launcher/ku;

    invoke-direct {v0, p0}, Lcom/anddoes/launcher/ku;-><init>(Lcom/anddoes/launcher/ThemeListActivity;)V

    iput-object v0, p0, Lcom/anddoes/launcher/ThemeListActivity;->c:Lcom/anddoes/launcher/ku;

    .line 63
    iget-object v0, p0, Lcom/anddoes/launcher/ThemeListActivity;->a:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 64
    iget-object v0, p0, Lcom/anddoes/launcher/ThemeListActivity;->a:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/anddoes/launcher/ThemeListActivity;->c:Lcom/anddoes/launcher/ku;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 65
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 5
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 75
    const/4 v0, 0x1

    const v1, 0x7f060103

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 77
    const/4 v1, 0x5

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 78
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 10
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 100
    iget-object v0, p0, Lcom/anddoes/launcher/ThemeListActivity;->c:Lcom/anddoes/launcher/ku;

    iget-object v0, v0, Lcom/anddoes/launcher/ku;->a:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/anddoes/launcher/c/i;

    .line 101
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 102
    const-class v2, Lcom/anddoes/launcher/ThemeDetailsActivity;

    invoke-virtual {v1, p0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 103
    const-string v2, "com.anddoes.launcher.THEME_PACKAGE_NAME"

    invoke-virtual {v0}, Lcom/anddoes/launcher/c/i;->n()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 104
    const-string v2, "com.anddoes.launcher.THEME_TYPE"

    invoke-virtual {v0}, Lcom/anddoes/launcher/c/i;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 105
    const-string v2, "com.anddoes.launcher.THEME_NAME"

    invoke-virtual {v0}, Lcom/anddoes/launcher/c/i;->o()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 106
    invoke-virtual {p0, v1}, Lcom/anddoes/launcher/ThemeListActivity;->startActivity(Landroid/content/Intent;)V

    .line 107
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 7
    .parameter

    .prologue
    .line 83
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_46

    .line 95
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_b
    return v0

    .line 86
    :pswitch_c
    :try_start_c
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    .line 87
    const-string v2, "apex theme"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "http://play.google.com/store/search?c=apps&q="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "google"

    const-string v4, "amazon"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 86
    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 88
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 89
    invoke-virtual {p0, v0}, Lcom/anddoes/launcher/ThemeListActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_37
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_37} :catch_39

    .line 93
    :goto_37
    const/4 v0, 0x1

    goto :goto_b

    .line 91
    :catch_39
    move-exception v0

    const v0, 0x7f060145

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_37

    .line 83
    :pswitch_data_46
    .packed-switch 0x1
        :pswitch_c
    .end packed-switch
.end method

.method protected onStart()V
    .registers 3

    .prologue
    .line 69
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 70
    invoke-static {p0}, Lcom/anddoes/launcher/i;->a(Landroid/content/Context;)Lcom/anddoes/launcher/i;

    move-result-object v0

    const-string v1, "/Settings/ThemeList"

    invoke-virtual {v0, v1}, Lcom/anddoes/launcher/i;->b(Ljava/lang/String;)V

    .line 71
    return-void
.end method
