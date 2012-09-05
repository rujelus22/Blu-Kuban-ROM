.class Lcom/sec/android/app/dlna/ui/MediaExplorerList$7;
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
    .line 1383
    iput-object p1, p0, Lcom/sec/android/app/dlna/ui/MediaExplorerList$7;->this$0:Lcom/sec/android/app/dlna/ui/MediaExplorerList;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 3
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 1385
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 1386
    return-void
.end method
