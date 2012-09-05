.class public Lcom/android/wallpaper/livepicker/LiveWallpaperListAdapter;
.super Landroid/widget/BaseAdapter;
.source "LiveWallpaperListAdapter.java"

# interfaces
.implements Landroid/widget/ListAdapter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/wallpaper/livepicker/LiveWallpaperListAdapter$1;,
        Lcom/android/wallpaper/livepicker/LiveWallpaperListAdapter$LiveWallpaperEnumerator;,
        Lcom/android/wallpaper/livepicker/LiveWallpaperListAdapter$ViewHolder;,
        Lcom/android/wallpaper/livepicker/LiveWallpaperListAdapter$LiveWallpaperInfo;
    }
.end annotation


# instance fields
.field private final mInflater:Landroid/view/LayoutInflater;

.field private final mPackageManager:Landroid/content/pm/PackageManager;

.field private mWallpapers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/wallpaper/livepicker/LiveWallpaperListAdapter$LiveWallpaperInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 11
    .parameter "context"

    .prologue
    const/16 v8, 0x80

    const/4 v7, 0x1

    .line 63
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 64
    const-string v4, "layout_inflater"

    invoke-virtual {p1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/LayoutInflater;

    iput-object v4, p0, Lcom/android/wallpaper/livepicker/LiveWallpaperListAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 65
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    iput-object v4, p0, Lcom/android/wallpaper/livepicker/LiveWallpaperListAdapter;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 67
    iget-object v4, p0, Lcom/android/wallpaper/livepicker/LiveWallpaperListAdapter;->mPackageManager:Landroid/content/pm/PackageManager;

    new-instance v5, Landroid/content/Intent;

    const-string v6, "android.service.wallpaper.WallpaperService"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v5, v8}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    .line 71
    .local v2, list:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const/4 v1, 0x1

    .line 72
    .local v1, isMaps:Z
    const/4 v3, 0x0

    .line 75
    .local v3, remove_size:I
    :try_start_25
    iget-object v4, p0, Lcom/android/wallpaper/livepicker/LiveWallpaperListAdapter;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v5, "com.google.android.apps.maps"

    const/16 v6, 0x80

    invoke-virtual {v4, v5, v6}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_2e
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_25 .. :try_end_2e} :catch_4a

    .line 83
    :goto_2e
    if-ne v1, v7, :cond_31

    .line 84
    const/4 v3, 0x1

    .line 87
    :cond_31
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    sub-int/2addr v4, v3

    invoke-direct {p0, v4}, Lcom/android/wallpaper/livepicker/LiveWallpaperListAdapter;->generatePlaceholderViews(I)Ljava/util/List;

    move-result-object v4

    iput-object v4, p0, Lcom/android/wallpaper/livepicker/LiveWallpaperListAdapter;->mWallpapers:Ljava/util/List;

    .line 89
    new-instance v4, Lcom/android/wallpaper/livepicker/LiveWallpaperListAdapter$LiveWallpaperEnumerator;

    invoke-direct {v4, p0, p1}, Lcom/android/wallpaper/livepicker/LiveWallpaperListAdapter$LiveWallpaperEnumerator;-><init>(Lcom/android/wallpaper/livepicker/LiveWallpaperListAdapter;Landroid/content/Context;)V

    new-array v5, v7, [Ljava/util/List;

    const/4 v6, 0x0

    aput-object v2, v5, v6

    invoke-virtual {v4, v5}, Lcom/android/wallpaper/livepicker/LiveWallpaperListAdapter$LiveWallpaperEnumerator;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 90
    return-void

    .line 77
    :catch_4a
    move-exception v0

    .line 78
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v4, "LiveWallpaperListAdapter"

    const-string v5, "com.google.android.apps.maps not found!!!!"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    const/4 v1, 0x0

    .line 80
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_2e
.end method

.method static synthetic access$100(Lcom/android/wallpaper/livepicker/LiveWallpaperListAdapter;)Ljava/util/List;
    .registers 2
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/wallpaper/livepicker/LiveWallpaperListAdapter;->mWallpapers:Ljava/util/List;

    return-object v0
.end method

.method private generatePlaceholderViews(I)Ljava/util/List;
    .registers 5
    .parameter "amount"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Lcom/android/wallpaper/livepicker/LiveWallpaperListAdapter$LiveWallpaperInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 93
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, p1}, Ljava/util/ArrayList;-><init>(I)V

    .line 94
    .local v2, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/wallpaper/livepicker/LiveWallpaperListAdapter$LiveWallpaperInfo;>;"
    const/4 v0, 0x0

    .local v0, i:I
    :goto_6
    if-ge v0, p1, :cond_13

    .line 95
    new-instance v1, Lcom/android/wallpaper/livepicker/LiveWallpaperListAdapter$LiveWallpaperInfo;

    invoke-direct {v1, p0}, Lcom/android/wallpaper/livepicker/LiveWallpaperListAdapter$LiveWallpaperInfo;-><init>(Lcom/android/wallpaper/livepicker/LiveWallpaperListAdapter;)V

    .line 97
    .local v1, info:Lcom/android/wallpaper/livepicker/LiveWallpaperListAdapter$LiveWallpaperInfo;
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 94
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 99
    .end local v1           #info:Lcom/android/wallpaper/livepicker/LiveWallpaperListAdapter$LiveWallpaperInfo;
    :cond_13
    return-object v2
.end method


# virtual methods
.method public getCount()I
    .registers 2

    .prologue
    .line 103
    iget-object v0, p0, Lcom/android/wallpaper/livepicker/LiveWallpaperListAdapter;->mWallpapers:Ljava/util/List;

    if-nez v0, :cond_6

    .line 104
    const/4 v0, 0x0

    .line 106
    :goto_5
    return v0

    :cond_6
    iget-object v0, p0, Lcom/android/wallpaper/livepicker/LiveWallpaperListAdapter;->mWallpapers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_5
.end method

.method public getItem(I)Ljava/lang/Object;
    .registers 3
    .parameter "position"

    .prologue
    .line 110
    iget-object v0, p0, Lcom/android/wallpaper/livepicker/LiveWallpaperListAdapter;->mWallpapers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .registers 4
    .parameter "position"

    .prologue
    .line 114
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 11
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 119
    if-nez p2, :cond_8d

    .line 120
    iget-object v3, p0, Lcom/android/wallpaper/livepicker/LiveWallpaperListAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v4, 0x7f030001

    invoke-virtual {v3, v4, p3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 122
    new-instance v1, Lcom/android/wallpaper/livepicker/LiveWallpaperListAdapter$ViewHolder;

    invoke-direct {v1, p0, v6}, Lcom/android/wallpaper/livepicker/LiveWallpaperListAdapter$ViewHolder;-><init>(Lcom/android/wallpaper/livepicker/LiveWallpaperListAdapter;Lcom/android/wallpaper/livepicker/LiveWallpaperListAdapter$1;)V

    .line 123
    .local v1, holder:Lcom/android/wallpaper/livepicker/LiveWallpaperListAdapter$ViewHolder;
    const v3, 0x7f090002

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v1, Lcom/android/wallpaper/livepicker/LiveWallpaperListAdapter$ViewHolder;->title:Landroid/widget/TextView;

    .line 124
    const v3, 0x7f090003

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v1, Lcom/android/wallpaper/livepicker/LiveWallpaperListAdapter$ViewHolder;->description:Landroid/widget/TextView;

    .line 125
    const v3, 0x7f090001

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, v1, Lcom/android/wallpaper/livepicker/LiveWallpaperListAdapter$ViewHolder;->thumbnail:Landroid/widget/ImageView;

    .line 126
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 131
    :goto_36
    iget-object v3, p0, Lcom/android/wallpaper/livepicker/LiveWallpaperListAdapter;->mWallpapers:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/wallpaper/livepicker/LiveWallpaperListAdapter$LiveWallpaperInfo;

    .line 132
    .local v2, wallpaperInfo:Lcom/android/wallpaper/livepicker/LiveWallpaperListAdapter$LiveWallpaperInfo;
    iget-object v3, v1, Lcom/android/wallpaper/livepicker/LiveWallpaperListAdapter$ViewHolder;->thumbnail:Landroid/widget/ImageView;

    if-eqz v3, :cond_49

    .line 133
    iget-object v3, v1, Lcom/android/wallpaper/livepicker/LiveWallpaperListAdapter$ViewHolder;->thumbnail:Landroid/widget/ImageView;

    iget-object v4, v2, Lcom/android/wallpaper/livepicker/LiveWallpaperListAdapter$LiveWallpaperInfo;->thumbnail:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 136
    :cond_49
    iget-object v3, v1, Lcom/android/wallpaper/livepicker/LiveWallpaperListAdapter$ViewHolder;->title:Landroid/widget/TextView;

    if-eqz v3, :cond_69

    iget-object v3, v2, Lcom/android/wallpaper/livepicker/LiveWallpaperListAdapter$LiveWallpaperInfo;->info:Landroid/app/WallpaperInfo;

    if-eqz v3, :cond_69

    .line 137
    iget-object v3, v1, Lcom/android/wallpaper/livepicker/LiveWallpaperListAdapter$ViewHolder;->title:Landroid/widget/TextView;

    iget-object v4, v2, Lcom/android/wallpaper/livepicker/LiveWallpaperListAdapter$LiveWallpaperInfo;->info:Landroid/app/WallpaperInfo;

    iget-object v5, p0, Lcom/android/wallpaper/livepicker/LiveWallpaperListAdapter;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v4, v5}, Landroid/app/WallpaperInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 138
    iget-object v3, v1, Lcom/android/wallpaper/livepicker/LiveWallpaperListAdapter$ViewHolder;->thumbnail:Landroid/widget/ImageView;

    if-nez v3, :cond_69

    .line 139
    iget-object v3, v1, Lcom/android/wallpaper/livepicker/LiveWallpaperListAdapter$ViewHolder;->title:Landroid/widget/TextView;

    iget-object v4, v2, Lcom/android/wallpaper/livepicker/LiveWallpaperListAdapter$LiveWallpaperInfo;->thumbnail:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v6, v4, v6, v6}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 144
    :cond_69
    iget-object v3, v1, Lcom/android/wallpaper/livepicker/LiveWallpaperListAdapter$ViewHolder;->description:Landroid/widget/TextView;

    if-eqz v3, :cond_8c

    iget-object v3, v2, Lcom/android/wallpaper/livepicker/LiveWallpaperListAdapter$LiveWallpaperInfo;->info:Landroid/app/WallpaperInfo;

    if-eqz v3, :cond_8c

    .line 146
    :try_start_71
    iget-object v3, v1, Lcom/android/wallpaper/livepicker/LiveWallpaperListAdapter$ViewHolder;->description:Landroid/widget/TextView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 147
    iget-object v3, v1, Lcom/android/wallpaper/livepicker/LiveWallpaperListAdapter$ViewHolder;->description:Landroid/widget/TextView;

    iget-object v4, v2, Lcom/android/wallpaper/livepicker/LiveWallpaperListAdapter$LiveWallpaperInfo;->info:Landroid/app/WallpaperInfo;

    iget-object v5, p0, Lcom/android/wallpaper/livepicker/LiveWallpaperListAdapter;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v4, v5}, Landroid/app/WallpaperInfo;->loadDescription(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_8c
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_71 .. :try_end_8c} :catch_94

    .line 154
    :cond_8c
    :goto_8c
    return-object p2

    .line 128
    .end local v1           #holder:Lcom/android/wallpaper/livepicker/LiveWallpaperListAdapter$ViewHolder;
    .end local v2           #wallpaperInfo:Lcom/android/wallpaper/livepicker/LiveWallpaperListAdapter$LiveWallpaperInfo;
    :cond_8d
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/wallpaper/livepicker/LiveWallpaperListAdapter$ViewHolder;

    .restart local v1       #holder:Lcom/android/wallpaper/livepicker/LiveWallpaperListAdapter$ViewHolder;
    goto :goto_36

    .line 149
    .restart local v2       #wallpaperInfo:Lcom/android/wallpaper/livepicker/LiveWallpaperListAdapter$LiveWallpaperInfo;
    :catch_94
    move-exception v0

    .line 150
    .local v0, e:Landroid/content/res/Resources$NotFoundException;
    iget-object v3, v1, Lcom/android/wallpaper/livepicker/LiveWallpaperListAdapter$ViewHolder;->description:Landroid/widget/TextView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_8c
.end method
