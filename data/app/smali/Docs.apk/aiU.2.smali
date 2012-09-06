.class final LaiU;
.super LaiX;
.source "Iterables.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "LaiX",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/Iterable;


# direct methods
.method constructor <init>(Ljava/lang/Iterable;)V
    .registers 2
    .parameter

    .prologue
    .line 486
    iput-object p1, p0, LaiU;->a:Ljava/lang/Iterable;

    invoke-direct {p0}, LaiX;-><init>()V

    return-void
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 489
    iget-object v0, p0, LaiU;->a:Ljava/lang/Iterable;

    invoke-static {v0}, LaiT;->a(Ljava/lang/Iterable;)Lalu;

    move-result-object v0

    invoke-static {v0}, LaiY;->a(Ljava/util/Iterator;)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method
