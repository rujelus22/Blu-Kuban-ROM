.class Lcom/vlingo/client/car/CarHelpScreen$3;
.super Ljava/lang/Object;
.source "CarHelpScreen.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


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
    .line 80
    iput-object p1, p0, Lcom/vlingo/client/car/CarHelpScreen$3;->this$0:Lcom/vlingo/client/car/CarHelpScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 14
    .parameter
    .parameter "arg1"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 82
    .local p1, arg0:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v4, p0, Lcom/vlingo/client/car/CarHelpScreen$3;->this$0:Lcom/vlingo/client/car/CarHelpScreen;

    #getter for: Lcom/vlingo/client/car/CarHelpScreen;->items:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/vlingo/client/car/CarHelpScreen;->access$000(Lcom/vlingo/client/car/CarHelpScreen;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/HashMap;

    const-string v5, "EXTRA_TITLE_BAR"

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_59

    .line 83
    iget-object v4, p0, Lcom/vlingo/client/car/CarHelpScreen$3;->this$0:Lcom/vlingo/client/car/CarHelpScreen;

    #getter for: Lcom/vlingo/client/car/CarHelpScreen;->items:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/vlingo/client/car/CarHelpScreen;->access$100(Lcom/vlingo/client/car/CarHelpScreen;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/HashMap;

    const-string v5, "EXTRA_SCREEN"

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    .line 84
    .local v0, clazz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    iget-object v4, p0, Lcom/vlingo/client/car/CarHelpScreen$3;->this$0:Lcom/vlingo/client/car/CarHelpScreen;

    #getter for: Lcom/vlingo/client/car/CarHelpScreen;->items:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/vlingo/client/car/CarHelpScreen;->access$200(Lcom/vlingo/client/car/CarHelpScreen;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/HashMap;

    const-string v5, "EXTRA_INTENT"

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Intent;

    .line 85
    .local v1, i:Landroid/content/Intent;
    if-eqz v0, :cond_51

    .line 86
    new-instance v2, Landroid/content/Intent;

    iget-object v4, p0, Lcom/vlingo/client/car/CarHelpScreen$3;->this$0:Lcom/vlingo/client/car/CarHelpScreen;

    invoke-direct {v2, v4, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 87
    .local v2, intent:Landroid/content/Intent;
    const-string v4, "wycs.is.iux"

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 88
    iget-object v4, p0, Lcom/vlingo/client/car/CarHelpScreen$3;->this$0:Lcom/vlingo/client/car/CarHelpScreen;

    invoke-virtual {v4, v2}, Lcom/vlingo/client/car/CarHelpScreen;->startActivity(Landroid/content/Intent;)V

    .line 104
    .end local v0           #clazz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .end local v1           #i:Landroid/content/Intent;
    .end local v2           #intent:Landroid/content/Intent;
    :cond_50
    :goto_50
    return-void

    .line 89
    .restart local v0       #clazz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .restart local v1       #i:Landroid/content/Intent;
    :cond_51
    if-eqz v1, :cond_50

    .line 90
    iget-object v4, p0, Lcom/vlingo/client/car/CarHelpScreen$3;->this$0:Lcom/vlingo/client/car/CarHelpScreen;

    invoke-virtual {v4, v1}, Lcom/vlingo/client/car/CarHelpScreen;->startActivity(Landroid/content/Intent;)V

    goto :goto_50

    .line 92
    .end local v0           #clazz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .end local v1           #i:Landroid/content/Intent;
    :cond_59
    iget-object v4, p0, Lcom/vlingo/client/car/CarHelpScreen$3;->this$0:Lcom/vlingo/client/car/CarHelpScreen;

    #getter for: Lcom/vlingo/client/car/CarHelpScreen;->items:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/vlingo/client/car/CarHelpScreen;->access$300(Lcom/vlingo/client/car/CarHelpScreen;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge p3, v4, :cond_c1

    .line 93
    iget-object v4, p0, Lcom/vlingo/client/car/CarHelpScreen$3;->this$0:Lcom/vlingo/client/car/CarHelpScreen;

    #getter for: Lcom/vlingo/client/car/CarHelpScreen;->items:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/vlingo/client/car/CarHelpScreen;->access$400(Lcom/vlingo/client/car/CarHelpScreen;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/HashMap;

    .line 94
    .local v3, item:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    new-instance v2, Landroid/content/Intent;

    iget-object v4, p0, Lcom/vlingo/client/car/CarHelpScreen$3;->this$0:Lcom/vlingo/client/car/CarHelpScreen;

    const-class v5, Lcom/vlingo/client/help/wcis/WCISCompositionScreen;

    invoke-direct {v2, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 95
    .restart local v2       #intent:Landroid/content/Intent;
    const-string v5, "EXTRA_TITLE_BAR"

    const-string v4, "EXTRA_TITLE_BAR"

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v2, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 96
    const-string v5, "EXTRA_SUBTITLE"

    const-string v4, "EXTRA_SUBTITLE"

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v2, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 97
    const-string v5, "EXTRA_SUBTITLE_ICON"

    const-string v4, "EXTRA_SUBTITLE_ICON"

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v2, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 98
    const-string v5, "EXTRA_EXAMPLE_LIST"

    const-string v4, "EXTRA_EXAMPLE_LIST"

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v2, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 99
    const-string v5, "EXTRA_DID_YOU_KNOW"

    const-string v4, "EXTRA_DID_YOU_KNOW"

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v2, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 100
    iget-object v4, p0, Lcom/vlingo/client/car/CarHelpScreen$3;->this$0:Lcom/vlingo/client/car/CarHelpScreen;

    invoke-virtual {v4, v2}, Lcom/vlingo/client/car/CarHelpScreen;->startActivity(Landroid/content/Intent;)V

    goto :goto_50

    .line 102
    .end local v2           #intent:Landroid/content/Intent;
    .end local v3           #item:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_c1
    iget-object v4, p0, Lcom/vlingo/client/car/CarHelpScreen$3;->this$0:Lcom/vlingo/client/car/CarHelpScreen;

    new-instance v5, Landroid/content/Intent;

    iget-object v6, p0, Lcom/vlingo/client/car/CarHelpScreen$3;->this$0:Lcom/vlingo/client/car/CarHelpScreen;

    const-class v7, Lcom/vlingo/client/help/HelpHomeScreen;

    invoke-direct {v5, v6, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v4, v5}, Lcom/vlingo/client/car/CarHelpScreen;->startActivity(Landroid/content/Intent;)V

    goto :goto_50
.end method
