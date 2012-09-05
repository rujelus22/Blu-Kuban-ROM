.class Lcom/sec/android/app/dlna/ui/AbstractDlnaActivity$9$1;
.super Ljava/lang/Object;
.source "AbstractDlnaActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/dlna/ui/AbstractDlnaActivity$9;->onCancel(Landroid/content/DialogInterface;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/android/app/dlna/ui/AbstractDlnaActivity$9;


# direct methods
.method constructor <init>(Lcom/sec/android/app/dlna/ui/AbstractDlnaActivity$9;)V
    .registers 2
    .parameter

    .prologue
    .line 392
    iput-object p1, p0, Lcom/sec/android/app/dlna/ui/AbstractDlnaActivity$9$1;->this$1:Lcom/sec/android/app/dlna/ui/AbstractDlnaActivity$9;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 394
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/dlna/DLNAManager;->selectPlayer(Lcom/samsung/api/DeviceItem;)Z

    .line 395
    return-void
.end method
