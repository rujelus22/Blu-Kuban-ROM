.class Lcom/vlingo/client/car/iux/CarIUXCompoundActivity$5;
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
    .line 131
    iput-object p1, p0, Lcom/vlingo/client/car/iux/CarIUXCompoundActivity$5;->this$0:Lcom/vlingo/client/car/iux/CarIUXCompoundActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5
    .parameter "v"

    .prologue
    .line 133
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/vlingo/client/car/iux/CarIUXCompoundActivity$5;->this$0:Lcom/vlingo/client/car/iux/CarIUXCompoundActivity;

    const-class v2, Lcom/vlingo/client/car/CarHelpScreen;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 134
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "wycs.show.done"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 135
    iget-object v1, p0, Lcom/vlingo/client/car/iux/CarIUXCompoundActivity$5;->this$0:Lcom/vlingo/client/car/iux/CarIUXCompoundActivity;

    invoke-virtual {v1, v0}, Lcom/vlingo/client/car/iux/CarIUXCompoundActivity;->startActivity(Landroid/content/Intent;)V

    .line 136
    return-void
.end method
