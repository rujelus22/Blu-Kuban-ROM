.class public final Ldbxyzptlk/m/e;
.super Ldbxyzptlk/m/a;
.source "panda.py"


# instance fields
.field public final a:J


# direct methods
.method public constructor <init>(I)V
    .registers 4
    .parameter

    .prologue
    .line 38
    invoke-direct {p0}, Ldbxyzptlk/m/a;-><init>()V

    .line 39
    int-to-long v0, p1

    iput-wide v0, p0, Ldbxyzptlk/m/e;->a:J

    .line 40
    return-void
.end method
