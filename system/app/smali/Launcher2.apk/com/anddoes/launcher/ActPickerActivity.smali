.class public Lcom/anddoes/launcher/ActPickerActivity;
.super Landroid/app/ExpandableListActivity;
.source "SourceFile"


# instance fields
.field private a:Landroid/view/LayoutInflater;

.field private b:Landroid/content/pm/PackageManager;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 33
    invoke-direct {p0}, Landroid/app/ExpandableListActivity;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/anddoes/launcher/ActPickerActivity;)Landroid/content/pm/PackageManager;
    .registers 2
    .parameter

    .prologue
    .line 36
    iget-object v0, p0, Lcom/anddoes/launcher/ActPickerActivity;->b:Landroid/content/pm/PackageManager;

    return-object v0
.end method

.method static synthetic b(Lcom/anddoes/launcher/ActPickerActivity;)Landroid/view/LayoutInflater;
    .registers 2
    .parameter

    .prologue
    .line 35
    iget-object v0, p0, Lcom/anddoes/launcher/ActPickerActivity;->a:Landroid/view/LayoutInflater;

    return-object v0
.end method


# virtual methods
.method public onChildClick(Landroid/widget/ExpandableListView;Landroid/view/View;IIJ)Z
    .registers 12
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 82
    invoke-virtual {p0}, Lcom/anddoes/launcher/ActPickerActivity;->getExpandableListAdapter()Landroid/widget/ExpandableListAdapter;

    move-result-object v0

    invoke-interface {v0, p3, p4}, Landroid/widget/ExpandableListAdapter;->getChild(II)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ActivityInfo;

    .line 83
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 84
    new-instance v2, Landroid/content/ComponentName;

    iget-object v3, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v4, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 85
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 86
    const-string v3, "android.intent.action.MAIN"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 87
    const-string v3, "android.intent.category.LAUNCHER"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 88
    const-string v3, "android.intent.extra.shortcut.INTENT"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 91
    const-string v1, "android.intent.extra.shortcut.NAME"

    iget-object v3, p0, Lcom/anddoes/launcher/ActPickerActivity;->b:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, v3}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 93
    new-instance v1, Landroid/content/Intent$ShortcutIconResource;

    invoke-direct {v1}, Landroid/content/Intent$ShortcutIconResource;-><init>()V

    .line 94
    iget-object v3, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iput-object v3, v1, Landroid/content/Intent$ShortcutIconResource;->packageName:Ljava/lang/String;

    .line 96
    :try_start_45
    iget-object v3, p0, Lcom/anddoes/launcher/ActPickerActivity;->b:Landroid/content/pm/PackageManager;

    iget-object v4, v1, Landroid/content/Intent$ShortcutIconResource;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v3

    .line 97
    invoke-virtual {v0}, Landroid/content/pm/ActivityInfo;->getIconResource()I

    move-result v0

    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Landroid/content/Intent$ShortcutIconResource;->resourceName:Ljava/lang/String;

    .line 98
    const-string v0, "android.intent.extra.shortcut.ICON_RESOURCE"

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;
    :try_end_5c
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_45 .. :try_end_5c} :catch_67
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_45 .. :try_end_5c} :catch_65

    .line 102
    :goto_5c
    const/4 v0, -0x1

    invoke-virtual {p0, v0, v2}, Lcom/anddoes/launcher/ActPickerActivity;->setResult(ILandroid/content/Intent;)V

    .line 103
    invoke-virtual {p0}, Lcom/anddoes/launcher/ActPickerActivity;->finish()V

    .line 104
    const/4 v0, 0x1

    return v0

    .line 100
    :catch_65
    move-exception v0

    goto :goto_5c

    .line 99
    :catch_67
    move-exception v0

    goto :goto_5c
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 2
    .parameter

    .prologue
    .line 109
    invoke-super {p0, p1}, Landroid/app/ExpandableListActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 110
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 5
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 62
    invoke-super {p0, p1}, Landroid/app/ExpandableListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 63
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/anddoes/launcher/ActPickerActivity;->requestWindowFeature(I)Z

    .line 64
    const v0, 0x7f030001

    invoke-virtual {p0, v0}, Lcom/anddoes/launcher/ActPickerActivity;->setContentView(I)V

    .line 66
    invoke-virtual {p0}, Lcom/anddoes/launcher/ActPickerActivity;->getExpandableListView()Landroid/widget/ExpandableListView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ExpandableListView;->setTextFilterEnabled(Z)V

    .line 67
    invoke-virtual {p0}, Lcom/anddoes/launcher/ActPickerActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/anddoes/launcher/ActPickerActivity;->b:Landroid/content/pm/PackageManager;

    .line 68
    const-string v0, "layout_inflater"

    invoke-virtual {p0, v0}, Lcom/anddoes/launcher/ActPickerActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/anddoes/launcher/ActPickerActivity;->a:Landroid/view/LayoutInflater;

    .line 70
    new-instance v0, Lcom/anddoes/launcher/a;

    invoke-direct {v0, p0, v2}, Lcom/anddoes/launcher/a;-><init>(Lcom/anddoes/launcher/ActPickerActivity;B)V

    new-array v1, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/anddoes/launcher/a;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 71
    return-void
.end method

.method protected onStart()V
    .registers 3

    .prologue
    .line 75
    invoke-super {p0}, Landroid/app/ExpandableListActivity;->onStart()V

    .line 76
    invoke-static {p0}, Lcom/anddoes/launcher/i;->a(Landroid/content/Context;)Lcom/anddoes/launcher/i;

    move-result-object v0

    const-string v1, "/ActivityPicker"

    invoke-virtual {v0, v1}, Lcom/anddoes/launcher/i;->b(Ljava/lang/String;)V

    .line 77
    return-void
.end method
