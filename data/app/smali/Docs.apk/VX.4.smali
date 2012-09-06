.class public final LVX;
.super Ljava/lang/Object;
.source "Gelly.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    return-void
.end method

.method public static a(Ljava/lang/Iterable;)Lans;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lanz;",
            ">;)",
            "Lans;"
        }
    .end annotation

    .prologue
    .line 108
    new-instance v0, LVZ;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, LVZ;-><init>(Ljava/lang/Iterable;LVY;)V

    .line 109
    invoke-virtual {v0}, LVZ;->a()Lans;

    move-result-object v0

    return-object v0
.end method
