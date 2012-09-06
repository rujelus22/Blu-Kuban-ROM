.class public final Lcom/android/athome/picker/g;
.super Landroid/widget/ArrayAdapter;
.source "SourceFile"


# instance fields
.field private a:I

.field private b:Landroid/widget/AdapterView;

.field private c:Landroid/view/LayoutInflater;

.field private d:Lcom/android/athome/picker/MediaOutput;

.field private e:Lcom/android/athome/picker/MediaOutputGroup;

.field private f:I

.field private g:I

.field private h:Lcom/android/athome/picker/n;


# direct methods
.method public constructor <init>(Landroid/content/Context;II)V
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 73
    const/4 v0, -0x1

    invoke-direct {p0, p1, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    .line 28
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/athome/picker/g;->a:I

    .line 74
    invoke-virtual {p0}, Lcom/android/athome/picker/g;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/athome/picker/g;->c:Landroid/view/LayoutInflater;

    .line 75
    iput p3, p0, Lcom/android/athome/picker/g;->g:I

    .line 76
    return-void
.end method

.method static synthetic a(Lcom/android/athome/picker/g;I)I
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 23
    iput p1, p0, Lcom/android/athome/picker/g;->f:I

    return p1
.end method

.method static synthetic a(Lcom/android/athome/picker/g;)Landroid/widget/AdapterView;
    .registers 2
    .parameter

    .prologue
    .line 23
    iget-object v0, p0, Lcom/android/athome/picker/g;->b:Landroid/widget/AdapterView;

    return-object v0
.end method

.method static synthetic b(Lcom/android/athome/picker/g;)Lcom/android/athome/picker/n;
    .registers 2
    .parameter

    .prologue
    .line 23
    iget-object v0, p0, Lcom/android/athome/picker/g;->h:Lcom/android/athome/picker/n;

    return-object v0
.end method


# virtual methods
.method public final a(I)V
    .registers 2
    .parameter

    .prologue
    .line 98
    iput p1, p0, Lcom/android/athome/picker/g;->a:I

    .line 99
    invoke-virtual {p0}, Lcom/android/athome/picker/g;->notifyDataSetInvalidated()V

    .line 100
    return-void
.end method

.method public final a(Landroid/widget/AdapterView;)V
    .registers 2
    .parameter

    .prologue
    .line 306
    iput-object p1, p0, Lcom/android/athome/picker/g;->b:Landroid/widget/AdapterView;

    .line 307
    return-void
.end method

.method public final a(Lcom/android/athome/picker/MediaOutput;)V
    .registers 2
    .parameter

    .prologue
    .line 290
    iput-object p1, p0, Lcom/android/athome/picker/g;->d:Lcom/android/athome/picker/MediaOutput;

    .line 291
    invoke-virtual {p0}, Lcom/android/athome/picker/g;->notifyDataSetInvalidated()V

    .line 292
    return-void
.end method

.method public final a(Lcom/android/athome/picker/MediaOutputGroup;)V
    .registers 4
    .parameter

    .prologue
    .line 299
    iput-object p1, p0, Lcom/android/athome/picker/g;->e:Lcom/android/athome/picker/MediaOutputGroup;

    .line 300
    iget v0, p0, Lcom/android/athome/picker/g;->a:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_a

    .line 301
    invoke-virtual {p0}, Lcom/android/athome/picker/g;->notifyDataSetInvalidated()V

    .line 303
    :cond_a
    return-void
.end method

.method public final a(Lcom/android/athome/picker/n;)V
    .registers 2
    .parameter

    .prologue
    .line 134
    iput-object p1, p0, Lcom/android/athome/picker/g;->h:Lcom/android/athome/picker/n;

    .line 135
    return-void
.end method

.method public final synthetic add(Ljava/lang/Object;)V
    .registers 5
    .parameter

    .prologue
    .line 23
    check-cast p1, Lcom/android/athome/picker/MediaOutput;

    invoke-virtual {p1}, Lcom/android/athome/picker/MediaOutput;->getType()I

    move-result v0

    iget v1, p0, Lcom/android/athome/picker/g;->g:I

    if-eq v0, v1, :cond_2f

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Can\'t add Output of type "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/athome/picker/MediaOutput;->getType()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to adapter of type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/athome/picker/g;->g:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2f
    invoke-super {p0, p1}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    return-void
.end method

.method public final getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 286
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/athome/picker/g;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public final getItemViewType(I)I
    .registers 3
    .parameter

    .prologue
    .line 80
    iget v0, p0, Lcom/android/athome/picker/g;->a:I

    return v0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 12
    .parameter
    .parameter
    .parameter

    .prologue
    const/16 v5, 0x8

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v4, 0x0

    .line 109
    iget v0, p0, Lcom/android/athome/picker/g;->a:I

    packed-switch v0, :pswitch_data_1a8

    .line 120
    const-string v0, "MediaOutputAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unsupported view mode: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/athome/picker/g;->a:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    move-object p2, v4

    .line 122
    :goto_21
    return-object p2

    .line 111
    :pswitch_22
    if-nez p2, :cond_2c

    iget-object v0, p0, Lcom/android/athome/picker/g;->c:Landroid/view/LayoutInflater;

    sget v1, Lcom/android/athome/picker/aj;->c:I

    invoke-virtual {v0, v1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    :cond_2c
    new-instance v0, Lcom/android/athome/picker/k;

    invoke-direct {v0, p0, p2, p1}, Lcom/android/athome/picker/k;-><init>(Lcom/android/athome/picker/g;Landroid/view/View;I)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0, p1}, Lcom/android/athome/picker/g;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/athome/picker/MediaOutput;

    sget v1, Lcom/android/athome/picker/ai;->s:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/android/athome/picker/MediaOutput;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p2, v7}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object v1, p0, Lcom/android/athome/picker/g;->d:Lcom/android/athome/picker/MediaOutput;

    if-eqz v1, :cond_5d

    iget-object v1, p0, Lcom/android/athome/picker/g;->d:Lcom/android/athome/picker/MediaOutput;

    invoke-virtual {v1, v0}, Lcom/android/athome/picker/MediaOutput;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5d

    sget v1, Lcom/android/athome/picker/ah;->c:I

    invoke-virtual {p2, v1}, Landroid/view/View;->setBackgroundResource(I)V

    :cond_5d
    const-string v1, "MediaOutputAdapter"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Output id: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/athome/picker/MediaOutput;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " name: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/athome/picker/MediaOutput;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_21

    .line 114
    :pswitch_84
    if-nez p2, :cond_b6

    iget-object v0, p0, Lcom/android/athome/picker/g;->c:Landroid/view/LayoutInflater;

    sget v1, Lcom/android/athome/picker/aj;->b:I

    invoke-virtual {v0, v1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    sget v0, Lcom/android/athome/picker/ai;->s:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sget v1, Lcom/android/athome/picker/ai;->m:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    sget v2, Lcom/android/athome/picker/ai;->r:I

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    sget v3, Lcom/android/athome/picker/ai;->p:I

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    new-instance v4, Lcom/android/athome/picker/l;

    invoke-direct {v4, v0, v1, v2, v3}, Lcom/android/athome/picker/l;-><init>(Landroid/widget/TextView;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/CheckBox;)V

    invoke-virtual {p2, v4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :cond_b6
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/athome/picker/l;

    invoke-virtual {p0, p1}, Lcom/android/athome/picker/g;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/athome/picker/MediaOutput;

    invoke-virtual {v1}, Lcom/android/athome/picker/MediaOutput;->getName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_cd

    iget-object v3, v0, Lcom/android/athome/picker/l;->a:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_cd
    invoke-virtual {v1}, Lcom/android/athome/picker/MediaOutput;->getStatus()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_108

    iget-object v2, v0, Lcom/android/athome/picker/l;->b:Landroid/widget/ImageView;

    invoke-virtual {v2, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v2, v0, Lcom/android/athome/picker/l;->c:Landroid/widget/TextView;

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v2, v0, Lcom/android/athome/picker/l;->c:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/android/athome/picker/MediaOutput;->getStatus()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_ea
    iget-object v2, p0, Lcom/android/athome/picker/g;->e:Lcom/android/athome/picker/MediaOutputGroup;

    if-eqz v2, :cond_113

    iget-object v2, p0, Lcom/android/athome/picker/g;->e:Lcom/android/athome/picker/MediaOutputGroup;

    invoke-virtual {v2, v1}, Lcom/android/athome/picker/MediaOutputGroup;->contains(Lcom/android/athome/picker/MediaOutput;)Z

    move-result v1

    if-eqz v1, :cond_113

    move v1, v6

    :goto_f7
    iget-object v2, v0, Lcom/android/athome/picker/l;->d:Landroid/widget/CheckBox;

    invoke-virtual {v2, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    iget-object v0, v0, Lcom/android/athome/picker/l;->d:Landroid/widget/CheckBox;

    new-instance v1, Lcom/android/athome/picker/j;

    invoke-direct {v1, p0, p2, p1}, Lcom/android/athome/picker/j;-><init>(Lcom/android/athome/picker/g;Landroid/view/View;I)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_21

    :cond_108
    iget-object v2, v0, Lcom/android/athome/picker/l;->b:Landroid/widget/ImageView;

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v2, v0, Lcom/android/athome/picker/l;->c:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_ea

    :cond_113
    move v1, v7

    goto :goto_f7

    .line 117
    :pswitch_115
    if-nez p2, :cond_140

    iget-object v0, p0, Lcom/android/athome/picker/g;->c:Landroid/view/LayoutInflater;

    sget v1, Lcom/android/athome/picker/aj;->d:I

    invoke-virtual {v0, v1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    sget v0, Lcom/android/athome/picker/ai;->q:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    sget v0, Lcom/android/athome/picker/ai;->n:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    sget v0, Lcom/android/athome/picker/ai;->C:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/SeekBar;

    new-instance v0, Lcom/android/athome/picker/m;

    move-object v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/android/athome/picker/m;-><init>(Landroid/widget/ImageView;Landroid/widget/SeekBar;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/CheckBox;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :cond_140
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/athome/picker/m;

    invoke-virtual {p0, p1}, Lcom/android/athome/picker/g;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/athome/picker/MediaOutput;

    invoke-virtual {v1}, Lcom/android/athome/picker/MediaOutput;->getName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_157

    iget-object v3, v0, Lcom/android/athome/picker/m;->c:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_157
    iget-object v2, v0, Lcom/android/athome/picker/m;->b:Landroid/widget/SeekBar;

    invoke-virtual {v1}, Lcom/android/athome/picker/MediaOutput;->getVolume()F

    move-result v3

    iget-object v4, v0, Lcom/android/athome/picker/m;->b:Landroid/widget/SeekBar;

    invoke-virtual {v4}, Landroid/widget/SeekBar;->getMax()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v3, v4

    float-to-int v3, v3

    invoke-virtual {v2, v3}, Landroid/widget/SeekBar;->setProgress(I)V

    iget-object v2, v0, Lcom/android/athome/picker/m;->b:Landroid/widget/SeekBar;

    invoke-virtual {v1}, Lcom/android/athome/picker/MediaOutput;->getIsMuted()Z

    move-result v3

    if-nez v3, :cond_19f

    :goto_171
    invoke-virtual {v2, v6}, Landroid/widget/SeekBar;->setEnabled(Z)V

    iget-object v2, v0, Lcom/android/athome/picker/m;->a:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/LevelListDrawable;

    invoke-virtual {v1}, Lcom/android/athome/picker/MediaOutput;->getIsMuted()Z

    move-result v3

    if-eqz v3, :cond_1a1

    const/16 v3, 0x65

    :goto_184
    invoke-virtual {v2, v3}, Landroid/graphics/drawable/LevelListDrawable;->setLevel(I)Z

    iget-object v3, v0, Lcom/android/athome/picker/m;->b:Landroid/widget/SeekBar;

    new-instance v4, Lcom/android/athome/picker/h;

    invoke-direct {v4, p0, v1, v2}, Lcom/android/athome/picker/h;-><init>(Lcom/android/athome/picker/g;Lcom/android/athome/picker/MediaOutput;Landroid/graphics/drawable/LevelListDrawable;)V

    invoke-virtual {v3, v4}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    iget-object v3, v0, Lcom/android/athome/picker/m;->b:Landroid/widget/SeekBar;

    iget-object v0, v0, Lcom/android/athome/picker/m;->a:Landroid/widget/ImageView;

    new-instance v4, Lcom/android/athome/picker/i;

    invoke-direct {v4, p0, v2, v3, v1}, Lcom/android/athome/picker/i;-><init>(Lcom/android/athome/picker/g;Landroid/graphics/drawable/LevelListDrawable;Landroid/widget/SeekBar;Lcom/android/athome/picker/MediaOutput;)V

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_21

    :cond_19f
    move v6, v7

    goto :goto_171

    :cond_1a1
    iget-object v3, v0, Lcom/android/athome/picker/m;->b:Landroid/widget/SeekBar;

    invoke-virtual {v3}, Landroid/widget/SeekBar;->getProgress()I

    move-result v3

    goto :goto_184

    .line 109
    :pswitch_data_1a8
    .packed-switch 0x0
        :pswitch_22
        :pswitch_84
        :pswitch_115
    .end packed-switch
.end method

.method public final getViewTypeCount()I
    .registers 2

    .prologue
    .line 85
    const/4 v0, 0x3

    return v0
.end method
