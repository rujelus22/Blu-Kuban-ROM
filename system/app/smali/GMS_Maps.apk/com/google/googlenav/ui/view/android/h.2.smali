.class public Lcom/google/googlenav/ui/view/android/H;
.super Lcom/google/googlenav/ui/view/android/X;
.source "SourceFile"


# instance fields
.field private volatile b:Z

.field private final c:Ljava/util/List;

.field private final d:Lcom/google/googlenav/ui/view/u;

.field private e:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/googlenav/ui/view/u;Lcom/google/googlenav/ui/g;)V
    .registers 7
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 62
    invoke-direct {p0, p1, p3}, Lcom/google/googlenav/ui/view/android/X;-><init>(Landroid/content/Context;Lcom/google/googlenav/ui/g;)V

    .line 43
    iput-boolean v0, p0, Lcom/google/googlenav/ui/view/android/H;->b:Z

    .line 49
    invoke-static {}, Lcom/google/common/collect/cx;->a()Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/google/googlenav/ui/view/android/H;->c:Ljava/util/List;

    .line 63
    iput-object p2, p0, Lcom/google/googlenav/ui/view/android/H;->d:Lcom/google/googlenav/ui/view/u;

    move v1, v0

    .line 65
    :goto_f
    invoke-virtual {p2}, Lcom/google/googlenav/ui/view/u;->f()I

    move-result v2

    if-ge v0, v2, :cond_30

    .line 66
    invoke-virtual {p2, v0}, Lcom/google/googlenav/ui/view/u;->a(I)Lcom/google/googlenav/ui/bd;

    move-result-object v2

    iget-object v2, v2, Lcom/google/googlenav/ui/bd;->s:LaQ/H;

    if-eqz v2, :cond_2d

    .line 67
    invoke-virtual {p2, v0}, Lcom/google/googlenav/ui/view/u;->a(I)Lcom/google/googlenav/ui/bd;

    move-result-object v2

    iget-object v2, v2, Lcom/google/googlenav/ui/bd;->s:LaQ/H;

    invoke-interface {v2}, LaQ/H;->b()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 65
    :cond_2d
    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    .line 73
    :cond_30
    add-int/lit8 v0, v1, 0x39

    iput v0, p0, Lcom/google/googlenav/ui/view/android/H;->e:I

    .line 74
    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/H;->a()V

    .line 75
    return-void
.end method

.method private static a(Lcom/google/googlenav/ui/bd;)I
    .registers 2
    .parameter

    .prologue
    .line 153
    invoke-virtual {p0}, Lcom/google/googlenav/ui/bd;->b()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 154
    const v0, 0x7f0400c4

    .line 188
    :goto_9
    return v0

    .line 156
    :cond_a
    iget v0, p0, Lcom/google/googlenav/ui/bd;->r:I

    sparse-switch v0, :sswitch_data_38

    .line 188
    const v0, 0x7f0400b9

    goto :goto_9

    .line 158
    :sswitch_13
    const v0, 0x7f0400bc

    goto :goto_9

    .line 161
    :sswitch_17
    const v0, 0x7f0400dc

    goto :goto_9

    .line 164
    :sswitch_1b
    const v0, 0x7f040058

    goto :goto_9

    .line 168
    :sswitch_1f
    const v0, 0x7f0400ba

    goto :goto_9

    .line 171
    :sswitch_23
    const v0, 0x7f0400c3

    goto :goto_9

    .line 174
    :sswitch_27
    const v0, 0x7f0400da

    goto :goto_9

    .line 177
    :sswitch_2b
    const v0, 0x7f0400e6

    goto :goto_9

    .line 180
    :sswitch_2f
    const v0, 0x7f0400c2

    goto :goto_9

    .line 183
    :sswitch_33
    const v0, 0x7f04016f

    goto :goto_9

    .line 156
    nop

    :sswitch_data_38
    .sparse-switch
        0x1 -> :sswitch_13
        0x2 -> :sswitch_17
        0x3 -> :sswitch_1b
        0x4 -> :sswitch_1f
        0x9 -> :sswitch_23
        0xe -> :sswitch_2f
        0x18 -> :sswitch_27
        0x1d -> :sswitch_2b
        0x35 -> :sswitch_1f
        0x38 -> :sswitch_33
    .end sparse-switch
.end method

.method private a(Lcom/google/googlenav/ui/bd;Landroid/view/View;Landroid/view/ViewGroup;)Lcom/google/googlenav/ui/android/TemplateView;
    .registers 8
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 207
    const/4 v1, 0x1

    .line 209
    instance-of v2, p2, Lcom/google/googlenav/ui/android/TemplateView;

    if-eqz v2, :cond_6b

    .line 210
    check-cast p2, Lcom/google/googlenav/ui/android/TemplateView;

    .line 211
    invoke-virtual {p2}, Lcom/google/googlenav/ui/android/TemplateView;->b()Lcom/google/googlenav/ui/bd;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1e

    iget-object v2, p0, Lcom/google/googlenav/ui/view/android/H;->c:Ljava/util/List;

    invoke-interface {v2, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1e

    .line 217
    invoke-virtual {p2}, Lcom/google/googlenav/ui/android/TemplateView;->a()V

    .line 276
    :goto_1d
    return-object p2

    .line 220
    :cond_1e
    iget v2, p1, Lcom/google/googlenav/ui/bd;->r:I

    invoke-virtual {p2}, Lcom/google/googlenav/ui/android/TemplateView;->b()Lcom/google/googlenav/ui/bd;

    move-result-object v3

    iget v3, v3, Lcom/google/googlenav/ui/bd;->r:I

    if-eq v2, v3, :cond_82

    .line 224
    invoke-static {p1, p3}, Lcom/google/googlenav/ui/view/android/H;->a(Lcom/google/googlenav/ui/bd;Landroid/view/ViewGroup;)Lcom/google/googlenav/ui/android/TemplateView;

    move-result-object v1

    .line 238
    :goto_2c
    iget-boolean v2, p0, Lcom/google/googlenav/ui/view/android/H;->b:Z

    if-eqz v2, :cond_70

    if-eqz v0, :cond_70

    .line 247
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/H;->c:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 250
    new-instance v0, Lcom/google/googlenav/ui/view/android/K;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, p1, v2}, Lcom/google/googlenav/ui/view/android/K;-><init>(Lcom/google/googlenav/ui/view/android/H;Lcom/google/googlenav/ui/android/TemplateView;Lcom/google/googlenav/ui/bd;Lcom/google/googlenav/ui/view/android/I;)V

    invoke-virtual {p3, v0}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    .line 264
    :goto_40
    invoke-virtual {p1}, Lcom/google/googlenav/ui/bd;->b()Z

    move-result v0

    if-eqz v0, :cond_4e

    move-object v0, v1

    .line 265
    check-cast v0, Lcom/google/googlenav/ui/android/EditableTemplateView;

    iget-object v2, p0, Lcom/google/googlenav/ui/view/android/H;->a:Lcom/google/googlenav/ui/g;

    invoke-virtual {v0, v2}, Lcom/google/googlenav/ui/android/EditableTemplateView;->setDialogActionHandler(Lcom/google/googlenav/ui/g;)V

    .line 268
    :cond_4e
    invoke-static {}, Lcom/google/googlenav/K;->a()Lcom/google/googlenav/K;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/K;->an()Z

    move-result v0

    if-eqz v0, :cond_69

    iget v0, p1, Lcom/google/googlenav/ui/bd;->r:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_69

    .line 272
    invoke-static {}, Lcom/google/googlenav/android/a;->c()Z

    move-result v0

    if-nez v0, :cond_69

    .line 273
    const v0, 0x7f090014

    invoke-virtual {v1, v0}, Lcom/google/googlenav/ui/android/TemplateView;->setBackgroundResource(I)V

    :cond_69
    move-object p2, v1

    .line 276
    goto :goto_1d

    .line 228
    :cond_6b
    invoke-static {p1, p3}, Lcom/google/googlenav/ui/view/android/H;->a(Lcom/google/googlenav/ui/bd;Landroid/view/ViewGroup;)Lcom/google/googlenav/ui/android/TemplateView;

    move-result-object v1

    goto :goto_2c

    .line 258
    :cond_70
    :goto_70
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/H;->c:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7e

    .line 259
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/H;->c:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_70

    .line 261
    :cond_7e
    invoke-virtual {v1, p1}, Lcom/google/googlenav/ui/android/TemplateView;->setTemplateContent(Lcom/google/googlenav/ui/bd;)V

    goto :goto_40

    :cond_82
    move v0, v1

    move-object v1, p2

    goto :goto_2c
.end method

.method private static a(Lcom/google/googlenav/ui/bd;Landroid/view/ViewGroup;)Lcom/google/googlenav/ui/android/TemplateView;
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 280
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 282
    invoke-static {p0}, Lcom/google/googlenav/ui/view/android/H;->a(Lcom/google/googlenav/ui/bd;)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/ui/android/TemplateView;

    return-object v0
.end method

.method static synthetic a(Lcom/google/googlenav/ui/view/android/H;)Ljava/util/List;
    .registers 2
    .parameter

    .prologue
    .line 32
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/H;->c:Ljava/util/List;

    return-object v0
.end method

.method public static a(Landroid/content/Context;Lcom/google/googlenav/ui/view/u;Lcom/google/googlenav/ui/g;Landroid/widget/ListView;)V
    .registers 7
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 90
    new-instance v0, Lcom/google/googlenav/ui/view/android/H;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/googlenav/ui/view/android/H;-><init>(Landroid/content/Context;Lcom/google/googlenav/ui/view/u;Lcom/google/googlenav/ui/g;)V

    .line 92
    invoke-virtual {p3, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 93
    new-instance v1, Lcom/google/googlenav/ui/view/android/J;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lcom/google/googlenav/ui/view/android/J;-><init>(Lcom/google/googlenav/ui/view/android/H;Lcom/google/googlenav/ui/view/android/I;)V

    invoke-virtual {p3, v1}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 94
    return-void
.end method

.method static synthetic a(Lcom/google/googlenav/ui/view/android/H;Z)Z
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 32
    iput-boolean p1, p0, Lcom/google/googlenav/ui/view/android/H;->b:Z

    return p1
.end method


# virtual methods
.method public a()V
    .registers 3

    .prologue
    .line 287
    monitor-enter p0

    .line 288
    :try_start_1
    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/H;->clear()V

    .line 289
    const/4 v0, 0x0

    :goto_5
    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/H;->d:Lcom/google/googlenav/ui/view/u;

    invoke-virtual {v1}, Lcom/google/googlenav/ui/view/u;->f()I

    move-result v1

    if-ge v0, v1, :cond_19

    .line 290
    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/H;->d:Lcom/google/googlenav/ui/view/u;

    invoke-virtual {v1, v0}, Lcom/google/googlenav/ui/view/u;->a(I)Lcom/google/googlenav/ui/bd;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/googlenav/ui/view/android/H;->add(Ljava/lang/Object;)V

    .line 289
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 292
    :cond_19
    monitor-exit p0

    .line 293
    return-void

    .line 292
    :catchall_1b
    move-exception v0

    monitor-exit p0
    :try_end_1d
    .catchall {:try_start_1 .. :try_end_1d} :catchall_1b

    throw v0
.end method

.method public areAllItemsEnabled()Z
    .registers 2

    .prologue
    .line 98
    const/4 v0, 0x0

    return v0
.end method

.method public getItemViewType(I)I
    .registers 4
    .parameter

    .prologue
    .line 141
    invoke-virtual {p0, p1}, Lcom/google/googlenav/ui/view/android/H;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/ui/bd;

    .line 142
    iget-object v1, v0, Lcom/google/googlenav/ui/bd;->s:LaQ/H;

    if-eqz v1, :cond_16

    .line 143
    iget v1, v0, Lcom/google/googlenav/ui/bd;->r:I

    iget-object v0, v0, Lcom/google/googlenav/ui/bd;->s:LaQ/H;

    invoke-interface {v0}, LaQ/H;->b()I

    move-result v0

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    .line 145
    :goto_15
    return v0

    :cond_16
    iget v0, v0, Lcom/google/googlenav/ui/bd;->r:I

    goto :goto_15
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 194
    invoke-virtual {p0, p1}, Lcom/google/googlenav/ui/view/android/H;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/ui/bd;

    .line 195
    iget-object v1, v0, Lcom/google/googlenav/ui/bd;->s:LaQ/H;

    if-eqz v1, :cond_11

    .line 196
    iget-object v0, v0, Lcom/google/googlenav/ui/bd;->s:LaQ/H;

    invoke-virtual {p0, v0, p2, p3}, Lcom/google/googlenav/ui/view/android/H;->a(LaQ/H;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 199
    :goto_10
    return-object v0

    :cond_11
    invoke-direct {p0, v0, p2, p3}, Lcom/google/googlenav/ui/view/android/H;->a(Lcom/google/googlenav/ui/bd;Landroid/view/View;Landroid/view/ViewGroup;)Lcom/google/googlenav/ui/android/TemplateView;

    move-result-object v0

    goto :goto_10
.end method

.method public getViewTypeCount()I
    .registers 2

    .prologue
    .line 128
    iget v0, p0, Lcom/google/googlenav/ui/view/android/H;->e:I

    return v0
.end method

.method public isEnabled(I)Z
    .registers 4
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 107
    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/H;->getCount()I

    move-result v0

    if-lt p1, v0, :cond_9

    move v0, v1

    .line 118
    :goto_8
    return v0

    .line 113
    :cond_9
    invoke-virtual {p0, p1}, Lcom/google/googlenav/ui/view/android/H;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/ui/bd;

    iget v0, v0, Lcom/google/googlenav/ui/bd;->r:I

    sparse-switch v0, :sswitch_data_18

    .line 118
    const/4 v0, 0x1

    goto :goto_8

    :sswitch_16
    move v0, v1

    .line 116
    goto :goto_8

    .line 113
    :sswitch_data_18
    .sparse-switch
        0x2 -> :sswitch_16
        0x38 -> :sswitch_16
    .end sparse-switch
.end method
