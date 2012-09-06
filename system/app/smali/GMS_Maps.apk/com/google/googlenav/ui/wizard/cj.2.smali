.class Lcom/google/googlenav/ui/wizard/cJ;
.super Lcom/google/googlenav/friend/by;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/wizard/cK;

.field final synthetic b:Ljava/util/List;

.field final synthetic c:Lcom/google/googlenav/ui/wizard/cH;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/wizard/cH;Lcom/google/googlenav/common/f;Ljava/util/Vector;Ljava/util/Vector;Lcom/google/googlenav/common/f;Lcom/google/googlenav/common/f;Lcom/google/googlenav/common/f;Lcom/google/googlenav/common/f;Lcom/google/googlenav/common/f;Lcom/google/googlenav/ui/wizard/cK;Ljava/util/List;)V
    .registers 22
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
    .parameter

    .prologue
    .line 315
    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/cJ;->c:Lcom/google/googlenav/ui/wizard/cH;

    move-object/from16 v0, p10

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/cJ;->a:Lcom/google/googlenav/ui/wizard/cK;

    move-object/from16 v0, p11

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/cJ;->b:Ljava/util/List;

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
.method public l_()V
    .registers 3

    .prologue
    .line 318
    invoke-super {p0}, Lcom/google/googlenav/friend/by;->l_()V

    .line 321
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/cJ;->a:Lcom/google/googlenav/ui/wizard/cK;

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/cJ;->b:Ljava/util/List;

    invoke-interface {v0, v1}, Lcom/google/googlenav/ui/wizard/cK;->a(Ljava/util/List;)V

    .line 322
    return-void
.end method
