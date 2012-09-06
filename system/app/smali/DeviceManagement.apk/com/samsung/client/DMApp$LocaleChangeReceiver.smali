.class Lcom/samsung/client/DMApp$LocaleChangeReceiver;
.super Landroid/content/BroadcastReceiver;
.source "DMApp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/client/DMApp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LocaleChangeReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/client/DMApp;


# direct methods
.method private constructor <init>(Lcom/samsung/client/DMApp;)V
    .registers 2
    .parameter

    .prologue
    .line 2842
    iput-object p1, p0, Lcom/samsung/client/DMApp$LocaleChangeReceiver;->this$0:Lcom/samsung/client/DMApp;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/client/DMApp;Lcom/samsung/client/DMApp$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2842
    invoke-direct {p0, p1}, Lcom/samsung/client/DMApp$LocaleChangeReceiver;-><init>(Lcom/samsung/client/DMApp;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 2846
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 2847
    invoke-static {}, Lcom/samsung/client/DMApp;->access$4400()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 2848
    iget-object v0, p0, Lcom/samsung/client/DMApp$LocaleChangeReceiver;->this$0:Lcom/samsung/client/DMApp;

    invoke-virtual {v0}, Lcom/samsung/client/DMApp;->setNotification()V

    .line 2851
    :cond_17
    return-void
.end method
