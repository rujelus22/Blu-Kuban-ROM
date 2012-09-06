.class Lcom/google/googlenav/ui/wizard/iE;
.super Lcom/google/googlenav/friend/by;
.source "SourceFile"


# instance fields
.field final synthetic a:Ljava/util/Vector;

.field final synthetic b:Lcom/google/googlenav/ui/wizard/iD;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/wizard/iD;Lcom/google/googlenav/common/f;Ljava/util/Vector;Ljava/util/Vector;Lcom/google/googlenav/common/f;Lcom/google/googlenav/common/f;Lcom/google/googlenav/common/f;Lcom/google/googlenav/common/f;Lcom/google/googlenav/common/f;Ljava/util/Vector;)V
    .registers 21
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 144
    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/iE;->b:Lcom/google/googlenav/ui/wizard/iD;

    move-object/from16 v0, p10

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/iE;->a:Ljava/util/Vector;

    move-object v1, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    invoke-direct/range {v1 .. v9}, Lcom/google/googlenav/friend/by;-><init>(Lcom/google/googlenav/common/f;Ljava/util/Vector;Ljava/util/Vector;Lcom/google/googlenav/common/f;Lcom/google/googlenav/common/f;Lcom/google/googlenav/common/f;Lcom/google/googlenav/common/f;Lcom/google/googlenav/common/f;)V

    return-void
.end method


# virtual methods
.method public a(Z)V
    .registers 5
    .parameter

    .prologue
    .line 148
    invoke-super {p0, p1}, Lcom/google/googlenav/friend/by;->a(Z)V

    .line 149
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/iE;->b:Lcom/google/googlenav/ui/wizard/iD;

    iget-object v0, v0, Lcom/google/googlenav/ui/wizard/iD;->a:Lcom/google/googlenav/ui/wizard/iF;

    invoke-static {}, Lcom/google/common/collect/cx;->a()Ljava/util/ArrayList;

    move-result-object v1

    iget-object v2, p0, Lcom/google/googlenav/ui/wizard/iE;->a:Ljava/util/Vector;

    invoke-interface {v0, v1, v2}, Lcom/google/googlenav/ui/wizard/iF;->a(Ljava/util/List;Ljava/util/List;)V

    .line 150
    return-void
.end method
