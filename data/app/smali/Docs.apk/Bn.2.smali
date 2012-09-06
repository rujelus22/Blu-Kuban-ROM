.class LBn;
.super LyB;
.source "TextStyle.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "LyB",
        "<",
        "LBm;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:LBm;


# direct methods
.method constructor <init>(LBm;)V
    .registers 2
    .parameter

    .prologue
    .line 163
    iput-object p1, p0, LBn;->a:LBm;

    invoke-direct {p0}, LyB;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a()LBj;
    .registers 2

    .prologue
    .line 163
    invoke-virtual {p0}, LBn;->a()LBm;

    move-result-object v0

    return-object v0
.end method

.method public a()LBm;
    .registers 2

    .prologue
    .line 182
    iget-object v0, p0, LBn;->a:LBm;

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
    .line 166
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 167
    iget-object v1, p0, LBn;->a:LBm;

    invoke-static {v1}, LBm;->a(LBm;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1f

    .line 168
    new-instance v1, Landroid/text/style/BackgroundColorSpan;

    iget-object v2, p0, LBn;->a:LBm;

    invoke-static {v2}, LBm;->a(LBm;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-direct {v1, v2}, Landroid/text/style/BackgroundColorSpan;-><init>(I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 170
    :cond_1f
    iget-object v1, p0, LBn;->a:LBm;

    invoke-static {v1}, LBm;->a(LBm;)Z

    move-result v1

    if-eqz v1, :cond_2f

    .line 171
    new-instance v1, Landroid/text/style/UnderlineSpan;

    invoke-direct {v1}, Landroid/text/style/UnderlineSpan;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 173
    :cond_2f
    iget-object v1, p0, LBn;->a:LBm;

    invoke-static {v1}, LBm;->b(LBm;)Z

    move-result v1

    if-eqz v1, :cond_3f

    .line 174
    new-instance v1, Landroid/text/style/StrikethroughSpan;

    invoke-direct {v1}, Landroid/text/style/StrikethroughSpan;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 176
    :cond_3f
    iget-object v1, p0, LBn;->a:LBm;

    invoke-virtual {v1}, LBm;->a()LEm;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 177
    return-object v0
.end method
