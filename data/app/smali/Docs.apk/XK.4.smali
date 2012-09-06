.class public LXK;
.super Lanf;
.source "ErrorReporterModule.java"


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
    const-class v0, LXJ;

    invoke-virtual {p0, v0}, LXK;->a(Ljava/lang/Class;)LanQ;

    move-result-object v0

    const-class v1, Lcom/google/android/apps/docs/utils/ToastErrorReporter;

    invoke-interface {v0, v1}, LanQ;->a(Ljava/lang/Class;)LanV;

    .line 17
    return-void
.end method
