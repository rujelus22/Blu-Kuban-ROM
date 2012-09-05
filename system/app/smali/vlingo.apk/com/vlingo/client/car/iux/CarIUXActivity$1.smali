.class Lcom/vlingo/client/car/iux/CarIUXActivity$1;
.super Ljava/lang/Object;
.source "CarIUXActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vlingo/client/car/iux/CarIUXActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vlingo/client/car/iux/CarIUXActivity;


# direct methods
.method constructor <init>(Lcom/vlingo/client/car/iux/CarIUXActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 83
    iput-object p1, p0, Lcom/vlingo/client/car/iux/CarIUXActivity$1;->this$0:Lcom/vlingo/client/car/iux/CarIUXActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3
    .parameter "v"

    .prologue
    .line 85
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/vlingo/client/car/iux/CarIUXManager;->setCarIUXIntroRequired(Z)V

    .line 86
    iget-object v0, p0, Lcom/vlingo/client/car/iux/CarIUXActivity$1;->this$0:Lcom/vlingo/client/car/iux/CarIUXActivity;

    invoke-static {v0}, Lcom/vlingo/client/car/iux/CarIUXManager;->processIUX(Landroid/app/Activity;)V

    .line 87
    iget-object v0, p0, Lcom/vlingo/client/car/iux/CarIUXActivity$1;->this$0:Lcom/vlingo/client/car/iux/CarIUXActivity;

    invoke-virtual {v0}, Lcom/vlingo/client/car/iux/CarIUXActivity;->finish()V

    .line 88
    return-void
.end method
