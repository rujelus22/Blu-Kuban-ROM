.class public LaZ/i;
.super LaY/ab;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, LaY/ab;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/googlenav/ui/D;LaJ/p;LaJ/u;Lcom/google/googlenav/ui/af;LaE/h;Lax/bD;Lax/r;Lcom/google/googlenav/android/ac;Lcom/google/googlenav/ui/at;Lcom/google/googlenav/ui/wizard/hM;LaJ/k;Lcom/google/googlenav/layer/r;)LaY/Y;
    .registers 27

    new-instance v0, LaZ/b;

    const/4 v13, 0x0

    move-object v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    move-object/from16 v11, p11

    move-object/from16 v12, p12

    invoke-direct/range {v0 .. v13}, LaZ/b;-><init>(Lcom/google/googlenav/ui/D;LaJ/p;LaJ/u;Lcom/google/googlenav/ui/af;LaE/h;Lax/bD;Lax/r;Lcom/google/googlenav/android/ac;Lcom/google/googlenav/ui/at;Lcom/google/googlenav/ui/wizard/hM;LaJ/k;Lcom/google/googlenav/layer/r;LaZ/c;)V

    return-object v0
.end method
