.class public final Lcom/google/android/youtube/app/a/f;
.super Lcom/google/android/youtube/core/a/a;
.source "SourceFile"


# static fields
.field private static final d:Ljava/util/Map;


# instance fields
.field private final a:Landroid/view/LayoutInflater;

.field private final b:Landroid/content/res/Resources;

.field private final c:Ljava/util/HashMap;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 41
    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lcom/google/android/youtube/core/model/Event$Action;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    .line 42
    sget-object v1, Lcom/google/android/youtube/core/model/Event$Action;->FRIEND_ADDED:Lcom/google/android/youtube/core/model/Event$Action;

    const v2, 0x7f02003a

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    sget-object v1, Lcom/google/android/youtube/core/model/Event$Action;->USER_SUBSCRIPTION_ADDED:Lcom/google/android/youtube/core/model/Event$Action;

    const v2, 0x7f02003d

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    sget-object v1, Lcom/google/android/youtube/core/model/Event$Action;->VIDEO_COMMENTED:Lcom/google/android/youtube/core/model/Event$Action;

    const v2, 0x7f020038

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    sget-object v1, Lcom/google/android/youtube/core/model/Event$Action;->VIDEO_FAVORITED:Lcom/google/android/youtube/core/model/Event$Action;

    const v2, 0x7f020039

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    sget-object v1, Lcom/google/android/youtube/core/model/Event$Action;->VIDEO_SHARED:Lcom/google/android/youtube/core/model/Event$Action;

    const v2, 0x7f02003c

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    sget-object v1, Lcom/google/android/youtube/core/model/Event$Action;->VIDEO_UPLOADED:Lcom/google/android/youtube/core/model/Event$Action;

    const v2, 0x7f02003e

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    sget-object v1, Lcom/google/android/youtube/core/model/Event$Action;->VIDEO_RATED:Lcom/google/android/youtube/core/model/Event$Action;

    const v2, 0x7f02003b

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/google/android/youtube/app/a/f;->d:Ljava/util/Map;

    .line 50
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/google/android/youtube/core/a/a;-><init>()V

    .line 53
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/app/a/f;->a:Landroid/view/LayoutInflater;

    .line 54
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/app/a/f;->b:Landroid/content/res/Resources;

    .line 55
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/youtube/app/a/f;->c:Ljava/util/HashMap;

    .line 56
    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/youtube/core/model/Video;)V
    .registers 4
    .parameter

    .prologue
    .line 97
    const-string v0, "video can\'t be null"

    invoke-static {p1, v0}, Lcom/google/android/youtube/core/utils/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    iget-object v0, p0, Lcom/google/android/youtube/app/a/f;->c:Ljava/util/HashMap;

    iget-object v1, p1, Lcom/google/android/youtube/core/model/Video;->id:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    invoke-virtual {p0}, Lcom/google/android/youtube/app/a/f;->notifyDataSetChanged()V

    .line 100
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .registers 4
    .parameter

    .prologue
    .line 103
    iget-object v0, p0, Lcom/google/android/youtube/app/a/f;->c:Ljava/util/HashMap;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    invoke-virtual {p0}, Lcom/google/android/youtube/app/a/f;->notifyDataSetChanged()V

    .line 105
    return-void
.end method

.method public final b(Ljava/lang/String;)Lcom/google/android/youtube/core/model/Video;
    .registers 3
    .parameter

    .prologue
    .line 108
    iget-object v0, p0, Lcom/google/android/youtube/app/a/f;->c:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/model/Video;

    return-object v0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 13
    .parameter
    .parameter
    .parameter

    .prologue
    const/16 v8, 0x8

    const/4 v7, 0x0

    .line 59
    invoke-virtual {p0, p1}, Lcom/google/android/youtube/app/a/f;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/model/Event;

    .line 61
    if-nez p2, :cond_6b

    .line 62
    iget-object v1, p0, Lcom/google/android/youtube/app/a/f;->a:Landroid/view/LayoutInflater;

    const v2, 0x7f040018

    invoke-virtual {v1, v2, p3, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 63
    new-instance v1, Lcom/google/android/youtube/app/a/g;

    invoke-direct {v1, p2}, Lcom/google/android/youtube/app/a/g;-><init>(Landroid/view/View;)V

    .line 64
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object v2, v1

    .line 69
    :goto_1d
    iget-object v1, v2, Lcom/google/android/youtube/app/a/g;->a:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/google/android/youtube/app/a/f;->b:Landroid/content/res/Resources;

    iget-object v4, v0, Lcom/google/android/youtube/core/model/Event;->action:Lcom/google/android/youtube/core/model/Event$Action;

    iget v4, v4, Lcom/google/android/youtube/core/model/Event$Action;->stringId:I

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v6, v0, Lcom/google/android/youtube/core/model/Event;->subject:Ljava/lang/String;

    aput-object v6, v5, v7

    invoke-virtual {v3, v4, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 70
    invoke-virtual {v0}, Lcom/google/android/youtube/core/model/Event;->targetIsChannel()Z

    move-result v1

    if-eqz v1, :cond_73

    .line 71
    iget-object v1, v2, Lcom/google/android/youtube/app/a/g;->c:Landroid/widget/TextView;

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 72
    iget-object v1, v2, Lcom/google/android/youtube/app/a/g;->d:Landroid/widget/TextView;

    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 73
    iget-object v1, v2, Lcom/google/android/youtube/app/a/g;->c:Landroid/widget/TextView;

    iget-object v3, v0, Lcom/google/android/youtube/core/model/Event;->displayUsername:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 91
    :goto_4a
    iget-object v3, v2, Lcom/google/android/youtube/app/a/g;->b:Landroid/widget/ImageView;

    sget-object v1, Lcom/google/android/youtube/app/a/f;->d:Ljava/util/Map;

    iget-object v4, v0, Lcom/google/android/youtube/core/model/Event;->action:Lcom/google/android/youtube/core/model/Event$Action;

    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 92
    iget-object v1, v2, Lcom/google/android/youtube/app/a/g;->e:Landroid/widget/TextView;

    iget-object v0, v0, Lcom/google/android/youtube/core/model/Event;->when:Ljava/util/Date;

    iget-object v2, p0, Lcom/google/android/youtube/app/a/f;->b:Landroid/content/res/Resources;

    invoke-static {v0, v2}, Lcom/google/android/youtube/core/utils/r;->a(Ljava/util/Date;Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 93
    return-object p2

    .line 66
    :cond_6b
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/youtube/app/a/g;

    move-object v2, v1

    goto :goto_1d

    .line 75
    :cond_73
    iget-object v1, p0, Lcom/google/android/youtube/app/a/f;->c:Ljava/util/HashMap;

    iget-object v3, v0, Lcom/google/android/youtube/core/model/Event;->target:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b6

    .line 76
    iget-object v1, p0, Lcom/google/android/youtube/app/a/f;->c:Ljava/util/HashMap;

    iget-object v3, v0, Lcom/google/android/youtube/core/model/Event;->target:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/youtube/core/model/Video;

    .line 77
    if-nez v1, :cond_9a

    .line 78
    invoke-virtual {p2, v7}, Landroid/view/View;->setFocusable(Z)V

    .line 79
    invoke-virtual {p2, v7}, Landroid/view/View;->setClickable(Z)V

    .line 80
    iget-object v1, v2, Lcom/google/android/youtube/app/a/g;->c:Landroid/widget/TextView;

    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 81
    iget-object v1, v2, Lcom/google/android/youtube/app/a/g;->d:Landroid/widget/TextView;

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_4a

    .line 83
    :cond_9a
    iget-object v1, v2, Lcom/google/android/youtube/app/a/g;->d:Landroid/widget/TextView;

    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 84
    iget-object v1, v2, Lcom/google/android/youtube/app/a/g;->c:Landroid/widget/TextView;

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 85
    iget-object v3, v2, Lcom/google/android/youtube/app/a/g;->c:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/google/android/youtube/app/a/f;->c:Ljava/util/HashMap;

    iget-object v4, v0, Lcom/google/android/youtube/core/model/Event;->target:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/youtube/core/model/Video;

    iget-object v1, v1, Lcom/google/android/youtube/core/model/Video;->title:Ljava/lang/String;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4a

    .line 88
    :cond_b6
    iget-object v1, v2, Lcom/google/android/youtube/app/a/g;->c:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4a
.end method
