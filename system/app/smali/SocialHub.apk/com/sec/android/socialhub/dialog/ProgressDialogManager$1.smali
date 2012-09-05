.class Lcom/sec/android/socialhub/dialog/ProgressDialogManager$1;
.super Ljava/lang/Object;
.source "ProgressDialogManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/socialhub/dialog/ProgressDialogManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/socialhub/dialog/ProgressDialogManager;


# direct methods
.method constructor <init>(Lcom/sec/android/socialhub/dialog/ProgressDialogManager;)V
    .registers 2
    .parameter

    .prologue
    .line 76
    iput-object p1, p0, Lcom/sec/android/socialhub/dialog/ProgressDialogManager$1;->this$0:Lcom/sec/android/socialhub/dialog/ProgressDialogManager;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 79
    iget-object v0, p0, Lcom/sec/android/socialhub/dialog/ProgressDialogManager$1;->this$0:Lcom/sec/android/socialhub/dialog/ProgressDialogManager;

    invoke-virtual {v0}, Lcom/sec/android/socialhub/dialog/ProgressDialogManager;->startProgressDialog()V

    .line 80
    return-void
.end method
