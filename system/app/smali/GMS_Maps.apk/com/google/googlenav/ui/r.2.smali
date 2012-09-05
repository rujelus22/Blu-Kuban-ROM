.class public Lcom/google/googlenav/ui/r;
.super Lcom/google/googlenav/ui/bl;


# instance fields
.field public final a:Ljava/util/List;


# direct methods
.method public constructor <init>(Ljava/util/List;Lcom/google/googlenav/ui/bh;II)V
    .registers 42

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const/4 v4, -0x1

    const/4 v5, -0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x3

    const/4 v12, 0x0

    const/4 v13, 0x1

    const/4 v15, -0x1

    const/16 v16, -0x1

    const/16 v17, -0x1

    const/16 v19, 0x0

    const/16 v20, 0x1

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    const/16 v34, 0x0

    const/16 v35, 0x0

    const/16 v36, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v14, p3

    move/from16 v18, p4

    invoke-direct/range {v1 .. v36}, Lcom/google/googlenav/ui/bl;-><init>(Ljava/util/List;Ljava/util/List;IILcom/google/googlenav/ui/bn;Lcom/google/googlenav/ui/bn;Lcom/google/googlenav/ui/bn;Lcom/google/googlenav/ui/bn;IILjava/lang/String;IIIIIIIZLcom/google/googlenav/ui/bh;Lcom/google/googlenav/ui/bh;Lbb/c;Lbb/F;Ljava/lang/Object;ZZLaJ/B;ILjava/lang/String;Ljava/lang/Object;[Lcom/google/googlenav/ui/bl;Lcom/google/googlenav/ui/o;Lcom/google/googlenav/ui/b;ZLbd/k;)V

    if-nez p2, :cond_4e

    invoke-static {}, LK/bR;->a()Ljava/util/ArrayList;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/google/googlenav/ui/r;->a:Ljava/util/List;

    :goto_4d
    return-void

    :cond_4e
    const/4 v1, 0x1

    new-array v1, v1, [Lcom/google/googlenav/ui/bh;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-static {v1}, LK/bR;->a([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/google/googlenav/ui/r;->a:Ljava/util/List;

    goto :goto_4d
.end method
