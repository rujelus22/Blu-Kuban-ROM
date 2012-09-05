.class Lcom/vlingo/client/settings/DebugSettings$2;
.super Ljava/lang/Object;
.source "DebugSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vlingo/client/settings/DebugSettings;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vlingo/client/settings/DebugSettings;


# direct methods
.method constructor <init>(Lcom/vlingo/client/settings/DebugSettings;)V
    .registers 2
    .parameter

    .prologue
    .line 147
    iput-object p1, p0, Lcom/vlingo/client/settings/DebugSettings$2;->this$0:Lcom/vlingo/client/settings/DebugSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .registers 8
    .parameter "preference"

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 149
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    .line 150
    .local v1, key:Ljava/lang/String;
    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lcom/vlingo/client/settings/DebugSettings$2;->this$0:Lcom/vlingo/client/settings/DebugSettings;

    invoke-virtual {v2}, Lcom/vlingo/client/settings/DebugSettings;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/vlingo/client/lmtt/LMTTService;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 151
    .local v0, i:Landroid/content/Intent;
    const-string v2, "com.vlingo.client.lmtt.debug"

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 152
    const-string v2, "LMTT_CONTACTS"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_38

    .line 153
    const-string v2, "com.vlingo.client.lmtt.debug_type"

    invoke-virtual {v0, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 158
    :goto_25
    const-string v2, "CLEAR_SERVERDB"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3e

    .line 159
    const-string v2, "com.vlingo.client.lmtt.debug_action"

    invoke-virtual {v0, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 167
    :goto_32
    iget-object v2, p0, Lcom/vlingo/client/settings/DebugSettings$2;->this$0:Lcom/vlingo/client/settings/DebugSettings;

    invoke-virtual {v2, v0}, Lcom/vlingo/client/settings/DebugSettings;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 168
    return v4

    .line 156
    :cond_38
    const-string v2, "com.vlingo.client.lmtt.debug_type"

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_25

    .line 161
    :cond_3e
    const-string v2, "CLEAR_CLIENTDB"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4c

    .line 162
    const-string v2, "com.vlingo.client.lmtt.debug_action"

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_32

    .line 165
    :cond_4c
    const-string v2, "com.vlingo.client.lmtt.debug_action"

    const/4 v3, 0x3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_32
.end method
