.class final Lcom/google/android/finsky/remoting/RadioConnectionFactoryImpl$1;
.super Ljava/lang/Object;
.source "RadioConnectionFactoryImpl.java"

# interfaces
.implements Lcom/google/android/finsky/remoting/RadioConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/remoting/RadioConnectionFactoryImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public ensureRouteToHost(Ljava/lang/String;)V
    .registers 2
    .parameter "url"

    .prologue
    .line 25
    return-void
.end method

.method public start()V
    .registers 1

    .prologue
    .line 19
    return-void
.end method

.method public stop()V
    .registers 1

    .prologue
    .line 22
    return-void
.end method
