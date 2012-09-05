.class Lcom/vlingo/client/car/iux/CarIUXCompoundActivity$2;
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
    .line 95
    iput-object p1, p0, Lcom/vlingo/client/car/iux/CarIUXCompoundActivity$2;->this$0:Lcom/vlingo/client/car/iux/CarIUXCompoundActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5
    .parameter "v"

    .prologue
    .line 97
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/vlingo/client/car/iux/CarIUXCompoundActivity$2;->this$0:Lcom/vlingo/client/car/iux/CarIUXCompoundActivity;

    const-class v2, Lcom/vlingo/client/car/iux/CarIUXCompoundActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 98
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.vlingo.client.iux.extra.step"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 99
    iget-object v1, p0, Lcom/vlingo/client/car/iux/CarIUXCompoundActivity$2;->this$0:Lcom/vlingo/client/car/iux/CarIUXCompoundActivity;

    invoke-virtual {v1, v0}, Lcom/vlingo/client/car/iux/CarIUXCompoundActivity;->startActivity(Landroid/content/Intent;)V

    .line 100
    return-void
.end method
