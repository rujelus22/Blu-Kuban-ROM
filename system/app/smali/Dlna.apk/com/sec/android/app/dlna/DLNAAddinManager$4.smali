.class Lcom/sec/android/app/dlna/DLNAAddinManager$4;
.super Ljava/lang/Object;
.source "DLNAAddinManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/dlna/DLNAAddinManager;->requestVolumeDown()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/dlna/DLNAAddinManager;


# direct methods
.method constructor <init>(Lcom/sec/android/app/dlna/DLNAAddinManager;)V
    .registers 2
    .parameter

    .prologue
    .line 451
    iput-object p1, p0, Lcom/sec/android/app/dlna/DLNAAddinManager$4;->this$0:Lcom/sec/android/app/dlna/DLNAAddinManager;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 454
    :try_start_0
    iget-object v2, p0, Lcom/sec/android/app/dlna/DLNAAddinManager$4;->this$0:Lcom/sec/android/app/dlna/DLNAAddinManager;

    #calls: Lcom/sec/android/app/dlna/DLNAAddinManager;->getVolume()I
    invoke-static {v2}, Lcom/sec/android/app/dlna/DLNAAddinManager;->access$700(Lcom/sec/android/app/dlna/DLNAAddinManager;)I

    move-result v1

    .line 455
    .local v1, vol:I
    iget-object v2, p0, Lcom/sec/android/app/dlna/DLNAAddinManager$4;->this$0:Lcom/sec/android/app/dlna/DLNAAddinManager;

    add-int/lit8 v3, v1, -0x1

    #calls: Lcom/sec/android/app/dlna/DLNAAddinManager;->setVolume(I)V
    invoke-static {v2, v3}, Lcom/sec/android/app/dlna/DLNAAddinManager;->access$800(Lcom/sec/android/app/dlna/DLNAAddinManager;I)V
    :try_end_d
    .catch Lcom/samsung/api/DMCAPIException; {:try_start_0 .. :try_end_d} :catch_e

    .line 461
    .end local v1           #vol:I
    :goto_d
    return-void

    .line 456
    :catch_e
    move-exception v0

    .line 457
    .local v0, e:Lcom/samsung/api/DMCAPIException;
    const-string v2, "DLNA_Addin"

    const-string v3, "DLNAAddinManager.requestVolumeDown()"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 458
    invoke-virtual {v0}, Lcom/samsung/api/DMCAPIException;->printStackTrace()V

    .line 459
    iget-object v2, p0, Lcom/sec/android/app/dlna/DLNAAddinManager$4;->this$0:Lcom/sec/android/app/dlna/DLNAAddinManager;

    #calls: Lcom/sec/android/app/dlna/DLNAAddinManager;->handleDMCAPIException(Lcom/samsung/api/DMCAPIException;)V
    invoke-static {v2, v0}, Lcom/sec/android/app/dlna/DLNAAddinManager;->access$600(Lcom/sec/android/app/dlna/DLNAAddinManager;Lcom/samsung/api/DMCAPIException;)V

    goto :goto_d
.end method
