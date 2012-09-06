.class public LLj;
.super Lanf;
.source "NotificationModule.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 14
    invoke-direct {p0}, Lanf;-><init>()V

    return-void
.end method


# virtual methods
.method protected a()V
    .registers 3

    .prologue
    .line 18
    const-class v0, LLh;

    invoke-virtual {p0, v0}, LLj;->a(Ljava/lang/Class;)LanQ;

    move-result-object v0

    const-class v1, LLi;

    invoke-interface {v0, v1}, LanQ;->a(Ljava/lang/Class;)LanV;

    move-result-object v0

    const-class v1, LanN;

    invoke-interface {v0, v1}, LanV;->a(Ljava/lang/Class;)V

    .line 19
    return-void
.end method
