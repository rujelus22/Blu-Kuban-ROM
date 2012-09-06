.class LBf;
.super LyB;
.source "LinkStyle.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "LyB",
        "<",
        "LBe;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:LBe;


# direct methods
.method constructor <init>(LBe;)V
    .registers 2
    .parameter

    .prologue
    .line 32
    iput-object p1, p0, LBf;->a:LBe;

    invoke-direct {p0}, LyB;-><init>()V

    return-void
.end method


# virtual methods
.method public a()LBe;
    .registers 2

    .prologue
    .line 44
    iget-object v0, p0, LBf;->a:LBe;

    return-object v0
.end method

.method public bridge synthetic a()LBj;
    .registers 2

    .prologue
    .line 32
    invoke-virtual {p0}, LBf;->a()LBe;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/content/Context;)Ljava/util/Collection;
    .registers 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 36
    iget-object v1, p0, LBf;->a:LBe;

    invoke-static {v1}, LBe;->a(LBe;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1b

    .line 37
    new-instance v1, LAQ;

    iget-object v2, p0, LBf;->a:LBe;

    invoke-static {v2}, LBe;->a(LBe;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, LAQ;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 39
    :cond_1b
    return-object v0
.end method
