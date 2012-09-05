.class Lcom/google/googlenav/ui/wizard/gS;
.super Lax/bB;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/wizard/gT;

.field final synthetic b:Ljava/util/Vector;

.field final synthetic c:Lcom/google/googlenav/ui/wizard/gP;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/wizard/gP;Laf/h;Ljava/util/Vector;Ljava/util/Vector;Laf/h;Laf/h;Laf/h;Laf/h;Laf/h;Lcom/google/googlenav/ui/wizard/gT;Ljava/util/Vector;)V
    .registers 22

    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/gS;->c:Lcom/google/googlenav/ui/wizard/gP;

    move-object/from16 v0, p10

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/gS;->a:Lcom/google/googlenav/ui/wizard/gT;

    move-object/from16 v0, p11

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/gS;->b:Ljava/util/Vector;

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
.method public a(Z)V
    .registers 5

    invoke-super {p0, p1}, Lax/bB;->a(Z)V

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/gS;->a:Lcom/google/googlenav/ui/wizard/gT;

    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    iget-object v2, p0, Lcom/google/googlenav/ui/wizard/gS;->b:Ljava/util/Vector;

    invoke-interface {v0, v1, v2}, Lcom/google/googlenav/ui/wizard/gT;->a(Ljava/util/List;Ljava/util/List;)V

    return-void
.end method
