.class public abstract Lcom/x/google/common/io/BaseTcpConnectionFactory;
.super Lcom/x/google/common/io/BaseConnectionFactory;

# interfaces
.implements Lcom/x/google/common/io/TcpConnectionFactory;


# static fields
.field protected static final NETWORK_AVAILABLE_PREF_NAME:Ljava/lang/String; = "TcpWorks"


# direct methods
.method protected constructor <init>()V
    .registers 2

    const-string v0, "TcpWorks"

    invoke-direct {p0, v0}, Lcom/x/google/common/io/BaseConnectionFactory;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public isAvailable()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public notifyUnreliable()V
    .registers 1

    return-void
.end method
