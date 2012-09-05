.class public Lcom/sec/android/app/dlna/view/MultiSelectListView;
.super Landroid/widget/LinearLayout;
.source "MultiSelectListView.java"


# instance fields
.field private adapter:Lcom/sec/android/app/dlna/view/DLNAContentsAdapter;

.field private isMultiSelectMode:Z

.field private listView:Landroid/widget/ListView;

.field public softKey:Lcom/sec/android/app/dlna/view/BottomSoftkeyView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 7
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 27
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 18
    iput-object v2, p0, Lcom/sec/android/app/dlna/view/MultiSelectListView;->listView:Landroid/widget/ListView;

    .line 20
    iput-object v2, p0, Lcom/sec/android/app/dlna/view/MultiSelectListView;->softKey:Lcom/sec/android/app/dlna/view/BottomSoftkeyView;

    .line 22
    iput-object v2, p0, Lcom/sec/android/app/dlna/view/MultiSelectListView;->adapter:Lcom/sec/android/app/dlna/view/DLNAContentsAdapter;

    .line 24
    iput-boolean v3, p0, Lcom/sec/android/app/dlna/view/MultiSelectListView;->isMultiSelectMode:Z

    .line 28
    const-string v2, "layout_inflater"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 30
    .local v0, mInflater:Landroid/view/LayoutInflater;
    const v2, 0x7f030012

    invoke-virtual {v0, v2, p0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 31
    .local v1, view:Landroid/view/View;
    invoke-virtual {p0, v1}, Lcom/sec/android/app/dlna/view/MultiSelectListView;->addView(Landroid/view/View;)V

    .line 33
    const/high16 v2, 0x101

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView;

    iput-object v2, p0, Lcom/sec/android/app/dlna/view/MultiSelectListView;->listView:Landroid/widget/ListView;

    .line 34
    const v2, 0x1010001

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/dlna/view/BottomSoftkeyView;

    iput-object v2, p0, Lcom/sec/android/app/dlna/view/MultiSelectListView;->softKey:Lcom/sec/android/app/dlna/view/BottomSoftkeyView;

    .line 36
    return-void
.end method


# virtual methods
.method public getListView()Landroid/widget/ListView;
    .registers 2

    .prologue
    .line 39
    iget-object v0, p0, Lcom/sec/android/app/dlna/view/MultiSelectListView;->listView:Landroid/widget/ListView;

    return-object v0
.end method

.method public isMultiSelectMode()Z
    .registers 2

    .prologue
    .line 43
    iget-boolean v0, p0, Lcom/sec/android/app/dlna/view/MultiSelectListView;->isMultiSelectMode:Z

    return v0
.end method

.method public setAdapter(Lcom/sec/android/app/dlna/view/DLNAContentsAdapter;)V
    .registers 3
    .parameter "adpater"

    .prologue
    .line 65
    iput-object p1, p0, Lcom/sec/android/app/dlna/view/MultiSelectListView;->adapter:Lcom/sec/android/app/dlna/view/DLNAContentsAdapter;

    .line 66
    iget-object v0, p0, Lcom/sec/android/app/dlna/view/MultiSelectListView;->listView:Landroid/widget/ListView;

    invoke-virtual {v0, p1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 67
    return-void
.end method

.method public setMultiSelectMode(Z)V
    .registers 4
    .parameter "enable"

    .prologue
    .line 47
    iget-boolean v0, p0, Lcom/sec/android/app/dlna/view/MultiSelectListView;->isMultiSelectMode:Z

    if-ne v0, p1, :cond_5

    .line 62
    :cond_4
    :goto_4
    return-void

    .line 50
    :cond_5
    iput-boolean p1, p0, Lcom/sec/android/app/dlna/view/MultiSelectListView;->isMultiSelectMode:Z

    .line 51
    iget-object v0, p0, Lcom/sec/android/app/dlna/view/MultiSelectListView;->adapter:Lcom/sec/android/app/dlna/view/DLNAContentsAdapter;

    if-eqz v0, :cond_4

    .line 54
    iget-object v0, p0, Lcom/sec/android/app/dlna/view/MultiSelectListView;->adapter:Lcom/sec/android/app/dlna/view/DLNAContentsAdapter;

    iget-boolean v1, p0, Lcom/sec/android/app/dlna/view/MultiSelectListView;->isMultiSelectMode:Z

    invoke-virtual {v0, v1}, Lcom/sec/android/app/dlna/view/DLNAContentsAdapter;->enableCheckMode(Z)V

    .line 55
    iget-boolean v0, p0, Lcom/sec/android/app/dlna/view/MultiSelectListView;->isMultiSelectMode:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1e

    .line 56
    iget-object v0, p0, Lcom/sec/android/app/dlna/view/MultiSelectListView;->softKey:Lcom/sec/android/app/dlna/view/BottomSoftkeyView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/dlna/view/BottomSoftkeyView;->setVisibility(I)V

    goto :goto_4

    .line 58
    :cond_1e
    iget-object v0, p0, Lcom/sec/android/app/dlna/view/MultiSelectListView;->softKey:Lcom/sec/android/app/dlna/view/BottomSoftkeyView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/sec/android/app/dlna/view/BottomSoftkeyView;->setVisibility(I)V

    goto :goto_4
.end method

.method public setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
    .registers 3
    .parameter "listener"

    .prologue
    .line 70
    iget-object v0, p0, Lcom/sec/android/app/dlna/view/MultiSelectListView;->listView:Landroid/widget/ListView;

    invoke-virtual {v0, p1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 71
    return-void
.end method
