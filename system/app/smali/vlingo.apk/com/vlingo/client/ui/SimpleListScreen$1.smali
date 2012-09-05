.class Lcom/vlingo/client/ui/SimpleListScreen$1;
.super Ljava/lang/Object;
.source "SimpleListScreen.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vlingo/client/ui/SimpleListScreen;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vlingo/client/ui/SimpleListScreen;


# direct methods
.method constructor <init>(Lcom/vlingo/client/ui/SimpleListScreen;)V
    .registers 2
    .parameter

    .prologue
    .line 42
    iput-object p1, p0, Lcom/vlingo/client/ui/SimpleListScreen$1;->this$0:Lcom/vlingo/client/ui/SimpleListScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 12
    .parameter
    .parameter "arg1"
    .parameter "position"
    .parameter "arg3"
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
    .line 44
    .local p1, arg0:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v4, p0, Lcom/vlingo/client/ui/SimpleListScreen$1;->this$0:Lcom/vlingo/client/ui/SimpleListScreen;

    iget-object v4, v4, Lcom/vlingo/client/ui/SimpleListScreen;->m_targets:Ljava/util/ArrayList;

    invoke-virtual {v4, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    .line 45
    .local v2, item:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v4, "activity"

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 46
    .local v0, clazz:Ljava/lang/Object;
    const-string v4, "url"

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 47
    .local v3, url:Ljava/lang/Object;
    const/4 v1, 0x0

    .line 48
    .local v1, intent:Landroid/content/Intent;
    if-eqz v0, :cond_40

    .line 49
    new-instance v1, Landroid/content/Intent;

    .end local v1           #intent:Landroid/content/Intent;
    iget-object v4, p0, Lcom/vlingo/client/ui/SimpleListScreen$1;->this$0:Lcom/vlingo/client/ui/SimpleListScreen;

    check-cast v0, Ljava/lang/Class;

    .end local v0           #clazz:Ljava/lang/Object;
    invoke-direct {v1, v4, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 50
    .restart local v1       #intent:Landroid/content/Intent;
    if-eqz v3, :cond_2b

    .line 51
    const-string v4, "listitemparam"

    check-cast v3, Ljava/lang/String;

    .end local v3           #url:Ljava/lang/Object;
    invoke-virtual {v1, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 59
    :cond_2b
    :goto_2b
    if-eqz v1, :cond_3f

    .line 60
    iget-object v4, p0, Lcom/vlingo/client/ui/SimpleListScreen$1;->this$0:Lcom/vlingo/client/ui/SimpleListScreen;

    invoke-virtual {v4, v1}, Lcom/vlingo/client/ui/SimpleListScreen;->startActivity(Landroid/content/Intent;)V

    .line 61
    iget-object v4, p0, Lcom/vlingo/client/ui/SimpleListScreen$1;->this$0:Lcom/vlingo/client/ui/SimpleListScreen;

    #getter for: Lcom/vlingo/client/ui/SimpleListScreen;->m_forwardToNextActivity:Z
    invoke-static {v4}, Lcom/vlingo/client/ui/SimpleListScreen;->access$000(Lcom/vlingo/client/ui/SimpleListScreen;)Z

    move-result v4

    if-eqz v4, :cond_3f

    .line 62
    iget-object v4, p0, Lcom/vlingo/client/ui/SimpleListScreen$1;->this$0:Lcom/vlingo/client/ui/SimpleListScreen;

    invoke-virtual {v4}, Lcom/vlingo/client/ui/SimpleListScreen;->finish()V

    .line 65
    :cond_3f
    return-void

    .line 55
    .restart local v0       #clazz:Ljava/lang/Object;
    .restart local v3       #url:Ljava/lang/Object;
    :cond_40
    if-eqz v3, :cond_2b

    .line 56
    new-instance v1, Landroid/content/Intent;

    .end local v1           #intent:Landroid/content/Intent;
    const-string v4, "android.intent.action.VIEW"

    check-cast v3, Ljava/lang/String;

    .end local v3           #url:Ljava/lang/Object;
    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-direct {v1, v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .restart local v1       #intent:Landroid/content/Intent;
    goto :goto_2b
.end method
