.class public Lcom/anddoes/launcher/TabConfigActivity;
.super Landroid/app/Activity;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field private a:Lcom/anddoes/launcher/preference/c;

.field private b:Lcom/anddoes/launcher/ui/DragableListView;

.field private c:Landroid/view/LayoutInflater;

.field private d:Lcom/anddoes/launcher/kq;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 27
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/anddoes/launcher/TabConfigActivity;)Lcom/anddoes/launcher/preference/c;
    .registers 2
    .parameter

    .prologue
    .line 34
    iget-object v0, p0, Lcom/anddoes/launcher/TabConfigActivity;->a:Lcom/anddoes/launcher/preference/c;

    return-object v0
.end method

.method private a()Ljava/lang/String;
    .registers 7

    .prologue
    .line 146
    const-string v1, ""

    .line 147
    iget-object v0, p0, Lcom/anddoes/launcher/TabConfigActivity;->a:Lcom/anddoes/launcher/preference/c;

    invoke-virtual {v0}, Lcom/anddoes/launcher/preference/c;->a()Ljava/lang/String;

    move-result-object v0

    .line 148
    const-string v2, ";"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 149
    array-length v3, v2

    const/4 v0, 0x0

    :goto_10
    if-lt v0, v3, :cond_13

    .line 152
    return-object v1

    .line 149
    :cond_13
    aget-object v4, v2, v0

    .line 150
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v5, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ";"

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v5, p0, Lcom/anddoes/launcher/TabConfigActivity;->a:Lcom/anddoes/launcher/preference/c;

    invoke-virtual {v5, v4}, Lcom/anddoes/launcher/preference/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 149
    add-int/lit8 v0, v0, 0x1

    goto :goto_10
.end method

.method static synthetic a(Lcom/anddoes/launcher/TabConfigActivity;I)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 160
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x1080027

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f060045

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f060046

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f06000e

    new-instance v2, Lcom/anddoes/launcher/ko;

    invoke-direct {v2, p0, p1}, Lcom/anddoes/launcher/ko;-><init>(Lcom/anddoes/launcher/TabConfigActivity;I)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f06000f

    new-instance v2, Lcom/anddoes/launcher/kp;

    invoke-direct {v2, p0}, Lcom/anddoes/launcher/kp;-><init>(Lcom/anddoes/launcher/TabConfigActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method

.method private a(Z)V
    .registers 5
    .parameter

    .prologue
    .line 101
    new-instance v1, Landroid/content/Intent;

    const-class v0, Lcom/anddoes/launcher/GroupConfigActivity;

    invoke-direct {v1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 102
    sget-object v2, Lcom/anddoes/launcher/GroupConfigActivity;->a:Ljava/lang/String;

    if-eqz p1, :cond_28

    const v0, 0x7f060042

    :goto_e
    invoke-virtual {p0, v0}, Lcom/anddoes/launcher/TabConfigActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 103
    sget-object v0, Lcom/anddoes/launcher/GroupConfigActivity;->g:Ljava/lang/String;

    invoke-direct {p0}, Lcom/anddoes/launcher/TabConfigActivity;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 104
    sget-object v0, Lcom/anddoes/launcher/GroupConfigActivity;->h:Ljava/lang/String;

    invoke-virtual {v1, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 105
    const/4 v0, 0x1

    invoke-virtual {p0, v1, v0}, Lcom/anddoes/launcher/TabConfigActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 106
    return-void

    .line 102
    :cond_28
    const v0, 0x7f060043

    goto :goto_e
.end method

.method static synthetic b(Lcom/anddoes/launcher/TabConfigActivity;)Landroid/view/LayoutInflater;
    .registers 2
    .parameter

    .prologue
    .line 36
    iget-object v0, p0, Lcom/anddoes/launcher/TabConfigActivity;->c:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method private b()V
    .registers 3

    .prologue
    .line 156
    invoke-virtual {p0}, Lcom/anddoes/launcher/TabConfigActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/anddoes/launcher/LauncherApplication;

    .line 157
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/anddoes/launcher/LauncherApplication;->f:Z

    .line 158
    return-void
.end method

.method static synthetic c(Lcom/anddoes/launcher/TabConfigActivity;)V
    .registers 1
    .parameter

    .prologue
    .line 155
    invoke-direct {p0}, Lcom/anddoes/launcher/TabConfigActivity;->b()V

    return-void
.end method

.method static synthetic d(Lcom/anddoes/launcher/TabConfigActivity;)Lcom/anddoes/launcher/kq;
    .registers 2
    .parameter

    .prologue
    .line 37
    iget-object v0, p0, Lcom/anddoes/launcher/TabConfigActivity;->d:Lcom/anddoes/launcher/kq;

    return-object v0
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 11
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x1

    .line 91
    const/4 v0, -0x1

    if-ne p2, v0, :cond_6a

    .line 92
    if-ne p1, v4, :cond_6b

    .line 93
    sget-object v0, Lcom/anddoes/launcher/GroupConfigActivity;->e:Ljava/lang/String;

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/anddoes/launcher/GroupConfigActivity;->c:Ljava/lang/String;

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/anddoes/launcher/GroupConfigActivity;->h:Ljava/lang/String;

    invoke-virtual {p3, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/anddoes/launcher/TabConfigActivity;->a:Lcom/anddoes/launcher/preference/c;

    invoke-virtual {v5}, Lcom/anddoes/launcher/preference/c;->a()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, ";"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/anddoes/launcher/TabConfigActivity;->a:Lcom/anddoes/launcher/preference/c;

    const-string v6, "all_groups"

    invoke-virtual {v5, v6, v4}, Lcom/anddoes/launcher/preference/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/anddoes/launcher/TabConfigActivity;->a:Lcom/anddoes/launcher/preference/c;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "group_isapp_"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v3}, Lcom/anddoes/launcher/preference/c;->b(Ljava/lang/String;Z)V

    iget-object v3, p0, Lcom/anddoes/launcher/TabConfigActivity;->a:Lcom/anddoes/launcher/preference/c;

    invoke-virtual {v3, v2, v0}, Lcom/anddoes/launcher/preference/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/anddoes/launcher/TabConfigActivity;->a:Lcom/anddoes/launcher/preference/c;

    invoke-virtual {v0, v2, v1}, Lcom/anddoes/launcher/preference/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/anddoes/launcher/TabConfigActivity;->d:Lcom/anddoes/launcher/kq;

    invoke-virtual {v0, v2}, Lcom/anddoes/launcher/kq;->a(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/anddoes/launcher/TabConfigActivity;->b()V

    .line 98
    :cond_6a
    :goto_6a
    return-void

    .line 94
    :cond_6b
    const/4 v0, 0x2

    if-ne p1, v0, :cond_6a

    .line 95
    sget-object v0, Lcom/anddoes/launcher/GroupConfigActivity;->e:Ljava/lang/String;

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/anddoes/launcher/GroupConfigActivity;->c:Ljava/lang/String;

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/anddoes/launcher/MultiPickerActivity;->d:Ljava/lang/String;

    invoke-virtual {p3, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/anddoes/launcher/TabConfigActivity;->a:Lcom/anddoes/launcher/preference/c;

    invoke-virtual {v3, v2, v0}, Lcom/anddoes/launcher/preference/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/anddoes/launcher/TabConfigActivity;->a:Lcom/anddoes/launcher/preference/c;

    invoke-virtual {v3, v2, v1}, Lcom/anddoes/launcher/preference/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/anddoes/launcher/TabConfigActivity;->d:Lcom/anddoes/launcher/kq;

    invoke-virtual {v1, v2, v0}, Lcom/anddoes/launcher/kq;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/anddoes/launcher/TabConfigActivity;->b()V

    goto :goto_6a
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 4
    .parameter

    .prologue
    .line 41
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 42
    const v0, 0x7f030028

    invoke-virtual {p0, v0}, Lcom/anddoes/launcher/TabConfigActivity;->setContentView(I)V

    .line 43
    new-instance v0, Lcom/anddoes/launcher/preference/c;

    invoke-direct {v0, p0}, Lcom/anddoes/launcher/preference/c;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/anddoes/launcher/TabConfigActivity;->a:Lcom/anddoes/launcher/preference/c;

    .line 44
    const-string v0, "layout_inflater"

    invoke-virtual {p0, v0}, Lcom/anddoes/launcher/TabConfigActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/anddoes/launcher/TabConfigActivity;->c:Landroid/view/LayoutInflater;

    .line 45
    const v0, 0x7f08005e

    invoke-virtual {p0, v0}, Lcom/anddoes/launcher/TabConfigActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/anddoes/launcher/ui/DragableListView;

    iput-object v0, p0, Lcom/anddoes/launcher/TabConfigActivity;->b:Lcom/anddoes/launcher/ui/DragableListView;

    .line 46
    new-instance v0, Lcom/anddoes/launcher/kq;

    invoke-direct {v0, p0}, Lcom/anddoes/launcher/kq;-><init>(Lcom/anddoes/launcher/TabConfigActivity;)V

    iput-object v0, p0, Lcom/anddoes/launcher/TabConfigActivity;->d:Lcom/anddoes/launcher/kq;

    .line 47
    iget-object v0, p0, Lcom/anddoes/launcher/TabConfigActivity;->b:Lcom/anddoes/launcher/ui/DragableListView;

    invoke-virtual {v0, p0}, Lcom/anddoes/launcher/ui/DragableListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 48
    iget-object v0, p0, Lcom/anddoes/launcher/TabConfigActivity;->b:Lcom/anddoes/launcher/ui/DragableListView;

    iget-object v1, p0, Lcom/anddoes/launcher/TabConfigActivity;->d:Lcom/anddoes/launcher/kq;

    invoke-virtual {v0, v1}, Lcom/anddoes/launcher/ui/DragableListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 49
    iget-object v0, p0, Lcom/anddoes/launcher/TabConfigActivity;->b:Lcom/anddoes/launcher/ui/DragableListView;

    iget-object v1, p0, Lcom/anddoes/launcher/TabConfigActivity;->d:Lcom/anddoes/launcher/kq;

    invoke-virtual {v0, v1}, Lcom/anddoes/launcher/ui/DragableListView;->a(Lcom/anddoes/launcher/ui/d;)V

    .line 50
    iget-object v0, p0, Lcom/anddoes/launcher/TabConfigActivity;->b:Lcom/anddoes/launcher/ui/DragableListView;

    iget-object v1, p0, Lcom/anddoes/launcher/TabConfigActivity;->d:Lcom/anddoes/launcher/kq;

    invoke-virtual {v0, v1}, Lcom/anddoes/launcher/ui/DragableListView;->a(Lcom/anddoes/launcher/ui/e;)V

    .line 51
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 6
    .parameter

    .prologue
    const/4 v3, 0x5

    const/4 v2, 0x0

    .line 67
    const/4 v0, 0x1

    const v1, 0x7f060042

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 68
    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 69
    const/4 v0, 0x2

    const v1, 0x7f060043

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 70
    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 72
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 11
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 61
    iget-object v0, p0, Lcom/anddoes/launcher/TabConfigActivity;->d:Lcom/anddoes/launcher/kq;

    iget-object v0, v0, Lcom/anddoes/launcher/kq;->a:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/anddoes/launcher/ca;

    .line 62
    iget-object v1, v0, Lcom/anddoes/launcher/ca;->a:Ljava/lang/String;

    iget-boolean v0, v0, Lcom/anddoes/launcher/ca;->c:Z

    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/anddoes/launcher/GroupConfigActivity;

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    sget-object v3, Lcom/anddoes/launcher/GroupConfigActivity;->a:Ljava/lang/String;

    const v4, 0x7f060044

    invoke-virtual {p0, v4}, Lcom/anddoes/launcher/TabConfigActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    sget-object v3, Lcom/anddoes/launcher/GroupConfigActivity;->g:Ljava/lang/String;

    invoke-direct {p0}, Lcom/anddoes/launcher/TabConfigActivity;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    sget-object v3, Lcom/anddoes/launcher/GroupConfigActivity;->d:Ljava/lang/String;

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    sget-object v3, Lcom/anddoes/launcher/GroupConfigActivity;->b:Ljava/lang/String;

    iget-object v4, p0, Lcom/anddoes/launcher/TabConfigActivity;->a:Lcom/anddoes/launcher/preference/c;

    invoke-virtual {v4, v1}, Lcom/anddoes/launcher/preference/c;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    sget-object v3, Lcom/anddoes/launcher/GroupConfigActivity;->f:Ljava/lang/String;

    iget-object v4, p0, Lcom/anddoes/launcher/TabConfigActivity;->a:Lcom/anddoes/launcher/preference/c;

    invoke-virtual {v4, v1}, Lcom/anddoes/launcher/preference/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    sget-object v1, Lcom/anddoes/launcher/GroupConfigActivity;->h:Ljava/lang/String;

    invoke-virtual {v2, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/4 v0, 0x2

    invoke-virtual {p0, v2, v0}, Lcom/anddoes/launcher/TabConfigActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 63
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 4
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 77
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_16

    .line 85
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_c
    return v0

    .line 79
    :pswitch_d
    invoke-direct {p0, v0}, Lcom/anddoes/launcher/TabConfigActivity;->a(Z)V

    goto :goto_c

    .line 82
    :pswitch_11
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/anddoes/launcher/TabConfigActivity;->a(Z)V

    goto :goto_c

    .line 77
    :pswitch_data_16
    .packed-switch 0x1
        :pswitch_d
        :pswitch_11
    .end packed-switch
.end method

.method protected onStart()V
    .registers 3

    .prologue
    .line 55
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 56
    invoke-static {p0}, Lcom/anddoes/launcher/i;->a(Landroid/content/Context;)Lcom/anddoes/launcher/i;

    move-result-object v0

    const-string v1, "/TabConfig"

    invoke-virtual {v0, v1}, Lcom/anddoes/launcher/i;->b(Ljava/lang/String;)V

    .line 57
    return-void
.end method
