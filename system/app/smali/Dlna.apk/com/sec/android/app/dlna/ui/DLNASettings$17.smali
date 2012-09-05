.class Lcom/sec/android/app/dlna/ui/DLNASettings$17;
.super Ljava/lang/Object;
.source "DLNASettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/dlna/ui/DLNASettings;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/dlna/ui/DLNASettings;


# direct methods
.method constructor <init>(Lcom/sec/android/app/dlna/ui/DLNASettings;)V
    .registers 2
    .parameter

    .prologue
    .line 792
    iput-object p1, p0, Lcom/sec/android/app/dlna/ui/DLNASettings$17;->this$0:Lcom/sec/android/app/dlna/ui/DLNASettings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .registers 4
    .parameter "dialog"

    .prologue
    .line 794
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v0

    const/16 v1, 0x2f1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/dlna/DLNAManager;->notifyToActivity(I)V

    .line 796
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/DLNASettings$17;->this$0:Lcom/sec/android/app/dlna/ui/DLNASettings;

    invoke-virtual {v0}, Lcom/sec/android/app/dlna/ui/DLNASettings;->finish()V

    .line 797
    return-void
.end method
