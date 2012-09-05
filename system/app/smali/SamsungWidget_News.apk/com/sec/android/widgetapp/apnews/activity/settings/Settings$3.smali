.class Lcom/sec/android/widgetapp/apnews/activity/settings/Settings$3;
.super Ljava/lang/Object;
.source "Settings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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
    .line 294
    iput-object p1, p0, Lcom/sec/android/widgetapp/apnews/activity/settings/Settings$3;->this$0:Lcom/sec/android/widgetapp/apnews/activity/settings/Settings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 6
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 296
    iget-object v1, p0, Lcom/sec/android/widgetapp/apnews/activity/settings/Settings$3;->this$0:Lcom/sec/android/widgetapp/apnews/activity/settings/Settings;

    invoke-virtual {v1}, Lcom/sec/android/widgetapp/apnews/activity/settings/Settings;->finish()V

    .line 297
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 298
    .local v0, i:Landroid/content/Intent;
    const-string v1, "com.sec.android.app.twlauncher"

    const-string v2, "com.sec.android.app.twlauncher.Launcher"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 299
    iget-object v1, p0, Lcom/sec/android/widgetapp/apnews/activity/settings/Settings$3;->this$0:Lcom/sec/android/widgetapp/apnews/activity/settings/Settings;

    invoke-virtual {v1, v0}, Lcom/sec/android/widgetapp/apnews/activity/settings/Settings;->startActivity(Landroid/content/Intent;)V

    .line 300
    return-void
.end method
