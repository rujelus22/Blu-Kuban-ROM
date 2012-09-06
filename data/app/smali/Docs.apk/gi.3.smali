.class public Lgi;
.super Ljava/lang/Object;
.source "GellyInjectorStore.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 1133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lfd;)V
    .registers 2
    .parameter

    .prologue
    .line 1136
    invoke-static {}, Lj;->a()LanD;

    move-result-object v0

    invoke-static {v0}, Lfe;->aB(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LanD;

    iput-object v0, p0, Lfd;->a:LanD;

    .line 1142
    return-void
.end method
