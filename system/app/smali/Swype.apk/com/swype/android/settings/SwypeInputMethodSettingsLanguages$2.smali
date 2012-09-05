.class Lcom/swype/android/settings/SwypeInputMethodSettingsLanguages$2;
.super Landroid/content/BroadcastReceiver;
.source "SwypeInputMethodSettingsLanguages.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/swype/android/settings/SwypeInputMethodSettingsLanguages;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/swype/android/settings/SwypeInputMethodSettingsLanguages;


# direct methods
.method constructor <init>(Lcom/swype/android/settings/SwypeInputMethodSettingsLanguages;)V
    .registers 2
    .parameter

    .prologue
    .line 105
    iput-object p1, p0, Lcom/swype/android/settings/SwypeInputMethodSettingsLanguages$2;->this$0:Lcom/swype/android/settings/SwypeInputMethodSettingsLanguages;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 4
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 108
    iget-object v0, p0, Lcom/swype/android/settings/SwypeInputMethodSettingsLanguages$2;->this$0:Lcom/swype/android/settings/SwypeInputMethodSettingsLanguages;

    #calls: Lcom/swype/android/settings/SwypeInputMethodSettingsLanguages;->setupPreferences()V
    invoke-static {v0}, Lcom/swype/android/settings/SwypeInputMethodSettingsLanguages;->access$200(Lcom/swype/android/settings/SwypeInputMethodSettingsLanguages;)V

    .line 109
    return-void
.end method
