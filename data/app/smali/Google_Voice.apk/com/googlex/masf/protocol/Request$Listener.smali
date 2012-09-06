.class public interface abstract Lcom/googlex/masf/protocol/Request$Listener;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/googlex/masf/protocol/Request;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Listener"
.end annotation


# virtual methods
.method public abstract requestCompleted(Lcom/googlex/masf/protocol/Request;Lcom/googlex/masf/protocol/Response;)V
.end method

.method public abstract requestFailed(Lcom/googlex/masf/protocol/Request;Ljava/lang/Exception;)V
.end method
