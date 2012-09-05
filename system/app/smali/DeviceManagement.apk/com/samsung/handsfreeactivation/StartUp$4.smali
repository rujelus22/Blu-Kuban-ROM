.class Lcom/samsung/handsfreeactivation/StartUp$4;
.super Ljava/lang/Object;
.source "StartUp.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/handsfreeactivation/StartUp;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/handsfreeactivation/StartUp;


# direct methods
.method constructor <init>(Lcom/samsung/handsfreeactivation/StartUp;)V
    .registers 2
    .parameter

    .prologue
    .line 274
    iput-object p1, p0, Lcom/samsung/handsfreeactivation/StartUp$4;->this$0:Lcom/samsung/handsfreeactivation/StartUp;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .registers 4
    .parameter "dialog"

    .prologue
    .line 277
    const-string v0, "StartUp"

    const-string v1, "onDismiss: gotoDialer()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    iget-object v0, p0, Lcom/samsung/handsfreeactivation/StartUp$4;->this$0:Lcom/samsung/handsfreeactivation/StartUp;

    #getter for: Lcom/samsung/handsfreeactivation/StartUp;->mApp:Lcom/samsung/client/DMApp;
    invoke-static {v0}, Lcom/samsung/handsfreeactivation/StartUp;->access$200(Lcom/samsung/handsfreeactivation/StartUp;)Lcom/samsung/client/DMApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/client/DMApp;->enableKeyGuard()V

    .line 284
    iget-object v0, p0, Lcom/samsung/handsfreeactivation/StartUp$4;->this$0:Lcom/samsung/handsfreeactivation/StartUp;

    #getter for: Lcom/samsung/handsfreeactivation/StartUp;->mApp:Lcom/samsung/client/DMApp;
    invoke-static {v0}, Lcom/samsung/handsfreeactivation/StartUp;->access$200(Lcom/samsung/handsfreeactivation/StartUp;)Lcom/samsung/client/DMApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/client/DMApp;->releaseWakeLock()V

    .line 286
    iget-object v0, p0, Lcom/samsung/handsfreeactivation/StartUp$4;->this$0:Lcom/samsung/handsfreeactivation/StartUp;

    #getter for: Lcom/samsung/handsfreeactivation/StartUp;->mApp:Lcom/samsung/client/DMApp;
    invoke-static {v0}, Lcom/samsung/handsfreeactivation/StartUp;->access$200(Lcom/samsung/handsfreeactivation/StartUp;)Lcom/samsung/client/DMApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/client/DMApp;->setNotification()V

    .line 287
    iget-object v0, p0, Lcom/samsung/handsfreeactivation/StartUp$4;->this$0:Lcom/samsung/handsfreeactivation/StartUp;

    #getter for: Lcom/samsung/handsfreeactivation/StartUp;->mApp:Lcom/samsung/client/DMApp;
    invoke-static {v0}, Lcom/samsung/handsfreeactivation/StartUp;->access$200(Lcom/samsung/handsfreeactivation/StartUp;)Lcom/samsung/client/DMApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/client/DMApp;->launchHomeScreen()V

    .line 288
    iget-object v0, p0, Lcom/samsung/handsfreeactivation/StartUp$4;->this$0:Lcom/samsung/handsfreeactivation/StartUp;

    #getter for: Lcom/samsung/handsfreeactivation/StartUp;->mApp:Lcom/samsung/client/DMApp;
    invoke-static {v0}, Lcom/samsung/handsfreeactivation/StartUp;->access$200(Lcom/samsung/handsfreeactivation/StartUp;)Lcom/samsung/client/DMApp;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/client/DMApp;->restoreSlot(I)V

    .line 289
    iget-object v0, p0, Lcom/samsung/handsfreeactivation/StartUp$4;->this$0:Lcom/samsung/handsfreeactivation/StartUp;

    invoke-virtual {v0}, Lcom/samsung/handsfreeactivation/StartUp;->finish()V

    .line 290
    return-void
.end method
