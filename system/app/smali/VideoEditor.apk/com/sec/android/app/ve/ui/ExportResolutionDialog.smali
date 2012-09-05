.class public Lcom/sec/android/app/ve/ui/ExportResolutionDialog;
.super Landroid/app/Dialog;
.source "ExportResolutionDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/ve/ui/ExportResolutionDialog$RefreshHandler;
    }
.end annotation


# instance fields
.field h1:Lcom/sec/android/app/ve/ui/ExportResolutionDialog$RefreshHandler;

.field private final inflater:Landroid/view/LayoutInflater;

.field private final mContext:Landroid/content/Context;

.field private mExportDailogTitle:Landroid/widget/TextView;

.field private mExportDailogitems:Landroid/widget/ListView;

.field private final mRootView:Landroid/view/View;

.field private resolution_list:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final resolution_values:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 8
    .parameter "context"

    .prologue
    .line 41
    const v2, 0x7f090001

    invoke-direct {p0, p1, v2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 42
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/sec/android/app/ve/ui/ExportResolutionDialog;->requestWindowFeature(I)Z

    .line 43
    invoke-virtual {p0}, Lcom/sec/android/app/ve/ui/ExportResolutionDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 44
    .local v0, W:Landroid/view/Window;
    const v2, 0x7f090006

    invoke-virtual {v0, v2}, Landroid/view/Window;->setWindowAnimations(I)V

    .line 45
    new-instance v2, Lcom/sec/android/app/ve/ui/ExportResolutionDialog$RefreshHandler;

    invoke-direct {v2, p0}, Lcom/sec/android/app/ve/ui/ExportResolutionDialog$RefreshHandler;-><init>(Lcom/sec/android/app/ve/ui/ExportResolutionDialog;)V

    iput-object v2, p0, Lcom/sec/android/app/ve/ui/ExportResolutionDialog;->h1:Lcom/sec/android/app/ve/ui/ExportResolutionDialog$RefreshHandler;

    .line 46
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 47
    const v3, 0x7f060004

    .line 46
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/ve/ui/ExportResolutionDialog;->resolution_values:[Ljava/lang/String;

    .line 48
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/sec/android/app/ve/ui/ExportResolutionDialog;->resolution_list:Ljava/util/ArrayList;

    .line 49
    iget-object v3, p0, Lcom/sec/android/app/ve/ui/ExportResolutionDialog;->resolution_values:[Ljava/lang/String;

    array-length v4, v3

    const/4 v2, 0x0

    :goto_33
    if-lt v2, v4, :cond_a0

    .line 53
    iput-object p1, p0, Lcom/sec/android/app/ve/ui/ExportResolutionDialog;->mContext:Landroid/content/Context;

    .line 55
    const-string v2, "layout_inflater"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    .line 54
    iput-object v2, p0, Lcom/sec/android/app/ve/ui/ExportResolutionDialog;->inflater:Landroid/view/LayoutInflater;

    .line 57
    iget-object v2, p0, Lcom/sec/android/app/ve/ui/ExportResolutionDialog;->inflater:Landroid/view/LayoutInflater;

    .line 58
    const v3, 0x7f03001a

    const/4 v4, 0x0

    .line 57
    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    iput-object v2, p0, Lcom/sec/android/app/ve/ui/ExportResolutionDialog;->mRootView:Landroid/view/View;

    .line 60
    iget-object v2, p0, Lcom/sec/android/app/ve/ui/ExportResolutionDialog;->mRootView:Landroid/view/View;

    invoke-virtual {p0, v2}, Lcom/sec/android/app/ve/ui/ExportResolutionDialog;->setContentView(Landroid/view/View;)V

    .line 61
    iget-object v2, p0, Lcom/sec/android/app/ve/ui/ExportResolutionDialog;->mRootView:Landroid/view/View;

    const v3, 0x7f0b000b

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/sec/android/app/ve/ui/ExportResolutionDialog;->mExportDailogTitle:Landroid/widget/TextView;

    .line 62
    iget-object v2, p0, Lcom/sec/android/app/ve/ui/ExportResolutionDialog;->mExportDailogTitle:Landroid/widget/TextView;

    const v3, 0x7f08000f

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 63
    iget-object v2, p0, Lcom/sec/android/app/ve/ui/ExportResolutionDialog;->mRootView:Landroid/view/View;

    const v3, 0x7f0b000d

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView;

    iput-object v2, p0, Lcom/sec/android/app/ve/ui/ExportResolutionDialog;->mExportDailogitems:Landroid/widget/ListView;

    .line 64
    iget-object v2, p0, Lcom/sec/android/app/ve/ui/ExportResolutionDialog;->mExportDailogitems:Landroid/widget/ListView;

    new-instance v3, Landroid/widget/ArrayAdapter;

    .line 65
    const v4, 0x7f030012

    iget-object v5, p0, Lcom/sec/android/app/ve/ui/ExportResolutionDialog;->resolution_list:Ljava/util/ArrayList;

    invoke-direct {v3, p1, v4, v5}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 64
    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 66
    const-string v2, "Exportdialog"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "count "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/sec/android/app/ve/ui/ExportResolutionDialog;->resolution_list:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    return-void

    .line 49
    :cond_a0
    aget-object v1, v3, v2

    .line 50
    .local v1, value:Ljava/lang/String;
    iget-object v5, p0, Lcom/sec/android/app/ve/ui/ExportResolutionDialog;->resolution_list:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 49
    add-int/lit8 v2, v2, 0x1

    goto :goto_33
.end method


# virtual methods
.method public Dismiss()V
    .registers 5

    .prologue
    .line 84
    iget-object v0, p0, Lcom/sec/android/app/ve/ui/ExportResolutionDialog;->h1:Lcom/sec/android/app/ve/ui/ExportResolutionDialog$RefreshHandler;

    const/4 v1, 0x1

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/app/ve/ui/ExportResolutionDialog$RefreshHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 85
    return-void
.end method

.method public getmExportDailogitems()Landroid/widget/ListView;
    .registers 2

    .prologue
    .line 75
    iget-object v0, p0, Lcom/sec/android/app/ve/ui/ExportResolutionDialog;->mExportDailogitems:Landroid/widget/ListView;

    return-object v0
.end method

.method public setListClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
    .registers 3
    .parameter

    .prologue
    .line 71
    .local p1, itemListener:Landroid/widget/AdapterView$OnItemClickListener;,"Landroid/widget/AdapterView$OnItemClickListener;"
    iget-object v0, p0, Lcom/sec/android/app/ve/ui/ExportResolutionDialog;->mExportDailogitems:Landroid/widget/ListView;

    invoke-virtual {v0, p1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 72
    return-void
.end method

.method public setmExportDailogitems(Landroid/widget/ListView;)V
    .registers 2
    .parameter "mExportDailogitems"

    .prologue
    .line 79
    iput-object p1, p0, Lcom/sec/android/app/ve/ui/ExportResolutionDialog;->mExportDailogitems:Landroid/widget/ListView;

    .line 80
    return-void
.end method
