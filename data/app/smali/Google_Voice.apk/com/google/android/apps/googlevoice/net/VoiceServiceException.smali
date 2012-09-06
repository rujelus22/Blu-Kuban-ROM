.class public Lcom/google/android/apps/googlevoice/net/VoiceServiceException;
.super Ljava/io/IOException;
.source "VoiceServiceException.java"


# static fields
.field private static final serialVersionUID:J = -0x1faf93c35b301e6L


# instance fields
.field private final status:Lcom/google/grandcentral/api2/Api2$ApiStatus$Status;


# direct methods
.method public constructor <init>(Lcom/google/grandcentral/api2/Api2$ApiStatus$Status;)V
    .registers 3
    .parameter "status"

    .prologue
    .line 21
    const/4 v0, 0x0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0, p1}, Lcom/google/android/apps/googlevoice/net/VoiceServiceException;-><init>(Ljava/lang/String;Lcom/google/grandcentral/api2/Api2$ApiStatus$Status;)V

    .line 22
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/google/grandcentral/api2/Api2$ApiStatus$Status;)V
    .registers 4
    .parameter "message"
    .parameter "status"

    .prologue
    .line 25
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 26
    const-string v0, "status"

    invoke-static {p2, v0}, Lcom/google/android/apps/common/base/Preconditions;->checkArgumentIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    iput-object p2, p0, Lcom/google/android/apps/googlevoice/net/VoiceServiceException;->status:Lcom/google/grandcentral/api2/Api2$ApiStatus$Status;

    .line 28
    return-void
.end method


# virtual methods
.method public getMessage()Ljava/lang/String;
    .registers 4

    .prologue
    .line 32
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 33
    .local v0, buffer:Ljava/lang/StringBuffer;
    invoke-super {p0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    .line 34
    .local v1, message:Ljava/lang/String;
    if-eqz v1, :cond_2b

    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 39
    :goto_e
    const/16 v2, 0x20

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 40
    const/16 v2, 0x5b

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 41
    iget-object v2, p0, Lcom/google/android/apps/googlevoice/net/VoiceServiceException;->status:Lcom/google/grandcentral/api2/Api2$ApiStatus$Status;

    invoke-virtual {v2}, Lcom/google/grandcentral/api2/Api2$ApiStatus$Status;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 42
    const/16 v2, 0x5d

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 43
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 37
    :cond_2b
    const-string v2, "Voice service failed"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_e
.end method

.method public getStatus()Lcom/google/grandcentral/api2/Api2$ApiStatus$Status;
    .registers 2

    .prologue
    .line 47
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/net/VoiceServiceException;->status:Lcom/google/grandcentral/api2/Api2$ApiStatus$Status;

    return-object v0
.end method
