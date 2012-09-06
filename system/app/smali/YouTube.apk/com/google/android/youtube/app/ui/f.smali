.class public Lcom/google/android/youtube/app/ui/f;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"


# instance fields
.field protected final a:Ljava/util/Map;

.field protected final b:Ljava/util/Map;

.field private final c:Ljava/util/List;

.field private final d:I

.field private final e:Landroid/widget/AdapterView;

.field private final f:Landroid/widget/FrameLayout;

.field private g:Lcom/google/android/youtube/app/ui/g;

.field private h:I


# direct methods
.method private constructor <init>(Landroid/widget/AdapterView;ILandroid/widget/FrameLayout;)V
    .registers 10
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 64
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 65
    iput-object p1, p0, Lcom/google/android/youtube/app/ui/f;->e:Landroid/widget/AdapterView;

    .line 66
    iput p2, p0, Lcom/google/android/youtube/app/ui/f;->d:I

    .line 67
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/google/android/youtube/app/ui/f;->c:Ljava/util/List;

    .line 68
    iget-object v1, p0, Lcom/google/android/youtube/app/ui/f;->e:Landroid/widget/AdapterView;

    invoke-virtual {v1, p0}, Landroid/widget/AdapterView;->setAdapter(Landroid/widget/Adapter;)V

    .line 69
    iput-object p3, p0, Lcom/google/android/youtube/app/ui/f;->f:Landroid/widget/FrameLayout;

    .line 70
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/google/android/youtube/app/ui/f;->a:Ljava/util/Map;

    .line 71
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/google/android/youtube/app/ui/f;->b:Ljava/util/Map;

    move v1, v0

    move v2, v0

    .line 74
    :goto_26
    invoke-virtual {p3}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v0

    if-ge v1, v0, :cond_6f

    .line 75
    invoke-virtual {p3, v1}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 76
    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 77
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_66

    .line 78
    iget-object v4, p0, Lcom/google/android/youtube/app/ui/f;->c:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 79
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/f;->a:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3}, Landroid/view/View;->getId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    iget-object v4, p0, Lcom/google/android/youtube/app/ui/f;->b:Ljava/util/Map;

    invoke-virtual {v3}, Landroid/view/View;->getId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    add-int/lit8 v0, v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v4, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v2, v0

    .line 82
    :cond_66
    const/16 v0, 0x8

    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 74
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_26

    .line 85
    :cond_6f
    invoke-virtual {p0}, Lcom/google/android/youtube/app/ui/f;->notifyDataSetChanged()V

    .line 86
    return-void
.end method

.method synthetic constructor <init>(Landroid/widget/AdapterView;ILandroid/widget/FrameLayout;B)V
    .registers 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 27
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/youtube/app/ui/f;-><init>(Landroid/widget/AdapterView;ILandroid/widget/FrameLayout;)V

    return-void
.end method

.method public static a(Landroid/widget/ListView;ILandroid/widget/FrameLayout;I)Lcom/google/android/youtube/app/ui/f;
    .registers 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 49
    new-instance v0, Lcom/google/android/youtube/app/ui/h;

    const v1, 0x7f040080

    invoke-direct {v0, p0, v1, p2}, Lcom/google/android/youtube/app/ui/h;-><init>(Landroid/widget/ListView;ILandroid/widget/FrameLayout;)V

    .line 51
    invoke-virtual {v0, p3}, Lcom/google/android/youtube/app/ui/f;->a(I)V

    .line 52
    return-object v0
.end method


# virtual methods
.method public final a()I
    .registers 2

    .prologue
    .line 115
    iget v0, p0, Lcom/google/android/youtube/app/ui/f;->h:I

    return v0
.end method

.method public final a(I)V
    .registers 5
    .parameter

    .prologue
    .line 119
    iget v0, p0, Lcom/google/android/youtube/app/ui/f;->h:I

    if-ne p1, v0, :cond_5

    .line 147
    :cond_4
    :goto_4
    return-void

    .line 123
    :cond_5
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/f;->f:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 124
    if-eqz v0, :cond_4

    .line 128
    iget-object v1, p0, Lcom/google/android/youtube/app/ui/f;->f:Landroid/widget/FrameLayout;

    iget v2, p0, Lcom/google/android/youtube/app/ui/f;->h:I

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 129
    if-eqz v1, :cond_27

    .line 130
    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 131
    iget-object v1, p0, Lcom/google/android/youtube/app/ui/f;->g:Lcom/google/android/youtube/app/ui/g;

    if-eqz v1, :cond_27

    .line 132
    iget-object v1, p0, Lcom/google/android/youtube/app/ui/f;->g:Lcom/google/android/youtube/app/ui/g;

    iget v2, p0, Lcom/google/android/youtube/app/ui/f;->h:I

    invoke-interface {v1, v2}, Lcom/google/android/youtube/app/ui/g;->b(I)V

    .line 136
    :cond_27
    iput p1, p0, Lcom/google/android/youtube/app/ui/f;->h:I

    .line 137
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 138
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/f;->b:Ljava/util/Map;

    iget v1, p0, Lcom/google/android/youtube/app/ui/f;->h:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 139
    if-eqz v0, :cond_50

    .line 140
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/youtube/app/ui/f;->b(I)V

    .line 144
    :goto_44
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/f;->g:Lcom/google/android/youtube/app/ui/g;

    if-eqz v0, :cond_4

    .line 145
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/f;->g:Lcom/google/android/youtube/app/ui/g;

    iget v1, p0, Lcom/google/android/youtube/app/ui/f;->h:I

    invoke-interface {v0, v1}, Lcom/google/android/youtube/app/ui/g;->a(I)V

    goto :goto_4

    .line 142
    :cond_50
    invoke-virtual {p0}, Lcom/google/android/youtube/app/ui/f;->b()V

    goto :goto_44
.end method

.method public final a(Lcom/google/android/youtube/app/ui/g;)V
    .registers 2
    .parameter

    .prologue
    .line 111
    iput-object p1, p0, Lcom/google/android/youtube/app/ui/f;->g:Lcom/google/android/youtube/app/ui/g;

    .line 112
    return-void
.end method

.method protected b()V
    .registers 1

    .prologue
    .line 155
    return-void
.end method

.method protected b(I)V
    .registers 3
    .parameter

    .prologue
    .line 150
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/f;->e:Landroid/widget/AdapterView;

    invoke-virtual {v0, p1}, Landroid/widget/AdapterView;->setSelection(I)V

    .line 151
    return-void
.end method

.method public getCount()I
    .registers 2

    .prologue
    .line 89
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/f;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .registers 3
    .parameter

    .prologue
    .line 93
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/f;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .registers 4
    .parameter

    .prologue
    .line 97
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 7
    .parameter
    .parameter
    .parameter

    .prologue
    .line 101
    if-nez p2, :cond_21

    .line 102
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/f;->e:Landroid/widget/AdapterView;

    invoke-virtual {v0}, Landroid/widget/AdapterView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget v1, p0, Lcom/google/android/youtube/app/ui/f;->d:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 105
    :goto_13
    check-cast v0, Landroid/widget/TextView;

    .line 106
    iget-object v1, p0, Lcom/google/android/youtube/app/ui/f;->c:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 107
    return-object v0

    :cond_21
    move-object v0, p2

    goto :goto_13
.end method
