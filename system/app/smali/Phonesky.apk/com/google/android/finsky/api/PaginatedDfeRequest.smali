.class public Lcom/google/android/finsky/api/PaginatedDfeRequest;
.super Lcom/google/android/finsky/api/DfeRequest;
.source "PaginatedDfeRequest.java"

# interfaces
.implements Lcom/android/volley/Response$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/finsky/api/PaginatedDfeRequest$PaginatedListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/google/protobuf/micro/MessageMicro;",
        ">",
        "Lcom/google/android/finsky/api/DfeRequest",
        "<TT;>;",
        "Lcom/android/volley/Response$Listener",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final mListener:Lcom/google/android/finsky/api/PaginatedDfeRequest$PaginatedListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/finsky/api/PaginatedDfeRequest$PaginatedListener",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/google/android/finsky/api/DfeApiContext;Ljava/lang/Class;Lcom/google/android/finsky/api/PaginatedDfeRequest$PaginatedListener;Lcom/android/volley/Response$ErrorListener;)V
    .registers 12
    .parameter "url"
    .parameter "apiContext"
    .parameter
    .parameter
    .parameter "errorListener"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/android/finsky/api/DfeApiContext;",
            "Ljava/lang/Class",
            "<TT;>;",
            "Lcom/google/android/finsky/api/PaginatedDfeRequest$PaginatedListener",
            "<TT;>;",
            "Lcom/android/volley/Response$ErrorListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 45
    .local p0, this:Lcom/google/android/finsky/api/PaginatedDfeRequest;,"Lcom/google/android/finsky/api/PaginatedDfeRequest<TT;>;"
    .local p3, responseClass:Ljava/lang/Class;,"Ljava/lang/Class<TT;>;"
    .local p4, listener:Lcom/google/android/finsky/api/PaginatedDfeRequest$PaginatedListener;,"Lcom/google/android/finsky/api/PaginatedDfeRequest$PaginatedListener<TT;>;"
    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/google/android/finsky/api/DfeRequest;-><init>(Ljava/lang/String;Lcom/google/android/finsky/api/DfeApiContext;Ljava/lang/Class;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    .line 46
    iput-object p4, p0, Lcom/google/android/finsky/api/PaginatedDfeRequest;->mListener:Lcom/google/android/finsky/api/PaginatedDfeRequest$PaginatedListener;

    .line 47
    invoke-virtual {p0, p0}, Lcom/google/android/finsky/api/PaginatedDfeRequest;->setListener(Lcom/android/volley/Response$Listener;)V

    .line 48
    return-void
.end method


# virtual methods
.method public onResponse(Lcom/google/protobuf/micro/MessageMicro;)V
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 52
    .local p0, this:Lcom/google/android/finsky/api/PaginatedDfeRequest;,"Lcom/google/android/finsky/api/PaginatedDfeRequest<TT;>;"
    .local p1, response:Lcom/google/protobuf/micro/MessageMicro;,"TT;"
    iget-object v0, p0, Lcom/google/android/finsky/api/PaginatedDfeRequest;->mListener:Lcom/google/android/finsky/api/PaginatedDfeRequest$PaginatedListener;

    invoke-interface {v0, p1}, Lcom/google/android/finsky/api/PaginatedDfeRequest$PaginatedListener;->onResponse(Ljava/lang/Object;)V

    .line 53
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 17
    .local p0, this:Lcom/google/android/finsky/api/PaginatedDfeRequest;,"Lcom/google/android/finsky/api/PaginatedDfeRequest<TT;>;"
    check-cast p1, Lcom/google/protobuf/micro/MessageMicro;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/api/PaginatedDfeRequest;->onResponse(Lcom/google/protobuf/micro/MessageMicro;)V

    return-void
.end method
