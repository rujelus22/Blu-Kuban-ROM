.class public Lbb/s;
.super Lbb/o;


# instance fields
.field public final y:I


# direct methods
.method public constructor <init>(ILjava/lang/String;I)V
    .registers 11

    const/4 v3, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    invoke-direct/range {v0 .. v6}, Lbb/o;-><init>(ILjava/lang/String;Lbb/n;Ljava/util/Vector;Lbb/p;[Laq/a;)V

    iput p3, p0, Lbb/s;->y:I

    return-void
.end method
