.class public final Lcom/google/android/youtube/app/ui/PromoHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Landroid/content/SharedPreferences;

.field private final c:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .parameter

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/google/android/youtube/app/ui/PromoHelper;->a:Landroid/content/Context;

    .line 44
    const-string v0, "youtube"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/app/ui/PromoHelper;->b:Landroid/content/SharedPreferences;

    .line 45
    const-string v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 46
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 47
    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/google/android/youtube/app/ui/PromoHelper;->c:I

    .line 48
    return-void
.end method

.method private a(Ljava/lang/String;IILcom/google/android/youtube/app/ui/PromoHelper$Position;)V
    .registers 11
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 85
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/PromoHelper;->b:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 86
    if-nez v0, :cond_58

    .line 87
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/PromoHelper;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/youtube/core/utils/Util;->d(Landroid/content/Context;)Landroid/widget/Toast;

    move-result-object v1

    .line 88
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/PromoHelper;->a:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v2, 0x7f04003d

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 89
    const v0, 0x7f09003a

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 90
    invoke-virtual {v0, p3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 91
    const v0, 0x7f09006f

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 92
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(I)V

    .line 93
    invoke-virtual {v1, v2}, Landroid/widget/Toast;->setView(Landroid/view/View;)V

    .line 94
    invoke-virtual {v1, v5}, Landroid/widget/Toast;->setDuration(I)V

    .line 95
    const/16 v0, 0x30

    iget v2, p4, Lcom/google/android/youtube/app/ui/PromoHelper$Position;->percentage:I

    iget v3, p0, Lcom/google/android/youtube/app/ui/PromoHelper;->c:I

    mul-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x64

    invoke-virtual {v1, v0, v4, v2}, Landroid/widget/Toast;->setGravity(III)V

    .line 96
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 97
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/PromoHelper;->b:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 99
    :cond_58
    return-void
.end method


# virtual methods
.method public final a()V
    .registers 5

    .prologue
    .line 51
    const-string v0, "promo_tabs"

    const v1, 0x7f0a0194

    const v2, 0x7f0200e3

    sget-object v3, Lcom/google/android/youtube/app/ui/PromoHelper$Position;->BOTTOM:Lcom/google/android/youtube/app/ui/PromoHelper$Position;

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/google/android/youtube/app/ui/PromoHelper;->a(Ljava/lang/String;IILcom/google/android/youtube/app/ui/PromoHelper$Position;)V

    .line 53
    return-void
.end method

.method public final b()V
    .registers 5

    .prologue
    .line 56
    const-string v0, "promo_fullscreen"

    const v1, 0x7f0a0195

    const v2, 0x7f0200e4

    sget-object v3, Lcom/google/android/youtube/app/ui/PromoHelper$Position;->TOP:Lcom/google/android/youtube/app/ui/PromoHelper$Position;

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/google/android/youtube/app/ui/PromoHelper;->a(Ljava/lang/String;IILcom/google/android/youtube/app/ui/PromoHelper$Position;)V

    .line 58
    return-void
.end method

.method public final c()V
    .registers 5

    .prologue
    .line 61
    const-string v0, "promo_fullscreen_3d"

    const v1, 0x7f0a0196

    const v2, 0x7f0200e4

    sget-object v3, Lcom/google/android/youtube/app/ui/PromoHelper$Position;->TOP:Lcom/google/android/youtube/app/ui/PromoHelper$Position;

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/google/android/youtube/app/ui/PromoHelper;->a(Ljava/lang/String;IILcom/google/android/youtube/app/ui/PromoHelper$Position;)V

    .line 66
    return-void
.end method

.method public final d()V
    .registers 5

    .prologue
    .line 69
    const-string v0, "promo_playlist"

    const v1, 0x7f0a0197

    const v2, 0x7f0200e3

    sget-object v3, Lcom/google/android/youtube/app/ui/PromoHelper$Position;->TOP:Lcom/google/android/youtube/app/ui/PromoHelper$Position;

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/google/android/youtube/app/ui/PromoHelper;->a(Ljava/lang/String;IILcom/google/android/youtube/app/ui/PromoHelper$Position;)V

    .line 71
    return-void
.end method

.method public final e()V
    .registers 5

    .prologue
    .line 75
    const-string v0, "promo_music"

    const v1, 0x7f0a0198

    const v2, 0x7f020087

    sget-object v3, Lcom/google/android/youtube/app/ui/PromoHelper$Position;->CENTER:Lcom/google/android/youtube/app/ui/PromoHelper$Position;

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/google/android/youtube/app/ui/PromoHelper;->a(Ljava/lang/String;IILcom/google/android/youtube/app/ui/PromoHelper$Position;)V

    .line 77
    return-void
.end method

.method public final f()V
    .registers 5

    .prologue
    .line 80
    const-string v0, "promo_3d"

    const v1, 0x7f0a0199

    const v2, 0x7f020037

    sget-object v3, Lcom/google/android/youtube/app/ui/PromoHelper$Position;->CENTER:Lcom/google/android/youtube/app/ui/PromoHelper$Position;

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/google/android/youtube/app/ui/PromoHelper;->a(Ljava/lang/String;IILcom/google/android/youtube/app/ui/PromoHelper$Position;)V

    .line 82
    return-void
.end method
