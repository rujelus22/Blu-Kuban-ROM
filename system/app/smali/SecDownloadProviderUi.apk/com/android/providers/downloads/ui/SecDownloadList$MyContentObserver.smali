.class Lcom/android/providers/downloads/ui/SecDownloadList$MyContentObserver;
.super Landroid/database/ContentObserver;
.source "SecDownloadList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/downloads/ui/SecDownloadList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyContentObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/providers/downloads/ui/SecDownloadList;


# direct methods
.method public constructor <init>(Lcom/android/providers/downloads/ui/SecDownloadList;)V
    .registers 3
    .parameter

    .prologue
    .line 169
    iput-object p1, p0, Lcom/android/providers/downloads/ui/SecDownloadList$MyContentObserver;->this$0:Lcom/android/providers/downloads/ui/SecDownloadList;

    .line 170
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 171
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 3
    .parameter "selfChange"

    .prologue
    .line 175
    iget-object v0, p0, Lcom/android/providers/downloads/ui/SecDownloadList$MyContentObserver;->this$0:Lcom/android/providers/downloads/ui/SecDownloadList;

    invoke-virtual {v0}, Lcom/android/providers/downloads/ui/SecDownloadList;->handleDownloadsChanged()V

    .line 176
    return-void
.end method
