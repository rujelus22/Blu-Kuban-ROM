.class Lcom/sec/android/widgetapp/apnews/activity/settings/Settings$SettingsItemAdapter$1$1;
.super Ljava/lang/Object;
.source "Settings.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/widgetapp/apnews/activity/settings/Settings$SettingsItemAdapter$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/sec/android/widgetapp/apnews/activity/settings/Settings$SettingsItemAdapter$1;


# direct methods
.method constructor <init>(Lcom/sec/android/widgetapp/apnews/activity/settings/Settings$SettingsItemAdapter$1;)V
    .registers 2
    .parameter

    .prologue
    .line 200
    iput-object p1, p0, Lcom/sec/android/widgetapp/apnews/activity/settings/Settings$SettingsItemAdapter$1$1;->this$2:Lcom/sec/android/widgetapp/apnews/activity/settings/Settings$SettingsItemAdapter$1;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 202
    iget-object v0, p0, Lcom/sec/android/widgetapp/apnews/activity/settings/Settings$SettingsItemAdapter$1$1;->this$2:Lcom/sec/android/widgetapp/apnews/activity/settings/Settings$SettingsItemAdapter$1;

    iget-object v0, v0, Lcom/sec/android/widgetapp/apnews/activity/settings/Settings$SettingsItemAdapter$1;->this$1:Lcom/sec/android/widgetapp/apnews/activity/settings/Settings$SettingsItemAdapter;

    iget-object v0, v0, Lcom/sec/android/widgetapp/apnews/activity/settings/Settings$SettingsItemAdapter;->this$0:Lcom/sec/android/widgetapp/apnews/activity/settings/Settings;

    #calls: Lcom/sec/android/widgetapp/apnews/activity/settings/Settings;->queryDummy()Z
    invoke-static {v0}, Lcom/sec/android/widgetapp/apnews/activity/settings/Settings;->access$100(Lcom/sec/android/widgetapp/apnews/activity/settings/Settings;)Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_25

    .line 203
    iget-object v0, p0, Lcom/sec/android/widgetapp/apnews/activity/settings/Settings$SettingsItemAdapter$1$1;->this$2:Lcom/sec/android/widgetapp/apnews/activity/settings/Settings$SettingsItemAdapter$1;

    iget-object v0, v0, Lcom/sec/android/widgetapp/apnews/activity/settings/Settings$SettingsItemAdapter$1;->this$1:Lcom/sec/android/widgetapp/apnews/activity/settings/Settings$SettingsItemAdapter;

    iget-object v0, v0, Lcom/sec/android/widgetapp/apnews/activity/settings/Settings$SettingsItemAdapter;->this$0:Lcom/sec/android/widgetapp/apnews/activity/settings/Settings;

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/apnews/activity/settings/Settings;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_24

    .line 204
    iget-object v0, p0, Lcom/sec/android/widgetapp/apnews/activity/settings/Settings$SettingsItemAdapter$1$1;->this$2:Lcom/sec/android/widgetapp/apnews/activity/settings/Settings$SettingsItemAdapter$1;

    iget-object v0, v0, Lcom/sec/android/widgetapp/apnews/activity/settings/Settings$SettingsItemAdapter$1;->this$1:Lcom/sec/android/widgetapp/apnews/activity/settings/Settings$SettingsItemAdapter;

    iget-object v0, v0, Lcom/sec/android/widgetapp/apnews/activity/settings/Settings$SettingsItemAdapter;->this$0:Lcom/sec/android/widgetapp/apnews/activity/settings/Settings;

    const/16 v1, 0x3e

    invoke-virtual {v0, v1}, Lcom/sec/android/widgetapp/apnews/activity/settings/Settings;->showDialog(I)V

    .line 213
    :cond_24
    :goto_24
    return-void

    .line 208
    :cond_25
    const-string v1, "AP Mobile news"

    iget-object v0, p0, Lcom/sec/android/widgetapp/apnews/activity/settings/Settings$SettingsItemAdapter$1$1;->this$2:Lcom/sec/android/widgetapp/apnews/activity/settings/Settings$SettingsItemAdapter$1;

    iget-object v0, v0, Lcom/sec/android/widgetapp/apnews/activity/settings/Settings$SettingsItemAdapter$1;->this$1:Lcom/sec/android/widgetapp/apnews/activity/settings/Settings$SettingsItemAdapter;

    iget-object v0, v0, Lcom/sec/android/widgetapp/apnews/activity/settings/Settings$SettingsItemAdapter;->this$0:Lcom/sec/android/widgetapp/apnews/activity/settings/Settings;

    #getter for: Lcom/sec/android/widgetapp/apnews/activity/settings/Settings;->mSettingsArrayList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/sec/android/widgetapp/apnews/activity/settings/Settings;->access$200(Lcom/sec/android/widgetapp/apnews/activity/settings/Settings;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v2, p0, Lcom/sec/android/widgetapp/apnews/activity/settings/Settings$SettingsItemAdapter$1$1;->this$2:Lcom/sec/android/widgetapp/apnews/activity/settings/Settings$SettingsItemAdapter$1;

    iget v2, v2, Lcom/sec/android/widgetapp/apnews/activity/settings/Settings$SettingsItemAdapter$1;->val$position:I

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/widgetapp/apnews/engine/SettingsItem;

    iget-object v0, v0, Lcom/sec/android/widgetapp/apnews/engine/SettingsItem;->mSettingsName:Ljava/lang/String;

    if-ne v1, v0, :cond_24

    .line 209
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/sec/android/widgetapp/apnews/activity/settings/Settings$SettingsItemAdapter$1$1;->this$2:Lcom/sec/android/widgetapp/apnews/activity/settings/Settings$SettingsItemAdapter$1;

    iget-object v1, v1, Lcom/sec/android/widgetapp/apnews/activity/settings/Settings$SettingsItemAdapter$1;->this$1:Lcom/sec/android/widgetapp/apnews/activity/settings/Settings$SettingsItemAdapter;

    iget-object v1, v1, Lcom/sec/android/widgetapp/apnews/activity/settings/Settings$SettingsItemAdapter;->this$0:Lcom/sec/android/widgetapp/apnews/activity/settings/Settings;

    #getter for: Lcom/sec/android/widgetapp/apnews/activity/settings/Settings;->mCtx:Landroid/content/Context;
    invoke-static {v1}, Lcom/sec/android/widgetapp/apnews/activity/settings/Settings;->access$300(Lcom/sec/android/widgetapp/apnews/activity/settings/Settings;)Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/sec/android/widgetapp/apnews/activity/settings/SettingsNews;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 210
    iget-object v1, p0, Lcom/sec/android/widgetapp/apnews/activity/settings/Settings$SettingsItemAdapter$1$1;->this$2:Lcom/sec/android/widgetapp/apnews/activity/settings/Settings$SettingsItemAdapter$1;

    iget-object v1, v1, Lcom/sec/android/widgetapp/apnews/activity/settings/Settings$SettingsItemAdapter$1;->this$1:Lcom/sec/android/widgetapp/apnews/activity/settings/Settings$SettingsItemAdapter;

    iget-object v1, v1, Lcom/sec/android/widgetapp/apnews/activity/settings/Settings$SettingsItemAdapter;->this$0:Lcom/sec/android/widgetapp/apnews/activity/settings/Settings;

    const/16 v2, 0x1e

    invoke-virtual {v1, v0, v2}, Lcom/sec/android/widgetapp/apnews/activity/settings/Settings;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_24
.end method
