.class Lcom/android/browser/NetworkSettingsHandler$2;
.super Ljava/lang/Object;
.source "NetworkSettingsHandler.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/browser/NetworkSettingsHandler;->showDialogSelectMessage()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/browser/NetworkSettingsHandler;


# direct methods
.method constructor <init>(Lcom/android/browser/NetworkSettingsHandler;)V
    .registers 2
    .parameter

    .prologue
    .line 98
    iput-object p1, p0, Lcom/android/browser/NetworkSettingsHandler$2;->this$0:Lcom/android/browser/NetworkSettingsHandler;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 6
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 100
    iget-object v1, p0, Lcom/android/browser/NetworkSettingsHandler$2;->this$0:Lcom/android/browser/NetworkSettingsHandler;

    #calls: Lcom/android/browser/NetworkSettingsHandler;->isRoamingArea()Ljava/lang/String;
    invoke-static {v1}, Lcom/android/browser/NetworkSettingsHandler;->access$100(Lcom/android/browser/NetworkSettingsHandler;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "true"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 101
    iget-object v1, p0, Lcom/android/browser/NetworkSettingsHandler$2;->this$0:Lcom/android/browser/NetworkSettingsHandler;

    #calls: Lcom/android/browser/NetworkSettingsHandler;->startRoamingSettingActivity()Z
    invoke-static {v1}, Lcom/android/browser/NetworkSettingsHandler;->access$200(Lcom/android/browser/NetworkSettingsHandler;)Z

    .line 112
    :goto_13
    return-void

    .line 103
    :cond_14
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 104
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.android.settings"

    const-string v2, "com.android.settings.Settings$DataUsageSummaryActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 105
    const/high16 v1, 0x14a0

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 109
    iget-object v1, p0, Lcom/android/browser/NetworkSettingsHandler$2;->this$0:Lcom/android/browser/NetworkSettingsHandler;

    #getter for: Lcom/android/browser/NetworkSettingsHandler;->mActivity:Landroid/app/Activity;
    invoke-static {v1}, Lcom/android/browser/NetworkSettingsHandler;->access$000(Lcom/android/browser/NetworkSettingsHandler;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_13
.end method
