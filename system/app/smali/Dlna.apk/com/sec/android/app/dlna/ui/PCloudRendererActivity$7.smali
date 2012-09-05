.class Lcom/sec/android/app/dlna/ui/PCloudRendererActivity$7;
.super Ljava/lang/Object;
.source "PCloudRendererActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/dlna/ui/PCloudRendererActivity;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/dlna/ui/PCloudRendererActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/app/dlna/ui/PCloudRendererActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 336
    iput-object p1, p0, Lcom/sec/android/app/dlna/ui/PCloudRendererActivity$7;->this$0:Lcom/sec/android/app/dlna/ui/PCloudRendererActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .registers 3
    .parameter "dialog"

    .prologue
    .line 338
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/PCloudRendererActivity$7;->this$0:Lcom/sec/android/app/dlna/ui/PCloudRendererActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/dlna/ui/PCloudRendererActivity;->finish()V

    .line 339
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/dlna/DLNAManager;->terminate()V

    .line 340
    return-void
.end method
