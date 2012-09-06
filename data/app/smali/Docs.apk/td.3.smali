.class public Ltd;
.super Lanf;
.source "DocsUploaderModule.java"


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
    .line 16
    const-class v0, Lta;

    invoke-virtual {p0, v0}, Ltd;->a(Ljava/lang/Class;)LanQ;

    move-result-object v0

    const-class v1, Ltb;

    invoke-interface {v0, v1}, LanQ;->a(Ljava/lang/Class;)LanV;

    move-result-object v0

    sget-object v1, LanI;->a:LanG;

    invoke-interface {v0, v1}, LanV;->a(LanG;)V

    .line 17
    const-class v0, LtI;

    invoke-virtual {p0, v0}, Ltd;->a(Ljava/lang/Class;)LanQ;

    move-result-object v0

    const-class v1, LtE;

    invoke-interface {v0, v1}, LanQ;->a(Ljava/lang/Class;)LanV;

    .line 18
    const-class v0, LtF;

    invoke-virtual {p0, v0}, Ltd;->a(Ljava/lang/Class;)LanQ;

    move-result-object v0

    const-class v1, LtG;

    invoke-interface {v0, v1}, LanQ;->a(Ljava/lang/Class;)LanV;

    .line 19
    return-void
.end method
