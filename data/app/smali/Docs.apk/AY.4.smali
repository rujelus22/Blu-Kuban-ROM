.class LAY;
.super LyB;
.source "DocosStyle.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "LyB",
        "<",
        "LAX;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:LAX;


# direct methods
.method constructor <init>(LAX;)V
    .registers 2
    .parameter

    .prologue
    .line 35
    iput-object p1, p0, LAY;->a:LAX;

    invoke-direct {p0}, LyB;-><init>()V

    return-void
.end method


# virtual methods
.method public a()LAX;
    .registers 2

    .prologue
    .line 47
    iget-object v0, p0, LAY;->a:LAX;

    return-object v0
.end method

.method public bridge synthetic a()LBj;
    .registers 2

    .prologue
    .line 35
    invoke-virtual {p0}, LAY;->a()LAX;

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
    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 39
    iget-object v1, p0, LAY;->a:LAX;

    invoke-static {v1}, LAX;->a(LAX;)[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_24

    iget-object v1, p0, LAY;->a:LAX;

    invoke-static {v1}, LAX;->a(LAX;)[Ljava/lang/String;

    move-result-object v1

    array-length v1, v1

    if-lez v1, :cond_24

    .line 40
    new-instance v1, Lcom/google/android/apps/docs/editors/kix/spans/DocosSpan;

    iget-object v2, p0, LAY;->a:LAX;

    invoke-static {v2}, LAX;->a(LAX;)[Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/google/android/apps/docs/editors/kix/spans/DocosSpan;-><init>([Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 42
    :cond_24
    return-object v0
.end method
