.class public Lcom/sec/android/app/FileTransferServer/Ui/DownloadListAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "DownloadListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/FileTransferServer/Ui/DownloadListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ViewHolder"
.end annotation


# instance fields
.field fileCount:Landroid/widget/TextView;

.field pb:Landroid/widget/ProgressBar;

.field progressText:Landroid/widget/TextView;

.field progressTitle:Landroid/widget/TextView;

.field waitText:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 27
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
