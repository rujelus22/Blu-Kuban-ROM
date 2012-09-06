.class final Ldbxyzptlk/v/s;
.super Ljava/lang/Object;
.source "panda.py"


# static fields
.field static a:Ljava/util/Timer;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 25
    new-instance v0, Ljava/util/Timer;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/Timer;-><init>(Z)V

    sput-object v0, Ldbxyzptlk/v/s;->a:Ljava/util/Timer;

    return-void
.end method
