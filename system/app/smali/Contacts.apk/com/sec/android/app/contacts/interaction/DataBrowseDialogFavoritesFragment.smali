.class public Lcom/sec/android/app/contacts/interaction/DataBrowseDialogFavoritesFragment;
.super Landroid/app/DialogFragment;
.source "DataBrowseDialogFavoritesFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/contacts/interaction/DataBrowseDialogFavoritesFragment$DataBrowseListAdapter;,
        Lcom/sec/android/app/contacts/interaction/DataBrowseDialogFavoritesFragment$Listener;
    }
.end annotation


# instance fields
.field private mAccountType:Ljava/lang/String;

.field private mAdapter:Lcom/sec/android/app/contacts/interaction/DataBrowseDialogFavoritesFragment$DataBrowseListAdapter;

.field private mChecked:Z

.field private mContactDatas:Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment$ContactDatas;

.field private mName:Ljava/lang/String;

.field private mPartition:Ljava/lang/String;

.field private mUri:Landroid/net/Uri;

.field private mdataInfo:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment$ContactDatas$DataInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 46
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 169
    return-void
.end method

.method static synthetic access$002(Lcom/sec/android/app/contacts/interaction/DataBrowseDialogFavoritesFragment;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 46
    iput-boolean p1, p0, Lcom/sec/android/app/contacts/interaction/DataBrowseDialogFavoritesFragment;->mChecked:Z

    return p1
.end method

.method static synthetic access$100(Lcom/sec/android/app/contacts/interaction/DataBrowseDialogFavoritesFragment;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/DataBrowseDialogFavoritesFragment;->mAccountType:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$102(Lcom/sec/android/app/contacts/interaction/DataBrowseDialogFavoritesFragment;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 46
    iput-object p1, p0, Lcom/sec/android/app/contacts/interaction/DataBrowseDialogFavoritesFragment;->mAccountType:Ljava/lang/String;

    return-object p1
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 5
    .parameter "savedInstanceState"

    .prologue
    .line 68
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 70
    const/4 v0, 0x1

    .local v0, style:I
    const/4 v1, 0x0

    .line 71
    .local v1, theme:I
    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/contacts/interaction/DataBrowseDialogFavoritesFragment;->setStyle(II)V

    .line 73
    if-nez p1, :cond_1d

    .line 74
    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/DataBrowseDialogFavoritesFragment;->mContactDatas:Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment$ContactDatas;

    iget-object v2, v2, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment$ContactDatas;->mDataSet:Ljava/util/ArrayList;

    iput-object v2, p0, Lcom/sec/android/app/contacts/interaction/DataBrowseDialogFavoritesFragment;->mdataInfo:Ljava/util/ArrayList;

    .line 75
    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/DataBrowseDialogFavoritesFragment;->mContactDatas:Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment$ContactDatas;

    iget-object v2, v2, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment$ContactDatas;->mAccountType:Ljava/lang/String;

    iput-object v2, p0, Lcom/sec/android/app/contacts/interaction/DataBrowseDialogFavoritesFragment;->mAccountType:Ljava/lang/String;

    .line 76
    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/DataBrowseDialogFavoritesFragment;->mContactDatas:Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment$ContactDatas;

    iget-object v2, v2, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment$ContactDatas;->mPartition:Ljava/lang/String;

    iput-object v2, p0, Lcom/sec/android/app/contacts/interaction/DataBrowseDialogFavoritesFragment;->mPartition:Ljava/lang/String;

    .line 85
    :goto_1c
    return-void

    .line 78
    :cond_1d
    const-string v2, "accountType"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/contacts/interaction/DataBrowseDialogFavoritesFragment;->mAccountType:Ljava/lang/String;

    .line 79
    const-string v2, "datainfo"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    iput-object v2, p0, Lcom/sec/android/app/contacts/interaction/DataBrowseDialogFavoritesFragment;->mdataInfo:Ljava/util/ArrayList;

    .line 80
    const-string v2, "name"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/contacts/interaction/DataBrowseDialogFavoritesFragment;->mName:Ljava/lang/String;

    .line 81
    const-string v2, "ischecked"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/sec/android/app/contacts/interaction/DataBrowseDialogFavoritesFragment;->mChecked:Z

    .line 82
    const-string v2, "uri"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    iput-object v2, p0, Lcom/sec/android/app/contacts/interaction/DataBrowseDialogFavoritesFragment;->mUri:Landroid/net/Uri;

    .line 83
    const-string v2, "partition"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/contacts/interaction/DataBrowseDialogFavoritesFragment;->mPartition:Ljava/lang/String;

    goto :goto_1c
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 16
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 102
    const v0, 0x7f04004b

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v11

    .line 104
    .local v11, view:Landroid/view/View;
    new-instance v0, Lcom/sec/android/app/contacts/interaction/DataBrowseDialogFavoritesFragment$DataBrowseListAdapter;

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/DataBrowseDialogFavoritesFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f04004c

    const v4, 0x1020014

    iget-object v5, p0, Lcom/sec/android/app/contacts/interaction/DataBrowseDialogFavoritesFragment;->mdataInfo:Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/sec/android/app/contacts/interaction/DataBrowseDialogFavoritesFragment;->mAccountType:Ljava/lang/String;

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/app/contacts/interaction/DataBrowseDialogFavoritesFragment$DataBrowseListAdapter;-><init>(Lcom/sec/android/app/contacts/interaction/DataBrowseDialogFavoritesFragment;Landroid/content/Context;IILjava/util/ArrayList;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sec/android/app/contacts/interaction/DataBrowseDialogFavoritesFragment;->mAdapter:Lcom/sec/android/app/contacts/interaction/DataBrowseDialogFavoritesFragment$DataBrowseListAdapter;

    .line 107
    const v0, 0x7f0d0117

    invoke-virtual {v11, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/LinearLayout;

    .line 109
    .local v9, setPrimaryView:Landroid/widget/LinearLayout;
    const v0, 0x7f0d0118

    invoke-virtual {v11, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/CheckBox;

    .line 110
    .local v8, setAsDefaultCheckBox:Landroid/widget/CheckBox;
    new-instance v0, Lcom/sec/android/app/contacts/interaction/DataBrowseDialogFavoritesFragment$1;

    invoke-direct {v0, p0, v8}, Lcom/sec/android/app/contacts/interaction/DataBrowseDialogFavoritesFragment$1;-><init>(Lcom/sec/android/app/contacts/interaction/DataBrowseDialogFavoritesFragment;Landroid/widget/CheckBox;)V

    invoke-virtual {v8, v0}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 118
    new-instance v0, Lcom/sec/android/app/contacts/interaction/DataBrowseDialogFavoritesFragment$2;

    invoke-direct {v0, p0, v8}, Lcom/sec/android/app/contacts/interaction/DataBrowseDialogFavoritesFragment$2;-><init>(Lcom/sec/android/app/contacts/interaction/DataBrowseDialogFavoritesFragment;Landroid/widget/CheckBox;)V

    invoke-virtual {v9, v0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 133
    const v0, 0x7f0d0113

    invoke-virtual {v11, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .line 134
    .local v10, titleView:Landroid/widget/TextView;
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/DataBrowseDialogFavoritesFragment;->mName:Ljava/lang/String;

    invoke-virtual {v10, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 136
    const v0, 0x7f0d0116

    invoke-virtual {v11, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ListView;

    .line 137
    .local v7, lv:Landroid/widget/ListView;
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/DataBrowseDialogFavoritesFragment;->mAdapter:Lcom/sec/android/app/contacts/interaction/DataBrowseDialogFavoritesFragment$DataBrowseListAdapter;

    invoke-virtual {v7, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 138
    invoke-virtual {v7, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 140
    return-object v11
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 11
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
    .line 145
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/DataBrowseDialogFavoritesFragment;->dismiss()V

    .line 147
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/DataBrowseDialogFavoritesFragment;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/contacts/interaction/DataBrowseDialogFavoritesFragment$Listener;

    .line 148
    .local v0, target:Lcom/sec/android/app/contacts/interaction/DataBrowseDialogFavoritesFragment$Listener;
    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/DataBrowseDialogFavoritesFragment;->mAdapter:Lcom/sec/android/app/contacts/interaction/DataBrowseDialogFavoritesFragment$DataBrowseListAdapter;

    invoke-virtual {v1, p3}, Lcom/sec/android/app/contacts/interaction/DataBrowseDialogFavoritesFragment$DataBrowseListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment$ContactDatas$DataInfo;

    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/DataBrowseDialogFavoritesFragment;->mPartition:Ljava/lang/String;

    iget-boolean v3, p0, Lcom/sec/android/app/contacts/interaction/DataBrowseDialogFavoritesFragment;->mChecked:Z

    iget-object v4, p0, Lcom/sec/android/app/contacts/interaction/DataBrowseDialogFavoritesFragment;->mUri:Landroid/net/Uri;

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/sec/android/app/contacts/interaction/DataBrowseDialogFavoritesFragment$Listener;->onDataChosen(Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment$ContactDatas$DataInfo;Ljava/lang/String;ZLandroid/net/Uri;)V

    .line 149
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4
    .parameter "outState"

    .prologue
    .line 89
    const-string v0, "DataBrowseDialogFragment"

    const-string v1, "onSaveInstanceState"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 91
    const-string v0, "datainfo"

    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/DataBrowseDialogFavoritesFragment;->mdataInfo:Ljava/util/ArrayList;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 92
    const-string v0, "accountType"

    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/DataBrowseDialogFavoritesFragment;->mAccountType:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    const-string v0, "name"

    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/DataBrowseDialogFavoritesFragment;->mName:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    const-string v0, "ischecked"

    iget-boolean v1, p0, Lcom/sec/android/app/contacts/interaction/DataBrowseDialogFavoritesFragment;->mChecked:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 95
    const-string v0, "uri"

    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/DataBrowseDialogFavoritesFragment;->mUri:Landroid/net/Uri;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 96
    const-string v0, "partition"

    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/DataBrowseDialogFavoritesFragment;->mPartition:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    return-void
.end method

.method public setContactDatas(Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment$ContactDatas;)V
    .registers 2
    .parameter "contactDatas"

    .prologue
    .line 152
    iput-object p1, p0, Lcom/sec/android/app/contacts/interaction/DataBrowseDialogFavoritesFragment;->mContactDatas:Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment$ContactDatas;

    .line 153
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .registers 2
    .parameter "name"

    .prologue
    .line 156
    iput-object p1, p0, Lcom/sec/android/app/contacts/interaction/DataBrowseDialogFavoritesFragment;->mName:Ljava/lang/String;

    .line 157
    return-void
.end method

.method public setUri(Landroid/net/Uri;)V
    .registers 2
    .parameter "uri"

    .prologue
    .line 248
    iput-object p1, p0, Lcom/sec/android/app/contacts/interaction/DataBrowseDialogFavoritesFragment;->mUri:Landroid/net/Uri;

    .line 249
    return-void
.end method
