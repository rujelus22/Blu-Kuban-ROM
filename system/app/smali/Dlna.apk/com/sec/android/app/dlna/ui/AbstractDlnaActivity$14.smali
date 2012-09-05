.class Lcom/sec/android/app/dlna/ui/AbstractDlnaActivity$14;
.super Ljava/lang/Object;
.source "AbstractDlnaActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/dlna/ui/AbstractDlnaActivity;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/dlna/ui/AbstractDlnaActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/app/dlna/ui/AbstractDlnaActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 457
    iput-object p1, p0, Lcom/sec/android/app/dlna/ui/AbstractDlnaActivity$14;->this$0:Lcom/sec/android/app/dlna/ui/AbstractDlnaActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .registers 4
    .parameter "dialog"

    .prologue
    .line 459
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v0

    const/16 v1, 0x2f1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/dlna/DLNAManager;->notifyToActivity(I)V

    .line 461
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/AbstractDlnaActivity$14;->this$0:Lcom/sec/android/app/dlna/ui/AbstractDlnaActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/dlna/ui/AbstractDlnaActivity;->finish()V

    .line 462
    return-void
.end method
