.class public Lcom/vlingo/client/superdialer/SuperDialerActivity;
.super Lcom/vlingo/client/ui/VLActivity;
.source "SuperDialerActivity.java"

# interfaces
.implements Lcom/vlingo/client/core/contacts/ContactsMatcherListener;
.implements Lcom/vlingo/client/superdialer/SDContactsListAdaptor$SDContactClickListener;
.implements Lcom/vlingo/client/superdialer/SDBusinessListAdaptor$SDBusinessAdaptorClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vlingo/client/superdialer/SuperDialerActivity$DialListAdaptor;
    }
.end annotation


# static fields
.field private static final EVENT_AUTO_DIAL:I = 0x2

.field private static final EVENT_LOCAL_SEARCH:I = 0xc9

.field private static final EVENT_SEARCH:I = 0x0

.field private static final EVENT_SEARCH_WITH_QUERY:I = 0x1

.field public static final EXTRA_AUTODIAL_COUNTDOWN_ENABLED:Ljava/lang/String; = "com.vlingo.client.autodialcountdown.enabled"

.field public static final EXTRA_AUTODIAL_COUNTDOWN_TIME_MS:Ljava/lang/String; = "com.vlingo.client.autodialcountdown.msec"

.field public static final EXTRA_AUTODIAL_ENABLED:Ljava/lang/String; = "com.vlingo.client.autodial.enabled"

.field public static final EXTRA_LOCATION:Ljava/lang/String; = "com.vlingo.client.location"

.field public static final EXTRA_MODE:Ljava/lang/String; = "com.vlingo.client.mode"

.field public static final EXTRA_MODE_LOCAL_SEARCH_ONLY:Ljava/lang/String; = "com.vlingo.client.mode.localsearch"

.field public static final EXTRA_MODE_SUPERDIAL_BUSINESS:Ljava/lang/String; = "com.vlingo.client.mode.business"

.field public static final EXTRA_MODE_SUPERDIAL_CONTACT:Ljava/lang/String; = "com.vlingo.client.mode.contact"

.field public static final EXTRA_MODE_VOICE_DIAL_ONLY:Ljava/lang/String; = "com.vlingo.client.mode.voicedial"

.field public static final EXTRA_PHONE_TYPES:Ljava/lang/String; = "com.vlingo.client.phoneTypes"

.field public static final EXTRA_SEARCH_QUERY:Ljava/lang/String; = "query"

.field private static final FIELD_ID_LOCALSEARCH:Ljava/lang/String; = "vp_ls"

.field private static final FIELD_ID_SUPERDIALER:Ljava/lang/String; = "vp_superdial"


# instance fields
.field acceptedItemName:Ljava/lang/String;

.field acceptedItemType:Ljava/lang/String;

.field private autoActionAttempted:Z

.field private autodialCountdownEnabled:Z

.field private autodialCountdownTimeMs:I

.field private businessAdaptor:Lcom/vlingo/client/superdialer/SDBusinessListAdaptor;

.field private businessListView:Landroid/widget/ListView;

.field collapsedHeaderHeightCache:I

.field private contactsAdaptor:Lcom/vlingo/client/superdialer/SDContactsListAdaptor;

.field private contactsListView:Landroid/widget/ListView;

.field private contactsMatcher:Lcom/vlingo/client/contacts/VLContactsMatcher;

.field private curSearchText:Ljava/lang/String;

.field private curSpokenLocation:Ljava/lang/String;

.field private currentListView:Landroid/widget/ListView;

.field private defaultToBusiness:Z

.field private eventHandler:Landroid/os/Handler;

.field private fieldId:Ljava/lang/String;

.field private firstView:Z

.field volatile ignoreTextChange:Z

.field private isLocalSearchOnlyMode:Z

.field private isVoiceDialOnlyMode:Z

.field private listContainerLayout:Landroid/view/ViewGroup;

.field private lsManager:Lcom/vlingo/client/localsearch/service/LocalSearchServiceManager;

.field private pageId:Ljava/lang/String;

.field private phoneTypes:[I

.field private searchBox:Landroid/widget/EditText;

.field private speakButton:Landroid/widget/ImageButton;


# direct methods
.method public constructor <init>()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 137
    invoke-direct {p0}, Lcom/vlingo/client/ui/VLActivity;-><init>()V

    .line 121
    const-string v0, ""

    iput-object v0, p0, Lcom/vlingo/client/superdialer/SuperDialerActivity;->acceptedItemName:Ljava/lang/String;

    .line 122
    const-string v0, "dial:def"

    iput-object v0, p0, Lcom/vlingo/client/superdialer/SuperDialerActivity;->acceptedItemType:Ljava/lang/String;

    .line 124
    iput-boolean v1, p0, Lcom/vlingo/client/superdialer/SuperDialerActivity;->autodialCountdownEnabled:Z

    .line 125
    const/16 v0, 0xfa0

    iput v0, p0, Lcom/vlingo/client/superdialer/SuperDialerActivity;->autodialCountdownTimeMs:I

    .line 127
    iput-boolean v1, p0, Lcom/vlingo/client/superdialer/SuperDialerActivity;->autoActionAttempted:Z

    .line 128
    iput-boolean v2, p0, Lcom/vlingo/client/superdialer/SuperDialerActivity;->firstView:Z

    .line 129
    iput-boolean v2, p0, Lcom/vlingo/client/superdialer/SuperDialerActivity;->defaultToBusiness:Z

    .line 131
    iput-object v3, p0, Lcom/vlingo/client/superdialer/SuperDialerActivity;->pageId:Ljava/lang/String;

    .line 132
    iput-object v3, p0, Lcom/vlingo/client/superdialer/SuperDialerActivity;->fieldId:Ljava/lang/String;

    .line 134
    iput-boolean v1, p0, Lcom/vlingo/client/superdialer/SuperDialerActivity;->isLocalSearchOnlyMode:Z

    .line 135
    iput-boolean v1, p0, Lcom/vlingo/client/superdialer/SuperDialerActivity;->isVoiceDialOnlyMode:Z

    .line 279
    iput v1, p0, Lcom/vlingo/client/superdialer/SuperDialerActivity;->collapsedHeaderHeightCache:I

    .line 658
    iput-boolean v1, p0, Lcom/vlingo/client/superdialer/SuperDialerActivity;->ignoreTextChange:Z

    .line 138
    return-void
.end method

.method static synthetic access$000(Lcom/vlingo/client/superdialer/SuperDialerActivity;)Landroid/widget/ListView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/vlingo/client/superdialer/SuperDialerActivity;->businessListView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/vlingo/client/superdialer/SuperDialerActivity;Landroid/widget/ListView;Z)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 68
    invoke-direct {p0, p1, p2}, Lcom/vlingo/client/superdialer/SuperDialerActivity;->doShowList(Landroid/widget/ListView;Z)V

    return-void
.end method

.method static synthetic access$1000(Lcom/vlingo/client/superdialer/SuperDialerActivity;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/vlingo/client/superdialer/SuperDialerActivity;->hideKeyboard()V

    return-void
.end method

.method static synthetic access$1100(Lcom/vlingo/client/superdialer/SuperDialerActivity;Ljava/lang/String;ZZ)V
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 68
    invoke-direct {p0, p1, p2, p3}, Lcom/vlingo/client/superdialer/SuperDialerActivity;->executeSearch(Ljava/lang/String;ZZ)V

    return-void
.end method

.method static synthetic access$1200(Lcom/vlingo/client/superdialer/SuperDialerActivity;ILjava/lang/String;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 68
    invoke-direct {p0, p1, p2}, Lcom/vlingo/client/superdialer/SuperDialerActivity;->dialContact(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/vlingo/client/superdialer/SuperDialerActivity;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/vlingo/client/superdialer/SuperDialerActivity;->fieldId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$302(Lcom/vlingo/client/superdialer/SuperDialerActivity;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 68
    iput-boolean p1, p0, Lcom/vlingo/client/superdialer/SuperDialerActivity;->defaultToBusiness:Z

    return p1
.end method

.method static synthetic access$400(Lcom/vlingo/client/superdialer/SuperDialerActivity;)Landroid/os/Handler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/vlingo/client/superdialer/SuperDialerActivity;->eventHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$500(Lcom/vlingo/client/superdialer/SuperDialerActivity;)Landroid/widget/EditText;
    .registers 2
    .parameter "x0"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/vlingo/client/superdialer/SuperDialerActivity;->searchBox:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$600(Lcom/vlingo/client/superdialer/SuperDialerActivity;Ljava/lang/String;Z)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 68
    invoke-direct {p0, p1, p2}, Lcom/vlingo/client/superdialer/SuperDialerActivity;->executeSearch(Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$700(Lcom/vlingo/client/superdialer/SuperDialerActivity;Ljava/lang/String;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 68
    invoke-direct {p0, p1}, Lcom/vlingo/client/superdialer/SuperDialerActivity;->updateTextBoxWithoutSearching(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$800(Lcom/vlingo/client/superdialer/SuperDialerActivity;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/vlingo/client/superdialer/SuperDialerActivity;->startAutoDialActivity()V

    return-void
.end method

.method static synthetic access$902(Lcom/vlingo/client/superdialer/SuperDialerActivity;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 68
    iput-object p1, p0, Lcom/vlingo/client/superdialer/SuperDialerActivity;->curSpokenLocation:Ljava/lang/String;

    return-object p1
.end method

.method private dialContact(ILjava/lang/String;)V
    .registers 4
    .parameter "contactId"
    .parameter "address"

    .prologue
    .line 701
    iget-object v0, p0, Lcom/vlingo/client/superdialer/SuperDialerActivity;->contactsMatcher:Lcom/vlingo/client/contacts/VLContactsMatcher;

    invoke-virtual {v0, p1, p2}, Lcom/vlingo/client/contacts/VLContactsMatcher;->notifyContactUsed(ILjava/lang/String;)V

    .line 702
    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Lcom/vlingo/client/superdialer/SuperDialerActivity;->launchAction(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 703
    invoke-virtual {p0}, Lcom/vlingo/client/superdialer/SuperDialerActivity;->finish()V

    .line 704
    :cond_f
    return-void
.end method

.method private doShowList(Landroid/widget/ListView;)V
    .registers 3
    .parameter "whichList"

    .prologue
    .line 291
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/vlingo/client/superdialer/SuperDialerActivity;->doShowList(Landroid/widget/ListView;Z)V

    .line 292
    return-void
.end method

.method private doShowList(Landroid/widget/ListView;Z)V
    .registers 12
    .parameter "whichList"
    .parameter "updateAdaptorsOnBusinessShown"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    const/high16 v6, 0x3f80

    const/4 v5, 0x0

    const/4 v4, -0x1

    .line 295
    iget-object v1, p0, Lcom/vlingo/client/superdialer/SuperDialerActivity;->currentListView:Landroid/widget/ListView;

    if-eq p1, v1, :cond_3e

    .line 296
    iput-object p1, p0, Lcom/vlingo/client/superdialer/SuperDialerActivity;->currentListView:Landroid/widget/ListView;

    .line 297
    invoke-direct {p0}, Lcom/vlingo/client/superdialer/SuperDialerActivity;->getCollapsedHeaderHeight()I

    move-result v0

    .line 298
    .local v0, collapsed_height:I
    iget-object v1, p0, Lcom/vlingo/client/superdialer/SuperDialerActivity;->contactsListView:Landroid/widget/ListView;

    if-ne p1, v1, :cond_3f

    .line 299
    iget-object v1, p0, Lcom/vlingo/client/superdialer/SuperDialerActivity;->contactsAdaptor:Lcom/vlingo/client/superdialer/SDContactsListAdaptor;

    invoke-virtual {v1, v8}, Lcom/vlingo/client/superdialer/SDContactsListAdaptor;->notifyListShowing(Z)V

    .line 300
    iget-object v1, p0, Lcom/vlingo/client/superdialer/SuperDialerActivity;->businessAdaptor:Lcom/vlingo/client/superdialer/SDBusinessListAdaptor;

    iget-object v2, p0, Lcom/vlingo/client/superdialer/SuperDialerActivity;->searchBox:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/vlingo/client/superdialer/SuperDialerActivity;->curSpokenLocation:Ljava/lang/String;

    invoke-virtual {v1, v7, v2, v3}, Lcom/vlingo/client/superdialer/SDBusinessListAdaptor;->notifyListShowing(ZLjava/lang/String;Ljava/lang/String;)V

    .line 301
    iget-object v1, p0, Lcom/vlingo/client/superdialer/SuperDialerActivity;->contactsListView:Landroid/widget/ListView;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v4, v4, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 303
    iget-object v1, p0, Lcom/vlingo/client/superdialer/SuperDialerActivity;->businessListView:Landroid/widget/ListView;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v4, v0, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 314
    .end local v0           #collapsed_height:I
    :cond_3e
    :goto_3e
    return-void

    .line 304
    .restart local v0       #collapsed_height:I
    :cond_3f
    iget-object v1, p0, Lcom/vlingo/client/superdialer/SuperDialerActivity;->businessListView:Landroid/widget/ListView;

    if-ne p1, v1, :cond_3e

    .line 305
    if-eqz p2, :cond_5b

    .line 306
    iget-object v1, p0, Lcom/vlingo/client/superdialer/SuperDialerActivity;->contactsAdaptor:Lcom/vlingo/client/superdialer/SDContactsListAdaptor;

    invoke-virtual {v1, v7}, Lcom/vlingo/client/superdialer/SDContactsListAdaptor;->notifyListShowing(Z)V

    .line 307
    iget-object v1, p0, Lcom/vlingo/client/superdialer/SuperDialerActivity;->businessAdaptor:Lcom/vlingo/client/superdialer/SDBusinessListAdaptor;

    iget-object v2, p0, Lcom/vlingo/client/superdialer/SuperDialerActivity;->searchBox:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/vlingo/client/superdialer/SuperDialerActivity;->curSpokenLocation:Ljava/lang/String;

    invoke-virtual {v1, v8, v2, v3}, Lcom/vlingo/client/superdialer/SDBusinessListAdaptor;->notifyListShowing(ZLjava/lang/String;Ljava/lang/String;)V

    .line 309
    :cond_5b
    iget-object v1, p0, Lcom/vlingo/client/superdialer/SuperDialerActivity;->contactsListView:Landroid/widget/ListView;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v4, v0, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 310
    iget-object v1, p0, Lcom/vlingo/client/superdialer/SuperDialerActivity;->businessListView:Landroid/widget/ListView;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v4, v4, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_3e
.end method

.method private executeContactSearch(Ljava/lang/String;)V
    .registers 5
    .parameter "query"

    .prologue
    .line 495
    iget-boolean v1, p0, Lcom/vlingo/client/superdialer/SuperDialerActivity;->isLocalSearchOnlyMode:Z

    if-nez v1, :cond_14

    .line 496
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/vlingo/client/superdialer/SuperDialerActivity;->curSpokenLocation:Ljava/lang/String;

    .line 499
    iget-object v1, p0, Lcom/vlingo/client/superdialer/SuperDialerActivity;->contactsMatcher:Lcom/vlingo/client/contacts/VLContactsMatcher;

    const/high16 v2, 0x42c8

    invoke-virtual {v1, p1, v2}, Lcom/vlingo/client/contacts/VLContactsMatcher;->startSearch(Ljava/lang/String;F)Lcom/vlingo/client/core/contacts/VlingoContact;

    move-result-object v0

    .line 502
    .local v0, tc:Lcom/vlingo/client/core/contacts/VlingoContact;
    iget-object v1, p0, Lcom/vlingo/client/superdialer/SuperDialerActivity;->contactsAdaptor:Lcom/vlingo/client/superdialer/SDContactsListAdaptor;

    invoke-virtual {v1, p1}, Lcom/vlingo/client/superdialer/SDContactsListAdaptor;->notifyQueryUpdated(Ljava/lang/CharSequence;)V

    .line 504
    .end local v0           #tc:Lcom/vlingo/client/core/contacts/VlingoContact;
    :cond_14
    return-void
.end method

.method private executeSearch(Ljava/lang/String;Z)V
    .registers 4
    .parameter "query"
    .parameter "fromRecognition"

    .prologue
    .line 451
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/vlingo/client/superdialer/SuperDialerActivity;->executeSearch(Ljava/lang/String;ZZ)V

    .line 452
    return-void
.end method

.method private executeSearch(Ljava/lang/String;ZZ)V
    .registers 9
    .parameter "query"
    .parameter "fromRecognition"
    .parameter "hurryUpLocalSearch"

    .prologue
    const/16 v4, 0xc9

    .line 455
    if-eqz p1, :cond_12

    const-string v2, " "

    const-string v3, ""

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_2c

    .line 456
    :cond_12
    const-string p1, ""

    .line 464
    :cond_14
    iput-object p1, p0, Lcom/vlingo/client/superdialer/SuperDialerActivity;->curSearchText:Ljava/lang/String;

    .line 467
    invoke-direct {p0, p1}, Lcom/vlingo/client/superdialer/SuperDialerActivity;->executeContactSearch(Ljava/lang/String;)V

    .line 469
    if-eqz p2, :cond_50

    .line 470
    iget-boolean v2, p0, Lcom/vlingo/client/superdialer/SuperDialerActivity;->defaultToBusiness:Z

    if-nez v2, :cond_23

    iget-boolean v2, p0, Lcom/vlingo/client/superdialer/SuperDialerActivity;->isLocalSearchOnlyMode:Z

    if-eqz v2, :cond_43

    .line 471
    :cond_23
    iget-object v2, p0, Lcom/vlingo/client/superdialer/SuperDialerActivity;->businessListView:Landroid/widget/ListView;

    invoke-direct {p0, v2}, Lcom/vlingo/client/superdialer/SuperDialerActivity;->showList(Landroid/widget/ListView;)V

    .line 472
    invoke-virtual {p0, p1}, Lcom/vlingo/client/superdialer/SuperDialerActivity;->executeBusinessSearch(Ljava/lang/String;)V

    .line 492
    :goto_2b
    return-void

    .line 457
    :cond_2c
    if-eqz p1, :cond_14

    iget-object v2, p0, Lcom/vlingo/client/superdialer/SuperDialerActivity;->curSearchText:Ljava/lang/String;

    if-eqz v2, :cond_14

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/vlingo/client/superdialer/SuperDialerActivity;->curSearchText:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_14

    goto :goto_2b

    .line 474
    :cond_43
    iget-object v2, p0, Lcom/vlingo/client/superdialer/SuperDialerActivity;->contactsListView:Landroid/widget/ListView;

    invoke-direct {p0, v2}, Lcom/vlingo/client/superdialer/SuperDialerActivity;->showList(Landroid/widget/ListView;)V

    .line 475
    iget-object v2, p0, Lcom/vlingo/client/superdialer/SuperDialerActivity;->businessAdaptor:Lcom/vlingo/client/superdialer/SDBusinessListAdaptor;

    iget-object v3, p0, Lcom/vlingo/client/superdialer/SuperDialerActivity;->curSpokenLocation:Ljava/lang/String;

    invoke-virtual {v2, p1, v3}, Lcom/vlingo/client/superdialer/SDBusinessListAdaptor;->resetSearch(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2b

    .line 477
    :cond_50
    iget-object v2, p0, Lcom/vlingo/client/superdialer/SuperDialerActivity;->currentListView:Landroid/widget/ListView;

    iget-object v3, p0, Lcom/vlingo/client/superdialer/SuperDialerActivity;->businessListView:Landroid/widget/ListView;

    if-ne v2, v3, :cond_7c

    .line 478
    if-eqz p3, :cond_5c

    .line 479
    invoke-virtual {p0, p1}, Lcom/vlingo/client/superdialer/SuperDialerActivity;->executeBusinessSearch(Ljava/lang/String;)V

    goto :goto_2b

    .line 481
    :cond_5c
    iget-object v2, p0, Lcom/vlingo/client/superdialer/SuperDialerActivity;->eventHandler:Landroid/os/Handler;

    invoke-virtual {v2, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 482
    iget-object v2, p0, Lcom/vlingo/client/superdialer/SuperDialerActivity;->eventHandler:Landroid/os/Handler;

    invoke-virtual {v2, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 483
    .local v1, m:Landroid/os/Message;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 484
    .local v0, data:Landroid/os/Bundle;
    const-string v2, "query"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 485
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 486
    iget-object v2, p0, Lcom/vlingo/client/superdialer/SuperDialerActivity;->eventHandler:Landroid/os/Handler;

    const-wide/16 v3, 0x5dc

    invoke-virtual {v2, v1, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_2b

    .line 490
    .end local v0           #data:Landroid/os/Bundle;
    .end local v1           #m:Landroid/os/Message;
    :cond_7c
    iget-object v2, p0, Lcom/vlingo/client/superdialer/SuperDialerActivity;->businessAdaptor:Lcom/vlingo/client/superdialer/SDBusinessListAdaptor;

    iget-object v3, p0, Lcom/vlingo/client/superdialer/SuperDialerActivity;->curSpokenLocation:Ljava/lang/String;

    invoke-virtual {v2, p1, v3}, Lcom/vlingo/client/superdialer/SDBusinessListAdaptor;->resetSearch(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2b
.end method

.method private getCollapsedHeaderHeight()I
    .registers 4

    .prologue
    .line 281
    iget v2, p0, Lcom/vlingo/client/superdialer/SuperDialerActivity;->collapsedHeaderHeightCache:I

    if-nez v2, :cond_1c

    .line 282
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 283
    .local v1, metrics:Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Lcom/vlingo/client/superdialer/SuperDialerActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 284
    iget v0, v1, Landroid/util/DisplayMetrics;->density:F

    .line 285
    .local v0, density:F
    const/high16 v2, 0x4220

    mul-float/2addr v2, v0

    float-to-int v2, v2

    iput v2, p0, Lcom/vlingo/client/superdialer/SuperDialerActivity;->collapsedHeaderHeightCache:I

    .line 287
    .end local v0           #density:F
    .end local v1           #metrics:Landroid/util/DisplayMetrics;
    :cond_1c
    iget v2, p0, Lcom/vlingo/client/superdialer/SuperDialerActivity;->collapsedHeaderHeightCache:I

    return v2
.end method

.method private handleIntent(Landroid/content/Intent;)V
    .registers 10
    .parameter "intent"

    .prologue
    const/16 v7, 0x8

    const/4 v6, 0x0

    .line 188
    const-string v3, "com.vlingo.client.phoneTypes"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getIntArrayExtra(Ljava/lang/String;)[I

    move-result-object v1

    .line 189
    .local v1, phoneTypes:[I
    if-eqz v1, :cond_d

    .line 190
    iput-object v1, p0, Lcom/vlingo/client/superdialer/SuperDialerActivity;->phoneTypes:[I

    .line 191
    :cond_d
    const-string v3, "com.vlingo.client.autodialcountdown.enabled"

    iget-boolean v4, p0, Lcom/vlingo/client/superdialer/SuperDialerActivity;->autodialCountdownEnabled:Z

    invoke-virtual {p1, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/vlingo/client/superdialer/SuperDialerActivity;->autodialCountdownEnabled:Z

    .line 192
    const-string v3, "com.vlingo.client.autodialcountdown.msec"

    iget v4, p0, Lcom/vlingo/client/superdialer/SuperDialerActivity;->autodialCountdownTimeMs:I

    invoke-virtual {p1, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/vlingo/client/superdialer/SuperDialerActivity;->autodialCountdownTimeMs:I

    .line 194
    const-string v3, "com.vlingo.client.location"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/vlingo/client/superdialer/SuperDialerActivity;->curSpokenLocation:Ljava/lang/String;

    .line 196
    invoke-direct {p0, p1}, Lcom/vlingo/client/superdialer/SuperDialerActivity;->setupAutoDial(Landroid/content/Intent;)V

    .line 198
    iget-object v3, p0, Lcom/vlingo/client/superdialer/SuperDialerActivity;->contactsMatcher:Lcom/vlingo/client/contacts/VLContactsMatcher;

    const-string v4, "call"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v1, v5}, Lcom/vlingo/client/contacts/VLContactsMatcher;->initialize(Ljava/lang/String;[I[I)V

    .line 200
    const-string v3, "query"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 205
    .local v2, query:Ljava/lang/String;
    const-string v3, "com.vlingo.client.mode"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 206
    .local v0, mode:Ljava/lang/String;
    const-string v3, "com.vlingo.client.mode.business"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/vlingo/client/superdialer/SuperDialerActivity;->defaultToBusiness:Z

    .line 207
    const-string v3, "com.vlingo.client.mode.localsearch"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/vlingo/client/superdialer/SuperDialerActivity;->isLocalSearchOnlyMode:Z

    .line 208
    const-string v3, "com.vlingo.client.mode.voicedial"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/vlingo/client/superdialer/SuperDialerActivity;->isVoiceDialOnlyMode:Z

    .line 210
    iget-boolean v3, p0, Lcom/vlingo/client/superdialer/SuperDialerActivity;->isVoiceDialOnlyMode:Z

    if-eqz v3, :cond_5e

    .line 211
    iput-boolean v6, p0, Lcom/vlingo/client/superdialer/SuperDialerActivity;->defaultToBusiness:Z

    .line 214
    :cond_5e
    iget-object v3, p0, Lcom/vlingo/client/superdialer/SuperDialerActivity;->searchBox:Landroid/widget/EditText;

    invoke-virtual {v3, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 215
    iget-object v3, p0, Lcom/vlingo/client/superdialer/SuperDialerActivity;->searchBox:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->clearFocus()V

    .line 217
    iget-boolean v3, p0, Lcom/vlingo/client/superdialer/SuperDialerActivity;->isLocalSearchOnlyMode:Z

    if-eqz v3, :cond_a6

    .line 218
    const v3, 0x7f090416

    invoke-virtual {p0, v3}, Lcom/vlingo/client/superdialer/SuperDialerActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/vlingo/client/superdialer/SuperDialerActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 219
    const-string v3, "localsearch"

    iput-object v3, p0, Lcom/vlingo/client/superdialer/SuperDialerActivity;->pageId:Ljava/lang/String;

    .line 220
    const-string v3, "vp_ls"

    iput-object v3, p0, Lcom/vlingo/client/superdialer/SuperDialerActivity;->fieldId:Ljava/lang/String;

    .line 221
    iget-object v3, p0, Lcom/vlingo/client/superdialer/SuperDialerActivity;->contactsListView:Landroid/widget/ListView;

    invoke-virtual {v3, v7}, Landroid/widget/ListView;->setVisibility(I)V

    .line 222
    iget-object v3, p0, Lcom/vlingo/client/superdialer/SuperDialerActivity;->businessListView:Landroid/widget/ListView;

    invoke-direct {p0, v3}, Lcom/vlingo/client/superdialer/SuperDialerActivity;->doShowList(Landroid/widget/ListView;)V

    .line 223
    invoke-virtual {p0, v2}, Lcom/vlingo/client/superdialer/SuperDialerActivity;->executeBusinessSearch(Ljava/lang/String;)V

    .line 240
    :goto_8b
    iget-boolean v3, p0, Lcom/vlingo/client/superdialer/SuperDialerActivity;->firstView:Z

    if-eqz v3, :cond_a2

    .line 241
    iget-object v3, p0, Lcom/vlingo/client/superdialer/SuperDialerActivity;->pageId:Ljava/lang/String;

    if-eqz v3, :cond_a0

    iget-boolean v3, p0, Lcom/vlingo/client/superdialer/SuperDialerActivity;->firstView:Z

    if-eqz v3, :cond_a0

    .line 242
    invoke-static {}, Lcom/vlingo/client/userlogging/UserLoggingEngine;->getInstance()Lcom/vlingo/client/userlogging/UserLoggingEngine;

    move-result-object v3

    iget-object v4, p0, Lcom/vlingo/client/superdialer/SuperDialerActivity;->pageId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/vlingo/client/userlogging/UserLoggingEngine;->landingPageViewed(Ljava/lang/String;)V

    .line 244
    :cond_a0
    iput-boolean v6, p0, Lcom/vlingo/client/superdialer/SuperDialerActivity;->firstView:Z

    .line 247
    :cond_a2
    invoke-direct {p0}, Lcom/vlingo/client/superdialer/SuperDialerActivity;->setupTextChangedListener()V

    .line 249
    return-void

    .line 225
    :cond_a6
    const v3, 0x7f090044

    invoke-virtual {p0, v3}, Lcom/vlingo/client/superdialer/SuperDialerActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/vlingo/client/superdialer/SuperDialerActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 227
    iget-boolean v3, p0, Lcom/vlingo/client/superdialer/SuperDialerActivity;->defaultToBusiness:Z

    if-eqz v3, :cond_d8

    .line 228
    const-string v3, "superdialer-biz"

    iput-object v3, p0, Lcom/vlingo/client/superdialer/SuperDialerActivity;->pageId:Ljava/lang/String;

    .line 231
    :goto_b8
    const-string v3, "vp_superdial"

    iput-object v3, p0, Lcom/vlingo/client/superdialer/SuperDialerActivity;->fieldId:Ljava/lang/String;

    .line 232
    iget-object v3, p0, Lcom/vlingo/client/superdialer/SuperDialerActivity;->contactsListView:Landroid/widget/ListView;

    invoke-virtual {v3, v6}, Landroid/widget/ListView;->setVisibility(I)V

    .line 233
    iget-boolean v3, p0, Lcom/vlingo/client/superdialer/SuperDialerActivity;->defaultToBusiness:Z

    if-eqz v3, :cond_dd

    iget-object v3, p0, Lcom/vlingo/client/superdialer/SuperDialerActivity;->businessListView:Landroid/widget/ListView;

    :goto_c7
    invoke-direct {p0, v3}, Lcom/vlingo/client/superdialer/SuperDialerActivity;->doShowList(Landroid/widget/ListView;)V

    .line 234
    iget-boolean v3, p0, Lcom/vlingo/client/superdialer/SuperDialerActivity;->isVoiceDialOnlyMode:Z

    if-eqz v3, :cond_d3

    .line 235
    iget-object v3, p0, Lcom/vlingo/client/superdialer/SuperDialerActivity;->businessListView:Landroid/widget/ListView;

    invoke-virtual {v3, v7}, Landroid/widget/ListView;->setVisibility(I)V

    .line 237
    :cond_d3
    const/4 v3, 0x1

    invoke-direct {p0, v2, v3}, Lcom/vlingo/client/superdialer/SuperDialerActivity;->executeSearch(Ljava/lang/String;Z)V

    goto :goto_8b

    .line 230
    :cond_d8
    const-string v3, "superdialer-contact"

    iput-object v3, p0, Lcom/vlingo/client/superdialer/SuperDialerActivity;->pageId:Ljava/lang/String;

    goto :goto_b8

    .line 233
    :cond_dd
    iget-object v3, p0, Lcom/vlingo/client/superdialer/SuperDialerActivity;->contactsListView:Landroid/widget/ListView;

    goto :goto_c7
.end method

.method private hideKeyboard()V
    .registers 4

    .prologue
    .line 339
    const-string v1, "input_method"

    invoke-virtual {p0, v1}, Lcom/vlingo/client/superdialer/SuperDialerActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 340
    .local v0, mgr:Landroid/view/inputmethod/InputMethodManager;
    iget-object v1, p0, Lcom/vlingo/client/superdialer/SuperDialerActivity;->searchBox:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 341
    return-void
.end method

.method private launchAction(Ljava/lang/String;Z)Z
    .registers 7
    .parameter "address"
    .parameter "autoAction"

    .prologue
    .line 710
    const/4 v0, 0x0

    .line 714
    .local v0, action:Landroid/content/Intent;
    if-eqz p1, :cond_35

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_35

    .line 717
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "tel:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 718
    .local v1, url:Ljava/lang/String;
    new-instance v0, Landroid/content/Intent;

    .end local v0           #action:Landroid/content/Intent;
    const-string v2, "android.intent.action.CALL"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 719
    .restart local v0       #action:Landroid/content/Intent;
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 720
    iget-object v2, p0, Lcom/vlingo/client/superdialer/SuperDialerActivity;->acceptedItemName:Ljava/lang/String;

    iget-object v3, p0, Lcom/vlingo/client/superdialer/SuperDialerActivity;->acceptedItemType:Ljava/lang/String;

    invoke-direct {p0, v2, v3}, Lcom/vlingo/client/superdialer/SuperDialerActivity;->sendAcceptedText(Ljava/lang/String;Ljava/lang/String;)V

    .line 722
    .end local v1           #url:Ljava/lang/String;
    :cond_35
    if-eqz v0, :cond_41

    .line 723
    const/high16 v2, 0x1400

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 725
    invoke-virtual {p0, v0}, Lcom/vlingo/client/superdialer/SuperDialerActivity;->startActivity(Landroid/content/Intent;)V

    .line 726
    const/4 v2, 0x1

    .line 728
    :goto_40
    return v2

    :cond_41
    const/4 v2, 0x0

    goto :goto_40
.end method

.method private sendAcceptedText(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .parameter "acceptedName"
    .parameter "acceptedType"

    .prologue
    .line 768
    new-instance v0, Lcom/vlingo/client/core/recognizer/SRStatisticsCollection;

    invoke-direct {v0}, Lcom/vlingo/client/core/recognizer/SRStatisticsCollection;-><init>()V

    .line 769
    .local v0, collection:Lcom/vlingo/client/core/recognizer/SRStatisticsCollection;
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 770
    .local v1, text:Ljava/lang/StringBuffer;
    const-string v2, "<AcceptedText pt=\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 771
    invoke-virtual {v1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 772
    const-string v2, "\">"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 773
    const-string v2, "<Tag u=\"contact\">"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 774
    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 775
    const-string v2, "</Tag>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 776
    const-string v2, "</AcceptedText>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 777
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/vlingo/client/core/recognizer/SRStatisticsCollection;->setAcceptedText(Ljava/lang/String;)V

    .line 778
    invoke-static {}, Lcom/vlingo/client/android/core/asr/AndroidRecognitionManager;->getInstance()Lcom/vlingo/client/core/asr/RecognitionManager;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/vlingo/client/core/asr/RecognitionManager;->sendStatsToServer(Lcom/vlingo/client/core/recognizer/SRStatisticsCollection;)V

    .line 779
    return-void
.end method

.method private setupAutoDial(Landroid/content/Intent;)V
    .registers 7
    .parameter "intent"

    .prologue
    .line 591
    const/4 v1, 0x0

    .line 592
    .local v1, autoDialType:I
    const-string v3, "auto_dial"

    const-string v4, "confident"

    invoke-static {v3, v4}, Lcom/vlingo/client/settings/Settings;->getEnum(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 593
    .local v2, autodial:Ljava/lang/String;
    const-string v3, "com.vlingo.client.autodial.enabled"

    const/4 v4, 0x1

    invoke-virtual {p1, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 594
    .local v0, autoDialEnabled:Z
    if-eqz v0, :cond_1b

    .line 595
    const-string v3, "always"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_21

    .line 596
    const/4 v1, 0x2

    .line 603
    :cond_1b
    :goto_1b
    iget-object v3, p0, Lcom/vlingo/client/superdialer/SuperDialerActivity;->contactsMatcher:Lcom/vlingo/client/contacts/VLContactsMatcher;

    invoke-virtual {v3, v1}, Lcom/vlingo/client/contacts/VLContactsMatcher;->setAutoActionType(I)V

    .line 605
    return-void

    .line 597
    :cond_21
    const-string v3, "confident"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1b

    .line 598
    const/4 v1, 0x1

    goto :goto_1b
.end method

.method private setupEventHandler()V
    .registers 2

    .prologue
    .line 608
    iget-object v0, p0, Lcom/vlingo/client/superdialer/SuperDialerActivity;->eventHandler:Landroid/os/Handler;

    if-nez v0, :cond_b

    .line 609
    new-instance v0, Lcom/vlingo/client/superdialer/SuperDialerActivity$5;

    invoke-direct {v0, p0}, Lcom/vlingo/client/superdialer/SuperDialerActivity$5;-><init>(Lcom/vlingo/client/superdialer/SuperDialerActivity;)V

    iput-object v0, p0, Lcom/vlingo/client/superdialer/SuperDialerActivity;->eventHandler:Landroid/os/Handler;

    .line 635
    :cond_b
    return-void
.end method

.method private setupTextChangedListener()V
    .registers 3

    .prologue
    .line 661
    iget-object v0, p0, Lcom/vlingo/client/superdialer/SuperDialerActivity;->searchBox:Landroid/widget/EditText;

    new-instance v1, Lcom/vlingo/client/superdialer/SuperDialerActivity$6;

    invoke-direct {v1, p0}, Lcom/vlingo/client/superdialer/SuperDialerActivity$6;-><init>(Lcom/vlingo/client/superdialer/SuperDialerActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 698
    return-void
.end method

.method private showList(Landroid/widget/ListView;)V
    .registers 10
    .parameter "whichList"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 252
    iget-object v2, p0, Lcom/vlingo/client/superdialer/SuperDialerActivity;->currentListView:Landroid/widget/ListView;

    if-eq p1, v2, :cond_4f

    .line 253
    iget-object v2, p0, Lcom/vlingo/client/superdialer/SuperDialerActivity;->listContainerLayout:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getHeight()I

    move-result v2

    invoke-direct {p0}, Lcom/vlingo/client/superdialer/SuperDialerActivity;->getCollapsedHeaderHeight()I

    move-result v3

    mul-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    int-to-float v1, v2

    .line 254
    .local v1, delta:F
    iget-object v2, p0, Lcom/vlingo/client/superdialer/SuperDialerActivity;->businessListView:Landroid/widget/ListView;

    if-ne p1, v2, :cond_32

    .line 255
    const/high16 v2, -0x4080

    mul-float/2addr v1, v2

    .line 256
    iget-object v2, p0, Lcom/vlingo/client/superdialer/SuperDialerActivity;->contactsAdaptor:Lcom/vlingo/client/superdialer/SDContactsListAdaptor;

    invoke-virtual {v2, v6}, Lcom/vlingo/client/superdialer/SDContactsListAdaptor;->notifyListShowing(Z)V

    .line 257
    iget-object v2, p0, Lcom/vlingo/client/superdialer/SuperDialerActivity;->businessAdaptor:Lcom/vlingo/client/superdialer/SDBusinessListAdaptor;

    iget-object v3, p0, Lcom/vlingo/client/superdialer/SuperDialerActivity;->searchBox:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/vlingo/client/superdialer/SuperDialerActivity;->curSpokenLocation:Ljava/lang/String;

    invoke-virtual {v2, v7, v3, v4}, Lcom/vlingo/client/superdialer/SDBusinessListAdaptor;->notifyListShowing(ZLjava/lang/String;Ljava/lang/String;)V

    .line 259
    :cond_32
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    invoke-direct {v0, v5, v5, v5, v1}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 260
    .local v0, a:Landroid/view/animation/TranslateAnimation;
    new-instance v2, Lcom/vlingo/client/superdialer/SuperDialerActivity$2;

    invoke-direct {v2, p0, p1}, Lcom/vlingo/client/superdialer/SuperDialerActivity$2;-><init>(Lcom/vlingo/client/superdialer/SuperDialerActivity;Landroid/widget/ListView;)V

    invoke-virtual {v0, v2}, Landroid/view/animation/TranslateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 272
    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 273
    invoke-virtual {v0, v7}, Landroid/view/animation/TranslateAnimation;->setFillAfter(Z)V

    .line 274
    invoke-virtual {v0, v6}, Landroid/view/animation/TranslateAnimation;->setFillBefore(Z)V

    .line 275
    iget-object v2, p0, Lcom/vlingo/client/superdialer/SuperDialerActivity;->businessListView:Landroid/widget/ListView;

    invoke-virtual {v2, v0}, Landroid/widget/ListView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 277
    .end local v0           #a:Landroid/view/animation/TranslateAnimation;
    .end local v1           #delta:F
    :cond_4f
    return-void
.end method

.method private startAutoDialActivity()V
    .registers 8

    .prologue
    const/4 v6, 0x0

    .line 638
    iget-object v3, p0, Lcom/vlingo/client/superdialer/SuperDialerActivity;->contactsMatcher:Lcom/vlingo/client/contacts/VLContactsMatcher;

    invoke-virtual {v3}, Lcom/vlingo/client/contacts/VLContactsMatcher;->getTopChoice()Lcom/vlingo/client/core/contacts/VlingoContact;

    move-result-object v0

    .line 639
    .local v0, c:Lcom/vlingo/client/core/contacts/VlingoContact;
    invoke-virtual {v0}, Lcom/vlingo/client/core/contacts/VlingoContact;->getName()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/vlingo/client/superdialer/SuperDialerActivity;->acceptedItemName:Ljava/lang/String;

    .line 640
    new-instance v1, Landroid/content/Intent;

    const-class v3, Lcom/vlingo/client/contacts/AutoDialActivity;

    invoke-direct {v1, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 641
    .local v1, i:Landroid/content/Intent;
    const-string v3, "com.vlingo.client.autodial.name"

    invoke-virtual {v0}, Lcom/vlingo/client/core/contacts/VlingoContact;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 642
    const-string v3, "com.vlingo.client.autodial.contact_id"

    invoke-virtual {v0}, Lcom/vlingo/client/core/contacts/VlingoContact;->getId()I

    move-result v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 643
    const-string v3, "com.vlingo.client.autodial.address"

    invoke-virtual {v0, v6}, Lcom/vlingo/client/core/contacts/VlingoContact;->getDetail(I)Lcom/vlingo/client/core/contacts/ContactDetail;

    move-result-object v4

    invoke-virtual {v4}, Lcom/vlingo/client/core/contacts/ContactDetail;->getAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 644
    invoke-virtual {p0}, Lcom/vlingo/client/superdialer/SuperDialerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v0, v6}, Lcom/vlingo/client/core/contacts/VlingoContact;->getDetail(I)Lcom/vlingo/client/core/contacts/ContactDetail;

    move-result-object v4

    invoke-virtual {v4}, Lcom/vlingo/client/core/contacts/ContactDetail;->getType()I

    move-result v4

    const-string v5, ""

    invoke-static {v3, v4, v5}, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->getTypeLabel(Landroid/content/res/Resources;ILjava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 645
    .local v2, type:Ljava/lang/String;
    const-string v3, "com.vlingo.client.autodial.address_type"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 646
    const-string v3, "com.vlingo.client.autodial.countdownTime"

    iget v4, p0, Lcom/vlingo/client/superdialer/SuperDialerActivity;->autodialCountdownTimeMs:I

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 647
    const/high16 v3, 0x4008

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 648
    invoke-virtual {p0, v1, v6}, Lcom/vlingo/client/superdialer/SuperDialerActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 649
    return-void
.end method

.method private toggleActiveListView()V
    .registers 3

    .prologue
    .line 325
    iget-boolean v0, p0, Lcom/vlingo/client/superdialer/SuperDialerActivity;->isLocalSearchOnlyMode:Z

    if-nez v0, :cond_f

    .line 326
    iget-object v0, p0, Lcom/vlingo/client/superdialer/SuperDialerActivity;->currentListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/vlingo/client/superdialer/SuperDialerActivity;->contactsListView:Landroid/widget/ListView;

    if-ne v0, v1, :cond_10

    .line 327
    iget-object v0, p0, Lcom/vlingo/client/superdialer/SuperDialerActivity;->businessListView:Landroid/widget/ListView;

    invoke-direct {p0, v0}, Lcom/vlingo/client/superdialer/SuperDialerActivity;->showList(Landroid/widget/ListView;)V

    .line 332
    :cond_f
    :goto_f
    return-void

    .line 329
    :cond_10
    iget-object v0, p0, Lcom/vlingo/client/superdialer/SuperDialerActivity;->contactsListView:Landroid/widget/ListView;

    invoke-direct {p0, v0}, Lcom/vlingo/client/superdialer/SuperDialerActivity;->showList(Landroid/widget/ListView;)V

    goto :goto_f
.end method

.method private unpackSavedInstanceState(Landroid/os/Bundle;)V
    .registers 4
    .parameter "savedInstanceState"

    .prologue
    .line 390
    if-eqz p1, :cond_1c

    .line 391
    const-string v0, "AutoDialAttempted"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/vlingo/client/superdialer/SuperDialerActivity;->autoActionAttempted:Z

    .line 392
    const-string v0, "FirstView"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/vlingo/client/superdialer/SuperDialerActivity;->firstView:Z

    .line 393
    const-string v0, "SpokenLocation"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vlingo/client/superdialer/SuperDialerActivity;->curSpokenLocation:Ljava/lang/String;

    .line 395
    :cond_1c
    return-void
.end method

.method private updateTextBoxWithoutSearching(Ljava/lang/String;)V
    .registers 4
    .parameter "newText"

    .prologue
    .line 652
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/vlingo/client/superdialer/SuperDialerActivity;->ignoreTextChange:Z

    .line 653
    iget-object v1, p0, Lcom/vlingo/client/superdialer/SuperDialerActivity;->searchBox:Landroid/widget/EditText;

    invoke-virtual {v1, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 654
    iget-object v1, p0, Lcom/vlingo/client/superdialer/SuperDialerActivity;->searchBox:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 655
    .local v0, etext:Landroid/text/Editable;
    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v1

    invoke-static {v0, v1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 656
    return-void
.end method


# virtual methods
.method public executeBusinessSearch(Ljava/lang/String;)V
    .registers 4
    .parameter "query"

    .prologue
    .line 335
    iget-object v0, p0, Lcom/vlingo/client/superdialer/SuperDialerActivity;->businessAdaptor:Lcom/vlingo/client/superdialer/SDBusinessListAdaptor;

    iget-object v1, p0, Lcom/vlingo/client/superdialer/SuperDialerActivity;->curSpokenLocation:Ljava/lang/String;

    invoke-virtual {v0, p1, v1}, Lcom/vlingo/client/superdialer/SDBusinessListAdaptor;->executeSearch(Ljava/lang/String;Ljava/lang/String;)V

    .line 336
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 5
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 367
    const/4 v0, -0x1

    if-ne p2, v0, :cond_6

    .line 368
    invoke-virtual {p0}, Lcom/vlingo/client/superdialer/SuperDialerActivity;->finish()V

    .line 370
    :cond_6
    return-void
.end method

.method public onAutoAction(Lcom/vlingo/client/core/contacts/DisplayItem;)V
    .registers 4
    .parameter "contact"

    .prologue
    const/4 v1, 0x1

    .line 513
    iget-boolean v0, p0, Lcom/vlingo/client/superdialer/SuperDialerActivity;->autoActionAttempted:Z

    if-nez v0, :cond_1c

    iget-boolean v0, p0, Lcom/vlingo/client/superdialer/SuperDialerActivity;->isLocalSearchOnlyMode:Z

    if-nez v0, :cond_1c

    iget-boolean v0, p0, Lcom/vlingo/client/superdialer/SuperDialerActivity;->defaultToBusiness:Z

    if-nez v0, :cond_1c

    .line 514
    iput-boolean v1, p0, Lcom/vlingo/client/superdialer/SuperDialerActivity;->autoActionAttempted:Z

    .line 515
    invoke-static {v1}, Lcom/vlingo/client/android/core/asr/AndroidMsgDialog;->setIgnored(Z)V

    .line 516
    iget-boolean v0, p0, Lcom/vlingo/client/superdialer/SuperDialerActivity;->autodialCountdownEnabled:Z

    if-eqz v0, :cond_1d

    .line 518
    iget-object v0, p0, Lcom/vlingo/client/superdialer/SuperDialerActivity;->eventHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 526
    :cond_1c
    :goto_1c
    return-void

    .line 521
    :cond_1d
    invoke-virtual {p1}, Lcom/vlingo/client/core/contacts/DisplayItem;->getContactDetail()Lcom/vlingo/client/core/contacts/ContactDetail;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vlingo/client/core/contacts/ContactDetail;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v1}, Lcom/vlingo/client/superdialer/SuperDialerActivity;->launchAction(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 522
    invoke-virtual {p0}, Lcom/vlingo/client/superdialer/SuperDialerActivity;->finish()V

    goto :goto_1c
.end method

.method public onBackPressed()V
    .registers 4

    .prologue
    .line 353
    iget-object v0, p0, Lcom/vlingo/client/superdialer/SuperDialerActivity;->pageId:Ljava/lang/String;

    if-eqz v0, :cond_e

    .line 354
    invoke-static {}, Lcom/vlingo/client/userlogging/UserLoggingEngine;->getInstance()Lcom/vlingo/client/userlogging/UserLoggingEngine;

    move-result-object v0

    iget-object v1, p0, Lcom/vlingo/client/superdialer/SuperDialerActivity;->pageId:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/vlingo/client/userlogging/UserLoggingEngine;->landingPageCanceled(Ljava/lang/String;Ljava/util/Vector;)V

    .line 356
    :cond_e
    invoke-super {p0}, Lcom/vlingo/client/ui/VLActivity;->onBackPressed()V

    .line 357
    return-void
.end method

.method public onBusinessListingClickedForCall(Lcom/vlingo/client/localsearch/service/LocalSearchListing;)V
    .registers 4
    .parameter "listing"

    .prologue
    .line 542
    invoke-virtual {p1}, Lcom/vlingo/client/localsearch/service/LocalSearchListing;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vlingo/client/superdialer/SuperDialerActivity;->acceptedItemName:Ljava/lang/String;

    .line 543
    const-string v0, "dial:biz"

    iput-object v0, p0, Lcom/vlingo/client/superdialer/SuperDialerActivity;->acceptedItemType:Ljava/lang/String;

    .line 544
    iget-object v0, p0, Lcom/vlingo/client/superdialer/SuperDialerActivity;->lsManager:Lcom/vlingo/client/localsearch/service/LocalSearchServiceManager;

    const-string v1, "UserClickedToCallBrief"

    invoke-virtual {v0, p1, v1}, Lcom/vlingo/client/localsearch/service/LocalSearchServiceManager;->sendInfoActivityRequest(Lcom/vlingo/client/localsearch/service/LocalSearchListing;Ljava/lang/String;)V

    .line 545
    invoke-virtual {p1}, Lcom/vlingo/client/localsearch/service/LocalSearchListing;->getPhoneNumber()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/vlingo/client/superdialer/SuperDialerActivity;->launchAction(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 548
    :cond_1c
    return-void
.end method

.method public onBusinessListingClickedForDetails(Lcom/vlingo/client/localsearch/service/LocalSearchListing;)V
    .registers 5
    .parameter "listing"

    .prologue
    .line 551
    iget-object v1, p0, Lcom/vlingo/client/superdialer/SuperDialerActivity;->lsManager:Lcom/vlingo/client/localsearch/service/LocalSearchServiceManager;

    const-string v2, "UserClickedDetails"

    invoke-virtual {v1, p1, v2}, Lcom/vlingo/client/localsearch/service/LocalSearchServiceManager;->sendInfoActivityRequest(Lcom/vlingo/client/localsearch/service/LocalSearchListing;Ljava/lang/String;)V

    .line 552
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/vlingo/client/localsearch/LocalSearchListingDetailsActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 553
    .local v0, detailsIntent:Landroid/content/Intent;
    const-string v1, "ListingID"

    invoke-virtual {p1}, Lcom/vlingo/client/localsearch/service/LocalSearchListing;->getListingID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 554
    invoke-virtual {p0, v0}, Lcom/vlingo/client/superdialer/SuperDialerActivity;->startActivity(Landroid/content/Intent;)V

    .line 555
    return-void
.end method

.method public onBusniessHeaderClicked()V
    .registers 1

    .prologue
    .line 321
    invoke-direct {p0}, Lcom/vlingo/client/superdialer/SuperDialerActivity;->toggleActiveListView()V

    .line 322
    return-void
.end method

.method public onContactClicked(Lcom/vlingo/client/core/contacts/DisplayItem;)V
    .registers 8
    .parameter "contact"

    .prologue
    .line 558
    iget-object v3, p1, Lcom/vlingo/client/core/contacts/DisplayItem;->contact:Lcom/vlingo/client/core/contacts/VlingoContact;

    invoke-virtual {v3}, Lcom/vlingo/client/core/contacts/VlingoContact;->getName()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/vlingo/client/superdialer/SuperDialerActivity;->acceptedItemName:Ljava/lang/String;

    move-object v2, p1

    .line 561
    check-cast v2, Lcom/vlingo/client/android/core/contacts/AndroidSortedContactList$GroupedDisplayItem;

    .line 562
    .local v2, groupItem:Lcom/vlingo/client/android/core/contacts/AndroidSortedContactList$GroupedDisplayItem;
    invoke-virtual {v2}, Lcom/vlingo/client/android/core/contacts/AndroidSortedContactList$GroupedDisplayItem;->getDisplayItems()Ljava/util/Vector;

    move-result-object v1

    .line 565
    .local v1, displayItems:Ljava/util/Vector;,"Ljava/util/Vector<Lcom/vlingo/client/core/contacts/DisplayItem;>;"
    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_2d

    .line 567
    invoke-virtual {p1}, Lcom/vlingo/client/core/contacts/DisplayItem;->getContactId()I

    move-result v4

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vlingo/client/core/contacts/DisplayItem;

    invoke-virtual {v3}, Lcom/vlingo/client/core/contacts/DisplayItem;->getContactDetail()Lcom/vlingo/client/core/contacts/ContactDetail;

    move-result-object v3

    invoke-virtual {v3}, Lcom/vlingo/client/core/contacts/ContactDetail;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v4, v3}, Lcom/vlingo/client/superdialer/SuperDialerActivity;->dialContact(ILjava/lang/String;)V

    .line 577
    :goto_2c
    return-void

    .line 570
    :cond_2d
    new-instance v0, Lcom/vlingo/client/superdialer/SuperDialerActivity$DialListAdaptor;

    invoke-direct {v0, p0, v2}, Lcom/vlingo/client/superdialer/SuperDialerActivity$DialListAdaptor;-><init>(Lcom/vlingo/client/superdialer/SuperDialerActivity;Lcom/vlingo/client/android/core/contacts/AndroidSortedContactList$GroupedDisplayItem;)V

    .line 572
    .local v0, adaptor:Lcom/vlingo/client/superdialer/SuperDialerActivity$DialListAdaptor;
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const v5, 0x7f090044

    invoke-virtual {p0, v5}, Lcom/vlingo/client/superdialer/SuperDialerActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v2, Lcom/vlingo/client/android/core/contacts/AndroidSortedContactList$GroupedDisplayItem;->contact:Lcom/vlingo/client/core/contacts/VlingoContact;

    invoke-virtual {v5}, Lcom/vlingo/client/core/contacts/VlingoContact;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f090048

    invoke-virtual {p0, v4}, Lcom/vlingo/client/superdialer/SuperDialerActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/vlingo/client/superdialer/SuperDialerActivity$4;

    invoke-direct {v5, p0}, Lcom/vlingo/client/superdialer/SuperDialerActivity$4;-><init>(Lcom/vlingo/client/superdialer/SuperDialerActivity;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const/4 v4, -0x1

    invoke-virtual {v3, v0, v4, v0}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(Landroid/widget/ListAdapter;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_2c
.end method

.method public onContactHeaderClicked()V
    .registers 1

    .prologue
    .line 317
    invoke-direct {p0}, Lcom/vlingo/client/superdialer/SuperDialerActivity;->toggleActiveListView()V

    .line 318
    return-void
.end method

.method public onContactMatchResultsUpdate()V
    .registers 2

    .prologue
    .line 531
    iget-object v0, p0, Lcom/vlingo/client/superdialer/SuperDialerActivity;->contactsAdaptor:Lcom/vlingo/client/superdialer/SDContactsListAdaptor;

    invoke-virtual {v0}, Lcom/vlingo/client/superdialer/SDContactsListAdaptor;->notifyDataSetChanged()V

    .line 532
    return-void
.end method

.method public onContactMatchingFinished()V
    .registers 1

    .prologue
    .line 535
    return-void
.end method

.method public onContactPhoneNumberClicked(Lcom/vlingo/client/core/contacts/VlingoContact;ILjava/lang/String;)V
    .registers 5
    .parameter "vc"
    .parameter "contactId"
    .parameter "address"

    .prologue
    .line 580
    invoke-virtual {p1}, Lcom/vlingo/client/core/contacts/VlingoContact;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vlingo/client/superdialer/SuperDialerActivity;->acceptedItemName:Ljava/lang/String;

    .line 583
    invoke-direct {p0, p2, p3}, Lcom/vlingo/client/superdialer/SuperDialerActivity;->dialContact(ILjava/lang/String;)V

    .line 584
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 5
    .parameter "savedInstanceState"

    .prologue
    .line 141
    invoke-super {p0, p1}, Lcom/vlingo/client/ui/VLActivity;->onCreate(Landroid/os/Bundle;)V

    .line 146
    invoke-direct {p0, p1}, Lcom/vlingo/client/superdialer/SuperDialerActivity;->unpackSavedInstanceState(Landroid/os/Bundle;)V

    .line 148
    const v0, 0x7f030067

    invoke-virtual {p0, v0}, Lcom/vlingo/client/superdialer/SuperDialerActivity;->setContentView(I)V

    .line 151
    new-instance v0, Lcom/vlingo/client/contacts/VLContactsMatcher;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p0, v1}, Lcom/vlingo/client/contacts/VLContactsMatcher;-><init>(Lcom/vlingo/client/core/contacts/ContactsMatcherListener;Landroid/app/Activity;Z)V

    iput-object v0, p0, Lcom/vlingo/client/superdialer/SuperDialerActivity;->contactsMatcher:Lcom/vlingo/client/contacts/VLContactsMatcher;

    .line 152
    new-instance v0, Lcom/vlingo/client/localsearch/service/LocalSearchServiceManager;

    invoke-direct {v0}, Lcom/vlingo/client/localsearch/service/LocalSearchServiceManager;-><init>()V

    iput-object v0, p0, Lcom/vlingo/client/superdialer/SuperDialerActivity;->lsManager:Lcom/vlingo/client/localsearch/service/LocalSearchServiceManager;

    .line 154
    const v0, 0x7f0f016e

    invoke-virtual {p0, v0}, Lcom/vlingo/client/superdialer/SuperDialerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/vlingo/client/superdialer/SuperDialerActivity;->contactsListView:Landroid/widget/ListView;

    .line 155
    const v0, 0x7f0f016f

    invoke-virtual {p0, v0}, Lcom/vlingo/client/superdialer/SuperDialerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/vlingo/client/superdialer/SuperDialerActivity;->businessListView:Landroid/widget/ListView;

    .line 156
    const v0, 0x7f0f016c

    invoke-virtual {p0, v0}, Lcom/vlingo/client/superdialer/SuperDialerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/vlingo/client/superdialer/SuperDialerActivity;->searchBox:Landroid/widget/EditText;

    .line 157
    const v0, 0x7f0f002e

    invoke-virtual {p0, v0}, Lcom/vlingo/client/superdialer/SuperDialerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/vlingo/client/superdialer/SuperDialerActivity;->speakButton:Landroid/widget/ImageButton;

    .line 158
    const v0, 0x7f0f016d

    invoke-virtual {p0, v0}, Lcom/vlingo/client/superdialer/SuperDialerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/vlingo/client/superdialer/SuperDialerActivity;->listContainerLayout:Landroid/view/ViewGroup;

    .line 160
    new-instance v0, Lcom/vlingo/client/superdialer/SDContactsListAdaptor;

    iget-object v1, p0, Lcom/vlingo/client/superdialer/SuperDialerActivity;->contactsListView:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/vlingo/client/superdialer/SuperDialerActivity;->contactsMatcher:Lcom/vlingo/client/contacts/VLContactsMatcher;

    invoke-direct {v0, p0, v1, v2, p0}, Lcom/vlingo/client/superdialer/SDContactsListAdaptor;-><init>(Landroid/content/Context;Landroid/widget/ListView;Lcom/vlingo/client/core/contacts/ContactsMatcher;Lcom/vlingo/client/superdialer/SDContactsListAdaptor$SDContactClickListener;)V

    iput-object v0, p0, Lcom/vlingo/client/superdialer/SuperDialerActivity;->contactsAdaptor:Lcom/vlingo/client/superdialer/SDContactsListAdaptor;

    .line 161
    new-instance v0, Lcom/vlingo/client/superdialer/SDBusinessListAdaptor;

    iget-object v1, p0, Lcom/vlingo/client/superdialer/SuperDialerActivity;->businessListView:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/vlingo/client/superdialer/SuperDialerActivity;->lsManager:Lcom/vlingo/client/localsearch/service/LocalSearchServiceManager;

    invoke-direct {v0, p0, v1, v2, p0}, Lcom/vlingo/client/superdialer/SDBusinessListAdaptor;-><init>(Landroid/app/Activity;Landroid/widget/ListView;Lcom/vlingo/client/localsearch/service/LocalSearchServiceManager;Lcom/vlingo/client/superdialer/SDBusinessListAdaptor$SDBusinessAdaptorClickListener;)V

    iput-object v0, p0, Lcom/vlingo/client/superdialer/SuperDialerActivity;->businessAdaptor:Lcom/vlingo/client/superdialer/SDBusinessListAdaptor;

    .line 163
    iget-object v0, p0, Lcom/vlingo/client/superdialer/SuperDialerActivity;->contactsListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/vlingo/client/superdialer/SuperDialerActivity;->contactsAdaptor:Lcom/vlingo/client/superdialer/SDContactsListAdaptor;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 164
    iget-object v0, p0, Lcom/vlingo/client/superdialer/SuperDialerActivity;->businessListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/vlingo/client/superdialer/SuperDialerActivity;->businessAdaptor:Lcom/vlingo/client/superdialer/SDBusinessListAdaptor;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 166
    iget-object v0, p0, Lcom/vlingo/client/superdialer/SuperDialerActivity;->speakButton:Landroid/widget/ImageButton;

    new-instance v1, Lcom/vlingo/client/superdialer/SuperDialerActivity$1;

    invoke-direct {v1, p0}, Lcom/vlingo/client/superdialer/SuperDialerActivity$1;-><init>(Lcom/vlingo/client/superdialer/SuperDialerActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 172
    invoke-direct {p0}, Lcom/vlingo/client/superdialer/SuperDialerActivity;->setupEventHandler()V

    .line 174
    invoke-virtual {p0}, Lcom/vlingo/client/superdialer/SuperDialerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/vlingo/client/superdialer/SuperDialerActivity;->handleIntent(Landroid/content/Intent;)V

    .line 175
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 3
    .parameter "menu"

    .prologue
    .line 361
    invoke-virtual {p0, p1}, Lcom/vlingo/client/superdialer/SuperDialerActivity;->makeDefaultMenu(Landroid/view/Menu;)V

    .line 362
    const/4 v0, 0x1

    return v0
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .registers 3
    .parameter "intent"

    .prologue
    .line 179
    invoke-super {p0, p1}, Lcom/vlingo/client/ui/VLActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 182
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vlingo/client/superdialer/SuperDialerActivity;->firstView:Z

    .line 183
    invoke-direct {p0, p1}, Lcom/vlingo/client/superdialer/SuperDialerActivity;->handleIntent(Landroid/content/Intent;)V

    .line 184
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .registers 2
    .parameter "savedInstanceState"

    .prologue
    .line 386
    invoke-super {p0, p1}, Lcom/vlingo/client/ui/VLActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 387
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4
    .parameter "savedInstanceState"

    .prologue
    .line 376
    const-string v0, "AutoDialAttempted"

    iget-boolean v1, p0, Lcom/vlingo/client/superdialer/SuperDialerActivity;->autoActionAttempted:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 377
    const-string v0, "FirstView"

    iget-boolean v1, p0, Lcom/vlingo/client/superdialer/SuperDialerActivity;->firstView:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 378
    const-string v0, "SpokenLocation"

    iget-object v1, p0, Lcom/vlingo/client/superdialer/SuperDialerActivity;->curSpokenLocation:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 379
    invoke-super {p0, p1}, Lcom/vlingo/client/ui/VLActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 380
    return-void
.end method

.method public onStop()V
    .registers 3

    .prologue
    .line 345
    iget-object v0, p0, Lcom/vlingo/client/superdialer/SuperDialerActivity;->eventHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 346
    iget-object v0, p0, Lcom/vlingo/client/superdialer/SuperDialerActivity;->eventHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 347
    iget-object v0, p0, Lcom/vlingo/client/superdialer/SuperDialerActivity;->eventHandler:Landroid/os/Handler;

    const/16 v1, 0xc9

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 348
    invoke-super {p0}, Lcom/vlingo/client/ui/VLActivity;->onStop()V

    .line 349
    return-void
.end method

.method protected startRecognition()V
    .registers 4

    .prologue
    .line 398
    invoke-static {}, Lcom/vlingo/client/android/core/asr/AndroidRecognitionManager;->getInstance()Lcom/vlingo/client/core/asr/RecognitionManager;

    move-result-object v1

    check-cast v1, Lcom/vlingo/client/core/asr/RecognitionTarget;

    .line 399
    .local v1, target:Lcom/vlingo/client/core/asr/RecognitionTarget;
    invoke-interface {v1}, Lcom/vlingo/client/core/asr/RecognitionTarget;->getSRContext()Lcom/vlingo/client/core/recognizer/SRContext;

    move-result-object v0

    .line 400
    .local v0, srContext:Lcom/vlingo/client/core/recognizer/SRContext;
    const-string v2, "Vlingo"

    invoke-virtual {v0, v2}, Lcom/vlingo/client/core/recognizer/SRContext;->setFieldContext(Ljava/lang/String;)V

    .line 401
    iget-object v2, p0, Lcom/vlingo/client/superdialer/SuperDialerActivity;->fieldId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/vlingo/client/core/recognizer/SRContext;->setFieldID(Ljava/lang/String;)V

    .line 402
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/vlingo/client/core/recognizer/SRContext;->setCursorPos(I)V

    .line 403
    const-string v2, ""

    invoke-virtual {v0, v2}, Lcom/vlingo/client/core/recognizer/SRContext;->setCurText(Ljava/lang/String;)V

    .line 405
    new-instance v2, Lcom/vlingo/client/superdialer/SuperDialerActivity$3;

    invoke-direct {v2, p0}, Lcom/vlingo/client/superdialer/SuperDialerActivity$3;-><init>(Lcom/vlingo/client/superdialer/SuperDialerActivity;)V

    invoke-static {v2}, Lcom/vlingo/client/android/core/asr/AndroidRecognitionManager;->setResultDispatcher(Lcom/vlingo/client/asr/ResultDispatcher;)V

    .line 446
    invoke-static {}, Lcom/vlingo/client/android/core/asr/AndroidRecognitionManager;->resetDialogs()V

    .line 447
    invoke-static {p0}, Lcom/vlingo/client/android/core/asr/AndroidRecognitionManager;->initiateRecognition(Landroid/content/Context;)Z

    .line 448
    return-void
.end method
