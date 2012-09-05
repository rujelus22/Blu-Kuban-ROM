.class Lcom/vlingo/client/help/wcis/WhatCanISayScreen$2;
.super Ljava/lang/Object;
.source "WhatCanISayScreen.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vlingo/client/help/wcis/WhatCanISayScreen;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vlingo/client/help/wcis/WhatCanISayScreen;


# direct methods
.method constructor <init>(Lcom/vlingo/client/help/wcis/WhatCanISayScreen;)V
    .registers 2
    .parameter

    .prologue
    .line 81
    iput-object p1, p0, Lcom/vlingo/client/help/wcis/WhatCanISayScreen$2;->this$0:Lcom/vlingo/client/help/wcis/WhatCanISayScreen;

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
    .line 83
    .local p1, arg0:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v4, p0, Lcom/vlingo/client/help/wcis/WhatCanISayScreen$2;->this$0:Lcom/vlingo/client/help/wcis/WhatCanISayScreen;

    iget-object v4, v4, Lcom/vlingo/client/help/wcis/WhatCanISayScreen;->items:Ljava/util/ArrayList;

    invoke-virtual {v4, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/HashMap;

    const-string v5, "EXTRA_TITLE_BAR"

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_53

    .line 84
    iget-object v4, p0, Lcom/vlingo/client/help/wcis/WhatCanISayScreen$2;->this$0:Lcom/vlingo/client/help/wcis/WhatCanISayScreen;

    iget-object v4, v4, Lcom/vlingo/client/help/wcis/WhatCanISayScreen;->items:Ljava/util/ArrayList;

    invoke-virtual {v4, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/HashMap;

    const-string v5, "EXTRA_SCREEN"

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    .line 85
    .local v0, clazz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    iget-object v4, p0, Lcom/vlingo/client/help/wcis/WhatCanISayScreen$2;->this$0:Lcom/vlingo/client/help/wcis/WhatCanISayScreen;

    iget-object v4, v4, Lcom/vlingo/client/help/wcis/WhatCanISayScreen;->items:Ljava/util/ArrayList;

    invoke-virtual {v4, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/HashMap;

    const-string v5, "EXTRA_INTENT"

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Intent;

    .line 86
    .local v1, i:Landroid/content/Intent;
    if-eqz v0, :cond_4b

    .line 87
    new-instance v2, Landroid/content/Intent;

    iget-object v4, p0, Lcom/vlingo/client/help/wcis/WhatCanISayScreen$2;->this$0:Lcom/vlingo/client/help/wcis/WhatCanISayScreen;

    invoke-direct {v2, v4, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 88
    .local v2, intent:Landroid/content/Intent;
    const-string v4, "wycs.is.iux"

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 89
    iget-object v4, p0, Lcom/vlingo/client/help/wcis/WhatCanISayScreen$2;->this$0:Lcom/vlingo/client/help/wcis/WhatCanISayScreen;

    invoke-virtual {v4, v2}, Lcom/vlingo/client/help/wcis/WhatCanISayScreen;->startActivity(Landroid/content/Intent;)V

    .line 109
    .end local v0           #clazz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .end local v1           #i:Landroid/content/Intent;
    .end local v2           #intent:Landroid/content/Intent;
    :cond_4a
    :goto_4a
    return-void

    .line 90
    .restart local v0       #clazz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .restart local v1       #i:Landroid/content/Intent;
    :cond_4b
    if-eqz v1, :cond_4a

    .line 91
    iget-object v4, p0, Lcom/vlingo/client/help/wcis/WhatCanISayScreen$2;->this$0:Lcom/vlingo/client/help/wcis/WhatCanISayScreen;

    invoke-virtual {v4, v1}, Lcom/vlingo/client/help/wcis/WhatCanISayScreen;->startActivity(Landroid/content/Intent;)V

    goto :goto_4a

    .line 94
    .end local v0           #clazz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .end local v1           #i:Landroid/content/Intent;
    :cond_53
    iget-object v4, p0, Lcom/vlingo/client/help/wcis/WhatCanISayScreen$2;->this$0:Lcom/vlingo/client/help/wcis/WhatCanISayScreen;

    iget-object v4, v4, Lcom/vlingo/client/help/wcis/WhatCanISayScreen;->items:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge p3, v4, :cond_b7

    .line 95
    iget-object v4, p0, Lcom/vlingo/client/help/wcis/WhatCanISayScreen$2;->this$0:Lcom/vlingo/client/help/wcis/WhatCanISayScreen;

    iget-object v4, v4, Lcom/vlingo/client/help/wcis/WhatCanISayScreen;->items:Ljava/util/ArrayList;

    invoke-virtual {v4, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/HashMap;

    .line 96
    .local v3, item:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    new-instance v2, Landroid/content/Intent;

    iget-object v4, p0, Lcom/vlingo/client/help/wcis/WhatCanISayScreen$2;->this$0:Lcom/vlingo/client/help/wcis/WhatCanISayScreen;

    const-class v5, Lcom/vlingo/client/help/wcis/WCISCompositionScreen;

    invoke-direct {v2, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 98
    .restart local v2       #intent:Landroid/content/Intent;
    const-string v5, "EXTRA_TITLE_BAR"

    const-string v4, "EXTRA_TITLE_BAR"

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v2, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 99
    const-string v5, "EXTRA_SUBTITLE"

    const-string v4, "EXTRA_SUBTITLE"

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v2, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 100
    const-string v5, "EXTRA_SUBTITLE_ICON"

    const-string v4, "EXTRA_SUBTITLE_ICON"

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v2, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 101
    const-string v5, "EXTRA_EXAMPLE_LIST"

    const-string v4, "EXTRA_EXAMPLE_LIST"

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v2, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 102
    const-string v5, "EXTRA_DID_YOU_KNOW"

    const-string v4, "EXTRA_DID_YOU_KNOW"

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v2, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 104
    iget-object v4, p0, Lcom/vlingo/client/help/wcis/WhatCanISayScreen$2;->this$0:Lcom/vlingo/client/help/wcis/WhatCanISayScreen;

    invoke-virtual {v4, v2}, Lcom/vlingo/client/help/wcis/WhatCanISayScreen;->startActivity(Landroid/content/Intent;)V

    goto :goto_4a

    .line 107
    .end local v2           #intent:Landroid/content/Intent;
    .end local v3           #item:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_b7
    iget-object v4, p0, Lcom/vlingo/client/help/wcis/WhatCanISayScreen$2;->this$0:Lcom/vlingo/client/help/wcis/WhatCanISayScreen;

    new-instance v5, Landroid/content/Intent;

    iget-object v6, p0, Lcom/vlingo/client/help/wcis/WhatCanISayScreen$2;->this$0:Lcom/vlingo/client/help/wcis/WhatCanISayScreen;

    const-class v7, Lcom/vlingo/client/help/HelpHomeScreen;

    invoke-direct {v5, v6, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v4, v5}, Lcom/vlingo/client/help/wcis/WhatCanISayScreen;->startActivity(Landroid/content/Intent;)V

    goto :goto_4a
.end method
