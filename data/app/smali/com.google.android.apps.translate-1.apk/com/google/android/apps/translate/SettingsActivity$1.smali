.class Lcom/google/android/apps/translate/SettingsActivity$1;
.super Landroid/content/BroadcastReceiver;
.source "SettingsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/translate/SettingsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/translate/SettingsActivity;


# direct methods
.method constructor <init>(Lcom/google/android/apps/translate/SettingsActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 50
    iput-object p1, p0, Lcom/google/android/apps/translate/SettingsActivity$1;->this$0:Lcom/google/android/apps/translate/SettingsActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 4
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/google/android/apps/translate/SettingsActivity$1;->this$0:Lcom/google/android/apps/translate/SettingsActivity;

    #calls: Lcom/google/android/apps/translate/SettingsActivity;->refreshLanguageList()V
    invoke-static {v0}, Lcom/google/android/apps/translate/SettingsActivity;->access$000(Lcom/google/android/apps/translate/SettingsActivity;)V

    .line 54
    return-void
.end method
