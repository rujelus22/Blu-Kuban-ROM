.class LBa;
.super LyB;
.source "FootnoteNumberStyle.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "LyB",
        "<",
        "LAZ;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:LAZ;


# direct methods
.method constructor <init>(LAZ;)V
    .registers 2
    .parameter

    .prologue
    .line 43
    iput-object p1, p0, LBa;->a:LAZ;

    invoke-direct {p0}, LyB;-><init>()V

    return-void
.end method


# virtual methods
.method public a()LAZ;
    .registers 2

    .prologue
    .line 55
    iget-object v0, p0, LBa;->a:LAZ;

    return-object v0
.end method

.method public bridge synthetic a()LBj;
    .registers 2

    .prologue
    .line 43
    invoke-virtual {p0}, LBa;->a()LAZ;

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
    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 47
    iget-object v1, p0, LBa;->a:LAZ;

    invoke-static {v1}, LAZ;->a(LAZ;)LBm;

    move-result-object v1

    invoke-virtual {v1}, LBm;->a()LEm;

    move-result-object v1

    .line 48
    new-instance v2, LAM;

    invoke-direct {v2, v1}, LAM;-><init>(LEm;)V

    .line 49
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 50
    return-object v0
.end method
