.class Labt;
.super Ldc;
.source "ActionBarModule.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ldc",
        "<",
        "LIk;",
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
            "LIA;",
            ">;",
            "LanD",
            "<",
            "LabB;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 29
    const/16 v1, 0xb

    const-class v4, LIA;

    const-class v5, LabB;

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Ldc;-><init>(ILanD;LanD;Ljava/lang/Class;Ljava/lang/Class;)V

    .line 31
    return-void
.end method
