.class public Lcom/sprint/smps/activities/ViewFAQs;
.super Landroid/app/ListActivity;
.source "ViewFAQs.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/sprint/smps/TimeoutListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sprint/smps/activities/ViewFAQs$FaqListAdapter;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = null

.field public static listPos:I = 0x0

.field public static final name:Ljava/lang/String; = "View Faqs"

.field private static parentActivity:Lcom/sprint/smps/activities/ViewFAQs;

.field public static response:Lcom/sprint/smps/service/ClientResponse;

.field public static retrieveData:Z


# instance fields
.field private showList:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v1, 0x0

    .line 32
    const-class v0, Lcom/sprint/smps/activities/ViewFAQs;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sprint/smps/activities/ViewFAQs;->TAG:Ljava/lang/String;

    .line 34
    sput-object v1, Lcom/sprint/smps/activities/ViewFAQs;->parentActivity:Lcom/sprint/smps/activities/ViewFAQs;

    .line 35
    sput-object v1, Lcom/sprint/smps/activities/ViewFAQs;->response:Lcom/sprint/smps/service/ClientResponse;

    .line 36
    const/4 v0, -0x1

    sput v0, Lcom/sprint/smps/activities/ViewFAQs;->listPos:I

    .line 37
    const/4 v0, 0x0

    sput-boolean v0, Lcom/sprint/smps/activities/ViewFAQs;->retrieveData:Z

    .line 29
    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 53
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    .line 39
    new-instance v0, Lcom/sprint/smps/activities/ViewFAQs$1;

    invoke-direct {v0, p0}, Lcom/sprint/smps/activities/ViewFAQs$1;-><init>(Lcom/sprint/smps/activities/ViewFAQs;)V

    iput-object v0, p0, Lcom/sprint/smps/activities/ViewFAQs;->showList:Ljava/lang/Runnable;

    .line 55
    sput-object p0, Lcom/sprint/smps/activities/ViewFAQs;->parentActivity:Lcom/sprint/smps/activities/ViewFAQs;

    .line 56
    const-string v0, "View Faqs"

    invoke-static {p0, v0}, Lcom/sprint/smps/activities/ActivityHelper;->addActivity(Landroid/app/Activity;Ljava/lang/String;)V

    .line 57
    return-void
.end method

.method static synthetic access$0()Lcom/sprint/smps/activities/ViewFAQs;
    .registers 1

    .prologue
    .line 34
    sget-object v0, Lcom/sprint/smps/activities/ViewFAQs;->parentActivity:Lcom/sprint/smps/activities/ViewFAQs;

    return-object v0
.end method

.method static synthetic access$1(Lcom/sprint/smps/activities/ViewFAQs;)Ljava/lang/Runnable;
    .registers 2
    .parameter

    .prologue
    .line 39
    iget-object v0, p0, Lcom/sprint/smps/activities/ViewFAQs;->showList:Ljava/lang/Runnable;

    return-object v0
.end method

.method private retrieveData()V
    .registers 3

    .prologue
    .line 132
    new-instance v0, Lcom/sprint/smps/activities/ViewFAQs$2;

    invoke-direct {v0, p0}, Lcom/sprint/smps/activities/ViewFAQs$2;-><init>(Lcom/sprint/smps/activities/ViewFAQs;)V

    .line 153
    .local v0, runnable:Ljava/lang/Runnable;
    new-instance v1, Ljava/lang/Thread;

    invoke-direct {v1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 154
    return-void
.end method


# virtual methods
.method public finish()V
    .registers 2

    .prologue
    .line 126
    invoke-super {p0}, Landroid/app/ListActivity;->finish()V

    .line 127
    const/4 v0, 0x0

    sput-object v0, Lcom/sprint/smps/activities/ViewFAQs;->response:Lcom/sprint/smps/service/ClientResponse;

    .line 128
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 2
    .parameter "v"

    .prologue
    .line 122
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 7
    .parameter "savedInstanceState"

    .prologue
    const/4 v2, 0x7

    const v4, 0x7f08001f

    const/4 v3, 0x0

    .line 84
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 85
    invoke-static {}, Lcom/sprint/smps/properties/Properties;->referenced()V

    .line 86
    invoke-virtual {p0, v2}, Lcom/sprint/smps/activities/ViewFAQs;->requestWindowFeature(I)Z

    .line 87
    const v0, 0x7f03000a

    invoke-virtual {p0, v0}, Lcom/sprint/smps/activities/ViewFAQs;->setContentView(I)V

    .line 88
    invoke-virtual {p0}, Lcom/sprint/smps/activities/ViewFAQs;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {p0, v4}, Lcom/sprint/smps/activities/ViewFAQs;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 90
    sget-object v0, Lcom/sprint/smps/properties/Properties;->localyticsSession:Lcom/Localytics/android/LocalyticsSession;

    const-string v1, "View Faqs"

    invoke-virtual {v0, v1}, Lcom/Localytics/android/LocalyticsSession;->tagEvent(Ljava/lang/String;)V

    .line 92
    invoke-virtual {p0}, Lcom/sprint/smps/activities/ViewFAQs;->getWindow()Landroid/view/Window;

    move-result-object v0

    const v1, 0x7f03001c

    invoke-virtual {v0, v2, v1}, Landroid/view/Window;->setFeatureInt(II)V

    .line 93
    const v0, 0x7f08004a

    invoke-virtual {p0, v0}, Lcom/sprint/smps/activities/ViewFAQs;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    const v2, 0x7f060031

    invoke-virtual {p0, v2}, Lcom/sprint/smps/activities/ViewFAQs;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " - Software version: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/sprint/smps/properties/Properties;->appVersionName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 94
    const v0, 0x7f08004b

    invoke-virtual {p0, v0}, Lcom/sprint/smps/activities/ViewFAQs;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 96
    invoke-virtual {p0, v4}, Lcom/sprint/smps/activities/ViewFAQs;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 98
    invoke-static {}, Lcom/sprint/smps/properties/Properties;->referenced()V

    .line 99
    sget-object v0, Lcom/sprint/smps/activities/ViewFAQs;->response:Lcom/sprint/smps/service/ClientResponse;

    if-nez v0, :cond_85

    .line 101
    invoke-virtual {p0, v3}, Lcom/sprint/smps/activities/ViewFAQs;->showDialog(I)V

    .line 102
    invoke-direct {p0}, Lcom/sprint/smps/activities/ViewFAQs;->retrieveData()V

    .line 117
    :goto_81
    invoke-static {p0}, Lcom/sprint/smps/TimeOutThread;->listener(Lcom/sprint/smps/TimeoutListener;)V

    .line 118
    return-void

    .line 106
    :cond_85
    sget-object v0, Lcom/sprint/smps/activities/ViewFAQs;->response:Lcom/sprint/smps/service/ClientResponse;

    invoke-virtual {v0}, Lcom/sprint/smps/service/ClientResponse;->getFAQs()Ljava/util/LinkedHashMap;

    move-result-object v0

    if-eqz v0, :cond_ad

    sget-object v0, Lcom/sprint/smps/activities/ViewFAQs;->response:Lcom/sprint/smps/service/ClientResponse;

    invoke-virtual {v0}, Lcom/sprint/smps/service/ClientResponse;->getFAQs()Ljava/util/LinkedHashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_ad

    .line 107
    new-instance v0, Lcom/sprint/smps/activities/ViewFAQs$FaqListAdapter;

    sget-object v1, Lcom/sprint/smps/activities/ViewFAQs;->parentActivity:Lcom/sprint/smps/activities/ViewFAQs;

    sget-object v2, Lcom/sprint/smps/activities/ViewFAQs;->response:Lcom/sprint/smps/service/ClientResponse;

    invoke-virtual {v2}, Lcom/sprint/smps/service/ClientResponse;->getFAQQuestions()Ljava/util/List;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lcom/sprint/smps/activities/ViewFAQs$FaqListAdapter;-><init>(Lcom/sprint/smps/activities/ViewFAQs;Landroid/app/Activity;Ljava/util/List;)V

    invoke-virtual {p0, v0}, Lcom/sprint/smps/activities/ViewFAQs;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 114
    :goto_a9
    invoke-virtual {p0, v3}, Lcom/sprint/smps/activities/ViewFAQs;->removeDialog(I)V

    goto :goto_81

    .line 110
    :cond_ad
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sprint/smps/activities/ViewFAQs;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 111
    sget-object v0, Lcom/sprint/smps/activities/ViewFAQs;->parentActivity:Lcom/sprint/smps/activities/ViewFAQs;

    invoke-virtual {v0, v4}, Lcom/sprint/smps/activities/ViewFAQs;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_a9
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .registers 5
    .parameter "id"

    .prologue
    .line 239
    const/4 v0, 0x0

    .line 241
    .local v0, dialog:Landroid/app/Dialog;
    if-nez p1, :cond_16

    .line 243
    new-instance v1, Landroid/app/ProgressDialog;

    invoke-direct {v1, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 244
    .local v1, progDialog:Landroid/app/ProgressDialog;
    const-string v2, "Please wait, retrieving help information..."

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 245
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 246
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 247
    move-object v0, v1

    .line 250
    .end local v1           #progDialog:Landroid/app/ProgressDialog;
    :cond_16
    return-object v0
.end method

.method public onPause()V
    .registers 1

    .prologue
    .line 61
    invoke-static {}, Lcom/sprint/smps/TimeOutThread;->bumpTimout()V

    .line 62
    invoke-super {p0}, Landroid/app/ListActivity;->onPause()V

    .line 63
    return-void
.end method

.method public onTimingOut(Ljava/lang/String;)V
    .registers 3
    .parameter "timeoutMsg"

    .prologue
    .line 256
    const v0, 0x7f08004b

    invoke-virtual {p0, v0}, Lcom/sprint/smps/activities/ViewFAQs;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 257
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3
    .parameter "event"

    .prologue
    .line 264
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 265
    invoke-static {}, Lcom/sprint/smps/properties/Properties;->referenced()V

    .line 266
    const/4 v0, 0x1

    return v0
.end method

.method public onTrackballEvent(Landroid/view/MotionEvent;)Z
    .registers 3
    .parameter "event"

    .prologue
    .line 259
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onTrackballEvent(Landroid/view/MotionEvent;)Z

    .line 260
    invoke-static {}, Lcom/sprint/smps/properties/Properties;->referenced()V

    .line 261
    const/4 v0, 0x1

    return v0
.end method

.method public onWindowFocusChanged(Z)V
    .registers 4
    .parameter "hasFocus"

    .prologue
    const/4 v1, 0x0

    .line 68
    if-eqz p1, :cond_13

    .line 70
    invoke-static {}, Lcom/sprint/smps/properties/Properties;->referenced()V

    .line 71
    invoke-static {p0}, Lcom/sprint/smps/TimeOutThread;->listener(Lcom/sprint/smps/TimeoutListener;)V

    .line 72
    sget-boolean v0, Lcom/sprint/smps/activities/ViewFAQs;->retrieveData:Z

    if-eqz v0, :cond_13

    .line 74
    invoke-virtual {p0, v1}, Lcom/sprint/smps/activities/ViewFAQs;->showDialog(I)V

    .line 75
    invoke-direct {p0}, Lcom/sprint/smps/activities/ViewFAQs;->retrieveData()V

    .line 78
    :cond_13
    sput-boolean v1, Lcom/sprint/smps/activities/ViewFAQs;->retrieveData:Z

    .line 79
    return-void
.end method
