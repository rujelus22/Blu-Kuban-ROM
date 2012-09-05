.class final Lcom/sdgtl/mediahub/spr/screen/gs;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# instance fields
.field final synthetic a:Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;


# direct methods
.method constructor <init>(Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;)V
    .registers 2

    iput-object p1, p0, Lcom/sdgtl/mediahub/spr/screen/gs;->a:Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/sdgtl/mediahub/spr/screen/gs;)Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;
    .registers 2

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/gs;->a:Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;

    return-object v0
.end method


# virtual methods
.method public final onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .registers 25

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sdgtl/mediahub/spr/screen/gs;->a:Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sdgtl/mediahub/spr/screen/gs;->a:Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;

    invoke-static {v3}, Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;->a(Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;)Lcom/sdgtl/mediahub/spr/customview/MyMediaAdapter;

    move-result-object v3

    move/from16 v0, p3

    invoke-virtual {v3, v0}, Lcom/sdgtl/mediahub/spr/customview/MyMediaAdapter;->getItem(I)Lcom/sdgtl/mediahub/spr/common/di;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;->a(Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;Lcom/sdgtl/mediahub/spr/common/di;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sdgtl/mediahub/spr/screen/gs;->a:Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;

    move/from16 v0, p3

    invoke-static {v2, v0}, Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;->a(Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sdgtl/mediahub/spr/screen/gs;->a:Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;

    invoke-static {v2}, Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;->b(Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;)I

    move-result v2

    const/4 v3, 0x5

    if-eq v2, v3, :cond_3e8

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sdgtl/mediahub/spr/screen/gs;->a:Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;

    const v3, 0x7f0a00c4

    invoke-virtual {v2, v3}, Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sdgtl/mediahub/spr/screen/gs;->a:Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;

    const v3, 0x7f0a00d0

    invoke-virtual {v2, v3}, Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sdgtl/mediahub/spr/screen/gs;->a:Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;

    const v3, 0x7f0a00ca

    invoke-virtual {v2, v3}, Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sdgtl/mediahub/spr/screen/gs;->a:Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;

    const v3, 0x7f0a00c5

    invoke-virtual {v2, v3}, Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;->getText(I)Ljava/lang/CharSequence;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sdgtl/mediahub/spr/screen/gs;->a:Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;

    const v3, 0x7f0a00c6

    invoke-virtual {v2, v3}, Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;->getText(I)Ljava/lang/CharSequence;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sdgtl/mediahub/spr/screen/gs;->a:Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;

    const v3, 0x7f0a00c9

    invoke-virtual {v2, v3}, Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;->getText(I)Ljava/lang/CharSequence;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sdgtl/mediahub/spr/screen/gs;->a:Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;

    const v3, 0x7f0a00c7

    invoke-virtual {v2, v3}, Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;->getText(I)Ljava/lang/CharSequence;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sdgtl/mediahub/spr/screen/gs;->a:Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;

    const v3, 0x7f0a00c8

    invoke-virtual {v2, v3}, Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;->getText(I)Ljava/lang/CharSequence;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sdgtl/mediahub/spr/screen/gs;->a:Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sdgtl/mediahub/spr/screen/gs;->a:Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;

    invoke-static {v3}, Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;->c(Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;)Lcom/sdgtl/mediahub/spr/common/di;

    move-result-object v3

    iget v3, v3, Lcom/sdgtl/mediahub/spr/common/di;->g:I

    invoke-static {v2, v3}, Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;->b(Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sdgtl/mediahub/spr/screen/gs;->a:Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sdgtl/mediahub/spr/screen/gs;->a:Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;

    invoke-static {v3}, Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;->c(Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;)Lcom/sdgtl/mediahub/spr/common/di;

    move-result-object v3

    iget-object v3, v3, Lcom/sdgtl/mediahub/spr/common/di;->j:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;->a(Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;Ljava/lang/String;)V

    new-instance v13, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sdgtl/mediahub/spr/screen/gs;->a:Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;

    invoke-direct {v13, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sdgtl/mediahub/spr/screen/gs;->a:Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;

    invoke-static {v2}, Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;->d(Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v13, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const/4 v2, 0x0

    invoke-virtual {v13, v2}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    const-wide/16 v2, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sdgtl/mediahub/spr/screen/gs;->a:Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;

    invoke-static {v4}, Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;->c(Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;)Lcom/sdgtl/mediahub/spr/common/di;

    move-result-object v4

    iget-object v4, v4, Lcom/sdgtl/mediahub/spr/common/di;->Q:Ljava/lang/String;

    if-eqz v4, :cond_eb

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sdgtl/mediahub/spr/screen/gs;->a:Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;

    invoke-static {v2}, Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;->c(Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;)Lcom/sdgtl/mediahub/spr/common/di;

    move-result-object v2

    iget-object v2, v2, Lcom/sdgtl/mediahub/spr/common/di;->Q:Ljava/lang/String;

    const-string v3, "01"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1a9

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sdgtl/mediahub/spr/screen/gs;->a:Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;

    invoke-static {v2}, Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;->c(Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;)Lcom/sdgtl/mediahub/spr/common/di;

    move-result-object v2

    iget-object v2, v2, Lcom/sdgtl/mediahub/spr/common/di;->K:Ljava/util/ArrayList;

    const-string v3, "01"

    invoke-static {v2, v3}, Lcom/sdgtl/mediahub/spr/common/gk;->a(Ljava/util/ArrayList;Ljava/lang/String;)J

    move-result-wide v2

    :cond_eb
    :goto_eb
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sdgtl/mediahub/spr/screen/gs;->a:Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sdgtl/mediahub/spr/screen/gs;->a:Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;

    invoke-static {v14}, Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;->c(Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;)Lcom/sdgtl/mediahub/spr/common/di;

    move-result-object v14

    iget v14, v14, Lcom/sdgtl/mediahub/spr/common/di;->i:I

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sdgtl/mediahub/spr/screen/gs;->a:Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;

    invoke-static {v15}, Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;->c(Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;)Lcom/sdgtl/mediahub/spr/common/di;

    move-result-object v15

    iget v15, v15, Lcom/sdgtl/mediahub/spr/common/di;->h:I

    invoke-static {v4, v14, v15, v2, v3}, Lcom/sdgtl/mediahub/spr/common/gk;->a(Landroid/content/Context;IIJ)Z

    move-result v14

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sdgtl/mediahub/spr/screen/gs;->a:Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;

    invoke-static {v15}, Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;->c(Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;)Lcom/sdgtl/mediahub/spr/common/di;

    move-result-object v15

    iget-object v15, v15, Lcom/sdgtl/mediahub/spr/common/di;->f:Ljava/lang/String;

    const-string v16, "02"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_12c

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sdgtl/mediahub/spr/screen/gs;->a:Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;

    invoke-static {v15}, Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;->c(Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;)Lcom/sdgtl/mediahub/spr/common/di;

    move-result-object v15

    iget-object v15, v15, Lcom/sdgtl/mediahub/spr/common/di;->f:Ljava/lang/String;

    const-string v16, "04"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_155

    :cond_12c
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sdgtl/mediahub/spr/screen/gs;->a:Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sdgtl/mediahub/spr/screen/gs;->a:Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;

    invoke-static {v15}, Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;->c(Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;)Lcom/sdgtl/mediahub/spr/common/di;

    move-result-object v15

    iget-object v15, v15, Lcom/sdgtl/mediahub/spr/common/di;->J:Ljava/lang/String;

    invoke-static {v15}, Lcom/sdgtl/mediahub/spr/common/gk;->i(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_155

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sdgtl/mediahub/spr/screen/gs;->a:Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sdgtl/mediahub/spr/screen/gs;->a:Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;

    invoke-static {v15}, Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;->c(Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;)Lcom/sdgtl/mediahub/spr/common/di;

    move-result-object v15

    iget-object v15, v15, Lcom/sdgtl/mediahub/spr/common/di;->C:Ljava/lang/String;

    invoke-static {v15}, Lcom/sdgtl/mediahub/spr/common/gk;->h(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_155

    const/4 v4, 0x1

    :cond_155
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sdgtl/mediahub/spr/screen/gs;->a:Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/screen/gs;->a:Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;->c(Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;)Lcom/sdgtl/mediahub/spr/common/di;

    move-result-object v16

    move-object/from16 v0, v16

    iget v0, v0, Lcom/sdgtl/mediahub/spr/common/di;->g:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/screen/gs;->a:Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;->c(Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;)Lcom/sdgtl/mediahub/spr/common/di;

    move-result-object v17

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/common/di;->j:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/screen/gs;->a:Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;->c(Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;)Lcom/sdgtl/mediahub/spr/common/di;

    move-result-object v17

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/common/di;->Q:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-static/range {v15 .. v17}, Lcom/sdgtl/mediahub/spr/common/gk;->a(Landroid/content/Context;ILjava/lang/String;)J

    move-result-wide v15

    if-eqz v14, :cond_1bb

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/CharSequence;

    const/4 v3, 0x0

    aput-object v10, v2, v3

    const/4 v3, 0x1

    aput-object v6, v2, v3

    new-instance v3, Lcom/sdgtl/mediahub/spr/screen/gt;

    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-direct {v3, v0, v1}, Lcom/sdgtl/mediahub/spr/screen/gt;-><init>(Lcom/sdgtl/mediahub/spr/screen/gs;I)V

    invoke-virtual {v13, v2, v3}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    :cond_1a4
    :goto_1a4
    invoke-virtual {v13}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    :goto_1a7
    const/4 v2, 0x1

    return v2

    :cond_1a9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sdgtl/mediahub/spr/screen/gs;->a:Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;

    invoke-static {v2}, Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;->c(Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;)Lcom/sdgtl/mediahub/spr/common/di;

    move-result-object v2

    iget-object v2, v2, Lcom/sdgtl/mediahub/spr/common/di;->K:Ljava/util/ArrayList;

    const-string v3, "02"

    invoke-static {v2, v3}, Lcom/sdgtl/mediahub/spr/common/gk;->a(Ljava/util/ArrayList;Ljava/lang/String;)J

    move-result-wide v2

    goto/16 :goto_eb

    :cond_1bb
    const-wide/16 v17, 0x0

    cmp-long v14, v15, v17

    if-lez v14, :cond_1d9

    if-eqz v4, :cond_1d9

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/CharSequence;

    const/4 v3, 0x0

    aput-object v10, v2, v3

    const/4 v3, 0x1

    aput-object v6, v2, v3

    new-instance v3, Lcom/sdgtl/mediahub/spr/screen/ha;

    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-direct {v3, v0, v1}, Lcom/sdgtl/mediahub/spr/screen/ha;-><init>(Lcom/sdgtl/mediahub/spr/screen/gs;I)V

    invoke-virtual {v13, v2, v3}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_1a4

    :cond_1d9
    const-wide/16 v17, 0x0

    cmp-long v14, v15, v17

    if-gtz v14, :cond_1f4

    if-eqz v4, :cond_1f4

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/CharSequence;

    const/4 v3, 0x0

    aput-object v6, v2, v3

    new-instance v3, Lcom/sdgtl/mediahub/spr/screen/hb;

    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-direct {v3, v0, v1}, Lcom/sdgtl/mediahub/spr/screen/hb;-><init>(Lcom/sdgtl/mediahub/spr/screen/gs;I)V

    invoke-virtual {v13, v2, v3}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_1a4

    :cond_1f4
    cmp-long v2, v15, v2

    if-ltz v2, :cond_38d

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sdgtl/mediahub/spr/screen/gs;->a:Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;

    invoke-static {v2}, Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;->c(Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;)Lcom/sdgtl/mediahub/spr/common/di;

    move-result-object v2

    iget-object v2, v2, Lcom/sdgtl/mediahub/spr/common/di;->f:Ljava/lang/String;

    const-string v3, "03"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_21c

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sdgtl/mediahub/spr/screen/gs;->a:Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;

    invoke-static {v2}, Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;->c(Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;)Lcom/sdgtl/mediahub/spr/common/di;

    move-result-object v2

    iget-object v2, v2, Lcom/sdgtl/mediahub/spr/common/di;->f:Ljava/lang/String;

    const-string v3, "04"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_236

    :cond_21c
    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/CharSequence;

    const/4 v3, 0x0

    aput-object v7, v2, v3

    const/4 v3, 0x1

    aput-object v10, v2, v3

    const/4 v3, 0x2

    aput-object v6, v2, v3

    new-instance v3, Lcom/sdgtl/mediahub/spr/screen/hc;

    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-direct {v3, v0, v1}, Lcom/sdgtl/mediahub/spr/screen/hc;-><init>(Lcom/sdgtl/mediahub/spr/screen/gs;I)V

    invoke-virtual {v13, v2, v3}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto/16 :goto_1a4

    :cond_236
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sdgtl/mediahub/spr/screen/gs;->a:Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;

    invoke-static {v2}, Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;->e(Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;)Lcom/sdgtl/mediahub/spr/c/a;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sdgtl/mediahub/spr/screen/gs;->a:Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;

    invoke-static {v2}, Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;->c(Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;)Lcom/sdgtl/mediahub/spr/common/di;

    move-result-object v2

    iget v2, v2, Lcom/sdgtl/mediahub/spr/common/di;->g:I

    const-string v3, "01"

    invoke-static {v2, v3}, Lcom/sdgtl/mediahub/spr/c/a;->b(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sdgtl/mediahub/spr/screen/gs;->a:Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;

    invoke-static {v3}, Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;->e(Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;)Lcom/sdgtl/mediahub/spr/c/a;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sdgtl/mediahub/spr/screen/gs;->a:Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;

    invoke-static {v3}, Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;->c(Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;)Lcom/sdgtl/mediahub/spr/common/di;

    move-result-object v3

    iget v3, v3, Lcom/sdgtl/mediahub/spr/common/di;->g:I

    const-string v4, "02"

    invoke-static {v3, v4}, Lcom/sdgtl/mediahub/spr/c/a;->b(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "Downloaded"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_291

    const-string v4, "Downloaded"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_291

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/CharSequence;

    const/4 v3, 0x0

    aput-object v7, v2, v3

    const/4 v3, 0x1

    aput-object v11, v2, v3

    const/4 v3, 0x2

    aput-object v12, v2, v3

    const/4 v3, 0x3

    aput-object v6, v2, v3

    new-instance v3, Lcom/sdgtl/mediahub/spr/screen/hd;

    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-direct {v3, v0, v1}, Lcom/sdgtl/mediahub/spr/screen/hd;-><init>(Lcom/sdgtl/mediahub/spr/screen/gs;I)V

    invoke-virtual {v13, v2, v3}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto/16 :goto_1a4

    :cond_291
    const-string v4, "Downloaded"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2bb

    const-string v4, "Downloading"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2bb

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/CharSequence;

    const/4 v3, 0x0

    aput-object v7, v2, v3

    const/4 v3, 0x1

    aput-object v11, v2, v3

    const/4 v3, 0x2

    aput-object v6, v2, v3

    new-instance v3, Lcom/sdgtl/mediahub/spr/screen/he;

    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-direct {v3, v0, v1}, Lcom/sdgtl/mediahub/spr/screen/he;-><init>(Lcom/sdgtl/mediahub/spr/screen/gs;I)V

    invoke-virtual {v13, v2, v3}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto/16 :goto_1a4

    :cond_2bb
    const-string v4, "Downloaded"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2e8

    const-string v4, "Downloadable"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2e8

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/CharSequence;

    const/4 v3, 0x0

    aput-object v7, v2, v3

    const/4 v3, 0x1

    aput-object v11, v2, v3

    const/4 v3, 0x2

    aput-object v9, v2, v3

    const/4 v3, 0x3

    aput-object v6, v2, v3

    new-instance v3, Lcom/sdgtl/mediahub/spr/screen/hf;

    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-direct {v3, v0, v1}, Lcom/sdgtl/mediahub/spr/screen/hf;-><init>(Lcom/sdgtl/mediahub/spr/screen/gs;I)V

    invoke-virtual {v13, v2, v3}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto/16 :goto_1a4

    :cond_2e8
    const-string v4, "Downloading"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_312

    const-string v4, "Downloaded"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_312

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/CharSequence;

    const/4 v3, 0x0

    aput-object v7, v2, v3

    const/4 v3, 0x1

    aput-object v12, v2, v3

    const/4 v3, 0x2

    aput-object v6, v2, v3

    new-instance v3, Lcom/sdgtl/mediahub/spr/screen/hg;

    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-direct {v3, v0, v1}, Lcom/sdgtl/mediahub/spr/screen/hg;-><init>(Lcom/sdgtl/mediahub/spr/screen/gs;I)V

    invoke-virtual {v13, v2, v3}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto/16 :goto_1a4

    :cond_312
    const-string v4, "Downloadable"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_373

    const-string v2, "Downloaded"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_373

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sdgtl/mediahub/spr/screen/gs;->a:Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;

    invoke-static {v2}, Lcom/sdgtl/mediahub/spr/a/a;->g(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_33c

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sdgtl/mediahub/spr/screen/gs;->a:Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;

    invoke-static {v2}, Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;->c(Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;)Lcom/sdgtl/mediahub/spr/common/di;

    move-result-object v2

    iget-object v2, v2, Lcom/sdgtl/mediahub/spr/common/di;->G:Ljava/lang/String;

    invoke-static {v2}, Lcom/sdgtl/mediahub/spr/common/gk;->m(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_359

    :cond_33c
    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/CharSequence;

    const/4 v3, 0x0

    aput-object v7, v2, v3

    const/4 v3, 0x1

    aput-object v12, v2, v3

    const/4 v3, 0x2

    aput-object v8, v2, v3

    const/4 v3, 0x3

    aput-object v6, v2, v3

    new-instance v3, Lcom/sdgtl/mediahub/spr/screen/hh;

    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-direct {v3, v0, v1}, Lcom/sdgtl/mediahub/spr/screen/hh;-><init>(Lcom/sdgtl/mediahub/spr/screen/gs;I)V

    invoke-virtual {v13, v2, v3}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto/16 :goto_1a4

    :cond_359
    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/CharSequence;

    const/4 v3, 0x0

    aput-object v7, v2, v3

    const/4 v3, 0x1

    aput-object v10, v2, v3

    const/4 v3, 0x2

    aput-object v6, v2, v3

    new-instance v3, Lcom/sdgtl/mediahub/spr/screen/gu;

    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-direct {v3, v0, v1}, Lcom/sdgtl/mediahub/spr/screen/gu;-><init>(Lcom/sdgtl/mediahub/spr/screen/gs;I)V

    invoke-virtual {v13, v2, v3}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto/16 :goto_1a4

    :cond_373
    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/CharSequence;

    const/4 v3, 0x0

    aput-object v7, v2, v3

    const/4 v3, 0x1

    aput-object v11, v2, v3

    const/4 v3, 0x2

    aput-object v6, v2, v3

    new-instance v3, Lcom/sdgtl/mediahub/spr/screen/gv;

    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-direct {v3, v0, v1}, Lcom/sdgtl/mediahub/spr/screen/gv;-><init>(Lcom/sdgtl/mediahub/spr/screen/gs;I)V

    invoke-virtual {v13, v2, v3}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto/16 :goto_1a4

    :cond_38d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sdgtl/mediahub/spr/screen/gs;->a:Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;

    invoke-static {v2}, Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;->f(Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;)Lcom/sdgtl/mediahub/spr/download/a;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sdgtl/mediahub/spr/screen/gs;->a:Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;

    invoke-static {v2}, Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;->c(Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;)Lcom/sdgtl/mediahub/spr/common/di;

    move-result-object v2

    iget v2, v2, Lcom/sdgtl/mediahub/spr/common/di;->g:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sdgtl/mediahub/spr/screen/gs;->a:Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;

    invoke-static {v3}, Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;->c(Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;)Lcom/sdgtl/mediahub/spr/common/di;

    move-result-object v3

    iget-object v3, v3, Lcom/sdgtl/mediahub/spr/common/di;->Q:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/sdgtl/mediahub/spr/download/a;->a(ILjava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3b4

    const-wide/16 v2, 0x0

    cmp-long v2, v15, v2

    if-lez v2, :cond_3cb

    :cond_3b4
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/CharSequence;

    const/4 v3, 0x0

    aput-object v5, v2, v3

    const/4 v3, 0x1

    aput-object v6, v2, v3

    new-instance v3, Lcom/sdgtl/mediahub/spr/screen/gw;

    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-direct {v3, v0, v1}, Lcom/sdgtl/mediahub/spr/screen/gw;-><init>(Lcom/sdgtl/mediahub/spr/screen/gs;I)V

    invoke-virtual {v13, v2, v3}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto/16 :goto_1a4

    :cond_3cb
    const-wide/16 v2, 0x0

    cmp-long v2, v15, v2

    if-gtz v2, :cond_1a4

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/CharSequence;

    const/4 v3, 0x0

    aput-object v7, v2, v3

    const/4 v3, 0x1

    aput-object v6, v2, v3

    new-instance v3, Lcom/sdgtl/mediahub/spr/screen/gx;

    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-direct {v3, v0, v1}, Lcom/sdgtl/mediahub/spr/screen/gx;-><init>(Lcom/sdgtl/mediahub/spr/screen/gs;I)V

    invoke-virtual {v13, v2, v3}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto/16 :goto_1a4

    :cond_3e8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sdgtl/mediahub/spr/screen/gs;->a:Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;

    const v3, 0x7f0a00d0

    invoke-virtual {v2, v3}, Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sdgtl/mediahub/spr/screen/gs;->a:Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;

    const v4, 0x7f0a00cb

    invoke-virtual {v3, v4}, Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sdgtl/mediahub/spr/screen/gs;->a:Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;

    const v5, 0x7f0a00cc

    invoke-virtual {v4, v5}, Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    new-instance v5, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sdgtl/mediahub/spr/screen/gs;->a:Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;

    invoke-direct {v5, v6}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sdgtl/mediahub/spr/screen/gs;->a:Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;

    invoke-static {v6}, Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;->c(Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;)Lcom/sdgtl/mediahub/spr/common/di;

    move-result-object v6

    iget-object v6, v6, Lcom/sdgtl/mediahub/spr/common/di;->j:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sdgtl/mediahub/spr/screen/gs;->a:Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;

    invoke-static {v6}, Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;->c(Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;)Lcom/sdgtl/mediahub/spr/common/di;

    move-result-object v6

    iget-boolean v6, v6, Lcom/sdgtl/mediahub/spr/common/di;->N:Z

    if-eqz v6, :cond_445

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/CharSequence;

    const/4 v6, 0x0

    aput-object v4, v2, v6

    const/4 v4, 0x1

    aput-object v3, v2, v4

    new-instance v3, Lcom/sdgtl/mediahub/spr/screen/gy;

    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-direct {v3, v0, v1}, Lcom/sdgtl/mediahub/spr/screen/gy;-><init>(Lcom/sdgtl/mediahub/spr/screen/gs;I)V

    invoke-virtual {v5, v2, v3}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    :goto_440
    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_1a7

    :cond_445
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/CharSequence;

    const/4 v6, 0x0

    aput-object v4, v3, v6

    const/4 v4, 0x1

    aput-object v2, v3, v4

    new-instance v2, Lcom/sdgtl/mediahub/spr/screen/gz;

    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-direct {v2, v0, v1}, Lcom/sdgtl/mediahub/spr/screen/gz;-><init>(Lcom/sdgtl/mediahub/spr/screen/gs;I)V

    invoke-virtual {v5, v3, v2}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_440
.end method
