.class Lcom/samsung/client/UserTouch$OnReceiver;
.super Landroid/content/BroadcastReceiver;
.source "UserTouch.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/client/UserTouch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OnReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/client/UserTouch;


# direct methods
.method private constructor <init>(Lcom/samsung/client/UserTouch;)V
    .registers 2
    .parameter

    .prologue
    .line 33
    iput-object p1, p0, Lcom/samsung/client/UserTouch$OnReceiver;->this$0:Lcom/samsung/client/UserTouch;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/client/UserTouch;Lcom/samsung/client/UserTouch$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/samsung/client/UserTouch$OnReceiver;-><init>(Lcom/samsung/client/UserTouch;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 37
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_37

    .line 38
    const-string v0, "UserTouch"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    iget-object v0, p0, Lcom/samsung/client/UserTouch$OnReceiver;->this$0:Lcom/samsung/client/UserTouch;

    #getter for: Lcom/samsung/client/UserTouch;->offAfterCreated:Z
    invoke-static {v0}, Lcom/samsung/client/UserTouch;->access$200(Lcom/samsung/client/UserTouch;)Z

    move-result v0

    if-eqz v0, :cond_37

    .line 40
    iget-object v0, p0, Lcom/samsung/client/UserTouch$OnReceiver;->this$0:Lcom/samsung/client/UserTouch;

    invoke-virtual {v0}, Lcom/samsung/client/UserTouch;->receiveShow()V

    .line 41
    iget-object v0, p0, Lcom/samsung/client/UserTouch$OnReceiver;->this$0:Lcom/samsung/client/UserTouch;

    const/4 v1, 0x0

    #setter for: Lcom/samsung/client/UserTouch;->offAfterCreated:Z
    invoke-static {v0, v1}, Lcom/samsung/client/UserTouch;->access$202(Lcom/samsung/client/UserTouch;Z)Z

    .line 44
    :cond_37
    return-void
.end method
