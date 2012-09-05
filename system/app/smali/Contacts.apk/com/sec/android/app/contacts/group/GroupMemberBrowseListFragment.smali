.class public Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;
.super Lcom/android/contacts/list/DefaultContactBrowseListFragment;
.source "GroupMemberBrowseListFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment$Listener;
    }
.end annotation


# instance fields
.field private mGroupInfo:Lcom/sec/android/app/contacts/group/GroupInfo;

.field private mGroupType:I

.field private mIsEditable:Z

.field private mListener:Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment$Listener;

.field private mSearchView:Landroid/widget/SearchView;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x1

    .line 191
    invoke-direct {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;-><init>()V

    .line 193
    invoke-virtual {p0, v0}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->setPhotoLoaderEnabled(Z)V

    .line 195
    invoke-virtual {p0, v0}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->setSectionHeaderDisplayEnabled(Z)V

    .line 197
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->setVisibleScrollbarEnabled(Z)V

    .line 199
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;)Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment$Listener;
    .registers 2
    .parameter "x0"

    .prologue
    .line 103
    iget-object v0, p0, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->mListener:Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment$Listener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;Landroid/view/View;)Landroid/widget/PopupMenu;
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 103
    invoke-direct {p0, p1}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->constructPopupMenu(Landroid/view/View;)Landroid/widget/PopupMenu;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;)Landroid/widget/SearchView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 103
    iget-object v0, p0, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->mSearchView:Landroid/widget/SearchView;

    return-object v0
.end method

.method private configureEmptyView(Z)V
    .registers 3
    .parameter "isEmpty"

    .prologue
    .line 590
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->setContactsUnavailableViewVisible(ZZ)V

    .line 592
    return-void
.end method

.method private constructPopupMenu(Landroid/view/View;)Landroid/widget/PopupMenu;
    .registers 5
    .parameter "anchorView"

    .prologue
    .line 491
    new-instance v1, Landroid/widget/PopupMenu;

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2, p1}, Landroid/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 493
    .local v1, popupMenu:Landroid/widget/PopupMenu;
    invoke-virtual {v1}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v0

    .line 495
    .local v0, menu:Landroid/view/Menu;
    const v2, 0x7f10000f

    invoke-virtual {v1, v2}, Landroid/widget/PopupMenu;->inflate(I)V

    .line 497
    new-instance v2, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment$4;

    invoke-direct {v2, p0, v1}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment$4;-><init>(Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;Landroid/widget/PopupMenu;)V

    invoke-virtual {v1, v2}, Landroid/widget/PopupMenu;->setOnMenuItemClickListener(Landroid/widget/PopupMenu$OnMenuItemClickListener;)V

    .line 509
    invoke-direct {p0, v0}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->setupMenuItems(Landroid/view/Menu;)V

    .line 511
    return-object v1
.end method

.method private setupMenuItems(Landroid/view/Menu;)V
    .registers 7
    .parameter "menu"

    .prologue
    const v4, 0x7f0d027f

    const v3, 0x7f0d0243

    const/4 v2, 0x0

    .line 520
    iget-boolean v0, p0, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->mIsEditable:Z

    if-nez v0, :cond_1c

    .line 521
    invoke-interface {p1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 522
    const v0, 0x7f0d0280

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 526
    :cond_1c
    iget v0, p0, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->mGroupType:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_28

    .line 527
    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 529
    :cond_28
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/list/ContactListAdapter;

    invoke-virtual {v0}, Lcom/android/contacts/list/ContactListAdapter;->getCount()I

    move-result v0

    if-nez v0, :cond_4c

    .line 530
    invoke-interface {p1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 531
    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 532
    const v0, 0x7f0d0242

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 534
    :cond_4c
    return-void
.end method

.method private updateAddBtnVisible()V
    .registers 4

    .prologue
    .line 540
    iget-boolean v1, p0, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->mIsEditable:Z

    if-nez v1, :cond_16

    .line 542
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->getView()Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0d00e8

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    .line 544
    .local v0, addBtn:Landroid/widget/ImageButton;
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 548
    .end local v0           #addBtn:Landroid/widget/ImageButton;
    :cond_16
    return-void
.end method

.method private updateMenuBtnVisible(Z)V
    .registers 6
    .parameter "isEmpty"

    .prologue
    const/16 v3, 0x8

    .line 554
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->getView()Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0d01a3

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    .line 558
    .local v0, menuBtn:Landroid/widget/ImageButton;
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->hasPermanentMenuKey()Z

    move-result v1

    if-nez v1, :cond_27

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/contacts/util/PhoneCapabilityTester;->isUsingTwoPanes(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2b

    .line 562
    :cond_27
    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 582
    :goto_2a
    return-void

    .line 570
    :cond_2b
    if-eqz p1, :cond_3b

    iget v1, p0, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->mGroupType:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_37

    iget v1, p0, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->mGroupType:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_3b

    .line 574
    :cond_37
    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_2a

    .line 578
    :cond_3b
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_2a
.end method


# virtual methods
.method protected createCustomSearchbar()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 331
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->getView()Landroid/view/View;

    move-result-object v2

    const v3, 0x7f0d010d

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 337
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->getView()Landroid/view/View;

    move-result-object v2

    const v3, 0x7f0d00e8

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    .line 341
    .local v0, addBtn:Landroid/widget/ImageButton;
    const v2, 0x7f020010

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 343
    new-instance v2, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment$1;

    invoke-direct {v2, p0}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment$1;-><init>(Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 363
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->getView()Landroid/view/View;

    move-result-object v2

    const v3, 0x7f0d01a3

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    .line 365
    .local v1, menuBtn:Landroid/widget/ImageButton;
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewConfiguration;->hasPermanentMenuKey()Z

    move-result v2

    if-nez v2, :cond_4f

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/android/contacts/util/PhoneCapabilityTester;->isUsingTwoPanes(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_8f

    .line 369
    :cond_4f
    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 403
    :goto_54
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->getView()Landroid/view/View;

    move-result-object v2

    const v3, 0x7f0d00e9

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/SearchView;

    iput-object v2, p0, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->mSearchView:Landroid/widget/SearchView;

    .line 405
    iget-object v2, p0, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->mSearchView:Landroid/widget/SearchView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/SearchView;->setIconifiedByDefault(Z)V

    .line 407
    iget-object v2, p0, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v2}, Landroid/widget/SearchView;->onActionViewExpanded()V

    .line 409
    iget-object v2, p0, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v2}, Landroid/widget/SearchView;->clearFocus()V

    .line 411
    iget-object v2, p0, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v2, v4}, Landroid/widget/SearchView;->setFocusable(Z)V

    .line 413
    iget-object v2, p0, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->mSearchView:Landroid/widget/SearchView;

    const v3, 0x7f0a01ad

    invoke-virtual {p0, v3}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/SearchView;->setQueryHint(Ljava/lang/CharSequence;)V

    .line 415
    iget-object v2, p0, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->mSearchView:Landroid/widget/SearchView;

    new-instance v3, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment$3;

    invoke-direct {v3, p0}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment$3;-><init>(Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;)V

    invoke-virtual {v2, v3}, Landroid/widget/SearchView;->setOnQueryTextListener(Landroid/widget/SearchView$OnQueryTextListener;)V

    .line 481
    return-void

    .line 373
    :cond_8f
    new-instance v2, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment$2;

    invoke-direct {v2, p0}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment$2;-><init>(Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_54
.end method

.method protected bridge synthetic createListAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;
    .registers 2

    .prologue
    .line 103
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->createListAdapter()Lcom/android/contacts/list/ContactListAdapter;

    move-result-object v0

    return-object v0
.end method

.method protected createListAdapter()Lcom/android/contacts/list/ContactListAdapter;
    .registers 3

    .prologue
    .line 257
    new-instance v0, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListAdapter;

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListAdapter;-><init>(Landroid/content/Context;)V

    .line 259
    .local v0, adapter:Lcom/sec/android/app/contacts/group/GroupMemberBrowseListAdapter;
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->isSectionHeaderDisplayEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListAdapter;->setSectionHeaderDisplayEnabled(Z)V

    .line 261
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListAdapter;->setDisplayPhotos(Z)V

    .line 265
    return-object v0
.end method

.method public isLoading()Z
    .registers 4

    .prologue
    .line 792
    const/4 v0, 0x0

    .line 794
    .local v0, isLoading:Z
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->getFakeQueryStatus()I

    move-result v1

    .line 798
    .local v1, status:I
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->isFakeQueryModeEnabled()Z

    move-result v2

    if-eqz v2, :cond_12

    .line 800
    const/4 v2, 0x4

    if-eq v1, v2, :cond_10

    const/4 v0, 0x1

    .line 810
    :goto_f
    return v0

    .line 800
    :cond_10
    const/4 v0, 0x0

    goto :goto_f

    .line 804
    :cond_12
    invoke-super {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->isLoading()Z

    move-result v0

    goto :goto_f
.end method

.method public loadGroup(Lcom/sec/android/app/contacts/group/GroupInfo;)V
    .registers 4
    .parameter "groupInfo"

    .prologue
    .line 225
    iput-object p1, p0, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->mGroupInfo:Lcom/sec/android/app/contacts/group/GroupInfo;

    .line 227
    invoke-static {p1}, Lcom/sec/android/app/contacts/util/ContactsUtil;->parseGroupType(Lcom/sec/android/app/contacts/group/GroupInfo;)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->mGroupType:I

    .line 229
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListAdapter;

    .line 231
    .local v0, adapter:Lcom/sec/android/app/contacts/group/GroupMemberBrowseListAdapter;
    iget v1, p0, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->mGroupType:I

    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListAdapter;->setMode(I)V

    .line 233
    invoke-virtual {v0, p1}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListAdapter;->setGroupInfo(Lcom/sec/android/app/contacts/group/GroupInfo;)V

    .line 235
    return-void
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .registers 7
    .parameter "item"

    .prologue
    const/4 v2, 0x1

    .line 686
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v3

    sparse-switch v3, :sswitch_data_44

    .line 724
    const/4 v2, 0x0

    :goto_9
    return v2

    .line 690
    :sswitch_a
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-interface {p1}, Landroid/view/MenuItem;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/Activity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_9

    .line 698
    :sswitch_16
    invoke-interface {p1}, Landroid/view/MenuItem;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 700
    .local v0, contactUri:Landroid/net/Uri;
    new-instance v1, Landroid/content/Intent;

    const-string v3, "com.android.contacts.action.SEND_INFO"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 702
    .local v1, intent:Landroid/content/Intent;
    const-string v3, "CONTACT_URI"

    invoke-virtual {v1, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 704
    const-string v3, "mode"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 706
    const-string v3, "direct_launch"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 708
    invoke-virtual {p0, v1}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_9

    .line 716
    .end local v0           #contactUri:Landroid/net/Uri;
    .end local v1           #intent:Landroid/content/Intent;
    :sswitch_38
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-interface {p1}, Landroid/view/MenuItem;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/Activity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_9

    .line 686
    :sswitch_data_44
    .sparse-switch
        0x7f0d0257 -> :sswitch_16
        0x7f0d0258 -> :sswitch_38
        0x7f0d0272 -> :sswitch_a
    .end sparse-switch
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .registers 18
    .parameter "menu"
    .parameter "view"
    .parameter "menuInfo"

    .prologue
    .line 600
    iget v11, p0, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->mGroupType:I

    const/4 v12, 0x1

    if-ne v11, v12, :cond_6

    .line 674
    :goto_5
    return-void

    .line 608
    :cond_6
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/list/ContactListAdapter;

    .local v0, adapter:Lcom/android/contacts/list/ContactListAdapter;
    move-object/from16 v7, p3

    .line 610
    check-cast v7, Lcom/sec/android/touchwiz/widget/TwAdapterView$AdapterContextMenuInfo;

    .line 612
    .local v7, info:Lcom/sec/android/touchwiz/widget/TwAdapterView$AdapterContextMenuInfo;
    iget v11, v7, Lcom/sec/android/touchwiz/widget/TwAdapterView$AdapterContextMenuInfo;->position:I

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->getListView()Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    move-result-object v12

    invoke-virtual {v12}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->getHeaderViewsCount()I

    move-result v12

    sub-int v1, v11, v12

    .line 614
    .local v1, adjPosition:I
    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ContactListAdapter;->getContactUri(I)Landroid/net/Uri;

    move-result-object v4

    .line 616
    .local v4, contactUri:Landroid/net/Uri;
    invoke-static {v4}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v2

    .line 620
    .local v2, contactId:J
    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ContactListAdapter;->getContactDisplayName(I)Ljava/lang/String;

    move-result-object v11

    invoke-interface {p1, v11}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 624
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v11

    invoke-virtual {v11}, Landroid/app/Activity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v6

    .line 626
    .local v6, inflater:Landroid/view/MenuInflater;
    const v11, 0x7f10000b

    invoke-virtual {v6, v11, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 632
    iget v11, p0, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->mGroupType:I

    const/4 v12, 0x2

    if-ne v11, v12, :cond_99

    .line 634
    const/4 v11, 0x1

    new-array v8, v11, [J

    const/4 v11, 0x0

    aput-wide v2, v8, v11

    .line 636
    .local v8, membersToEditArray:[J
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->getContext()Landroid/content/Context;

    move-result-object v11

    iget-object v12, p0, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->mGroupInfo:Lcom/sec/android/app/contacts/group/GroupInfo;

    const/4 v13, 0x4

    invoke-static {v11, v12, v8, v13}, Lcom/android/contacts/ContactSaveService;->createMemberUpdateOnlyIntent(Landroid/content/Context;Lcom/sec/android/app/contacts/group/GroupInfo;[JI)Landroid/content/Intent;

    move-result-object v9

    .line 640
    .local v9, removeIntent:Landroid/content/Intent;
    const v11, 0x7f0d0272

    invoke-interface {p1, v11}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v11

    invoke-interface {v11, v9}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    .line 652
    .end local v8           #membersToEditArray:[J
    .end local v9           #removeIntent:Landroid/content/Intent;
    :goto_59
    new-instance v10, Landroid/content/Intent;

    invoke-direct {v10}, Landroid/content/Intent;-><init>()V

    .line 654
    .local v10, sendInfoIntent:Landroid/content/Intent;
    invoke-virtual {v10, v4}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 656
    const v11, 0x7f0d0257

    invoke-interface {p1, v11}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v11

    invoke-interface {v11, v10}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    .line 662
    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ContactListAdapter;->isContactStarred(I)Z

    move-result v11

    if-eqz v11, :cond_7e

    .line 664
    const v11, 0x7f0d0258

    invoke-interface {p1, v11}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v11

    const v12, 0x7f0a0023

    invoke-interface {v11, v12}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 668
    :cond_7e
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->getContext()Landroid/content/Context;

    move-result-object v12

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ContactListAdapter;->isContactStarred(I)Z

    move-result v11

    if-nez v11, :cond_a5

    const/4 v11, 0x1

    :goto_89
    invoke-static {v12, v4, v11}, Lcom/android/contacts/ContactSaveService;->createSetStarredIntent(Landroid/content/Context;Landroid/net/Uri;Z)Landroid/content/Intent;

    move-result-object v5

    .line 672
    .local v5, favoriteIntent:Landroid/content/Intent;
    const v11, 0x7f0d0258

    invoke-interface {p1, v11}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v11

    invoke-interface {v11, v5}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    goto/16 :goto_5

    .line 644
    .end local v5           #favoriteIntent:Landroid/content/Intent;
    .end local v10           #sendInfoIntent:Landroid/content/Intent;
    :cond_99
    const v11, 0x7f0d0272

    invoke-interface {p1, v11}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v11

    const/4 v12, 0x0

    invoke-interface {v11, v12}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_59

    .line 668
    .restart local v10       #sendInfoIntent:Landroid/content/Intent;
    :cond_a5
    const/4 v11, 0x0

    goto :goto_89
.end method

.method protected onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)V
    .registers 7
    .parameter "inflater"
    .parameter "container"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 274
    invoke-super {p0, p1, p2}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)V

    .line 275
    const v1, 0x7f0400d3

    invoke-virtual {p1, v1, v3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 276
    .local v0, view:Landroid/view/View;
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->getListView()Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    move-result-object v1

    invoke-virtual {v1, v0, v3, v2}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 277
    return-void
.end method

.method protected onItemClick(IJ)V
    .registers 6
    .parameter "position"
    .parameter "id"

    .prologue
    .line 734
    iget-object v1, p0, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->mListener:Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment$Listener;

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/list/ContactListAdapter;

    invoke-virtual {v0, p1}, Lcom/android/contacts/list/ContactListAdapter;->getContactUri(I)Landroid/net/Uri;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment$Listener;->onContactSelected(Landroid/net/Uri;)V

    .line 736
    return-void
.end method

.method public onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V
    .registers 6
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
    .local p1, loader:Landroid/content/Loader;,"Landroid/content/Loader<Landroid/database/Cursor;>;"
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 299
    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-gtz v0, :cond_19

    move v0, v1

    :goto_9
    invoke-direct {p0, v0}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->configureEmptyView(Z)V

    .line 301
    invoke-super {p0, p1, p2}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V

    .line 307
    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-gtz v0, :cond_1b

    :goto_15
    invoke-direct {p0, v1}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->updateMenuBtnVisible(Z)V

    .line 309
    return-void

    :cond_19
    move v0, v2

    .line 299
    goto :goto_9

    :cond_1b
    move v1, v2

    .line 307
    goto :goto_15
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 103
    check-cast p2, Landroid/database/Cursor;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V

    return-void
.end method

.method public setIsEditableGroup(Z)V
    .registers 2
    .parameter "isEditable"

    .prologue
    .line 238
    iput-boolean p1, p0, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->mIsEditable:Z

    .line 240
    invoke-direct {p0}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->updateAddBtnVisible()V

    .line 241
    return-void
.end method

.method public setListener(Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment$Listener;)V
    .registers 2
    .parameter "value"

    .prologue
    .line 205
    iput-object p1, p0, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->mListener:Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment$Listener;

    .line 207
    return-void
.end method

.method protected setProfileHeader()V
    .registers 2

    .prologue
    .line 217
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->showEmptyUserProfile(Z)V

    .line 219
    return-void
.end method

.method protected showCount(ILandroid/database/Cursor;)V
    .registers 7
    .parameter "partitionIndex"
    .parameter "data"

    .prologue
    const/4 v2, 0x0

    .line 760
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->getFakeQueryStatus()I

    move-result v1

    .line 762
    .local v1, status:I
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->isFakeQueryModeEnabled()Z

    move-result v3

    if-eqz v3, :cond_f

    const/4 v3, 0x2

    if-gt v1, v3, :cond_f

    .line 778
    :goto_e
    return-void

    .line 770
    :cond_f
    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result v0

    .line 772
    .local v0, size:I
    iget-boolean v3, p0, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->mUserProfileExists:Z

    if-eqz v3, :cond_26

    const/4 v3, 0x1

    :goto_18
    sub-int/2addr v0, v3

    .line 774
    if-gez v0, :cond_1c

    move v0, v2

    .line 776
    :cond_1c
    iget-object v2, p0, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->mListener:Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment$Listener;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment$Listener;->onGroupSizeUpdated(Ljava/lang/String;)V

    goto :goto_e

    :cond_26
    move v3, v2

    .line 772
    goto :goto_18
.end method
