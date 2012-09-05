.class Lcom/sec/android/app/kieswifi/ui/ConnectActivityTablet$6;
.super Ljava/lang/Object;
.source "ConnectActivityTablet.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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
    .line 486
    iput-object p1, p0, Lcom/sec/android/app/kieswifi/ui/ConnectActivityTablet$6;->this$0:Lcom/sec/android/app/kieswifi/ui/ConnectActivityTablet;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 489
    sget-boolean v0, Lcom/sec/android/app/kieswifi/ui/ConnectActivityTablet;->connected:Z

    if-nez v0, :cond_11

    .line 491
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/sec/android/app/kieswifi/ui/ConnectActivityTablet$6$1;

    invoke-direct {v1, p0}, Lcom/sec/android/app/kieswifi/ui/ConnectActivityTablet$6$1;-><init>(Lcom/sec/android/app/kieswifi/ui/ConnectActivityTablet$6;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 505
    :cond_11
    iget-object v0, p0, Lcom/sec/android/app/kieswifi/ui/ConnectActivityTablet$6;->this$0:Lcom/sec/android/app/kieswifi/ui/ConnectActivityTablet;

    invoke-virtual {v0}, Lcom/sec/android/app/kieswifi/ui/ConnectActivityTablet;->fileDelete()V

    .line 506
    iget-object v0, p0, Lcom/sec/android/app/kieswifi/ui/ConnectActivityTablet$6;->this$0:Lcom/sec/android/app/kieswifi/ui/ConnectActivityTablet;

    invoke-virtual {v0}, Lcom/sec/android/app/kieswifi/ui/ConnectActivityTablet;->finish()V

    .line 507
    return-void
.end method
