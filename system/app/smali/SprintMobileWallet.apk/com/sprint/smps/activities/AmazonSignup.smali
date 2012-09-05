.class public Lcom/sprint/smps/activities/AmazonSignup;
.super Lcom/sprint/smps/activities/ActivityHelper;
.source "AmazonSignup.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/sprint/smps/TimeoutListener;


# static fields
.field public static final EMPTY_STRING:Ljava/lang/String; = ""

.field private static final TAG:Ljava/lang/String; = null

.field public static dialogShown:Z = false

.field public static final name:Ljava/lang/String; = "Amazon Signup"

.field private static parentActivity:Lcom/sprint/smps/activities/AmazonSignup;

.field public static response:Lcom/sprint/smps/service/ClientResponse;

.field public static webClient:Lcom/sprint/smps/activities/AmazonWebClient;

.field public static webview:Landroid/webkit/WebView;


# instance fields
.field private ap:Lcom/sprint/smps/pojo/AlternativePayment;

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

.field private showAmazonWebPage:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v1, 0x0

    .line 27
    const-class v0, Lcom/sprint/smps/activities/AmazonSignup;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sprint/smps/activities/AmazonSignup;->TAG:Ljava/lang/String;

    .line 30
    sput-object v1, Lcom/sprint/smps/activities/AmazonSignup;->parentActivity:Lcom/sprint/smps/activities/AmazonSignup;

    .line 31
    sput-object v1, Lcom/sprint/smps/activities/AmazonSignup;->response:Lcom/sprint/smps/service/ClientResponse;

    .line 32
    const/4 v0, 0x0

    sput-boolean v0, Lcom/sprint/smps/activities/AmazonSignup;->dialogShown:Z

    .line 34
    sput-object v1, Lcom/sprint/smps/activities/AmazonSignup;->webClient:Lcom/sprint/smps/activities/AmazonWebClient;

    .line 35
    sput-object v1, Lcom/sprint/smps/activities/AmazonSignup;->webview:Landroid/webkit/WebView;

    .line 24
    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/sprint/smps/activities/ActivityHelper;-><init>()V

    .line 29
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/sprint/smps/activities/AmazonSignup;->buttons:Ljava/util/Hashtable;

    .line 36
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sprint/smps/activities/AmazonSignup;->ap:Lcom/sprint/smps/pojo/AlternativePayment;

    .line 38
    new-instance v0, Lcom/sprint/smps/activities/AmazonSignup$1;

    invoke-direct {v0, p0}, Lcom/sprint/smps/activities/AmazonSignup$1;-><init>(Lcom/sprint/smps/activities/AmazonSignup;)V

    iput-object v0, p0, Lcom/sprint/smps/activities/AmazonSignup;->showAmazonWebPage:Ljava/lang/Runnable;

    .line 78
    sput-object p0, Lcom/sprint/smps/activities/AmazonSignup;->parentActivity:Lcom/sprint/smps/activities/AmazonSignup;

    .line 79
    const-string v0, "Amazon Signup"

    invoke-static {p0, v0}, Lcom/sprint/smps/activities/ActivityHelper;->addActivity(Landroid/app/Activity;Ljava/lang/String;)V

    .line 80
    return-void
.end method

.method static synthetic access$0()Lcom/sprint/smps/activities/AmazonSignup;
    .registers 1

    .prologue
    .line 30
    sget-object v0, Lcom/sprint/smps/activities/AmazonSignup;->parentActivity:Lcom/sprint/smps/activities/AmazonSignup;

    return-object v0
.end method

.method static synthetic access$1(Lcom/sprint/smps/activities/AmazonSignup;Lcom/sprint/smps/pojo/AlternativePayment;)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 36
    iput-object p1, p0, Lcom/sprint/smps/activities/AmazonSignup;->ap:Lcom/sprint/smps/pojo/AlternativePayment;

    return-void
.end method

.method static synthetic access$2(Lcom/sprint/smps/activities/AmazonSignup;)Lcom/sprint/smps/pojo/AlternativePayment;
    .registers 2
    .parameter

    .prologue
    .line 36
    iget-object v0, p0, Lcom/sprint/smps/activities/AmazonSignup;->ap:Lcom/sprint/smps/pojo/AlternativePayment;

    return-object v0
.end method


# virtual methods
.method public finish()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 137
    invoke-super {p0}, Lcom/sprint/smps/activities/ActivityHelper;->finish()V

    .line 138
    sput-object v0, Lcom/sprint/smps/activities/AmazonSignup;->response:Lcom/sprint/smps/service/ClientResponse;

    .line 139
    sput-object v0, Lcom/sprint/smps/activities/AmazonSignup;->webview:Landroid/webkit/WebView;

    .line 140
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 2
    .parameter "v"

    .prologue
    .line 102
    invoke-static {}, Lcom/sprint/smps/properties/Properties;->referenced()V

    .line 103
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 4
    .parameter "savedInstanceState"

    .prologue
    .line 85
    invoke-super {p0, p1}, Lcom/sprint/smps/activities/ActivityHelper;->onCreate(Landroid/os/Bundle;)V

    .line 86
    invoke-static {}, Lcom/sprint/smps/properties/Properties;->referenced()V

    .line 87
    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Lcom/sprint/smps/activities/AmazonSignup;->requestWindowFeature(I)Z

    .line 89
    sget-object v0, Lcom/sprint/smps/properties/Properties;->localyticsSession:Lcom/Localytics/android/LocalyticsSession;

    const-string v1, "Amazon Signup"

    invoke-virtual {v0, v1}, Lcom/Localytics/android/LocalyticsSession;->tagEvent(Ljava/lang/String;)V

    .line 91
    invoke-static {p0}, Lcom/sprint/smps/TimeOutThread;->listener(Lcom/sprint/smps/TimeoutListener;)V

    .line 92
    sget-object v0, Lcom/sprint/smps/activities/AmazonSignup;->webClient:Lcom/sprint/smps/activities/AmazonWebClient;

    if-eqz v0, :cond_22

    .line 93
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sprint/smps/activities/AmazonSignup;->displayDialog(I)V

    .line 97
    :goto_1c
    iget-object v0, p0, Lcom/sprint/smps/activities/AmazonSignup;->showAmazonWebPage:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/sprint/smps/activities/AmazonSignup;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 98
    return-void

    .line 95
    :cond_22
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sprint/smps/activities/AmazonSignup;->displayDialog(I)V

    goto :goto_1c
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .registers 7
    .parameter "id"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 107
    const/4 v0, 0x0

    .line 109
    .local v0, dialog:Landroid/app/Dialog;
    if-nez p1, :cond_17

    .line 111
    new-instance v1, Landroid/app/ProgressDialog;

    invoke-direct {v1, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 112
    .local v1, progDialog:Landroid/app/ProgressDialog;
    const-string v2, "Please wait, starting Amazon payment setup..."

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 113
    invoke-virtual {v1, v3}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 114
    invoke-virtual {v1, v4}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 115
    move-object v0, v1

    .line 126
    .end local v1           #progDialog:Landroid/app/ProgressDialog;
    :cond_16
    :goto_16
    return-object v0

    .line 117
    :cond_17
    if-ne p1, v3, :cond_16

    .line 119
    new-instance v1, Landroid/app/ProgressDialog;

    invoke-direct {v1, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 120
    .restart local v1       #progDialog:Landroid/app/ProgressDialog;
    const-string v2, "Please wait, rendering page..."

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 121
    invoke-virtual {v1, v3}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 122
    invoke-virtual {v1, v4}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 123
    move-object v0, v1

    goto :goto_16
.end method

.method public onPause()V
    .registers 1

    .prologue
    .line 131
    invoke-static {}, Lcom/sprint/smps/TimeOutThread;->bumpTimout()V

    .line 132
    invoke-super {p0}, Lcom/sprint/smps/activities/ActivityHelper;->onPause()V

    .line 133
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .registers 2
    .parameter "hasFocus"

    .prologue
    .line 145
    if-eqz p1, :cond_8

    .line 147
    invoke-static {}, Lcom/sprint/smps/properties/Properties;->referenced()V

    .line 148
    invoke-static {p0}, Lcom/sprint/smps/TimeOutThread;->listener(Lcom/sprint/smps/TimeoutListener;)V

    .line 150
    :cond_8
    return-void
.end method
