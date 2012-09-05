.class public Lcom/google/android/youtube/videos/ui/MovieViewHelper;
.super Ljava/lang/Object;
.source "MovieViewHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/youtube/videos/ui/MovieViewHelper$MovieViewHolder;
    }
.end annotation


# static fields
.field private static final CALENDAR:Ljava/util/Calendar;


# instance fields
.field private final context:Landroid/content/Context;

.field private final creditsColor:I

.field private final labelColor:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 32
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    sput-object v0, Lcom/google/android/youtube/videos/ui/MovieViewHelper;->CALENDAR:Ljava/util/Calendar;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .parameter "context"

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const-string v0, "context may not be null"

    invoke-static {p1, v0}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    iput-object p1, p0, Lcom/google/android/youtube/videos/ui/MovieViewHelper;->context:Landroid/content/Context;

    .line 42
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e0003

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/google/android/youtube/videos/ui/MovieViewHelper;->labelColor:I

    .line 43
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e0002

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/google/android/youtube/videos/ui/MovieViewHelper;->creditsColor:I

    .line 44
    return-void
.end method

.method private coloredString(Ljava/lang/String;I)Landroid/text/Spanned;
    .registers 5
    .parameter "s"
    .parameter "color"

    .prologue
    .line 102
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<font color=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "</font> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    return-object v0
.end method

.method private showCreditsIfAvailable(Lcom/google/android/youtube/core/model/Video$Movie;Ljava/lang/String;ILandroid/widget/TextView;)V
    .registers 12
    .parameter "movie"
    .parameter "creditsKey"
    .parameter "labelStringId"
    .parameter "view"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 89
    iget-object v1, p1, Lcom/google/android/youtube/core/model/Video$Movie;->credits:Ljava/util/Map;

    invoke-interface {v1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 90
    .local v0, credits:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v0, :cond_12

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_18

    .line 91
    :cond_12
    const/16 v1, 0x8

    invoke-virtual {p4, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 99
    :goto_17
    return-void

    .line 93
    :cond_18
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/CharSequence;

    iget-object v2, p0, Lcom/google/android/youtube/videos/ui/MovieViewHelper;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lcom/google/android/youtube/videos/ui/MovieViewHelper;->labelColor:I

    invoke-direct {p0, v2, v3}, Lcom/google/android/youtube/videos/ui/MovieViewHelper;->coloredString(Ljava/lang/String;I)Landroid/text/Spanned;

    move-result-object v2

    aput-object v2, v1, v5

    new-array v2, v6, [Ljava/lang/CharSequence;

    const-string v3, ", "

    invoke-static {v3, v0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v3

    iget v4, p0, Lcom/google/android/youtube/videos/ui/MovieViewHelper;->creditsColor:I

    invoke-direct {p0, v3, v4}, Lcom/google/android/youtube/videos/ui/MovieViewHelper;->coloredString(Ljava/lang/String;I)Landroid/text/Spanned;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v2}, Landroid/text/TextUtils;->concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    aput-object v2, v1, v6

    invoke-static {v1}, Landroid/text/TextUtils;->concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 97
    invoke-virtual {p4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_17
.end method


# virtual methods
.method public populateViews(Lcom/google/android/youtube/videos/ui/MovieViewHelper$MovieViewHolder;Lcom/google/android/youtube/core/model/Video;Landroid/graphics/Bitmap;Landroid/widget/ImageView$ScaleType;)V
    .registers 16
    .parameter "holder"
    .parameter "video"
    .parameter "poster"
    .parameter "scaleType"

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 48
    #getter for: Lcom/google/android/youtube/videos/ui/MovieViewHelper$MovieViewHolder;->title:Landroid/widget/TextView;
    invoke-static {p1}, Lcom/google/android/youtube/videos/ui/MovieViewHelper$MovieViewHolder;->access$000(Lcom/google/android/youtube/videos/ui/MovieViewHelper$MovieViewHolder;)Landroid/widget/TextView;

    move-result-object v5

    if-eqz v5, :cond_3a

    .line 49
    iget-object v5, p2, Lcom/google/android/youtube/core/model/Video;->movie:Lcom/google/android/youtube/core/model/Video$Movie;

    iget-object v5, v5, Lcom/google/android/youtube/core/model/Video$Movie;->releaseDate:Ljava/util/Date;

    if-eqz v5, :cond_86

    .line 50
    sget-object v5, Lcom/google/android/youtube/videos/ui/MovieViewHelper;->CALENDAR:Ljava/util/Calendar;

    iget-object v6, p2, Lcom/google/android/youtube/core/model/Video;->movie:Lcom/google/android/youtube/core/model/Video$Movie;

    iget-object v6, v6, Lcom/google/android/youtube/core/model/Video$Movie;->releaseDate:Ljava/util/Date;

    invoke-virtual {v5, v6}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 51
    iget-object v5, p0, Lcom/google/android/youtube/videos/ui/MovieViewHelper;->context:Landroid/content/Context;

    const v6, 0x7f0b00d7

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    iget-object v8, p2, Lcom/google/android/youtube/core/model/Video;->title:Ljava/lang/String;

    aput-object v8, v7, v9

    sget-object v8, Lcom/google/android/youtube/videos/ui/MovieViewHelper;->CALENDAR:Ljava/util/Calendar;

    invoke-virtual {v8, v10}, Ljava/util/Calendar;->get(I)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v10

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 53
    .local v4, titleWithReleaseYear:Ljava/lang/String;
    #getter for: Lcom/google/android/youtube/videos/ui/MovieViewHelper$MovieViewHolder;->title:Landroid/widget/TextView;
    invoke-static {p1}, Lcom/google/android/youtube/videos/ui/MovieViewHelper$MovieViewHolder;->access$000(Lcom/google/android/youtube/videos/ui/MovieViewHelper$MovieViewHolder;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 59
    .end local v4           #titleWithReleaseYear:Ljava/lang/String;
    :cond_3a
    :goto_3a
    iget-object v5, p1, Lcom/google/android/youtube/videos/ui/MovieViewHelper$MovieViewHolder;->poster:Landroid/widget/ImageView;

    invoke-virtual {v5, p4}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 60
    iget-object v5, p1, Lcom/google/android/youtube/videos/ui/MovieViewHelper$MovieViewHolder;->poster:Landroid/widget/ImageView;

    invoke-virtual {v5, p3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 62
    #getter for: Lcom/google/android/youtube/videos/ui/MovieViewHelper$MovieViewHolder;->genres:Landroid/widget/TextView;
    invoke-static {p1}, Lcom/google/android/youtube/videos/ui/MovieViewHelper$MovieViewHolder;->access$100(Lcom/google/android/youtube/videos/ui/MovieViewHelper$MovieViewHolder;)Landroid/widget/TextView;

    move-result-object v5

    if-eqz v5, :cond_5d

    .line 63
    iget-object v5, p2, Lcom/google/android/youtube/core/model/Video;->movie:Lcom/google/android/youtube/core/model/Video$Movie;

    iget-object v5, v5, Lcom/google/android/youtube/core/model/Video$Movie;->genres:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_90

    .line 64
    #getter for: Lcom/google/android/youtube/videos/ui/MovieViewHelper$MovieViewHolder;->genres:Landroid/widget/TextView;
    invoke-static {p1}, Lcom/google/android/youtube/videos/ui/MovieViewHelper$MovieViewHolder;->access$100(Lcom/google/android/youtube/videos/ui/MovieViewHelper$MovieViewHolder;)Landroid/widget/TextView;

    move-result-object v5

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 78
    :cond_5d
    :goto_5d
    #getter for: Lcom/google/android/youtube/videos/ui/MovieViewHelper$MovieViewHolder;->directors:Landroid/widget/TextView;
    invoke-static {p1}, Lcom/google/android/youtube/videos/ui/MovieViewHelper$MovieViewHolder;->access$200(Lcom/google/android/youtube/videos/ui/MovieViewHelper$MovieViewHolder;)Landroid/widget/TextView;

    move-result-object v5

    if-eqz v5, :cond_71

    .line 79
    iget-object v5, p2, Lcom/google/android/youtube/core/model/Video;->movie:Lcom/google/android/youtube/core/model/Video$Movie;

    const-string v6, "Director"

    const v7, 0x7f0b00d3

    #getter for: Lcom/google/android/youtube/videos/ui/MovieViewHelper$MovieViewHolder;->directors:Landroid/widget/TextView;
    invoke-static {p1}, Lcom/google/android/youtube/videos/ui/MovieViewHelper$MovieViewHolder;->access$200(Lcom/google/android/youtube/videos/ui/MovieViewHelper$MovieViewHolder;)Landroid/widget/TextView;

    move-result-object v8

    invoke-direct {p0, v5, v6, v7, v8}, Lcom/google/android/youtube/videos/ui/MovieViewHelper;->showCreditsIfAvailable(Lcom/google/android/youtube/core/model/Video$Movie;Ljava/lang/String;ILandroid/widget/TextView;)V

    .line 81
    :cond_71
    #getter for: Lcom/google/android/youtube/videos/ui/MovieViewHelper$MovieViewHolder;->actors:Landroid/widget/TextView;
    invoke-static {p1}, Lcom/google/android/youtube/videos/ui/MovieViewHelper$MovieViewHolder;->access$300(Lcom/google/android/youtube/videos/ui/MovieViewHelper$MovieViewHolder;)Landroid/widget/TextView;

    move-result-object v5

    if-eqz v5, :cond_85

    .line 82
    iget-object v5, p2, Lcom/google/android/youtube/core/model/Video;->movie:Lcom/google/android/youtube/core/model/Video$Movie;

    const-string v6, "Actor"

    const v7, 0x7f0b00d2

    #getter for: Lcom/google/android/youtube/videos/ui/MovieViewHelper$MovieViewHolder;->actors:Landroid/widget/TextView;
    invoke-static {p1}, Lcom/google/android/youtube/videos/ui/MovieViewHelper$MovieViewHolder;->access$300(Lcom/google/android/youtube/videos/ui/MovieViewHelper$MovieViewHolder;)Landroid/widget/TextView;

    move-result-object v8

    invoke-direct {p0, v5, v6, v7, v8}, Lcom/google/android/youtube/videos/ui/MovieViewHelper;->showCreditsIfAvailable(Lcom/google/android/youtube/core/model/Video$Movie;Ljava/lang/String;ILandroid/widget/TextView;)V

    .line 84
    :cond_85
    return-void

    .line 55
    :cond_86
    #getter for: Lcom/google/android/youtube/videos/ui/MovieViewHelper$MovieViewHolder;->title:Landroid/widget/TextView;
    invoke-static {p1}, Lcom/google/android/youtube/videos/ui/MovieViewHelper$MovieViewHolder;->access$000(Lcom/google/android/youtube/videos/ui/MovieViewHelper$MovieViewHolder;)Landroid/widget/TextView;

    move-result-object v5

    iget-object v6, p2, Lcom/google/android/youtube/core/model/Video;->title:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3a

    .line 66
    :cond_90
    new-instance v1, Ljava/util/ArrayList;

    iget-object v5, p2, Lcom/google/android/youtube/core/model/Video;->movie:Lcom/google/android/youtube/core/model/Video$Movie;

    iget-object v5, v5, Lcom/google/android/youtube/core/model/Video$Movie;->genres:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    invoke-direct {v1, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 67
    .local v1, genreStrings:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    iget-object v5, p2, Lcom/google/android/youtube/core/model/Video;->movie:Lcom/google/android/youtube/core/model/Video$Movie;

    iget-object v5, v5, Lcom/google/android/youtube/core/model/Video$Movie;->genres:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_a5
    :goto_a5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_c2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/model/Video$Genre;

    .line 68
    .local v0, genre:Lcom/google/android/youtube/core/model/Video$Genre;
    invoke-interface {v0}, Lcom/google/android/youtube/core/model/Video$Genre;->stringId()I

    move-result v3

    .line 69
    .local v3, stringId:I
    const/4 v5, -0x1

    if-eq v3, v5, :cond_a5

    .line 70
    iget-object v5, p0, Lcom/google/android/youtube/videos/ui/MovieViewHelper;->context:Landroid/content/Context;

    invoke-virtual {v5, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_a5

    .line 73
    .end local v0           #genre:Lcom/google/android/youtube/core/model/Video$Genre;
    .end local v3           #stringId:I
    :cond_c2
    #getter for: Lcom/google/android/youtube/videos/ui/MovieViewHelper$MovieViewHolder;->genres:Landroid/widget/TextView;
    invoke-static {p1}, Lcom/google/android/youtube/videos/ui/MovieViewHelper$MovieViewHolder;->access$100(Lcom/google/android/youtube/videos/ui/MovieViewHelper$MovieViewHolder;)Landroid/widget/TextView;

    move-result-object v5

    const-string v6, ", "

    invoke-static {v6, v1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 74
    #getter for: Lcom/google/android/youtube/videos/ui/MovieViewHelper$MovieViewHolder;->genres:Landroid/widget/TextView;
    invoke-static {p1}, Lcom/google/android/youtube/videos/ui/MovieViewHelper$MovieViewHolder;->access$100(Lcom/google/android/youtube/videos/ui/MovieViewHelper$MovieViewHolder;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_5d
.end method
