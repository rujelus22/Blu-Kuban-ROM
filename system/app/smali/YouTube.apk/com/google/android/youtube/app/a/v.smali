.class public final Lcom/google/android/youtube/app/a/v;
.super Lcom/google/android/youtube/app/a/x;
.source "SourceFile"


# instance fields
.field private final h:Lcom/google/android/youtube/app/ui/j;

.field private final i:Lcom/google/android/youtube/app/ui/ToolbarHelper;

.field private final j:Ljava/util/List;

.field private final k:Ljava/util/Map;


# direct methods
.method private constructor <init>(Landroid/app/Activity;Lcom/google/android/youtube/app/ui/j;Lcom/google/android/youtube/app/ui/j;Lcom/google/android/youtube/app/ui/ToolbarHelper;Lcom/google/android/youtube/app/ui/ToolbarHelper;)V
    .registers 13
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 73
    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, v2

    move-object v5, v2

    invoke-direct/range {v0 .. v6}, Lcom/google/android/youtube/app/a/x;-><init>(Landroid/app/Activity;Ljava/util/concurrent/ConcurrentHashMap;Lcom/google/android/youtube/app/ui/j;Lcom/google/android/youtube/app/ui/ToolbarHelper;Lcom/google/android/youtube/app/b/i;I)V

    .line 74
    iput-object p3, p0, Lcom/google/android/youtube/app/a/v;->h:Lcom/google/android/youtube/app/ui/j;

    .line 75
    iput-object v2, p0, Lcom/google/android/youtube/app/a/v;->i:Lcom/google/android/youtube/app/ui/ToolbarHelper;

    .line 76
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/google/android/youtube/app/a/v;->j:Ljava/util/List;

    .line 77
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/youtube/app/a/v;->k:Ljava/util/Map;

    .line 78
    return-void
.end method

.method public static a(Landroid/app/Activity;)Lcom/google/android/youtube/app/a/v;
    .registers 7
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 64
    new-instance v0, Lcom/google/android/youtube/app/a/v;

    move-object v1, p0

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-direct/range {v0 .. v5}, Lcom/google/android/youtube/app/a/v;-><init>(Landroid/app/Activity;Lcom/google/android/youtube/app/ui/j;Lcom/google/android/youtube/app/ui/j;Lcom/google/android/youtube/app/ui/ToolbarHelper;Lcom/google/android/youtube/app/ui/ToolbarHelper;)V

    return-object v0
.end method

.method public static a(Landroid/app/Activity;Lcom/google/android/youtube/app/ui/j;Lcom/google/android/youtube/app/ui/j;)Lcom/google/android/youtube/app/a/v;
    .registers 9
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 49
    const-string v0, "videoContextualMenu may not be null"

    invoke-static {p1, v0}, Lcom/google/android/youtube/core/utils/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    const-string v0, "transferContextualmenu may not be null"

    invoke-static {p2, v0}, Lcom/google/android/youtube/core/utils/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    new-instance v0, Lcom/google/android/youtube/app/a/v;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/youtube/app/a/v;-><init>(Landroid/app/Activity;Lcom/google/android/youtube/app/ui/j;Lcom/google/android/youtube/app/ui/j;Lcom/google/android/youtube/app/ui/ToolbarHelper;Lcom/google/android/youtube/app/ui/ToolbarHelper;)V

    return-object v0
.end method


# virtual methods
.method public final a(I)Lcom/google/android/youtube/core/model/Video;
    .registers 4
    .parameter

    .prologue
    .line 148
    invoke-virtual {p0, p1}, Lcom/google/android/youtube/app/a/v;->getItemViewType(I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_16

    iget-object v0, p0, Lcom/google/android/youtube/app/a/v;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sub-int v0, p1, v0

    invoke-super {p0, v0}, Lcom/google/android/youtube/app/a/x;->getItem(I)Ljava/lang/Object;

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
    .line 127
    iget-object v0, p0, Lcom/google/android/youtube/app/a/v;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 128
    invoke-super {p0}, Lcom/google/android/youtube/app/a/x;->a()V

    .line 129
    return-void
.end method

.method public final a(Lcom/google/android/youtube/core/transfer/Transfer;)V
    .registers 6
    .parameter

    .prologue
    .line 81
    iget-object v0, p0, Lcom/google/android/youtube/app/a/v;->j:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 82
    if-gez v0, :cond_37

    .line 83
    iget-object v0, p0, Lcom/google/android/youtube/app/a/v;->j:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 88
    :goto_d
    invoke-super {p0}, Lcom/google/android/youtube/app/a/x;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_14
    if-ltz v1, :cond_3d

    invoke-super {p0, v1}, Lcom/google/android/youtube/app/a/x;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/model/Video;

    iget-object v2, p1, Lcom/google/android/youtube/core/transfer/Transfer;->h:Lcom/google/android/youtube/core/transfer/b;

    const-string v3, "video_id"

    invoke-virtual {v2, v3}, Lcom/google/android/youtube/core/transfer/b;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v0, :cond_33

    if-eqz v2, :cond_33

    iget-object v3, v0, Lcom/google/android/youtube/core/model/Video;->id:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_33

    invoke-virtual {p0, v0}, Lcom/google/android/youtube/app/a/v;->a(Lcom/google/android/youtube/core/model/Video;)V

    :cond_33
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_14

    .line 85
    :cond_37
    iget-object v1, p0, Lcom/google/android/youtube/app/a/v;->j:Ljava/util/List;

    invoke-interface {v1, v0, p1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_d

    .line 90
    :cond_3d
    invoke-virtual {p0}, Lcom/google/android/youtube/app/a/v;->notifyDataSetChanged()V

    .line 91
    return-void
.end method

.method public final a(Lcom/google/android/youtube/core/transfer/Transfer;Lcom/google/android/youtube/core/model/Video;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 110
    iget-object v0, p0, Lcom/google/android/youtube/app/a/v;->j:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 111
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p2}, Lcom/google/android/youtube/app/a/v;->b(ILjava/lang/Object;)V

    .line 112
    return-void
.end method

.method public final b(I)Lcom/google/android/youtube/core/transfer/Transfer;
    .registers 3
    .parameter

    .prologue
    .line 152
    invoke-virtual {p0, p1}, Lcom/google/android/youtube/app/a/v;->getItemViewType(I)I

    move-result v0

    if-nez v0, :cond_f

    iget-object v0, p0, Lcom/google/android/youtube/app/a/v;->j:Ljava/util/List;

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
    .line 104
    iget-object v0, p0, Lcom/google/android/youtube/app/a/v;->j:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 105
    invoke-virtual {p0}, Lcom/google/android/youtube/app/a/v;->notifyDataSetChanged()V

    .line 107
    :cond_b
    return-void
.end method

.method public final getCount()I
    .registers 3

    .prologue
    .line 133
    invoke-super {p0}, Lcom/google/android/youtube/app/a/x;->getCount()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/youtube/app/a/v;->j:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public final synthetic getItem(I)Ljava/lang/Object;
    .registers 3
    .parameter

    .prologue
    .line 35
    invoke-virtual {p0, p1}, Lcom/google/android/youtube/app/a/v;->a(I)Lcom/google/android/youtube/core/model/Video;

    move-result-object v0

    return-object v0
.end method

.method public final getItemViewType(I)I
    .registers 3
    .parameter

    .prologue
    .line 138
    iget-object v0, p0, Lcom/google/android/youtube/app/a/v;->j:Ljava/util/List;

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

    .line 157
    invoke-virtual {p0, p1}, Lcom/google/android/youtube/app/a/v;->getItemViewType(I)I

    move-result v0

    .line 158
    if-ne v0, v9, :cond_1b

    .line 159
    if-eqz p2, :cond_16

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/google/android/youtube/app/a/z;

    if-nez v0, :cond_16

    move-object p2, v2

    .line 162
    :cond_16
    invoke-super {p0, p1, p2, p3}, Lcom/google/android/youtube/app/a/x;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 256
    :cond_1a
    :goto_1a
    return-object p2

    .line 164
    :cond_1b
    iget-object v0, p0, Lcom/google/android/youtube/app/a/v;->j:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/transfer/Transfer;

    .line 166
    if-eqz p2, :cond_2d

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lcom/google/android/youtube/app/a/w;

    if-nez v1, :cond_145

    .line 167
    :cond_2d
    iget-object v1, p0, Lcom/google/android/youtube/app/a/v;->c:Landroid/view/LayoutInflater;

    const v3, 0x7f040054

    invoke-virtual {v1, v3, p3, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 168
    new-instance v1, Lcom/google/android/youtube/app/a/w;

    invoke-direct {v1, p2}, Lcom/google/android/youtube/app/a/w;-><init>(Landroid/view/View;)V

    .line 169
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 173
    :goto_3e
    iget-object v3, v1, Lcom/google/android/youtube/app/a/w;->c:Landroid/widget/TextView;

    if-eqz v3, :cond_66

    iget-object v3, v0, Lcom/google/android/youtube/core/transfer/Transfer;->g:Lcom/google/android/youtube/core/transfer/b;

    const-string v4, "username"

    invoke-virtual {v3, v4}, Lcom/google/android/youtube/core/transfer/b;->a(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_66

    .line 174
    iget-object v3, v0, Lcom/google/android/youtube/core/transfer/Transfer;->g:Lcom/google/android/youtube/core/transfer/b;

    const-string v4, "username"

    invoke-virtual {v3, v4}, Lcom/google/android/youtube/core/transfer/b;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 175
    iget-object v4, v1, Lcom/google/android/youtube/app/a/w;->c:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/google/android/youtube/app/a/v;->a:Landroid/content/Context;

    const v6, 0x7f0a0161

    new-array v7, v9, [Ljava/lang/Object;

    aput-object v3, v7, v8

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 177
    :cond_66
    iget-object v3, v1, Lcom/google/android/youtube/app/a/w;->a:Landroid/widget/TextView;

    if-eqz v3, :cond_77

    .line 178
    iget-object v3, v1, Lcom/google/android/youtube/app/a/w;->a:Landroid/widget/TextView;

    iget-object v4, v0, Lcom/google/android/youtube/core/transfer/Transfer;->g:Lcom/google/android/youtube/core/transfer/b;

    const-string v5, "upload_title"

    invoke-virtual {v4, v5}, Lcom/google/android/youtube/core/transfer/b;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 180
    :cond_77
    iget-object v3, v1, Lcom/google/android/youtube/app/a/w;->b:Landroid/widget/ImageView;

    if-eqz v3, :cond_8f

    .line 181
    iget-object v3, v0, Lcom/google/android/youtube/core/transfer/Transfer;->g:Lcom/google/android/youtube/core/transfer/b;

    const-string v4, "upload_file_thumbnail"

    invoke-virtual {v3, v4}, Lcom/google/android/youtube/core/transfer/b;->d(Ljava/lang/String;)[B

    move-result-object v3

    .line 182
    if-eqz v3, :cond_8f

    .line 183
    iget-object v4, v1, Lcom/google/android/youtube/app/a/w;->b:Landroid/widget/ImageView;

    array-length v5, v3

    invoke-static {v3, v8, v5}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 190
    :cond_8f
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

    .line 193
    iget-object v4, v1, Lcom/google/android/youtube/app/a/w;->d:Landroid/widget/ProgressBar;

    if-eqz v4, :cond_ae

    .line 194
    iget-object v4, v0, Lcom/google/android/youtube/core/transfer/Transfer;->c:Lcom/google/android/youtube/core/transfer/Transfer$Status;

    sget-object v5, Lcom/google/android/youtube/core/transfer/Transfer$Status;->FAILED:Lcom/google/android/youtube/core/transfer/Transfer$Status;

    if-ne v4, v5, :cond_14d

    .line 195
    iget-object v4, v1, Lcom/google/android/youtube/app/a/w;->d:Landroid/widget/ProgressBar;

    invoke-virtual {v4, v8}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 201
    :cond_ae
    :goto_ae
    iget-object v4, v1, Lcom/google/android/youtube/app/a/w;->e:Landroid/widget/TextView;

    if-eqz v4, :cond_c5

    .line 202
    iget-object v4, v0, Lcom/google/android/youtube/core/transfer/Transfer;->c:Lcom/google/android/youtube/core/transfer/Transfer$Status;

    sget-object v5, Lcom/google/android/youtube/core/transfer/Transfer$Status;->RUNNING:Lcom/google/android/youtube/core/transfer/Transfer$Status;

    if-ne v4, v5, :cond_154

    .line 203
    iget-object v2, v1, Lcom/google/android/youtube/app/a/w;->e:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/google/android/youtube/app/a/v;->a:Landroid/content/Context;

    iget-wide v5, v0, Lcom/google/android/youtube/core/transfer/Transfer;->f:J

    invoke-static {v4, v5, v6}, Landroid/text/format/Formatter;->formatShortFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 209
    :cond_c5
    :goto_c5
    iget-object v2, v1, Lcom/google/android/youtube/app/a/w;->f:Landroid/widget/TextView;

    if-eqz v2, :cond_df

    .line 210
    iget-object v2, v0, Lcom/google/android/youtube/core/transfer/Transfer;->c:Lcom/google/android/youtube/core/transfer/Transfer$Status;

    sget-object v4, Lcom/google/android/youtube/core/transfer/Transfer$Status;->RUNNING:Lcom/google/android/youtube/core/transfer/Transfer$Status;

    if-ne v2, v4, :cond_173

    .line 211
    iget-wide v4, v0, Lcom/google/android/youtube/core/transfer/Transfer;->f:J

    iget-wide v6, v0, Lcom/google/android/youtube/core/transfer/Transfer;->e:J

    cmp-long v2, v4, v6

    if-nez v2, :cond_15b

    .line 212
    iget-object v2, v1, Lcom/google/android/youtube/app/a/w;->f:Landroid/widget/TextView;

    const v3, 0x7f0a0128

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 222
    :cond_df
    :goto_df
    iget-object v2, v1, Lcom/google/android/youtube/app/a/w;->g:Landroid/widget/ImageView;

    if-eqz v2, :cond_110

    iget-object v2, p0, Lcom/google/android/youtube/app/a/v;->i:Lcom/google/android/youtube/app/ui/ToolbarHelper;

    if-eqz v2, :cond_110

    .line 223
    iget-object v2, p0, Lcom/google/android/youtube/app/a/v;->i:Lcom/google/android/youtube/app/ui/ToolbarHelper;

    iget-object v3, v1, Lcom/google/android/youtube/app/a/w;->g:Landroid/widget/ImageView;

    invoke-virtual {v2, v3, v0}, Lcom/google/android/youtube/app/ui/ToolbarHelper;->a(Landroid/view/View;Ljava/lang/Object;)V

    .line 227
    iget-wide v2, v0, Lcom/google/android/youtube/core/transfer/Transfer;->f:J

    sub-long/2addr v2, v10

    iget-wide v4, v0, Lcom/google/android/youtube/core/transfer/Transfer;->e:J

    cmp-long v2, v2, v4

    if-gtz v2, :cond_103

    iget-object v2, v0, Lcom/google/android/youtube/core/transfer/Transfer;->c:Lcom/google/android/youtube/core/transfer/Transfer$Status;

    sget-object v3, Lcom/google/android/youtube/core/transfer/Transfer$Status;->FAILED:Lcom/google/android/youtube/core/transfer/Transfer$Status;

    if-eq v2, v3, :cond_103

    iget-object v2, v0, Lcom/google/android/youtube/core/transfer/Transfer;->c:Lcom/google/android/youtube/core/transfer/Transfer$Status;

    sget-object v3, Lcom/google/android/youtube/core/transfer/Transfer$Status;->PENDING:Lcom/google/android/youtube/core/transfer/Transfer$Status;

    if-ne v2, v3, :cond_18d

    .line 230
    :cond_103
    iget-object v2, v1, Lcom/google/android/youtube/app/a/w;->g:Landroid/widget/ImageView;

    invoke-virtual {v2, v9}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 231
    iget-object v2, v1, Lcom/google/android/youtube/app/a/w;->g:Landroid/widget/ImageView;

    const v3, 0x7f0200d1

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 238
    :cond_110
    :goto_110
    iget-object v2, v1, Lcom/google/android/youtube/app/a/w;->h:Landroid/widget/ImageView;

    if-eqz v2, :cond_1a

    iget-object v2, p0, Lcom/google/android/youtube/app/a/v;->d:Lcom/google/android/youtube/app/ui/j;

    if-eqz v2, :cond_1a

    .line 239
    iget-object v2, p0, Lcom/google/android/youtube/app/a/v;->h:Lcom/google/android/youtube/app/ui/j;

    iget-object v3, v1, Lcom/google/android/youtube/app/a/w;->h:Landroid/widget/ImageView;

    invoke-virtual {v2, v3, v0}, Lcom/google/android/youtube/app/ui/j;->a(Landroid/view/View;Ljava/lang/Object;)V

    .line 240
    iget-object v2, v1, Lcom/google/android/youtube/app/a/w;->h:Landroid/widget/ImageView;

    invoke-virtual {v2, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 244
    iget-wide v2, v0, Lcom/google/android/youtube/core/transfer/Transfer;->f:J

    sub-long/2addr v2, v10

    iget-wide v4, v0, Lcom/google/android/youtube/core/transfer/Transfer;->e:J

    cmp-long v2, v2, v4

    if-gtz v2, :cond_139

    iget-object v2, v0, Lcom/google/android/youtube/core/transfer/Transfer;->c:Lcom/google/android/youtube/core/transfer/Transfer$Status;

    sget-object v3, Lcom/google/android/youtube/core/transfer/Transfer$Status;->FAILED:Lcom/google/android/youtube/core/transfer/Transfer$Status;

    if-eq v2, v3, :cond_139

    iget-object v0, v0, Lcom/google/android/youtube/core/transfer/Transfer;->c:Lcom/google/android/youtube/core/transfer/Transfer$Status;

    sget-object v2, Lcom/google/android/youtube/core/transfer/Transfer$Status;->PENDING:Lcom/google/android/youtube/core/transfer/Transfer$Status;

    if-ne v0, v2, :cond_1a1

    .line 247
    :cond_139
    iget-object v0, v1, Lcom/google/android/youtube/app/a/w;->h:Landroid/widget/ImageView;

    invoke-virtual {v0, v9}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 248
    iget-object v0, v1, Lcom/google/android/youtube/app/a/w;->h:Landroid/widget/ImageView;

    invoke-virtual {v0, v9}, Landroid/widget/ImageView;->setEnabled(Z)V

    goto/16 :goto_1a

    .line 171
    :cond_145
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/youtube/app/a/w;

    goto/16 :goto_3e

    .line 197
    :cond_14d
    iget-object v4, v1, Lcom/google/android/youtube/app/a/w;->d:Landroid/widget/ProgressBar;

    invoke-virtual {v4, v3}, Landroid/widget/ProgressBar;->setProgress(I)V

    goto/16 :goto_ae

    .line 205
    :cond_154
    iget-object v4, v1, Lcom/google/android/youtube/app/a/w;->e:Landroid/widget/TextView;

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_c5

    .line 214
    :cond_15b
    iget-object v2, v1, Lcom/google/android/youtube/app/a/w;->f:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/google/android/youtube/app/a/v;->a:Landroid/content/Context;

    const v5, 0x7f0a013a

    new-array v6, v9, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v6, v8

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_df

    .line 216
    :cond_173
    iget-object v2, v0, Lcom/google/android/youtube/core/transfer/Transfer;->c:Lcom/google/android/youtube/core/transfer/Transfer$Status;

    sget-object v3, Lcom/google/android/youtube/core/transfer/Transfer$Status;->FAILED:Lcom/google/android/youtube/core/transfer/Transfer$Status;

    if-ne v2, v3, :cond_183

    .line 217
    iget-object v2, v1, Lcom/google/android/youtube/app/a/w;->f:Landroid/widget/TextView;

    const v3, 0x7f0a012a

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_df

    .line 219
    :cond_183
    iget-object v2, v1, Lcom/google/android/youtube/app/a/w;->f:Landroid/widget/TextView;

    const v3, 0x7f0a0129

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_df

    .line 233
    :cond_18d
    iget-object v2, v1, Lcom/google/android/youtube/app/a/w;->g:Landroid/widget/ImageView;

    invoke-virtual {v2, v8}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 234
    iget-object v2, v1, Lcom/google/android/youtube/app/a/w;->g:Landroid/widget/ImageView;

    const v3, 0x7f020084

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 235
    iget-object v2, p0, Lcom/google/android/youtube/app/a/v;->i:Lcom/google/android/youtube/app/ui/ToolbarHelper;

    invoke-virtual {v2}, Lcom/google/android/youtube/app/ui/ToolbarHelper;->a()V

    goto/16 :goto_110

    .line 250
    :cond_1a1
    iget-object v0, v1, Lcom/google/android/youtube/app/a/w;->h:Landroid/widget/ImageView;

    invoke-virtual {v0, v8}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 251
    iget-object v0, v1, Lcom/google/android/youtube/app/a/w;->h:Landroid/widget/ImageView;

    invoke-virtual {v0, v8}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 252
    iget-object v0, p0, Lcom/google/android/youtube/app/a/v;->h:Lcom/google/android/youtube/app/ui/j;

    invoke-virtual {v0}, Lcom/google/android/youtube/app/ui/j;->a()V

    goto/16 :goto_1a
.end method

.method public final getViewTypeCount()I
    .registers 2

    .prologue
    .line 143
    const/4 v0, 0x2

    return v0
.end method
