.class Lcom/google/googlenav/ui/wizard/cb;
.super Lax/bB;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/wizard/cc;

.field final synthetic b:Ljava/util/List;

.field final synthetic c:Lcom/google/googlenav/ui/wizard/bZ;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/wizard/bZ;Laf/h;Ljava/util/Vector;Ljava/util/Vector;Laf/h;Laf/h;Laf/h;Laf/h;Laf/h;Lcom/google/googlenav/ui/wizard/cc;Ljava/util/List;)V
    .registers 22

    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/cb;->c:Lcom/google/googlenav/ui/wizard/bZ;

    move-object/from16 v0, p10

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/cb;->a:Lcom/google/googlenav/ui/wizard/cc;

    move-object/from16 v0, p11

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/cb;->b:Ljava/util/List;

    move-object v1, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    invoke-direct/range {v1 .. v9}, Lax/bB;-><init>(Laf/h;Ljava/util/Vector;Ljava/util/Vector;Laf/h;Laf/h;Laf/h;Laf/h;Laf/h;)V

    return-void
.end method


# virtual methods
.method public b()V
    .registers 3

    invoke-super {p0}, Lax/bB;->b()V

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/cb;->a:Lcom/google/googlenav/ui/wizard/cc;

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/cb;->b:Ljava/util/List;

    invoke-interface {v0, v1}, Lcom/google/googlenav/ui/wizard/cc;->a(Ljava/util/List;)V

    return-void
.end method
