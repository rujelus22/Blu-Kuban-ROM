.class public abstract Lcom/googlex/common/io/BaseHttpConnectionFactory;
.super Lcom/googlex/common/io/BaseConnectionFactory;

# interfaces
.implements Lcom/googlex/common/io/HttpConnectionFactory;


# static fields
.field protected static final NETWORK_AVAILABLE_PREF_NAME:Ljava/lang/String; = "HttpWorks"


# direct methods
.method protected constructor <init>()V
    .registers 2

    const-string v0, "HttpWorks"

    invoke-direct {p0, v0}, Lcom/googlex/common/io/BaseConnectionFactory;-><init>(Ljava/lang/String;)V

    return-void
.end method
