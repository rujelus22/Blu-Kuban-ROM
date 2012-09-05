.class Lcom/sec/android/widgetapp/apnews/activity/settings/Settings$4;
.super Ljava/lang/Object;
.source "Settings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/widgetapp/apnews/activity/settings/Settings;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/widgetapp/apnews/activity/settings/Settings;


# direct methods
.method constructor <init>(Lcom/sec/android/widgetapp/apnews/activity/settings/Settings;)V
    .registers 2
    .parameter

    .prologue
    .line 302
    iput-object p1, p0, Lcom/sec/android/widgetapp/apnews/activity/settings/Settings$4;->this$0:Lcom/sec/android/widgetapp/apnews/activity/settings/Settings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .registers 7
    .parameter "dialog"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 305
    iget-object v1, p0, Lcom/sec/android/widgetapp/apnews/activity/settings/Settings$4;->this$0:Lcom/sec/android/widgetapp/apnews/activity/settings/Settings;

    invoke-virtual {v1}, Lcom/sec/android/widgetapp/apnews/activity/settings/Settings;->finish()V

    .line 306
    const/4 v1, 0x4

    if-ne p2, v1, :cond_1b

    .line 307
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 308
    .local v0, i:Landroid/content/Intent;
    const-string v1, "com.sec.android.app.twlauncher"

    const-string v2, "com.sec.android.app.twlauncher.Launcher"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 309
    iget-object v1, p0, Lcom/sec/android/widgetapp/apnews/activity/settings/Settings$4;->this$0:Lcom/sec/android/widgetapp/apnews/activity/settings/Settings;

    invoke-virtual {v1, v0}, Lcom/sec/android/widgetapp/apnews/activity/settings/Settings;->startActivity(Landroid/content/Intent;)V

    .line 311
    .end local v0           #i:Landroid/content/Intent;
    :cond_1b
    const/4 v1, 0x0

    return v1
.end method
