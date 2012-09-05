.class Lcom/vlingo/client/car/iux/CarIUXCompoundActivity$3;
.super Ljava/lang/Object;
.source "CarIUXCompoundActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vlingo/client/car/iux/CarIUXCompoundActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vlingo/client/car/iux/CarIUXCompoundActivity;


# direct methods
.method constructor <init>(Lcom/vlingo/client/car/iux/CarIUXCompoundActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 116
    iput-object p1, p0, Lcom/vlingo/client/car/iux/CarIUXCompoundActivity$3;->this$0:Lcom/vlingo/client/car/iux/CarIUXCompoundActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5
    .parameter "v"

    .prologue
    .line 118
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/vlingo/client/car/iux/CarIUXManager;->setCarIUXIntroRequired(Z)V

    .line 119
    iget-object v0, p0, Lcom/vlingo/client/car/iux/CarIUXCompoundActivity$3;->this$0:Lcom/vlingo/client/car/iux/CarIUXCompoundActivity;

    invoke-static {v0}, Lcom/vlingo/client/car/iux/CarIUXManager;->finishIUX(Landroid/app/Activity;)V

    .line 120
    iget-object v0, p0, Lcom/vlingo/client/car/iux/CarIUXCompoundActivity$3;->this$0:Lcom/vlingo/client/car/iux/CarIUXCompoundActivity;

    invoke-virtual {v0}, Lcom/vlingo/client/car/iux/CarIUXCompoundActivity;->finish()V

    .line 121
    iget-object v0, p0, Lcom/vlingo/client/car/iux/CarIUXCompoundActivity$3;->this$0:Lcom/vlingo/client/car/iux/CarIUXCompoundActivity;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.vlingo.client.iux.cleanup"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/vlingo/client/car/iux/CarIUXCompoundActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 122
    return-void
.end method
