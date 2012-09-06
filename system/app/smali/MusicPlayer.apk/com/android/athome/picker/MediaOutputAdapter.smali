.class public Lcom/android/athome/picker/MediaOutputAdapter;
.super Landroid/widget/ArrayAdapter;
.source "MediaOutputAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/athome/picker/MediaOutputAdapter$VolumeSliderListener;,
        Lcom/android/athome/picker/MediaOutputAdapter$GroupingViewHolder;,
        Lcom/android/athome/picker/MediaOutputAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/android/athome/picker/MediaOutput;",
        ">;"
    }
.end annotation


# instance fields
.field private mFirstVisibleIndex:I

.field private mInflater:Landroid/view/LayoutInflater;

.field private mMode:I

.field private mOutputType:I

.field private mSelectedGroup:Lcom/android/athome/picker/MediaOutputGroup;

.field private mSelectedOutput:Lcom/android/athome/picker/MediaOutput;

.field private mView:Landroid/widget/AdapterView;

.field private mVolumeSliderListener:Lcom/android/athome/picker/MediaOutputAdapter$VolumeSliderListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;II)V
    .registers 6
    .parameter "context"
    .parameter "textViewResourceId"
    .parameter "outputType"

    .prologue
    .line 73
    invoke-direct {p0, p1, p2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    .line 28
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/athome/picker/MediaOutputAdapter;->mMode:I

    .line 74
    invoke-virtual {p0}, Lcom/android/athome/picker/MediaOutputAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/athome/picker/MediaOutputAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 75
    iput p3, p0, Lcom/android/athome/picker/MediaOutputAdapter;->mOutputType:I

    .line 76
    return-void
.end method

.method static synthetic access$002(Lcom/android/athome/picker/MediaOutputAdapter;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 23
    iput p1, p0, Lcom/android/athome/picker/MediaOutputAdapter;->mFirstVisibleIndex:I

    return p1
.end method

.method static synthetic access$100(Lcom/android/athome/picker/MediaOutputAdapter;)Landroid/widget/AdapterView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 23
    iget-object v0, p0, Lcom/android/athome/picker/MediaOutputAdapter;->mView:Landroid/widget/AdapterView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/athome/picker/MediaOutputAdapter;)Lcom/android/athome/picker/MediaOutputAdapter$VolumeSliderListener;
    .registers 2
    .parameter "x0"

    .prologue
    .line 23
    iget-object v0, p0, Lcom/android/athome/picker/MediaOutputAdapter;->mVolumeSliderListener:Lcom/android/athome/picker/MediaOutputAdapter$VolumeSliderListener;

    return-object v0
.end method

.method private createGroupingView(ILandroid/view/View;)Landroid/view/View;
    .registers 16
    .parameter "position"
    .parameter "convertView"

    .prologue
    const/16 v12, 0x8

    const/4 v1, 0x0

    .line 215
    if-nez p2, :cond_36

    .line 216
    iget-object v9, p0, Lcom/android/athome/picker/MediaOutputAdapter;->mInflater:Landroid/view/LayoutInflater;

    sget v10, Lcom/android/athome/picker/R$layout;->list_item_output_grouping:I

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 217
    sget v9, Lcom/android/athome/picker/R$id;->receiver_name:I

    invoke-virtual {p2, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 218
    .local v3, name:Landroid/widget/TextView;
    sget v9, Lcom/android/athome/picker/R$id;->icon_now_playing_bar:I

    invoke-virtual {p2, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 219
    .local v4, nowPlaying:Landroid/widget/ImageView;
    sget v9, Lcom/android/athome/picker/R$id;->receiver_current_status:I

    invoke-virtual {p2, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 220
    .local v6, status:Landroid/widget/TextView;
    sget v9, Lcom/android/athome/picker/R$id;->list_item_checkbox:I

    invoke-virtual {p2, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/CheckBox;

    .line 221
    .local v5, selectedStatus:Landroid/widget/CheckBox;
    new-instance v9, Lcom/android/athome/picker/MediaOutputAdapter$GroupingViewHolder;

    invoke-direct {v9, v3, v4, v6, v5}, Lcom/android/athome/picker/MediaOutputAdapter$GroupingViewHolder;-><init>(Landroid/widget/TextView;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/CheckBox;)V

    invoke-virtual {p2, v9}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 224
    .end local v3           #name:Landroid/widget/TextView;
    .end local v4           #nowPlaying:Landroid/widget/ImageView;
    .end local v5           #selectedStatus:Landroid/widget/CheckBox;
    .end local v6           #status:Landroid/widget/TextView;
    :cond_36
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/athome/picker/MediaOutputAdapter$GroupingViewHolder;

    .line 225
    .local v0, holder:Lcom/android/athome/picker/MediaOutputAdapter$GroupingViewHolder;
    move-object v8, p2

    .line 226
    .local v8, tempView:Landroid/view/View;
    move v7, p1

    .line 228
    .local v7, tempPosition:I
    invoke-virtual {p0, p1}, Lcom/android/athome/picker/MediaOutputAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/athome/picker/MediaOutput;

    .line 229
    .local v2, item:Lcom/android/athome/picker/MediaOutput;
    invoke-virtual {v2}, Lcom/android/athome/picker/MediaOutput;->getName()Ljava/lang/String;

    move-result-object v3

    .line 230
    .local v3, name:Ljava/lang/String;
    if-eqz v3, :cond_4f

    .line 231
    iget-object v9, v0, Lcom/android/athome/picker/MediaOutputAdapter$GroupingViewHolder;->name:Landroid/widget/TextView;

    invoke-virtual {v9, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 234
    :cond_4f
    invoke-virtual {v2}, Lcom/android/athome/picker/MediaOutput;->getStatus()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_89

    .line 235
    iget-object v9, v0, Lcom/android/athome/picker/MediaOutputAdapter$GroupingViewHolder;->nowPlaying:Landroid/widget/ImageView;

    invoke-virtual {v9, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 236
    iget-object v9, v0, Lcom/android/athome/picker/MediaOutputAdapter$GroupingViewHolder;->status:Landroid/widget/TextView;

    invoke-virtual {v9, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 237
    iget-object v9, v0, Lcom/android/athome/picker/MediaOutputAdapter$GroupingViewHolder;->status:Landroid/widget/TextView;

    invoke-virtual {v2}, Lcom/android/athome/picker/MediaOutput;->getStatus()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 244
    :goto_6c
    iget-object v9, p0, Lcom/android/athome/picker/MediaOutputAdapter;->mSelectedGroup:Lcom/android/athome/picker/MediaOutputGroup;

    if-eqz v9, :cond_79

    iget-object v9, p0, Lcom/android/athome/picker/MediaOutputAdapter;->mSelectedGroup:Lcom/android/athome/picker/MediaOutputGroup;

    invoke-virtual {v9, v2}, Lcom/android/athome/picker/MediaOutputGroup;->contains(Lcom/android/athome/picker/MediaOutput;)Z

    move-result v9

    if-eqz v9, :cond_79

    const/4 v1, 0x1

    .line 245
    .local v1, isChecked:Z
    :cond_79
    iget-object v9, v0, Lcom/android/athome/picker/MediaOutputAdapter$GroupingViewHolder;->checkBox:Landroid/widget/CheckBox;

    invoke-virtual {v9, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 247
    iget-object v9, v0, Lcom/android/athome/picker/MediaOutputAdapter$GroupingViewHolder;->checkBox:Landroid/widget/CheckBox;

    new-instance v10, Lcom/android/athome/picker/MediaOutputAdapter$3;

    invoke-direct {v10, p0, v8, v7}, Lcom/android/athome/picker/MediaOutputAdapter$3;-><init>(Lcom/android/athome/picker/MediaOutputAdapter;Landroid/view/View;I)V

    invoke-virtual {v9, v10}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 254
    return-object p2

    .line 239
    .end local v1           #isChecked:Z
    :cond_89
    iget-object v9, v0, Lcom/android/athome/picker/MediaOutputAdapter$GroupingViewHolder;->nowPlaying:Landroid/widget/ImageView;

    invoke-virtual {v9, v12}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 240
    iget-object v9, v0, Lcom/android/athome/picker/MediaOutputAdapter$GroupingViewHolder;->status:Landroid/widget/TextView;

    invoke-virtual {v9, v12}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_6c
.end method

.method private createOutputSelectionView(ILandroid/view/View;)Landroid/view/View;
    .registers 10
    .parameter "position"
    .parameter "convertView"

    .prologue
    .line 258
    if-nez p2, :cond_b

    .line 259
    iget-object v4, p0, Lcom/android/athome/picker/MediaOutputAdapter;->mInflater:Landroid/view/LayoutInflater;

    sget v5, Lcom/android/athome/picker/R$layout;->list_item_output_receiver:I

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 264
    :cond_b
    move-object v3, p2

    .line 265
    .local v3, tempView:Landroid/view/View;
    move v2, p1

    .line 266
    .local v2, tempPosition:I
    new-instance v4, Lcom/android/athome/picker/MediaOutputAdapter$4;

    invoke-direct {v4, p0, v3, v2}, Lcom/android/athome/picker/MediaOutputAdapter$4;-><init>(Lcom/android/athome/picker/MediaOutputAdapter;Landroid/view/View;I)V

    invoke-virtual {p2, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 272
    invoke-virtual {p0, p1}, Lcom/android/athome/picker/MediaOutputAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/athome/picker/MediaOutput;

    .line 273
    .local v1, item:Lcom/android/athome/picker/MediaOutput;
    sget v4, Lcom/android/athome/picker/R$id;->receiver_name:I

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 274
    .local v0, groupName:Landroid/widget/TextView;
    invoke-virtual {v1}, Lcom/android/athome/picker/MediaOutput;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 276
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/View;->setBackgroundResource(I)V

    .line 277
    iget-object v4, p0, Lcom/android/athome/picker/MediaOutputAdapter;->mSelectedOutput:Lcom/android/athome/picker/MediaOutput;

    if-eqz v4, :cond_3f

    iget-object v4, p0, Lcom/android/athome/picker/MediaOutputAdapter;->mSelectedOutput:Lcom/android/athome/picker/MediaOutput;

    invoke-virtual {v4, v1}, Lcom/android/athome/picker/MediaOutput;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3f

    .line 278
    sget v4, Lcom/android/athome/picker/R$drawable;->list_selected_holo_dark:I

    invoke-virtual {v3, v4}, Landroid/view/View;->setBackgroundResource(I)V

    .line 280
    :cond_3f
    const-string v4, "MediaOutputAdapter"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Output id: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Lcom/android/athome/picker/MediaOutput;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " name: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Lcom/android/athome/picker/MediaOutput;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    return-object p2
.end method

.method private createVolumeControlView(ILandroid/view/View;)Landroid/view/View;
    .registers 14
    .parameter "position"
    .parameter "convertView"

    .prologue
    const/4 v4, 0x0

    .line 138
    if-nez p2, :cond_2c

    .line 139
    iget-object v0, p0, Lcom/android/athome/picker/MediaOutputAdapter;->mInflater:Landroid/view/LayoutInflater;

    sget v5, Lcom/android/athome/picker/R$layout;->list_item_volume_details:I

    invoke-virtual {v0, v5, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 140
    sget v0, Lcom/android/athome/picker/R$id;->name:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 141
    .local v3, label:Landroid/widget/TextView;
    sget v0, Lcom/android/athome/picker/R$id;->icon_volume:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 142
    .local v1, volumeIcon:Landroid/widget/ImageView;
    sget v0, Lcom/android/athome/picker/R$id;->volume_slider:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/SeekBar;

    .line 143
    .local v2, volumeSlider:Landroid/widget/SeekBar;
    new-instance v0, Lcom/android/athome/picker/MediaOutputAdapter$ViewHolder;

    move-object v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/android/athome/picker/MediaOutputAdapter$ViewHolder;-><init>(Landroid/widget/ImageView;Landroid/widget/SeekBar;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/CheckBox;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 145
    .end local v1           #volumeIcon:Landroid/widget/ImageView;
    .end local v2           #volumeSlider:Landroid/widget/SeekBar;
    .end local v3           #label:Landroid/widget/TextView;
    :cond_2c
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/athome/picker/MediaOutputAdapter$ViewHolder;

    .line 147
    .local v6, holder:Lcom/android/athome/picker/MediaOutputAdapter$ViewHolder;
    move-object v10, p2

    .line 148
    .local v10, tempView:Landroid/view/View;
    move v9, p1

    .line 150
    .local v9, tempPosition:I
    invoke-virtual {p0, p1}, Lcom/android/athome/picker/MediaOutputAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/athome/picker/MediaOutput;

    .line 151
    .local v7, item:Lcom/android/athome/picker/MediaOutput;
    invoke-virtual {v7}, Lcom/android/athome/picker/MediaOutput;->getName()Ljava/lang/String;

    move-result-object v8

    .line 152
    .local v8, name:Ljava/lang/String;
    if-eqz v8, :cond_45

    .line 153
    iget-object v0, v6, Lcom/android/athome/picker/MediaOutputAdapter$ViewHolder;->name:Landroid/widget/TextView;

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 156
    :cond_45
    iget-object v0, v6, Lcom/android/athome/picker/MediaOutputAdapter$ViewHolder;->volumeSlider:Landroid/widget/SeekBar;

    invoke-virtual {v7}, Lcom/android/athome/picker/MediaOutput;->getVolume()F

    move-result v4

    iget-object v5, v6, Lcom/android/athome/picker/MediaOutputAdapter$ViewHolder;->volumeSlider:Landroid/widget/SeekBar;

    invoke-virtual {v5}, Landroid/widget/SeekBar;->getMax()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v4, v5

    float-to-int v4, v4

    invoke-virtual {v0, v4}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 157
    iget-object v4, v6, Lcom/android/athome/picker/MediaOutputAdapter$ViewHolder;->volumeSlider:Landroid/widget/SeekBar;

    invoke-virtual {v7}, Lcom/android/athome/picker/MediaOutput;->getIsMuted()Z

    move-result v0

    if-nez v0, :cond_8d

    const/4 v0, 0x1

    :goto_60
    invoke-virtual {v4, v0}, Landroid/widget/SeekBar;->setEnabled(Z)V

    .line 159
    iget-object v0, v6, Lcom/android/athome/picker/MediaOutputAdapter$ViewHolder;->volumeIcon:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/LevelListDrawable;

    .line 160
    .local v1, volumeIcon:Landroid/graphics/drawable/LevelListDrawable;
    invoke-virtual {v7}, Lcom/android/athome/picker/MediaOutput;->getIsMuted()Z

    move-result v0

    if-eqz v0, :cond_8f

    const/16 v0, 0x65

    :goto_73
    invoke-virtual {v1, v0}, Landroid/graphics/drawable/LevelListDrawable;->setLevel(I)Z

    .line 163
    iget-object v0, v6, Lcom/android/athome/picker/MediaOutputAdapter$ViewHolder;->volumeSlider:Landroid/widget/SeekBar;

    new-instance v4, Lcom/android/athome/picker/MediaOutputAdapter$1;

    invoke-direct {v4, p0, v7, v1}, Lcom/android/athome/picker/MediaOutputAdapter$1;-><init>(Lcom/android/athome/picker/MediaOutputAdapter;Lcom/android/athome/picker/MediaOutput;Landroid/graphics/drawable/LevelListDrawable;)V

    invoke-virtual {v0, v4}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 191
    iget-object v2, v6, Lcom/android/athome/picker/MediaOutputAdapter$ViewHolder;->volumeSlider:Landroid/widget/SeekBar;

    .line 192
    .restart local v2       #volumeSlider:Landroid/widget/SeekBar;
    iget-object v0, v6, Lcom/android/athome/picker/MediaOutputAdapter$ViewHolder;->volumeIcon:Landroid/widget/ImageView;

    new-instance v4, Lcom/android/athome/picker/MediaOutputAdapter$2;

    invoke-direct {v4, p0, v1, v2, v7}, Lcom/android/athome/picker/MediaOutputAdapter$2;-><init>(Lcom/android/athome/picker/MediaOutputAdapter;Landroid/graphics/drawable/LevelListDrawable;Landroid/widget/SeekBar;Lcom/android/athome/picker/MediaOutput;)V

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 211
    return-object p2

    .line 157
    .end local v1           #volumeIcon:Landroid/graphics/drawable/LevelListDrawable;
    .end local v2           #volumeSlider:Landroid/widget/SeekBar;
    :cond_8d
    const/4 v0, 0x0

    goto :goto_60

    .line 160
    .restart local v1       #volumeIcon:Landroid/graphics/drawable/LevelListDrawable;
    :cond_8f
    iget-object v0, v6, Lcom/android/athome/picker/MediaOutputAdapter$ViewHolder;->volumeSlider:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    goto :goto_73
.end method


# virtual methods
.method public add(Lcom/android/athome/picker/MediaOutput;)V
    .registers 5
    .parameter "output"

    .prologue
    .line 90
    invoke-virtual {p1}, Lcom/android/athome/picker/MediaOutput;->getType()I

    move-result v0

    iget v1, p0, Lcom/android/athome/picker/MediaOutputAdapter;->mOutputType:I

    if-eq v0, v1, :cond_31

    .line 91
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t add Output of type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/athome/picker/MediaOutput;->getType()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to adapter of type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/athome/picker/MediaOutputAdapter;->mOutputType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 94
    :cond_31
    invoke-super {p0, p1}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 95
    return-void
.end method

.method public bridge synthetic add(Ljava/lang/Object;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 23
    check-cast p1, Lcom/android/athome/picker/MediaOutput;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/athome/picker/MediaOutputAdapter;->add(Lcom/android/athome/picker/MediaOutput;)V

    return-void
.end method

.method public getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 5
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 286
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/athome/picker/MediaOutputAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getItemViewType(I)I
    .registers 3
    .parameter "position"

    .prologue
    .line 80
    iget v0, p0, Lcom/android/athome/picker/MediaOutputAdapter;->mMode:I

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 8
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 108
    const/4 v0, 0x0

    .line 109
    .local v0, result:Landroid/view/View;
    iget v1, p0, Lcom/android/athome/picker/MediaOutputAdapter;->mMode:I

    packed-switch v1, :pswitch_data_30

    .line 120
    const-string v1, "MediaOutputAdapter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsupported view mode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/athome/picker/MediaOutputAdapter;->mMode:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    :goto_20
    return-object v0

    .line 111
    :pswitch_21
    invoke-direct {p0, p1, p2}, Lcom/android/athome/picker/MediaOutputAdapter;->createOutputSelectionView(ILandroid/view/View;)Landroid/view/View;

    move-result-object v0

    .line 112
    goto :goto_20

    .line 114
    :pswitch_26
    invoke-direct {p0, p1, p2}, Lcom/android/athome/picker/MediaOutputAdapter;->createGroupingView(ILandroid/view/View;)Landroid/view/View;

    move-result-object v0

    .line 115
    goto :goto_20

    .line 117
    :pswitch_2b
    invoke-direct {p0, p1, p2}, Lcom/android/athome/picker/MediaOutputAdapter;->createVolumeControlView(ILandroid/view/View;)Landroid/view/View;

    move-result-object v0

    .line 118
    goto :goto_20

    .line 109
    :pswitch_data_30
    .packed-switch 0x0
        :pswitch_21
        :pswitch_26
        :pswitch_2b
    .end packed-switch
.end method

.method public getViewTypeCount()I
    .registers 2

    .prologue
    .line 85
    const/4 v0, 0x3

    return v0
.end method

.method public setMode(I)V
    .registers 2
    .parameter "mode"

    .prologue
    .line 98
    iput p1, p0, Lcom/android/athome/picker/MediaOutputAdapter;->mMode:I

    .line 99
    invoke-virtual {p0}, Lcom/android/athome/picker/MediaOutputAdapter;->notifyDataSetInvalidated()V

    .line 100
    return-void
.end method

.method public setSelectedGroup(Lcom/android/athome/picker/MediaOutputGroup;)V
    .registers 4
    .parameter "group"

    .prologue
    .line 299
    iput-object p1, p0, Lcom/android/athome/picker/MediaOutputAdapter;->mSelectedGroup:Lcom/android/athome/picker/MediaOutputGroup;

    .line 300
    iget v0, p0, Lcom/android/athome/picker/MediaOutputAdapter;->mMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_a

    .line 301
    invoke-virtual {p0}, Lcom/android/athome/picker/MediaOutputAdapter;->notifyDataSetInvalidated()V

    .line 303
    :cond_a
    return-void
.end method

.method public setSelectedOutput(Lcom/android/athome/picker/MediaOutput;)V
    .registers 2
    .parameter "output"

    .prologue
    .line 290
    iput-object p1, p0, Lcom/android/athome/picker/MediaOutputAdapter;->mSelectedOutput:Lcom/android/athome/picker/MediaOutput;

    .line 291
    invoke-virtual {p0}, Lcom/android/athome/picker/MediaOutputAdapter;->notifyDataSetInvalidated()V

    .line 292
    return-void
.end method

.method public setView(Landroid/widget/AdapterView;)V
    .registers 2
    .parameter "view"

    .prologue
    .line 306
    iput-object p1, p0, Lcom/android/athome/picker/MediaOutputAdapter;->mView:Landroid/widget/AdapterView;

    .line 307
    return-void
.end method

.method public setVolumeSliderListener(Lcom/android/athome/picker/MediaOutputAdapter$VolumeSliderListener;)V
    .registers 2
    .parameter "listener"

    .prologue
    .line 134
    iput-object p1, p0, Lcom/android/athome/picker/MediaOutputAdapter;->mVolumeSliderListener:Lcom/android/athome/picker/MediaOutputAdapter$VolumeSliderListener;

    .line 135
    return-void
.end method
