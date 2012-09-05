.class Lcom/vlingo/client/settings/SettingsScreen$8;
.super Ljava/lang/Object;
.source "SettingsScreen.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vlingo/client/settings/SettingsScreen;->showSafeReaderEmailMessage()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vlingo/client/settings/SettingsScreen;


# direct methods
.method constructor <init>(Lcom/vlingo/client/settings/SettingsScreen;)V
    .registers 2
    .parameter

    .prologue
    .line 804
    iput-object p1, p0, Lcom/vlingo/client/settings/SettingsScreen$8;->this$0:Lcom/vlingo/client/settings/SettingsScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 6
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 806
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/vlingo/client/settings/SettingsScreen$8;->this$0:Lcom/vlingo/client/settings/SettingsScreen;

    const-class v2, Lcom/vlingo/client/settings/safereader/EmailAccountListScreen;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 807
    .local v0, i:Landroid/content/Intent;
    const-string v1, "auto_show_add"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 808
    iget-object v1, p0, Lcom/vlingo/client/settings/SettingsScreen$8;->this$0:Lcom/vlingo/client/settings/SettingsScreen;

    invoke-virtual {v1, v0}, Lcom/vlingo/client/settings/SettingsScreen;->startActivity(Landroid/content/Intent;)V

    .line 809
    return-void
.end method
