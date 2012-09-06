.class final Lcom/google/android/youtube/app/honeycomb/tablet/n;
.super Lcom/google/android/youtube/app/ui/dh;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/android/youtube/core/ui/PagedGridView;

.field final synthetic b:Lcom/google/android/youtube/app/honeycomb/tablet/m;


# direct methods
.method constructor <init>(Lcom/google/android/youtube/app/honeycomb/tablet/m;Landroid/app/Activity;Lcom/google/android/youtube/core/async/UserAuthorizer;Lcom/google/android/youtube/app/a;Lcom/google/android/youtube/core/ui/g;Lcom/google/android/youtube/app/adapter/br;Lcom/google/android/youtube/core/async/ar;Lcom/google/android/youtube/core/b/ae;Lcom/google/android/youtube/core/b/ag;Lcom/google/android/youtube/core/b/ai;Lcom/google/android/youtube/core/Analytics;Lcom/google/android/youtube/core/Analytics$VideoCategory;Lcom/google/android/youtube/core/b/aj;Lcom/google/android/youtube/core/d;Lcom/google/android/youtube/core/ui/PagedGridView;)V
    .registers 31
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
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 155
    move-object/from16 v0, p1

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/n;->b:Lcom/google/android/youtube/app/honeycomb/tablet/m;

    move-object/from16 v0, p15

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/n;->a:Lcom/google/android/youtube/core/ui/PagedGridView;

    move-object v1, p0

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

    move-object/from16 v13, p13

    move-object/from16 v14, p14

    invoke-direct/range {v1 .. v14}, Lcom/google/android/youtube/app/ui/dh;-><init>(Landroid/app/Activity;Lcom/google/android/youtube/core/async/UserAuthorizer;Lcom/google/android/youtube/app/a;Lcom/google/android/youtube/core/ui/g;Lcom/google/android/youtube/app/adapter/br;Lcom/google/android/youtube/core/async/ar;Lcom/google/android/youtube/core/b/ae;Lcom/google/android/youtube/core/b/ag;Lcom/google/android/youtube/core/b/ai;Lcom/google/android/youtube/core/Analytics;Lcom/google/android/youtube/core/Analytics$VideoCategory;Lcom/google/android/youtube/core/b/aj;Lcom/google/android/youtube/core/d;)V

    return-void
.end method


# virtual methods
.method protected final a(Landroid/view/View;Lcom/google/android/youtube/core/model/Video;I)V
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 159
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/n;->b:Lcom/google/android/youtube/app/honeycomb/tablet/m;

    invoke-static {v0}, Lcom/google/android/youtube/app/honeycomb/tablet/m;->a(Lcom/google/android/youtube/app/honeycomb/tablet/m;)Lcom/google/android/youtube/app/honeycomb/tablet/u;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/youtube/app/honeycomb/tablet/u;->a()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 160
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/n;->b:Lcom/google/android/youtube/app/honeycomb/tablet/m;

    invoke-static {v0}, Lcom/google/android/youtube/app/honeycomb/tablet/m;->a(Lcom/google/android/youtube/app/honeycomb/tablet/m;)Lcom/google/android/youtube/app/honeycomb/tablet/u;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/google/android/youtube/app/honeycomb/tablet/u;->a(Landroid/view/View;Lcom/google/android/youtube/core/model/Video;)V

    .line 164
    :goto_15
    return-void

    .line 162
    :cond_16
    invoke-super {p0, p1, p2, p3}, Lcom/google/android/youtube/app/ui/dh;->a(Landroid/view/View;Lcom/google/android/youtube/core/model/Video;I)V

    goto :goto_15
.end method

.method public final a(Lcom/google/android/youtube/core/transfer/Transfer;)V
    .registers 4
    .parameter

    .prologue
    .line 201
    iget-object v0, p1, Lcom/google/android/youtube/core/transfer/Transfer;->c:Lcom/google/android/youtube/core/transfer/Transfer$Status;

    sget-object v1, Lcom/google/android/youtube/core/transfer/Transfer$Status;->COMPLETED:Lcom/google/android/youtube/core/transfer/Transfer$Status;

    if-ne v0, v1, :cond_f

    .line 202
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/n;->b:Lcom/google/android/youtube/app/honeycomb/tablet/m;

    invoke-static {v0}, Lcom/google/android/youtube/app/honeycomb/tablet/m;->a(Lcom/google/android/youtube/app/honeycomb/tablet/m;)Lcom/google/android/youtube/app/honeycomb/tablet/u;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/youtube/app/honeycomb/tablet/u;->b()V

    .line 204
    :cond_f
    invoke-super {p0, p1}, Lcom/google/android/youtube/app/ui/dh;->a(Lcom/google/android/youtube/core/transfer/Transfer;)V

    .line 205
    return-void
.end method

.method protected final a(Landroid/view/View;Lcom/google/android/youtube/core/model/Video;)Z
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 168
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/n;->b:Lcom/google/android/youtube/app/honeycomb/tablet/m;

    invoke-static {v0}, Lcom/google/android/youtube/app/honeycomb/tablet/m;->a(Lcom/google/android/youtube/app/honeycomb/tablet/m;)Lcom/google/android/youtube/app/honeycomb/tablet/u;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/youtube/app/honeycomb/tablet/u;->a()Z

    move-result v0

    if-nez v0, :cond_17

    .line 169
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/n;->a:Lcom/google/android/youtube/core/ui/PagedGridView;

    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/tablet/n;->b:Lcom/google/android/youtube/app/honeycomb/tablet/m;

    invoke-static {v1}, Lcom/google/android/youtube/app/honeycomb/tablet/m;->a(Lcom/google/android/youtube/app/honeycomb/tablet/m;)Lcom/google/android/youtube/app/honeycomb/tablet/u;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/ui/PagedGridView;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    .line 171
    :cond_17
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/n;->b:Lcom/google/android/youtube/app/honeycomb/tablet/m;

    invoke-static {v0}, Lcom/google/android/youtube/app/honeycomb/tablet/m;->a(Lcom/google/android/youtube/app/honeycomb/tablet/m;)Lcom/google/android/youtube/app/honeycomb/tablet/u;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/google/android/youtube/app/honeycomb/tablet/u;->a(Landroid/view/View;Lcom/google/android/youtube/core/model/Video;)V

    .line 172
    const/4 v0, 0x1

    return v0
.end method

.method public final b(Lcom/google/android/youtube/core/transfer/Transfer;)V
    .registers 6
    .parameter

    .prologue
    .line 209
    iget-wide v0, p1, Lcom/google/android/youtube/core/transfer/Transfer;->e:J

    iget-wide v2, p1, Lcom/google/android/youtube/core/transfer/Transfer;->f:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_11

    .line 210
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/n;->b:Lcom/google/android/youtube/app/honeycomb/tablet/m;

    invoke-static {v0}, Lcom/google/android/youtube/app/honeycomb/tablet/m;->a(Lcom/google/android/youtube/app/honeycomb/tablet/m;)Lcom/google/android/youtube/app/honeycomb/tablet/u;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/youtube/app/honeycomb/tablet/u;->b()V

    .line 212
    :cond_11
    invoke-super {p0, p1}, Lcom/google/android/youtube/app/ui/dh;->b(Lcom/google/android/youtube/core/transfer/Transfer;)V

    .line 213
    return-void
.end method

.method public final onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .registers 9
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 185
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/n;->b:Lcom/google/android/youtube/app/honeycomb/tablet/m;

    invoke-static {v0}, Lcom/google/android/youtube/app/honeycomb/tablet/m;->b(Lcom/google/android/youtube/app/honeycomb/tablet/m;)Lcom/google/android/youtube/app/adapter/br;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/google/android/youtube/app/adapter/br;->a(I)Lcom/google/android/youtube/core/model/Video;

    move-result-object v0

    .line 186
    if-eqz v0, :cond_11

    .line 187
    invoke-super/range {p0 .. p5}, Lcom/google/android/youtube/app/ui/dh;->onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z

    move-result v0

    .line 196
    :goto_10
    return v0

    .line 189
    :cond_11
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/n;->b:Lcom/google/android/youtube/app/honeycomb/tablet/m;

    invoke-static {v0}, Lcom/google/android/youtube/app/honeycomb/tablet/m;->b(Lcom/google/android/youtube/app/honeycomb/tablet/m;)Lcom/google/android/youtube/app/adapter/br;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/google/android/youtube/app/adapter/br;->b(I)Lcom/google/android/youtube/core/transfer/Transfer;

    move-result-object v0

    .line 190
    if-eqz v0, :cond_49

    .line 191
    iget-object v1, v0, Lcom/google/android/youtube/core/transfer/Transfer;->h:Lcom/google/android/youtube/core/transfer/d;

    const-string v2, "video_id"

    invoke-virtual {v1, v2}, Lcom/google/android/youtube/core/transfer/d;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 192
    if-nez v1, :cond_49

    .line 193
    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/tablet/n;->b:Lcom/google/android/youtube/app/honeycomb/tablet/m;

    invoke-static {v1}, Lcom/google/android/youtube/app/honeycomb/tablet/m;->a(Lcom/google/android/youtube/app/honeycomb/tablet/m;)Lcom/google/android/youtube/app/honeycomb/tablet/u;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/youtube/app/honeycomb/tablet/u;->a()Z

    move-result v1

    if-nez v1, :cond_3e

    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/tablet/n;->a:Lcom/google/android/youtube/core/ui/PagedGridView;

    iget-object v2, p0, Lcom/google/android/youtube/app/honeycomb/tablet/n;->b:Lcom/google/android/youtube/app/honeycomb/tablet/m;

    invoke-static {v2}, Lcom/google/android/youtube/app/honeycomb/tablet/m;->a(Lcom/google/android/youtube/app/honeycomb/tablet/m;)Lcom/google/android/youtube/app/honeycomb/tablet/u;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/youtube/core/ui/PagedGridView;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    :cond_3e
    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/tablet/n;->b:Lcom/google/android/youtube/app/honeycomb/tablet/m;

    invoke-static {v1}, Lcom/google/android/youtube/app/honeycomb/tablet/m;->a(Lcom/google/android/youtube/app/honeycomb/tablet/m;)Lcom/google/android/youtube/app/honeycomb/tablet/u;

    move-result-object v1

    invoke-virtual {v1, p2, v0}, Lcom/google/android/youtube/app/honeycomb/tablet/u;->a(Landroid/view/View;Lcom/google/android/youtube/core/transfer/Transfer;)V

    const/4 v0, 0x1

    goto :goto_10

    .line 196
    :cond_49
    invoke-super/range {p0 .. p5}, Lcom/google/android/youtube/app/ui/dh;->onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z

    move-result v0

    goto :goto_10
.end method
