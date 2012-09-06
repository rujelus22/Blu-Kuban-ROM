.class public abstract Lcom/google/googlenav/ui/wizard/B;
.super Lcom/google/googlenav/ui/wizard/C;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# instance fields
.field protected a:Lcom/google/googlenav/J;

.field protected b:Lax/L;

.field c:Ljava/lang/String;

.field private i:Lcom/google/googlenav/ui/view/dialog/bO;


# direct methods
.method protected constructor <init>(Lcom/google/googlenav/ui/wizard/ju;)V
    .registers 3
    .parameter

    .prologue
    .line 84
    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/wizard/C;-><init>(Lcom/google/googlenav/ui/wizard/ju;)V

    .line 85
    invoke-static {}, Lax/l;->a()Lax/l;

    move-result-object v0

    invoke-virtual {v0}, Lax/l;->c()Lax/L;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/B;->b:Lax/L;

    .line 86
    return-void
.end method


# virtual methods
.method protected a(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 241
    return-void
.end method

.method public a(Lcom/google/googlenav/J;Ljava/lang/String;Z)V
    .registers 7
    .parameter
    .parameter
    .parameter

    .prologue
    .line 102
    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/B;->a:Lcom/google/googlenav/J;

    .line 105
    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/B;->o()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 116
    :goto_8
    return-void

    .line 109
    :cond_9
    iput-object p2, p0, Lcom/google/googlenav/ui/wizard/B;->c:Ljava/lang/String;

    .line 110
    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/B;->j()V

    .line 112
    if-eqz p3, :cond_18

    .line 113
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/B;->b:Lax/L;

    const/4 v1, 0x0

    sget-object v2, Lax/I;->b:Lax/I;

    invoke-interface {v0, v1, v2}, Lax/L;->a(ZLax/I;)V

    .line 115
    :cond_18
    const/4 v0, 0x1

    invoke-interface {p1, v0}, Lcom/google/googlenav/J;->c(Z)V

    goto :goto_8
.end method

.method protected a(Z)V
    .registers 14
    .parameter

    .prologue
    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    const/4 v1, 0x0

    .line 125
    invoke-static {}, Lax/l;->a()Lax/l;

    move-result-object v3

    .line 127
    new-instance v4, Lcom/google/googlenav/ui/wizard/eB;

    invoke-virtual {v3}, Lax/l;->e()Lax/m;

    move-result-object v0

    invoke-direct {v4, v0}, Lcom/google/googlenav/ui/wizard/eB;-><init>(Lax/m;)V

    .line 129
    new-instance v5, Lcom/google/googlenav/ui/wizard/eD;

    invoke-virtual {v3}, Lax/l;->f()Lax/m;

    move-result-object v0

    const/16 v2, 0x2f6

    invoke-direct {v5, v0, v2}, Lcom/google/googlenav/ui/wizard/eD;-><init>(Lax/m;I)V

    .line 132
    new-instance v6, Lcom/google/googlenav/ui/wizard/eD;

    invoke-virtual {v3}, Lax/l;->g()Lax/m;

    move-result-object v0

    invoke-direct {v6, v0}, Lcom/google/googlenav/ui/wizard/eD;-><init>(Lax/m;)V

    .line 138
    invoke-static {}, Lcom/google/googlenav/K;->a()Lcom/google/googlenav/K;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/K;->j()Z

    move-result v0

    .line 139
    if-eqz v0, :cond_101

    new-instance v0, Lcom/google/googlenav/ui/wizard/eD;

    invoke-virtual {v3}, Lax/l;->h()Lax/m;

    move-result-object v2

    const/16 v7, 0x2f1

    invoke-direct {v0, v2, v7}, Lcom/google/googlenav/ui/wizard/eD;-><init>(Lax/m;I)V

    .line 142
    :goto_3a
    new-instance v7, Lcom/google/googlenav/ui/wizard/eD;

    invoke-virtual {v3}, Lax/l;->i()Lax/m;

    move-result-object v2

    const/16 v8, 0x2f4

    invoke-direct {v7, v2, v8}, Lcom/google/googlenav/ui/wizard/eD;-><init>(Lax/m;I)V

    .line 144
    if-eqz p1, :cond_104

    move-object v2, v1

    .line 149
    :goto_48
    const/4 v3, 0x6

    new-array v3, v3, [Lcom/google/googlenav/ui/wizard/eH;

    aput-object v5, v3, v9

    aput-object v6, v3, v10

    aput-object v1, v3, v11

    const/4 v6, 0x3

    aput-object v0, v3, v6

    const/4 v6, 0x4

    aput-object v2, v3, v6

    const/4 v6, 0x5

    aput-object v7, v3, v6

    invoke-static {v3}, Lcom/google/common/collect/cx;->a([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v3

    .line 152
    :cond_5e
    invoke-interface {v3, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5e

    .line 155
    new-instance v6, Lcom/google/googlenav/ui/wizard/aW;

    const/16 v8, 0x2f5

    invoke-direct {v6, v3, v8}, Lcom/google/googlenav/ui/wizard/aW;-><init>(Ljava/util/List;I)V

    .line 161
    new-array v3, v11, [Lcom/google/googlenav/ui/wizard/eH;

    aput-object v4, v3, v9

    aput-object v5, v3, v10

    invoke-static {v3}, Lcom/google/common/collect/cx;->a([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v3

    .line 162
    new-instance v4, Lcom/google/googlenav/ui/wizard/aW;

    invoke-direct {v4, v3}, Lcom/google/googlenav/ui/wizard/aW;-><init>(Ljava/util/List;)V

    .line 165
    new-instance v3, Lcom/google/googlenav/ui/wizard/eE;

    iget-object v5, p0, Lcom/google/googlenav/ui/wizard/B;->d:Lcom/google/googlenav/ui/wizard/ju;

    invoke-direct {v3, p0, v5}, Lcom/google/googlenav/ui/wizard/eE;-><init>(Lcom/google/googlenav/ui/wizard/B;Lcom/google/googlenav/ui/wizard/ju;)V

    .line 166
    if-nez p1, :cond_9f

    invoke-static {}, Lcom/google/googlenav/K;->L()Z

    move-result v5

    if-eqz v5, :cond_9f

    .line 167
    new-instance v5, Lcom/google/googlenav/ui/view/dialog/bO;

    iget-object v8, p0, Lcom/google/googlenav/ui/wizard/B;->d:Lcom/google/googlenav/ui/wizard/ju;

    invoke-direct {v5, v8}, Lcom/google/googlenav/ui/view/dialog/bO;-><init>(Lcom/google/googlenav/ui/wizard/ju;)V

    iput-object v5, p0, Lcom/google/googlenav/ui/wizard/B;->i:Lcom/google/googlenav/ui/view/dialog/bO;

    .line 168
    const/16 v5, 0x361

    invoke-static {v5}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v5

    const-string v8, "offline"

    iget-object v9, p0, Lcom/google/googlenav/ui/wizard/B;->i:Lcom/google/googlenav/ui/view/dialog/bO;

    invoke-virtual {v3, v5, v8, v9}, Lcom/google/googlenav/ui/wizard/eE;->a(Ljava/lang/String;Ljava/lang/String;Lcom/google/googlenav/ui/view/dialog/bO;)V

    .line 171
    :cond_9f
    const/16 v5, 0x57c

    invoke-static {v5}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v5

    const-string v8, "stars"

    invoke-virtual {v3, v5, v8, v4}, Lcom/google/googlenav/ui/wizard/eE;->a(Ljava/lang/String;Ljava/lang/String;Lcom/google/googlenav/ui/wizard/eH;)V

    .line 173
    const/16 v4, 0x433

    invoke-static {v4}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "recent"

    invoke-virtual {v3, v4, v5, v6}, Lcom/google/googlenav/ui/wizard/eE;->a(Ljava/lang/String;Ljava/lang/String;Lcom/google/googlenav/ui/wizard/eH;)V

    .line 175
    if-eqz v1, :cond_c2

    .line 176
    const/16 v4, 0xf9

    invoke-static {v4}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "directions"

    invoke-virtual {v3, v4, v5, v1}, Lcom/google/googlenav/ui/wizard/eE;->a(Ljava/lang/String;Ljava/lang/String;Lcom/google/googlenav/ui/wizard/eH;)V

    .line 179
    :cond_c2
    if-eqz v2, :cond_cf

    .line 180
    const/16 v1, 0x2e0

    invoke-static {v1}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v1

    const-string v4, "mymaps"

    invoke-virtual {v3, v1, v4, v2}, Lcom/google/googlenav/ui/wizard/eE;->a(Ljava/lang/String;Ljava/lang/String;Lcom/google/googlenav/ui/wizard/eH;)V

    .line 182
    :cond_cf
    if-eqz v0, :cond_dc

    .line 183
    const/16 v1, 0x71

    invoke-static {v1}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "checked-in"

    invoke-virtual {v3, v1, v2, v0}, Lcom/google/googlenav/ui/wizard/eE;->a(Ljava/lang/String;Ljava/lang/String;Lcom/google/googlenav/ui/wizard/eH;)V

    .line 186
    :cond_dc
    const/16 v0, 0x3ec

    invoke-static {v0}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "rated"

    invoke-virtual {v3, v0, v1, v7}, Lcom/google/googlenav/ui/wizard/eE;->a(Ljava/lang/String;Ljava/lang/String;Lcom/google/googlenav/ui/wizard/eH;)V

    .line 188
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/B;->c:Ljava/lang/String;

    if-eqz v0, :cond_111

    .line 189
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/B;->c:Ljava/lang/String;

    invoke-virtual {v3, v0}, Lcom/google/googlenav/ui/wizard/eE;->a(Ljava/lang/String;)V

    .line 195
    :goto_f0
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/B;->h:Lcom/google/googlenav/ui/view/android/bb;

    if-eqz v0, :cond_f9

    .line 196
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/B;->h:Lcom/google/googlenav/ui/view/android/bb;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/android/bb;->hide()V

    .line 199
    :cond_f9
    iput-object v3, p0, Lcom/google/googlenav/ui/wizard/B;->h:Lcom/google/googlenav/ui/view/android/bb;

    .line 200
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/B;->h:Lcom/google/googlenav/ui/view/android/bb;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/android/bb;->show()V

    .line 201
    return-void

    :cond_101
    move-object v0, v1

    .line 139
    goto/16 :goto_3a

    .line 144
    :cond_104
    new-instance v2, Lcom/google/googlenav/ui/wizard/eA;

    invoke-virtual {v3}, Lax/l;->j()Lax/m;

    move-result-object v3

    const/16 v8, 0x2f3

    invoke-direct {v2, v3, v8}, Lcom/google/googlenav/ui/wizard/eA;-><init>(Lax/m;I)V

    goto/16 :goto_48

    .line 192
    :cond_111
    const-string v0, "stars"

    invoke-virtual {v3, v0}, Lcom/google/googlenav/ui/wizard/eE;->a(Ljava/lang/String;)V

    goto :goto_f0
.end method

.method protected b()V
    .registers 2

    .prologue
    .line 205
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/wizard/B;->a(Z)V

    .line 206
    return-void
.end method

.method protected b(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .registers 7
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 244
    const/4 v0, 0x0

    return v0
.end method

.method protected c()V
    .registers 1

    .prologue
    .line 210
    invoke-super {p0}, Lcom/google/googlenav/ui/wizard/C;->c()V

    .line 211
    return-void
.end method

.method public h()V
    .registers 1

    .prologue
    .line 215
    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/B;->a()V

    .line 216
    return-void
.end method

.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 7
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 220
    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/B;->o()Z

    move-result v0

    if-nez v0, :cond_7

    .line 227
    :goto_6
    return-void

    .line 226
    :cond_7
    invoke-virtual/range {p0 .. p5}, Lcom/google/googlenav/ui/wizard/B;->a(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    goto :goto_6
.end method

.method public final onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .registers 7
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 231
    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/B;->o()Z

    move-result v0

    if-nez v0, :cond_8

    .line 235
    const/4 v0, 0x0

    .line 237
    :goto_7
    return v0

    :cond_8
    invoke-virtual/range {p0 .. p5}, Lcom/google/googlenav/ui/wizard/B;->b(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z

    move-result v0

    goto :goto_7
.end method
