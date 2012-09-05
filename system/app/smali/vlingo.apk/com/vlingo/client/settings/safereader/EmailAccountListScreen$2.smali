.class Lcom/vlingo/client/settings/safereader/EmailAccountListScreen$2;
.super Ljava/lang/Object;
.source "EmailAccountListScreen.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vlingo/client/settings/safereader/EmailAccountListScreen;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vlingo/client/settings/safereader/EmailAccountListScreen;


# direct methods
.method constructor <init>(Lcom/vlingo/client/settings/safereader/EmailAccountListScreen;)V
    .registers 2
    .parameter

    .prologue
    .line 59
    iput-object p1, p0, Lcom/vlingo/client/settings/safereader/EmailAccountListScreen$2;->this$0:Lcom/vlingo/client/settings/safereader/EmailAccountListScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6
    .parameter "v"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/vlingo/client/settings/safereader/EmailAccountListScreen$2;->this$0:Lcom/vlingo/client/settings/safereader/EmailAccountListScreen;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/vlingo/client/settings/safereader/EmailAccountListScreen$2;->this$0:Lcom/vlingo/client/settings/safereader/EmailAccountListScreen;

    const-class v3, Lcom/vlingo/client/settings/safereader/EmailAccountProviderSelectionScreen;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lcom/vlingo/client/settings/safereader/EmailAccountListScreen;->startActivity(Landroid/content/Intent;)V

    .line 62
    return-void
.end method
