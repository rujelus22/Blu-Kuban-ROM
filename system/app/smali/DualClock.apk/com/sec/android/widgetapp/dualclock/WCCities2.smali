.class public Lcom/sec/android/widgetapp/dualclock/WCCities2;
.super Landroid/app/Activity;
.source "WCCities2.java"

# interfaces
.implements Landroid/text/TextWatcher;
.implements Landroid/view/View$OnKeyListener;
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/widgetapp/dualclock/WCCities2$TimoutTask;,
        Lcom/sec/android/widgetapp/dualclock/WCCities2$NetworkLocationListener;
    }
.end annotation


# static fields
.field private static mCityList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static mTimeZoneFinder:Lcom/sec/android/widgetapp/dualclock/TimeZoneFinder;


# instance fields
.field LastTapToast:Z

.field public final TAG:Ljava/lang/String;

.field aCity:Lcom/sec/android/widgetapp/dualclock/City;

.field private adapter:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter",
            "<",
            "Lcom/sec/android/widgetapp/dualclock/ListItem;",
            ">;"
        }
    .end annotation
.end field

.field checkedTempUniqueId:I

.field private final homeZone:I

.field private isCurrentLocationfind:Z

.field isDown:Z

.field private isGMT_sort:Z

.field private isRestart:Z

.field items:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/widgetapp/dualclock/ListItem;",
            ">;"
        }
    .end annotation
.end field

.field private mBundle:Ljava/lang/String;

.field mCity:Ljava/lang/String;

.field mDST:I

.field mDlgProgress:Landroid/app/ProgressDialog;

.field protected final mGeocoderHandler:Landroid/os/Handler;

.field private mList:Landroid/widget/ListView;

.field public mReleaseToast:Landroid/os/Handler;

.field private offSetByCity:I

.field tempPos:I

.field private uniqueId:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    const/4 v0, 0x0

    .line 66
    sput-object v0, Lcom/sec/android/widgetapp/dualclock/WCCities2;->mTimeZoneFinder:Lcom/sec/android/widgetapp/dualclock/TimeZoneFinder;

    .line 67
    sput-object v0, Lcom/sec/android/widgetapp/dualclock/WCCities2;->mCityList:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 62
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 65
    const-class v0, Lcom/sec/android/widgetapp/dualclock/WCCities2;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/widgetapp/dualclock/WCCities2;->TAG:Ljava/lang/String;

    .line 68
    const/4 v0, 0x2

    iput v0, p0, Lcom/sec/android/widgetapp/dualclock/WCCities2;->homeZone:I

    .line 77
    const-string v0, ""

    iput-object v0, p0, Lcom/sec/android/widgetapp/dualclock/WCCities2;->mCity:Ljava/lang/String;

    .line 78
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/widgetapp/dualclock/WCCities2;->items:Ljava/util/ArrayList;

    .line 84
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/widgetapp/dualclock/WCCities2;->mDlgProgress:Landroid/app/ProgressDialog;

    .line 87
    new-instance v0, Lcom/sec/android/widgetapp/dualclock/WCCities2$1;

    invoke-direct {v0, p0}, Lcom/sec/android/widgetapp/dualclock/WCCities2$1;-><init>(Lcom/sec/android/widgetapp/dualclock/WCCities2;)V

    iput-object v0, p0, Lcom/sec/android/widgetapp/dualclock/WCCities2;->mGeocoderHandler:Landroid/os/Handler;

    .line 628
    new-instance v0, Lcom/sec/android/widgetapp/dualclock/WCCities2$5;

    invoke-direct {v0, p0}, Lcom/sec/android/widgetapp/dualclock/WCCities2$5;-><init>(Lcom/sec/android/widgetapp/dualclock/WCCities2;)V

    iput-object v0, p0, Lcom/sec/android/widgetapp/dualclock/WCCities2;->mReleaseToast:Landroid/os/Handler;

    .line 910
    return-void
.end method

.method static synthetic access$000()Ljava/util/ArrayList;
    .registers 1

    .prologue
    .line 62
    sget-object v0, Lcom/sec/android/widgetapp/dualclock/WCCities2;->mCityList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$002(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .registers 1
    .parameter "x0"

    .prologue
    .line 62
    sput-object p0, Lcom/sec/android/widgetapp/dualclock/WCCities2;->mCityList:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$100()Lcom/sec/android/widgetapp/dualclock/TimeZoneFinder;
    .registers 1

    .prologue
    .line 62
    sget-object v0, Lcom/sec/android/widgetapp/dualclock/WCCities2;->mTimeZoneFinder:Lcom/sec/android/widgetapp/dualclock/TimeZoneFinder;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/android/widgetapp/dualclock/WCCities2;Ljava/util/List;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 62
    invoke-direct {p0, p1}, Lcom/sec/android/widgetapp/dualclock/WCCities2;->setCityList(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$302(Lcom/sec/android/widgetapp/dualclock/WCCities2;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 62
    iput-boolean p1, p0, Lcom/sec/android/widgetapp/dualclock/WCCities2;->isCurrentLocationfind:Z

    return p1
.end method

.method static synthetic access$400(Lcom/sec/android/widgetapp/dualclock/WCCities2;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/sec/android/widgetapp/dualclock/WCCities2;->findLocation()V

    return-void
.end method

.method static synthetic access$502(Lcom/sec/android/widgetapp/dualclock/WCCities2;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 62
    iput p1, p0, Lcom/sec/android/widgetapp/dualclock/WCCities2;->offSetByCity:I

    return p1
.end method

.method static synthetic access$600(Lcom/sec/android/widgetapp/dualclock/WCCities2;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/sec/android/widgetapp/dualclock/WCCities2;->removeProgressDialog()V

    return-void
.end method

.method private createProgressDialog()V
    .registers 5

    .prologue
    const/4 v3, 0x1

    .line 703
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/widgetapp/dualclock/WCCities2;->mDlgProgress:Landroid/app/ProgressDialog;

    .line 704
    iget-object v0, p0, Lcom/sec/android/widgetapp/dualclock/WCCities2;->mDlgProgress:Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lcom/sec/android/widgetapp/dualclock/WCCities2;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080008

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 705
    iget-object v0, p0, Lcom/sec/android/widgetapp/dualclock/WCCities2;->mDlgProgress:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v3}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 706
    iget-object v0, p0, Lcom/sec/android/widgetapp/dualclock/WCCities2;->mDlgProgress:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 707
    iget-object v0, p0, Lcom/sec/android/widgetapp/dualclock/WCCities2;->mDlgProgress:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v3}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 708
    iget-object v0, p0, Lcom/sec/android/widgetapp/dualclock/WCCities2;->mDlgProgress:Landroid/app/ProgressDialog;

    new-instance v1, Lcom/sec/android/widgetapp/dualclock/WCCities2$6;

    invoke-direct {v1, p0}, Lcom/sec/android/widgetapp/dualclock/WCCities2$6;-><init>(Lcom/sec/android/widgetapp/dualclock/WCCities2;)V

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 715
    iget-object v0, p0, Lcom/sec/android/widgetapp/dualclock/WCCities2;->mDlgProgress:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 717
    return-void
.end method

.method private downAutoTextKeypad()V
    .registers 5

    .prologue
    .line 661
    const v2, 0x7f0a004a

    invoke-virtual {p0, v2}, Lcom/sec/android/widgetapp/dualclock/WCCities2;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/AutoCompleteTextView;

    .line 663
    .local v1, txt_search:Landroid/widget/AutoCompleteTextView;
    const-string v2, "input_method"

    invoke-virtual {p0, v2}, Lcom/sec/android/widgetapp/dualclock/WCCities2;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 665
    .local v0, inputManager:Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {v1}, Landroid/widget/AutoCompleteTextView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v0, v2, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 669
    iget-object v2, p0, Lcom/sec/android/widgetapp/dualclock/WCCities2;->mList:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->requestFocus()Z

    .line 671
    return-void
.end method

.method private filterItem(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 10
    .parameter "destText"
    .parameter "filterText"

    .prologue
    .line 643
    const-string v6, " / "

    invoke-virtual {p1, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 645
    .local v4, splitText:[Ljava/lang/String;
    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 647
    .local v3, lowerFilterText:Ljava/lang/String;
    move-object v0, v4

    .local v0, arr$:[Ljava/lang/String;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_11
    if-ge v1, v2, :cond_24

    aget-object v5, v0, v1

    .line 649
    .local v5, text:Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_21

    .line 650
    const/4 v6, 0x1

    .line 655
    .end local v5           #text:Ljava/lang/String;
    :goto_20
    return v6

    .line 647
    .restart local v5       #text:Ljava/lang/String;
    :cond_21
    add-int/lit8 v1, v1, 0x1

    goto :goto_11

    .line 655
    .end local v5           #text:Ljava/lang/String;
    :cond_24
    const/4 v6, 0x0

    goto :goto_20
.end method

.method private findLocation()V
    .registers 5

    .prologue
    .line 735
    invoke-direct {p0}, Lcom/sec/android/widgetapp/dualclock/WCCities2;->createProgressDialog()V

    .line 737
    sget-object v1, Lcom/sec/android/widgetapp/dualclock/WCCities2;->mTimeZoneFinder:Lcom/sec/android/widgetapp/dualclock/TimeZoneFinder;

    if-nez v1, :cond_e

    .line 738
    new-instance v1, Lcom/sec/android/widgetapp/dualclock/TimeZoneFinder;

    invoke-direct {v1, p0}, Lcom/sec/android/widgetapp/dualclock/TimeZoneFinder;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/sec/android/widgetapp/dualclock/WCCities2;->mTimeZoneFinder:Lcom/sec/android/widgetapp/dualclock/TimeZoneFinder;

    .line 741
    :cond_e
    sget-object v1, Lcom/sec/android/widgetapp/dualclock/WCCities2;->mTimeZoneFinder:Lcom/sec/android/widgetapp/dualclock/TimeZoneFinder;

    invoke-virtual {v1}, Lcom/sec/android/widgetapp/dualclock/TimeZoneFinder;->updateLocationMNCAtActivity()Z

    move-result v1

    if-eqz v1, :cond_3e

    .line 742
    invoke-direct {p0}, Lcom/sec/android/widgetapp/dualclock/WCCities2;->removeProgressDialog()V

    .line 744
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sput-object v1, Lcom/sec/android/widgetapp/dualclock/WCCities2;->mCityList:Ljava/util/ArrayList;

    .line 757
    iget-object v1, p0, Lcom/sec/android/widgetapp/dualclock/WCCities2;->aCity:Lcom/sec/android/widgetapp/dualclock/City;

    sget-object v2, Lcom/sec/android/widgetapp/dualclock/WCCities2;->mTimeZoneFinder:Lcom/sec/android/widgetapp/dualclock/TimeZoneFinder;

    invoke-virtual {v2}, Lcom/sec/android/widgetapp/dualclock/TimeZoneFinder;->getCurrentCityID()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/android/widgetapp/dualclock/City;->findCity_objectByUniqueID(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v0

    .line 759
    .local v0, cn:Ljava/lang/String;
    sget-object v1, Lcom/sec/android/widgetapp/dualclock/WCCities2;->mCityList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 761
    sget-object v1, Lcom/sec/android/widgetapp/dualclock/WCCities2;->mCityList:Ljava/util/ArrayList;

    invoke-direct {p0, v1}, Lcom/sec/android/widgetapp/dualclock/WCCities2;->setCityList(Ljava/util/List;)V

    .line 762
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sec/android/widgetapp/dualclock/WCCities2;->isCurrentLocationfind:Z

    .line 770
    .end local v0           #cn:Ljava/lang/String;
    :cond_3d
    :goto_3d
    return-void

    .line 765
    :cond_3e
    sget-object v1, Lcom/sec/android/widgetapp/dualclock/WCCities2;->mTimeZoneFinder:Lcom/sec/android/widgetapp/dualclock/TimeZoneFinder;

    new-instance v2, Lcom/sec/android/widgetapp/dualclock/WCCities2$NetworkLocationListener;

    invoke-direct {v2, p0}, Lcom/sec/android/widgetapp/dualclock/WCCities2$NetworkLocationListener;-><init>(Lcom/sec/android/widgetapp/dualclock/WCCities2;)V

    new-instance v3, Lcom/sec/android/widgetapp/dualclock/WCCities2$TimoutTask;

    invoke-direct {v3, p0}, Lcom/sec/android/widgetapp/dualclock/WCCities2$TimoutTask;-><init>(Lcom/sec/android/widgetapp/dualclock/WCCities2;)V

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/widgetapp/dualclock/TimeZoneFinder;->requestCurrentLocationExternalListener2(Lcom/sec/android/widgetapp/dualclock/WCCities2$NetworkLocationListener;Lcom/sec/android/widgetapp/dualclock/WCCities2$TimoutTask;)Z

    move-result v1

    if-nez v1, :cond_3d

    .line 767
    invoke-direct {p0}, Lcom/sec/android/widgetapp/dualclock/WCCities2;->removeProgressDialog()V

    goto :goto_3d
.end method

.method private initControl()V
    .registers 6

    .prologue
    const/4 v4, 0x1

    .line 231
    const v1, 0x7f0a004a

    invoke-virtual {p0, v1}, Lcom/sec/android/widgetapp/dualclock/WCCities2;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/AutoCompleteTextView;

    .line 233
    .local v0, txt_search:Landroid/widget/AutoCompleteTextView;
    invoke-virtual {v0, p0}, Landroid/widget/AutoCompleteTextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 235
    invoke-virtual {v0, p0}, Landroid/widget/AutoCompleteTextView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 237
    invoke-virtual {v0, v4}, Landroid/widget/AutoCompleteTextView;->setFocusable(Z)V

    .line 239
    new-instance v1, Lcom/sec/android/widgetapp/dualclock/WCCities2$3;

    invoke-direct {v1, p0, v0}, Lcom/sec/android/widgetapp/dualclock/WCCities2$3;-><init>(Lcom/sec/android/widgetapp/dualclock/WCCities2;Landroid/widget/AutoCompleteTextView;)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/AutoCompleteTextView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 253
    const v1, 0x7f0a004c

    invoke-virtual {p0, v1}, Lcom/sec/android/widgetapp/dualclock/WCCities2;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/sec/android/widgetapp/dualclock/WCCities2;->mList:Landroid/widget/ListView;

    .line 255
    iget-object v1, p0, Lcom/sec/android/widgetapp/dualclock/WCCities2;->mList:Landroid/widget/ListView;

    invoke-virtual {v1, v4}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 257
    iget-object v1, p0, Lcom/sec/android/widgetapp/dualclock/WCCities2;->mList:Landroid/widget/ListView;

    new-instance v2, Lcom/sec/android/widgetapp/dualclock/WCCities2$4;

    invoke-direct {v2, p0}, Lcom/sec/android/widgetapp/dualclock/WCCities2$4;-><init>(Lcom/sec/android/widgetapp/dualclock/WCCities2;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 337
    iget-object v1, p0, Lcom/sec/android/widgetapp/dualclock/WCCities2;->mList:Landroid/widget/ListView;

    invoke-virtual {v1, p0}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 339
    return-void
.end method

.method private removeProgressDialog()V
    .registers 2

    .prologue
    .line 723
    iget-object v0, p0, Lcom/sec/android/widgetapp/dualclock/WCCities2;->mDlgProgress:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 727
    iget-object v0, p0, Lcom/sec/android/widgetapp/dualclock/WCCities2;->mDlgProgress:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 731
    :cond_d
    return-void
.end method

.method private setCityList(Ljava/util/List;)V
    .registers 13
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, cityList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v10, 0x1

    .line 776
    if-eqz p1, :cond_9

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_a

    .line 867
    :cond_9
    :goto_9
    return-void

    .line 781
    :cond_a
    const/4 v1, -0x1

    .line 782
    .local v1, dPostion:I
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 783
    .local v2, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/sec/android/widgetapp/dualclock/WCCities2;->items:Ljava/util/ArrayList;

    .line 785
    :cond_16
    :goto_16
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6b

    .line 787
    iget-object v5, p0, Lcom/sec/android/widgetapp/dualclock/WCCities2;->aCity:Lcom/sec/android/widgetapp/dualclock/City;

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v5, v4}, Lcom/sec/android/widgetapp/dualclock/City;->findCity_objectByName(Ljava/lang/String;)Lcom/sec/android/widgetapp/dualclock/City$CityInfo;

    move-result-object v0

    .line 789
    .local v0, c:Lcom/sec/android/widgetapp/dualclock/City$CityInfo;
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 791
    .local v3, sb:Ljava/lang/StringBuffer;
    invoke-virtual {v0}, Lcom/sec/android/widgetapp/dualclock/City$CityInfo;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 793
    const-string v4, " / "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 795
    invoke-virtual {v0}, Lcom/sec/android/widgetapp/dualclock/City$CityInfo;->getCountry()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 796
    iget-object v4, p0, Lcom/sec/android/widgetapp/dualclock/WCCities2;->items:Ljava/util/ArrayList;

    new-instance v5, Lcom/sec/android/widgetapp/dualclock/ListItem;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/dualclock/City$CityInfo;->getGMT()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/dualclock/City$CityInfo;->getRawOffsetMillis()I

    move-result v8

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/dualclock/City$CityInfo;->getUniqueID()I

    move-result v9

    invoke-direct {v5, v6, v7, v8, v9}, Lcom/sec/android/widgetapp/dualclock/ListItem;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 798
    invoke-virtual {v0}, Lcom/sec/android/widgetapp/dualclock/City$CityInfo;->getUniqueID()I

    move-result v4

    iget v5, p0, Lcom/sec/android/widgetapp/dualclock/WCCities2;->uniqueId:I

    if-ne v4, v5, :cond_16

    .line 799
    iget-object v4, p0, Lcom/sec/android/widgetapp/dualclock/WCCities2;->items:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v1, v4, -0x1

    goto :goto_16

    .line 801
    .end local v0           #c:Lcom/sec/android/widgetapp/dualclock/City$CityInfo;
    .end local v3           #sb:Ljava/lang/StringBuffer;
    :cond_6b
    const v4, 0x7f0a004c

    invoke-virtual {p0, v4}, Lcom/sec/android/widgetapp/dualclock/WCCities2;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ListView;

    iput-object v4, p0, Lcom/sec/android/widgetapp/dualclock/WCCities2;->mList:Landroid/widget/ListView;

    .line 802
    iget-object v4, p0, Lcom/sec/android/widgetapp/dualclock/WCCities2;->mList:Landroid/widget/ListView;

    invoke-virtual {v4, v10}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 803
    iget-object v4, p0, Lcom/sec/android/widgetapp/dualclock/WCCities2;->mList:Landroid/widget/ListView;

    invoke-virtual {v4, p0}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 804
    new-instance v4, Lcom/sec/android/widgetapp/dualclock/ListAdapter;

    const v5, 0x7f030003

    iget-object v6, p0, Lcom/sec/android/widgetapp/dualclock/WCCities2;->items:Ljava/util/ArrayList;

    invoke-direct {v4, p0, v5, v6}, Lcom/sec/android/widgetapp/dualclock/ListAdapter;-><init>(Landroid/content/Context;ILjava/util/ArrayList;)V

    iput-object v4, p0, Lcom/sec/android/widgetapp/dualclock/WCCities2;->adapter:Landroid/widget/ArrayAdapter;

    .line 805
    iget-object v4, p0, Lcom/sec/android/widgetapp/dualclock/WCCities2;->mList:Landroid/widget/ListView;

    iget-object v5, p0, Lcom/sec/android/widgetapp/dualclock/WCCities2;->adapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v4, v5}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 806
    const/4 v4, -0x1

    if-eq v1, v4, :cond_a1

    .line 807
    iget-object v4, p0, Lcom/sec/android/widgetapp/dualclock/WCCities2;->items:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/android/widgetapp/dualclock/ListItem;

    invoke-virtual {v4, v10}, Lcom/sec/android/widgetapp/dualclock/ListItem;->setSelected(Z)V

    .line 810
    :cond_a1
    iget-object v4, p0, Lcom/sec/android/widgetapp/dualclock/WCCities2;->mList:Landroid/widget/ListView;

    new-instance v5, Lcom/sec/android/widgetapp/dualclock/WCCities2$7;

    invoke-direct {v5, p0}, Lcom/sec/android/widgetapp/dualclock/WCCities2$7;-><init>(Lcom/sec/android/widgetapp/dualclock/WCCities2;)V

    invoke-virtual {v4, v5}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    goto/16 :goto_9
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .registers 8
    .parameter "s"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const/16 v3, 0x64

    .line 517
    iget-object v1, p0, Lcom/sec/android/widgetapp/dualclock/WCCities2;->TAG:Ljava/lang/String;

    const-string v2, "afterTextChanged()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 519
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v1

    if-gt v1, v3, :cond_12

    .line 539
    :cond_11
    :goto_11
    return-void

    .line 523
    :cond_12
    const v1, 0x7f0a004a

    invoke-virtual {p0, v1}, Lcom/sec/android/widgetapp/dualclock/WCCities2;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/AutoCompleteTextView;

    .line 525
    .local v0, autoSearch:Landroid/widget/AutoCompleteTextView;
    invoke-interface {p1, v4, v3}, Landroid/text/Editable;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    .line 527
    invoke-virtual {v0, v3}, Landroid/widget/AutoCompleteTextView;->setSelection(I)V

    .line 529
    iget-boolean v1, p0, Lcom/sec/android/widgetapp/dualclock/WCCities2;->LastTapToast:Z

    if-eq v1, v5, :cond_11

    .line 533
    iput-boolean v5, p0, Lcom/sec/android/widgetapp/dualclock/WCCities2;->LastTapToast:Z

    .line 535
    new-instance v1, Lcom/sec/android/widgetapp/dualclock/Messages;

    invoke-direct {v1}, Lcom/sec/android/widgetapp/dualclock/Messages;-><init>()V

    const/4 v2, 0x2

    invoke-virtual {v1, p0, v2}, Lcom/sec/android/widgetapp/dualclock/Messages;->showTOAST(Landroid/content/Context;I)V

    .line 537
    iget-object v1, p0, Lcom/sec/android/widgetapp/dualclock/WCCities2;->mReleaseToast:Landroid/os/Handler;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_11
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 544
    return-void
.end method

.method public getContentValues(Lcom/sec/android/widgetapp/dualclock/City$CityInfo;Ljava/lang/String;)Landroid/content/ContentValues;
    .registers 8
    .parameter "c2"
    .parameter "type"

    .prologue
    const/4 v4, 0x2

    .line 493
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 495
    .local v0, c:Landroid/content/ContentValues;
    sget-object v1, Lcom/sec/android/widgetapp/dualclock/Const;->WC_COLUMNS:[Ljava/lang/String;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-virtual {p1}, Lcom/sec/android/widgetapp/dualclock/City$CityInfo;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 497
    sget-object v1, Lcom/sec/android/widgetapp/dualclock/Const;->WC_COLUMNS:[Ljava/lang/String;

    aget-object v1, v1, v4

    invoke-virtual {p1}, Lcom/sec/android/widgetapp/dualclock/City$CityInfo;->getRawOffsetMillis()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 499
    const-string v1, "insert"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5d

    .line 501
    sget-object v1, Lcom/sec/android/widgetapp/dualclock/Const;->WC_COLUMNS:[Ljava/lang/String;

    const/4 v2, 0x3

    aget-object v1, v1, v2

    iget v2, p0, Lcom/sec/android/widgetapp/dualclock/WCCities2;->mDST:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 503
    iget-object v1, p0, Lcom/sec/android/widgetapp/dualclock/WCCities2;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mDST = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/sec/android/widgetapp/dualclock/WCCities2;->mDST:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 505
    sget-object v1, Lcom/sec/android/widgetapp/dualclock/Const;->WC_COLUMNS:[Ljava/lang/String;

    const/4 v2, 0x4

    aget-object v1, v1, v2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 509
    :cond_5d
    sget-object v1, Lcom/sec/android/widgetapp/dualclock/Const;->WC_COLUMNS:[Ljava/lang/String;

    const/4 v2, 0x5

    aget-object v1, v1, v2

    invoke-virtual {p1}, Lcom/sec/android/widgetapp/dualclock/City$CityInfo;->getUniqueID()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 511
    return-object v0
.end method

.method public listBinding()V
    .registers 13

    .prologue
    const/4 v2, 0x0

    .line 361
    iget-boolean v0, p0, Lcom/sec/android/widgetapp/dualclock/WCCities2;->isRestart:Z

    if-nez v0, :cond_16

    iget-object v0, p0, Lcom/sec/android/widgetapp/dualclock/WCCities2;->aCity:Lcom/sec/android/widgetapp/dualclock/City;

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/dualclock/City;->setupCityListByName()Ljava/util/ArrayList;

    move-result-object v0

    :goto_b
    iput-object v0, p0, Lcom/sec/android/widgetapp/dualclock/WCCities2;->items:Ljava/util/ArrayList;

    .line 363
    iget-object v0, p0, Lcom/sec/android/widgetapp/dualclock/WCCities2;->items:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_19

    .line 427
    :goto_15
    return-void

    .line 361
    :cond_16
    iget-object v0, p0, Lcom/sec/android/widgetapp/dualclock/WCCities2;->items:Ljava/util/ArrayList;

    goto :goto_b

    .line 369
    :cond_19
    const-string v5, "homezone asc"

    .line 371
    .local v5, orderBy:Ljava/lang/String;
    const-string v3, "homezone > 0"

    .line 373
    .local v3, whereClause:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/dualclock/WCCities2;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/sec/android/widgetapp/dualclock/Const;->DATA_URI:Landroid/net/Uri;

    move-object v4, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 376
    .local v6, c:Landroid/database/Cursor;
    const/4 v11, 0x0

    .line 380
    .local v11, var:I
    :try_start_29
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 381
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    .line 383
    const/4 v0, 0x5

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/widgetapp/dualclock/WCCities2;->uniqueId:I

    .line 385
    const/4 v0, 0x3

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/widgetapp/dualclock/WCCities2;->mDST:I

    .line 387
    iget v11, p0, Lcom/sec/android/widgetapp/dualclock/WCCities2;->uniqueId:I
    :try_end_3f
    .catchall {:try_start_29 .. :try_end_3f} :catchall_c0
    .catch Landroid/database/CursorIndexOutOfBoundsException; {:try_start_29 .. :try_end_3f} :catch_73
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_3f} :catch_a3

    .line 407
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 411
    :goto_42
    iput v11, p0, Lcom/sec/android/widgetapp/dualclock/WCCities2;->offSetByCity:I

    .line 413
    iget v10, p0, Lcom/sec/android/widgetapp/dualclock/WCCities2;->offSetByCity:I

    .line 415
    .local v10, uniqueID:I
    iget-object v0, p0, Lcom/sec/android/widgetapp/dualclock/WCCities2;->aCity:Lcom/sec/android/widgetapp/dualclock/City;

    invoke-virtual {v0, v10}, Lcom/sec/android/widgetapp/dualclock/City;->getCityPositionByID(I)I

    move-result v9

    .line 417
    .local v9, position:I
    iget-object v0, p0, Lcom/sec/android/widgetapp/dualclock/WCCities2;->items:Ljava/util/ArrayList;

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/widgetapp/dualclock/ListItem;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/widgetapp/dualclock/ListItem;->setSelected(Z)V

    .line 419
    new-instance v0, Lcom/sec/android/widgetapp/dualclock/ListAdapter;

    const v1, 0x7f030003

    iget-object v2, p0, Lcom/sec/android/widgetapp/dualclock/WCCities2;->items:Ljava/util/ArrayList;

    invoke-direct {v0, p0, v1, v2}, Lcom/sec/android/widgetapp/dualclock/ListAdapter;-><init>(Landroid/content/Context;ILjava/util/ArrayList;)V

    iput-object v0, p0, Lcom/sec/android/widgetapp/dualclock/WCCities2;->adapter:Landroid/widget/ArrayAdapter;

    .line 421
    iget-object v0, p0, Lcom/sec/android/widgetapp/dualclock/WCCities2;->mList:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/sec/android/widgetapp/dualclock/WCCities2;->adapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 423
    iget-object v0, p0, Lcom/sec/android/widgetapp/dualclock/WCCities2;->mList:Landroid/widget/ListView;

    invoke-virtual {v0, v9}, Landroid/widget/ListView;->setSelection(I)V

    .line 425
    iput v9, p0, Lcom/sec/android/widgetapp/dualclock/WCCities2;->tempPos:I

    goto :goto_15

    .line 389
    .end local v9           #position:I
    .end local v10           #uniqueID:I
    :catch_73
    move-exception v7

    .line 391
    .local v7, ce:Landroid/database/CursorIndexOutOfBoundsException;
    :try_start_74
    iget-object v0, p0, Lcom/sec/android/widgetapp/dualclock/WCCities2;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CursorIndexOutOfBoundsException"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 393
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 395
    const/4 v0, 0x5

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/widgetapp/dualclock/WCCities2;->uniqueId:I

    .line 397
    iget v11, p0, Lcom/sec/android/widgetapp/dualclock/WCCities2;->uniqueId:I

    .line 399
    const/4 v0, 0x3

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/widgetapp/dualclock/WCCities2;->mDST:I
    :try_end_9f
    .catchall {:try_start_74 .. :try_end_9f} :catchall_c0

    .line 407
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_42

    .line 401
    .end local v7           #ce:Landroid/database/CursorIndexOutOfBoundsException;
    :catch_a3
    move-exception v8

    .line 403
    .local v8, e:Ljava/lang/Exception;
    :try_start_a4
    iget-object v0, p0, Lcom/sec/android/widgetapp/dualclock/WCCities2;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_bc
    .catchall {:try_start_a4 .. :try_end_bc} :catchall_c0

    .line 407
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_42

    .end local v8           #e:Ljava/lang/Exception;
    :catchall_c0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public onBackPressed()V
    .registers 1

    .prologue
    .line 681
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    .line 683
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/dualclock/WCCities2;->finish()V

    .line 685
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 2
    .parameter "newConfig"

    .prologue
    .line 675
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 677
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 4
    .parameter "savedInstanceState"

    .prologue
    .line 157
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 158
    const v1, 0x7f030004

    invoke-virtual {p0, v1}, Lcom/sec/android/widgetapp/dualclock/WCCities2;->setContentView(I)V

    .line 160
    sget-object v1, Lcom/sec/android/widgetapp/dualclock/WCCities2;->mTimeZoneFinder:Lcom/sec/android/widgetapp/dualclock/TimeZoneFinder;

    if-nez v1, :cond_14

    .line 161
    new-instance v1, Lcom/sec/android/widgetapp/dualclock/TimeZoneFinder;

    invoke-direct {v1, p0}, Lcom/sec/android/widgetapp/dualclock/TimeZoneFinder;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/sec/android/widgetapp/dualclock/WCCities2;->mTimeZoneFinder:Lcom/sec/android/widgetapp/dualclock/TimeZoneFinder;

    .line 163
    :cond_14
    const v1, 0x7f0a004b

    invoke-virtual {p0, v1}, Lcom/sec/android/widgetapp/dualclock/WCCities2;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 164
    .local v0, button:Landroid/widget/Button;
    const v1, 0x7f080007

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 165
    const/high16 v1, 0x41a0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextSize(F)V

    .line 166
    new-instance v1, Lcom/sec/android/widgetapp/dualclock/WCCities2$2;

    invoke-direct {v1, p0}, Lcom/sec/android/widgetapp/dualclock/WCCities2$2;-><init>(Lcom/sec/android/widgetapp/dualclock/WCCities2;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 172
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sput-object v1, Lcom/sec/android/widgetapp/dualclock/WCCities2;->mCityList:Ljava/util/ArrayList;

    .line 173
    new-instance v1, Lcom/sec/android/widgetapp/dualclock/City;

    invoke-direct {v1, p0}, Lcom/sec/android/widgetapp/dualclock/City;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/sec/android/widgetapp/dualclock/WCCities2;->aCity:Lcom/sec/android/widgetapp/dualclock/City;

    .line 174
    invoke-direct {p0}, Lcom/sec/android/widgetapp/dualclock/WCCities2;->initControl()V

    .line 175
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sec/android/widgetapp/dualclock/WCCities2;->isCurrentLocationfind:Z

    .line 176
    return-void
.end method

.method protected onDestroy()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 205
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 207
    iget-object v0, p0, Lcom/sec/android/widgetapp/dualclock/WCCities2;->aCity:Lcom/sec/android/widgetapp/dualclock/City;

    if-eqz v0, :cond_1e

    .line 209
    iget-object v0, p0, Lcom/sec/android/widgetapp/dualclock/WCCities2;->aCity:Lcom/sec/android/widgetapp/dualclock/City;

    iget-object v0, v0, Lcom/sec/android/widgetapp/dualclock/City;->cities:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 210
    iget-object v0, p0, Lcom/sec/android/widgetapp/dualclock/WCCities2;->aCity:Lcom/sec/android/widgetapp/dualclock/City;

    iget-object v0, v0, Lcom/sec/android/widgetapp/dualclock/City;->citiesID:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 211
    iget-object v0, p0, Lcom/sec/android/widgetapp/dualclock/WCCities2;->aCity:Lcom/sec/android/widgetapp/dualclock/City;

    iput-object v1, v0, Lcom/sec/android/widgetapp/dualclock/City;->cities:Ljava/util/HashMap;

    .line 212
    iget-object v0, p0, Lcom/sec/android/widgetapp/dualclock/WCCities2;->aCity:Lcom/sec/android/widgetapp/dualclock/City;

    iput-object v1, v0, Lcom/sec/android/widgetapp/dualclock/City;->citiesID:Ljava/util/HashMap;

    .line 214
    :cond_1e
    iput-object v1, p0, Lcom/sec/android/widgetapp/dualclock/WCCities2;->mList:Landroid/widget/ListView;

    .line 216
    iget-object v0, p0, Lcom/sec/android/widgetapp/dualclock/WCCities2;->adapter:Landroid/widget/ArrayAdapter;

    if-eqz v0, :cond_29

    .line 217
    iget-object v0, p0, Lcom/sec/android/widgetapp/dualclock/WCCities2;->adapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->clear()V

    .line 220
    :cond_29
    iput-object v1, p0, Lcom/sec/android/widgetapp/dualclock/WCCities2;->adapter:Landroid/widget/ArrayAdapter;

    .line 222
    iget-object v0, p0, Lcom/sec/android/widgetapp/dualclock/WCCities2;->items:Ljava/util/ArrayList;

    if-eqz v0, :cond_34

    .line 224
    iget-object v0, p0, Lcom/sec/android/widgetapp/dualclock/WCCities2;->items:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 226
    :cond_34
    iput-object v1, p0, Lcom/sec/android/widgetapp/dualclock/WCCities2;->items:Ljava/util/ArrayList;

    .line 227
    return-void
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .registers 5
    .parameter "view"
    .parameter "KeyCode"
    .parameter "event"

    .prologue
    .line 343
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_d

    const/16 v0, 0x42

    if-ne p2, v0, :cond_d

    .line 346
    invoke-direct {p0}, Lcom/sec/android/widgetapp/dualclock/WCCities2;->downAutoTextKeypad()V

    .line 350
    :cond_d
    const/4 v0, 0x0

    return v0
.end method

.method protected onPause()V
    .registers 1

    .prologue
    .line 194
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 196
    return-void
.end method

.method protected onResume()V
    .registers 2

    .prologue
    .line 181
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 182
    iget-boolean v0, p0, Lcom/sec/android/widgetapp/dualclock/WCCities2;->isCurrentLocationfind:Z

    if-eqz v0, :cond_8

    .line 189
    :cond_7
    :goto_7
    return-void

    .line 185
    :cond_8
    iget-object v0, p0, Lcom/sec/android/widgetapp/dualclock/WCCities2;->mBundle:Ljava/lang/String;

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/sec/android/widgetapp/dualclock/WCCities2;->mBundle:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_7

    .line 186
    :cond_14
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/dualclock/WCCities2;->listBinding()V

    goto :goto_7
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .registers 5
    .parameter "view"
    .parameter "firstVisibleItem"
    .parameter "visibleItemCount"
    .parameter "totalItemCount"

    .prologue
    .line 696
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .registers 3
    .parameter "view"
    .parameter "scrollState"

    .prologue
    .line 689
    invoke-direct {p0}, Lcom/sec/android/widgetapp/dualclock/WCCities2;->downAutoTextKeypad()V

    .line 691
    return-void
.end method

.method protected onStop()V
    .registers 1

    .prologue
    .line 200
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 201
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 20
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 550
    const/4 v2, -0x1

    .line 552
    .local v2, dPostion:I
    iget-object v9, p0, Lcom/sec/android/widgetapp/dualclock/WCCities2;->TAG:Ljava/lang/String;

    const-string v10, "onTextChanged()"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 554
    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    .line 556
    .local v6, sb:Ljava/lang/StringBuffer;
    const v9, 0x7f0a004a

    invoke-virtual {p0, v9}, Lcom/sec/android/widgetapp/dualclock/WCCities2;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/AutoCompleteTextView;

    .line 558
    .local v8, txt_search:Landroid/widget/AutoCompleteTextView;
    invoke-virtual {v8}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    .line 560
    .local v7, txt:Ljava/lang/String;
    iput-object v7, p0, Lcom/sec/android/widgetapp/dualclock/WCCities2;->mBundle:Ljava/lang/String;

    .line 562
    iget-object v9, p0, Lcom/sec/android/widgetapp/dualclock/WCCities2;->items:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->clear()V

    .line 564
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v9

    if-eqz v9, :cond_c8

    .line 566
    iget-object v9, p0, Lcom/sec/android/widgetapp/dualclock/WCCities2;->aCity:Lcom/sec/android/widgetapp/dualclock/City;

    invoke-virtual {v9}, Lcom/sec/android/widgetapp/dualclock/City;->getCitiesByName()[Lcom/sec/android/widgetapp/dualclock/City$CityInfo;

    move-result-object v0

    .local v0, arr$:[Lcom/sec/android/widgetapp/dualclock/City$CityInfo;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_33
    if-ge v3, v4, :cond_d5

    aget-object v1, v0, v3

    .line 568
    .local v1, c:Lcom/sec/android/widgetapp/dualclock/City$CityInfo;
    invoke-virtual {v1}, Lcom/sec/android/widgetapp/dualclock/City$CityInfo;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v10

    if-ge v9, v10, :cond_56

    invoke-virtual {v1}, Lcom/sec/android/widgetapp/dualclock/City$CityInfo;->getCountry()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v10

    if-ge v9, v10, :cond_56

    .line 566
    :cond_53
    :goto_53
    add-int/lit8 v3, v3, 0x1

    goto :goto_33

    .line 575
    :cond_56
    invoke-virtual {v1}, Lcom/sec/android/widgetapp/dualclock/City$CityInfo;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9, v7}, Lcom/sec/android/widgetapp/dualclock/WCCities2;->filterItem(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_6a

    invoke-virtual {v1}, Lcom/sec/android/widgetapp/dualclock/City$CityInfo;->getCountry()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9, v7}, Lcom/sec/android/widgetapp/dualclock/WCCities2;->filterItem(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_53

    .line 578
    :cond_6a
    invoke-virtual {v1}, Lcom/sec/android/widgetapp/dualclock/City$CityInfo;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 580
    const-string v9, " / "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 582
    invoke-virtual {v1}, Lcom/sec/android/widgetapp/dualclock/City$CityInfo;->getCountry()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 584
    iget-object v9, p0, Lcom/sec/android/widgetapp/dualclock/WCCities2;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "onTextChanged.sb.toString()"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 586
    iget-object v9, p0, Lcom/sec/android/widgetapp/dualclock/WCCities2;->items:Ljava/util/ArrayList;

    new-instance v10, Lcom/sec/android/widgetapp/dualclock/ListItem;

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v1}, Lcom/sec/android/widgetapp/dualclock/City$CityInfo;->getGMT()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v1}, Lcom/sec/android/widgetapp/dualclock/City$CityInfo;->getRawOffsetMillis()I

    move-result v13

    invoke-virtual {v1}, Lcom/sec/android/widgetapp/dualclock/City$CityInfo;->getUniqueID()I

    move-result v14

    invoke-direct {v10, v11, v12, v13, v14}, Lcom/sec/android/widgetapp/dualclock/ListItem;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 589
    iget v9, p0, Lcom/sec/android/widgetapp/dualclock/WCCities2;->uniqueId:I

    invoke-virtual {v1}, Lcom/sec/android/widgetapp/dualclock/City$CityInfo;->getUniqueID()I

    move-result v10

    if-ne v9, v10, :cond_c3

    .line 591
    iget-object v9, p0, Lcom/sec/android/widgetapp/dualclock/WCCities2;->items:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    add-int/lit8 v2, v9, -0x1

    .line 593
    :cond_c3
    const/4 v9, 0x0

    invoke-virtual {v6, v9}, Ljava/lang/StringBuffer;->setLength(I)V

    goto :goto_53

    .line 601
    .end local v0           #arr$:[Lcom/sec/android/widgetapp/dualclock/City$CityInfo;
    .end local v1           #c:Lcom/sec/android/widgetapp/dualclock/City$CityInfo;
    .end local v3           #i$:I
    .end local v4           #len$:I
    :cond_c8
    iget-boolean v9, p0, Lcom/sec/android/widgetapp/dualclock/WCCities2;->isGMT_sort:Z

    const/4 v10, 0x1

    if-ne v9, v10, :cond_11a

    iget-object v9, p0, Lcom/sec/android/widgetapp/dualclock/WCCities2;->aCity:Lcom/sec/android/widgetapp/dualclock/City;

    invoke-virtual {v9}, Lcom/sec/android/widgetapp/dualclock/City;->setupCityListByGMT()Ljava/util/ArrayList;

    move-result-object v9

    :goto_d3
    iput-object v9, p0, Lcom/sec/android/widgetapp/dualclock/WCCities2;->items:Ljava/util/ArrayList;

    .line 606
    :cond_d5
    const v5, 0x7f030003

    .line 608
    .local v5, listResId:I
    iget-object v9, p0, Lcom/sec/android/widgetapp/dualclock/WCCities2;->items:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-nez v9, :cond_f8

    .line 610
    iget-object v9, p0, Lcom/sec/android/widgetapp/dualclock/WCCities2;->items:Ljava/util/ArrayList;

    new-instance v10, Lcom/sec/android/widgetapp/dualclock/ListItem;

    invoke-virtual {p0}, Lcom/sec/android/widgetapp/dualclock/WCCities2;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f080005

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Lcom/sec/android/widgetapp/dualclock/ListItem;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 612
    const v5, 0x7f030002

    .line 616
    :cond_f8
    new-instance v9, Lcom/sec/android/widgetapp/dualclock/ListAdapter;

    iget-object v10, p0, Lcom/sec/android/widgetapp/dualclock/WCCities2;->items:Ljava/util/ArrayList;

    invoke-direct {v9, p0, v5, v10}, Lcom/sec/android/widgetapp/dualclock/ListAdapter;-><init>(Landroid/content/Context;ILjava/util/ArrayList;)V

    iput-object v9, p0, Lcom/sec/android/widgetapp/dualclock/WCCities2;->adapter:Landroid/widget/ArrayAdapter;

    .line 618
    iget-object v9, p0, Lcom/sec/android/widgetapp/dualclock/WCCities2;->mList:Landroid/widget/ListView;

    iget-object v10, p0, Lcom/sec/android/widgetapp/dualclock/WCCities2;->adapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v9, v10}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 620
    const/4 v9, -0x1

    if-eq v2, v9, :cond_119

    .line 622
    iget-object v9, p0, Lcom/sec/android/widgetapp/dualclock/WCCities2;->items:Ljava/util/ArrayList;

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/sec/android/widgetapp/dualclock/ListItem;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Lcom/sec/android/widgetapp/dualclock/ListItem;->setSelected(Z)V

    .line 623
    iput v2, p0, Lcom/sec/android/widgetapp/dualclock/WCCities2;->tempPos:I

    .line 626
    :cond_119
    return-void

    .line 601
    .end local v5           #listResId:I
    :cond_11a
    iget-object v9, p0, Lcom/sec/android/widgetapp/dualclock/WCCities2;->aCity:Lcom/sec/android/widgetapp/dualclock/City;

    invoke-virtual {v9}, Lcom/sec/android/widgetapp/dualclock/City;->setupCityListByName()Ljava/util/ArrayList;

    move-result-object v9

    goto :goto_d3
.end method

.method public save()V
    .registers 14

    .prologue
    const/4 v2, 0x0

    .line 436
    iget-object v0, p0, Lcom/sec/android/widgetapp/dualclock/WCCities2;->aCity:Lcom/sec/android/widgetapp/dualclock/City;

    iget-object v1, p0, Lcom/sec/android/widgetapp/dualclock/WCCities2;->mCity:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/sec/android/widgetapp/dualclock/City;->findCity_objectByName(Ljava/lang/String;)Lcom/sec/android/widgetapp/dualclock/City$CityInfo;

    move-result-object v7

    .line 438
    .local v7, city:Lcom/sec/android/widgetapp/dualclock/City$CityInfo;
    const-string v5, "homezone asc"

    .line 440
    .local v5, orderBy:Ljava/lang/String;
    new-instance v10, Ljava/lang/StringBuffer;

    invoke-direct {v10}, Ljava/lang/StringBuffer;-><init>()V

    .line 442
    .local v10, sb:Ljava/lang/StringBuffer;
    const-string v12, "homezone = "

    .line 444
    .local v12, str:Ljava/lang/String;
    invoke-virtual {v10, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 446
    const/4 v0, 0x2

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 448
    invoke-virtual {v10}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    .line 450
    .local v3, whereClause:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/dualclock/WCCities2;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/sec/android/widgetapp/dualclock/Const;->DATA_URI:Landroid/net/Uri;

    move-object v4, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 455
    .local v6, c:Landroid/database/Cursor;
    :try_start_2c
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v8

    .line 457
    .local v8, cursorCount:I
    iget-object v0, p0, Lcom/sec/android/widgetapp/dualclock/WCCities2;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "save().cursorCount = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 459
    if-nez v8, :cond_6a

    .line 461
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/dualclock/WCCities2;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/sec/android/widgetapp/dualclock/Const;->DATA_URI:Landroid/net/Uri;

    const-string v2, "insert"

    invoke-virtual {p0, v7, v2}, Lcom/sec/android/widgetapp/dualclock/WCCities2;->getContentValues(Lcom/sec/android/widgetapp/dualclock/City$CityInfo;Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_59
    .catchall {:try_start_2c .. :try_end_59} :catchall_c0
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_2c .. :try_end_59} :catch_7b
    .catch Ljava/lang/Exception; {:try_start_2c .. :try_end_59} :catch_96

    .line 481
    :goto_59
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 483
    new-instance v0, Landroid/content/Intent;

    const-string v1, "dualclock.add_city"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/sec/android/widgetapp/dualclock/WCCities2;->sendBroadcast(Landroid/content/Intent;)V

    .line 485
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/dualclock/WCCities2;->finish()V

    .line 489
    .end local v8           #cursorCount:I
    :goto_69
    return-void

    .line 466
    .restart local v8       #cursorCount:I
    :cond_6a
    :try_start_6a
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/dualclock/WCCities2;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/sec/android/widgetapp/dualclock/Const;->DATA_URI:Landroid/net/Uri;

    const-string v2, "insert"

    invoke-virtual {p0, v7, v2}, Lcom/sec/android/widgetapp/dualclock/WCCities2;->getContentValues(Lcom/sec/android/widgetapp/dualclock/City$CityInfo;Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v2

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_7a
    .catchall {:try_start_6a .. :try_end_7a} :catchall_c0
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_6a .. :try_end_7a} :catch_7b
    .catch Ljava/lang/Exception; {:try_start_6a .. :try_end_7a} :catch_96

    goto :goto_59

    .line 471
    .end local v8           #cursorCount:I
    :catch_7b
    move-exception v11

    .line 473
    .local v11, se:Landroid/database/sqlite/SQLiteFullException;
    :try_start_7c
    new-instance v0, Lcom/sec/android/widgetapp/dualclock/Messages;

    invoke-direct {v0}, Lcom/sec/android/widgetapp/dualclock/Messages;-><init>()V

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/sec/android/widgetapp/dualclock/Messages;->showTOAST(Landroid/content/Context;I)V
    :try_end_85
    .catchall {:try_start_7c .. :try_end_85} :catchall_c0

    .line 481
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 483
    new-instance v0, Landroid/content/Intent;

    const-string v1, "dualclock.add_city"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/sec/android/widgetapp/dualclock/WCCities2;->sendBroadcast(Landroid/content/Intent;)V

    .line 485
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/dualclock/WCCities2;->finish()V

    goto :goto_69

    .line 475
    .end local v11           #se:Landroid/database/sqlite/SQLiteFullException;
    :catch_96
    move-exception v9

    .line 477
    .local v9, e:Ljava/lang/Exception;
    :try_start_97
    iget-object v0, p0, Lcom/sec/android/widgetapp/dualclock/WCCities2;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_af
    .catchall {:try_start_97 .. :try_end_af} :catchall_c0

    .line 481
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 483
    new-instance v0, Landroid/content/Intent;

    const-string v1, "dualclock.add_city"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/sec/android/widgetapp/dualclock/WCCities2;->sendBroadcast(Landroid/content/Intent;)V

    .line 485
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/dualclock/WCCities2;->finish()V

    goto :goto_69

    .line 481
    .end local v9           #e:Ljava/lang/Exception;
    :catchall_c0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 483
    new-instance v1, Landroid/content/Intent;

    const-string v2, "dualclock.add_city"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/sec/android/widgetapp/dualclock/WCCities2;->sendBroadcast(Landroid/content/Intent;)V

    .line 485
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/dualclock/WCCities2;->finish()V

    throw v0
.end method
