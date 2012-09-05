.class Lcom/android/mms/ui/CMASAlertFullScreen$1;
.super Ljava/lang/Object;
.source "CMASAlertFullScreen.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/CMASAlertFullScreen;->updateLayout()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/CMASAlertFullScreen;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/CMASAlertFullScreen;)V
    .registers 2
    .parameter

    .prologue
    .line 105
    iput-object p1, p0, Lcom/android/mms/ui/CMASAlertFullScreen$1;->this$0:Lcom/android/mms/ui/CMASAlertFullScreen;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6
    .parameter "v"

    .prologue
    .line 107
    iget-object v0, p0, Lcom/android/mms/ui/CMASAlertFullScreen$1;->this$0:Lcom/android/mms/ui/CMASAlertFullScreen;

    invoke-virtual {v0}, Lcom/android/mms/ui/CMASAlertFullScreen;->finish()V

    .line 109
    iget-object v0, p0, Lcom/android/mms/ui/CMASAlertFullScreen$1;->this$0:Lcom/android/mms/ui/CMASAlertFullScreen;

    iget-object v1, p0, Lcom/android/mms/ui/CMASAlertFullScreen$1;->this$0:Lcom/android/mms/ui/CMASAlertFullScreen;

    invoke-virtual {v1}, Lcom/android/mms/ui/CMASAlertFullScreen;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {}, Lcom/android/mms/ui/CMASAlertFullScreen;->access$000()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/android/mms/ui/CMASViewer;->createIntent(Landroid/content/Context;J)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/CMASAlertFullScreen;->startActivity(Landroid/content/Intent;)V

    .line 110
    return-void
.end method
