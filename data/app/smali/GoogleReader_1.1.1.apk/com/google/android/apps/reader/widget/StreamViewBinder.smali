.class Lcom/google/android/apps/reader/widget/StreamViewBinder;
.super Ljava/lang/Object;
.source "StreamViewBinder.java"

# interfaces
.implements Lcom/google/android/apps/reader/widget/ItemQuery;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/reader/widget/StreamViewBinder$1;
    }
.end annotation


# instance fields
.field private final mAdapter:Landroid/widget/BaseAdapter;

.field private final mImageLoader:Lcom/google/android/imageloader/ImageLoader;

.field private final mOnCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/widget/BaseAdapter;Landroid/widget/CompoundButton$OnCheckedChangeListener;)V
    .registers 5
    .parameter "context"
    .parameter "adapter"
    .parameter "onCheckedChangeListener"

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    invoke-static {p1}, Lcom/google/android/imageloader/ImageLoader;->get(Landroid/content/Context;)Lcom/google/android/imageloader/ImageLoader;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/reader/widget/StreamViewBinder;->mImageLoader:Lcom/google/android/imageloader/ImageLoader;

    .line 63
    iput-object p2, p0, Lcom/google/android/apps/reader/widget/StreamViewBinder;->mAdapter:Landroid/widget/BaseAdapter;

    .line 64
    iput-object p3, p0, Lcom/google/android/apps/reader/widget/StreamViewBinder;->mOnCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    .line 65
    return-void
.end method

.method private bindBackground(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .registers 7
    .parameter "view"
    .parameter "context"
    .parameter "cursor"

    .prologue
    .line 68
    const/4 v2, 0x4

    invoke-interface {p3, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-eqz v2, :cond_13

    const/4 v2, 0x1

    move v1, v2

    .line 69
    .local v1, read:Z
    :goto_9
    if-eqz v1, :cond_16

    const v2, 0x7f02000e

    move v0, v2

    .line 70
    .local v0, drawable:I
    :goto_f
    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 71
    return-void

    .line 68
    .end local v0           #drawable:I
    .end local v1           #read:Z
    :cond_13
    const/4 v2, 0x0

    move v1, v2

    goto :goto_9

    .line 69
    .restart local v1       #read:Z
    :cond_16
    const v2, 0x7f02000f

    move v0, v2

    goto :goto_f
.end method

.method private bindCheckbox(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .registers 8
    .parameter "view"
    .parameter "context"
    .parameter "cursor"

    .prologue
    .line 74
    const/4 v3, 0x5

    invoke-interface {p3, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    if-eqz v3, :cond_30

    const/4 v3, 0x1

    move v1, v3

    .line 76
    .local v1, starred:Z
    :goto_9
    const v3, 0x1020001

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 79
    .local v0, checkbox:Landroid/widget/CheckBox;
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 83
    invoke-virtual {v0}, Landroid/widget/CheckBox;->clearAnimation()V

    .line 84
    invoke-virtual {v0}, Landroid/widget/CheckBox;->refreshDrawableState()V

    .line 86
    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 88
    invoke-interface {p3}, Landroid/database/Cursor;->getPosition()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 89
    .local v2, tag:Ljava/lang/Integer;
    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setTag(Ljava/lang/Object;)V

    .line 95
    iget-object v3, p0, Lcom/google/android/apps/reader/widget/StreamViewBinder;->mOnCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 96
    return-void

    .line 74
    .end local v0           #checkbox:Landroid/widget/CheckBox;
    .end local v1           #starred:Z
    .end local v2           #tag:Ljava/lang/Integer;
    :cond_30
    const/4 v3, 0x0

    move v1, v3

    goto :goto_9
.end method

.method private bindSharedBy(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .registers 15
    .parameter "view"
    .parameter "context"
    .parameter "cursor"

    .prologue
    const v10, 0x7f020028

    const/4 v9, 0x0

    const/16 v7, 0x8

    .line 123
    const v6, 0x7f0b005b

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 124
    .local v1, container:Landroid/view/View;
    const/16 v6, 0x10

    invoke-interface {p3, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 125
    .local v0, broadcaster:Ljava/lang/String;
    const/16 v6, 0xe

    invoke-interface {p3, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 126
    .local v2, displayName:Ljava/lang/String;
    const/16 v6, 0xd

    invoke-interface {p3, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 127
    .local v4, photoUri:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_29

    .line 129
    invoke-virtual {v1, v7}, Landroid/view/View;->setVisibility(I)V

    .line 157
    :goto_28
    return-void

    .line 130
    :cond_29
    sget-object v6, Lcom/google/android/apps/reader/util/Experiment;->GOOGLE_PLUS:Lcom/google/android/apps/reader/util/Experiment;

    invoke-virtual {v6}, Lcom/google/android/apps/reader/util/Experiment;->isEnabled()Z

    move-result v6

    if-eqz v6, :cond_35

    .line 132
    invoke-virtual {v1, v7}, Landroid/view/View;->setVisibility(I)V

    goto :goto_28

    .line 133
    :cond_35
    invoke-static {p3}, Lcom/google/android/apps/reader/widget/StreamViewBinder;->getStreamId(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_43

    .line 136
    invoke-virtual {v1, v7}, Landroid/view/View;->setVisibility(I)V

    goto :goto_28

    .line 138
    :cond_43
    const v6, 0x7f0b005d

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 139
    .local v3, nameView:Landroid/widget/TextView;
    const v6, 0x7f0b005c

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    .line 140
    .local v5, photoView:Landroid/widget/ImageView;
    const/16 v6, 0xf

    invoke-interface {p3, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    if-eqz v6, :cond_80

    .line 141
    const v6, 0x7f0d00b2

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(I)V

    .line 145
    :goto_63
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_94

    .line 146
    sget-object v6, Lcom/google/android/apps/reader/widget/StreamViewBinder$1;->$SwitchMap$com$google$android$imageloader$ImageLoader$BindResult:[I

    iget-object v7, p0, Lcom/google/android/apps/reader/widget/StreamViewBinder;->mImageLoader:Lcom/google/android/imageloader/ImageLoader;

    iget-object v8, p0, Lcom/google/android/apps/reader/widget/StreamViewBinder;->mAdapter:Landroid/widget/BaseAdapter;

    invoke-virtual {v7, v8, v5, v4}, Lcom/google/android/imageloader/ImageLoader;->bind(Landroid/widget/BaseAdapter;Landroid/widget/ImageView;Ljava/lang/String;)Lcom/google/android/imageloader/ImageLoader$BindResult;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/android/imageloader/ImageLoader$BindResult;->ordinal()I

    move-result v7

    aget v6, v6, v7

    packed-switch v6, :pswitch_data_98

    .line 155
    :goto_7c
    invoke-virtual {v1, v9}, Landroid/view/View;->setVisibility(I)V

    goto :goto_28

    .line 143
    :cond_80
    const v6, 0x7f0d00b1

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v2, v7, v9

    invoke-virtual {p2, v6, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_63

    .line 149
    :pswitch_90
    invoke-virtual {v5, v10}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_7c

    .line 153
    :cond_94
    invoke-virtual {v5, v10}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_7c

    .line 146
    :pswitch_data_98
    .packed-switch 0x1
        :pswitch_90
        :pswitch_90
    .end packed-switch
.end method

.method private bindTitle(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .registers 10
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 99
    const v0, 0x1020014

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    .line 100
    invoke-static {p2, p3}, Lcom/google/android/apps/reader/widget/BaseItemsAdapter;->getTitle(Landroid/content/Context;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v0

    .line 101
    const/16 v1, 0xb

    invoke-interface {p3, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 102
    const/4 v2, 0x4

    invoke-interface {p3, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-nez v2, :cond_5f

    move v2, v4

    .line 103
    :goto_1d
    new-instance v3, Landroid/text/SpannableStringBuilder;

    invoke-direct {v3, v0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 104
    if-eqz v2, :cond_30

    .line 106
    new-instance v2, Landroid/text/style/StyleSpan;

    invoke-direct {v2, v4}, Landroid/text/style/StyleSpan;-><init>(I)V

    .line 107
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v3, v2, v5, v4, v5}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 109
    :cond_30
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3e

    .line 110
    const-string v2, " - "

    invoke-virtual {v3, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 111
    invoke-virtual {v3, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 113
    :cond_3e
    invoke-virtual {v3}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-le v1, v2, :cond_5b

    .line 115
    new-instance v1, Landroid/text/style/TextAppearanceSpan;

    const v2, 0x1030046

    invoke-direct {v1, p2, v2}, Landroid/text/style/TextAppearanceSpan;-><init>(Landroid/content/Context;I)V

    .line 117
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v3}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    invoke-virtual {v3, v1, v0, v2, v5}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 119
    :cond_5b
    invoke-virtual {p0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 120
    return-void

    :cond_5f
    move v2, v5

    .line 102
    goto :goto_1d
.end method

.method private static getStreamId(Landroid/database/Cursor;)Ljava/lang/String;
    .registers 4
    .parameter "cursor"

    .prologue
    .line 167
    invoke-interface {p0}, Landroid/database/Cursor;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "com.google.reader.cursor.extra.URI"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 168
    .local v0, uri:Landroid/net/Uri;
    invoke-static {v0}, Lcom/google/android/apps/reader/provider/ReaderContract$Items;->getStreamId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .registers 4
    .parameter "view"
    .parameter "context"
    .parameter "cursor"

    .prologue
    .line 160
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/apps/reader/widget/StreamViewBinder;->bindBackground(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V

    .line 161
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/apps/reader/widget/StreamViewBinder;->bindCheckbox(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V

    .line 162
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/apps/reader/widget/StreamViewBinder;->bindTitle(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V

    .line 163
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/apps/reader/widget/StreamViewBinder;->bindSharedBy(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V

    .line 164
    return-void
.end method
