.class public Ldz;
.super Lanf;
.source "AnalyticsModule.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 13
    invoke-direct {p0}, Lanf;-><init>()V

    return-void
.end method


# virtual methods
.method protected a()V
    .registers 3

    .prologue
    .line 17
    invoke-virtual {p0}, Ldz;->a()LanR;

    move-result-object v0

    const-class v1, LdF;

    invoke-interface {v0, v1}, LanR;->a(Ljava/lang/Class;)LanT;

    move-result-object v0

    const-string v1, "UA-21125203-1"

    invoke-interface {v0, v1}, LanT;->a(Ljava/lang/String;)V

    .line 19
    return-void
.end method
