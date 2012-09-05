.class public Lcom/sec/android/app/selftestmode/SelfTestModeMain;
.super Landroid/app/Activity;
.source "SelfTestModeMain.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# static fields
.field private static mSelfTestAdapter:Lcom/sec/android/app/selftestmode/SelfTestListAdapter;


# instance fields
.field private mListView:Landroid/widget/ListView;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 26
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private init()V
    .registers 3

    .prologue
    .line 47
    const v0, 0x7f09000c

    invoke-virtual {p0, v0}, Lcom/sec/android/app/selftestmode/SelfTestModeMain;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/sec/android/app/selftestmode/SelfTestModeMain;->mListView:Landroid/widget/ListView;

    .line 48
    invoke-virtual {p0}, Lcom/sec/android/app/selftestmode/SelfTestModeMain;->getLastNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/selftestmode/SelfTestListAdapter;

    sput-object v0, Lcom/sec/android/app/selftestmode/SelfTestModeMain;->mSelfTestAdapter:Lcom/sec/android/app/selftestmode/SelfTestListAdapter;

    .line 49
    sget-object v0, Lcom/sec/android/app/selftestmode/SelfTestModeMain;->mSelfTestAdapter:Lcom/sec/android/app/selftestmode/SelfTestListAdapter;

    if-nez v0, :cond_1e

    .line 50
    new-instance v0, Lcom/sec/android/app/selftestmode/SelfTestListAdapter;

    invoke-direct {v0, p0}, Lcom/sec/android/app/selftestmode/SelfTestListAdapter;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/sec/android/app/selftestmode/SelfTestModeMain;->mSelfTestAdapter:Lcom/sec/android/app/selftestmode/SelfTestListAdapter;

    .line 52
    :cond_1e
    iget-object v0, p0, Lcom/sec/android/app/selftestmode/SelfTestModeMain;->mListView:Landroid/widget/ListView;

    sget-object v1, Lcom/sec/android/app/selftestmode/SelfTestModeMain;->mSelfTestAdapter:Lcom/sec/android/app/selftestmode/SelfTestListAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 53
    iget-object v0, p0, Lcom/sec/android/app/selftestmode/SelfTestModeMain;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 54
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 3
    .parameter "savedInstanceState"

    .prologue
    .line 32
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 33
    const v0, 0x7f030006

    invoke-virtual {p0, v0}, Lcom/sec/android/app/selftestmode/SelfTestModeMain;->setContentView(I)V

    .line 34
    invoke-direct {p0}, Lcom/sec/android/app/selftestmode/SelfTestModeMain;->init()V

    .line 35
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 7
    .parameter
    .parameter "view"
    .parameter "pos"
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
    .line 57
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    sget-object v0, Lcom/sec/android/app/selftestmode/SelfTestModeMain;->mSelfTestAdapter:Lcom/sec/android/app/selftestmode/SelfTestListAdapter;

    invoke-virtual {v0, p3}, Lcom/sec/android/app/selftestmode/SelfTestListAdapter;->startTest(I)V

    .line 58
    return-void
.end method

.method protected onPause()V
    .registers 2

    .prologue
    .line 38
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 39
    sget-object v0, Lcom/sec/android/app/selftestmode/SelfTestModeMain;->mSelfTestAdapter:Lcom/sec/android/app/selftestmode/SelfTestListAdapter;

    invoke-virtual {v0}, Lcom/sec/android/app/selftestmode/SelfTestListAdapter;->stopTest()V

    .line 40
    return-void
.end method

.method protected onResume()V
    .registers 1

    .prologue
    .line 43
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 44
    return-void
.end method
