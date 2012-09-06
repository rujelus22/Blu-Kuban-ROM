.class public Lcom/anddoes/launcher/IconPickerActivity;
.super Landroid/app/Activity;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Lcom/anddoes/launcher/c/i;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 30
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/anddoes/launcher/IconPickerActivity;)Lcom/anddoes/launcher/c/i;
    .registers 2
    .parameter

    .prologue
    .line 35
    iget-object v0, p0, Lcom/anddoes/launcher/IconPickerActivity;->d:Lcom/anddoes/launcher/c/i;

    return-object v0
.end method

.method static synthetic b(Lcom/anddoes/launcher/IconPickerActivity;)Ljava/lang/String;
    .registers 2
    .parameter

    .prologue
    .line 34
    iget-object v0, p0, Lcom/anddoes/launcher/IconPickerActivity;->c:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 6
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 38
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 39
    const v0, 0x7f030018

    invoke-virtual {p0, v0}, Lcom/anddoes/launcher/IconPickerActivity;->setContentView(I)V

    .line 40
    invoke-virtual {p0, v3}, Lcom/anddoes/launcher/IconPickerActivity;->setResult(I)V

    .line 42
    invoke-virtual {p0}, Lcom/anddoes/launcher/IconPickerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 43
    if-nez v0, :cond_16

    .line 44
    invoke-virtual {p0}, Lcom/anddoes/launcher/IconPickerActivity;->finish()V

    .line 47
    :cond_16
    const-string v1, "com.anddoes.launcher.THEME_PACKAGE_NAME"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/anddoes/launcher/IconPickerActivity;->a:Ljava/lang/String;

    .line 48
    invoke-virtual {p0}, Lcom/anddoes/launcher/IconPickerActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iget-object v2, p0, Lcom/anddoes/launcher/IconPickerActivity;->a:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/anddoes/launcher/c/l;->a(Landroid/content/pm/PackageManager;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_37

    .line 49
    const v1, 0x7f060252

    invoke-static {p0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 50
    invoke-virtual {p0}, Lcom/anddoes/launcher/IconPickerActivity;->finish()V

    .line 53
    :cond_37
    const-string v1, "com.anddoes.launcher.THEME_NAME"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/anddoes/launcher/IconPickerActivity;->b:Ljava/lang/String;

    .line 54
    const-string v1, "com.anddoes.launcher.THEME_TYPE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/anddoes/launcher/IconPickerActivity;->c:Ljava/lang/String;

    .line 55
    const-string v0, "apex_theme"

    iget-object v1, p0, Lcom/anddoes/launcher/IconPickerActivity;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_aa

    .line 56
    new-instance v0, Lcom/anddoes/launcher/c/b;

    iget-object v1, p0, Lcom/anddoes/launcher/IconPickerActivity;->a:Ljava/lang/String;

    invoke-direct {v0, p0, v1}, Lcom/anddoes/launcher/c/b;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/anddoes/launcher/IconPickerActivity;->d:Lcom/anddoes/launcher/c/i;

    .line 67
    :goto_5a
    iget-object v0, p0, Lcom/anddoes/launcher/IconPickerActivity;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_67

    .line 68
    iget-object v0, p0, Lcom/anddoes/launcher/IconPickerActivity;->b:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/anddoes/launcher/IconPickerActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 70
    :cond_67
    iget-object v0, p0, Lcom/anddoes/launcher/IconPickerActivity;->d:Lcom/anddoes/launcher/c/i;

    invoke-virtual {v0}, Lcom/anddoes/launcher/c/i;->r()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 71
    if-eqz v0, :cond_76

    .line 72
    invoke-virtual {p0}, Lcom/anddoes/launcher/IconPickerActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/ActionBar;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 75
    :cond_76
    invoke-virtual {p0}, Lcom/anddoes/launcher/IconPickerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 76
    const/high16 v1, 0x105

    .line 75
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 77
    const v0, 0x7f080031

    invoke-virtual {p0, v0}, Lcom/anddoes/launcher/IconPickerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridView;

    .line 78
    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Landroid/widget/GridView;->setNumColumns(I)V

    .line 79
    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setColumnWidth(I)V

    .line 80
    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroid/widget/GridView;->setStretchMode(I)V

    .line 81
    div-int/lit8 v2, v1, 0x3

    invoke-virtual {v0, v2}, Landroid/widget/GridView;->setHorizontalSpacing(I)V

    .line 82
    div-int/lit8 v2, v1, 0x3

    invoke-virtual {v0, v2}, Landroid/widget/GridView;->setVerticalSpacing(I)V

    .line 83
    invoke-virtual {v0, p0}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 84
    new-instance v2, Lcom/anddoes/launcher/dw;

    invoke-direct {v2, p0, p0, v1}, Lcom/anddoes/launcher/dw;-><init>(Lcom/anddoes/launcher/IconPickerActivity;Landroid/content/Context;I)V

    invoke-virtual {v0, v2}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 85
    return-void

    .line 57
    :cond_aa
    const-string v0, "adw_theme"

    iget-object v1, p0, Lcom/anddoes/launcher/IconPickerActivity;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_be

    .line 58
    new-instance v0, Lcom/anddoes/launcher/c/a;

    iget-object v1, p0, Lcom/anddoes/launcher/IconPickerActivity;->a:Ljava/lang/String;

    invoke-direct {v0, p0, v1}, Lcom/anddoes/launcher/c/a;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/anddoes/launcher/IconPickerActivity;->d:Lcom/anddoes/launcher/c/i;

    goto :goto_5a

    .line 59
    :cond_be
    const-string v0, "lp_theme"

    iget-object v1, p0, Lcom/anddoes/launcher/IconPickerActivity;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d2

    .line 60
    new-instance v0, Lcom/anddoes/launcher/c/f;

    iget-object v1, p0, Lcom/anddoes/launcher/IconPickerActivity;->a:Ljava/lang/String;

    invoke-direct {v0, p0, v1}, Lcom/anddoes/launcher/c/f;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/anddoes/launcher/IconPickerActivity;->d:Lcom/anddoes/launcher/c/i;

    goto :goto_5a

    .line 61
    :cond_d2
    const-string v0, "go_theme"

    iget-object v1, p0, Lcom/anddoes/launcher/IconPickerActivity;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e7

    .line 62
    new-instance v0, Lcom/anddoes/launcher/c/c;

    iget-object v1, p0, Lcom/anddoes/launcher/IconPickerActivity;->a:Ljava/lang/String;

    invoke-direct {v0, p0, v1}, Lcom/anddoes/launcher/c/c;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/anddoes/launcher/IconPickerActivity;->d:Lcom/anddoes/launcher/c/i;

    goto/16 :goto_5a

    .line 64
    :cond_e7
    new-instance v0, Lcom/anddoes/launcher/c/b;

    iget-object v1, p0, Lcom/anddoes/launcher/IconPickerActivity;->a:Ljava/lang/String;

    invoke-direct {v0, p0, v1}, Lcom/anddoes/launcher/c/b;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/anddoes/launcher/IconPickerActivity;->d:Lcom/anddoes/launcher/c/i;

    .line 65
    iget-object v0, p0, Lcom/anddoes/launcher/IconPickerActivity;->d:Lcom/anddoes/launcher/c/i;

    invoke-virtual {v0}, Lcom/anddoes/launcher/c/i;->o()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/anddoes/launcher/IconPickerActivity;->b:Ljava/lang/String;

    goto/16 :goto_5a
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 9
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 96
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 97
    const/4 v1, 0x0

    .line 99
    :try_start_6
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    check-cast v0, Landroid/widget/Adapter;

    invoke-interface {v0, p3}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_12} :catch_21

    .line 102
    :goto_12
    if-eqz v0, :cond_24

    .line 103
    const-string v1, "icon"

    invoke-virtual {v2, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 104
    const/4 v0, -0x1

    invoke-virtual {p0, v0, v2}, Lcom/anddoes/launcher/IconPickerActivity;->setResult(ILandroid/content/Intent;)V

    .line 108
    :goto_1d
    invoke-virtual {p0}, Lcom/anddoes/launcher/IconPickerActivity;->finish()V

    .line 109
    return-void

    :catch_21
    move-exception v0

    move-object v0, v1

    goto :goto_12

    .line 106
    :cond_24
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v2}, Lcom/anddoes/launcher/IconPickerActivity;->setResult(ILandroid/content/Intent;)V

    goto :goto_1d
.end method

.method public onStart()V
    .registers 3

    .prologue
    .line 90
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 91
    invoke-static {p0}, Lcom/anddoes/launcher/i;->a(Landroid/content/Context;)Lcom/anddoes/launcher/i;

    move-result-object v0

    const-string v1, "/IconPicker"

    invoke-virtual {v0, v1}, Lcom/anddoes/launcher/i;->b(Ljava/lang/String;)V

    .line 92
    return-void
.end method
