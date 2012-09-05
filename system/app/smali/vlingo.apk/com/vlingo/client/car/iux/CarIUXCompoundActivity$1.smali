.class Lcom/vlingo/client/car/iux/CarIUXCompoundActivity$1;
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
    .line 87
    iput-object p1, p0, Lcom/vlingo/client/car/iux/CarIUXCompoundActivity$1;->this$0:Lcom/vlingo/client/car/iux/CarIUXCompoundActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3
    .parameter "v"

    .prologue
    .line 89
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/vlingo/client/car/iux/CarIUXManager;->setCarIUXIntroRequired(Z)V

    .line 90
    iget-object v0, p0, Lcom/vlingo/client/car/iux/CarIUXCompoundActivity$1;->this$0:Lcom/vlingo/client/car/iux/CarIUXCompoundActivity;

    invoke-static {v0}, Lcom/vlingo/client/car/iux/CarIUXManager;->finishIUX(Landroid/app/Activity;)V

    .line 91
    iget-object v0, p0, Lcom/vlingo/client/car/iux/CarIUXCompoundActivity$1;->this$0:Lcom/vlingo/client/car/iux/CarIUXCompoundActivity;

    invoke-virtual {v0}, Lcom/vlingo/client/car/iux/CarIUXCompoundActivity;->finish()V

    .line 92
    return-void
.end method
