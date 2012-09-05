.class Lcom/vlingo/client/car/CarHelpScreen$1;
.super Ljava/lang/Object;
.source "CarHelpScreen.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vlingo/client/car/CarHelpScreen;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vlingo/client/car/CarHelpScreen;


# direct methods
.method constructor <init>(Lcom/vlingo/client/car/CarHelpScreen;)V
    .registers 2
    .parameter

    .prologue
    .line 55
    iput-object p1, p0, Lcom/vlingo/client/car/CarHelpScreen$1;->this$0:Lcom/vlingo/client/car/CarHelpScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5
    .parameter "arg0"

    .prologue
    .line 57
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/vlingo/client/car/iux/CarIUXManager;->setCarIUXIntroRequired(Z)V

    .line 58
    iget-object v0, p0, Lcom/vlingo/client/car/CarHelpScreen$1;->this$0:Lcom/vlingo/client/car/CarHelpScreen;

    invoke-static {v0}, Lcom/vlingo/client/car/iux/CarIUXManager;->finishIUX(Landroid/app/Activity;)V

    .line 59
    iget-object v0, p0, Lcom/vlingo/client/car/CarHelpScreen$1;->this$0:Lcom/vlingo/client/car/CarHelpScreen;

    invoke-virtual {v0}, Lcom/vlingo/client/car/CarHelpScreen;->finish()V

    .line 60
    iget-object v0, p0, Lcom/vlingo/client/car/CarHelpScreen$1;->this$0:Lcom/vlingo/client/car/CarHelpScreen;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.vlingo.client.iux.cleanup"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/vlingo/client/car/CarHelpScreen;->sendBroadcast(Landroid/content/Intent;)V

    .line 61
    return-void
.end method
