.class public interface abstract Lcom/googlex/masf/services/resume/ResumableRequest$Listener;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/googlex/masf/services/resume/ResumableRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Listener"
.end annotation


# virtual methods
.method public abstract requestCancelled(Lcom/googlex/masf/services/resume/ResumableRequest;)V
.end method

.method public abstract requestCompleted(Lcom/googlex/masf/services/resume/ResumableRequest;Lcom/googlex/masf/protocol/Response;)V
.end method

.method public abstract requestFailed(Lcom/googlex/masf/services/resume/ResumableRequest;Ljava/lang/Exception;)V
.end method

.method public abstract requestProgress(Lcom/googlex/masf/services/resume/ResumableRequest;JJ)V
.end method
