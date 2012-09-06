.class LJh;
.super Ldc;
.source "HttpModule.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ldc",
        "<",
        "LJH;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(LanD;LanD;)V
    .registers 9
    .parameter
    .parameter
    .annotation runtime Lanr;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LanD",
            "<",
            "LJq;",
            ">;",
            "LanD",
            "<",
            "LJo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 33
    const/16 v1, 0x8

    const-class v4, LJq;

    const-class v5, LJo;

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Ldc;-><init>(ILanD;LanD;Ljava/lang/Class;Ljava/lang/Class;)V

    .line 35
    return-void
.end method
