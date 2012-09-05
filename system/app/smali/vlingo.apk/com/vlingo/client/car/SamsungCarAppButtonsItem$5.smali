.class Lcom/vlingo/client/car/SamsungCarAppButtonsItem$5;
.super Ljava/lang/Object;
.source "SamsungCarAppButtonsItem.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vlingo/client/car/SamsungCarAppButtonsItem;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vlingo/client/car/SamsungCarAppButtonsItem;


# direct methods
.method constructor <init>(Lcom/vlingo/client/car/SamsungCarAppButtonsItem;)V
    .registers 2
    .parameter

    .prologue
    .line 104
    iput-object p1, p0, Lcom/vlingo/client/car/SamsungCarAppButtonsItem$5;->this$0:Lcom/vlingo/client/car/SamsungCarAppButtonsItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 7
    .parameter "v"

    .prologue
    .line 107
    invoke-static {}, Lcom/vlingo/client/settings/Settings;->updateCurrentLocale()V

    .line 108
    new-instance v1, Lcom/vlingo/client/vvs/handlers/PlayMusicHandler;

    invoke-direct {v1}, Lcom/vlingo/client/vvs/handlers/PlayMusicHandler;-><init>()V

    .line 109
    .local v1, handler:Lcom/vlingo/client/vvs/handlers/PlayMusicHandler;
    const/4 v3, 0x0

    iget-object v4, p0, Lcom/vlingo/client/car/SamsungCarAppButtonsItem$5;->this$0:Lcom/vlingo/client/car/SamsungCarAppButtonsItem;

    invoke-virtual {v4}, Lcom/vlingo/client/car/SamsungCarAppButtonsItem;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lcom/vlingo/client/vvs/handlers/PlayMusicHandler;->execute(Lcom/vlingo/client/core/vlservice/response/Action;Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v2

    .line 110
    .local v2, intent:Landroid/content/Intent;
    invoke-static {v2}, Lcom/vlingo/client/vvs/handlers/PlayMusicHandler;->getBroadcastIntent(Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v0

    .line 111
    .local v0, broadcastIntent:Landroid/content/Intent;
    iget-object v3, p0, Lcom/vlingo/client/car/SamsungCarAppButtonsItem$5;->this$0:Lcom/vlingo/client/car/SamsungCarAppButtonsItem;

    iget-object v3, v3, Lcom/vlingo/client/car/SamsungCarAppButtonsItem;->delegate:Lcom/vlingo/client/car/CarActivityDelegate;

    invoke-interface {v3}, Lcom/vlingo/client/car/CarActivityDelegate;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 112
    if-eqz v0, :cond_2f

    .line 113
    iget-object v3, p0, Lcom/vlingo/client/car/SamsungCarAppButtonsItem$5;->this$0:Lcom/vlingo/client/car/SamsungCarAppButtonsItem;

    iget-object v3, v3, Lcom/vlingo/client/car/SamsungCarAppButtonsItem;->delegate:Lcom/vlingo/client/car/CarActivityDelegate;

    invoke-interface {v3}, Lcom/vlingo/client/car/CarActivityDelegate;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 115
    :cond_2f
    return-void
.end method
