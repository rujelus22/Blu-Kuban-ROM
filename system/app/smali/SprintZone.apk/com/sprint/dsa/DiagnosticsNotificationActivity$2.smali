.class Lcom/sprint/dsa/DiagnosticsNotificationActivity$2;
.super Ljava/lang/Object;
.source "DiagnosticsNotificationActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sprint/dsa/DiagnosticsNotificationActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sprint/dsa/DiagnosticsNotificationActivity;


# direct methods
.method constructor <init>(Lcom/sprint/dsa/DiagnosticsNotificationActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/sprint/dsa/DiagnosticsNotificationActivity$2;->this$0:Lcom/sprint/dsa/DiagnosticsNotificationActivity;

    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 122
    iget-object v0, p0, Lcom/sprint/dsa/DiagnosticsNotificationActivity$2;->this$0:Lcom/sprint/dsa/DiagnosticsNotificationActivity;

    #calls: Lcom/sprint/dsa/DiagnosticsNotificationActivity;->clearLED()V
    invoke-static {v0}, Lcom/sprint/dsa/DiagnosticsNotificationActivity;->access$2(Lcom/sprint/dsa/DiagnosticsNotificationActivity;)V

    .line 124
    iget-object v0, p0, Lcom/sprint/dsa/DiagnosticsNotificationActivity$2;->this$0:Lcom/sprint/dsa/DiagnosticsNotificationActivity;

    #getter for: Lcom/sprint/dsa/DiagnosticsNotificationActivity;->ledFlashButton:Landroid/widget/Button;
    invoke-static {v0}, Lcom/sprint/dsa/DiagnosticsNotificationActivity;->access$0(Lcom/sprint/dsa/DiagnosticsNotificationActivity;)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 125
    return-void
.end method
