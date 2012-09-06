.class public LGl;
.super Lanf;
.source "ClientFlagsModule.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 18
    invoke-direct {p0}, Lanf;-><init>()V

    .line 21
    return-void
.end method


# virtual methods
.method protected a()V
    .registers 3

    .prologue
    .line 40
    const-class v0, LFZ;

    invoke-virtual {p0, v0}, LGl;->a(Ljava/lang/Class;)LanQ;

    move-result-object v0

    const-class v1, LGb;

    invoke-interface {v0, v1}, LanQ;->a(Ljava/lang/Class;)LanV;

    move-result-object v0

    sget-object v1, LanI;->a:LanG;

    invoke-interface {v0, v1}, LanV;->a(LanG;)V

    .line 41
    const-class v0, LGe;

    invoke-virtual {p0, v0}, LGl;->a(Ljava/lang/Class;)LanQ;

    move-result-object v0

    const-class v1, LGg;

    invoke-interface {v0, v1}, LanQ;->a(Ljava/lang/Class;)LanV;

    .line 42
    const-class v0, LGh;

    invoke-virtual {p0, v0}, LGl;->a(Ljava/lang/Class;)LanQ;

    move-result-object v0

    const-class v1, LGj;

    invoke-interface {v0, v1}, LanQ;->a(Ljava/lang/Class;)LanV;

    .line 43
    const-class v0, LFX;

    invoke-virtual {p0, v0}, LGl;->a(Ljava/lang/Class;)LanQ;

    move-result-object v0

    const-class v1, LGm;

    invoke-interface {v0, v1}, LanQ;->b(Ljava/lang/Class;)LanV;

    move-result-object v0

    const-class v1, LanN;

    invoke-interface {v0, v1}, LanV;->a(Ljava/lang/Class;)V

    .line 44
    return-void
.end method
