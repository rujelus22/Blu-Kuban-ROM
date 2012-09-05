.class public final Ldx;
.super Leq;
.source "a"


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 14
    const-string v0, "No Account Credentials"

    invoke-direct {p0, v0}, Leq;-><init>(Ljava/lang/String;)V

    .line 15
    return-void
.end method
