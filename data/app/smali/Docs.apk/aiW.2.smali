.class final LaiW;
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
.field final synthetic a:LafH;

.field final synthetic a:Ljava/lang/Iterable;


# direct methods
.method constructor <init>(Ljava/lang/Iterable;LafH;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 706
    iput-object p1, p0, LaiW;->a:Ljava/lang/Iterable;

    iput-object p2, p0, LaiW;->a:LafH;

    invoke-direct {p0}, LaiX;-><init>()V

    return-void
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 709
    iget-object v0, p0, LaiW;->a:Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iget-object v1, p0, LaiW;->a:LafH;

    invoke-static {v0, v1}, LaiY;->a(Ljava/util/Iterator;LafH;)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method
