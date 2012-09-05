.class final Lcom/sdgtl/mediahub/spr/screen/dv;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# instance fields
.field final synthetic a:Lcom/sdgtl/mediahub/spr/screen/MyMedia;


# direct methods
.method constructor <init>(Lcom/sdgtl/mediahub/spr/screen/MyMedia;)V
    .registers 2

    iput-object p1, p0, Lcom/sdgtl/mediahub/spr/screen/dv;->a:Lcom/sdgtl/mediahub/spr/screen/MyMedia;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/sdgtl/mediahub/spr/screen/dv;)Lcom/sdgtl/mediahub/spr/screen/MyMedia;
    .registers 2

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/dv;->a:Lcom/sdgtl/mediahub/spr/screen/MyMedia;

    return-object v0
.end method


# virtual methods
.method public final onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .registers 26

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sdgtl/mediahub/spr/screen/dv;->a:Lcom/sdgtl/mediahub/spr/screen/MyMedia;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sdgtl/mediahub/spr/screen/dv;->a:Lcom/sdgtl/mediahub/spr/screen/MyMedia;

    invoke-static {v3}, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->a(Lcom/sdgtl/mediahub/spr/screen/MyMedia;)Lcom/sdgtl/mediahub/spr/customview/MyMediaAdapter;

    move-result-object v3

    move/from16 v0, p3

    invoke-virtual {v3, v0}, Lcom/sdgtl/mediahub/spr/customview/MyMediaAdapter;->getItem(I)Lcom/sdgtl/mediahub/spr/common/di;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->a(Lcom/sdgtl/mediahub/spr/screen/MyMedia;Lcom/sdgtl/mediahub/spr/common/di;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sdgtl/mediahub/spr/screen/dv;->a:Lcom/sdgtl/mediahub/spr/screen/MyMedia;

    move-object/from16 v0, p2

    invoke-static {v2, v0}, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->a(Lcom/sdgtl/mediahub/spr/screen/MyMedia;Landroid/view/View;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sdgtl/mediahub/spr/screen/dv;->a:Lcom/sdgtl/mediahub/spr/screen/MyMedia;

    invoke-static {v2}, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->b(Lcom/sdgtl/mediahub/spr/screen/MyMedia;)I

    move-result v2

    const/4 v3, 0x5

    if-eq v2, v3, :cond_493

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sdgtl/mediahub/spr/screen/dv;->a:Lcom/sdgtl/mediahub/spr/screen/MyMedia;

    const v3, 0x7f0a00c4

    invoke-virtual {v2, v3}, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sdgtl/mediahub/spr/screen/dv;->a:Lcom/sdgtl/mediahub/spr/screen/MyMedia;

    const v3, 0x7f0a00d0

    invoke-virtual {v2, v3}, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sdgtl/mediahub/spr/screen/dv;->a:Lcom/sdgtl/mediahub/spr/screen/MyMedia;

    const v3, 0x7f0a00cb

    invoke-virtual {v2, v3}, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sdgtl/mediahub/spr/screen/dv;->a:Lcom/sdgtl/mediahub/spr/screen/MyMedia;

    const v3, 0x7f0a00ca

    invoke-virtual {v2, v3}, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->getText(I)Ljava/lang/CharSequence;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sdgtl/mediahub/spr/screen/dv;->a:Lcom/sdgtl/mediahub/spr/screen/MyMedia;

    const v3, 0x7f0a00c5

    invoke-virtual {v2, v3}, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->getText(I)Ljava/lang/CharSequence;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sdgtl/mediahub/spr/screen/dv;->a:Lcom/sdgtl/mediahub/spr/screen/MyMedia;

    const v3, 0x7f0a00c6

    invoke-virtual {v2, v3}, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->getText(I)Ljava/lang/CharSequence;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sdgtl/mediahub/spr/screen/dv;->a:Lcom/sdgtl/mediahub/spr/screen/MyMedia;

    const v3, 0x7f0a00c9

    invoke-virtual {v2, v3}, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->getText(I)Ljava/lang/CharSequence;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sdgtl/mediahub/spr/screen/dv;->a:Lcom/sdgtl/mediahub/spr/screen/MyMedia;

    const v3, 0x7f0a00c7

    invoke-virtual {v2, v3}, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->getText(I)Ljava/lang/CharSequence;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sdgtl/mediahub/spr/screen/dv;->a:Lcom/sdgtl/mediahub/spr/screen/MyMedia;

    const v3, 0x7f0a00c8

    invoke-virtual {v2, v3}, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->getText(I)Ljava/lang/CharSequence;

    move-result-object v13

    new-instance v14, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sdgtl/mediahub/spr/screen/dv;->a:Lcom/sdgtl/mediahub/spr/screen/MyMedia;

    invoke-direct {v14, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sdgtl/mediahub/spr/screen/dv;->a:Lcom/sdgtl/mediahub/spr/screen/MyMedia;

    invoke-static {v2}, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->d(Lcom/sdgtl/mediahub/spr/screen/MyMedia;)Lcom/sdgtl/mediahub/spr/common/di;

    move-result-object v2

    iget-boolean v2, v2, Lcom/sdgtl/mediahub/spr/common/di;->N:Z

    if-eqz v2, :cond_216

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sdgtl/mediahub/spr/screen/dv;->a:Lcom/sdgtl/mediahub/spr/screen/MyMedia;

    invoke-static {v2}, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->d(Lcom/sdgtl/mediahub/spr/screen/MyMedia;)Lcom/sdgtl/mediahub/spr/common/di;

    move-result-object v2

    iget-object v2, v2, Lcom/sdgtl/mediahub/spr/common/di;->n:Ljava/lang/String;

    invoke-virtual {v14, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    :goto_ae
    const/4 v2, 0x0

    invoke-virtual {v14, v2}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    const-wide/16 v2, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sdgtl/mediahub/spr/screen/dv;->a:Lcom/sdgtl/mediahub/spr/screen/MyMedia;

    invoke-static {v4}, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->d(Lcom/sdgtl/mediahub/spr/screen/MyMedia;)Lcom/sdgtl/mediahub/spr/common/di;

    move-result-object v4

    iget-object v4, v4, Lcom/sdgtl/mediahub/spr/common/di;->Q:Ljava/lang/String;

    if-eqz v4, :cond_e2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sdgtl/mediahub/spr/screen/dv;->a:Lcom/sdgtl/mediahub/spr/screen/MyMedia;

    invoke-static {v2}, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->d(Lcom/sdgtl/mediahub/spr/screen/MyMedia;)Lcom/sdgtl/mediahub/spr/common/di;

    move-result-object v2

    iget-object v2, v2, Lcom/sdgtl/mediahub/spr/common/di;->Q:Ljava/lang/String;

    const-string v3, "01"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_225

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sdgtl/mediahub/spr/screen/dv;->a:Lcom/sdgtl/mediahub/spr/screen/MyMedia;

    invoke-static {v2}, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->d(Lcom/sdgtl/mediahub/spr/screen/MyMedia;)Lcom/sdgtl/mediahub/spr/common/di;

    move-result-object v2

    iget-object v2, v2, Lcom/sdgtl/mediahub/spr/common/di;->K:Ljava/util/ArrayList;

    const-string v3, "01"

    invoke-static {v2, v3}, Lcom/sdgtl/mediahub/spr/common/gk;->a(Ljava/util/ArrayList;Ljava/lang/String;)J

    move-result-wide v2

    :cond_e2
    :goto_e2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sdgtl/mediahub/spr/screen/dv;->a:Lcom/sdgtl/mediahub/spr/screen/MyMedia;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sdgtl/mediahub/spr/screen/dv;->a:Lcom/sdgtl/mediahub/spr/screen/MyMedia;

    invoke-static {v15}, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->d(Lcom/sdgtl/mediahub/spr/screen/MyMedia;)Lcom/sdgtl/mediahub/spr/common/di;

    move-result-object v15

    iget v15, v15, Lcom/sdgtl/mediahub/spr/common/di;->i:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/screen/dv;->a:Lcom/sdgtl/mediahub/spr/screen/MyMedia;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->d(Lcom/sdgtl/mediahub/spr/screen/MyMedia;)Lcom/sdgtl/mediahub/spr/common/di;

    move-result-object v16

    move-object/from16 v0, v16

    iget v0, v0, Lcom/sdgtl/mediahub/spr/common/di;->h:I

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-static {v4, v15, v0, v2, v3}, Lcom/sdgtl/mediahub/spr/common/gk;->a(Landroid/content/Context;IIJ)Z

    move-result v15

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/screen/dv;->a:Lcom/sdgtl/mediahub/spr/screen/MyMedia;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->d(Lcom/sdgtl/mediahub/spr/screen/MyMedia;)Lcom/sdgtl/mediahub/spr/common/di;

    move-result-object v16

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/common/di;->f:Ljava/lang/String;

    move-object/from16 v16, v0

    const-string v17, "02"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_14f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/screen/dv;->a:Lcom/sdgtl/mediahub/spr/screen/MyMedia;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->d(Lcom/sdgtl/mediahub/spr/screen/MyMedia;)Lcom/sdgtl/mediahub/spr/common/di;

    move-result-object v16

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/common/di;->f:Ljava/lang/String;

    move-object/from16 v16, v0

    const-string v17, "04"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_14f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/screen/dv;->a:Lcom/sdgtl/mediahub/spr/screen/MyMedia;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->d(Lcom/sdgtl/mediahub/spr/screen/MyMedia;)Lcom/sdgtl/mediahub/spr/common/di;

    move-result-object v16

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/common/di;->f:Ljava/lang/String;

    move-object/from16 v16, v0

    const-string v17, "06"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_188

    :cond_14f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/screen/dv;->a:Lcom/sdgtl/mediahub/spr/screen/MyMedia;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/screen/dv;->a:Lcom/sdgtl/mediahub/spr/screen/MyMedia;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->d(Lcom/sdgtl/mediahub/spr/screen/MyMedia;)Lcom/sdgtl/mediahub/spr/common/di;

    move-result-object v16

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/common/di;->J:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/sdgtl/mediahub/spr/common/gk;->i(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_188

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/screen/dv;->a:Lcom/sdgtl/mediahub/spr/screen/MyMedia;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/screen/dv;->a:Lcom/sdgtl/mediahub/spr/screen/MyMedia;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->d(Lcom/sdgtl/mediahub/spr/screen/MyMedia;)Lcom/sdgtl/mediahub/spr/common/di;

    move-result-object v16

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/common/di;->C:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/sdgtl/mediahub/spr/common/gk;->h(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_188

    const/4 v4, 0x1

    :cond_188
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/screen/dv;->a:Lcom/sdgtl/mediahub/spr/screen/MyMedia;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/screen/dv;->a:Lcom/sdgtl/mediahub/spr/screen/MyMedia;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->d(Lcom/sdgtl/mediahub/spr/screen/MyMedia;)Lcom/sdgtl/mediahub/spr/common/di;

    move-result-object v17

    move-object/from16 v0, v17

    iget v0, v0, Lcom/sdgtl/mediahub/spr/common/di;->g:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/screen/dv;->a:Lcom/sdgtl/mediahub/spr/screen/MyMedia;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->d(Lcom/sdgtl/mediahub/spr/screen/MyMedia;)Lcom/sdgtl/mediahub/spr/common/di;

    move-result-object v18

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/common/di;->j:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/screen/dv;->a:Lcom/sdgtl/mediahub/spr/screen/MyMedia;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->d(Lcom/sdgtl/mediahub/spr/screen/MyMedia;)Lcom/sdgtl/mediahub/spr/common/di;

    move-result-object v18

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/common/di;->Q:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-static/range {v16 .. v18}, Lcom/sdgtl/mediahub/spr/common/gk;->a(Landroid/content/Context;ILjava/lang/String;)J

    move-result-wide v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/screen/dv;->a:Lcom/sdgtl/mediahub/spr/screen/MyMedia;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->d(Lcom/sdgtl/mediahub/spr/screen/MyMedia;)Lcom/sdgtl/mediahub/spr/common/di;

    move-result-object v18

    move-object/from16 v0, v18

    iget-boolean v0, v0, Lcom/sdgtl/mediahub/spr/common/di;->N:Z

    move/from16 v18, v0

    if-eqz v18, :cond_24d

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sdgtl/mediahub/spr/screen/dv;->a:Lcom/sdgtl/mediahub/spr/screen/MyMedia;

    invoke-static {v2}, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->e(Lcom/sdgtl/mediahub/spr/screen/MyMedia;)Lcom/sdgtl/mediahub/spr/c/a;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sdgtl/mediahub/spr/screen/dv;->a:Lcom/sdgtl/mediahub/spr/screen/MyMedia;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sdgtl/mediahub/spr/screen/dv;->a:Lcom/sdgtl/mediahub/spr/screen/MyMedia;

    invoke-static {v3}, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->d(Lcom/sdgtl/mediahub/spr/screen/MyMedia;)Lcom/sdgtl/mediahub/spr/common/di;

    move-result-object v3

    iget v3, v3, Lcom/sdgtl/mediahub/spr/common/di;->m:I

    const-string v4, "Downloading"

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sdgtl/mediahub/spr/screen/dv;->a:Lcom/sdgtl/mediahub/spr/screen/MyMedia;

    invoke-static {v5}, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->f(Lcom/sdgtl/mediahub/spr/screen/MyMedia;)I

    move-result v5

    invoke-static {v2, v3, v4, v5}, Lcom/sdgtl/mediahub/spr/c/a;->a(Landroid/content/Context;ILjava/lang/String;I)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-gtz v2, :cond_1ff

    if-eqz v15, :cond_237

    :cond_1ff
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/CharSequence;

    const/4 v3, 0x0

    aput-object v7, v2, v3

    new-instance v3, Lcom/sdgtl/mediahub/spr/screen/dw;

    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-direct {v3, v0, v1}, Lcom/sdgtl/mediahub/spr/screen/dw;-><init>(Lcom/sdgtl/mediahub/spr/screen/dv;I)V

    invoke-virtual {v14, v2, v3}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    :cond_211
    :goto_211
    invoke-virtual {v14}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    :goto_214
    const/4 v2, 0x1

    return v2

    :cond_216
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sdgtl/mediahub/spr/screen/dv;->a:Lcom/sdgtl/mediahub/spr/screen/MyMedia;

    invoke-static {v2}, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->d(Lcom/sdgtl/mediahub/spr/screen/MyMedia;)Lcom/sdgtl/mediahub/spr/common/di;

    move-result-object v2

    iget-object v2, v2, Lcom/sdgtl/mediahub/spr/common/di;->j:Ljava/lang/String;

    invoke-virtual {v14, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    goto/16 :goto_ae

    :cond_225
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sdgtl/mediahub/spr/screen/dv;->a:Lcom/sdgtl/mediahub/spr/screen/MyMedia;

    invoke-static {v2}, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->d(Lcom/sdgtl/mediahub/spr/screen/MyMedia;)Lcom/sdgtl/mediahub/spr/common/di;

    move-result-object v2

    iget-object v2, v2, Lcom/sdgtl/mediahub/spr/common/di;->K:Ljava/util/ArrayList;

    const-string v3, "02"

    invoke-static {v2, v3}, Lcom/sdgtl/mediahub/spr/common/gk;->a(Ljava/util/ArrayList;Ljava/lang/String;)J

    move-result-wide v2

    goto/16 :goto_e2

    :cond_237
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/CharSequence;

    const/4 v3, 0x0

    aput-object v8, v2, v3

    const/4 v3, 0x1

    aput-object v7, v2, v3

    new-instance v3, Lcom/sdgtl/mediahub/spr/screen/ef;

    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-direct {v3, v0, v1}, Lcom/sdgtl/mediahub/spr/screen/ef;-><init>(Lcom/sdgtl/mediahub/spr/screen/dv;I)V

    invoke-virtual {v14, v2, v3}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_211

    :cond_24d
    if-eqz v15, :cond_265

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/CharSequence;

    const/4 v3, 0x0

    aput-object v11, v2, v3

    const/4 v3, 0x1

    aput-object v6, v2, v3

    new-instance v3, Lcom/sdgtl/mediahub/spr/screen/eg;

    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-direct {v3, v0, v1}, Lcom/sdgtl/mediahub/spr/screen/eg;-><init>(Lcom/sdgtl/mediahub/spr/screen/dv;I)V

    invoke-virtual {v14, v2, v3}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_211

    :cond_265
    const-wide/16 v18, 0x0

    cmp-long v7, v16, v18

    if-lez v7, :cond_283

    if-eqz v4, :cond_283

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/CharSequence;

    const/4 v3, 0x0

    aput-object v11, v2, v3

    const/4 v3, 0x1

    aput-object v6, v2, v3

    new-instance v3, Lcom/sdgtl/mediahub/spr/screen/eh;

    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-direct {v3, v0, v1}, Lcom/sdgtl/mediahub/spr/screen/eh;-><init>(Lcom/sdgtl/mediahub/spr/screen/dv;I)V

    invoke-virtual {v14, v2, v3}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_211

    :cond_283
    const-wide/16 v18, 0x0

    cmp-long v7, v16, v18

    if-gtz v7, :cond_29f

    if-eqz v4, :cond_29f

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/CharSequence;

    const/4 v3, 0x0

    aput-object v6, v2, v3

    new-instance v3, Lcom/sdgtl/mediahub/spr/screen/ei;

    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-direct {v3, v0, v1}, Lcom/sdgtl/mediahub/spr/screen/ei;-><init>(Lcom/sdgtl/mediahub/spr/screen/dv;I)V

    invoke-virtual {v14, v2, v3}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto/16 :goto_211

    :cond_29f
    cmp-long v2, v16, v2

    if-ltz v2, :cond_438

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sdgtl/mediahub/spr/screen/dv;->a:Lcom/sdgtl/mediahub/spr/screen/MyMedia;

    invoke-static {v2}, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->d(Lcom/sdgtl/mediahub/spr/screen/MyMedia;)Lcom/sdgtl/mediahub/spr/common/di;

    move-result-object v2

    iget-object v2, v2, Lcom/sdgtl/mediahub/spr/common/di;->f:Ljava/lang/String;

    const-string v3, "03"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2c7

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sdgtl/mediahub/spr/screen/dv;->a:Lcom/sdgtl/mediahub/spr/screen/MyMedia;

    invoke-static {v2}, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->d(Lcom/sdgtl/mediahub/spr/screen/MyMedia;)Lcom/sdgtl/mediahub/spr/common/di;

    move-result-object v2

    iget-object v2, v2, Lcom/sdgtl/mediahub/spr/common/di;->f:Ljava/lang/String;

    const-string v3, "04"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2e1

    :cond_2c7
    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/CharSequence;

    const/4 v3, 0x0

    aput-object v8, v2, v3

    const/4 v3, 0x1

    aput-object v11, v2, v3

    const/4 v3, 0x2

    aput-object v6, v2, v3

    new-instance v3, Lcom/sdgtl/mediahub/spr/screen/ej;

    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-direct {v3, v0, v1}, Lcom/sdgtl/mediahub/spr/screen/ej;-><init>(Lcom/sdgtl/mediahub/spr/screen/dv;I)V

    invoke-virtual {v14, v2, v3}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto/16 :goto_211

    :cond_2e1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sdgtl/mediahub/spr/screen/dv;->a:Lcom/sdgtl/mediahub/spr/screen/MyMedia;

    invoke-static {v2}, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->e(Lcom/sdgtl/mediahub/spr/screen/MyMedia;)Lcom/sdgtl/mediahub/spr/c/a;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sdgtl/mediahub/spr/screen/dv;->a:Lcom/sdgtl/mediahub/spr/screen/MyMedia;

    invoke-static {v2}, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->d(Lcom/sdgtl/mediahub/spr/screen/MyMedia;)Lcom/sdgtl/mediahub/spr/common/di;

    move-result-object v2

    iget v2, v2, Lcom/sdgtl/mediahub/spr/common/di;->g:I

    const-string v3, "01"

    invoke-static {v2, v3}, Lcom/sdgtl/mediahub/spr/c/a;->b(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sdgtl/mediahub/spr/screen/dv;->a:Lcom/sdgtl/mediahub/spr/screen/MyMedia;

    invoke-static {v3}, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->e(Lcom/sdgtl/mediahub/spr/screen/MyMedia;)Lcom/sdgtl/mediahub/spr/c/a;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sdgtl/mediahub/spr/screen/dv;->a:Lcom/sdgtl/mediahub/spr/screen/MyMedia;

    invoke-static {v3}, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->d(Lcom/sdgtl/mediahub/spr/screen/MyMedia;)Lcom/sdgtl/mediahub/spr/common/di;

    move-result-object v3

    iget v3, v3, Lcom/sdgtl/mediahub/spr/common/di;->g:I

    const-string v4, "02"

    invoke-static {v3, v4}, Lcom/sdgtl/mediahub/spr/c/a;->b(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "Downloaded"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_33c

    const-string v4, "Downloaded"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_33c

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/CharSequence;

    const/4 v3, 0x0

    aput-object v8, v2, v3

    const/4 v3, 0x1

    aput-object v12, v2, v3

    const/4 v3, 0x2

    aput-object v13, v2, v3

    const/4 v3, 0x3

    aput-object v6, v2, v3

    new-instance v3, Lcom/sdgtl/mediahub/spr/screen/ek;

    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-direct {v3, v0, v1}, Lcom/sdgtl/mediahub/spr/screen/ek;-><init>(Lcom/sdgtl/mediahub/spr/screen/dv;I)V

    invoke-virtual {v14, v2, v3}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto/16 :goto_211

    :cond_33c
    const-string v4, "Downloaded"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_366

    const-string v4, "Downloading"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_366

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/CharSequence;

    const/4 v3, 0x0

    aput-object v8, v2, v3

    const/4 v3, 0x1

    aput-object v12, v2, v3

    const/4 v3, 0x2

    aput-object v6, v2, v3

    new-instance v3, Lcom/sdgtl/mediahub/spr/screen/el;

    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-direct {v3, v0, v1}, Lcom/sdgtl/mediahub/spr/screen/el;-><init>(Lcom/sdgtl/mediahub/spr/screen/dv;I)V

    invoke-virtual {v14, v2, v3}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto/16 :goto_211

    :cond_366
    const-string v4, "Downloaded"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_393

    const-string v4, "Downloadable"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_393

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/CharSequence;

    const/4 v3, 0x0

    aput-object v8, v2, v3

    const/4 v3, 0x1

    aput-object v12, v2, v3

    const/4 v3, 0x2

    aput-object v10, v2, v3

    const/4 v3, 0x3

    aput-object v6, v2, v3

    new-instance v3, Lcom/sdgtl/mediahub/spr/screen/em;

    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-direct {v3, v0, v1}, Lcom/sdgtl/mediahub/spr/screen/em;-><init>(Lcom/sdgtl/mediahub/spr/screen/dv;I)V

    invoke-virtual {v14, v2, v3}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto/16 :goto_211

    :cond_393
    const-string v4, "Downloading"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3bd

    const-string v4, "Downloaded"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3bd

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/CharSequence;

    const/4 v3, 0x0

    aput-object v8, v2, v3

    const/4 v3, 0x1

    aput-object v13, v2, v3

    const/4 v3, 0x2

    aput-object v6, v2, v3

    new-instance v3, Lcom/sdgtl/mediahub/spr/screen/dx;

    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-direct {v3, v0, v1}, Lcom/sdgtl/mediahub/spr/screen/dx;-><init>(Lcom/sdgtl/mediahub/spr/screen/dv;I)V

    invoke-virtual {v14, v2, v3}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto/16 :goto_211

    :cond_3bd
    const-string v4, "Downloadable"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_41e

    const-string v2, "Downloaded"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_41e

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sdgtl/mediahub/spr/screen/dv;->a:Lcom/sdgtl/mediahub/spr/screen/MyMedia;

    invoke-static {v2}, Lcom/sdgtl/mediahub/spr/a/a;->g(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_3e7

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sdgtl/mediahub/spr/screen/dv;->a:Lcom/sdgtl/mediahub/spr/screen/MyMedia;

    invoke-static {v2}, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->d(Lcom/sdgtl/mediahub/spr/screen/MyMedia;)Lcom/sdgtl/mediahub/spr/common/di;

    move-result-object v2

    iget-object v2, v2, Lcom/sdgtl/mediahub/spr/common/di;->G:Ljava/lang/String;

    invoke-static {v2}, Lcom/sdgtl/mediahub/spr/common/gk;->m(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_404

    :cond_3e7
    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/CharSequence;

    const/4 v3, 0x0

    aput-object v8, v2, v3

    const/4 v3, 0x1

    aput-object v13, v2, v3

    const/4 v3, 0x2

    aput-object v9, v2, v3

    const/4 v3, 0x3

    aput-object v6, v2, v3

    new-instance v3, Lcom/sdgtl/mediahub/spr/screen/dy;

    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-direct {v3, v0, v1}, Lcom/sdgtl/mediahub/spr/screen/dy;-><init>(Lcom/sdgtl/mediahub/spr/screen/dv;I)V

    invoke-virtual {v14, v2, v3}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto/16 :goto_211

    :cond_404
    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/CharSequence;

    const/4 v3, 0x0

    aput-object v8, v2, v3

    const/4 v3, 0x1

    aput-object v11, v2, v3

    const/4 v3, 0x2

    aput-object v6, v2, v3

    new-instance v3, Lcom/sdgtl/mediahub/spr/screen/dz;

    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-direct {v3, v0, v1}, Lcom/sdgtl/mediahub/spr/screen/dz;-><init>(Lcom/sdgtl/mediahub/spr/screen/dv;I)V

    invoke-virtual {v14, v2, v3}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto/16 :goto_211

    :cond_41e
    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/CharSequence;

    const/4 v3, 0x0

    aput-object v8, v2, v3

    const/4 v3, 0x1

    aput-object v12, v2, v3

    const/4 v3, 0x2

    aput-object v6, v2, v3

    new-instance v3, Lcom/sdgtl/mediahub/spr/screen/ea;

    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-direct {v3, v0, v1}, Lcom/sdgtl/mediahub/spr/screen/ea;-><init>(Lcom/sdgtl/mediahub/spr/screen/dv;I)V

    invoke-virtual {v14, v2, v3}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto/16 :goto_211

    :cond_438
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sdgtl/mediahub/spr/screen/dv;->a:Lcom/sdgtl/mediahub/spr/screen/MyMedia;

    invoke-static {v2}, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->g(Lcom/sdgtl/mediahub/spr/screen/MyMedia;)Lcom/sdgtl/mediahub/spr/download/a;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sdgtl/mediahub/spr/screen/dv;->a:Lcom/sdgtl/mediahub/spr/screen/MyMedia;

    invoke-static {v2}, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->d(Lcom/sdgtl/mediahub/spr/screen/MyMedia;)Lcom/sdgtl/mediahub/spr/common/di;

    move-result-object v2

    iget v2, v2, Lcom/sdgtl/mediahub/spr/common/di;->g:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sdgtl/mediahub/spr/screen/dv;->a:Lcom/sdgtl/mediahub/spr/screen/MyMedia;

    invoke-static {v3}, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->d(Lcom/sdgtl/mediahub/spr/screen/MyMedia;)Lcom/sdgtl/mediahub/spr/common/di;

    move-result-object v3

    iget-object v3, v3, Lcom/sdgtl/mediahub/spr/common/di;->Q:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/sdgtl/mediahub/spr/download/a;->a(ILjava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_45f

    const-wide/16 v2, 0x0

    cmp-long v2, v16, v2

    if-lez v2, :cond_476

    :cond_45f
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/CharSequence;

    const/4 v3, 0x0

    aput-object v5, v2, v3

    const/4 v3, 0x1

    aput-object v6, v2, v3

    new-instance v3, Lcom/sdgtl/mediahub/spr/screen/eb;

    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-direct {v3, v0, v1}, Lcom/sdgtl/mediahub/spr/screen/eb;-><init>(Lcom/sdgtl/mediahub/spr/screen/dv;I)V

    invoke-virtual {v14, v2, v3}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto/16 :goto_211

    :cond_476
    const-wide/16 v2, 0x0

    cmp-long v2, v16, v2

    if-gtz v2, :cond_211

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/CharSequence;

    const/4 v3, 0x0

    aput-object v8, v2, v3

    const/4 v3, 0x1

    aput-object v6, v2, v3

    new-instance v3, Lcom/sdgtl/mediahub/spr/screen/ec;

    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-direct {v3, v0, v1}, Lcom/sdgtl/mediahub/spr/screen/ec;-><init>(Lcom/sdgtl/mediahub/spr/screen/dv;I)V

    invoke-virtual {v14, v2, v3}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto/16 :goto_211

    :cond_493
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sdgtl/mediahub/spr/screen/dv;->a:Lcom/sdgtl/mediahub/spr/screen/MyMedia;

    const v3, 0x7f0a00d0

    invoke-virtual {v2, v3}, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sdgtl/mediahub/spr/screen/dv;->a:Lcom/sdgtl/mediahub/spr/screen/MyMedia;

    const v4, 0x7f0a00cb

    invoke-virtual {v3, v4}, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sdgtl/mediahub/spr/screen/dv;->a:Lcom/sdgtl/mediahub/spr/screen/MyMedia;

    const v5, 0x7f0a00cc

    invoke-virtual {v4, v5}, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    new-instance v5, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sdgtl/mediahub/spr/screen/dv;->a:Lcom/sdgtl/mediahub/spr/screen/MyMedia;

    invoke-direct {v5, v6}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sdgtl/mediahub/spr/screen/dv;->a:Lcom/sdgtl/mediahub/spr/screen/MyMedia;

    invoke-static {v6}, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->d(Lcom/sdgtl/mediahub/spr/screen/MyMedia;)Lcom/sdgtl/mediahub/spr/common/di;

    move-result-object v6

    iget-object v6, v6, Lcom/sdgtl/mediahub/spr/common/di;->j:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sdgtl/mediahub/spr/screen/dv;->a:Lcom/sdgtl/mediahub/spr/screen/MyMedia;

    invoke-static {v6}, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->d(Lcom/sdgtl/mediahub/spr/screen/MyMedia;)Lcom/sdgtl/mediahub/spr/common/di;

    move-result-object v6

    iget-boolean v6, v6, Lcom/sdgtl/mediahub/spr/common/di;->N:Z

    if-eqz v6, :cond_4f4

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/CharSequence;

    const/4 v6, 0x0

    aput-object v4, v2, v6

    const/4 v4, 0x1

    aput-object v3, v2, v4

    new-instance v3, Lcom/sdgtl/mediahub/spr/screen/ed;

    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-direct {v3, v0, v1}, Lcom/sdgtl/mediahub/spr/screen/ed;-><init>(Lcom/sdgtl/mediahub/spr/screen/dv;I)V

    invoke-virtual {v5, v2, v3}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    :goto_4ef
    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_214

    :cond_4f4
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/CharSequence;

    const/4 v6, 0x0

    aput-object v4, v3, v6

    const/4 v4, 0x1

    aput-object v2, v3, v4

    new-instance v2, Lcom/sdgtl/mediahub/spr/screen/ee;

    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-direct {v2, v0, v1}, Lcom/sdgtl/mediahub/spr/screen/ee;-><init>(Lcom/sdgtl/mediahub/spr/screen/dv;I)V

    invoke-virtual {v5, v3, v2}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_4ef
.end method
