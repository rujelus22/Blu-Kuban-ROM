.class public Lcom/google/android/apps/googlevoice/net/masf/MASFUnstructuredLogRequest;
.super Lcom/googlex/common/async/AbstractRequest;
.source "MASFUnstructuredLogRequest.java"

# interfaces
.implements Lcom/google/android/apps/googlevoice/net/UnstructuredLogRequest;


# static fields
.field private static final SOURCE:Ljava/lang/String; = "GoogleVoice"


# instance fields
.field private data:[B


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/googlex/common/async/AbstractRequest;-><init>()V

    return-void
.end method


# virtual methods
.method public setData([B)Lcom/google/android/apps/googlevoice/net/UnstructuredLogRequest;
    .registers 3
    .parameter "newData"

    .prologue
    .line 23
    const-string v0, "newData"

    invoke-static {p1, v0}, Lcom/google/android/apps/common/base/Preconditions;->checkArgumentIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    iput-object p1, p0, Lcom/google/android/apps/googlevoice/net/masf/MASFUnstructuredLogRequest;->data:[B

    .line 25
    return-object p0
.end method

.method public submit(Lcom/googlex/common/task/AbstractTask;)V
    .registers 6
    .parameter "task"

    .prologue
    .line 30
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/net/masf/MASFUnstructuredLogRequest;->data:[B

    if-eqz v0, :cond_f

    .line 31
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-string v2, "GoogleVoice"

    iget-object v3, p0, Lcom/google/android/apps/googlevoice/net/masf/MASFUnstructuredLogRequest;->data:[B

    invoke-static {v0, v1, v2, v3}, Lcom/googlex/masf/services/UnstructuredLogService;->log(JLjava/lang/String;[B)V

    .line 33
    :cond_f
    return-void
.end method
