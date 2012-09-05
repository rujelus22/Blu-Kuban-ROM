.class public final Lcom/google/android/youtube/app/honeycomb/ui/b;
.super Lcom/google/android/youtube/core/a/d;
.source "SourceFile"

# interfaces
.implements Landroid/os/Handler$Callback;


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Landroid/view/LayoutInflater;

.field private final c:Lcom/google/android/youtube/app/ui/ToolbarHelper;

.field private final d:Landroid/os/Handler;

.field private e:Z


# direct methods
.method private constructor <init>(Landroid/content/Context;Lcom/google/android/youtube/app/ui/ToolbarHelper;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/google/android/youtube/core/a/d;-><init>()V

    .line 52
    iput-object p1, p0, Lcom/google/android/youtube/app/honeycomb/ui/b;->a:Landroid/content/Context;

    .line 53
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/ui/b;->d:Landroid/os/Handler;

    .line 54
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/ui/b;->b:Landroid/view/LayoutInflater;

    .line 55
    iput-object p2, p0, Lcom/google/android/youtube/app/honeycomb/ui/b;->c:Lcom/google/android/youtube/app/ui/ToolbarHelper;

    .line 56
    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/google/android/youtube/app/honeycomb/ui/b;
    .registers 3
    .parameter

    .prologue
    .line 36
    const-string v0, "context may not be null"

    invoke-static {p0, v0}, Lcom/google/android/youtube/core/utils/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    new-instance v0, Lcom/google/android/youtube/app/honeycomb/ui/b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/youtube/app/honeycomb/ui/b;-><init>(Landroid/content/Context;Lcom/google/android/youtube/app/ui/ToolbarHelper;)V

    return-object v0
.end method

.method public static a(Landroid/content/Context;Lcom/google/android/youtube/app/ui/ToolbarHelper;)Lcom/google/android/youtube/app/honeycomb/ui/b;
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 41
    const-string v0, "context may not be null"

    invoke-static {p0, v0}, Lcom/google/android/youtube/core/utils/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    new-instance v0, Lcom/google/android/youtube/app/honeycomb/ui/b;

    invoke-direct {v0, p0, p1}, Lcom/google/android/youtube/app/honeycomb/ui/b;-><init>(Landroid/content/Context;Lcom/google/android/youtube/app/ui/ToolbarHelper;)V

    return-object v0
.end method

.method private d()V
    .registers 5

    .prologue
    .line 71
    iget-boolean v0, p0, Lcom/google/android/youtube/app/honeycomb/ui/b;->e:Z

    if-eqz v0, :cond_d

    .line 72
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/ui/b;->d:Landroid/os/Handler;

    const/4 v1, 0x0

    const-wide/32 v2, 0xea60

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 74
    :cond_d
    return-void
.end method


# virtual methods
.method public final b()V
    .registers 2

    .prologue
    .line 59
    iget-boolean v0, p0, Lcom/google/android/youtube/app/honeycomb/ui/b;->e:Z

    if-nez v0, :cond_a

    .line 60
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/youtube/app/honeycomb/ui/b;->e:Z

    .line 61
    invoke-direct {p0}, Lcom/google/android/youtube/app/honeycomb/ui/b;->d()V

    .line 63
    :cond_a
    return-void
.end method

.method public final c()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 66
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/ui/b;->d:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 67
    iput-boolean v1, p0, Lcom/google/android/youtube/app/honeycomb/ui/b;->e:Z

    .line 68
    return-void
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 12
    .parameter
    .parameter
    .parameter

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 86
    invoke-virtual {p0, p1}, Lcom/google/android/youtube/app/honeycomb/ui/b;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/model/LiveEvent;

    .line 88
    if-nez p2, :cond_c2

    .line 89
    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/ui/b;->b:Landroid/view/LayoutInflater;

    const v2, 0x7f040022

    invoke-virtual {v1, v2, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 90
    new-instance v1, Lcom/google/android/youtube/app/honeycomb/ui/c;

    invoke-direct {v1, p2}, Lcom/google/android/youtube/app/honeycomb/ui/c;-><init>(Landroid/view/View;)V

    .line 91
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 96
    :goto_1c
    iget-object v2, v1, Lcom/google/android/youtube/app/honeycomb/ui/c;->a:Landroid/widget/TextView;

    if-eqz v2, :cond_29

    .line 97
    iget-object v2, v1, Lcom/google/android/youtube/app/honeycomb/ui/c;->a:Landroid/widget/TextView;

    iget-object v5, v0, Lcom/google/android/youtube/core/model/LiveEvent;->video:Lcom/google/android/youtube/core/model/Video;

    iget-object v5, v5, Lcom/google/android/youtube/core/model/Video;->title:Ljava/lang/String;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 99
    :cond_29
    iget-object v2, v1, Lcom/google/android/youtube/app/honeycomb/ui/c;->b:Landroid/widget/TextView;

    if-eqz v2, :cond_36

    .line 100
    iget-object v2, v1, Lcom/google/android/youtube/app/honeycomb/ui/c;->b:Landroid/widget/TextView;

    iget-object v5, v0, Lcom/google/android/youtube/core/model/LiveEvent;->video:Lcom/google/android/youtube/core/model/Video;

    iget-object v5, v5, Lcom/google/android/youtube/core/model/Video;->ownerDisplayName:Ljava/lang/String;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 102
    :cond_36
    iget-object v2, v1, Lcom/google/android/youtube/app/honeycomb/ui/c;->c:Landroid/view/View;

    if-eqz v2, :cond_46

    .line 103
    iget-object v5, v1, Lcom/google/android/youtube/app/honeycomb/ui/c;->c:Landroid/view/View;

    iget-object v2, v0, Lcom/google/android/youtube/core/model/LiveEvent;->status:Lcom/google/android/youtube/core/model/LiveEvent$Status;

    sget-object v6, Lcom/google/android/youtube/core/model/LiveEvent$Status;->ACTIVE:Lcom/google/android/youtube/core/model/LiveEvent$Status;

    if-ne v2, v6, :cond_ca

    move v2, v3

    :goto_43
    invoke-virtual {v5, v2}, Landroid/view/View;->setVisibility(I)V

    .line 106
    :cond_46
    invoke-virtual {v0}, Lcom/google/android/youtube/core/model/LiveEvent;->isPlayable()Z

    move-result v5

    .line 107
    iget-object v2, v1, Lcom/google/android/youtube/app/honeycomb/ui/c;->d:Landroid/widget/TextView;

    if-eqz v2, :cond_62

    .line 108
    if-eqz v5, :cond_cd

    .line 109
    iget-object v2, v1, Lcom/google/android/youtube/app/honeycomb/ui/c;->d:Landroid/widget/TextView;

    sget-object v6, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v2, v6, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 113
    :goto_57
    iget-object v2, v1, Lcom/google/android/youtube/app/honeycomb/ui/c;->d:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/google/android/youtube/app/honeycomb/ui/b;->a:Landroid/content/Context;

    invoke-static {v6, v0}, Lcom/google/android/youtube/core/utils/r;->a(Landroid/content/Context;Lcom/google/android/youtube/core/model/LiveEvent;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 115
    :cond_62
    iget-object v2, v1, Lcom/google/android/youtube/app/honeycomb/ui/c;->f:Landroid/widget/ImageView;

    if-eqz v2, :cond_6e

    .line 116
    iget-object v6, v1, Lcom/google/android/youtube/app/honeycomb/ui/c;->f:Landroid/widget/ImageView;

    if-eqz v5, :cond_d6

    move v2, v4

    :goto_6b
    invoke-virtual {v6, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 118
    :cond_6e
    iget-object v2, v1, Lcom/google/android/youtube/app/honeycomb/ui/c;->e:Landroid/widget/ImageView;

    if-eqz v2, :cond_8e

    .line 120
    iget-object v2, v0, Lcom/google/android/youtube/core/model/LiveEvent;->selfUri:Landroid/net/Uri;

    .line 121
    if-eqz v5, :cond_d8

    if-eqz v2, :cond_d8

    invoke-virtual {p0, v2}, Lcom/google/android/youtube/app/honeycomb/ui/b;->b(Landroid/net/Uri;)Z

    move-result v6

    if-eqz v6, :cond_d8

    .line 124
    iget-object v5, v1, Lcom/google/android/youtube/app/honeycomb/ui/c;->e:Landroid/widget/ImageView;

    sget-object v6, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 125
    iget-object v5, v1, Lcom/google/android/youtube/app/honeycomb/ui/c;->e:Landroid/widget/ImageView;

    invoke-virtual {p0, v2}, Lcom/google/android/youtube/app/honeycomb/ui/b;->d(Landroid/net/Uri;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v5, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 131
    :cond_8e
    :goto_8e
    iget-object v2, v1, Lcom/google/android/youtube/app/honeycomb/ui/c;->g:Landroid/widget/TextView;

    if-eqz v2, :cond_9d

    .line 132
    iget-object v2, v0, Lcom/google/android/youtube/core/model/LiveEvent;->video:Lcom/google/android/youtube/core/model/Video;

    iget v2, v2, Lcom/google/android/youtube/core/model/Video;->duration:I

    if-nez v2, :cond_ea

    .line 133
    iget-object v2, v1, Lcom/google/android/youtube/app/honeycomb/ui/c;->g:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 139
    :cond_9d
    :goto_9d
    iget-object v2, v1, Lcom/google/android/youtube/app/honeycomb/ui/c;->h:Landroid/widget/TextView;

    if-eqz v2, :cond_ad

    .line 140
    iget-object v5, v1, Lcom/google/android/youtube/app/honeycomb/ui/c;->h:Landroid/widget/TextView;

    iget-object v2, v0, Lcom/google/android/youtube/core/model/LiveEvent;->video:Lcom/google/android/youtube/core/model/Video;

    iget-boolean v2, v2, Lcom/google/android/youtube/core/model/Video;->isHd:Z

    if-eqz v2, :cond_fd

    move v2, v3

    :goto_aa
    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 142
    :cond_ad
    iget-object v2, v1, Lcom/google/android/youtube/app/honeycomb/ui/c;->i:Landroid/widget/ImageView;

    if-eqz v2, :cond_c1

    .line 143
    iget-object v2, p0, Lcom/google/android/youtube/app/honeycomb/ui/b;->c:Lcom/google/android/youtube/app/ui/ToolbarHelper;

    if-eqz v2, :cond_ff

    .line 144
    iget-object v2, v1, Lcom/google/android/youtube/app/honeycomb/ui/c;->i:Landroid/widget/ImageView;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 145
    iget-object v2, p0, Lcom/google/android/youtube/app/honeycomb/ui/b;->c:Lcom/google/android/youtube/app/ui/ToolbarHelper;

    iget-object v1, v1, Lcom/google/android/youtube/app/honeycomb/ui/c;->i:Landroid/widget/ImageView;

    invoke-virtual {v2, v1, v0}, Lcom/google/android/youtube/app/ui/ToolbarHelper;->a(Landroid/view/View;Ljava/lang/Object;)V

    .line 151
    :cond_c1
    :goto_c1
    return-object p2

    .line 93
    :cond_c2
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/youtube/app/honeycomb/ui/c;

    goto/16 :goto_1c

    :cond_ca
    move v2, v4

    .line 103
    goto/16 :goto_43

    .line 111
    :cond_cd
    iget-object v2, v1, Lcom/google/android/youtube/app/honeycomb/ui/c;->d:Landroid/widget/TextView;

    sget-object v6, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    const/4 v7, 0x2

    invoke-virtual {v2, v6, v7}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    goto :goto_57

    :cond_d6
    move v2, v3

    .line 116
    goto :goto_6b

    .line 126
    :cond_d8
    if-eqz v5, :cond_8e

    .line 127
    iget-object v2, v1, Lcom/google/android/youtube/app/honeycomb/ui/c;->e:Landroid/widget/ImageView;

    sget-object v5, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 128
    iget-object v2, v1, Lcom/google/android/youtube/app/honeycomb/ui/c;->e:Landroid/widget/ImageView;

    const v5, 0x7f020089

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_8e

    .line 135
    :cond_ea
    iget-object v2, v1, Lcom/google/android/youtube/app/honeycomb/ui/c;->g:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 136
    iget-object v2, v1, Lcom/google/android/youtube/app/honeycomb/ui/c;->g:Landroid/widget/TextView;

    iget-object v5, v0, Lcom/google/android/youtube/core/model/LiveEvent;->video:Lcom/google/android/youtube/core/model/Video;

    iget v5, v5, Lcom/google/android/youtube/core/model/Video;->duration:I

    invoke-static {v5}, Lcom/google/android/youtube/core/utils/Util;->a(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_9d

    :cond_fd
    move v2, v4

    .line 140
    goto :goto_aa

    .line 147
    :cond_ff
    iget-object v0, v1, Lcom/google/android/youtube/app/honeycomb/ui/c;->i:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_c1
.end method

.method public final handleMessage(Landroid/os/Message;)Z
    .registers 3
    .parameter

    .prologue
    .line 78
    invoke-virtual {p0}, Lcom/google/android/youtube/app/honeycomb/ui/b;->getCount()I

    move-result v0

    if-eqz v0, :cond_9

    .line 79
    invoke-virtual {p0}, Lcom/google/android/youtube/app/honeycomb/ui/b;->notifyDataSetChanged()V

    .line 81
    :cond_9
    invoke-direct {p0}, Lcom/google/android/youtube/app/honeycomb/ui/b;->d()V

    .line 82
    const/4 v0, 0x1

    return v0
.end method
