.class public LQU;
.super Ljava/lang/Object;
.source "FileContentInstance.java"


# instance fields
.field private final a:LQZ;

.field private final a:LXP;

.field private final a:LXz;

.field private final a:LZJ;


# direct methods
.method public constructor <init>(LXP;LQZ;LXz;LZJ;)V
    .registers 5
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation runtime Lanr;
    .end annotation

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, LQU;->a:LXP;

    .line 43
    iput-object p2, p0, LQU;->a:LQZ;

    .line 44
    iput-object p3, p0, LQU;->a:LXz;

    .line 45
    iput-object p4, p0, LQU;->a:LZJ;

    .line 46
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;ZLjava/lang/String;)LQS;
    .registers 8
    .parameter
    .parameter
    .parameter

    .prologue
    .line 60
    .line 61
    if-eqz p2, :cond_24

    .line 62
    if-eqz p2, :cond_22

    iget-object v0, p0, LQU;->a:LZJ;

    invoke-interface {v0}, LZJ;->e()Z

    move-result v0

    if-eqz v0, :cond_22

    iget-object v0, p0, LQU;->a:LXz;

    invoke-interface {v0}, LXz;->a()Ljavax/crypto/SecretKey;

    move-result-object v0

    .line 64
    :goto_12
    iget-object v1, p0, LQU;->a:LQZ;

    invoke-interface {v1, p1, v0, p3}, LQZ;->a(Ljava/lang/String;Ljavax/crypto/SecretKey;Ljava/lang/String;)LkS;

    move-result-object v0

    .line 68
    :goto_18
    new-instance v1, LQS;

    iget-object v2, p0, LQU;->a:LXP;

    iget-object v3, p0, LQU;->a:LQZ;

    invoke-direct {v1, v2, v3, v0}, LQS;-><init>(LXP;LQZ;LkS;)V

    return-object v1

    .line 62
    :cond_22
    const/4 v0, 0x0

    goto :goto_12

    .line 66
    :cond_24
    iget-object v0, p0, LQU;->a:LQZ;

    invoke-interface {v0, p1, p3}, LQZ;->a(Ljava/lang/String;Ljava/lang/String;)LkS;

    move-result-object v0

    goto :goto_18
.end method

.method public a(LkS;)LQS;
    .registers 5
    .parameter

    .prologue
    .line 52
    new-instance v0, LQS;

    iget-object v1, p0, LQU;->a:LXP;

    iget-object v2, p0, LQU;->a:LQZ;

    invoke-direct {v0, v1, v2, p1}, LQS;-><init>(LXP;LQZ;LkS;)V

    return-object v0
.end method
