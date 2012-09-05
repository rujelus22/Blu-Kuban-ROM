.class Lcom/vlingo/client/settings/SettingsScreen$5;
.super Ljava/lang/Object;
.source "SettingsScreen.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vlingo/client/settings/SettingsScreen;->onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
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
    .line 607
    iput-object p1, p0, Lcom/vlingo/client/settings/SettingsScreen$5;->this$0:Lcom/vlingo/client/settings/SettingsScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 609
    iget-object v0, p0, Lcom/vlingo/client/settings/SettingsScreen$5;->this$0:Lcom/vlingo/client/settings/SettingsScreen;

    invoke-virtual {v0}, Lcom/vlingo/client/settings/SettingsScreen;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/vlingo/client/settings/SettingsScreen$5;->this$0:Lcom/vlingo/client/settings/SettingsScreen;

    invoke-static {v1}, Lcom/vlingo/client/samsung/DrivingModeUtil;->isDrivingModeEnabled(Landroid/content/Context;)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/vlingo/client/widget/InCarWidget;->updateAllWidgets(Landroid/content/Context;Z)V

    .line 610
    return-void
.end method
