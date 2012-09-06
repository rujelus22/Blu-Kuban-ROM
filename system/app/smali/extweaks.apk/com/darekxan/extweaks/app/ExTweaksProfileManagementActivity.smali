.class public Lcom/darekxan/extweaks/app/ExTweaksProfileManagementActivity;
.super Lcom/actionbarsherlock/app/SherlockFragmentActivity;
.source "ExTweaksProfileManagementActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/actionbarsherlock/app/SherlockFragmentActivity;",
        "Landroid/widget/AdapterView$OnItemClickListener;"
    }
.end annotation


# instance fields
.field a:Landroid/widget/ListView;

.field private b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/lang/Object;

.field private d:Lcom/actionbarsherlock/view/ActionMode$Callback;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;-><init>()V

    .line 47
    new-instance v0, Lcom/darekxan/extweaks/app/e;

    invoke-direct {v0, p0}, Lcom/darekxan/extweaks/app/e;-><init>(Lcom/darekxan/extweaks/app/ExTweaksProfileManagementActivity;)V

    iput-object v0, p0, Lcom/darekxan/extweaks/app/ExTweaksProfileManagementActivity;->d:Lcom/actionbarsherlock/view/ActionMode$Callback;

    .line 22
    return-void
.end method

.method static synthetic a(Lcom/darekxan/extweaks/app/ExTweaksProfileManagementActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 24
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/darekxan/extweaks/app/ExTweaksProfileManagementActivity;->c:Ljava/lang/Object;

    return-void
.end method

.method static synthetic b(Lcom/darekxan/extweaks/app/ExTweaksProfileManagementActivity;)Ljava/util/ArrayList;
    .registers 2
    .parameter

    .prologue
    .line 23
    iget-object v0, p0, Lcom/darekxan/extweaks/app/ExTweaksProfileManagementActivity;->b:Ljava/util/ArrayList;

    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 6
    .parameter

    .prologue
    .line 29
    const v0, 0x7f03001f

    invoke-virtual {p0, v0}, Lcom/darekxan/extweaks/app/ExTweaksProfileManagementActivity;->setContentView(I)V

    .line 30
    invoke-virtual {p0}, Lcom/darekxan/extweaks/app/ExTweaksProfileManagementActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 31
    invoke-virtual {p0}, Lcom/darekxan/extweaks/app/ExTweaksProfileManagementActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_56

    invoke-virtual {p0}, Lcom/darekxan/extweaks/app/ExTweaksProfileManagementActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_56

    invoke-virtual {p0}, Lcom/darekxan/extweaks/app/ExTweaksProfileManagementActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 32
    :goto_26
    const v1, 0x7f0a000c

    invoke-virtual {p0, v1}, Lcom/darekxan/extweaks/app/ExTweaksProfileManagementActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/darekxan/extweaks/app/ExTweaksProfileManagementActivity;->b:Ljava/util/ArrayList;

    .line 33
    const v0, 0x102000a

    invoke-virtual {p0, v0}, Lcom/darekxan/extweaks/app/ExTweaksProfileManagementActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/darekxan/extweaks/app/ExTweaksProfileManagementActivity;->a:Landroid/widget/ListView;

    .line 34
    iget-object v0, p0, Lcom/darekxan/extweaks/app/ExTweaksProfileManagementActivity;->a:Landroid/widget/ListView;

    new-instance v1, Landroid/widget/ArrayAdapter;

    const v2, 0x1090003

    iget-object v3, p0, Lcom/darekxan/extweaks/app/ExTweaksProfileManagementActivity;->b:Ljava/util/ArrayList;

    invoke-direct {v1, p0, v2, v3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 35
    iget-object v0, p0, Lcom/darekxan/extweaks/app/ExTweaksProfileManagementActivity;->a:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 36
    invoke-super {p0, p1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 37
    return-void

    .line 31
    :cond_56
    const/4 v0, 0x0

    goto :goto_26
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 7
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 40
    iget-object v0, p0, Lcom/darekxan/extweaks/app/ExTweaksProfileManagementActivity;->c:Ljava/lang/Object;

    if-nez v0, :cond_c

    .line 41
    iget-object v0, p0, Lcom/darekxan/extweaks/app/ExTweaksProfileManagementActivity;->d:Lcom/actionbarsherlock/view/ActionMode$Callback;

    invoke-virtual {p0, v0}, Lcom/darekxan/extweaks/app/ExTweaksProfileManagementActivity;->startActionMode(Lcom/actionbarsherlock/view/ActionMode$Callback;)Lcom/actionbarsherlock/view/ActionMode;

    move-result-object v0

    iput-object v0, p0, Lcom/darekxan/extweaks/app/ExTweaksProfileManagementActivity;->c:Ljava/lang/Object;

    .line 45
    :cond_c
    return-void
.end method

.method public onMenuItemSelected(ILcom/actionbarsherlock/view/MenuItem;)Z
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 92
    invoke-interface {p2}, Lcom/actionbarsherlock/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_12

    .line 97
    invoke-super {p0, p1, p2}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->onMenuItemSelected(ILcom/actionbarsherlock/view/MenuItem;)Z

    move-result v0

    :goto_b
    return v0

    .line 94
    :pswitch_c
    invoke-virtual {p0}, Lcom/darekxan/extweaks/app/ExTweaksProfileManagementActivity;->finish()V

    .line 95
    const/4 v0, 0x1

    goto :goto_b

    .line 92
    nop

    :pswitch_data_12
    .packed-switch 0x102002c
        :pswitch_c
    .end packed-switch
.end method
