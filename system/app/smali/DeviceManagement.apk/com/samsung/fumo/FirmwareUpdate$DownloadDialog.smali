.class Lcom/samsung/fumo/FirmwareUpdate$DownloadDialog;
.super Landroid/app/ProgressDialog;
.source "FirmwareUpdate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/fumo/FirmwareUpdate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DownloadDialog"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/fumo/FirmwareUpdate;


# direct methods
.method public constructor <init>(Lcom/samsung/fumo/FirmwareUpdate;Landroid/content/Context;)V
    .registers 3
    .parameter
    .parameter "context"

    .prologue
    .line 975
    iput-object p1, p0, Lcom/samsung/fumo/FirmwareUpdate$DownloadDialog;->this$0:Lcom/samsung/fumo/FirmwareUpdate;

    .line 976
    invoke-direct {p0, p2}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 977
    return-void
.end method
