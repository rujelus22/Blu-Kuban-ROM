.class public final Lcom/google/android/youtube/app/ui/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/youtube/core/async/l;


# instance fields
.field private final a:Landroid/app/Activity;

.field private final b:Lcom/google/android/youtube/core/b/ae;

.field private final c:Lcom/google/android/youtube/core/b/ag;

.field private final d:Lcom/google/android/youtube/app/ui/j;

.field private final e:Lcom/google/android/youtube/core/d;

.field private final f:Landroid/widget/ImageView;

.field private final g:Landroid/widget/TextView;

.field private final h:Landroid/widget/TextView;

.field private final i:Landroid/widget/TextView;

.field private final j:Landroid/widget/TextView;

.field private final k:I


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/view/View;Lcom/google/android/youtube/core/b/ae;Lcom/google/android/youtube/core/b/ag;Lcom/google/android/youtube/core/d;)V
    .registers 13
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 85
    const v6, 0x7f0b00bd

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/google/android/youtube/app/ui/i;-><init>(Landroid/app/Activity;Landroid/view/View;Lcom/google/android/youtube/core/b/ae;Lcom/google/android/youtube/core/b/ag;Lcom/google/android/youtube/core/d;I)V

    .line 91
    return-void
.end method

.method private constructor <init>(Landroid/app/Activity;Landroid/view/View;Lcom/google/android/youtube/core/b/ae;Lcom/google/android/youtube/core/b/ag;Lcom/google/android/youtube/core/d;I)V
    .registers 9
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    const-string v0, "activity may not be null"

    invoke-static {p1, v0}, Lcom/google/android/youtube/core/utils/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    iput-object v0, p0, Lcom/google/android/youtube/app/ui/i;->a:Landroid/app/Activity;

    .line 66
    const-string v0, "gDataClient may not be null"

    invoke-static {p3, v0}, Lcom/google/android/youtube/core/utils/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/b/ae;

    iput-object v0, p0, Lcom/google/android/youtube/app/ui/i;->b:Lcom/google/android/youtube/core/b/ae;

    .line 67
    const-string v0, "imageClient may not be null"

    invoke-static {p4, v0}, Lcom/google/android/youtube/core/utils/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/b/ag;

    iput-object v0, p0, Lcom/google/android/youtube/app/ui/i;->c:Lcom/google/android/youtube/core/b/ag;

    .line 68
    const-string v0, "errorHelper may not be null"

    invoke-static {p5, v0}, Lcom/google/android/youtube/core/utils/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/d;

    iput-object v0, p0, Lcom/google/android/youtube/app/ui/i;->e:Lcom/google/android/youtube/core/d;

    .line 69
    new-instance v0, Lcom/google/android/youtube/app/ui/j;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/youtube/app/ui/j;-><init>(Lcom/google/android/youtube/app/ui/i;B)V

    iput-object v0, p0, Lcom/google/android/youtube/app/ui/i;->d:Lcom/google/android/youtube/app/ui/j;

    .line 71
    const v0, 0x7f08003a

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/google/android/youtube/app/ui/i;->f:Landroid/widget/ImageView;

    .line 72
    const v0, 0x7f08003d

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/youtube/app/ui/i;->g:Landroid/widget/TextView;

    .line 73
    const v0, 0x7f08003e

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/youtube/app/ui/i;->i:Landroid/widget/TextView;

    .line 74
    const v0, 0x7f08003f

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/youtube/app/ui/i;->h:Landroid/widget/TextView;

    .line 75
    const v0, 0x7f080040

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/youtube/app/ui/i;->j:Landroid/widget/TextView;

    .line 76
    const v0, 0x7f0b00bd

    iput v0, p0, Lcom/google/android/youtube/app/ui/i;->k:I

    .line 77
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Lcom/google/android/youtube/core/b/ae;Lcom/google/android/youtube/core/b/ag;Lcom/google/android/youtube/core/d;)V
    .registers 12
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 112
    const v0, 0x1020002

    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const v6, 0x7f0b00bd

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v6}, Lcom/google/android/youtube/app/ui/i;-><init>(Landroid/app/Activity;Landroid/view/View;Lcom/google/android/youtube/core/b/ae;Lcom/google/android/youtube/core/b/ag;Lcom/google/android/youtube/core/d;I)V

    .line 114
    return-void
.end method

.method static synthetic a(Lcom/google/android/youtube/app/ui/i;)Landroid/widget/ImageView;
    .registers 2
    .parameter

    .prologue
    .line 40
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/i;->f:Landroid/widget/ImageView;

    return-object v0
.end method

.method private b()V
    .registers 4

    .prologue
    .line 132
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/i;->f:Landroid/widget/ImageView;

    if-eqz v0, :cond_16

    .line 133
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/i;->f:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/google/android/youtube/app/ui/i;->a:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02012c

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 136
    :cond_16
    return-void
.end method

.method static synthetic b(Lcom/google/android/youtube/app/ui/i;)V
    .registers 1
    .parameter

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/google/android/youtube/app/ui/i;->b()V

    return-void
.end method

.method private b(Lcom/google/android/youtube/core/model/UserProfile;)V
    .registers 9
    .parameter

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 139
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/i;->g:Landroid/widget/TextView;

    if-eqz v0, :cond_d

    .line 140
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/i;->g:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/google/android/youtube/core/model/UserProfile;->displayUsername:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 142
    :cond_d
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/i;->a:Landroid/app/Activity;

    iget v1, p0, Lcom/google/android/youtube/app/ui/i;->k:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    .line 143
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/i;->i:Landroid/widget/TextView;

    if-eqz v0, :cond_2d

    .line 144
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/i;->i:Landroid/widget/TextView;

    const-string v1, "%1$,d"

    new-array v2, v6, [Ljava/lang/Object;

    iget-wide v3, p1, Lcom/google/android/youtube/core/model/UserProfile;->uploadViewsCount:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 146
    :cond_2d
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/i;->h:Landroid/widget/TextView;

    if-eqz v0, :cond_46

    .line 147
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/i;->h:Landroid/widget/TextView;

    const-string v1, "%1$,d"

    new-array v2, v6, [Ljava/lang/Object;

    iget v3, p1, Lcom/google/android/youtube/core/model/UserProfile;->uploadedCount:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 149
    :cond_46
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/i;->j:Landroid/widget/TextView;

    if-eqz v0, :cond_5f

    .line 150
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/i;->j:Landroid/widget/TextView;

    const-string v1, "%1$,d"

    new-array v2, v6, [Ljava/lang/Object;

    iget v3, p1, Lcom/google/android/youtube/core/model/UserProfile;->subscribersCount:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 152
    :cond_5f
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/i;->f:Landroid/widget/ImageView;

    if-eqz v0, :cond_77

    iget-object v0, p1, Lcom/google/android/youtube/core/model/UserProfile;->thumbnailUri:Landroid/net/Uri;

    if-eqz v0, :cond_77

    .line 153
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/i;->c:Lcom/google/android/youtube/core/b/ag;

    iget-object v1, p1, Lcom/google/android/youtube/core/model/UserProfile;->thumbnailUri:Landroid/net/Uri;

    iget-object v2, p0, Lcom/google/android/youtube/app/ui/i;->a:Landroid/app/Activity;

    iget-object v3, p0, Lcom/google/android/youtube/app/ui/i;->d:Lcom/google/android/youtube/app/ui/j;

    invoke-static {v2, v3}, Lcom/google/android/youtube/core/async/c;->a(Landroid/app/Activity;Lcom/google/android/youtube/core/async/l;)Lcom/google/android/youtube/core/async/c;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/google/android/youtube/core/b/ag;->a(Landroid/net/Uri;Lcom/google/android/youtube/core/async/l;)V

    .line 158
    :goto_76
    return-void

    .line 156
    :cond_77
    invoke-direct {p0}, Lcom/google/android/youtube/app/ui/i;->b()V

    goto :goto_76
.end method


# virtual methods
.method public final a()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 191
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/i;->g:Landroid/widget/TextView;

    if-eqz v0, :cond_a

    .line 192
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/i;->g:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 194
    :cond_a
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/i;->i:Landroid/widget/TextView;

    if-eqz v0, :cond_13

    .line 195
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/i;->i:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 197
    :cond_13
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/i;->h:Landroid/widget/TextView;

    if-eqz v0, :cond_1c

    .line 198
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/i;->h:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 200
    :cond_1c
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/i;->j:Landroid/widget/TextView;

    if-eqz v0, :cond_25

    .line 201
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/i;->j:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 203
    :cond_25
    invoke-direct {p0}, Lcom/google/android/youtube/app/ui/i;->b()V

    .line 204
    return-void
.end method

.method public final a(Lcom/google/android/youtube/core/model/UserAuth;)V
    .registers 4
    .parameter

    .prologue
    .line 122
    invoke-static {p1}, Lcom/google/android/youtube/core/utils/n;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/i;->b:Lcom/google/android/youtube/core/b/ae;

    iget-object v1, p0, Lcom/google/android/youtube/app/ui/i;->a:Landroid/app/Activity;

    invoke-static {v1, p0}, Lcom/google/android/youtube/core/async/c;->a(Landroid/app/Activity;Lcom/google/android/youtube/core/async/l;)Lcom/google/android/youtube/core/async/c;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/google/android/youtube/core/b/ae;->a(Lcom/google/android/youtube/core/model/UserAuth;Lcom/google/android/youtube/core/async/l;)V

    .line 124
    return-void
.end method

.method public final a(Lcom/google/android/youtube/core/model/UserProfile;)V
    .registers 2
    .parameter

    .prologue
    .line 127
    invoke-static {p1}, Lcom/google/android/youtube/core/utils/n;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    invoke-direct {p0, p1}, Lcom/google/android/youtube/app/ui/i;->b(Lcom/google/android/youtube/core/model/UserProfile;)V

    .line 129
    return-void
.end method

.method public final synthetic a(Ljava/lang/Object;Ljava/lang/Exception;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 40
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

    iget-object v0, p0, Lcom/google/android/youtube/app/ui/i;->e:Lcom/google/android/youtube/core/d;

    const v1, 0x7f0b0191

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/d;->a(I)V

    :goto_1c
    return-void

    :cond_1d
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/i;->e:Lcom/google/android/youtube/core/d;

    invoke-virtual {v0, p2}, Lcom/google/android/youtube/core/d;->b(Ljava/lang/Throwable;)V

    invoke-direct {p0}, Lcom/google/android/youtube/app/ui/i;->b()V

    goto :goto_1c
.end method

.method public final synthetic a(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 40
    check-cast p2, Lcom/google/android/youtube/core/model/UserProfile;

    invoke-direct {p0, p2}, Lcom/google/android/youtube/app/ui/i;->b(Lcom/google/android/youtube/core/model/UserProfile;)V

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .registers 4
    .parameter

    .prologue
    .line 117
    invoke-static {p1}, Lcom/google/android/youtube/core/utils/n;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 118
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/i;->b:Lcom/google/android/youtube/core/b/ae;

    iget-object v1, p0, Lcom/google/android/youtube/app/ui/i;->a:Landroid/app/Activity;

    invoke-static {v1, p0}, Lcom/google/android/youtube/core/async/c;->a(Landroid/app/Activity;Lcom/google/android/youtube/core/async/l;)Lcom/google/android/youtube/core/async/c;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/google/android/youtube/core/b/ae;->d(Ljava/lang/String;Lcom/google/android/youtube/core/async/l;)V

    .line 119
    return-void
.end method
