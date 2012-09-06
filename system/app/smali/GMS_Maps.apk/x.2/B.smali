.class public Lx/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field private final a:Lx/a;

.field private final b:D

.field private final c:D


# direct methods
.method public constructor <init>(Lx/a;I)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104
    iput-object p1, p0, Lx/b;->a:Lx/a;

    .line 105
    invoke-virtual {p1, p2}, Lx/a;->a(I)D

    move-result-wide v0

    iput-wide v0, p0, Lx/b;->b:D

    .line 106
    invoke-virtual {p1, p2}, Lx/a;->b(I)D

    move-result-wide v0

    iput-wide v0, p0, Lx/b;->c:D

    .line 107
    return-void
.end method


# virtual methods
.method public a([I[I)I
    .registers 24
    .parameter
    .parameter

    .prologue
    .line 111
    move-object/from16 v0, p0

    iget-object v1, v0, Lx/b;->a:Lx/a;

    const/4 v2, 0x1

    aget v2, p1, v2

    invoke-virtual {v1, v2}, Lx/a;->a(I)D

    move-result-wide v1

    .line 112
    move-object/from16 v0, p0

    iget-object v3, v0, Lx/b;->a:Lx/a;

    const/4 v4, 0x1

    aget v4, p1, v4

    invoke-virtual {v3, v4}, Lx/a;->b(I)D

    move-result-wide v3

    .line 113
    move-object/from16 v0, p0

    iget-object v5, v0, Lx/b;->a:Lx/a;

    const/4 v6, 0x1

    aget v6, p2, v6

    invoke-virtual {v5, v6}, Lx/a;->a(I)D

    move-result-wide v17

    .line 114
    move-object/from16 v0, p0

    iget-object v5, v0, Lx/b;->a:Lx/a;

    const/4 v6, 0x1

    aget v6, p2, v6

    invoke-virtual {v5, v6}, Lx/a;->b(I)D

    move-result-wide v19

    .line 116
    move-object/from16 v0, p0

    iget-wide v5, v0, Lx/b;->b:D

    cmpl-double v5, v5, v1

    if-nez v5, :cond_3e

    move-object/from16 v0, p0

    iget-wide v5, v0, Lx/b;->c:D

    cmpl-double v5, v5, v3

    if-nez v5, :cond_3e

    .line 117
    const/4 v1, -0x1

    .line 134
    :goto_3d
    return v1

    .line 119
    :cond_3e
    move-object/from16 v0, p0

    iget-wide v5, v0, Lx/b;->b:D

    cmpl-double v5, v5, v17

    if-nez v5, :cond_50

    move-object/from16 v0, p0

    iget-wide v5, v0, Lx/b;->c:D

    cmpl-double v5, v5, v19

    if-nez v5, :cond_50

    .line 120
    const/4 v1, 0x1

    goto :goto_3d

    .line 122
    :cond_50
    move-object/from16 v0, p0

    iget-wide v5, v0, Lx/b;->b:D

    move-object/from16 v0, p0

    iget-wide v7, v0, Lx/b;->c:D

    invoke-static/range {v1 .. v8}, Lx/y;->a(DDDD)I

    move-result v5

    if-ltz v5, :cond_74

    move-object/from16 v0, p0

    iget-wide v5, v0, Lx/b;->b:D

    move-object/from16 v0, p0

    iget-wide v7, v0, Lx/b;->c:D

    invoke-static/range {v1 .. v8}, Lx/y;->a(DDDD)I

    move-result v5

    if-nez v5, :cond_ca

    move-object/from16 v0, p0

    iget-wide v5, v0, Lx/b;->c:D

    cmpg-double v5, v3, v5

    if-gez v5, :cond_ca

    :cond_74
    const/4 v5, 0x1

    move v13, v5

    .line 124
    :goto_76
    move-object/from16 v0, p0

    iget-wide v9, v0, Lx/b;->b:D

    move-object/from16 v0, p0

    iget-wide v11, v0, Lx/b;->c:D

    move-wide/from16 v5, v17

    move-wide/from16 v7, v19

    invoke-static/range {v5 .. v12}, Lx/y;->a(DDDD)I

    move-result v5

    if-ltz v5, :cond_a2

    move-object/from16 v0, p0

    iget-wide v9, v0, Lx/b;->b:D

    move-object/from16 v0, p0

    iget-wide v11, v0, Lx/b;->c:D

    move-wide/from16 v5, v17

    move-wide/from16 v7, v19

    invoke-static/range {v5 .. v12}, Lx/y;->a(DDDD)I

    move-result v5

    if-gez v5, :cond_cd

    move-object/from16 v0, p0

    iget-wide v5, v0, Lx/b;->c:D

    cmpg-double v5, v19, v5

    if-gez v5, :cond_cd

    :cond_a2
    const/4 v5, 0x1

    .line 127
    :goto_a3
    if-ne v13, v5, :cond_de

    .line 128
    move-object/from16 v0, p0

    iget-wide v5, v0, Lx/b;->b:D

    move-object/from16 v0, p0

    iget-wide v7, v0, Lx/b;->c:D

    move-wide/from16 v9, v17

    move-wide/from16 v11, v19

    move-wide v13, v1

    move-wide v15, v3

    invoke-static/range {v5 .. v16}, Lx/y;->a(DDDDDD)D

    move-result-wide v5

    .line 129
    const-wide/16 v7, 0x0

    cmpl-double v7, v5, v7

    if-nez v7, :cond_d2

    move-wide/from16 v5, v17

    move-wide/from16 v7, v19

    .line 130
    invoke-static/range {v1 .. v8}, Lx/y;->a(DDDD)I

    move-result v1

    if-lez v1, :cond_cf

    const/4 v1, 0x1

    goto/16 :goto_3d

    .line 122
    :cond_ca
    const/4 v5, 0x0

    move v13, v5

    goto :goto_76

    .line 124
    :cond_cd
    const/4 v5, 0x0

    goto :goto_a3

    .line 130
    :cond_cf
    const/4 v1, -0x1

    goto/16 :goto_3d

    .line 132
    :cond_d2
    const-wide/16 v1, 0x0

    cmpl-double v1, v5, v1

    if-lez v1, :cond_db

    const/4 v1, 0x1

    goto/16 :goto_3d

    :cond_db
    const/4 v1, -0x1

    goto/16 :goto_3d

    .line 134
    :cond_de
    if-eqz v13, :cond_e3

    const/4 v1, -0x1

    goto/16 :goto_3d

    :cond_e3
    const/4 v1, 0x1

    goto/16 :goto_3d
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 98
    check-cast p1, [I

    check-cast p2, [I

    invoke-virtual {p0, p1, p2}, Lx/b;->a([I[I)I

    move-result v0

    return v0
.end method
