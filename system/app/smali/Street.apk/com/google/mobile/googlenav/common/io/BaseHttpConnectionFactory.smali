.class public abstract Lcom/google/mobile/googlenav/common/io/BaseHttpConnectionFactory;
.super Lcom/google/mobile/googlenav/common/io/BaseConnectionFactory;

# interfaces
.implements Lcom/google/mobile/googlenav/common/io/HttpConnectionFactory;


# direct methods
.method protected constructor <init>()V
    .registers 2

    const-string v0, "HttpWorks"

    invoke-direct {p0, v0}, Lcom/google/mobile/googlenav/common/io/BaseConnectionFactory;-><init>(Ljava/lang/String;)V

    return-void
.end method
