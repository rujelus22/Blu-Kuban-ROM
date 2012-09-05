.class Lcom/sec/android/app/dlna/DLNAAddinManager$2;
.super Ljava/lang/Object;
.source "DLNAAddinManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/dlna/DLNAAddinManager;->requestPlayorPause()V
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
    .line 366
    iput-object p1, p0, Lcom/sec/android/app/dlna/DLNAAddinManager$2;->this$0:Lcom/sec/android/app/dlna/DLNAAddinManager;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 369
    :try_start_0
    iget-object v2, p0, Lcom/sec/android/app/dlna/DLNAAddinManager$2;->this$0:Lcom/sec/android/app/dlna/DLNAAddinManager;

    #calls: Lcom/sec/android/app/dlna/DLNAAddinManager;->getTransportState()Ljava/lang/String;
    invoke-static {v2}, Lcom/sec/android/app/dlna/DLNAAddinManager;->access$100(Lcom/sec/android/app/dlna/DLNAAddinManager;)Ljava/lang/String;

    move-result-object v1

    .line 371
    .local v1, state:Ljava/lang/String;
    iget-object v2, p0, Lcom/sec/android/app/dlna/DLNAAddinManager$2;->this$0:Lcom/sec/android/app/dlna/DLNAAddinManager;

    #calls: Lcom/sec/android/app/dlna/DLNAAddinManager;->parsePlayerState(Ljava/lang/String;)I
    invoke-static {v2, v1}, Lcom/sec/android/app/dlna/DLNAAddinManager;->access$200(Lcom/sec/android/app/dlna/DLNAAddinManager;Ljava/lang/String;)I

    move-result v2

    packed-switch v2, :pswitch_data_34

    .line 392
    .end local v1           #state:Ljava/lang/String;
    :goto_f
    return-void

    .line 373
    .restart local v1       #state:Ljava/lang/String;
    :pswitch_10
    iget-object v2, p0, Lcom/sec/android/app/dlna/DLNAAddinManager$2;->this$0:Lcom/sec/android/app/dlna/DLNAAddinManager;

    #calls: Lcom/sec/android/app/dlna/DLNAAddinManager;->resumeItem()V
    invoke-static {v2}, Lcom/sec/android/app/dlna/DLNAAddinManager;->access$300(Lcom/sec/android/app/dlna/DLNAAddinManager;)V
    :try_end_15
    .catch Lcom/samsung/api/DMCAPIException; {:try_start_0 .. :try_end_15} :catch_16

    goto :goto_f

    .line 387
    .end local v1           #state:Ljava/lang/String;
    :catch_16
    move-exception v0

    .line 388
    .local v0, e:Lcom/samsung/api/DMCAPIException;
    const-string v2, "DLNA_Addin"

    const-string v3, "DLNAAddinManager.requestPlayorPause()"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 389
    invoke-virtual {v0}, Lcom/samsung/api/DMCAPIException;->printStackTrace()V

    .line 390
    iget-object v2, p0, Lcom/sec/android/app/dlna/DLNAAddinManager$2;->this$0:Lcom/sec/android/app/dlna/DLNAAddinManager;

    #calls: Lcom/sec/android/app/dlna/DLNAAddinManager;->handleDMCAPIException(Lcom/samsung/api/DMCAPIException;)V
    invoke-static {v2, v0}, Lcom/sec/android/app/dlna/DLNAAddinManager;->access$600(Lcom/sec/android/app/dlna/DLNAAddinManager;Lcom/samsung/api/DMCAPIException;)V

    goto :goto_f

    .line 377
    .end local v0           #e:Lcom/samsung/api/DMCAPIException;
    .restart local v1       #state:Ljava/lang/String;
    :pswitch_27
    :try_start_27
    iget-object v2, p0, Lcom/sec/android/app/dlna/DLNAAddinManager$2;->this$0:Lcom/sec/android/app/dlna/DLNAAddinManager;

    #calls: Lcom/sec/android/app/dlna/DLNAAddinManager;->pauseItem()V
    invoke-static {v2}, Lcom/sec/android/app/dlna/DLNAAddinManager;->access$400(Lcom/sec/android/app/dlna/DLNAAddinManager;)V

    goto :goto_f

    .line 381
    :pswitch_2d
    iget-object v2, p0, Lcom/sec/android/app/dlna/DLNAAddinManager$2;->this$0:Lcom/sec/android/app/dlna/DLNAAddinManager;

    #calls: Lcom/sec/android/app/dlna/DLNAAddinManager;->playItem()V
    invoke-static {v2}, Lcom/sec/android/app/dlna/DLNAAddinManager;->access$500(Lcom/sec/android/app/dlna/DLNAAddinManager;)V
    :try_end_32
    .catch Lcom/samsung/api/DMCAPIException; {:try_start_27 .. :try_end_32} :catch_16

    goto :goto_f

    .line 371
    nop

    :pswitch_data_34
    .packed-switch 0xcd
        :pswitch_2d
        :pswitch_10
        :pswitch_27
    .end packed-switch
.end method
