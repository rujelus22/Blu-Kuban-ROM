.class public Lcom/wssnps/smlNpsService$NpsServiceTask;
.super Ljava/lang/Object;
.source "smlNpsService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wssnps/smlNpsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NpsServiceTask"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 76
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .prologue
    const/4 v4, 0x3

    .line 79
    const/4 v1, 0x0

    sput-object v1, Lcom/wssnps/smlNpsService;->dsServerSocket:Ljava/net/ServerSocket;

    .line 82
    const/4 v1, 0x2

    :try_start_5
    const-string v2, "NpsServiceTask Start"

    invoke-static {v1, v2}, Lcom/wssnps/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 83
    new-instance v1, Ljava/net/ServerSocket;

    const/16 v2, 0x454

    const/16 v3, 0x32

    invoke-direct {v1, v2, v3}, Ljava/net/ServerSocket;-><init>(II)V

    sput-object v1, Lcom/wssnps/smlNpsService;->dsServerSocket:Ljava/net/ServerSocket;
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_15} :catch_44

    .line 89
    :goto_15
    :try_start_15
    sget-object v1, Lcom/wssnps/smlNpsService;->dsServerSocket:Ljava/net/ServerSocket;

    invoke-virtual {v1}, Ljava/net/ServerSocket;->accept()Ljava/net/Socket;

    move-result-object v1

    invoke-static {v1}, Lcom/wssnps/smlNpsService;->access$002(Ljava/net/Socket;)Ljava/net/Socket;

    .line 90
    invoke-static {}, Lcom/wssnps/smlNpsService;->access$000()Ljava/net/Socket;

    move-result-object v1

    if-eqz v1, :cond_3f

    .line 92
    const/4 v1, 0x2

    const-string v2, "socket connect"

    invoke-static {v1, v2}, Lcom/wssnps/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 93
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/wssnps/smlNpsHandler;

    invoke-static {}, Lcom/wssnps/smlNpsService;->access$000()Ljava/net/Socket;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/wssnps/smlNpsHandler;-><init>(Ljava/net/Socket;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    sput-object v1, Lcom/wssnps/smlNpsService;->m_thread1:Ljava/lang/Thread;

    .line 94
    sget-object v1, Lcom/wssnps/smlNpsService;->m_thread1:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V
    :try_end_3f
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_3f} :catch_49
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_3f} :catch_65

    .line 102
    :cond_3f
    :goto_3f
    const/4 v1, 0x1

    invoke-static {v1}, Lcom/wssnps/smlModelDefine;->nps_wakeLock(I)V

    .line 103
    return-void

    .line 84
    :catch_44
    move-exception v0

    .line 85
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_15

    .line 96
    .end local v0           #e:Ljava/io/IOException;
    :catch_49
    move-exception v0

    .line 97
    .restart local v0       #e:Ljava/io/IOException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IOException"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/wssnps/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    goto :goto_3f

    .line 98
    .end local v0           #e:Ljava/io/IOException;
    :catch_65
    move-exception v0

    .line 99
    .local v0, e:Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/wssnps/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    goto :goto_3f
.end method
