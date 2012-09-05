.class public Lcom/android/browser/BrowserHomepageSetReceiver;
.super Landroid/content/BroadcastReceiver;
.source "BrowserHomepageSetReceiver.java"


# static fields
.field public static mReceivedUrl:Ljava/lang/String;


# instance fields
.field tmpSettings:Lcom/android/browser/BrowserSettings;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 43
    const-string v0, ""

    sput-object v0, Lcom/android/browser/BrowserHomepageSetReceiver;->mReceivedUrl:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 34
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 35
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/browser/BrowserHomepageSetReceiver;->tmpSettings:Lcom/android/browser/BrowserSettings;

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 12
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 51
    const-string v6, "Browser"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onReceive runs.."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    invoke-static {}, Lcom/android/browser/BrowserSettings;->getInstance()Lcom/android/browser/BrowserSettings;

    move-result-object v6

    iput-object v6, p0, Lcom/android/browser/BrowserHomepageSetReceiver;->tmpSettings:Lcom/android/browser/BrowserSettings;

    .line 54
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    .line 56
    .local v2, intentAction:Ljava/lang/String;
    const-string v6, "android.intent.action.OMADM_BROWSER_SET_HOMEPAGE"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_36

    const-string v6, "android.intent.action.CSC_BROWSER_SET_HOMEPAGE"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_d7

    .line 59
    :cond_36
    const-string v6, "homepage"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 61
    .local v5, rcvdUrl:Ljava/lang/String;
    const-string v6, "BrowserReceiver"

    const-string v7, " ** onReceive : URL  is received.."

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    const-string v6, "http://"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_53

    const-string v6, "https://"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_90

    .line 79
    :cond_53
    :goto_53
    const-string v6, "BrowserReceiver"

    const-string v7, " ** onReceive : URL  is set to homepage.."

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    sput-object v5, Lcom/android/browser/BrowserHomepageSetReceiver;->mReceivedUrl:Ljava/lang/String;

    .line 83
    iget-object v6, p0, Lcom/android/browser/BrowserHomepageSetReceiver;->tmpSettings:Lcom/android/browser/BrowserSettings;

    sput-object v5, Lcom/android/browser/BrowserSettings;->mdefaultPreferHomeUrl:Ljava/lang/String;

    .line 88
    iget-object v6, p0, Lcom/android/browser/BrowserHomepageSetReceiver;->tmpSettings:Lcom/android/browser/BrowserSettings;

    invoke-virtual {v6, v5}, Lcom/android/browser/BrowserSettings;->setHomePage(Ljava/lang/String;)V

    .line 94
    const-string v6, "android.intent.action.CSC_BROWSER_SET_HOMEPAGE"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8f

    .line 96
    new-instance v4, Landroid/content/Intent;

    const-string v6, "android.intent.action.CSC_BROWSER_HOMEPAGE"

    invoke-direct {v4, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 97
    .local v4, it:Landroid/content/Intent;
    invoke-static {}, Lcom/android/browser/BrowserSettings;->getInstance()Lcom/android/browser/BrowserSettings;

    move-result-object v6

    iput-object v6, p0, Lcom/android/browser/BrowserHomepageSetReceiver;->tmpSettings:Lcom/android/browser/BrowserSettings;

    .line 98
    iget-object v6, p0, Lcom/android/browser/BrowserHomepageSetReceiver;->tmpSettings:Lcom/android/browser/BrowserSettings;

    invoke-virtual {v6}, Lcom/android/browser/BrowserSettings;->getHomePage()Ljava/lang/String;

    move-result-object v0

    .line 99
    .local v0, curUrl:Ljava/lang/String;
    const-string v6, "homepage"

    invoke-virtual {v4, v6, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 100
    invoke-virtual {p1, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 102
    const-string v6, "BrowserReceiver"

    const-string v7, " ** onReceive : CurrentUrl is sent  is sent.."

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    .end local v0           #curUrl:Ljava/lang/String;
    .end local v4           #it:Landroid/content/Intent;
    .end local v5           #rcvdUrl:Ljava/lang/String;
    :cond_8f
    :goto_8f
    return-void

    .line 68
    .restart local v5       #rcvdUrl:Ljava/lang/String;
    :cond_90
    const-string v6, "http:"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_a0

    const-string v6, "https:"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_c2

    .line 69
    :cond_a0
    const-string v6, "http:/"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_b0

    const-string v6, "https:/"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_b9

    .line 70
    :cond_b0
    const-string v6, "/"

    const-string v7, "//"

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto :goto_53

    .line 72
    :cond_b9
    const-string v6, ":"

    const-string v7, "://"

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto :goto_53

    .line 75
    :cond_c2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "http://"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_53

    .line 104
    .end local v5           #rcvdUrl:Ljava/lang/String;
    :cond_d7
    const-string v6, "android.intent.action.OMADM_BROWSER_GET_HOMEPAGE"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_fb

    .line 107
    new-instance v3, Landroid/content/Intent;

    const-string v6, "android.intent.action.OMADM_BROWSER_HOMEPAGE"

    invoke-direct {v3, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 109
    .local v3, intentToSend:Landroid/content/Intent;
    invoke-static {}, Lcom/android/browser/BrowserSettings;->getInstance()Lcom/android/browser/BrowserSettings;

    move-result-object v6

    iput-object v6, p0, Lcom/android/browser/BrowserHomepageSetReceiver;->tmpSettings:Lcom/android/browser/BrowserSettings;

    .line 110
    iget-object v6, p0, Lcom/android/browser/BrowserHomepageSetReceiver;->tmpSettings:Lcom/android/browser/BrowserSettings;

    invoke-virtual {v6}, Lcom/android/browser/BrowserSettings;->getHomePage()Ljava/lang/String;

    move-result-object v1

    .line 112
    .local v1, currentHomepage:Ljava/lang/String;
    const-string v6, "homepage"

    invoke-virtual {v3, v6, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 113
    invoke-virtual {p1, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_8f

    .line 116
    .end local v1           #currentHomepage:Ljava/lang/String;
    .end local v3           #intentToSend:Landroid/content/Intent;
    :cond_fb
    const-string v6, "android.intent.action.MULTI_CSC_CLEAR"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_10f

    .line 117
    invoke-static {}, Lcom/android/browser/BrowserSettings;->getInstance()Lcom/android/browser/BrowserSettings;

    move-result-object v6

    iput-object v6, p0, Lcom/android/browser/BrowserHomepageSetReceiver;->tmpSettings:Lcom/android/browser/BrowserSettings;

    .line 118
    iget-object v6, p0, Lcom/android/browser/BrowserHomepageSetReceiver;->tmpSettings:Lcom/android/browser/BrowserSettings;

    invoke-virtual {v6}, Lcom/android/browser/BrowserSettings;->resetDefaultPreferences()V

    goto :goto_8f

    .line 120
    :cond_10f
    const-string v6, "BrowserReceiver"

    const-string v7, " ** onReceive : Wrong intents are received.."

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_8f
.end method
