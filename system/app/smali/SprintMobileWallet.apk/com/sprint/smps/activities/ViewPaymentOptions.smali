.class public Lcom/sprint/smps/activities/ViewPaymentOptions;
.super Lcom/sprint/smps/activities/ActivityHelper;
.source "ViewPaymentOptions.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/sprint/smps/TimeoutListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sprint/smps/activities/ViewPaymentOptions$CardListAdapter;
    }
.end annotation


# static fields
.field public static final EMPTY_STRING:Ljava/lang/String; = ""

.field private static final TAG:Ljava/lang/String; = null

.field private static cardImages:Ljava/util/Hashtable; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static dataIsBeingRetrieved:Z = false

.field public static listPos:I = 0x0

.field public static final name:Ljava/lang/String; = "View Payment Options"

.field private static parentActivity:Lcom/sprint/smps/activities/ViewPaymentOptions;

.field public static response:Lcom/sprint/smps/service/ClientResponse;

.field public static retrieveData:Z

.field public static webClient:Lcom/sprint/smps/activities/AmazonWebClient;


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
    .registers 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 34
    const-class v0, Lcom/sprint/smps/activities/ViewPaymentOptions;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sprint/smps/activities/ViewPaymentOptions;->TAG:Ljava/lang/String;

    .line 37
    sput-object v1, Lcom/sprint/smps/activities/ViewPaymentOptions;->parentActivity:Lcom/sprint/smps/activities/ViewPaymentOptions;

    .line 38
    sput-object v1, Lcom/sprint/smps/activities/ViewPaymentOptions;->response:Lcom/sprint/smps/service/ClientResponse;

    .line 39
    const/4 v0, -0x1

    sput v0, Lcom/sprint/smps/activities/ViewPaymentOptions;->listPos:I

    .line 40
    sput-boolean v2, Lcom/sprint/smps/activities/ViewPaymentOptions;->retrieveData:Z

    .line 42
    sput-object v1, Lcom/sprint/smps/activities/ViewPaymentOptions;->webClient:Lcom/sprint/smps/activities/AmazonWebClient;

    .line 43
    sput-boolean v2, Lcom/sprint/smps/activities/ViewPaymentOptions;->dataIsBeingRetrieved:Z

    .line 44
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lcom/sprint/smps/activities/ViewPaymentOptions;->cardImages:Ljava/util/Hashtable;

    .line 31
    return-void
.end method

.method public constructor <init>()V
    .registers 7

    .prologue
    const v5, 0x7f020013

    const v4, 0x7f02000e

    const v3, 0x7f020005

    .line 185
    invoke-direct {p0}, Lcom/sprint/smps/activities/ActivityHelper;-><init>()V

    .line 36
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/sprint/smps/activities/ViewPaymentOptions;->buttons:Ljava/util/Hashtable;

    .line 46
    sget-object v0, Lcom/sprint/smps/activities/ViewPaymentOptions;->cardImages:Ljava/util/Hashtable;

    const-string v1, "noCard"

    const v2, 0x7f02000f

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    sget-object v0, Lcom/sprint/smps/activities/ViewPaymentOptions;->cardImages:Ljava/util/Hashtable;

    const-string v1, "American Express"

    const v2, 0x7f020001

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    sget-object v0, Lcom/sprint/smps/activities/ViewPaymentOptions;->cardImages:Ljava/util/Hashtable;

    const-string v1, "Amazon"

    const/high16 v2, 0x7f02

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    sget-object v0, Lcom/sprint/smps/activities/ViewPaymentOptions;->cardImages:Ljava/util/Hashtable;

    const-string v1, "Diners Club"

    const v2, 0x7f020004

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    sget-object v0, Lcom/sprint/smps/activities/ViewPaymentOptions;->cardImages:Ljava/util/Hashtable;

    const-string v1, "Diners Club enRoute"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    sget-object v0, Lcom/sprint/smps/activities/ViewPaymentOptions;->cardImages:Ljava/util/Hashtable;

    const-string v1, "Discover"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    sget-object v0, Lcom/sprint/smps/activities/ViewPaymentOptions;->cardImages:Ljava/util/Hashtable;

    const-string v1, "Electron"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    sget-object v0, Lcom/sprint/smps/activities/ViewPaymentOptions;->cardImages:Ljava/util/Hashtable;

    const-string v1, "JCB"

    const v2, 0x7f02000c

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    sget-object v0, Lcom/sprint/smps/activities/ViewPaymentOptions;->cardImages:Ljava/util/Hashtable;

    const-string v1, "MasterCard"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    sget-object v0, Lcom/sprint/smps/activities/ViewPaymentOptions;->cardImages:Ljava/util/Hashtable;

    const-string v1, "Maestro"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    sget-object v0, Lcom/sprint/smps/activities/ViewPaymentOptions;->cardImages:Ljava/util/Hashtable;

    const-string v1, "Solo"

    const v2, 0x7f020011

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    sget-object v0, Lcom/sprint/smps/activities/ViewPaymentOptions;->cardImages:Ljava/util/Hashtable;

    const-string v1, "Visa"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    new-instance v0, Lcom/sprint/smps/activities/ViewPaymentOptions$1;

    invoke-direct {v0, p0}, Lcom/sprint/smps/activities/ViewPaymentOptions$1;-><init>(Lcom/sprint/smps/activities/ViewPaymentOptions;)V

    iput-object v0, p0, Lcom/sprint/smps/activities/ViewPaymentOptions;->showList:Ljava/lang/Runnable;

    .line 187
    sput-object p0, Lcom/sprint/smps/activities/ViewPaymentOptions;->parentActivity:Lcom/sprint/smps/activities/ViewPaymentOptions;

    .line 188
    const-string v0, "View Payment Options"

    invoke-static {p0, v0}, Lcom/sprint/smps/activities/ActivityHelper;->addActivity(Landroid/app/Activity;Ljava/lang/String;)V

    .line 189
    return-void
.end method

.method static synthetic access$0()Lcom/sprint/smps/activities/ViewPaymentOptions;
    .registers 1

    .prologue
    .line 37
    sget-object v0, Lcom/sprint/smps/activities/ViewPaymentOptions;->parentActivity:Lcom/sprint/smps/activities/ViewPaymentOptions;

    return-object v0
.end method

.method static synthetic access$1(Z)V
    .registers 1
    .parameter

    .prologue
    .line 43
    sput-boolean p0, Lcom/sprint/smps/activities/ViewPaymentOptions;->dataIsBeingRetrieved:Z

    return-void
.end method

.method static synthetic access$2()Ljava/util/Hashtable;
    .registers 1

    .prologue
    .line 44
    sget-object v0, Lcom/sprint/smps/activities/ViewPaymentOptions;->cardImages:Ljava/util/Hashtable;

    return-object v0
.end method

.method static synthetic access$3(Lcom/sprint/smps/activities/ViewPaymentOptions;)Ljava/lang/Runnable;
    .registers 2
    .parameter

    .prologue
    .line 137
    iget-object v0, p0, Lcom/sprint/smps/activities/ViewPaymentOptions;->showList:Ljava/lang/Runnable;

    return-object v0
.end method

.method private retrieveData()V
    .registers 3

    .prologue
    .line 259
    sget-boolean v1, Lcom/sprint/smps/activities/ViewPaymentOptions;->dataIsBeingRetrieved:Z

    if-nez v1, :cond_20

    .line 261
    const/4 v1, 0x1

    sput-boolean v1, Lcom/sprint/smps/activities/ViewPaymentOptions;->dataIsBeingRetrieved:Z

    .line 262
    sget-boolean v1, Lcom/sprint/smps/activities/ViewPaymentOptions;->retrieveData:Z

    if-nez v1, :cond_f

    sget-object v1, Lcom/sprint/smps/activities/ViewPaymentOptions;->response:Lcom/sprint/smps/service/ClientResponse;

    if-nez v1, :cond_13

    .line 264
    :cond_f
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/sprint/smps/activities/ViewPaymentOptions;->displayDialog(I)V

    .line 267
    :cond_13
    new-instance v0, Lcom/sprint/smps/activities/ViewPaymentOptions$2;

    invoke-direct {v0, p0}, Lcom/sprint/smps/activities/ViewPaymentOptions$2;-><init>(Lcom/sprint/smps/activities/ViewPaymentOptions;)V

    .line 295
    .local v0, runnable:Ljava/lang/Runnable;
    new-instance v1, Ljava/lang/Thread;

    invoke-direct {v1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 297
    .end local v0           #runnable:Ljava/lang/Runnable;
    :cond_20
    return-void
.end method


# virtual methods
.method public finish()V
    .registers 2

    .prologue
    .line 199
    invoke-super {p0}, Lcom/sprint/smps/activities/ActivityHelper;->finish()V

    .line 200
    const/4 v0, 0x1

    sput-boolean v0, Lcom/sprint/smps/activities/ViewPaymentOptions;->retrieveData:Z

    .line 201
    const/4 v0, 0x0

    sput-object v0, Lcom/sprint/smps/activities/ViewPaymentOptions;->response:Lcom/sprint/smps/service/ClientResponse;

    .line 202
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 6
    .parameter "v"

    .prologue
    .line 243
    invoke-static {}, Lcom/sprint/smps/properties/Properties;->referenced()V

    .line 244
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    const v2, 0x7f08000f

    if-ne v1, v2, :cond_2a

    .line 246
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    iget-object v1, p0, Lcom/sprint/smps/activities/ViewPaymentOptions;->buttons:Ljava/util/Hashtable;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    invoke-static {p0, v2, v1}, Lcom/sprint/smps/activities/ActivityHelper;->getIntent(Landroid/app/Activity;ILjava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 247
    .local v0, intent:Landroid/content/Intent;
    if-eqz v0, :cond_29

    invoke-virtual {p0, v0}, Lcom/sprint/smps/activities/ViewPaymentOptions;->startActivity(Landroid/content/Intent;)V

    .line 255
    .end local v0           #intent:Landroid/content/Intent;
    :cond_29
    :goto_29
    return-void

    .line 250
    :cond_2a
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    const v2, 0x7f080034

    if-ne v1, v2, :cond_29

    .line 252
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    iget-object v1, p0, Lcom/sprint/smps/activities/ViewPaymentOptions;->buttons:Ljava/util/Hashtable;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    invoke-static {p0, v2, v1}, Lcom/sprint/smps/activities/ActivityHelper;->getIntent(Landroid/app/Activity;ILjava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 253
    .restart local v0       #intent:Landroid/content/Intent;
    if-eqz v0, :cond_29

    invoke-virtual {p0, v0}, Lcom/sprint/smps/activities/ViewPaymentOptions;->startActivity(Landroid/content/Intent;)V

    goto :goto_29
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 5
    .parameter "savedInstanceState"

    .prologue
    .line 225
    :try_start_0
    invoke-super {p0, p1}, Lcom/sprint/smps/activities/ActivityHelper;->onCreate(Landroid/os/Bundle;)V

    .line 226
    invoke-static {}, Lcom/sprint/smps/properties/Properties;->referenced()V

    .line 227
    const/4 v1, 0x7

    invoke-virtual {p0, v1}, Lcom/sprint/smps/activities/ViewPaymentOptions;->requestWindowFeature(I)Z
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_a} :catch_18

    .line 229
    :try_start_a
    sget-object v1, Lcom/sprint/smps/properties/Properties;->localyticsSession:Lcom/Localytics/android/LocalyticsSession;

    const-string v2, "View Payment Options"

    invoke-virtual {v1, v2}, Lcom/Localytics/android/LocalyticsSession;->tagEvent(Ljava/lang/String;)V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_11} :catch_1e
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_11} :catch_18

    .line 231
    :goto_11
    :try_start_11
    invoke-static {p0}, Lcom/sprint/smps/TimeOutThread;->listener(Lcom/sprint/smps/TimeoutListener;)V

    .line 232
    invoke-direct {p0}, Lcom/sprint/smps/activities/ViewPaymentOptions;->retrieveData()V
    :try_end_17
    .catch Ljava/lang/Throwable; {:try_start_11 .. :try_end_17} :catch_18

    .line 239
    :goto_17
    return-void

    .line 234
    :catch_18
    move-exception v0

    .line 237
    .local v0, t:Ljava/lang/Throwable;
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/System;->exit(I)V

    goto :goto_17

    .line 229
    .end local v0           #t:Ljava/lang/Throwable;
    :catch_1e
    move-exception v1

    goto :goto_11
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .registers 5
    .parameter "id"

    .prologue
    .line 301
    const/4 v0, 0x0

    .line 303
    .local v0, dialog:Landroid/app/Dialog;
    if-nez p1, :cond_16

    .line 305
    new-instance v1, Landroid/app/ProgressDialog;

    invoke-direct {v1, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 306
    .local v1, progDialog:Landroid/app/ProgressDialog;
    const-string v2, "Please wait, retrieving payment options data..."

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 307
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 308
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 309
    move-object v0, v1

    .line 312
    .end local v1           #progDialog:Landroid/app/ProgressDialog;
    :cond_16
    return-object v0
.end method

.method public onPause()V
    .registers 1

    .prologue
    .line 193
    invoke-static {}, Lcom/sprint/smps/TimeOutThread;->bumpTimout()V

    .line 194
    invoke-super {p0}, Lcom/sprint/smps/activities/ActivityHelper;->onPause()V

    .line 195
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .registers 3
    .parameter "hasFocus"

    .prologue
    .line 207
    if-eqz p1, :cond_f

    .line 209
    invoke-static {}, Lcom/sprint/smps/properties/Properties;->referenced()V

    .line 210
    invoke-static {p0}, Lcom/sprint/smps/TimeOutThread;->listener(Lcom/sprint/smps/TimeoutListener;)V

    .line 211
    sget-boolean v0, Lcom/sprint/smps/activities/ViewPaymentOptions;->retrieveData:Z

    if-eqz v0, :cond_f

    .line 213
    invoke-direct {p0}, Lcom/sprint/smps/activities/ViewPaymentOptions;->retrieveData()V

    .line 217
    :cond_f
    const/4 v0, 0x0

    sput-boolean v0, Lcom/sprint/smps/activities/ViewPaymentOptions;->retrieveData:Z

    .line 218
    return-void
.end method
