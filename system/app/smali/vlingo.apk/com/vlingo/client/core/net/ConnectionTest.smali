.class public abstract Lcom/vlingo/client/core/net/ConnectionTest;
.super Ljava/lang/Object;
.source "ConnectionTest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vlingo/client/core/net/ConnectionTest$SoftwareMetaImpl;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    return-void
.end method


# virtual methods
.method public destroy()V
    .registers 1

    .prologue
    .line 19
    return-void
.end method

.method public abstract executeTest(Lcom/vlingo/client/core/net/ConnectionProvider;)Lcom/vlingo/client/core/vlservice/response/VLServiceResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected getSoftwareMeta()Lcom/vlingo/client/core/recognizer/SoftwareMeta;
    .registers 2

    .prologue
    .line 26
    new-instance v0, Lcom/vlingo/client/core/net/ConnectionTest$SoftwareMetaImpl;

    invoke-direct {v0, p0}, Lcom/vlingo/client/core/net/ConnectionTest$SoftwareMetaImpl;-><init>(Lcom/vlingo/client/core/net/ConnectionTest;)V

    return-object v0
.end method

.method public validateResponse(Lcom/vlingo/client/core/vlservice/response/VLServiceResponse;)Z
    .registers 3
    .parameter "response"

    .prologue
    .line 22
    if-eqz p1, :cond_4

    const/4 v0, 0x1

    :goto_3
    return v0

    :cond_4
    const/4 v0, 0x0

    goto :goto_3
.end method
