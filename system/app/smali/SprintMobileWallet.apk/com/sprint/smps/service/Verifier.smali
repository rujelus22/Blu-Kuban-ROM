.class public Lcom/sprint/smps/service/Verifier;
.super Ljava/lang/Object;
.source "Verifier.java"

# interfaces
.implements Ljavax/net/ssl/HostnameVerifier;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public verify(Ljava/lang/String;Ljavax/net/ssl/SSLSession;)Z
    .registers 4
    .parameter "hostname"
    .parameter "session"

    .prologue
    .line 11
    const/4 v0, 0x1

    return v0
.end method
