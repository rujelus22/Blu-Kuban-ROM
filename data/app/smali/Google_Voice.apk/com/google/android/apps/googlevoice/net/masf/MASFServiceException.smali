.class public Lcom/google/android/apps/googlevoice/net/masf/MASFServiceException;
.super Ljava/io/IOException;
.source "MASFServiceException.java"


# static fields
.field private static final serialVersionUID:J = 0x2975e64fcc957b3L


# instance fields
.field private final statusCode:I


# direct methods
.method public constructor <init>(I)V
    .registers 3
    .parameter "statusCode"

    .prologue
    .line 17
    const/4 v0, 0x0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0, p1}, Lcom/google/android/apps/googlevoice/net/masf/MASFServiceException;-><init>(Ljava/lang/String;I)V

    .line 18
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .parameter "message"
    .parameter "statusCode"

    .prologue
    .line 21
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 22
    iput p2, p0, Lcom/google/android/apps/googlevoice/net/masf/MASFServiceException;->statusCode:I

    .line 23
    return-void
.end method


# virtual methods
.method public getMessage()Ljava/lang/String;
    .registers 4

    .prologue
    .line 31
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 32
    .local v0, buffer:Ljava/lang/StringBuffer;
    invoke-super {p0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    .line 33
    .local v1, message:Ljava/lang/String;
    if-eqz v1, :cond_29

    .line 34
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 38
    :goto_e
    const/16 v2, 0x20

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 39
    const/16 v2, 0x5b

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 40
    invoke-virtual {p0}, Lcom/google/android/apps/googlevoice/net/masf/MASFServiceException;->getStatusCode()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 41
    const/16 v2, 0x5d

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 42
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 36
    :cond_29
    const-string v2, "MASF service failed"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_e
.end method

.method public getStatusCode()I
    .registers 2

    .prologue
    .line 26
    iget v0, p0, Lcom/google/android/apps/googlevoice/net/masf/MASFServiceException;->statusCode:I

    return v0
.end method
