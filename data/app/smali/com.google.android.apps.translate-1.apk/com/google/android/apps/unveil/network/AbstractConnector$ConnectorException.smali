.class public Lcom/google/android/apps/unveil/network/AbstractConnector$ConnectorException;
.super Ljava/lang/Exception;
.source "AbstractConnector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/unveil/network/AbstractConnector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ConnectorException"
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/Exception;)V
    .registers 2
    .parameter "cause"

    .prologue
    .line 72
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    .line 73
    return-void
.end method
