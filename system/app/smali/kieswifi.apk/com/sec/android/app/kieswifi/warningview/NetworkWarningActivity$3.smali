.class Lcom/sec/android/app/kieswifi/warningview/NetworkWarningActivity$3;
.super Ljava/lang/Object;
.source "NetworkWarningActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/kieswifi/warningview/NetworkWarningActivity;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/kieswifi/warningview/NetworkWarningActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/app/kieswifi/warningview/NetworkWarningActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 152
    iput-object p1, p0, Lcom/sec/android/app/kieswifi/warningview/NetworkWarningActivity$3;->this$0:Lcom/sec/android/app/kieswifi/warningview/NetworkWarningActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .registers 4
    .parameter "dialog"

    .prologue
    .line 154
    const/4 v0, 0x1

    const-string v1, "NetworkWarningActivity : setResult -1"

    invoke-static {v0, v1}, Lcom/sec/android/app/kieswifi/KiesWiFiDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 155
    iget-object v0, p0, Lcom/sec/android/app/kieswifi/warningview/NetworkWarningActivity$3;->this$0:Lcom/sec/android/app/kieswifi/warningview/NetworkWarningActivity;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/kieswifi/warningview/NetworkWarningActivity;->setResult(I)V

    .line 156
    iget-object v0, p0, Lcom/sec/android/app/kieswifi/warningview/NetworkWarningActivity$3;->this$0:Lcom/sec/android/app/kieswifi/warningview/NetworkWarningActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/kieswifi/warningview/NetworkWarningActivity;->finish()V

    .line 157
    return-void
.end method
