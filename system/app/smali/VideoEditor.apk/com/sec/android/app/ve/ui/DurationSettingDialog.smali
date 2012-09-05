.class public Lcom/sec/android/app/ve/ui/DurationSettingDialog;
.super Landroid/app/Dialog;
.source "DurationSettingDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/ve/ui/DurationSettingDialog$DurationSettingArrayAdapter;,
        Lcom/sec/android/app/ve/ui/DurationSettingDialog$RefreshHandler;
    }
.end annotation


# instance fields
.field private actionList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/ve/ui/PopupActionItem;",
            ">;"
        }
    .end annotation
.end field

.field h1:Lcom/sec/android/app/ve/ui/DurationSettingDialog$RefreshHandler;

.field private final inflater:Landroid/view/LayoutInflater;

.field private listAdapter:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter",
            "<",
            "Lcom/sec/android/app/ve/ui/PopupActionItem;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private mDuarionDialogTitle:Landroid/widget/TextView;

.field private mDurationDialogitems:Landroid/widget/ListView;

.field private final mRootView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 6
    .parameter "context"

    .prologue
    .line 42
    const v1, 0x7f090001

    invoke-direct {p0, p1, v1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 43
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/sec/android/app/ve/ui/DurationSettingDialog;->requestWindowFeature(I)Z

    .line 44
    invoke-virtual {p0}, Lcom/sec/android/app/ve/ui/DurationSettingDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 45
    .local v0, W:Landroid/view/Window;
    const v1, 0x7f090006

    invoke-virtual {v0, v1}, Landroid/view/Window;->setWindowAnimations(I)V

    .line 46
    new-instance v1, Lcom/sec/android/app/ve/ui/DurationSettingDialog$RefreshHandler;

    invoke-direct {v1, p0}, Lcom/sec/android/app/ve/ui/DurationSettingDialog$RefreshHandler;-><init>(Lcom/sec/android/app/ve/ui/DurationSettingDialog;)V

    iput-object v1, p0, Lcom/sec/android/app/ve/ui/DurationSettingDialog;->h1:Lcom/sec/android/app/ve/ui/DurationSettingDialog$RefreshHandler;

    .line 47
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/sec/android/app/ve/ui/DurationSettingDialog;->actionList:Ljava/util/ArrayList;

    .line 48
    iput-object p1, p0, Lcom/sec/android/app/ve/ui/DurationSettingDialog;->mContext:Landroid/content/Context;

    .line 50
    const-string v1, "layout_inflater"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 49
    iput-object v1, p0, Lcom/sec/android/app/ve/ui/DurationSettingDialog;->inflater:Landroid/view/LayoutInflater;

    .line 52
    iget-object v1, p0, Lcom/sec/android/app/ve/ui/DurationSettingDialog;->inflater:Landroid/view/LayoutInflater;

    .line 53
    const v2, 0x7f030018

    const/4 v3, 0x0

    .line 52
    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/sec/android/app/ve/ui/DurationSettingDialog;->mRootView:Landroid/view/View;

    .line 55
    iget-object v1, p0, Lcom/sec/android/app/ve/ui/DurationSettingDialog;->mRootView:Landroid/view/View;

    invoke-virtual {p0, v1}, Lcom/sec/android/app/ve/ui/DurationSettingDialog;->setContentView(Landroid/view/View;)V

    .line 56
    iget-object v1, p0, Lcom/sec/android/app/ve/ui/DurationSettingDialog;->mRootView:Landroid/view/View;

    const v2, 0x7f0b000b

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/sec/android/app/ve/ui/DurationSettingDialog;->mDuarionDialogTitle:Landroid/widget/TextView;

    .line 57
    iget-object v1, p0, Lcom/sec/android/app/ve/ui/DurationSettingDialog;->mDuarionDialogTitle:Landroid/widget/TextView;

    const v2, 0x7f080004

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 58
    iget-object v1, p0, Lcom/sec/android/app/ve/ui/DurationSettingDialog;->mRootView:Landroid/view/View;

    const v2, 0x7f0b000d

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/sec/android/app/ve/ui/DurationSettingDialog;->mDurationDialogitems:Landroid/widget/ListView;

    .line 59
    new-instance v1, Lcom/sec/android/app/ve/ui/DurationSettingDialog$DurationSettingArrayAdapter;

    iget-object v2, p0, Lcom/sec/android/app/ve/ui/DurationSettingDialog;->actionList:Ljava/util/ArrayList;

    invoke-direct {v1, p1, v2}, Lcom/sec/android/app/ve/ui/DurationSettingDialog$DurationSettingArrayAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v1, p0, Lcom/sec/android/app/ve/ui/DurationSettingDialog;->listAdapter:Landroid/widget/ArrayAdapter;

    .line 60
    iget-object v1, p0, Lcom/sec/android/app/ve/ui/DurationSettingDialog;->mDurationDialogitems:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/sec/android/app/ve/ui/DurationSettingDialog;->listAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 62
    return-void
.end method


# virtual methods
.method public Dismiss()V
    .registers 5

    .prologue
    .line 78
    iget-object v0, p0, Lcom/sec/android/app/ve/ui/DurationSettingDialog;->h1:Lcom/sec/android/app/ve/ui/DurationSettingDialog$RefreshHandler;

    const/4 v1, 0x1

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/app/ve/ui/DurationSettingDialog$RefreshHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 79
    return-void
.end method

.method public addActionItem(Lcom/sec/android/app/ve/ui/PopupActionItem;)V
    .registers 3
    .parameter "action"

    .prologue
    .line 82
    iget-object v0, p0, Lcom/sec/android/app/ve/ui/DurationSettingDialog;->actionList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 83
    return-void
.end method

.method public getmDurationDialogitems()Landroid/widget/ListView;
    .registers 2

    .prologue
    .line 69
    iget-object v0, p0, Lcom/sec/android/app/ve/ui/DurationSettingDialog;->mDurationDialogitems:Landroid/widget/ListView;

    return-object v0
.end method

.method public setListClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
    .registers 3
    .parameter

    .prologue
    .line 65
    .local p1, itemListener:Landroid/widget/AdapterView$OnItemClickListener;,"Landroid/widget/AdapterView$OnItemClickListener;"
    iget-object v0, p0, Lcom/sec/android/app/ve/ui/DurationSettingDialog;->mDurationDialogitems:Landroid/widget/ListView;

    invoke-virtual {v0, p1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 66
    return-void
.end method

.method public setmDurationDialogitems(Landroid/widget/ListView;)V
    .registers 2
    .parameter "mExportDailogitems"

    .prologue
    .line 73
    iput-object p1, p0, Lcom/sec/android/app/ve/ui/DurationSettingDialog;->mDurationDialogitems:Landroid/widget/ListView;

    .line 74
    return-void
.end method
