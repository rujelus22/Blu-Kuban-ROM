.class public Lcom/sprint/smps/activities/ViewMyTransactions;
.super Landroid/app/ListActivity;
.source "ViewMyTransactions.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/sprint/smps/TimeoutListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sprint/smps/activities/ViewMyTransactions$TransactionListAdapter;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = null

.field private static lastSelected:Ljava/lang/String; = null

.field public static final name:Ljava/lang/String; = "View My Transactions"

.field private static parentActivity:Lcom/sprint/smps/activities/ViewMyTransactions;

.field private static response:Lcom/sprint/smps/service/ClientResponse;


# instance fields
.field protected buttons:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Class",
            "<*>;>;"
        }
    .end annotation
.end field

.field private showList:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v1, 0x0

    .line 33
    const-class v0, Lcom/sprint/smps/activities/ViewMyTransactions;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sprint/smps/activities/ViewMyTransactions;->TAG:Ljava/lang/String;

    .line 36
    sput-object v1, Lcom/sprint/smps/activities/ViewMyTransactions;->parentActivity:Lcom/sprint/smps/activities/ViewMyTransactions;

    .line 37
    sput-object v1, Lcom/sprint/smps/activities/ViewMyTransactions;->response:Lcom/sprint/smps/service/ClientResponse;

    .line 38
    const-string v0, ""

    sput-object v0, Lcom/sprint/smps/activities/ViewMyTransactions;->lastSelected:Ljava/lang/String;

    .line 30
    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 50
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    .line 35
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/sprint/smps/activities/ViewMyTransactions;->buttons:Ljava/util/Hashtable;

    .line 40
    new-instance v0, Lcom/sprint/smps/activities/ViewMyTransactions$1;

    invoke-direct {v0, p0}, Lcom/sprint/smps/activities/ViewMyTransactions$1;-><init>(Lcom/sprint/smps/activities/ViewMyTransactions;)V

    iput-object v0, p0, Lcom/sprint/smps/activities/ViewMyTransactions;->showList:Ljava/lang/Runnable;

    .line 52
    sput-object p0, Lcom/sprint/smps/activities/ViewMyTransactions;->parentActivity:Lcom/sprint/smps/activities/ViewMyTransactions;

    .line 53
    const-string v0, "View My Transactions"

    invoke-static {p0, v0}, Lcom/sprint/smps/activities/ActivityHelper;->addActivity(Landroid/app/Activity;Ljava/lang/String;)V

    .line 54
    return-void
.end method

.method static synthetic access$0()Lcom/sprint/smps/activities/ViewMyTransactions;
    .registers 1

    .prologue
    .line 36
    sget-object v0, Lcom/sprint/smps/activities/ViewMyTransactions;->parentActivity:Lcom/sprint/smps/activities/ViewMyTransactions;

    return-object v0
.end method

.method static synthetic access$1()Lcom/sprint/smps/service/ClientResponse;
    .registers 1

    .prologue
    .line 37
    sget-object v0, Lcom/sprint/smps/activities/ViewMyTransactions;->response:Lcom/sprint/smps/service/ClientResponse;

    return-object v0
.end method

.method static synthetic access$2()Ljava/lang/String;
    .registers 1

    .prologue
    .line 38
    sget-object v0, Lcom/sprint/smps/activities/ViewMyTransactions;->lastSelected:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3(Lcom/sprint/smps/service/ClientResponse;)V
    .registers 1
    .parameter

    .prologue
    .line 37
    sput-object p0, Lcom/sprint/smps/activities/ViewMyTransactions;->response:Lcom/sprint/smps/service/ClientResponse;

    return-void
.end method

.method static synthetic access$4(Ljava/lang/String;)V
    .registers 1
    .parameter

    .prologue
    .line 38
    sput-object p0, Lcom/sprint/smps/activities/ViewMyTransactions;->lastSelected:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$5(Lcom/sprint/smps/activities/ViewMyTransactions;)V
    .registers 1
    .parameter

    .prologue
    .line 120
    invoke-direct {p0}, Lcom/sprint/smps/activities/ViewMyTransactions;->retrieveData()V

    return-void
.end method

.method static synthetic access$6(Lcom/sprint/smps/activities/ViewMyTransactions;)Ljava/lang/String;
    .registers 2
    .parameter

    .prologue
    .line 151
    invoke-direct {p0}, Lcom/sprint/smps/activities/ViewMyTransactions;->getRange()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$7(Lcom/sprint/smps/activities/ViewMyTransactions;)Ljava/lang/Runnable;
    .registers 2
    .parameter

    .prologue
    .line 40
    iget-object v0, p0, Lcom/sprint/smps/activities/ViewMyTransactions;->showList:Ljava/lang/Runnable;

    return-object v0
.end method

.method private getRange()Ljava/lang/String;
    .registers 4

    .prologue
    .line 153
    const/16 v0, 0x1e

    .line 155
    .local v0, range:I
    const v2, 0x7f08004c

    invoke-virtual {p0, v2}, Lcom/sprint/smps/activities/ViewMyTransactions;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Spinner;

    invoke-virtual {v2}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v1

    .line 156
    .local v1, selectedPos:I
    packed-switch v1, :pswitch_data_1e

    .line 165
    :goto_12
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 158
    :pswitch_17
    const/16 v0, 0x3c

    .line 159
    goto :goto_12

    .line 161
    :pswitch_1a
    const/16 v0, 0x78

    goto :goto_12

    .line 156
    nop

    :pswitch_data_1e
    .packed-switch 0x1
        :pswitch_17
        :pswitch_1a
    .end packed-switch
.end method

.method private retrieveData()V
    .registers 3

    .prologue
    .line 122
    new-instance v0, Lcom/sprint/smps/activities/ViewMyTransactions$3;

    invoke-direct {v0, p0}, Lcom/sprint/smps/activities/ViewMyTransactions$3;-><init>(Lcom/sprint/smps/activities/ViewMyTransactions;)V

    .line 148
    .local v0, runnable:Ljava/lang/Runnable;
    new-instance v1, Ljava/lang/Thread;

    invoke-direct {v1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 149
    return-void
.end method


# virtual methods
.method public finish()V
    .registers 2

    .prologue
    .line 105
    invoke-super {p0}, Landroid/app/ListActivity;->finish()V

    .line 106
    const/4 v0, 0x0

    sput-object v0, Lcom/sprint/smps/activities/ViewMyTransactions;->response:Lcom/sprint/smps/service/ClientResponse;

    .line 107
    const-string v0, "View My Transactions"

    invoke-static {v0}, Lcom/sprint/smps/activities/ActivityHelper;->dismissActivity(Ljava/lang/String;)V

    .line 108
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 2
    .parameter "v"

    .prologue
    .line 260
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 8
    .parameter "savedInstanceState"

    .prologue
    const v5, 0x7f08001f

    const/4 v4, 0x7

    .line 59
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 60
    invoke-static {}, Lcom/sprint/smps/properties/Properties;->referenced()V

    .line 61
    invoke-virtual {p0, v4}, Lcom/sprint/smps/activities/ViewMyTransactions;->requestWindowFeature(I)Z

    .line 62
    const v2, 0x7f03001d

    invoke-virtual {p0, v2}, Lcom/sprint/smps/activities/ViewMyTransactions;->setContentView(I)V

    .line 63
    invoke-virtual {p0}, Lcom/sprint/smps/activities/ViewMyTransactions;->getListView()Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {p0, v5}, Lcom/sprint/smps/activities/ViewMyTransactions;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 65
    sget-object v2, Lcom/sprint/smps/properties/Properties;->localyticsSession:Lcom/Localytics/android/LocalyticsSession;

    const-string v3, "View My Transactions"

    invoke-virtual {v2, v3}, Lcom/Localytics/android/LocalyticsSession;->tagEvent(Ljava/lang/String;)V

    .line 67
    invoke-virtual {p0}, Lcom/sprint/smps/activities/ViewMyTransactions;->getWindow()Landroid/view/Window;

    move-result-object v2

    const v3, 0x7f03001c

    invoke-virtual {v2, v4, v3}, Landroid/view/Window;->setFeatureInt(II)V

    .line 68
    const v2, 0x7f08004a

    invoke-virtual {p0, v2}, Lcom/sprint/smps/activities/ViewMyTransactions;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f060023

    invoke-virtual {p0, v3}, Lcom/sprint/smps/activities/ViewMyTransactions;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 69
    const v2, 0x7f08004b

    invoke-virtual {p0, v2}, Lcom/sprint/smps/activities/ViewMyTransactions;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 71
    invoke-virtual {p0, v5}, Lcom/sprint/smps/activities/ViewMyTransactions;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 73
    const v2, 0x7f08004c

    invoke-virtual {p0, v2}, Lcom/sprint/smps/activities/ViewMyTransactions;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Spinner;

    .line 74
    .local v1, s:Landroid/widget/Spinner;
    const v2, 0x7f050003

    const v3, 0x7f03001b

    invoke-static {p0, v2, v3}, Landroid/widget/ArrayAdapter;->createFromResource(Landroid/content/Context;II)Landroid/widget/ArrayAdapter;

    move-result-object v0

    .line 75
    .local v0, adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<*>;"
    const v2, 0x1090009

    invoke-virtual {v0, v2}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 76
    invoke-virtual {v1, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 77
    new-instance v2, Lcom/sprint/smps/activities/ViewMyTransactions$2;

    invoke-direct {v2, p0}, Lcom/sprint/smps/activities/ViewMyTransactions$2;-><init>(Lcom/sprint/smps/activities/ViewMyTransactions;)V

    invoke-virtual {v1, v2}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 94
    invoke-static {p0}, Lcom/sprint/smps/TimeOutThread;->listener(Lcom/sprint/smps/TimeoutListener;)V

    .line 95
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .registers 5
    .parameter "id"

    .prologue
    .line 244
    const/4 v0, 0x0

    .line 246
    .local v0, dialog:Landroid/app/Dialog;
    if-nez p1, :cond_16

    .line 248
    new-instance v1, Landroid/app/ProgressDialog;

    invoke-direct {v1, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 249
    .local v1, progDialog:Landroid/app/ProgressDialog;
    const-string v2, "Please wait, retrieving transaction data..."

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 250
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 251
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 252
    move-object v0, v1

    .line 255
    .end local v1           #progDialog:Landroid/app/ProgressDialog;
    :cond_16
    return-object v0
.end method

.method public onPause()V
    .registers 1

    .prologue
    .line 99
    invoke-static {}, Lcom/sprint/smps/TimeOutThread;->bumpTimout()V

    .line 100
    invoke-super {p0}, Landroid/app/ListActivity;->onPause()V

    .line 101
    return-void
.end method

.method public onTimingOut(Ljava/lang/String;)V
    .registers 3
    .parameter "timeoutMsg"

    .prologue
    .line 264
    const v0, 0x7f08004b

    invoke-virtual {p0, v0}, Lcom/sprint/smps/activities/ViewMyTransactions;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 265
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3
    .parameter "event"

    .prologue
    .line 272
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 273
    invoke-static {}, Lcom/sprint/smps/properties/Properties;->referenced()V

    .line 274
    const/4 v0, 0x1

    return v0
.end method

.method public onTrackballEvent(Landroid/view/MotionEvent;)Z
    .registers 3
    .parameter "event"

    .prologue
    .line 267
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onTrackballEvent(Landroid/view/MotionEvent;)Z

    .line 268
    invoke-static {}, Lcom/sprint/smps/properties/Properties;->referenced()V

    .line 269
    const/4 v0, 0x1

    return v0
.end method

.method public onWindowFocusChanged(Z)V
    .registers 2
    .parameter "hasFocus"

    .prologue
    .line 113
    if-eqz p1, :cond_8

    .line 115
    invoke-static {}, Lcom/sprint/smps/properties/Properties;->referenced()V

    .line 116
    invoke-static {p0}, Lcom/sprint/smps/TimeOutThread;->listener(Lcom/sprint/smps/TimeoutListener;)V

    .line 118
    :cond_8
    return-void
.end method
