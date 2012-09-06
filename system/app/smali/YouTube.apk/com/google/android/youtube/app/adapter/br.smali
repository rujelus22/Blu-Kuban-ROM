.class public final Lcom/google/android/youtube/app/adapter/br;
.super Lcom/google/android/youtube/app/adapter/bt;
.source "SourceFile"


# instance fields
.field private final i:Lcom/google/android/youtube/app/ui/p;

.field private final j:Lcom/google/android/youtube/app/ui/ToolbarHelper;

.field private final k:Ljava/util/List;

.field private final l:Ljava/util/Map;


# direct methods
.method private constructor <init>(Landroid/app/Activity;Lcom/google/android/youtube/app/ui/p;Lcom/google/android/youtube/app/ui/p;Lcom/google/android/youtube/app/ui/ToolbarHelper;Lcom/google/android/youtube/app/ui/ToolbarHelper;)V
    .registers 14
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 74
    const/4 v6, 0x1

    sget v7, Lcom/google/android/youtube/app/adapter/br;->f:I

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, v2

    move-object v5, v2

    invoke-direct/range {v0 .. v7}, Lcom/google/android/youtube/app/adapter/bt;-><init>(Landroid/app/Activity;Ljava/util/concurrent/ConcurrentHashMap;Lcom/google/android/youtube/app/ui/p;Lcom/google/android/youtube/app/ui/ToolbarHelper;Lcom/google/android/youtube/app/prefetch/d;II)V

    .line 75
    iput-object p3, p0, Lcom/google/android/youtube/app/adapter/br;->i:Lcom/google/android/youtube/app/ui/p;

    .line 76
    iput-object v2, p0, Lcom/google/android/youtube/app/adapter/br;->j:Lcom/google/android/youtube/app/ui/ToolbarHelper;

    .line 77
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/google/android/youtube/app/adapter/br;->k:Ljava/util/List;

    .line 78
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/youtube/app/adapter/br;->l:Ljava/util/Map;

    .line 79
    return-void
.end method

.method public static a(Landroid/app/Activity;)Lcom/google/android/youtube/app/adapter/br;
    .registers 7
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 65
    new-instance v0, Lcom/google/android/youtube/app/adapter/br;

    move-object v1, p0

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-direct/range {v0 .. v5}, Lcom/google/android/youtube/app/adapter/br;-><init>(Landroid/app/Activity;Lcom/google/android/youtube/app/ui/p;Lcom/google/android/youtube/app/ui/p;Lcom/google/android/youtube/app/ui/ToolbarHelper;Lcom/google/android/youtube/app/ui/ToolbarHelper;)V

    return-object v0
.end method

.method public static a(Landroid/app/Activity;Lcom/google/android/youtube/app/ui/p;Lcom/google/android/youtube/app/ui/p;)Lcom/google/android/youtube/app/adapter/br;
    .registers 9
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 50
    const-string v0, "videoContextualMenu may not be null"

    invoke-static {p1, v0}, Lcom/google/android/youtube/core/utils/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    const-string v0, "transferContextualmenu may not be null"

    invoke-static {p2, v0}, Lcom/google/android/youtube/core/utils/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    new-instance v0, Lcom/google/android/youtube/app/adapter/br;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/youtube/app/adapter/br;-><init>(Landroid/app/Activity;Lcom/google/android/youtube/app/ui/p;Lcom/google/android/youtube/app/ui/p;Lcom/google/android/youtube/app/ui/ToolbarHelper;Lcom/google/android/youtube/app/ui/ToolbarHelper;)V

    return-object v0
.end method


# virtual methods
.method public final a(I)Lcom/google/android/youtube/core/model/Video;
    .registers 4
    .parameter

    .prologue
    .line 149
    invoke-virtual {p0, p1}, Lcom/google/android/youtube/app/adapter/br;->getItemViewType(I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_16

    iget-object v0, p0, Lcom/google/android/youtube/app/adapter/br;->k:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sub-int v0, p1, v0

    invoke-super {p0, v0}, Lcom/google/android/youtube/app/adapter/bt;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/model/Video;

    :goto_15
    return-object v0

    :cond_16
    const/4 v0, 0x0

    goto :goto_15
.end method

.method public final a()V
    .registers 2

    .prologue
    .line 128
    iget-object v0, p0, Lcom/google/android/youtube/app/adapter/br;->k:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 129
    invoke-super {p0}, Lcom/google/android/youtube/app/adapter/bt;->a()V

    .line 130
    return-void
.end method

.method public final a(Lcom/google/android/youtube/core/transfer/Transfer;)V
    .registers 6
    .parameter

    .prologue
    .line 82
    iget-object v0, p0, Lcom/google/android/youtube/app/adapter/br;->k:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 83
    if-gez v0, :cond_37

    .line 84
    iget-object v0, p0, Lcom/google/android/youtube/app/adapter/br;->k:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 89
    :goto_d
    invoke-super {p0}, Lcom/google/android/youtube/app/adapter/bt;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_14
    if-ltz v1, :cond_3d

    invoke-super {p0, v1}, Lcom/google/android/youtube/app/adapter/bt;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/model/Video;

    iget-object v2, p1, Lcom/google/android/youtube/core/transfer/Transfer;->h:Lcom/google/android/youtube/core/transfer/d;

    const-string v3, "video_id"

    invoke-virtual {v2, v3}, Lcom/google/android/youtube/core/transfer/d;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v0, :cond_33

    if-eqz v2, :cond_33

    iget-object v3, v0, Lcom/google/android/youtube/core/model/Video;->id:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_33

    invoke-virtual {p0, v0}, Lcom/google/android/youtube/app/adapter/br;->a(Lcom/google/android/youtube/core/model/Video;)V

    :cond_33
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_14

    .line 86
    :cond_37
    iget-object v1, p0, Lcom/google/android/youtube/app/adapter/br;->k:Ljava/util/List;

    invoke-interface {v1, v0, p1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_d

    .line 91
    :cond_3d
    invoke-virtual {p0}, Lcom/google/android/youtube/app/adapter/br;->notifyDataSetChanged()V

    .line 92
    return-void
.end method

.method public final a(Lcom/google/android/youtube/core/transfer/Transfer;Lcom/google/android/youtube/core/model/Video;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 111
    iget-object v0, p0, Lcom/google/android/youtube/app/adapter/br;->k:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 112
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p2}, Lcom/google/android/youtube/app/adapter/br;->b(ILjava/lang/Object;)V

    .line 113
    return-void
.end method

.method public final b(I)Lcom/google/android/youtube/core/transfer/Transfer;
    .registers 3
    .parameter

    .prologue
    .line 153
    invoke-virtual {p0, p1}, Lcom/google/android/youtube/app/adapter/br;->getItemViewType(I)I

    move-result v0

    if-nez v0, :cond_f

    iget-object v0, p0, Lcom/google/android/youtube/app/adapter/br;->k:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/transfer/Transfer;

    :goto_e
    return-object v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public final b(Lcom/google/android/youtube/core/transfer/Transfer;)V
    .registers 3
    .parameter

    .prologue
    .line 105
    iget-object v0, p0, Lcom/google/android/youtube/app/adapter/br;->k:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 106
    invoke-virtual {p0}, Lcom/google/android/youtube/app/adapter/br;->notifyDataSetChanged()V

    .line 108
    :cond_b
    return-void
.end method

.method public final getCount()I
    .registers 3

    .prologue
    .line 134
    invoke-super {p0}, Lcom/google/android/youtube/app/adapter/bt;->getCount()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/youtube/app/adapter/br;->k:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public final synthetic getItem(I)Ljava/lang/Object;
    .registers 3
    .parameter

    .prologue
    .line 36
    invoke-virtual {p0, p1}, Lcom/google/android/youtube/app/adapter/br;->a(I)Lcom/google/android/youtube/core/model/Video;

    move-result-object v0

    return-object v0
.end method

.method public final getItemViewType(I)I
    .registers 3
    .parameter

    .prologue
    .line 139
    iget-object v0, p0, Lcom/google/android/youtube/app/adapter/br;->k:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 16
    .parameter
    .parameter
    .parameter

    .prologue
    const-wide/16 v10, 0x1

    const/4 v2, 0x0

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 158
    invoke-virtual {p0, p1}, Lcom/google/android/youtube/app/adapter/br;->getItemViewType(I)I

    move-result v0

    .line 159
    if-ne v0, v9, :cond_1b

    .line 160
    if-eqz p2, :cond_16

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/google/android/youtube/app/adapter/bv;

    if-nez v0, :cond_16

    move-object p2, v2

    .line 163
    :cond_16
    invoke-super {p0, p1, p2, p3}, Lcom/google/android/youtube/app/adapter/bt;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 258
    :cond_1a
    :goto_1a
    return-object p2

    .line 165
    :cond_1b
    iget-object v0, p0, Lcom/google/android/youtube/app/adapter/br;->k:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/transfer/Transfer;

    .line 167
    if-eqz p2, :cond_2d

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lcom/google/android/youtube/app/adapter/bs;

    if-nez v1, :cond_150

    .line 168
    :cond_2d
    iget-object v3, p0, Lcom/google/android/youtube/app/adapter/br;->c:Landroid/view/LayoutInflater;

    invoke-static {}, Lcom/google/android/youtube/core/utils/Util;->c()Z

    move-result v1

    if-eqz v1, :cond_14b

    const v1, 0x7f040078

    :goto_38
    invoke-virtual {v3, v1, p3, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 170
    new-instance v1, Lcom/google/android/youtube/app/adapter/bs;

    invoke-direct {v1, p2}, Lcom/google/android/youtube/app/adapter/bs;-><init>(Landroid/view/View;)V

    .line 171
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 175
    :goto_44
    iget-object v3, v1, Lcom/google/android/youtube/app/adapter/bs;->c:Landroid/widget/TextView;

    if-eqz v3, :cond_6c

    iget-object v3, v0, Lcom/google/android/youtube/core/transfer/Transfer;->g:Lcom/google/android/youtube/core/transfer/d;

    const-string v4, "username"

    invoke-virtual {v3, v4}, Lcom/google/android/youtube/core/transfer/d;->a(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6c

    .line 176
    iget-object v3, v0, Lcom/google/android/youtube/core/transfer/Transfer;->g:Lcom/google/android/youtube/core/transfer/d;

    const-string v4, "username"

    invoke-virtual {v3, v4}, Lcom/google/android/youtube/core/transfer/d;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 177
    iget-object v4, v1, Lcom/google/android/youtube/app/adapter/bs;->c:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/google/android/youtube/app/adapter/br;->a:Landroid/content/Context;

    const v6, 0x7f0b01bb

    new-array v7, v9, [Ljava/lang/Object;

    aput-object v3, v7, v8

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 179
    :cond_6c
    iget-object v3, v1, Lcom/google/android/youtube/app/adapter/bs;->a:Landroid/widget/TextView;

    if-eqz v3, :cond_7d

    .line 180
    iget-object v3, v1, Lcom/google/android/youtube/app/adapter/bs;->a:Landroid/widget/TextView;

    iget-object v4, v0, Lcom/google/android/youtube/core/transfer/Transfer;->g:Lcom/google/android/youtube/core/transfer/d;

    const-string v5, "upload_title"

    invoke-virtual {v4, v5}, Lcom/google/android/youtube/core/transfer/d;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 182
    :cond_7d
    iget-object v3, v1, Lcom/google/android/youtube/app/adapter/bs;->b:Landroid/widget/ImageView;

    if-eqz v3, :cond_95

    .line 183
    iget-object v3, v0, Lcom/google/android/youtube/core/transfer/Transfer;->g:Lcom/google/android/youtube/core/transfer/d;

    const-string v4, "upload_file_thumbnail"

    invoke-virtual {v3, v4}, Lcom/google/android/youtube/core/transfer/d;->c(Ljava/lang/String;)[B

    move-result-object v3

    .line 184
    if-eqz v3, :cond_95

    .line 185
    iget-object v4, v1, Lcom/google/android/youtube/app/adapter/bs;->b:Landroid/widget/ImageView;

    array-length v5, v3

    invoke-static {v3, v8, v5}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 192
    :cond_95
    iget-wide v3, v0, Lcom/google/android/youtube/core/transfer/Transfer;->e:J

    long-to-float v3, v3

    iget-wide v4, v0, Lcom/google/android/youtube/core/transfer/Transfer;->f:J

    long-to-float v4, v4

    div-float/2addr v3, v4

    const/high16 v4, 0x42c8

    mul-float/2addr v3, v4

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-int v3, v3

    .line 195
    iget-object v4, v1, Lcom/google/android/youtube/app/adapter/bs;->d:Landroid/widget/ProgressBar;

    if-eqz v4, :cond_b4

    .line 196
    iget-object v4, v0, Lcom/google/android/youtube/core/transfer/Transfer;->c:Lcom/google/android/youtube/core/transfer/Transfer$Status;

    sget-object v5, Lcom/google/android/youtube/core/transfer/Transfer$Status;->FAILED:Lcom/google/android/youtube/core/transfer/Transfer$Status;

    if-ne v4, v5, :cond_158

    .line 197
    iget-object v4, v1, Lcom/google/android/youtube/app/adapter/bs;->d:Landroid/widget/ProgressBar;

    invoke-virtual {v4, v8}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 203
    :cond_b4
    :goto_b4
    iget-object v4, v1, Lcom/google/android/youtube/app/adapter/bs;->e:Landroid/widget/TextView;

    if-eqz v4, :cond_cb

    .line 204
    iget-object v4, v0, Lcom/google/android/youtube/core/transfer/Transfer;->c:Lcom/google/android/youtube/core/transfer/Transfer$Status;

    sget-object v5, Lcom/google/android/youtube/core/transfer/Transfer$Status;->RUNNING:Lcom/google/android/youtube/core/transfer/Transfer$Status;

    if-ne v4, v5, :cond_15f

    .line 205
    iget-object v2, v1, Lcom/google/android/youtube/app/adapter/bs;->e:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/google/android/youtube/app/adapter/br;->a:Landroid/content/Context;

    iget-wide v5, v0, Lcom/google/android/youtube/core/transfer/Transfer;->f:J

    invoke-static {v4, v5, v6}, Landroid/text/format/Formatter;->formatShortFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 211
    :cond_cb
    :goto_cb
    iget-object v2, v1, Lcom/google/android/youtube/app/adapter/bs;->f:Landroid/widget/TextView;

    if-eqz v2, :cond_e5

    .line 212
    iget-object v2, v0, Lcom/google/android/youtube/core/transfer/Transfer;->c:Lcom/google/android/youtube/core/transfer/Transfer$Status;

    sget-object v4, Lcom/google/android/youtube/core/transfer/Transfer$Status;->RUNNING:Lcom/google/android/youtube/core/transfer/Transfer$Status;

    if-ne v2, v4, :cond_17e

    .line 213
    iget-wide v4, v0, Lcom/google/android/youtube/core/transfer/Transfer;->f:J

    iget-wide v6, v0, Lcom/google/android/youtube/core/transfer/Transfer;->e:J

    cmp-long v2, v4, v6

    if-nez v2, :cond_166

    .line 214
    iget-object v2, v1, Lcom/google/android/youtube/app/adapter/bs;->f:Landroid/widget/TextView;

    const v3, 0x7f0b0175

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 224
    :cond_e5
    :goto_e5
    iget-object v2, v1, Lcom/google/android/youtube/app/adapter/bs;->g:Landroid/widget/ImageView;

    if-eqz v2, :cond_116

    iget-object v2, p0, Lcom/google/android/youtube/app/adapter/br;->j:Lcom/google/android/youtube/app/ui/ToolbarHelper;

    if-eqz v2, :cond_116

    .line 225
    iget-object v2, p0, Lcom/google/android/youtube/app/adapter/br;->j:Lcom/google/android/youtube/app/ui/ToolbarHelper;

    iget-object v3, v1, Lcom/google/android/youtube/app/adapter/bs;->g:Landroid/widget/ImageView;

    invoke-virtual {v2, v3, v0}, Lcom/google/android/youtube/app/ui/ToolbarHelper;->a(Landroid/view/View;Ljava/lang/Object;)V

    .line 229
    iget-wide v2, v0, Lcom/google/android/youtube/core/transfer/Transfer;->f:J

    sub-long/2addr v2, v10

    iget-wide v4, v0, Lcom/google/android/youtube/core/transfer/Transfer;->e:J

    cmp-long v2, v2, v4

    if-gtz v2, :cond_109

    iget-object v2, v0, Lcom/google/android/youtube/core/transfer/Transfer;->c:Lcom/google/android/youtube/core/transfer/Transfer$Status;

    sget-object v3, Lcom/google/android/youtube/core/transfer/Transfer$Status;->FAILED:Lcom/google/android/youtube/core/transfer/Transfer$Status;

    if-eq v2, v3, :cond_109

    iget-object v2, v0, Lcom/google/android/youtube/core/transfer/Transfer;->c:Lcom/google/android/youtube/core/transfer/Transfer$Status;

    sget-object v3, Lcom/google/android/youtube/core/transfer/Transfer$Status;->PENDING:Lcom/google/android/youtube/core/transfer/Transfer$Status;

    if-ne v2, v3, :cond_198

    .line 232
    :cond_109
    iget-object v2, v1, Lcom/google/android/youtube/app/adapter/bs;->g:Landroid/widget/ImageView;

    invoke-virtual {v2, v9}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 233
    iget-object v2, v1, Lcom/google/android/youtube/app/adapter/bs;->g:Landroid/widget/ImageView;

    const v3, 0x7f02012d

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 240
    :cond_116
    :goto_116
    iget-object v2, v1, Lcom/google/android/youtube/app/adapter/bs;->h:Landroid/widget/ImageView;

    if-eqz v2, :cond_1a

    iget-object v2, p0, Lcom/google/android/youtube/app/adapter/br;->d:Lcom/google/android/youtube/app/ui/p;

    if-eqz v2, :cond_1a

    .line 241
    iget-object v2, p0, Lcom/google/android/youtube/app/adapter/br;->i:Lcom/google/android/youtube/app/ui/p;

    iget-object v3, v1, Lcom/google/android/youtube/app/adapter/bs;->h:Landroid/widget/ImageView;

    invoke-virtual {v2, v3, v0}, Lcom/google/android/youtube/app/ui/p;->a(Landroid/view/View;Ljava/lang/Object;)V

    .line 242
    iget-object v2, v1, Lcom/google/android/youtube/app/adapter/bs;->h:Landroid/widget/ImageView;

    invoke-virtual {v2, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 246
    iget-wide v2, v0, Lcom/google/android/youtube/core/transfer/Transfer;->f:J

    sub-long/2addr v2, v10

    iget-wide v4, v0, Lcom/google/android/youtube/core/transfer/Transfer;->e:J

    cmp-long v2, v2, v4

    if-gtz v2, :cond_13f

    iget-object v2, v0, Lcom/google/android/youtube/core/transfer/Transfer;->c:Lcom/google/android/youtube/core/transfer/Transfer$Status;

    sget-object v3, Lcom/google/android/youtube/core/transfer/Transfer$Status;->FAILED:Lcom/google/android/youtube/core/transfer/Transfer$Status;

    if-eq v2, v3, :cond_13f

    iget-object v0, v0, Lcom/google/android/youtube/core/transfer/Transfer;->c:Lcom/google/android/youtube/core/transfer/Transfer$Status;

    sget-object v2, Lcom/google/android/youtube/core/transfer/Transfer$Status;->PENDING:Lcom/google/android/youtube/core/transfer/Transfer$Status;

    if-ne v0, v2, :cond_1ac

    .line 249
    :cond_13f
    iget-object v0, v1, Lcom/google/android/youtube/app/adapter/bs;->h:Landroid/widget/ImageView;

    invoke-virtual {v0, v9}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 250
    iget-object v0, v1, Lcom/google/android/youtube/app/adapter/bs;->h:Landroid/widget/ImageView;

    invoke-virtual {v0, v9}, Landroid/widget/ImageView;->setEnabled(Z)V

    goto/16 :goto_1a

    .line 168
    :cond_14b
    const v1, 0x7f040098

    goto/16 :goto_38

    .line 173
    :cond_150
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/youtube/app/adapter/bs;

    goto/16 :goto_44

    .line 199
    :cond_158
    iget-object v4, v1, Lcom/google/android/youtube/app/adapter/bs;->d:Landroid/widget/ProgressBar;

    invoke-virtual {v4, v3}, Landroid/widget/ProgressBar;->setProgress(I)V

    goto/16 :goto_b4

    .line 207
    :cond_15f
    iget-object v4, v1, Lcom/google/android/youtube/app/adapter/bs;->e:Landroid/widget/TextView;

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_cb

    .line 216
    :cond_166
    iget-object v2, v1, Lcom/google/android/youtube/app/adapter/bs;->f:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/google/android/youtube/app/adapter/br;->a:Landroid/content/Context;

    const v5, 0x7f0b0188

    new-array v6, v9, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v6, v8

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_e5

    .line 218
    :cond_17e
    iget-object v2, v0, Lcom/google/android/youtube/core/transfer/Transfer;->c:Lcom/google/android/youtube/core/transfer/Transfer$Status;

    sget-object v3, Lcom/google/android/youtube/core/transfer/Transfer$Status;->FAILED:Lcom/google/android/youtube/core/transfer/Transfer$Status;

    if-ne v2, v3, :cond_18e

    .line 219
    iget-object v2, v1, Lcom/google/android/youtube/app/adapter/bs;->f:Landroid/widget/TextView;

    const v3, 0x7f0b0177

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_e5

    .line 221
    :cond_18e
    iget-object v2, v1, Lcom/google/android/youtube/app/adapter/bs;->f:Landroid/widget/TextView;

    const v3, 0x7f0b0176

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_e5

    .line 235
    :cond_198
    iget-object v2, v1, Lcom/google/android/youtube/app/adapter/bs;->g:Landroid/widget/ImageView;

    invoke-virtual {v2, v8}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 236
    iget-object v2, v1, Lcom/google/android/youtube/app/adapter/bs;->g:Landroid/widget/ImageView;

    const v3, 0x7f0200cc

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 237
    iget-object v2, p0, Lcom/google/android/youtube/app/adapter/br;->j:Lcom/google/android/youtube/app/ui/ToolbarHelper;

    invoke-virtual {v2}, Lcom/google/android/youtube/app/ui/ToolbarHelper;->a()V

    goto/16 :goto_116

    .line 252
    :cond_1ac
    iget-object v0, v1, Lcom/google/android/youtube/app/adapter/bs;->h:Landroid/widget/ImageView;

    invoke-virtual {v0, v8}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 253
    iget-object v0, v1, Lcom/google/android/youtube/app/adapter/bs;->h:Landroid/widget/ImageView;

    invoke-virtual {v0, v8}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 254
    iget-object v0, p0, Lcom/google/android/youtube/app/adapter/br;->i:Lcom/google/android/youtube/app/ui/p;

    invoke-virtual {v0}, Lcom/google/android/youtube/app/ui/p;->a()V

    goto/16 :goto_1a
.end method

.method public final getViewTypeCount()I
    .registers 2

    .prologue
    .line 144
    const/4 v0, 0x2

    return v0
.end method
