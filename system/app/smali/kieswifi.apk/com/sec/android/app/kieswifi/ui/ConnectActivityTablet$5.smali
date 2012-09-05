.class Lcom/sec/android/app/kieswifi/ui/ConnectActivityTablet$5;
.super Ljava/lang/Object;
.source "ConnectActivityTablet.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/kieswifi/ui/ConnectActivityTablet;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/kieswifi/ui/ConnectActivityTablet;


# direct methods
.method constructor <init>(Lcom/sec/android/app/kieswifi/ui/ConnectActivityTablet;)V
    .registers 2
    .parameter

    .prologue
    .line 458
    iput-object p1, p0, Lcom/sec/android/app/kieswifi/ui/ConnectActivityTablet$5;->this$0:Lcom/sec/android/app/kieswifi/ui/ConnectActivityTablet;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .registers 6
    .parameter "dialog"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 462
    const/4 v0, 0x4

    if-ne p2, v0, :cond_1e

    .line 464
    sget-boolean v0, Lcom/sec/android/app/kieswifi/ui/ConnectActivityTablet;->connected:Z

    if-nez v0, :cond_14

    .line 466
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/sec/android/app/kieswifi/ui/ConnectActivityTablet$5$1;

    invoke-direct {v1, p0}, Lcom/sec/android/app/kieswifi/ui/ConnectActivityTablet$5$1;-><init>(Lcom/sec/android/app/kieswifi/ui/ConnectActivityTablet$5;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 480
    :cond_14
    iget-object v0, p0, Lcom/sec/android/app/kieswifi/ui/ConnectActivityTablet$5;->this$0:Lcom/sec/android/app/kieswifi/ui/ConnectActivityTablet;

    invoke-virtual {v0}, Lcom/sec/android/app/kieswifi/ui/ConnectActivityTablet;->fileDelete()V

    .line 481
    iget-object v0, p0, Lcom/sec/android/app/kieswifi/ui/ConnectActivityTablet$5;->this$0:Lcom/sec/android/app/kieswifi/ui/ConnectActivityTablet;

    invoke-virtual {v0}, Lcom/sec/android/app/kieswifi/ui/ConnectActivityTablet;->finish()V

    .line 483
    :cond_1e
    const/4 v0, 0x1

    return v0
.end method
