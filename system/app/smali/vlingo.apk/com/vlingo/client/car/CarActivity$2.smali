.class Lcom/vlingo/client/car/CarActivity$2;
.super Ljava/lang/Object;
.source "CarActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vlingo/client/car/CarActivity;->checkForBluetoothAction(Landroid/content/Intent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vlingo/client/car/CarActivity;

.field final synthetic val$intent:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lcom/vlingo/client/car/CarActivity;Landroid/content/Intent;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 392
    iput-object p1, p0, Lcom/vlingo/client/car/CarActivity$2;->this$0:Lcom/vlingo/client/car/CarActivity;

    iput-object p2, p0, Lcom/vlingo/client/car/CarActivity$2;->val$intent:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 394
    iget-object v0, p0, Lcom/vlingo/client/car/CarActivity$2;->this$0:Lcom/vlingo/client/car/CarActivity;

    iget-object v1, p0, Lcom/vlingo/client/car/CarActivity$2;->val$intent:Landroid/content/Intent;

    #calls: Lcom/vlingo/client/car/CarActivity;->checkForBluetoothAction(Landroid/content/Intent;)Z
    invoke-static {v0, v1}, Lcom/vlingo/client/car/CarActivity;->access$400(Lcom/vlingo/client/car/CarActivity;Landroid/content/Intent;)Z

    .line 395
    iget-object v0, p0, Lcom/vlingo/client/car/CarActivity$2;->this$0:Lcom/vlingo/client/car/CarActivity;

    #calls: Lcom/vlingo/client/car/CarActivity;->handleAnyNewIntent()V
    invoke-static {v0}, Lcom/vlingo/client/car/CarActivity;->access$500(Lcom/vlingo/client/car/CarActivity;)V

    .line 396
    return-void
.end method
