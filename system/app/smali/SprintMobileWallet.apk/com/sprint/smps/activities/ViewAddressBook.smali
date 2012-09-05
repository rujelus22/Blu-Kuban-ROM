.class public Lcom/sprint/smps/activities/ViewAddressBook;
.super Landroid/app/ListActivity;
.source "ViewAddressBook.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/sprint/smps/TimeoutListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sprint/smps/activities/ViewAddressBook$AddressListAdapter;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = null

.field public static listPos:I = 0x0

.field public static final name:Ljava/lang/String; = "View Address Book"

.field private static parentActivity:Lcom/sprint/smps/activities/ViewAddressBook;

.field public static response:Lcom/sprint/smps/service/ClientResponse;

.field public static retrieveData:Z


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

    .line 32
    const-class v0, Lcom/sprint/smps/activities/ViewAddressBook;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sprint/smps/activities/ViewAddressBook;->TAG:Ljava/lang/String;

    .line 35
    sput-object v1, Lcom/sprint/smps/activities/ViewAddressBook;->parentActivity:Lcom/sprint/smps/activities/ViewAddressBook;

    .line 36
    sput-object v1, Lcom/sprint/smps/activities/ViewAddressBook;->response:Lcom/sprint/smps/service/ClientResponse;

    .line 37
    const/4 v0, -0x1

    sput v0, Lcom/sprint/smps/activities/ViewAddressBook;->listPos:I

    .line 38
    const/4 v0, 0x0

    sput-boolean v0, Lcom/sprint/smps/activities/ViewAddressBook;->retrieveData:Z

    .line 29
    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 55
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    .line 34
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/sprint/smps/activities/ViewAddressBook;->buttons:Ljava/util/Hashtable;

    .line 40
    new-instance v0, Lcom/sprint/smps/activities/ViewAddressBook$1;

    invoke-direct {v0, p0}, Lcom/sprint/smps/activities/ViewAddressBook$1;-><init>(Lcom/sprint/smps/activities/ViewAddressBook;)V

    iput-object v0, p0, Lcom/sprint/smps/activities/ViewAddressBook;->showList:Ljava/lang/Runnable;

    .line 57
    sput-object p0, Lcom/sprint/smps/activities/ViewAddressBook;->parentActivity:Lcom/sprint/smps/activities/ViewAddressBook;

    .line 58
    const-string v0, "View Address Book"

    invoke-static {p0, v0}, Lcom/sprint/smps/activities/ActivityHelper;->addActivity(Landroid/app/Activity;Ljava/lang/String;)V

    .line 59
    return-void
.end method

.method static synthetic access$0()Lcom/sprint/smps/activities/ViewAddressBook;
    .registers 1

    .prologue
    .line 35
    sget-object v0, Lcom/sprint/smps/activities/ViewAddressBook;->parentActivity:Lcom/sprint/smps/activities/ViewAddressBook;

    return-object v0
.end method

.method static synthetic access$1(Lcom/sprint/smps/activities/ViewAddressBook;)Ljava/lang/Runnable;
    .registers 2
    .parameter

    .prologue
    .line 40
    iget-object v0, p0, Lcom/sprint/smps/activities/ViewAddressBook;->showList:Ljava/lang/Runnable;

    return-object v0
.end method

.method private retrieveData()V
    .registers 3

    .prologue
    .line 146
    new-instance v0, Lcom/sprint/smps/activities/ViewAddressBook$2;

    invoke-direct {v0, p0}, Lcom/sprint/smps/activities/ViewAddressBook$2;-><init>(Lcom/sprint/smps/activities/ViewAddressBook;)V

    .line 173
    .local v0, runnable:Ljava/lang/Runnable;
    new-instance v1, Ljava/lang/Thread;

    invoke-direct {v1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 174
    return-void
.end method


# virtual methods
.method public finish()V
    .registers 2

    .prologue
    .line 140
    invoke-super {p0}, Landroid/app/ListActivity;->finish()V

    .line 141
    const/4 v0, 0x0

    sput-object v0, Lcom/sprint/smps/activities/ViewAddressBook;->response:Lcom/sprint/smps/service/ClientResponse;

    .line 142
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 6
    .parameter "v"

    .prologue
    .line 130
    invoke-static {}, Lcom/sprint/smps/properties/Properties;->referenced()V

    .line 131
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    const v2, 0x7f080007

    if-ne v1, v2, :cond_29

    .line 133
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    iget-object v1, p0, Lcom/sprint/smps/activities/ViewAddressBook;->buttons:Ljava/util/Hashtable;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    invoke-static {p0, v2, v1}, Lcom/sprint/smps/activities/ActivityHelper;->getIntent(Landroid/app/Activity;ILjava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 134
    .local v0, intent:Landroid/content/Intent;
    if-eqz v0, :cond_29

    invoke-virtual {p0, v0}, Lcom/sprint/smps/activities/ViewAddressBook;->startActivity(Landroid/content/Intent;)V

    .line 136
    .end local v0           #intent:Landroid/content/Intent;
    :cond_29
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 10
    .parameter "savedInstanceState"

    .prologue
    const v7, 0x7f080015

    const v6, 0x7f080007

    const/4 v5, 0x7

    const/4 v3, 0x4

    const/4 v4, 0x0

    .line 86
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 87
    invoke-static {}, Lcom/sprint/smps/properties/Properties;->referenced()V

    .line 88
    invoke-virtual {p0, v5}, Lcom/sprint/smps/activities/ViewAddressBook;->requestWindowFeature(I)Z

    .line 89
    const v1, 0x7f030003

    invoke-virtual {p0, v1}, Lcom/sprint/smps/activities/ViewAddressBook;->setContentView(I)V

    .line 90
    invoke-virtual {p0}, Lcom/sprint/smps/activities/ViewAddressBook;->getListView()Landroid/widget/ListView;

    move-result-object v1

    const v2, 0x7f08001f

    invoke-virtual {p0, v2}, Lcom/sprint/smps/activities/ViewAddressBook;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 92
    sget-object v1, Lcom/sprint/smps/properties/Properties;->localyticsSession:Lcom/Localytics/android/LocalyticsSession;

    const-string v2, "View Address Book"

    invoke-virtual {v1, v2}, Lcom/Localytics/android/LocalyticsSession;->tagEvent(Ljava/lang/String;)V

    .line 94
    invoke-virtual {p0}, Lcom/sprint/smps/activities/ViewAddressBook;->getWindow()Landroid/view/Window;

    move-result-object v1

    const v2, 0x7f03001c

    invoke-virtual {v1, v5, v2}, Landroid/view/Window;->setFeatureInt(II)V

    .line 95
    const v1, 0x7f08004a

    invoke-virtual {p0, v1}, Lcom/sprint/smps/activities/ViewAddressBook;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f060027

    invoke-virtual {p0, v2}, Lcom/sprint/smps/activities/ViewAddressBook;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 96
    const v1, 0x7f08004b

    invoke-virtual {p0, v1}, Lcom/sprint/smps/activities/ViewAddressBook;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 98
    invoke-virtual {p0, v7}, Lcom/sprint/smps/activities/ViewAddressBook;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 99
    const v1, 0x7f080016

    invoke-virtual {p0, v1}, Lcom/sprint/smps/activities/ViewAddressBook;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 101
    invoke-virtual {p0, v6}, Lcom/sprint/smps/activities/ViewAddressBook;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 102
    .local v0, button:Landroid/widget/Button;
    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 103
    iget-object v1, p0, Lcom/sprint/smps/activities/ViewAddressBook;->buttons:Ljava/util/Hashtable;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-class v3, Lcom/sprint/smps/activities/AddAddress;

    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    invoke-static {}, Lcom/sprint/smps/properties/Properties;->referenced()V

    .line 106
    sget-object v1, Lcom/sprint/smps/activities/ViewAddressBook;->response:Lcom/sprint/smps/service/ClientResponse;

    if-nez v1, :cond_92

    .line 108
    invoke-virtual {p0, v4}, Lcom/sprint/smps/activities/ViewAddressBook;->showDialog(I)V

    .line 109
    invoke-direct {p0}, Lcom/sprint/smps/activities/ViewAddressBook;->retrieveData()V

    .line 125
    :goto_8e
    invoke-static {p0}, Lcom/sprint/smps/TimeOutThread;->listener(Lcom/sprint/smps/TimeoutListener;)V

    .line 126
    return-void

    .line 113
    :cond_92
    sget-object v1, Lcom/sprint/smps/activities/ViewAddressBook;->response:Lcom/sprint/smps/service/ClientResponse;

    invoke-virtual {v1}, Lcom/sprint/smps/service/ClientResponse;->getLstAddress()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_ba

    sget-object v1, Lcom/sprint/smps/activities/ViewAddressBook;->response:Lcom/sprint/smps/service/ClientResponse;

    invoke-virtual {v1}, Lcom/sprint/smps/service/ClientResponse;->getLstAddress()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_ba

    .line 114
    new-instance v1, Lcom/sprint/smps/activities/ViewAddressBook$AddressListAdapter;

    sget-object v2, Lcom/sprint/smps/activities/ViewAddressBook;->parentActivity:Lcom/sprint/smps/activities/ViewAddressBook;

    sget-object v3, Lcom/sprint/smps/activities/ViewAddressBook;->response:Lcom/sprint/smps/service/ClientResponse;

    invoke-virtual {v3}, Lcom/sprint/smps/service/ClientResponse;->getLstAddress()Ljava/util/List;

    move-result-object v3

    invoke-direct {v1, p0, v2, v3}, Lcom/sprint/smps/activities/ViewAddressBook$AddressListAdapter;-><init>(Lcom/sprint/smps/activities/ViewAddressBook;Landroid/app/Activity;Ljava/util/List;)V

    invoke-virtual {p0, v1}, Lcom/sprint/smps/activities/ViewAddressBook;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 122
    :goto_b6
    invoke-virtual {p0, v4}, Lcom/sprint/smps/activities/ViewAddressBook;->removeDialog(I)V

    goto :goto_8e

    .line 117
    :cond_ba
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/sprint/smps/activities/ViewAddressBook;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 118
    sget-object v1, Lcom/sprint/smps/activities/ViewAddressBook;->parentActivity:Lcom/sprint/smps/activities/ViewAddressBook;

    invoke-virtual {v1, v7}, Lcom/sprint/smps/activities/ViewAddressBook;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 119
    sget-object v1, Lcom/sprint/smps/activities/ViewAddressBook;->parentActivity:Lcom/sprint/smps/activities/ViewAddressBook;

    const v2, 0x7f080016

    invoke-virtual {v1, v2}, Lcom/sprint/smps/activities/ViewAddressBook;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_b6
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .registers 5
    .parameter "id"

    .prologue
    .line 255
    const/4 v0, 0x0

    .line 257
    .local v0, dialog:Landroid/app/Dialog;
    if-nez p1, :cond_16

    .line 259
    new-instance v1, Landroid/app/ProgressDialog;

    invoke-direct {v1, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 260
    .local v1, progDialog:Landroid/app/ProgressDialog;
    const-string v2, "Please wait, retrieving address data..."

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 261
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 262
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 263
    move-object v0, v1

    .line 266
    .end local v1           #progDialog:Landroid/app/ProgressDialog;
    :cond_16
    return-object v0
.end method

.method public onPause()V
    .registers 1

    .prologue
    .line 63
    invoke-static {}, Lcom/sprint/smps/TimeOutThread;->bumpTimout()V

    .line 64
    invoke-super {p0}, Landroid/app/ListActivity;->onPause()V

    .line 65
    return-void
.end method

.method public onTimingOut(Ljava/lang/String;)V
    .registers 3
    .parameter "timeoutMsg"

    .prologue
    .line 271
    const v0, 0x7f08004b

    invoke-virtual {p0, v0}, Lcom/sprint/smps/activities/ViewAddressBook;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 272
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3
    .parameter "event"

    .prologue
    .line 279
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 280
    invoke-static {}, Lcom/sprint/smps/properties/Properties;->referenced()V

    .line 281
    const/4 v0, 0x1

    return v0
.end method

.method public onTrackballEvent(Landroid/view/MotionEvent;)Z
    .registers 3
    .parameter "event"

    .prologue
    .line 274
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onTrackballEvent(Landroid/view/MotionEvent;)Z

    .line 275
    invoke-static {}, Lcom/sprint/smps/properties/Properties;->referenced()V

    .line 276
    const/4 v0, 0x1

    return v0
.end method

.method public onWindowFocusChanged(Z)V
    .registers 4
    .parameter "hasFocus"

    .prologue
    const/4 v1, 0x0

    .line 70
    if-eqz p1, :cond_13

    .line 72
    invoke-static {}, Lcom/sprint/smps/properties/Properties;->referenced()V

    .line 73
    invoke-static {p0}, Lcom/sprint/smps/TimeOutThread;->listener(Lcom/sprint/smps/TimeoutListener;)V

    .line 74
    sget-boolean v0, Lcom/sprint/smps/activities/ViewAddressBook;->retrieveData:Z

    if-eqz v0, :cond_13

    .line 76
    invoke-virtual {p0, v1}, Lcom/sprint/smps/activities/ViewAddressBook;->showDialog(I)V

    .line 77
    invoke-direct {p0}, Lcom/sprint/smps/activities/ViewAddressBook;->retrieveData()V

    .line 80
    :cond_13
    sput-boolean v1, Lcom/sprint/smps/activities/ViewAddressBook;->retrieveData:Z

    .line 81
    return-void
.end method
