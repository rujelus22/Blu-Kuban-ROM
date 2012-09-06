.class final Lorg/simpleframework/xml/stream/ProviderFactory;
.super Ljava/lang/Object;
.source "ProviderFactory.java"


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lorg/simpleframework/xml/stream/Provider;
    .registers 1

    .prologue
    .line 48
    :try_start_0
    new-instance v0, Lorg/simpleframework/xml/stream/StreamProvider;

    invoke-direct {v0}, Lorg/simpleframework/xml/stream/StreamProvider;-><init>()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_5} :catch_6

    .line 53
    :goto_5
    return-object v0

    .line 50
    :catch_6
    move-exception v0

    :try_start_7
    new-instance v0, Lorg/simpleframework/xml/stream/PullProvider;

    invoke-direct {v0}, Lorg/simpleframework/xml/stream/PullProvider;-><init>()V
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_c} :catch_d

    goto :goto_5

    .line 53
    :catch_d
    move-exception v0

    new-instance v0, Lorg/simpleframework/xml/stream/DocumentProvider;

    invoke-direct {v0}, Lorg/simpleframework/xml/stream/DocumentProvider;-><init>()V

    goto :goto_5
.end method
