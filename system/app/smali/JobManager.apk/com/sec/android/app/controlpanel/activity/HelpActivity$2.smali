.class Lcom/sec/android/app/controlpanel/activity/HelpActivity$2;
.super Ljava/lang/Object;
.source "HelpActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/controlpanel/activity/HelpActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/controlpanel/activity/HelpActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/app/controlpanel/activity/HelpActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 64
    iput-object p1, p0, Lcom/sec/android/app/controlpanel/activity/HelpActivity$2;->this$0:Lcom/sec/android/app/controlpanel/activity/HelpActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 66
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/sec/android/app/controlpanel/activity/HelpActivity$2;->this$0:Lcom/sec/android/app/controlpanel/activity/HelpActivity;

    const-class v2, Lcom/sec/android/app/controlpanel/activity/SettingsActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 67
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/sec/android/app/controlpanel/activity/HelpActivity$2;->this$0:Lcom/sec/android/app/controlpanel/activity/HelpActivity;

    invoke-virtual {v1, v0}, Lcom/sec/android/app/controlpanel/activity/HelpActivity;->startActivity(Landroid/content/Intent;)V

    .line 68
    return-void
.end method
