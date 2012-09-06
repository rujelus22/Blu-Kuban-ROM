.class public Lcom/google/android/apps/plus/api/ServerException;
.super Lcom/google/android/apps/plus/api/ProtocolException;
.source "ServerException.java"


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final mErrorCode:Lcom/google/wireless/tacotruck/proto/Network$Response$ErrorCode;


# direct methods
.method public constructor <init>(Lcom/google/wireless/tacotruck/proto/Network$Response$ErrorCode;Ljava/lang/String;)V
    .registers 3
    .parameter "errorCode"
    .parameter "s"

    .prologue
    .line 27
    invoke-direct {p0, p2}, Lcom/google/android/apps/plus/api/ProtocolException;-><init>(Ljava/lang/String;)V

    .line 28
    iput-object p1, p0, Lcom/google/android/apps/plus/api/ServerException;->mErrorCode:Lcom/google/wireless/tacotruck/proto/Network$Response$ErrorCode;

    .line 29
    return-void
.end method


# virtual methods
.method public getErrorCode()Lcom/google/wireless/tacotruck/proto/Network$Response$ErrorCode;
    .registers 2

    .prologue
    .line 35
    iget-object v0, p0, Lcom/google/android/apps/plus/api/ServerException;->mErrorCode:Lcom/google/wireless/tacotruck/proto/Network$Response$ErrorCode;

    return-object v0
.end method
