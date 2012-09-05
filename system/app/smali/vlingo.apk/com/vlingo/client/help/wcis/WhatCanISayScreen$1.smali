.class Lcom/vlingo/client/help/wcis/WhatCanISayScreen$1;
.super Ljava/lang/Object;
.source "WhatCanISayScreen.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 65
    iput-object p1, p0, Lcom/vlingo/client/help/wcis/WhatCanISayScreen$1;->this$0:Lcom/vlingo/client/help/wcis/WhatCanISayScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6
    .parameter "arg0"

    .prologue
    .line 67
    const-string v1, "shown_wcis"

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/vlingo/client/settings/Settings;->setBoolean(Ljava/lang/String;Z)V

    .line 68
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/vlingo/client/help/wcis/WhatCanISayScreen$1;->this$0:Lcom/vlingo/client/help/wcis/WhatCanISayScreen;

    const-class v2, Lcom/vlingo/client/home/HomeActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 69
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/vlingo/client/help/wcis/WhatCanISayScreen$1;->this$0:Lcom/vlingo/client/help/wcis/WhatCanISayScreen;

    invoke-virtual {v1, v0}, Lcom/vlingo/client/help/wcis/WhatCanISayScreen;->startActivity(Landroid/content/Intent;)V

    .line 70
    iget-object v1, p0, Lcom/vlingo/client/help/wcis/WhatCanISayScreen$1;->this$0:Lcom/vlingo/client/help/wcis/WhatCanISayScreen;

    const/high16 v2, 0x10a

    const v3, 0x10a0001

    invoke-virtual {v1, v2, v3}, Lcom/vlingo/client/help/wcis/WhatCanISayScreen;->overridePendingTransition(II)V

    .line 71
    iget-object v1, p0, Lcom/vlingo/client/help/wcis/WhatCanISayScreen$1;->this$0:Lcom/vlingo/client/help/wcis/WhatCanISayScreen;

    invoke-virtual {v1}, Lcom/vlingo/client/help/wcis/WhatCanISayScreen;->finish()V

    .line 72
    return-void
.end method
