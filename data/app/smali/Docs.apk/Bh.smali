.class LBh;
.super LyB;
.source "ParagraphSpanStyle.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "LyB",
        "<",
        "LBg;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:LBg;


# direct methods
.method constructor <init>(LBg;)V
    .registers 2
    .parameter

    .prologue
    .line 136
    iput-object p1, p0, LBh;->a:LBg;

    invoke-direct {p0}, LyB;-><init>()V

    return-void
.end method


# virtual methods
.method public a()LBg;
    .registers 2

    .prologue
    .line 160
    iget-object v0, p0, LBh;->a:LBg;

    return-object v0
.end method

.method public bridge synthetic a()LBj;
    .registers 2

    .prologue
    .line 136
    invoke-virtual {p0}, LBh;->a()LBg;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/content/Context;)Ljava/util/Collection;
    .registers 11
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
    .line 139
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 140
    iget-object v0, p0, LBh;->a:LBg;

    invoke-static {v0}, LBg;->a(LBg;)Z

    move-result v0

    if-eqz v0, :cond_64

    .line 141
    new-instance v0, LEg;

    invoke-direct {v0}, LEg;-><init>()V

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 145
    :goto_15
    new-instance v0, LAS;

    iget-object v1, p0, LBh;->a:LBg;

    invoke-static {v1}, LBg;->a(LBg;)D

    move-result-wide v1

    iget-object v3, p0, LBh;->a:LBg;

    invoke-static {v3}, LBg;->b(LBg;)D

    move-result-wide v3

    iget-object v5, p0, LBh;->a:LBg;

    invoke-static {v5}, LBg;->a(LBg;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, LBh;->a:LBg;

    invoke-static {v6}, LBg;->a(LBg;)LBm;

    move-result-object v6

    iget-object v7, p0, LBh;->a:LBg;

    invoke-static {v7}, LBg;->a(LBg;)LwH;

    move-result-object v7

    invoke-direct/range {v0 .. v7}, LAS;-><init>(DDLjava/lang/String;LBm;LwH;)V

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 147
    new-instance v0, LAR;

    iget-object v1, p0, LBh;->a:LBg;

    invoke-static {v1}, LBg;->c(LBg;)D

    move-result-wide v1

    iget-object v3, p0, LBh;->a:LBg;

    invoke-static {v3}, LBg;->d(LBg;)D

    move-result-wide v3

    iget-object v5, p0, LBh;->a:LBg;

    invoke-static {v5}, LBg;->e(LBg;)D

    move-result-wide v5

    iget-object v7, p0, LBh;->a:LBg;

    invoke-static {v7}, LBg;->a(LBg;)LwH;

    move-result-object v7

    invoke-direct/range {v0 .. v7}, LAR;-><init>(DDDLwH;)V

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 149
    new-instance v0, LBi;

    invoke-direct {v0, p0}, LBi;-><init>(LBh;)V

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 155
    return-object v8

    .line 143
    :cond_64
    new-instance v0, Landroid/text/style/AlignmentSpan$Standard;

    iget-object v1, p0, LBh;->a:LBg;

    invoke-static {v1}, LBg;->a(LBg;)Landroid/text/Layout$Alignment;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/text/style/AlignmentSpan$Standard;-><init>(Landroid/text/Layout$Alignment;)V

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_15
.end method
