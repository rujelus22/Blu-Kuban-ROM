.class public Lcom/sec/print/mobileprint/PrintingStatusMonitor;
.super Ljava/lang/Object;
.source "PrintingStatusMonitor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/print/mobileprint/PrintingStatusMonitor$EnumPrintingStatusType;
    }
.end annotation


# static fields
.field public static final PRINTING_ERRORTYPE_CONTENTS_NOT_AVAILABLE:I = 0x7

.field public static final PRINTING_ERRORTYPE_NOT_SUPPORTED_CONTENTS:I = 0x3

.field public static final PRINTING_ERRORTYPE_NOT_SUPPORTED_PRINTER:I = 0x6

.field public static final PRINTING_ERRORTYPE_OPTION:I = 0x2

.field public static final PRINTING_ERRORTYPE_OUTOFMEMORY:I = 0x1

.field public static final PRINTING_ERRORTYPE_OUTPUTSTREAM_ERROR:I = 0x4

.field public static final PRINTING_ERRORTYPE_STILL_RUNNING:I = 0x5


# instance fields
.field mCallbacks:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList",
            "<",
            "Lcom/sec/print/mobileprint/IPrintStatusCallback;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/os/RemoteCallbackList;)V
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/RemoteCallbackList",
            "<",
            "Lcom/sec/print/mobileprint/IPrintStatusCallback;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 52
    .local p1, mCallbacks:Landroid/os/RemoteCallbackList;,"Landroid/os/RemoteCallbackList<Lcom/sec/print/mobileprint/IPrintStatusCallback;>;"
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-object p1, p0, Lcom/sec/print/mobileprint/PrintingStatusMonitor;->mCallbacks:Landroid/os/RemoteCallbackList;

    .line 54
    return-void
.end method


# virtual methods
.method public Notify(II)V
    .registers 7
    .parameter "typeID"
    .parameter "value"

    .prologue
    .line 100
    iget-object v2, p0, Lcom/sec/print/mobileprint/PrintingStatusMonitor;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v1

    .line 101
    .local v1, i:I
    :goto_6
    if-lez v1, :cond_47

    .line 103
    add-int/lit8 v1, v1, -0x1

    .line 105
    :try_start_a
    iget-object v2, p0, Lcom/sec/print/mobileprint/PrintingStatusMonitor;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Lcom/sec/print/mobileprint/IPrintStatusCallback;

    invoke-interface {v2, p1, p2}, Lcom/sec/print/mobileprint/IPrintStatusCallback;->statusChanged(II)V

    .line 106
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Notify ID:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", Value:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/sec/print/mobileprint/MPLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_35
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_35} :catch_36

    goto :goto_6

    .line 107
    :catch_36
    move-exception v0

    .line 109
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/print/mobileprint/MPLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    .line 112
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_47
    iget-object v2, p0, Lcom/sec/print/mobileprint/PrintingStatusMonitor;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 113
    return-void
.end method

.method public Notify(Lcom/sec/print/mobileprint/PrintingStatusMonitor$EnumPrintingStatusType;I)V
    .registers 4
    .parameter "eTypeID"
    .parameter "value"

    .prologue
    .line 123
    invoke-virtual {p1}, Lcom/sec/print/mobileprint/PrintingStatusMonitor$EnumPrintingStatusType;->getValue()I

    move-result v0

    invoke-virtual {p0, v0, p2}, Lcom/sec/print/mobileprint/PrintingStatusMonitor;->Notify(II)V

    .line 124
    return-void
.end method
