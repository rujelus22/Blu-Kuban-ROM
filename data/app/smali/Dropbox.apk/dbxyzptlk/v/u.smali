.class final Ldbxyzptlk/v/u;
.super Ljava/lang/Object;
.source "panda.py"

# interfaces
.implements Ldbxyzptlk/v/M;


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 751
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ldbxyzptlk/v/z;)Ldbxyzptlk/v/M;
    .registers 3
    .parameter

    .prologue
    .line 757
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public final get()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 753
    const/4 v0, 0x0

    return-object v0
.end method
