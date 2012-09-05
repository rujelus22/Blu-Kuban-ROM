.class public final Lav;
.super Landroid/widget/BaseAdapter;
.source "a"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lav$a;
    }
.end annotation


# instance fields
.field public a:[Lbm;

.field private b:Landroid/view/LayoutInflater;

.field private c:[Landroid/graphics/drawable/Drawable;

.field private d:Lav$a;

.field private e:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .registers 12
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lbm;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 38
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 41
    const-string v1, "layout_inflater"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    iput-object v1, p0, Lav;->b:Landroid/view/LayoutInflater;

    .line 42
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 45
    new-instance v5, Ljava/util/LinkedHashMap;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v5, v1}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 48
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1f
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4d

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lbm;

    .line 53
    :try_start_2b
    new-instance v2, Landroid/content/ComponentName;

    invoke-virtual {v1}, Lbm;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lbm;->getActivityClass()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v2, v3, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    invoke-virtual {v4, v2}, Landroid/content/pm/PackageManager;->getActivityIcon(Landroid/content/ComponentName;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 58
    if-eqz v3, :cond_49

    instance-of v2, v3, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v2, :cond_49

    .line 59
    move-object v0, v3

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    move-object v2, v0

    invoke-virtual {v2}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;
    :try_end_49
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2b .. :try_end_49} :catch_94

    .line 67
    :cond_49
    invoke-virtual {v5, v1, v3}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1f

    .line 72
    :cond_4d
    invoke-virtual {v5}, Ljava/util/LinkedHashMap;->size()I

    move-result v1

    new-array v1, v1, [Lbm;

    iput-object v1, p0, Lav;->a:[Lbm;

    .line 73
    invoke-virtual {v5}, Ljava/util/LinkedHashMap;->size()I

    move-result v1

    new-array v1, v1, [Landroid/graphics/drawable/BitmapDrawable;

    iput-object v1, p0, Lav;->c:[Landroid/graphics/drawable/Drawable;

    .line 76
    invoke-virtual {v5}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v4, v8

    :goto_66
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 77
    iget-object v5, p0, Lav;->a:[Lbm;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lbm;

    aput-object v2, v5, v4

    .line 78
    iget-object v2, p0, Lav;->c:[Landroid/graphics/drawable/Drawable;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/Drawable;

    aput-object v1, v2, v4

    .line 79
    add-int/lit8 v1, v4, 0x1

    move v4, v1

    goto :goto_66

    .line 82
    :cond_8a
    new-instance v1, Lav$a;

    invoke-direct {v1, p0}, Lav$a;-><init>(Lav;)V

    iput-object v1, p0, Lav;->d:Lav$a;

    .line 83
    iput-boolean v8, p0, Lav;->e:Z

    .line 84
    return-void

    .line 64
    :catch_94
    move-exception v1

    goto :goto_1f
.end method


# virtual methods
.method public final a()Ljava/lang/Integer;
    .registers 2

    .prologue
    .line 138
    iget-object v0, p0, Lav;->d:Lav$a;

    if-nez v0, :cond_6

    .line 139
    const/4 v0, 0x0

    .line 141
    :goto_5
    return-object v0

    :cond_6
    iget-object v0, p0, Lav;->d:Lav$a;

    iget-object v0, v0, Lav$a;->a:Ljava/lang/Integer;

    goto :goto_5
.end method

.method public final getCount()I
    .registers 2

    .prologue
    .line 87
    iget-object v0, p0, Lav;->a:[Lbm;

    array-length v0, v0

    return v0
.end method

.method public final getItem(I)Ljava/lang/Object;
    .registers 4
    .parameter

    .prologue
    .line 130
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Kid "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getItemId(I)J
    .registers 4
    .parameter

    .prologue
    .line 126
    int-to-long v0, p1

    return-wide v0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 8
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x1

    .line 100
    iget-boolean v0, p0, Lav;->e:Z

    if-nez v0, :cond_12

    .line 101
    instance-of v0, p3, Landroid/widget/AdapterView;

    if-eqz v0, :cond_12

    .line 102
    check-cast p3, Landroid/widget/AdapterView;

    iget-object v0, p0, Lav;->d:Lav$a;

    invoke-virtual {p3, v0}, Landroid/widget/AdapterView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 104
    iput-boolean v3, p0, Lav;->e:Z

    .line 111
    :cond_12
    iget-object v0, p0, Lav;->b:Landroid/view/LayoutInflater;

    const/high16 v1, 0x7f03

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 113
    const/high16 v0, 0x7f09

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    .line 114
    iget-object v2, p0, Lav;->c:[Landroid/graphics/drawable/Drawable;

    aget-object v2, v2, p1

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 117
    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setId(I)V

    .line 119
    const v0, 0x7f090001

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 120
    iget-object v2, p0, Lav;->a:[Lbm;

    aget-object v2, v2, p1

    invoke-virtual {v2}, Lbm;->getActivityName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 122
    return-object v1
.end method

.method public final getViewTypeCount()I
    .registers 2

    .prologue
    .line 91
    const/4 v0, 0x1

    return v0
.end method
