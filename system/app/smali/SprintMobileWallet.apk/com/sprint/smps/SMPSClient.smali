.class public Lcom/sprint/smps/SMPSClient;
.super Lcom/sprint/smps/activities/ActivityHelper;
.source "SMPSClient.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/sprint/smps/TimeoutListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sprint/smps/SMPSClient$SMPSStartup;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = null

.field private static exiting:Z = false

.field public static final name:Ljava/lang/String; = "Wallet Startup"

.field private static parentActivity:Lcom/sprint/smps/SMPSClient;

.field private static response:Lcom/sprint/smps/service/ClientResponse;

.field private static startupThread:Lcom/sprint/smps/SMPSClient$SMPSStartup;


# instance fields
.field buttons:Ljava/util/Hashtable;
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


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v1, 0x0

    .line 37
    sput-object v1, Lcom/sprint/smps/SMPSClient;->parentActivity:Lcom/sprint/smps/SMPSClient;

    .line 39
    const-class v0, Lcom/sprint/smps/SMPSClient;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sprint/smps/SMPSClient;->TAG:Ljava/lang/String;

    .line 41
    sput-object v1, Lcom/sprint/smps/SMPSClient;->response:Lcom/sprint/smps/service/ClientResponse;

    .line 42
    sput-object v1, Lcom/sprint/smps/SMPSClient;->startupThread:Lcom/sprint/smps/SMPSClient$SMPSStartup;

    .line 43
    const/4 v0, 0x0

    sput-boolean v0, Lcom/sprint/smps/SMPSClient;->exiting:Z

    .line 35
    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 152
    invoke-direct {p0}, Lcom/sprint/smps/activities/ActivityHelper;-><init>()V

    .line 40
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/sprint/smps/SMPSClient;->buttons:Ljava/util/Hashtable;

    .line 154
    sput-object p0, Lcom/sprint/smps/SMPSClient;->parentActivity:Lcom/sprint/smps/SMPSClient;

    .line 155
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    sput-object v0, Lcom/sprint/smps/SMPSClient;->activities:Ljava/util/Vector;

    .line 157
    const-string v0, "Wallet Startup"

    invoke-static {p0, v0}, Lcom/sprint/smps/SMPSClient;->addActivity(Landroid/app/Activity;Ljava/lang/String;)V

    .line 158
    return-void
.end method

.method static synthetic access$0()Lcom/sprint/smps/SMPSClient;
    .registers 1

    .prologue
    .line 37
    sget-object v0, Lcom/sprint/smps/SMPSClient;->parentActivity:Lcom/sprint/smps/SMPSClient;

    return-object v0
.end method

.method static synthetic access$1(Lcom/sprint/smps/service/ClientResponse;)V
    .registers 1
    .parameter

    .prologue
    .line 41
    sput-object p0, Lcom/sprint/smps/SMPSClient;->response:Lcom/sprint/smps/service/ClientResponse;

    return-void
.end method

.method static synthetic access$2()Z
    .registers 1

    .prologue
    .line 43
    sget-boolean v0, Lcom/sprint/smps/SMPSClient;->exiting:Z

    return v0
.end method

.method static synthetic access$3()Lcom/sprint/smps/service/ClientResponse;
    .registers 1

    .prologue
    .line 41
    sget-object v0, Lcom/sprint/smps/SMPSClient;->response:Lcom/sprint/smps/service/ClientResponse;

    return-object v0
.end method

.method static synthetic access$4(Lcom/sprint/smps/SMPSClient;)V
    .registers 1
    .parameter

    .prologue
    .line 184
    invoke-direct {p0}, Lcom/sprint/smps/SMPSClient;->showWelcome()V

    return-void
.end method

.method static synthetic access$5()Lcom/sprint/smps/SMPSClient$SMPSStartup;
    .registers 1

    .prologue
    .line 42
    sget-object v0, Lcom/sprint/smps/SMPSClient;->startupThread:Lcom/sprint/smps/SMPSClient$SMPSStartup;

    return-object v0
.end method

.method static synthetic access$6(Lcom/sprint/smps/SMPSClient$SMPSStartup;)V
    .registers 1
    .parameter

    .prologue
    .line 42
    sput-object p0, Lcom/sprint/smps/SMPSClient;->startupThread:Lcom/sprint/smps/SMPSClient$SMPSStartup;

    return-void
.end method

.method static synthetic access$7(Z)V
    .registers 1
    .parameter

    .prologue
    .line 43
    sput-boolean p0, Lcom/sprint/smps/SMPSClient;->exiting:Z

    return-void
.end method

.method private showWelcome()V
    .registers 4

    .prologue
    .line 186
    const-string v1, ""

    invoke-static {v1}, Lcom/sprint/smps/activities/ActivityHelper;->dismissActivities(Ljava/lang/String;)V

    .line 187
    invoke-static {}, Lcom/sprint/smps/properties/Properties;->referenced()V

    .line 190
    const v1, 0x7f08002a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const-class v2, Lcom/sprint/smps/activities/Welcome;

    invoke-static {p0, v1, v2}, Lcom/sprint/smps/activities/ActivityHelper;->getIntent(Landroid/app/Activity;ILjava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 191
    .local v0, intent:Landroid/content/Intent;
    if-eqz v0, :cond_1e

    invoke-virtual {p0, v0}, Lcom/sprint/smps/SMPSClient;->startActivity(Landroid/content/Intent;)V

    .line 192
    :cond_1e
    return-void
.end method


# virtual methods
.method public finish()V
    .registers 3

    .prologue
    .line 196
    sget-object v0, Lcom/sprint/smps/SMPSClient;->parentActivity:Lcom/sprint/smps/SMPSClient;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sprint/smps/SMPSClient;->deleteDialog(I)V

    .line 197
    sget-object v0, Lcom/sprint/smps/SMPSClient;->startupThread:Lcom/sprint/smps/SMPSClient$SMPSStartup;

    if-eqz v0, :cond_d

    .line 198
    const/4 v0, 0x1

    sput-boolean v0, Lcom/sprint/smps/SMPSClient;->exiting:Z

    .line 200
    :cond_d
    invoke-super {p0}, Lcom/sprint/smps/activities/ActivityHelper;->finish()V

    .line 201
    const/4 v0, 0x0

    sput-object v0, Lcom/sprint/smps/SMPSClient;->response:Lcom/sprint/smps/service/ClientResponse;

    .line 202
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 6
    .parameter "v"

    .prologue
    .line 218
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    const v2, 0x7f080029

    if-ne v1, v2, :cond_2f

    .line 220
    invoke-static {}, Lcom/sprint/smps/properties/Properties;->referenced()V

    .line 221
    const-string v1, ""

    invoke-static {v1}, Lcom/sprint/smps/activities/ActivityHelper;->dismissActivities(Ljava/lang/String;)V

    .line 222
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    iget-object v1, p0, Lcom/sprint/smps/SMPSClient;->buttons:Ljava/util/Hashtable;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    invoke-static {p0, v2, v1}, Lcom/sprint/smps/activities/ActivityHelper;->getIntent(Landroid/app/Activity;ILjava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 223
    .local v0, intent:Landroid/content/Intent;
    if-eqz v0, :cond_2e

    invoke-virtual {p0, v0}, Lcom/sprint/smps/SMPSClient;->startActivity(Landroid/content/Intent;)V

    .line 230
    .end local v0           #intent:Landroid/content/Intent;
    :cond_2e
    :goto_2e
    return-void

    .line 226
    :cond_2f
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    const v2, 0x7f08002a

    if-ne v1, v2, :cond_2e

    .line 228
    invoke-virtual {p0}, Lcom/sprint/smps/SMPSClient;->finish()V

    goto :goto_2e
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 5
    .parameter "savedInstanceState"

    .prologue
    const/4 v2, 0x0

    .line 163
    invoke-super {p0, p1}, Lcom/sprint/smps/activities/ActivityHelper;->onCreate(Landroid/os/Bundle;)V

    .line 164
    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Lcom/sprint/smps/SMPSClient;->requestWindowFeature(I)Z

    .line 165
    invoke-static {p0}, Lcom/sprint/smps/properties/Properties;->initialize(Landroid/app/Activity;)V

    .line 167
    sget-object v0, Lcom/sprint/smps/properties/Properties;->localyticsSession:Lcom/Localytics/android/LocalyticsSession;

    const-string v1, "Wallet Startup"

    invoke-virtual {v0, v1}, Lcom/Localytics/android/LocalyticsSession;->tagEvent(Ljava/lang/String;)V

    .line 169
    sget-object v0, Lcom/sprint/smps/SMPSClient;->parentActivity:Lcom/sprint/smps/SMPSClient;

    invoke-virtual {v0, v2}, Lcom/sprint/smps/SMPSClient;->deleteDialog(I)V

    .line 170
    invoke-virtual {p0, v2}, Lcom/sprint/smps/SMPSClient;->displayDialog(I)V

    .line 171
    sget-object v0, Lcom/sprint/smps/SMPSClient;->startupThread:Lcom/sprint/smps/SMPSClient$SMPSStartup;

    if-nez v0, :cond_2f

    .line 173
    new-instance v0, Lcom/sprint/smps/SMPSClient$SMPSStartup;

    invoke-direct {v0, p0}, Lcom/sprint/smps/SMPSClient$SMPSStartup;-><init>(Lcom/sprint/smps/SMPSClient;)V

    sput-object v0, Lcom/sprint/smps/SMPSClient;->startupThread:Lcom/sprint/smps/SMPSClient$SMPSStartup;

    .line 174
    new-instance v0, Ljava/lang/Thread;

    sget-object v1, Lcom/sprint/smps/SMPSClient;->startupThread:Lcom/sprint/smps/SMPSClient$SMPSStartup;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 176
    :cond_2f
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .registers 5
    .parameter "id"

    .prologue
    .line 234
    const/4 v0, 0x0

    .line 236
    .local v0, dialog:Landroid/app/Dialog;
    if-nez p1, :cond_16

    .line 238
    new-instance v1, Landroid/app/ProgressDialog;

    invoke-direct {v1, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 239
    .local v1, progDialog:Landroid/app/ProgressDialog;
    const-string v2, "Please wait, checking registration."

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 240
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 241
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 242
    move-object v0, v1

    .line 245
    .end local v1           #progDialog:Landroid/app/ProgressDialog;
    :cond_16
    return-object v0
.end method

.method public onTimingOut(Ljava/lang/String;)V
    .registers 2
    .parameter "timeoutMsg"

    .prologue
    .line 180
    invoke-static {}, Lcom/sprint/smps/properties/Properties;->referenced()V

    .line 182
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .registers 2
    .parameter "hasFocus"

    .prologue
    .line 207
    if-eqz p1, :cond_8

    .line 210
    invoke-static {}, Lcom/sprint/smps/properties/Properties;->referenced()V

    .line 212
    invoke-static {p0}, Lcom/sprint/smps/TimeOutThread;->listener(Lcom/sprint/smps/TimeoutListener;)V

    .line 214
    :cond_8
    return-void
.end method
