.class Lcom/sec/android/app/dlna/ui/MediaExplorerList$9;
.super Ljava/lang/Object;
.source "MediaExplorerList.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/dlna/ui/MediaExplorerList;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/dlna/ui/MediaExplorerList;


# direct methods
.method constructor <init>(Lcom/sec/android/app/dlna/ui/MediaExplorerList;)V
    .registers 2
    .parameter

    .prologue
    .line 1373
    iput-object p1, p0, Lcom/sec/android/app/dlna/ui/MediaExplorerList$9;->this$0:Lcom/sec/android/app/dlna/ui/MediaExplorerList;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 1375
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/MediaExplorerList$9;->this$0:Lcom/sec/android/app/dlna/ui/MediaExplorerList;

    #calls: Lcom/sec/android/app/dlna/ui/MediaExplorerList;->setSelectedDMS_Upload(I)V
    invoke-static {v0, p2}, Lcom/sec/android/app/dlna/ui/MediaExplorerList;->access$2800(Lcom/sec/android/app/dlna/ui/MediaExplorerList;I)V

    .line 1376
    return-void
.end method
