.class public Lcom/adwtheme/rujelus22iconpack/main;
.super Landroid/app/Activity;
.source "main.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/adwtheme/rujelus22iconpack/main$IconsAdapter;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/app/Activity;",
        "Landroid/widget/AdapterView$OnItemClickListener;"
    }
.end annotation


# static fields
.field private static final ACTION_ADW_PICK_ICON:Ljava/lang/String; = "org.adw.launcher.icons.ACTION_PICK_ICON"


# instance fields
.field private mPickerMode:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 23
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 25
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/adwtheme/rujelus22iconpack/main;->mPickerMode:Z

    .line 23
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 7
    .parameter "savedInstanceState"

    .prologue
    .line 28
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 29
    invoke-virtual {p0}, Lcom/adwtheme/rujelus22iconpack/main;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const/high16 v4, 0x105

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 30
    .local v2, iconSize:I
    const/high16 v3, 0x7f03

    invoke-virtual {p0, v3}, Lcom/adwtheme/rujelus22iconpack/main;->setContentView(I)V

    .line 31
    const/high16 v3, 0x7f07

    invoke-virtual {p0, v3}, Lcom/adwtheme/rujelus22iconpack/main;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/GridView;

    .line 32
    .local v1, g:Landroid/widget/GridView;
    const/4 v3, -0x1

    invoke-virtual {v1, v3}, Landroid/widget/GridView;->setNumColumns(I)V

    .line 33
    invoke-virtual {v1, v2}, Landroid/widget/GridView;->setColumnWidth(I)V

    .line 34
    const/4 v3, 0x3

    invoke-virtual {v1, v3}, Landroid/widget/GridView;->setStretchMode(I)V

    .line 35
    div-int/lit8 v3, v2, 0x3

    invoke-virtual {v1, v3}, Landroid/widget/GridView;->setVerticalSpacing(I)V

    .line 36
    invoke-virtual {v1, p0}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 37
    new-instance v0, Lcom/adwtheme/rujelus22iconpack/main$IconsAdapter;

    invoke-direct {v0, p0, p0, v2}, Lcom/adwtheme/rujelus22iconpack/main$IconsAdapter;-><init>(Lcom/adwtheme/rujelus22iconpack/main;Landroid/content/Context;I)V

    .line 38
    .local v0, adapter:Lcom/adwtheme/rujelus22iconpack/main$IconsAdapter;
    invoke-virtual {v1, v0}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 39
    invoke-virtual {p0}, Lcom/adwtheme/rujelus22iconpack/main;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string v4, "org.adw.launcher.icons.ACTION_PICK_ICON"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_48

    .line 40
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/adwtheme/rujelus22iconpack/main;->mPickerMode:Z

    .line 43
    :cond_48
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 10
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
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
    .line 45
    .local p1, adapter:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-boolean v3, p0, Lcom/adwtheme/rujelus22iconpack/main;->mPickerMode:Z

    if-eqz v3, :cond_26

    .line 46
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 47
    .local v2, intent:Landroid/content/Intent;
    const/4 v1, 0x0

    .line 49
    .local v1, bitmap:Landroid/graphics/Bitmap;
    :try_start_a
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v3

    check-cast v3, Landroid/widget/Adapter;

    invoke-interface {v3, p3}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Landroid/graphics/Bitmap;

    move-object v1, v0
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_18} :catch_2c

    .line 52
    :goto_18
    if-eqz v1, :cond_27

    .line 53
    const-string v3, "icon"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 54
    const/4 v3, -0x1

    invoke-virtual {p0, v3, v2}, Lcom/adwtheme/rujelus22iconpack/main;->setResult(ILandroid/content/Intent;)V

    .line 58
    :goto_23
    invoke-virtual {p0}, Lcom/adwtheme/rujelus22iconpack/main;->finish()V

    .line 60
    .end local v1           #bitmap:Landroid/graphics/Bitmap;
    .end local v2           #intent:Landroid/content/Intent;
    :cond_26
    return-void

    .line 56
    .restart local v1       #bitmap:Landroid/graphics/Bitmap;
    .restart local v2       #intent:Landroid/content/Intent;
    :cond_27
    const/4 v3, 0x0

    invoke-virtual {p0, v3, v2}, Lcom/adwtheme/rujelus22iconpack/main;->setResult(ILandroid/content/Intent;)V

    goto :goto_23

    .line 50
    :catch_2c
    move-exception v3

    goto :goto_18
.end method
