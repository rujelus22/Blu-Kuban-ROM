.class public Lcom/sec/android/app/contacts/interaction/GroupDataBrowseDialogFragment;
.super Landroid/app/DialogFragment;
.source "GroupDataBrowseDialogFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/contacts/interaction/GroupDataBrowseDialogFragment$DataBrowseListAdapter;,
        Lcom/sec/android/app/contacts/interaction/GroupDataBrowseDialogFragment$Listener;
    }
.end annotation


# instance fields
.field private mAccountType:Ljava/lang/String;

.field private mAdapter:Lcom/sec/android/app/contacts/interaction/GroupDataBrowseDialogFragment$DataBrowseListAdapter;

.field private mChecked:Z

.field private mContactDatas:Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment$ContactDatas;

.field private mName:Ljava/lang/String;

.field private mPartition:Ljava/lang/String;

.field private mdataInfo:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment$ContactDatas$DataInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 45
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 151
    return-void
.end method

.method static synthetic access$002(Lcom/sec/android/app/contacts/interaction/GroupDataBrowseDialogFragment;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 45
    iput-boolean p1, p0, Lcom/sec/android/app/contacts/interaction/GroupDataBrowseDialogFragment;->mChecked:Z

    return p1
.end method

.method static synthetic access$100(Lcom/sec/android/app/contacts/interaction/GroupDataBrowseDialogFragment;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/GroupDataBrowseDialogFragment;->mAccountType:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$102(Lcom/sec/android/app/contacts/interaction/GroupDataBrowseDialogFragment;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 45
    iput-object p1, p0, Lcom/sec/android/app/contacts/interaction/GroupDataBrowseDialogFragment;->mAccountType:Ljava/lang/String;

    return-object p1
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 5
    .parameter "savedInstanceState"

    .prologue
    .line 65
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 67
    const/4 v0, 0x1

    .local v0, style:I
    const/4 v1, 0x0

    .line 68
    .local v1, theme:I
    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/contacts/interaction/GroupDataBrowseDialogFragment;->setStyle(II)V

    .line 70
    if-nez p1, :cond_1d

    .line 71
    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/GroupDataBrowseDialogFragment;->mContactDatas:Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment$ContactDatas;

    iget-object v2, v2, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment$ContactDatas;->mDataSet:Ljava/util/ArrayList;

    iput-object v2, p0, Lcom/sec/android/app/contacts/interaction/GroupDataBrowseDialogFragment;->mdataInfo:Ljava/util/ArrayList;

    .line 72
    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/GroupDataBrowseDialogFragment;->mContactDatas:Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment$ContactDatas;

    iget-object v2, v2, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment$ContactDatas;->mAccountType:Ljava/lang/String;

    iput-object v2, p0, Lcom/sec/android/app/contacts/interaction/GroupDataBrowseDialogFragment;->mAccountType:Ljava/lang/String;

    .line 73
    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/GroupDataBrowseDialogFragment;->mContactDatas:Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment$ContactDatas;

    iget-object v2, v2, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment$ContactDatas;->mPartition:Ljava/lang/String;

    iput-object v2, p0, Lcom/sec/android/app/contacts/interaction/GroupDataBrowseDialogFragment;->mPartition:Ljava/lang/String;

    .line 81
    :goto_1c
    return-void

    .line 75
    :cond_1d
    const-string v2, "accountType"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/contacts/interaction/GroupDataBrowseDialogFragment;->mAccountType:Ljava/lang/String;

    .line 76
    const-string v2, "datainfo"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    iput-object v2, p0, Lcom/sec/android/app/contacts/interaction/GroupDataBrowseDialogFragment;->mdataInfo:Ljava/util/ArrayList;

    .line 77
    const-string v2, "name"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/contacts/interaction/GroupDataBrowseDialogFragment;->mName:Ljava/lang/String;

    .line 78
    const-string v2, "ischecked"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/sec/android/app/contacts/interaction/GroupDataBrowseDialogFragment;->mChecked:Z

    .line 79
    const-string v2, "partition"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/contacts/interaction/GroupDataBrowseDialogFragment;->mPartition:Ljava/lang/String;

    goto :goto_1c
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 16
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 96
    if-eqz p3, :cond_4

    .line 97
    const/4 v11, 0x0

    .line 125
    :goto_3
    return-object v11

    .line 100
    :cond_4
    const v0, 0x7f04004b

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v11

    .line 102
    .local v11, view:Landroid/view/View;
    new-instance v0, Lcom/sec/android/app/contacts/interaction/GroupDataBrowseDialogFragment$DataBrowseListAdapter;

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/GroupDataBrowseDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f04004c

    const v4, 0x1020014

    iget-object v5, p0, Lcom/sec/android/app/contacts/interaction/GroupDataBrowseDialogFragment;->mdataInfo:Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/sec/android/app/contacts/interaction/GroupDataBrowseDialogFragment;->mAccountType:Ljava/lang/String;

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/app/contacts/interaction/GroupDataBrowseDialogFragment$DataBrowseListAdapter;-><init>(Lcom/sec/android/app/contacts/interaction/GroupDataBrowseDialogFragment;Landroid/content/Context;IILjava/util/ArrayList;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sec/android/app/contacts/interaction/GroupDataBrowseDialogFragment;->mAdapter:Lcom/sec/android/app/contacts/interaction/GroupDataBrowseDialogFragment$DataBrowseListAdapter;

    .line 105
    const v0, 0x7f0d0117

    invoke-virtual {v11, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/LinearLayout;

    .line 107
    .local v9, setPrimaryView:Landroid/widget/LinearLayout;
    const v0, 0x7f0d0118

    invoke-virtual {v11, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/CheckBox;

    .line 108
    .local v8, setAsDefaultCheckBox:Landroid/widget/CheckBox;
    new-instance v0, Lcom/sec/android/app/contacts/interaction/GroupDataBrowseDialogFragment$1;

    invoke-direct {v0, p0, v8}, Lcom/sec/android/app/contacts/interaction/GroupDataBrowseDialogFragment$1;-><init>(Lcom/sec/android/app/contacts/interaction/GroupDataBrowseDialogFragment;Landroid/widget/CheckBox;)V

    invoke-virtual {v8, v0}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 118
    const v0, 0x7f0d0113

    invoke-virtual {v11, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .line 119
    .local v10, titleView:Landroid/widget/TextView;
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/GroupDataBrowseDialogFragment;->mName:Ljava/lang/String;

    invoke-virtual {v10, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 121
    const v0, 0x7f0d0116

    invoke-virtual {v11, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ListView;

    .line 122
    .local v7, lv:Landroid/widget/ListView;
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/GroupDataBrowseDialogFragment;->mAdapter:Lcom/sec/android/app/contacts/interaction/GroupDataBrowseDialogFragment$DataBrowseListAdapter;

    invoke-virtual {v7, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 123
    invoke-virtual {v7, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    goto :goto_3
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
    .line 130
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/GroupDataBrowseDialogFragment;->dismiss()V

    .line 132
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/GroupDataBrowseDialogFragment;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/contacts/interaction/GroupDataBrowseDialogFragment$Listener;

    .line 133
    .local v0, target:Lcom/sec/android/app/contacts/interaction/GroupDataBrowseDialogFragment$Listener;
    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/GroupDataBrowseDialogFragment;->mAdapter:Lcom/sec/android/app/contacts/interaction/GroupDataBrowseDialogFragment$DataBrowseListAdapter;

    invoke-virtual {v1, p3}, Lcom/sec/android/app/contacts/interaction/GroupDataBrowseDialogFragment$DataBrowseListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment$ContactDatas$DataInfo;

    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/GroupDataBrowseDialogFragment;->mPartition:Ljava/lang/String;

    iget-boolean v3, p0, Lcom/sec/android/app/contacts/interaction/GroupDataBrowseDialogFragment;->mChecked:Z

    invoke-interface {v0, v1, v2, v3}, Lcom/sec/android/app/contacts/interaction/GroupDataBrowseDialogFragment$Listener;->onDataChosen(Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment$ContactDatas$DataInfo;Ljava/lang/String;Z)V

    .line 134
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4
    .parameter "outState"

    .prologue
    .line 85
    const-string v0, "DataBrowseDialogFragment"

    const-string v1, "onSaveInstanceState"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 87
    const-string v0, "datainfo"

    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/GroupDataBrowseDialogFragment;->mdataInfo:Ljava/util/ArrayList;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 88
    const-string v0, "accountType"

    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/GroupDataBrowseDialogFragment;->mAccountType:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    const-string v0, "name"

    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/GroupDataBrowseDialogFragment;->mName:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    const-string v0, "ischecked"

    iget-boolean v1, p0, Lcom/sec/android/app/contacts/interaction/GroupDataBrowseDialogFragment;->mChecked:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 91
    const-string v0, "partition"

    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/GroupDataBrowseDialogFragment;->mPartition:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    return-void
.end method

.method public setContactDatas(Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment$ContactDatas;)V
    .registers 2
    .parameter "contactDatas"

    .prologue
    .line 137
    iput-object p1, p0, Lcom/sec/android/app/contacts/interaction/GroupDataBrowseDialogFragment;->mContactDatas:Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment$ContactDatas;

    .line 138
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .registers 2
    .parameter "name"

    .prologue
    .line 141
    iput-object p1, p0, Lcom/sec/android/app/contacts/interaction/GroupDataBrowseDialogFragment;->mName:Ljava/lang/String;

    .line 142
    return-void
.end method
