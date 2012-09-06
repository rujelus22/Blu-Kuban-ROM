.class public Lmx;
.super Lanf;
.source "DiscussionModule.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 20
    invoke-direct {p0}, Lanf;-><init>()V

    .line 26
    return-void
.end method


# virtual methods
.method protected a()V
    .registers 3

    .prologue
    .line 36
    const-class v0, Lmw;

    invoke-virtual {p0, v0}, Lmx;->a(Ljava/lang/Class;)LanQ;

    move-result-object v0

    const-class v1, LanN;

    invoke-interface {v0, v1}, LanQ;->a(Ljava/lang/Class;)V

    .line 38
    const-class v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lmx;->a(Ljava/lang/Class;)LanQ;

    move-result-object v0

    const-string v1, "DiscussionTrackerLabel"

    invoke-static {v1}, Laqc;->a(Ljava/lang/String;)Laqa;

    move-result-object v1

    invoke-interface {v0, v1}, LanQ;->a(Ljava/lang/annotation/Annotation;)LanU;

    move-result-object v0

    const-class v1, Lmy;

    invoke-interface {v0, v1}, LanU;->b(Ljava/lang/Class;)LanV;

    move-result-object v0

    const-class v1, LanN;

    invoke-interface {v0, v1}, LanV;->a(Ljava/lang/Class;)V

    .line 42
    return-void
.end method
