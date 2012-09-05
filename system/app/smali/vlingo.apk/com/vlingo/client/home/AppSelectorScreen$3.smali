.class Lcom/vlingo/client/home/AppSelectorScreen$3;
.super Ljava/lang/Object;
.source "AppSelectorScreen.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vlingo/client/home/AppSelectorScreen;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vlingo/client/home/AppSelectorScreen;


# direct methods
.method constructor <init>(Lcom/vlingo/client/home/AppSelectorScreen;)V
    .registers 2
    .parameter

    .prologue
    .line 62
    iput-object p1, p0, Lcom/vlingo/client/home/AppSelectorScreen$3;->this$0:Lcom/vlingo/client/home/AppSelectorScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 8
    .parameter "v"

    .prologue
    const/4 v5, 0x1

    .line 64
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/vlingo/client/home/AppSelectorScreen$3;->this$0:Lcom/vlingo/client/home/AppSelectorScreen;

    const-class v2, Lcom/vlingo/client/contacts/ContactSelectActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 67
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.vlingo.client.action"

    const-string v2, "call"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 68
    const-string v1, "com.vlingo.client.phoneTypes"

    new-array v2, v5, [I

    const/4 v3, 0x0

    const/4 v4, -0x1

    aput v4, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    .line 69
    const-string v1, "query"

    const-string v2, "joe"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 70
    const-string v1, "com.vlingo.client.autodialcountdown.enabled"

    invoke-virtual {v0, v1, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 77
    iget-object v1, p0, Lcom/vlingo/client/home/AppSelectorScreen$3;->this$0:Lcom/vlingo/client/home/AppSelectorScreen;

    invoke-virtual {v1, v0}, Lcom/vlingo/client/home/AppSelectorScreen;->startActivity(Landroid/content/Intent;)V

    .line 78
    return-void
.end method
