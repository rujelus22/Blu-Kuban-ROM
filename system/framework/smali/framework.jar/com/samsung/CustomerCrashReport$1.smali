.class Lcom/samsung/CustomerCrashReport$1;
.super Landroid/content/BroadcastReceiver;
.source "CustomerCrashReport.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/CustomerCrashReport;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/CustomerCrashReport;


# direct methods
.method constructor <init>(Lcom/samsung/CustomerCrashReport;)V
    .registers 2
    .parameter

    .prologue
    .line 120
    iput-object p1, p0, Lcom/samsung/CustomerCrashReport$1;->this$0:Lcom/samsung/CustomerCrashReport;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 7
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v3, 0x1

    const v2, -0x789abcdf

    .line 123
    const-string v1, "auto_send"

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 124
    .local v0, auto_send:I
    const v1, 0x12345678

    if-ne v1, v0, :cond_13

    .line 126
    invoke-static {v3}, Lcom/samsung/CustomerCrashReport;->access$002(Z)Z

    .line 138
    :goto_12
    return-void

    .line 128
    :cond_13
    if-ne v2, v0, :cond_1a

    .line 130
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/samsung/CustomerCrashReport;->access$002(Z)Z

    goto :goto_12

    .line 134
    :cond_1a
    invoke-static {v3}, Lcom/samsung/CustomerCrashReport;->access$002(Z)Z

    goto :goto_12
.end method
