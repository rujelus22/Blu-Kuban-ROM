.class Lorg/apache/log4j/chainsaw/LoggingReceiver;
.super Ljava/lang/Thread;
.source "LoggingReceiver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/log4j/chainsaw/LoggingReceiver$Slurper;
    }
.end annotation


# static fields
.field private static final LOG:Lorg/apache/log4j/Logger;

.field static class$org$apache$log4j$chainsaw$LoggingReceiver:Ljava/lang/Class;


# instance fields
.field private mModel:Lorg/apache/log4j/chainsaw/MyTableModel;

.field private mSvrSock:Ljava/net/ServerSocket;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 35
    sget-object v0, Lorg/apache/log4j/chainsaw/LoggingReceiver;->class$org$apache$log4j$chainsaw$LoggingReceiver:Ljava/lang/Class;

    if-nez v0, :cond_13

    const-string v0, "org.apache.log4j.chainsaw.LoggingReceiver"

    invoke-static {v0}, Lorg/apache/log4j/chainsaw/LoggingReceiver;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/apache/log4j/chainsaw/LoggingReceiver;->class$org$apache$log4j$chainsaw$LoggingReceiver:Ljava/lang/Class;

    :goto_c
    invoke-static {v0}, Lorg/apache/log4j/Logger;->getLogger(Ljava/lang/Class;)Lorg/apache/log4j/Logger;

    move-result-object v0

    sput-object v0, Lorg/apache/log4j/chainsaw/LoggingReceiver;->LOG:Lorg/apache/log4j/Logger;

    return-void

    :cond_13
    sget-object v0, Lorg/apache/log4j/chainsaw/LoggingReceiver;->class$org$apache$log4j$chainsaw$LoggingReceiver:Ljava/lang/Class;

    goto :goto_c
.end method

.method constructor <init>(Lorg/apache/log4j/chainsaw/MyTableModel;I)V
    .registers 4
    .parameter "aModel"
    .parameter "aPort"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 97
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 98
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 99
    iput-object p1, p0, Lorg/apache/log4j/chainsaw/LoggingReceiver;->mModel:Lorg/apache/log4j/chainsaw/MyTableModel;

    .line 100
    new-instance v0, Ljava/net/ServerSocket;

    invoke-direct {v0, p2}, Ljava/net/ServerSocket;-><init>(I)V

    iput-object v0, p0, Lorg/apache/log4j/chainsaw/LoggingReceiver;->mSvrSock:Ljava/net/ServerSocket;

    .line 101
    return-void
.end method

.method static access$000()Lorg/apache/log4j/Logger;
    .registers 1

    .prologue
    .line 33
    sget-object v0, Lorg/apache/log4j/chainsaw/LoggingReceiver;->LOG:Lorg/apache/log4j/Logger;

    return-object v0
.end method

.method static access$100(Lorg/apache/log4j/chainsaw/LoggingReceiver;)Lorg/apache/log4j/chainsaw/MyTableModel;
    .registers 2
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lorg/apache/log4j/chainsaw/LoggingReceiver;->mModel:Lorg/apache/log4j/chainsaw/MyTableModel;

    return-object v0
.end method

.method static class$(Ljava/lang/String;)Ljava/lang/Class;
    .registers 4
    .parameter "x0"

    .prologue
    .line 33
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_3} :catch_5

    move-result-object v1

    return-object v1

    :catch_5
    move-exception v0

    .local v0, x1:Ljava/lang/ClassNotFoundException;
    new-instance v1, Ljava/lang/NoClassDefFoundError;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public run()V
    .registers 7

    .prologue
    .line 105
    sget-object v3, Lorg/apache/log4j/chainsaw/LoggingReceiver;->LOG:Lorg/apache/log4j/Logger;

    const-string v4, "Thread started"

    invoke-virtual {v3, v4}, Lorg/apache/log4j/Category;->info(Ljava/lang/Object;)V

    .line 108
    :goto_7
    :try_start_7
    sget-object v3, Lorg/apache/log4j/chainsaw/LoggingReceiver;->LOG:Lorg/apache/log4j/Logger;

    const-string v4, "Waiting for a connection"

    invoke-virtual {v3, v4}, Lorg/apache/log4j/Category;->debug(Ljava/lang/Object;)V

    .line 109
    iget-object v3, p0, Lorg/apache/log4j/chainsaw/LoggingReceiver;->mSvrSock:Ljava/net/ServerSocket;

    invoke-virtual {v3}, Ljava/net/ServerSocket;->accept()Ljava/net/Socket;

    move-result-object v0

    .line 110
    .local v0, client:Ljava/net/Socket;
    sget-object v3, Lorg/apache/log4j/chainsaw/LoggingReceiver;->LOG:Lorg/apache/log4j/Logger;

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "Got a connection from "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v0}, Ljava/net/Socket;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v5

    invoke-virtual {v5}, Ljava/net/InetAddress;->getHostName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/apache/log4j/Category;->debug(Ljava/lang/Object;)V

    .line 112
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lorg/apache/log4j/chainsaw/LoggingReceiver$Slurper;

    invoke-direct {v3, p0, v0}, Lorg/apache/log4j/chainsaw/LoggingReceiver$Slurper;-><init>(Lorg/apache/log4j/chainsaw/LoggingReceiver;Ljava/net/Socket;)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 113
    .local v2, t:Ljava/lang/Thread;
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 114
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V
    :try_end_45
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_45} :catch_46

    goto :goto_7

    .line 117
    .end local v0           #client:Ljava/net/Socket;
    .end local v2           #t:Ljava/lang/Thread;
    :catch_46
    move-exception v1

    .local v1, e:Ljava/io/IOException;
    sget-object v3, Lorg/apache/log4j/chainsaw/LoggingReceiver;->LOG:Lorg/apache/log4j/Logger;

    const-string v4, "Error in accepting connections, stopping."

    invoke-virtual {v3, v4, v1}, Lorg/apache/log4j/Category;->error(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 119
    return-void
.end method
