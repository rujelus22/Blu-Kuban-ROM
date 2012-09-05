.class public abstract Lgz;
.super Ljava/lang/Object;
.source "a"


# instance fields
.field protected final a:Lnd;


# direct methods
.method public constructor <init>(Lnd;)V
    .registers 2
    .parameter

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lgz;->a:Lnd;

    .line 38
    return-void
.end method


# virtual methods
.method public final a()Lnd;
    .registers 2

    .prologue
    .line 50
    iget-object v0, p0, Lgz;->a:Lnd;

    return-object v0
.end method

.method public final b()Ljava/lang/Class;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 52
    iget-object v0, p0, Lgz;->a:Lnd;

    invoke-virtual {v0}, Lnd;->i()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method
