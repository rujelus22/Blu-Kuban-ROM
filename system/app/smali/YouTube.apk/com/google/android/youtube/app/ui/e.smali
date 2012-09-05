.class public Lcom/google/android/youtube/app/ui/e;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# instance fields
.field protected final a:Ljava/util/Map;

.field protected final b:Ljava/util/Map;

.field private final c:Ljava/util/List;

.field private final d:I

.field private final e:Landroid/widget/AdapterView;

.field private final f:Landroid/widget/FrameLayout;

.field private g:Lcom/google/android/youtube/app/ui/f;

.field private h:I


# direct methods
.method synthetic constructor <init>(Landroid/widget/AdapterView;ILandroid/widget/FrameLayout;)V
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 29
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/google/android/youtube/app/ui/e;-><init>(Landroid/widget/AdapterView;ILandroid/widget/FrameLayout;B)V

    return-void
.end method

.method private constructor <init>(Landroid/widget/AdapterView;ILandroid/widget/FrameLayout;B)V
    .registers 11
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 78
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 79
    iput-object p1, p0, Lcom/google/android/youtube/app/ui/e;->e:Landroid/widget/AdapterView;

    .line 80
    iput p2, p0, Lcom/google/android/youtube/app/ui/e;->d:I

    .line 81
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/youtube/app/ui/e;->c:Ljava/util/List;

    .line 82
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/e;->e:Landroid/widget/AdapterView;

    invoke-virtual {v0, p0}, Landroid/widget/AdapterView;->setAdapter(Landroid/widget/Adapter;)V

    .line 83
    iput-object p3, p0, Lcom/google/android/youtube/app/ui/e;->f:Landroid/widget/FrameLayout;

    .line 84
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/youtube/app/ui/e;->a:Ljava/util/Map;

    .line 85
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/youtube/app/ui/e;->b:Ljava/util/Map;

    .line 87
    invoke-virtual {p1, p0}, Landroid/widget/AdapterView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    move v2, v1

    .line 90
    :goto_28
    invoke-virtual {p3}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v0

    if-ge v2, v0, :cond_71

    .line 91
    invoke-virtual {p3, v2}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 92
    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 93
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_75

    .line 94
    iget-object v4, p0, Lcom/google/android/youtube/app/ui/e;->c:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 95
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/e;->a:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3}, Landroid/view/View;->getId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    iget-object v4, p0, Lcom/google/android/youtube/app/ui/e;->b:Ljava/util/Map;

    invoke-virtual {v3}, Landroid/view/View;->getId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    add-int/lit8 v0, v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v4, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    :goto_67
    const/16 v1, 0x8

    invoke-virtual {v3, v1}, Landroid/view/View;->setVisibility(I)V

    .line 90
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move v1, v0

    goto :goto_28

    .line 101
    :cond_71
    invoke-virtual {p0}, Lcom/google/android/youtube/app/ui/e;->notifyDataSetChanged()V

    .line 102
    return-void

    :cond_75
    move v0, v1

    goto :goto_67
.end method

.method public static a(Landroid/widget/ListView;ILandroid/widget/FrameLayout;I)Lcom/google/android/youtube/app/ui/e;
    .registers 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 52
    new-instance v0, Lcom/google/android/youtube/app/ui/g;

    const v1, 0x7f040047

    invoke-direct {v0, p0, v1, p2}, Lcom/google/android/youtube/app/ui/g;-><init>(Landroid/widget/ListView;ILandroid/widget/FrameLayout;)V

    .line 54
    invoke-virtual {v0, p3}, Lcom/google/android/youtube/app/ui/e;->a(I)V

    .line 55
    return-object v0
.end method


# virtual methods
.method public final a()I
    .registers 2

    .prologue
    .line 131
    iget v0, p0, Lcom/google/android/youtube/app/ui/e;->h:I

    return v0
.end method

.method public final a(I)V
    .registers 5
    .parameter

    .prologue
    .line 135
    iget v0, p0, Lcom/google/android/youtube/app/ui/e;->h:I

    if-ne p1, v0, :cond_5

    .line 163
    :cond_4
    :goto_4
    return-void

    .line 139
    :cond_5
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/e;->f:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 140
    if-eqz v0, :cond_4

    .line 144
    iget-object v1, p0, Lcom/google/android/youtube/app/ui/e;->f:Landroid/widget/FrameLayout;

    iget v2, p0, Lcom/google/android/youtube/app/ui/e;->h:I

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 145
    if-eqz v1, :cond_27

    .line 146
    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 147
    iget-object v1, p0, Lcom/google/android/youtube/app/ui/e;->g:Lcom/google/android/youtube/app/ui/f;

    if-eqz v1, :cond_27

    .line 148
    iget-object v1, p0, Lcom/google/android/youtube/app/ui/e;->g:Lcom/google/android/youtube/app/ui/f;

    iget v2, p0, Lcom/google/android/youtube/app/ui/e;->h:I

    invoke-interface {v1, v2}, Lcom/google/android/youtube/app/ui/f;->b(I)V

    .line 152
    :cond_27
    iput p1, p0, Lcom/google/android/youtube/app/ui/e;->h:I

    .line 153
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 154
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/e;->b:Ljava/util/Map;

    iget v1, p0, Lcom/google/android/youtube/app/ui/e;->h:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 155
    if-eqz v0, :cond_50

    .line 156
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/youtube/app/ui/e;->b(I)V

    .line 160
    :goto_44
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/e;->g:Lcom/google/android/youtube/app/ui/f;

    if-eqz v0, :cond_4

    .line 161
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/e;->g:Lcom/google/android/youtube/app/ui/f;

    iget v1, p0, Lcom/google/android/youtube/app/ui/e;->h:I

    invoke-interface {v0, v1}, Lcom/google/android/youtube/app/ui/f;->a(I)V

    goto :goto_4

    .line 158
    :cond_50
    invoke-virtual {p0}, Lcom/google/android/youtube/app/ui/e;->b()V

    goto :goto_44
.end method

.method public final a(Lcom/google/android/youtube/app/ui/f;)V
    .registers 2
    .parameter

    .prologue
    .line 127
    iput-object p1, p0, Lcom/google/android/youtube/app/ui/e;->g:Lcom/google/android/youtube/app/ui/f;

    .line 128
    return-void
.end method

.method protected b()V
    .registers 1

    .prologue
    .line 171
    return-void
.end method

.method protected b(I)V
    .registers 3
    .parameter

    .prologue
    .line 166
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/e;->e:Landroid/widget/AdapterView;

    invoke-virtual {v0, p1}, Landroid/widget/AdapterView;->setSelection(I)V

    .line 167
    return-void
.end method

.method public getCount()I
    .registers 2

    .prologue
    .line 105
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/e;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .registers 3
    .parameter

    .prologue
    .line 109
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/e;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .registers 4
    .parameter

    .prologue
    .line 113
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 7
    .parameter
    .parameter
    .parameter

    .prologue
    .line 117
    if-nez p2, :cond_21

    .line 118
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/e;->e:Landroid/widget/AdapterView;

    invoke-virtual {v0}, Landroid/widget/AdapterView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget v1, p0, Lcom/google/android/youtube/app/ui/e;->d:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 121
    :goto_13
    check-cast v0, Landroid/widget/TextView;

    .line 122
    iget-object v1, p0, Lcom/google/android/youtube/app/ui/e;->c:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 123
    return-object v0

    :cond_21
    move-object v0, p2

    goto :goto_13
.end method

.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 8
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 174
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/e;->a:Ljava/util/Map;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/youtube/app/ui/e;->a(I)V

    .line 175
    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .registers 2
    .parameter

    .prologue
    .line 179
    return-void
.end method
