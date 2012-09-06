.class public final Lcom/google/android/youtube/app/adapter/af;
.super Lcom/google/android/youtube/core/a/a;
.source "SourceFile"


# static fields
.field private static final c:Ljava/util/Map;


# instance fields
.field private final a:Landroid/view/LayoutInflater;

.field private final b:Landroid/content/res/Resources;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 37
    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lcom/google/android/youtube/core/model/Event$Action;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    .line 38
    sget-object v1, Lcom/google/android/youtube/core/model/Event$Action;->FRIEND_ADDED:Lcom/google/android/youtube/core/model/Event$Action;

    const v2, 0x7f020056

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    sget-object v1, Lcom/google/android/youtube/core/model/Event$Action;->USER_SUBSCRIPTION_ADDED:Lcom/google/android/youtube/core/model/Event$Action;

    const v2, 0x7f020059

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    sget-object v1, Lcom/google/android/youtube/core/model/Event$Action;->VIDEO_COMMENTED:Lcom/google/android/youtube/core/model/Event$Action;

    const v2, 0x7f020054

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    sget-object v1, Lcom/google/android/youtube/core/model/Event$Action;->VIDEO_FAVORITED:Lcom/google/android/youtube/core/model/Event$Action;

    const v2, 0x7f020055

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    sget-object v1, Lcom/google/android/youtube/core/model/Event$Action;->VIDEO_SHARED:Lcom/google/android/youtube/core/model/Event$Action;

    const v2, 0x7f020058

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    sget-object v1, Lcom/google/android/youtube/core/model/Event$Action;->VIDEO_UPLOADED:Lcom/google/android/youtube/core/model/Event$Action;

    const v2, 0x7f02005a

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    sget-object v1, Lcom/google/android/youtube/core/model/Event$Action;->VIDEO_RATED:Lcom/google/android/youtube/core/model/Event$Action;

    const v2, 0x7f020057

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    sget-object v1, Lcom/google/android/youtube/core/model/Event$Action;->VIDEO_ADDED_TO_PLAYLIST:Lcom/google/android/youtube/core/model/Event$Action;

    const v2, 0x7f020053

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/google/android/youtube/app/adapter/af;->c:Ljava/util/Map;

    .line 47
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/google/android/youtube/core/a/a;-><init>()V

    .line 50
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/app/adapter/af;->a:Landroid/view/LayoutInflater;

    .line 51
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/app/adapter/af;->b:Landroid/content/res/Resources;

    .line 52
    return-void
.end method


# virtual methods
.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 13
    .parameter
    .parameter
    .parameter

    .prologue
    const/16 v8, 0x8

    const/4 v7, 0x0

    .line 55
    invoke-virtual {p0, p1}, Lcom/google/android/youtube/app/adapter/af;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/model/Event;

    .line 57
    if-nez p2, :cond_6f

    .line 58
    iget-object v1, p0, Lcom/google/android/youtube/app/adapter/af;->a:Landroid/view/LayoutInflater;

    const v2, 0x7f04002b

    invoke-virtual {v1, v2, p3, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 59
    new-instance v1, Lcom/google/android/youtube/app/adapter/ag;

    invoke-direct {v1, p2}, Lcom/google/android/youtube/app/adapter/ag;-><init>(Landroid/view/View;)V

    .line 60
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object v2, v1

    .line 65
    :goto_1d
    iget-object v1, v2, Lcom/google/android/youtube/app/adapter/ag;->a:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/google/android/youtube/app/adapter/af;->b:Landroid/content/res/Resources;

    iget-object v4, v0, Lcom/google/android/youtube/core/model/Event;->action:Lcom/google/android/youtube/core/model/Event$Action;

    iget v4, v4, Lcom/google/android/youtube/core/model/Event$Action;->stringId:I

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v6, v0, Lcom/google/android/youtube/core/model/Event;->subject:Ljava/lang/String;

    aput-object v6, v5, v7

    invoke-virtual {v3, v4, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 66
    invoke-virtual {v0}, Lcom/google/android/youtube/core/model/Event;->targetIsChannel()Z

    move-result v1

    if-eqz v1, :cond_77

    .line 67
    iget-object v1, v2, Lcom/google/android/youtube/app/adapter/ag;->c:Landroid/widget/TextView;

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 68
    iget-object v1, v2, Lcom/google/android/youtube/app/adapter/ag;->d:Landroid/widget/TextView;

    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 69
    iget-object v1, v2, Lcom/google/android/youtube/app/adapter/ag;->c:Landroid/widget/TextView;

    iget-object v3, v0, Lcom/google/android/youtube/core/model/Event;->displayUsername:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 82
    :goto_4e
    iget-object v3, v2, Lcom/google/android/youtube/app/adapter/ag;->b:Landroid/widget/ImageView;

    sget-object v1, Lcom/google/android/youtube/app/adapter/af;->c:Ljava/util/Map;

    iget-object v4, v0, Lcom/google/android/youtube/core/model/Event;->action:Lcom/google/android/youtube/core/model/Event$Action;

    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 83
    iget-object v1, v2, Lcom/google/android/youtube/app/adapter/ag;->e:Landroid/widget/TextView;

    iget-object v0, v0, Lcom/google/android/youtube/core/model/Event;->when:Ljava/util/Date;

    iget-object v2, p0, Lcom/google/android/youtube/app/adapter/af;->b:Landroid/content/res/Resources;

    invoke-static {v0, v2}, Lcom/google/android/youtube/core/utils/ac;->a(Ljava/util/Date;Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 84
    return-object p2

    .line 62
    :cond_6f
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/youtube/app/adapter/ag;

    move-object v2, v1

    goto :goto_1d

    .line 71
    :cond_77
    iget-object v1, v0, Lcom/google/android/youtube/core/model/Event;->targetVideo:Lcom/google/android/youtube/core/model/Video;

    if-nez v1, :cond_8c

    .line 72
    invoke-virtual {p2, v7}, Landroid/view/View;->setFocusable(Z)V

    .line 73
    invoke-virtual {p2, v7}, Landroid/view/View;->setClickable(Z)V

    .line 74
    iget-object v1, v2, Lcom/google/android/youtube/app/adapter/ag;->c:Landroid/widget/TextView;

    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 75
    iget-object v1, v2, Lcom/google/android/youtube/app/adapter/ag;->d:Landroid/widget/TextView;

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_4e

    .line 77
    :cond_8c
    iget-object v1, v2, Lcom/google/android/youtube/app/adapter/ag;->d:Landroid/widget/TextView;

    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 78
    iget-object v1, v2, Lcom/google/android/youtube/app/adapter/ag;->c:Landroid/widget/TextView;

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 79
    iget-object v1, v2, Lcom/google/android/youtube/app/adapter/ag;->c:Landroid/widget/TextView;

    iget-object v3, v0, Lcom/google/android/youtube/core/model/Event;->targetVideo:Lcom/google/android/youtube/core/model/Video;

    iget-object v3, v3, Lcom/google/android/youtube/core/model/Video;->title:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4e
.end method
