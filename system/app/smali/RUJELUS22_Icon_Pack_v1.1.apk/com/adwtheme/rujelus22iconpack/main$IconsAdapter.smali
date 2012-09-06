.class Lcom/adwtheme/rujelus22iconpack/main$IconsAdapter;
.super Landroid/widget/BaseAdapter;
.source "main.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/adwtheme/rujelus22iconpack/main;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "IconsAdapter"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mIconSize:I

.field private mThumbs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/adwtheme/rujelus22iconpack/main;


# direct methods
.method public constructor <init>(Lcom/adwtheme/rujelus22iconpack/main;Landroid/content/Context;I)V
    .registers 4
    .parameter
    .parameter "mContext"
    .parameter "iconsize"

    .prologue
    .line 69
    iput-object p1, p0, Lcom/adwtheme/rujelus22iconpack/main$IconsAdapter;->this$0:Lcom/adwtheme/rujelus22iconpack/main;

    .line 65
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 66
    iput-object p2, p0, Lcom/adwtheme/rujelus22iconpack/main$IconsAdapter;->mContext:Landroid/content/Context;

    .line 67
    iput p3, p0, Lcom/adwtheme/rujelus22iconpack/main$IconsAdapter;->mIconSize:I

    .line 68
    invoke-direct {p0}, Lcom/adwtheme/rujelus22iconpack/main$IconsAdapter;->loadIcons()V

    return-void
.end method

.method private addIcons(Landroid/content/res/Resources;Ljava/lang/String;I)V
    .registers 12
    .parameter "resources"
    .parameter "packageName"
    .parameter "list"

    .prologue
    .line 111
    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 112
    .local v1, extras:[Ljava/lang/String;
    array-length v4, v1

    const/4 v5, 0x0

    :goto_6
    if-lt v5, v4, :cond_9

    .line 121
    return-void

    .line 112
    :cond_9
    aget-object v0, v1, v5

    .line 113
    .local v0, extra:Ljava/lang/String;
    const-string v6, "drawable"

    invoke-virtual {p1, v0, v6, p2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 114
    .local v2, res:I
    if-eqz v2, :cond_24

    .line 115
    const-string v6, "drawable"

    invoke-virtual {p1, v0, v6, p2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 116
    .local v3, thumbRes:I
    if-eqz v3, :cond_24

    .line 117
    iget-object v6, p0, Lcom/adwtheme/rujelus22iconpack/main$IconsAdapter;->mThumbs:Ljava/util/ArrayList;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 112
    .end local v3           #thumbRes:I
    :cond_24
    add-int/lit8 v5, v5, 0x1

    goto :goto_6
.end method

.method private loadIcons()V
    .registers 4

    .prologue
    .line 103
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/adwtheme/rujelus22iconpack/main$IconsAdapter;->mThumbs:Ljava/util/ArrayList;

    .line 105
    iget-object v2, p0, Lcom/adwtheme/rujelus22iconpack/main$IconsAdapter;->this$0:Lcom/adwtheme/rujelus22iconpack/main;

    invoke-virtual {v2}, Lcom/adwtheme/rujelus22iconpack/main;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 106
    .local v1, resources:Landroid/content/res/Resources;
    iget-object v2, p0, Lcom/adwtheme/rujelus22iconpack/main$IconsAdapter;->this$0:Lcom/adwtheme/rujelus22iconpack/main;

    invoke-virtual {v2}, Lcom/adwtheme/rujelus22iconpack/main;->getApplication()Landroid/app/Application;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 108
    .local v0, packageName:Ljava/lang/String;
    const/high16 v2, 0x7f06

    invoke-direct {p0, v1, v0, v2}, Lcom/adwtheme/rujelus22iconpack/main$IconsAdapter;->addIcons(Landroid/content/res/Resources;Ljava/lang/String;I)V

    .line 109
    return-void
.end method


# virtual methods
.method public getCount()I
    .registers 2

    .prologue
    .line 73
    iget-object v0, p0, Lcom/adwtheme/rujelus22iconpack/main$IconsAdapter;->mThumbs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .registers 4
    .parameter "position"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/adwtheme/rujelus22iconpack/main$IconsAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Lcom/adwtheme/rujelus22iconpack/main$IconsAdapter;->mThumbs:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    check-cast p0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .registers 4
    .parameter "position"

    .prologue
    .line 84
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 9
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 90
    if-nez p2, :cond_25

    .line 91
    new-instance v1, Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/adwtheme/rujelus22iconpack/main$IconsAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 92
    .local v1, imageView:Landroid/widget/ImageView;
    new-instance v2, Landroid/widget/AbsListView$LayoutParams;

    iget v3, p0, Lcom/adwtheme/rujelus22iconpack/main$IconsAdapter;->mIconSize:I

    iget v4, p0, Lcom/adwtheme/rujelus22iconpack/main$IconsAdapter;->mIconSize:I

    invoke-direct {v2, v3, v4}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 96
    :goto_15
    iget-object v2, p0, Lcom/adwtheme/rujelus22iconpack/main$IconsAdapter;->mThumbs:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 97
    return-object v1

    .line 94
    .end local v1           #imageView:Landroid/widget/ImageView;
    .restart local p0
    :cond_25
    move-object v0, p2

    check-cast v0, Landroid/widget/ImageView;

    move-object v1, v0

    .restart local v1       #imageView:Landroid/widget/ImageView;
    goto :goto_15
.end method
