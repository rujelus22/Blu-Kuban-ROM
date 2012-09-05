.class public final Lcom/google/android/youtube/app/ui/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/youtube/core/async/g;


# instance fields
.field private final a:Landroid/app/Activity;

.field private final b:Lcom/google/android/youtube/core/client/ad;

.field private final c:Lcom/google/android/youtube/core/client/af;

.field private final d:Lcom/google/android/youtube/app/ui/i;

.field private final e:Lcom/google/android/youtube/core/e;

.field private final f:Landroid/widget/ImageView;

.field private final g:Landroid/widget/TextView;

.field private final h:Landroid/widget/TextView;

.field private final i:Landroid/widget/TextView;

.field private final j:Landroid/widget/TextView;

.field private final k:I


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/view/View;Lcom/google/android/youtube/core/client/ad;Lcom/google/android/youtube/core/client/af;Lcom/google/android/youtube/core/e;)V
    .registers 13
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 86
    const v6, 0x7f0a0098

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/google/android/youtube/app/ui/h;-><init>(Landroid/app/Activity;Landroid/view/View;Lcom/google/android/youtube/core/client/ad;Lcom/google/android/youtube/core/client/af;Lcom/google/android/youtube/core/e;I)V

    .line 92
    return-void
.end method

.method private constructor <init>(Landroid/app/Activity;Landroid/view/View;Lcom/google/android/youtube/core/client/ad;Lcom/google/android/youtube/core/client/af;Lcom/google/android/youtube/core/e;I)V
    .registers 8
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    const-string v0, "activity may not be null"

    invoke-static {p1, v0}, Lcom/google/android/youtube/core/utils/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    iput-object v0, p0, Lcom/google/android/youtube/app/ui/h;->a:Landroid/app/Activity;

    .line 67
    const-string v0, "gDataClient may not be null"

    invoke-static {p3, v0}, Lcom/google/android/youtube/core/utils/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/client/ad;

    iput-object v0, p0, Lcom/google/android/youtube/app/ui/h;->b:Lcom/google/android/youtube/core/client/ad;

    .line 68
    const-string v0, "imageClient may not be null"

    invoke-static {p4, v0}, Lcom/google/android/youtube/core/utils/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/client/af;

    iput-object v0, p0, Lcom/google/android/youtube/app/ui/h;->c:Lcom/google/android/youtube/core/client/af;

    .line 69
    const-string v0, "errorHelper may not be null"

    invoke-static {p5, v0}, Lcom/google/android/youtube/core/utils/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/e;

    iput-object v0, p0, Lcom/google/android/youtube/app/ui/h;->e:Lcom/google/android/youtube/core/e;

    .line 70
    new-instance v0, Lcom/google/android/youtube/app/ui/i;

    invoke-direct {v0, p0}, Lcom/google/android/youtube/app/ui/i;-><init>(Lcom/google/android/youtube/app/ui/h;)V

    iput-object v0, p0, Lcom/google/android/youtube/app/ui/h;->d:Lcom/google/android/youtube/app/ui/i;

    .line 72
    const v0, 0x7f090031

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/google/android/youtube/app/ui/h;->f:Landroid/widget/ImageView;

    .line 73
    const v0, 0x7f090032

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/youtube/app/ui/h;->g:Landroid/widget/TextView;

    .line 74
    const v0, 0x7f090033

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/youtube/app/ui/h;->i:Landroid/widget/TextView;

    .line 75
    const v0, 0x7f090034

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/youtube/app/ui/h;->h:Landroid/widget/TextView;

    .line 76
    const v0, 0x7f090035

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/youtube/app/ui/h;->j:Landroid/widget/TextView;

    .line 77
    iput p6, p0, Lcom/google/android/youtube/app/ui/h;->k:I

    .line 78
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Lcom/google/android/youtube/core/client/ad;Lcom/google/android/youtube/core/client/af;Lcom/google/android/youtube/core/e;)V
    .registers 12
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 113
    const v0, 0x1020002

    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const v6, 0x7f0a0098

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v6}, Lcom/google/android/youtube/app/ui/h;-><init>(Landroid/app/Activity;Landroid/view/View;Lcom/google/android/youtube/core/client/ad;Lcom/google/android/youtube/core/client/af;Lcom/google/android/youtube/core/e;I)V

    .line 115
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Lcom/google/android/youtube/core/client/ad;Lcom/google/android/youtube/core/client/af;Lcom/google/android/youtube/core/e;I)V
    .registers 13
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 100
    const v0, 0x1020002

    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const v6, 0x7f0a0097

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v6}, Lcom/google/android/youtube/app/ui/h;-><init>(Landroid/app/Activity;Landroid/view/View;Lcom/google/android/youtube/core/client/ad;Lcom/google/android/youtube/core/client/af;Lcom/google/android/youtube/core/e;I)V

    .line 106
    return-void
.end method

.method static synthetic a(Lcom/google/android/youtube/app/ui/h;)Landroid/widget/ImageView;
    .registers 2
    .parameter

    .prologue
    .line 41
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/h;->f:Landroid/widget/ImageView;

    return-object v0
.end method

.method private b()V
    .registers 4

    .prologue
    .line 133
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/h;->f:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/google/android/youtube/app/ui/h;->a:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020008

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 135
    return-void
.end method

.method static synthetic b(Lcom/google/android/youtube/app/ui/h;)V
    .registers 1
    .parameter

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/google/android/youtube/app/ui/h;->b()V

    return-void
.end method

.method private b(Lcom/google/android/youtube/core/model/UserProfile;)V
    .registers 12
    .parameter

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 138
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/h;->g:Landroid/widget/TextView;

    if-eqz v0, :cond_e

    .line 139
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/h;->g:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/google/android/youtube/core/model/UserProfile;->displayUsername:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 141
    :cond_e
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/h;->a:Landroid/app/Activity;

    iget v1, p0, Lcom/google/android/youtube/app/ui/h;->k:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 142
    iget-object v1, p0, Lcom/google/android/youtube/app/ui/h;->i:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/google/android/youtube/app/ui/h;->a:Landroid/app/Activity;

    const v3, 0x7f0a013e

    new-array v4, v9, [Ljava/lang/Object;

    iget-wide v5, p1, Lcom/google/android/youtube/core/model/UserProfile;->channelViewsCount:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v4, v7

    aput-object v0, v4, v8

    invoke-virtual {v2, v3, v4}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 145
    iget-object v1, p0, Lcom/google/android/youtube/app/ui/h;->h:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/google/android/youtube/app/ui/h;->a:Landroid/app/Activity;

    const v3, 0x7f0a013c

    new-array v4, v9, [Ljava/lang/Object;

    iget v5, p1, Lcom/google/android/youtube/core/model/UserProfile;->uploadedCount:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    aput-object v0, v4, v8

    invoke-virtual {v2, v3, v4}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 148
    iget-object v1, p0, Lcom/google/android/youtube/app/ui/h;->j:Landroid/widget/TextView;

    if-eqz v1, :cond_74

    .line 149
    iget-object v1, p0, Lcom/google/android/youtube/app/ui/h;->j:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/google/android/youtube/app/ui/h;->a:Landroid/app/Activity;

    const v3, 0x7f0a0140

    new-array v4, v9, [Ljava/lang/Object;

    iget v5, p1, Lcom/google/android/youtube/core/model/UserProfile;->subscribersCount:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    aput-object v0, v4, v8

    invoke-virtual {v2, v3, v4}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 153
    :cond_74
    iget-object v0, p1, Lcom/google/android/youtube/core/model/UserProfile;->thumbnailUri:Landroid/net/Uri;

    if-eqz v0, :cond_88

    .line 154
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/h;->c:Lcom/google/android/youtube/core/client/af;

    iget-object v1, p1, Lcom/google/android/youtube/core/model/UserProfile;->thumbnailUri:Landroid/net/Uri;

    iget-object v2, p0, Lcom/google/android/youtube/app/ui/h;->a:Landroid/app/Activity;

    iget-object v3, p0, Lcom/google/android/youtube/app/ui/h;->d:Lcom/google/android/youtube/app/ui/i;

    invoke-static {v2, v3}, Lcom/google/android/youtube/core/async/a;->a(Landroid/app/Activity;Lcom/google/android/youtube/core/async/g;)Lcom/google/android/youtube/core/async/a;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/google/android/youtube/core/client/af;->e(Landroid/net/Uri;Lcom/google/android/youtube/core/async/g;)V

    .line 159
    :goto_87
    return-void

    .line 157
    :cond_88
    invoke-direct {p0}, Lcom/google/android/youtube/app/ui/h;->b()V

    goto :goto_87
.end method


# virtual methods
.method public final a()V
    .registers 4

    .prologue
    .line 192
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/h;->g:Landroid/widget/TextView;

    if-eqz v0, :cond_a

    .line 193
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/h;->g:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 195
    :cond_a
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/h;->i:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/google/android/youtube/app/ui/h;->a:Landroid/app/Activity;

    const v2, 0x7f0a013d

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 196
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/h;->h:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/google/android/youtube/app/ui/h;->a:Landroid/app/Activity;

    const v2, 0x7f0a013b

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 197
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/h;->j:Landroid/widget/TextView;

    if-eqz v0, :cond_38

    .line 198
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/h;->j:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/google/android/youtube/app/ui/h;->a:Landroid/app/Activity;

    const v2, 0x7f0a013f

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 200
    :cond_38
    invoke-direct {p0}, Lcom/google/android/youtube/app/ui/h;->b()V

    .line 201
    return-void
.end method

.method public final a(Lcom/google/android/youtube/core/model/UserAuth;)V
    .registers 4
    .parameter

    .prologue
    .line 123
    invoke-static {p1}, Lcom/google/android/youtube/core/utils/k;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/h;->b:Lcom/google/android/youtube/core/client/ad;

    iget-object v1, p0, Lcom/google/android/youtube/app/ui/h;->a:Landroid/app/Activity;

    invoke-static {v1, p0}, Lcom/google/android/youtube/core/async/a;->a(Landroid/app/Activity;Lcom/google/android/youtube/core/async/g;)Lcom/google/android/youtube/core/async/a;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/google/android/youtube/core/client/ad;->a(Lcom/google/android/youtube/core/model/UserAuth;Lcom/google/android/youtube/core/async/g;)V

    .line 125
    return-void
.end method

.method public final a(Lcom/google/android/youtube/core/model/UserProfile;)V
    .registers 2
    .parameter

    .prologue
    .line 128
    invoke-static {p1}, Lcom/google/android/youtube/core/utils/k;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    invoke-direct {p0, p1}, Lcom/google/android/youtube/app/ui/h;->b(Lcom/google/android/youtube/core/model/UserProfile;)V

    .line 130
    return-void
.end method

.method public final synthetic a(Ljava/lang/Object;Ljava/lang/Exception;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 41
    const-string v0, "Error retrieving user profile"

    invoke-static {v0, p2}, Lcom/google/android/youtube/core/L;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    instance-of v0, p2, Lorg/apache/http/client/HttpResponseException;

    if-eqz v0, :cond_1d

    move-object v0, p2

    check-cast v0, Lorg/apache/http/client/HttpResponseException;

    invoke-virtual {v0}, Lorg/apache/http/client/HttpResponseException;->getStatusCode()I

    move-result v0

    const/16 v1, 0x193

    if-ne v0, v1, :cond_1d

    iget-object v0, p0, Lcom/google/android/youtube/app/ui/h;->e:Lcom/google/android/youtube/core/e;

    const v1, 0x7f0a0143

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/e;->a(I)V

    :goto_1c
    return-void

    :cond_1d
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/h;->e:Lcom/google/android/youtube/core/e;

    invoke-virtual {v0, p2}, Lcom/google/android/youtube/core/e;->b(Ljava/lang/Throwable;)V

    invoke-direct {p0}, Lcom/google/android/youtube/app/ui/h;->b()V

    goto :goto_1c
.end method

.method public final synthetic a(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 41
    check-cast p2, Lcom/google/android/youtube/core/model/UserProfile;

    invoke-direct {p0, p2}, Lcom/google/android/youtube/app/ui/h;->b(Lcom/google/android/youtube/core/model/UserProfile;)V

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .registers 4
    .parameter

    .prologue
    .line 118
    invoke-static {p1}, Lcom/google/android/youtube/core/utils/k;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 119
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/h;->b:Lcom/google/android/youtube/core/client/ad;

    iget-object v1, p0, Lcom/google/android/youtube/app/ui/h;->a:Landroid/app/Activity;

    invoke-static {v1, p0}, Lcom/google/android/youtube/core/async/a;->a(Landroid/app/Activity;Lcom/google/android/youtube/core/async/g;)Lcom/google/android/youtube/core/async/a;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/google/android/youtube/core/client/ad;->e(Ljava/lang/String;Lcom/google/android/youtube/core/async/g;)V

    .line 120
    return-void
.end method
