.class public Lcom/sec/android/app/contacts/list/ReplaceContactPickerFragment;
.super Lcom/android/contacts/list/ContactEntryListFragment;
.source "ReplaceContactPickerFragment.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/contacts/list/ContactEntryListFragment",
        "<",
        "Lcom/android/contacts/list/ContactEntryListAdapter;",
        ">;"
    }
.end annotation


# instance fields
.field private mActionCode:I

.field private mCheckBox:Landroid/widget/CheckBox;

.field private mDeletedItemUri:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field private mEmptyView:Landroid/view/View;

.field private mFilter:Lcom/android/contacts/list/ContactListFilter;

.field private mHeaderView:Landroid/view/View;

.field private mListener:Lcom/android/contacts/list/OnReplaceContactActionListener;

.field private mNoMatchView:Landroid/view/View;

.field private mSelectedInfoHashSet:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mView:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x1

    .line 46
    invoke-direct {p0}, Lcom/android/contacts/list/ContactEntryListFragment;-><init>()V

    .line 47
    invoke-virtual {p0, v0}, Lcom/sec/android/app/contacts/list/ReplaceContactPickerFragment;->setPhotoLoaderEnabled(Z)V

    .line 48
    invoke-virtual {p0, v0}, Lcom/sec/android/app/contacts/list/ReplaceContactPickerFragment;->setSectionHeaderDisplayEnabled(Z)V

    .line 49
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/contacts/list/ReplaceContactPickerFragment;->setQuickContactEnabled(Z)V

    .line 50
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/sec/android/app/contacts/list/ReplaceContactPickerFragment;->setDirectorySearchMode(I)V

    .line 51
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/contacts/list/ReplaceContactPickerFragment;->mSelectedInfoHashSet:Ljava/util/HashSet;

    .line 52
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/contacts/list/ReplaceContactPickerFragment;->mDeletedItemUri:Ljava/util/ArrayList;

    .line 53
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/contacts/list/ReplaceContactPickerFragment;)Landroid/widget/CheckBox;
    .registers 2
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/sec/android/app/contacts/list/ReplaceContactPickerFragment;->mCheckBox:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/android/app/contacts/list/ReplaceContactPickerFragment;Z)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/sec/android/app/contacts/list/ReplaceContactPickerFragment;->setSelectAllChecked(Z)V

    return-void
.end method

.method private addContactFromSelectAll(IJ)V
    .registers 6
    .parameter "position"
    .parameter "id"

    .prologue
    .line 226
    iget-object v0, p0, Lcom/sec/android/app/contacts/list/ReplaceContactPickerFragment;->mSelectedInfoHashSet:Ljava/util/HashSet;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 227
    iget-object v1, p0, Lcom/sec/android/app/contacts/list/ReplaceContactPickerFragment;->mDeletedItemUri:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/list/ReplaceContactPickerFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/contacts/list/ReplaceContactListAdapter;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/contacts/list/ReplaceContactListAdapter;->getContactUri(I)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 228
    return-void
.end method

.method private addSelectedContact(IJ)V
    .registers 6
    .parameter "position"
    .parameter "id"

    .prologue
    .line 220
    iget-object v0, p0, Lcom/sec/android/app/contacts/list/ReplaceContactPickerFragment;->mSelectedInfoHashSet:Ljava/util/HashSet;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 221
    iget-object v1, p0, Lcom/sec/android/app/contacts/list/ReplaceContactPickerFragment;->mDeletedItemUri:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/list/ReplaceContactPickerFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/contacts/list/ReplaceContactListAdapter;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/contacts/list/ReplaceContactListAdapter;->getContactUri(I)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 222
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/list/ReplaceContactPickerFragment;->onSelectedInfoChanged()V

    .line 223
    return-void
.end method

.method private isSelectedContact(J)Z
    .registers 5
    .parameter "id"

    .prologue
    .line 209
    iget-object v0, p0, Lcom/sec/android/app/contacts/list/ReplaceContactPickerFragment;->mSelectedInfoHashSet:Ljava/util/HashSet;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private refreshSelectAllState()V
    .registers 6

    .prologue
    .line 182
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/list/ReplaceContactPickerFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/contacts/list/ReplaceContactListAdapter;

    .line 184
    .local v0, adapter:Lcom/sec/android/app/contacts/list/ReplaceContactListAdapter;
    const/4 v2, 0x0

    .local v2, position:I
    :goto_7
    invoke-virtual {v0}, Lcom/sec/android/app/contacts/list/ReplaceContactListAdapter;->getCount()I

    move-result v3

    if-ge v2, v3, :cond_27

    .line 185
    invoke-virtual {v0, v2}, Lcom/sec/android/app/contacts/list/ReplaceContactListAdapter;->getItemId(I)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 188
    .local v1, id:Ljava/lang/Long;
    iget-object v3, p0, Lcom/sec/android/app/contacts/list/ReplaceContactPickerFragment;->mSelectedInfoHashSet:Ljava/util/HashSet;

    invoke-virtual {v3, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_24

    .line 189
    iget-object v3, p0, Lcom/sec/android/app/contacts/list/ReplaceContactPickerFragment;->mCheckBox:Landroid/widget/CheckBox;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 194
    .end local v1           #id:Ljava/lang/Long;
    :goto_23
    return-void

    .line 184
    .restart local v1       #id:Ljava/lang/Long;
    :cond_24
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 193
    .end local v1           #id:Ljava/lang/Long;
    :cond_27
    iget-object v3, p0, Lcom/sec/android/app/contacts/list/ReplaceContactPickerFragment;->mCheckBox:Landroid/widget/CheckBox;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_23
.end method

.method private removeContact(IJ)V
    .registers 6
    .parameter "position"
    .parameter "id"

    .prologue
    .line 214
    iget-object v0, p0, Lcom/sec/android/app/contacts/list/ReplaceContactPickerFragment;->mSelectedInfoHashSet:Ljava/util/HashSet;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 215
    iget-object v1, p0, Lcom/sec/android/app/contacts/list/ReplaceContactPickerFragment;->mDeletedItemUri:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/list/ReplaceContactPickerFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/contacts/list/ReplaceContactListAdapter;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/contacts/list/ReplaceContactListAdapter;->getContactUri(I)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 216
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/list/ReplaceContactPickerFragment;->onSelectedInfoChanged()V

    .line 217
    return-void
.end method

.method private removeContactFromSelectAll(IJ)V
    .registers 6
    .parameter "position"
    .parameter "id"

    .prologue
    .line 231
    iget-object v0, p0, Lcom/sec/android/app/contacts/list/ReplaceContactPickerFragment;->mSelectedInfoHashSet:Ljava/util/HashSet;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 232
    iget-object v1, p0, Lcom/sec/android/app/contacts/list/ReplaceContactPickerFragment;->mDeletedItemUri:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/list/ReplaceContactPickerFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/contacts/list/ReplaceContactListAdapter;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/contacts/list/ReplaceContactListAdapter;->getContactUri(I)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 233
    return-void
.end method

.method private setDoneButton(I)V
    .registers 3
    .parameter "size"

    .prologue
    .line 283
    if-nez p1, :cond_8

    .line 284
    iget-object v0, p0, Lcom/sec/android/app/contacts/list/ReplaceContactPickerFragment;->mListener:Lcom/android/contacts/list/OnReplaceContactActionListener;

    invoke-interface {v0}, Lcom/android/contacts/list/OnReplaceContactActionListener;->onAllDataDeleted()V

    .line 288
    :cond_7
    :goto_7
    return-void

    .line 285
    :cond_8
    if-lez p1, :cond_7

    .line 286
    iget-object v0, p0, Lcom/sec/android/app/contacts/list/ReplaceContactPickerFragment;->mListener:Lcom/android/contacts/list/OnReplaceContactActionListener;

    invoke-interface {v0}, Lcom/android/contacts/list/OnReplaceContactActionListener;->onOneDataInputed()V

    goto :goto_7
.end method

.method private setHeaderViewVisibility(I)V
    .registers 4
    .parameter "visibility"

    .prologue
    .line 174
    iget v0, p0, Lcom/sec/android/app/contacts/list/ReplaceContactPickerFragment;->mActionCode:I

    const/16 v1, 0x14a

    if-ne v0, v1, :cond_e

    .line 175
    iget-object v0, p0, Lcom/sec/android/app/contacts/list/ReplaceContactPickerFragment;->mHeaderView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 179
    :cond_d
    :goto_d
    return-void

    .line 176
    :cond_e
    iget v0, p0, Lcom/sec/android/app/contacts/list/ReplaceContactPickerFragment;->mActionCode:I

    const/16 v1, 0x154

    if-ne v0, v1, :cond_d

    .line 177
    iget-object v0, p0, Lcom/sec/android/app/contacts/list/ReplaceContactPickerFragment;->mHeaderView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_d
.end method

.method private setSelectAllChecked(Z)V
    .registers 9
    .parameter "isChecked"

    .prologue
    .line 237
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/list/ReplaceContactPickerFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v0

    .line 238
    .local v0, adapter:Lcom/android/contacts/list/ContactEntryListAdapter;
    invoke-virtual {v0}, Lcom/android/contacts/list/ContactEntryListAdapter;->getPinnedPartitionHeadersEnabled()Z

    move-result v1

    .line 239
    .local v1, headerEnabled:Z
    const/4 v5, 0x0

    .line 240
    .local v5, startPos:I
    if-eqz v1, :cond_d

    .line 241
    add-int/lit8 v5, v5, 0x1

    .line 244
    :cond_d
    move v4, v5

    .local v4, position:I
    :goto_e
    invoke-virtual {v0}, Lcom/android/contacts/list/ContactEntryListAdapter;->getCount()I

    move-result v6

    if-ge v4, v6, :cond_2a

    .line 245
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/list/ReplaceContactPickerFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v6

    check-cast v6, Lcom/sec/android/app/contacts/list/ReplaceContactListAdapter;

    invoke-virtual {v6, v4}, Lcom/sec/android/app/contacts/list/ReplaceContactListAdapter;->getItemId(I)J

    move-result-wide v2

    .line 247
    .local v2, id:J
    if-nez p1, :cond_26

    .line 248
    invoke-direct {p0, v4, v2, v3}, Lcom/sec/android/app/contacts/list/ReplaceContactPickerFragment;->addContactFromSelectAll(IJ)V

    .line 244
    :goto_23
    add-int/lit8 v4, v4, 0x1

    goto :goto_e

    .line 250
    :cond_26
    invoke-direct {p0, v4, v2, v3}, Lcom/sec/android/app/contacts/list/ReplaceContactPickerFragment;->removeContactFromSelectAll(IJ)V

    goto :goto_23

    .line 254
    .end local v2           #id:J
    :cond_2a
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/list/ReplaceContactPickerFragment;->onSelectedInfoChanged()V

    .line 255
    return-void
.end method


# virtual methods
.method protected createListAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;
    .registers 5

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 93
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/list/ReplaceContactPickerFragment;->isLegacyCompatibilityMode()Z

    move-result v1

    if-nez v1, :cond_25

    .line 94
    new-instance v0, Lcom/sec/android/app/contacts/list/ReplaceContactListAdapter;

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/list/ReplaceContactPickerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sec/android/app/contacts/list/ReplaceContactListAdapter;-><init>(Landroid/content/Context;)V

    .line 95
    .local v0, adapter:Lcom/sec/android/app/contacts/list/ReplaceContactListAdapter;
    iget-object v1, p0, Lcom/sec/android/app/contacts/list/ReplaceContactPickerFragment;->mFilter:Lcom/android/contacts/list/ContactListFilter;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/list/ReplaceContactListAdapter;->setFilter(Lcom/android/contacts/list/ContactListFilter;)V

    .line 96
    invoke-virtual {v0, v3}, Lcom/sec/android/app/contacts/list/ReplaceContactListAdapter;->setSectionHeaderDisplayEnabled(Z)V

    .line 97
    invoke-virtual {v0, v3}, Lcom/sec/android/app/contacts/list/ReplaceContactListAdapter;->setDisplayPhotos(Z)V

    .line 98
    invoke-virtual {v0, v2}, Lcom/sec/android/app/contacts/list/ReplaceContactListAdapter;->setQuickContactEnabled(Z)V

    .line 99
    iget v1, p0, Lcom/sec/android/app/contacts/list/ReplaceContactPickerFragment;->mActionCode:I

    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/list/ReplaceContactListAdapter;->setActionCode(I)V

    .line 105
    .end local v0           #adapter:Lcom/sec/android/app/contacts/list/ReplaceContactListAdapter;
    :goto_24
    return-object v0

    .line 102
    :cond_25
    new-instance v0, Lcom/android/contacts/list/LegacyContactListAdapter;

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/list/ReplaceContactPickerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/contacts/list/LegacyContactListAdapter;-><init>(Landroid/content/Context;)V

    .line 103
    .local v0, adapter:Lcom/android/contacts/list/LegacyContactListAdapter;
    invoke-virtual {v0, v2}, Lcom/android/contacts/list/LegacyContactListAdapter;->setSectionHeaderDisplayEnabled(Z)V

    .line 104
    invoke-virtual {v0, v2}, Lcom/android/contacts/list/LegacyContactListAdapter;->setDisplayPhotos(Z)V

    goto :goto_24
.end method

.method protected inflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 5
    .parameter "inflater"
    .parameter "container"

    .prologue
    .line 64
    const v0, 0x7f0400b0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/contacts/list/ReplaceContactPickerFragment;->mView:Landroid/view/View;

    .line 65
    iget-object v0, p0, Lcom/sec/android/app/contacts/list/ReplaceContactPickerFragment;->mView:Landroid/view/View;

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 3
    .parameter "savedInstanceState"

    .prologue
    .line 57
    invoke-super {p0, p1}, Lcom/android/contacts/list/ContactEntryListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 58
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/list/ReplaceContactPickerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/contacts/activities/PeopleActivityForAdjustActionBar;

    invoke-virtual {v0}, Lcom/sec/android/app/contacts/activities/PeopleActivityForAdjustActionBar;->getActionCode()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/contacts/list/ReplaceContactPickerFragment;->mActionCode:I

    .line 59
    return-void
.end method

.method protected onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)V
    .registers 6
    .parameter "inflater"
    .parameter "container"

    .prologue
    const/4 v2, 0x0

    .line 70
    invoke-super {p0, p1, p2}, Lcom/android/contacts/list/ContactEntryListFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)V

    .line 71
    iput-object v2, p0, Lcom/sec/android/app/contacts/list/ReplaceContactPickerFragment;->mHeaderView:Landroid/view/View;

    .line 72
    const v0, 0x7f0400b2

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/contacts/list/ReplaceContactPickerFragment;->mHeaderView:Landroid/view/View;

    .line 73
    iget v0, p0, Lcom/sec/android/app/contacts/list/ReplaceContactPickerFragment;->mActionCode:I

    const/16 v1, 0x154

    if-ne v0, v1, :cond_1f

    .line 74
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/list/ReplaceContactPickerFragment;->getListView()Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/contacts/list/ReplaceContactPickerFragment;->mHeaderView:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->addHeaderView(Landroid/view/View;)V

    .line 76
    :cond_1f
    iget-object v0, p0, Lcom/sec/android/app/contacts/list/ReplaceContactPickerFragment;->mHeaderView:Landroid/view/View;

    const v1, 0x7f0d008f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/sec/android/app/contacts/list/ReplaceContactPickerFragment;->mCheckBox:Landroid/widget/CheckBox;

    .line 77
    iget-object v0, p0, Lcom/sec/android/app/contacts/list/ReplaceContactPickerFragment;->mHeaderView:Landroid/view/View;

    new-instance v1, Lcom/sec/android/app/contacts/list/ReplaceContactPickerFragment$1;

    invoke-direct {v1, p0}, Lcom/sec/android/app/contacts/list/ReplaceContactPickerFragment$1;-><init>(Lcom/sec/android/app/contacts/list/ReplaceContactPickerFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 84
    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lcom/sec/android/app/contacts/list/ReplaceContactPickerFragment;->setHeaderViewVisibility(I)V

    .line 87
    iget-object v0, p0, Lcom/sec/android/app/contacts/list/ReplaceContactPickerFragment;->mView:Landroid/view/View;

    const v1, 0x1020004

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/contacts/list/ReplaceContactPickerFragment;->mEmptyView:Landroid/view/View;

    .line 88
    iget-object v0, p0, Lcom/sec/android/app/contacts/list/ReplaceContactPickerFragment;->mView:Landroid/view/View;

    const v1, 0x7f0d01ae

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/contacts/list/ReplaceContactPickerFragment;->mNoMatchView:Landroid/view/View;

    .line 89
    return-void
.end method

.method public onDeleteResult()V
    .registers 3

    .prologue
    .line 270
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/list/ReplaceContactPickerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/contacts/list/ReplaceContactPickerFragment;->mDeletedItemUri:Ljava/util/ArrayList;

    invoke-static {v0, v1}, Lcom/android/contacts/interactions/DeleteContactsInteraction;->start(Landroid/app/Activity;Ljava/util/ArrayList;)Lcom/android/contacts/interactions/DeleteContactsInteraction;

    .line 272
    return-void
.end method

.method protected onItemClick(IJ)V
    .registers 9
    .parameter "position"
    .parameter "id"

    .prologue
    .line 111
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/list/ReplaceContactPickerFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/contacts/list/ReplaceContactListAdapter;

    invoke-virtual {v3, p1}, Lcom/sec/android/app/contacts/list/ReplaceContactListAdapter;->getItemId(I)J

    move-result-wide v1

    .line 113
    .local v1, selectedId:J
    iget v3, p0, Lcom/sec/android/app/contacts/list/ReplaceContactPickerFragment;->mActionCode:I

    const/16 v4, 0x154

    if-ne v3, v4, :cond_1e

    .line 114
    invoke-direct {p0, v1, v2}, Lcom/sec/android/app/contacts/list/ReplaceContactPickerFragment;->isSelectedContact(J)Z

    move-result v3

    if-eqz v3, :cond_1a

    .line 115
    invoke-direct {p0, p1, v1, v2}, Lcom/sec/android/app/contacts/list/ReplaceContactPickerFragment;->removeContact(IJ)V

    .line 124
    :cond_19
    :goto_19
    return-void

    .line 117
    :cond_1a
    invoke-direct {p0, p1, v1, v2}, Lcom/sec/android/app/contacts/list/ReplaceContactPickerFragment;->addSelectedContact(IJ)V

    goto :goto_19

    .line 119
    :cond_1e
    iget v3, p0, Lcom/sec/android/app/contacts/list/ReplaceContactPickerFragment;->mActionCode:I

    const/16 v4, 0x14a

    if-ne v3, v4, :cond_19

    .line 120
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/list/ReplaceContactPickerFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/contacts/list/ReplaceContactListAdapter;

    invoke-virtual {v3, p1}, Lcom/sec/android/app/contacts/list/ReplaceContactListAdapter;->getContactUri(I)Landroid/net/Uri;

    move-result-object v0

    .line 121
    .local v0, contactUri:Landroid/net/Uri;
    invoke-virtual {p0, v0}, Lcom/sec/android/app/contacts/list/ReplaceContactPickerFragment;->viewContact(Landroid/net/Uri;)V

    goto :goto_19
.end method

.method public onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V
    .registers 3
    .parameter
    .parameter "data"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;",
            "Landroid/database/Cursor;",
            ")V"
        }
    .end annotation

    .prologue
    .line 138
    .local p1, loader:Landroid/content/Loader;,"Landroid/content/Loader<Landroid/database/Cursor;>;"
    invoke-super {p0, p1, p2}, Lcom/android/contacts/list/ContactEntryListFragment;->onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V

    .line 140
    invoke-direct {p0}, Lcom/sec/android/app/contacts/list/ReplaceContactPickerFragment;->refreshSelectAllState()V

    .line 141
    return-void
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 33
    check-cast p2, Landroid/database/Cursor;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/contacts/list/ReplaceContactPickerFragment;->onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V

    return-void
.end method

.method public onSelectedInfoChanged()V
    .registers 3

    .prologue
    .line 202
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/list/ReplaceContactPickerFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/contacts/list/ReplaceContactListAdapter;

    iget-object v1, p0, Lcom/sec/android/app/contacts/list/ReplaceContactPickerFragment;->mSelectedInfoHashSet:Ljava/util/HashSet;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/list/ReplaceContactListAdapter;->setSelectedInfoHashSet(Ljava/util/HashSet;)V

    .line 203
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/list/ReplaceContactPickerFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/contacts/list/ContactEntryListAdapter;->notifyDataSetChanged()V

    .line 204
    iget-object v0, p0, Lcom/sec/android/app/contacts/list/ReplaceContactPickerFragment;->mSelectedInfoHashSet:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/contacts/list/ReplaceContactPickerFragment;->setDoneButton(I)V

    .line 205
    invoke-direct {p0}, Lcom/sec/android/app/contacts/list/ReplaceContactPickerFragment;->refreshSelectAllState()V

    .line 206
    return-void
.end method

.method public setFilter(Lcom/android/contacts/list/ContactListFilter;)V
    .registers 2
    .parameter "filter"

    .prologue
    .line 133
    iput-object p1, p0, Lcom/sec/android/app/contacts/list/ReplaceContactPickerFragment;->mFilter:Lcom/android/contacts/list/ContactListFilter;

    .line 134
    return-void
.end method

.method public setOnReplaceContactActionListener(Lcom/android/contacts/list/OnReplaceContactActionListener;)V
    .registers 2
    .parameter "listener"

    .prologue
    .line 279
    iput-object p1, p0, Lcom/sec/android/app/contacts/list/ReplaceContactPickerFragment;->mListener:Lcom/android/contacts/list/OnReplaceContactActionListener;

    .line 280
    return-void
.end method

.method protected showCount(ILandroid/database/Cursor;)V
    .registers 7
    .parameter "partitionIndex"
    .parameter "data"

    .prologue
    const/4 v3, 0x0

    const/16 v2, 0x8

    .line 146
    if-eqz p2, :cond_11

    iget-object v1, p0, Lcom/sec/android/app/contacts/list/ReplaceContactPickerFragment;->mHeaderView:Landroid/view/View;

    if-eqz v1, :cond_11

    iget-object v1, p0, Lcom/sec/android/app/contacts/list/ReplaceContactPickerFragment;->mEmptyView:Landroid/view/View;

    if-eqz v1, :cond_11

    iget-object v1, p0, Lcom/sec/android/app/contacts/list/ReplaceContactPickerFragment;->mNoMatchView:Landroid/view/View;

    if-nez v1, :cond_12

    .line 171
    :cond_11
    :goto_11
    return-void

    .line 150
    :cond_12
    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result v0

    .line 152
    .local v0, count:I
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/list/ReplaceContactPickerFragment;->isSearchMode()Z

    move-result v1

    if-nez v1, :cond_35

    .line 153
    iget-object v1, p0, Lcom/sec/android/app/contacts/list/ReplaceContactPickerFragment;->mNoMatchView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 154
    if-eqz v0, :cond_2c

    .line 155
    iget-object v1, p0, Lcom/sec/android/app/contacts/list/ReplaceContactPickerFragment;->mEmptyView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 156
    invoke-direct {p0, v3}, Lcom/sec/android/app/contacts/list/ReplaceContactPickerFragment;->setHeaderViewVisibility(I)V

    goto :goto_11

    .line 158
    :cond_2c
    iget-object v1, p0, Lcom/sec/android/app/contacts/list/ReplaceContactPickerFragment;->mEmptyView:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 159
    invoke-direct {p0, v2}, Lcom/sec/android/app/contacts/list/ReplaceContactPickerFragment;->setHeaderViewVisibility(I)V

    goto :goto_11

    .line 162
    :cond_35
    iget-object v1, p0, Lcom/sec/android/app/contacts/list/ReplaceContactPickerFragment;->mEmptyView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 163
    if-eqz v0, :cond_45

    .line 164
    iget-object v1, p0, Lcom/sec/android/app/contacts/list/ReplaceContactPickerFragment;->mNoMatchView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 165
    invoke-direct {p0, v3}, Lcom/sec/android/app/contacts/list/ReplaceContactPickerFragment;->setHeaderViewVisibility(I)V

    goto :goto_11

    .line 167
    :cond_45
    iget-object v1, p0, Lcom/sec/android/app/contacts/list/ReplaceContactPickerFragment;->mNoMatchView:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 168
    invoke-direct {p0, v2}, Lcom/sec/android/app/contacts/list/ReplaceContactPickerFragment;->setHeaderViewVisibility(I)V

    goto :goto_11
.end method

.method public viewContact(Landroid/net/Uri;)V
    .registers 3
    .parameter "contactUri"

    .prologue
    .line 129
    iget-object v0, p0, Lcom/sec/android/app/contacts/list/ReplaceContactPickerFragment;->mListener:Lcom/android/contacts/list/OnReplaceContactActionListener;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/sec/android/app/contacts/list/ReplaceContactPickerFragment;->mListener:Lcom/android/contacts/list/OnReplaceContactActionListener;

    invoke-interface {v0, p1}, Lcom/android/contacts/list/OnReplaceContactActionListener;->onViewContactAction(Landroid/net/Uri;)V

    .line 130
    :cond_9
    return-void
.end method
