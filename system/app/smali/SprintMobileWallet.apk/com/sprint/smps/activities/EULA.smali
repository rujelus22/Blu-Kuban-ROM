.class public Lcom/sprint/smps/activities/EULA;
.super Lcom/sprint/smps/activities/SignupAbstract;
.source "EULA.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/sprint/smps/TimeoutListener;


# static fields
.field private static final TAG:Ljava/lang/String; = null

.field private static legalResponse:Lcom/sprint/smps/service/ClientResponse; = null

.field public static final name:Ljava/lang/String; = "Terms and Conditions"

.field private static parentActivity:Lcom/sprint/smps/activities/EULA;

.field private static tac:Lcom/sprint/smps/pojo/TermsAndConditions;


# instance fields
.field private buttons:Ljava/util/Hashtable;
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

.field private showData:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v1, 0x0

    .line 28
    sput-object v1, Lcom/sprint/smps/activities/EULA;->parentActivity:Lcom/sprint/smps/activities/EULA;

    .line 30
    const-class v0, Lcom/sprint/smps/activities/EULA;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sprint/smps/activities/EULA;->TAG:Ljava/lang/String;

    .line 32
    sput-object v1, Lcom/sprint/smps/activities/EULA;->legalResponse:Lcom/sprint/smps/service/ClientResponse;

    .line 33
    sput-object v1, Lcom/sprint/smps/activities/EULA;->tac:Lcom/sprint/smps/pojo/TermsAndConditions;

    .line 25
    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/sprint/smps/activities/SignupAbstract;-><init>()V

    .line 34
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/sprint/smps/activities/EULA;->buttons:Ljava/util/Hashtable;

    .line 36
    new-instance v0, Lcom/sprint/smps/activities/EULA$1;

    invoke-direct {v0, p0}, Lcom/sprint/smps/activities/EULA$1;-><init>(Lcom/sprint/smps/activities/EULA;)V

    iput-object v0, p0, Lcom/sprint/smps/activities/EULA;->showData:Ljava/lang/Runnable;

    .line 60
    sput-object p0, Lcom/sprint/smps/activities/EULA;->parentActivity:Lcom/sprint/smps/activities/EULA;

    .line 61
    const-string v0, "Terms and Conditions"

    invoke-static {p0, v0}, Lcom/sprint/smps/activities/ActivityHelper;->addActivity(Landroid/app/Activity;Ljava/lang/String;)V

    .line 62
    return-void
.end method

.method static synthetic access$0()Lcom/sprint/smps/pojo/TermsAndConditions;
    .registers 1

    .prologue
    .line 33
    sget-object v0, Lcom/sprint/smps/activities/EULA;->tac:Lcom/sprint/smps/pojo/TermsAndConditions;

    return-object v0
.end method

.method static synthetic access$1(Lcom/sprint/smps/service/ClientResponse;)V
    .registers 1
    .parameter

    .prologue
    .line 32
    sput-object p0, Lcom/sprint/smps/activities/EULA;->legalResponse:Lcom/sprint/smps/service/ClientResponse;

    return-void
.end method

.method static synthetic access$2()Lcom/sprint/smps/service/ClientResponse;
    .registers 1

    .prologue
    .line 32
    sget-object v0, Lcom/sprint/smps/activities/EULA;->legalResponse:Lcom/sprint/smps/service/ClientResponse;

    return-object v0
.end method

.method static synthetic access$3(Lcom/sprint/smps/pojo/TermsAndConditions;)V
    .registers 1
    .parameter

    .prologue
    .line 33
    sput-object p0, Lcom/sprint/smps/activities/EULA;->tac:Lcom/sprint/smps/pojo/TermsAndConditions;

    return-void
.end method

.method static synthetic access$4(Lcom/sprint/smps/activities/EULA;)Ljava/lang/Runnable;
    .registers 2
    .parameter

    .prologue
    .line 36
    iget-object v0, p0, Lcom/sprint/smps/activities/EULA;->showData:Ljava/lang/Runnable;

    return-object v0
.end method

.method private retrieveData()V
    .registers 3

    .prologue
    .line 131
    new-instance v0, Lcom/sprint/smps/activities/EULA$3;

    invoke-direct {v0, p0}, Lcom/sprint/smps/activities/EULA$3;-><init>(Lcom/sprint/smps/activities/EULA;)V

    .line 146
    .local v0, runnable:Ljava/lang/Runnable;
    new-instance v1, Ljava/lang/Thread;

    invoke-direct {v1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 147
    return-void
.end method


# virtual methods
.method public finish()V
    .registers 2

    .prologue
    .line 114
    invoke-super {p0}, Lcom/sprint/smps/activities/SignupAbstract;->finish()V

    .line 115
    sget-object v0, Lcom/sprint/smps/activities/SignupAbstract;->entryValues:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    .line 116
    const-string v0, "Terms and Conditions"

    invoke-static {v0}, Lcom/sprint/smps/activities/EULA;->dismissActivity(Ljava/lang/String;)V

    .line 117
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 6
    .parameter "v"

    .prologue
    .line 100
    invoke-static {}, Lcom/sprint/smps/properties/Properties;->referenced()V

    .line 101
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    const v2, 0x7f08002a

    if-ne v1, v2, :cond_12

    .line 103
    const-string v1, "Welcome"

    invoke-static {v1}, Lcom/sprint/smps/activities/EULA;->dismissActivities(Ljava/lang/String;)V

    .line 110
    :cond_11
    :goto_11
    return-void

    .line 107
    :cond_12
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    iget-object v1, p0, Lcom/sprint/smps/activities/EULA;->buttons:Ljava/util/Hashtable;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    invoke-static {p0, v2, v1}, Lcom/sprint/smps/activities/ActivityHelper;->getIntent(Landroid/app/Activity;ILjava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 108
    .local v0, intent:Landroid/content/Intent;
    if-eqz v0, :cond_11

    invoke-virtual {p0, v0}, Lcom/sprint/smps/activities/EULA;->startActivity(Landroid/content/Intent;)V

    goto :goto_11
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 9
    .parameter "savedInstanceState"

    .prologue
    const v6, 0x7f08002a

    const v5, 0x7f080029

    const/4 v4, 0x7

    .line 67
    invoke-super {p0, p1}, Lcom/sprint/smps/activities/SignupAbstract;->onCreate(Landroid/os/Bundle;)V

    .line 68
    invoke-static {}, Lcom/sprint/smps/properties/Properties;->referenced()V

    .line 69
    invoke-virtual {p0, v4}, Lcom/sprint/smps/activities/EULA;->requestWindowFeature(I)Z

    .line 70
    const v2, 0x7f03000e

    invoke-virtual {p0, v2}, Lcom/sprint/smps/activities/EULA;->setContentView(I)V

    .line 72
    sget-object v2, Lcom/sprint/smps/properties/Properties;->localyticsSession:Lcom/Localytics/android/LocalyticsSession;

    const-string v3, "Terms and Conditions"

    invoke-virtual {v2, v3}, Lcom/Localytics/android/LocalyticsSession;->tagEvent(Ljava/lang/String;)V

    .line 74
    invoke-virtual {p0}, Lcom/sprint/smps/activities/EULA;->getWindow()Landroid/view/Window;

    move-result-object v2

    const v3, 0x7f03001c

    invoke-virtual {v2, v4, v3}, Landroid/view/Window;->setFeatureInt(II)V

    .line 75
    const v2, 0x7f08004a

    invoke-virtual {p0, v2}, Lcom/sprint/smps/activities/EULA;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f06001c

    invoke-virtual {p0, v3}, Lcom/sprint/smps/activities/EULA;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 76
    const v2, 0x7f08004b

    invoke-virtual {p0, v2}, Lcom/sprint/smps/activities/EULA;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 78
    invoke-virtual {p0, v5}, Lcom/sprint/smps/activities/EULA;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 79
    .local v0, button:Landroid/widget/Button;
    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 80
    iget-object v2, p0, Lcom/sprint/smps/activities/EULA;->buttons:Ljava/util/Hashtable;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-class v4, Lcom/sprint/smps/activities/SignupPage1;

    invoke-virtual {v2, v3, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    invoke-virtual {p0, v6}, Lcom/sprint/smps/activities/EULA;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0           #button:Landroid/widget/Button;
    check-cast v0, Landroid/widget/Button;

    .line 83
    .restart local v0       #button:Landroid/widget/Button;
    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 84
    iget-object v2, p0, Lcom/sprint/smps/activities/EULA;->buttons:Ljava/util/Hashtable;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-class v4, Lcom/sprint/smps/activities/Welcome;

    invoke-virtual {v2, v3, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    new-instance v1, Lcom/sprint/smps/activities/EULA$2;

    invoke-direct {v1, p0}, Lcom/sprint/smps/activities/EULA$2;-><init>(Lcom/sprint/smps/activities/EULA;)V

    .line 90
    .local v1, onTouchListener:Landroid/view/View$OnTouchListener;
    const v2, 0x7f080028

    invoke-virtual {p0, v2}, Lcom/sprint/smps/activities/EULA;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 92
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/sprint/smps/activities/EULA;->showDialog(I)V

    .line 93
    invoke-direct {p0}, Lcom/sprint/smps/activities/EULA;->retrieveData()V

    .line 95
    invoke-static {p0}, Lcom/sprint/smps/TimeOutThread;->listener(Lcom/sprint/smps/TimeoutListener;)V

    .line 96
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .registers 5
    .parameter "id"

    .prologue
    .line 151
    const/4 v0, 0x0

    .line 153
    .local v0, dialog:Landroid/app/Dialog;
    if-nez p1, :cond_16

    .line 155
    new-instance v1, Landroid/app/ProgressDialog;

    invoke-direct {v1, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 156
    .local v1, progDialog:Landroid/app/ProgressDialog;
    const-string v2, "Please wait, retrieving data..."

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 157
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 158
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 159
    move-object v0, v1

    .line 162
    .end local v1           #progDialog:Landroid/app/ProgressDialog;
    :cond_16
    return-object v0
.end method

.method public onPause()V
    .registers 1

    .prologue
    .line 54
    invoke-static {}, Lcom/sprint/smps/TimeOutThread;->bumpTimout()V

    .line 55
    invoke-super {p0}, Lcom/sprint/smps/activities/SignupAbstract;->onPause()V

    .line 56
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .registers 2
    .parameter "hasFocus"

    .prologue
    .line 122
    if-eqz p1, :cond_8

    .line 124
    invoke-static {}, Lcom/sprint/smps/properties/Properties;->referenced()V

    .line 125
    invoke-static {p0}, Lcom/sprint/smps/TimeOutThread;->listener(Lcom/sprint/smps/TimeoutListener;)V

    .line 127
    :cond_8
    return-void
.end method
