.class Lcom/swype/android/settings/SwypeSettings$1;
.super Landroid/content/BroadcastReceiver;
.source "SwypeSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/swype/android/settings/SwypeSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/swype/android/settings/SwypeSettings;


# direct methods
.method constructor <init>(Lcom/swype/android/settings/SwypeSettings;)V
    .registers 2
    .parameter

    .prologue
    .line 64
    iput-object p1, p0, Lcom/swype/android/settings/SwypeSettings$1;->this$0:Lcom/swype/android/settings/SwypeSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 67
    const-string v0, "Progress"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Lcom/swype/android/settings/SwypeSettings;->access$002(I)I

    .line 68
    iget-object v0, p0, Lcom/swype/android/settings/SwypeSettings$1;->this$0:Lcom/swype/android/settings/SwypeSettings;

    #calls: Lcom/swype/android/settings/SwypeSettings;->setupPreferences()V
    invoke-static {v0}, Lcom/swype/android/settings/SwypeSettings;->access$100(Lcom/swype/android/settings/SwypeSettings;)V

    .line 69
    return-void
.end method
