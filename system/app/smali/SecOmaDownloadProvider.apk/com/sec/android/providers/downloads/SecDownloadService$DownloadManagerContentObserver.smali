.class Lcom/sec/android/providers/downloads/SecDownloadService$DownloadManagerContentObserver;
.super Landroid/database/ContentObserver;
.source "SecDownloadService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/providers/downloads/SecDownloadService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DownloadManagerContentObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/providers/downloads/SecDownloadService;


# direct methods
.method public constructor <init>(Lcom/sec/android/providers/downloads/SecDownloadService;)V
    .registers 3
    .parameter

    .prologue
    .line 147
    iput-object p1, p0, Lcom/sec/android/providers/downloads/SecDownloadService$DownloadManagerContentObserver;->this$0:Lcom/sec/android/providers/downloads/SecDownloadService;

    .line 148
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 149
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 3
    .parameter "selfChange"

    .prologue
    .line 160
    iget-object v0, p0, Lcom/sec/android/providers/downloads/SecDownloadService$DownloadManagerContentObserver;->this$0:Lcom/sec/android/providers/downloads/SecDownloadService;

    #calls: Lcom/sec/android/providers/downloads/SecDownloadService;->updateFromProvider()V
    invoke-static {v0}, Lcom/sec/android/providers/downloads/SecDownloadService;->access$000(Lcom/sec/android/providers/downloads/SecDownloadService;)V

    .line 161
    return-void
.end method
