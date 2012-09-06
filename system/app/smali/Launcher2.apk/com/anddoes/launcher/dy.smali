.class public final Lcom/anddoes/launcher/dy;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/widget/ListAdapter;


# instance fields
.field private a:Landroid/view/LayoutInflater;

.field private b:Lcom/anddoes/launcher/Launcher;

.field private c:Ljava/lang/String;

.field private d:Landroid/content/ClipData;

.field private e:Ljava/util/List;

.field private f:Lcom/anddoes/launcher/CellLayout;

.field private g:I

.field private h:[I


# direct methods
.method public constructor <init>(Lcom/anddoes/launcher/Launcher;Ljava/lang/String;Landroid/content/ClipData;Ljava/util/List;Lcom/anddoes/launcher/CellLayout;I[I)V
    .registers 8
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    iput-object p1, p0, Lcom/anddoes/launcher/dy;->b:Lcom/anddoes/launcher/Launcher;

    .line 85
    iput-object p2, p0, Lcom/anddoes/launcher/dy;->c:Ljava/lang/String;

    .line 86
    iput-object p3, p0, Lcom/anddoes/launcher/dy;->d:Landroid/content/ClipData;

    .line 87
    iput-object p4, p0, Lcom/anddoes/launcher/dy;->e:Ljava/util/List;

    .line 88
    iput-object p5, p0, Lcom/anddoes/launcher/dy;->f:Lcom/anddoes/launcher/CellLayout;

    .line 89
    iput p6, p0, Lcom/anddoes/launcher/dy;->g:I

    .line 90
    iput-object p7, p0, Lcom/anddoes/launcher/dy;->h:[I

    .line 91
    return-void
.end method


# virtual methods
.method public final areAllItemsEnabled()Z
    .registers 2

    .prologue
    .line 174
    const/4 v0, 0x0

    return v0
.end method

.method public final getCount()I
    .registers 2

    .prologue
    .line 103
    iget-object v0, p0, Lcom/anddoes/launcher/dy;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final getItem(I)Ljava/lang/Object;
    .registers 3
    .parameter

    .prologue
    .line 108
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getItemId(I)J
    .registers 4
    .parameter

    .prologue
    .line 113
    int-to-long v0, p1

    return-wide v0
.end method

.method public final getItemViewType(I)I
    .registers 3
    .parameter

    .prologue
    .line 159
    const/4 v0, 0x0

    return v0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 13
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 123
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 124
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 127
    iget-object v0, p0, Lcom/anddoes/launcher/dy;->a:Landroid/view/LayoutInflater;

    if-nez v0, :cond_15

    .line 128
    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/anddoes/launcher/dy;->a:Landroid/view/LayoutInflater;

    .line 132
    :cond_15
    if-nez p2, :cond_20

    .line 133
    iget-object v0, p0, Lcom/anddoes/launcher/dy;->a:Landroid/view/LayoutInflater;

    const v3, 0x7f030010

    invoke-virtual {v0, v3, p3, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 137
    :cond_20
    iget-object v0, p0, Lcom/anddoes/launcher/dy;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/anddoes/launcher/dz;

    .line 138
    iget-object v3, v0, Lcom/anddoes/launcher/dz;->a:Landroid/content/pm/ResolveInfo;

    .line 139
    iget-object v4, v0, Lcom/anddoes/launcher/dz;->b:Landroid/appwidget/AppWidgetProviderInfo;

    .line 142
    invoke-virtual {v3, v2}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 143
    const v0, 0x7f080020

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 144
    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 147
    invoke-virtual {v3, v2}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 148
    new-array v3, v8, [I

    .line 149
    iget-object v0, p0, Lcom/anddoes/launcher/dy;->f:Lcom/anddoes/launcher/CellLayout;

    iget v5, v4, Landroid/appwidget/AppWidgetProviderInfo;->minWidth:I

    iget v4, v4, Landroid/appwidget/AppWidgetProviderInfo;->minHeight:I

    invoke-virtual {v0, v5, v4, v3}, Lcom/anddoes/launcher/CellLayout;->b(II[I)[I

    .line 150
    const v0, 0x7f080021

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 151
    const v4, 0x7f060257

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    .line 152
    aput-object v2, v5, v6

    aget v2, v3, v6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v5, v7

    aget v2, v3, v7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v5, v8

    .line 151
    invoke-virtual {v1, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 154
    return-object p2
.end method

.method public final getViewTypeCount()I
    .registers 2

    .prologue
    .line 164
    const/4 v0, 0x1

    return v0
.end method

.method public final hasStableIds()Z
    .registers 2

    .prologue
    .line 118
    const/4 v0, 0x1

    return v0
.end method

.method public final isEmpty()Z
    .registers 2

    .prologue
    .line 169
    iget-object v0, p0, Lcom/anddoes/launcher/dy;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public final isEnabled(I)Z
    .registers 3
    .parameter

    .prologue
    .line 179
    const/4 v0, 0x1

    return v0
.end method

.method public final onClick(Landroid/content/DialogInterface;I)V
    .registers 10
    .parameter
    .parameter

    .prologue
    .line 184
    iget-object v0, p0, Lcom/anddoes/launcher/dy;->e:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/anddoes/launcher/dz;

    iget-object v0, v0, Lcom/anddoes/launcher/dz;->b:Landroid/appwidget/AppWidgetProviderInfo;

    .line 186
    new-instance v1, Lcom/anddoes/launcher/jo;

    iget-object v2, p0, Lcom/anddoes/launcher/dy;->c:Ljava/lang/String;

    .line 187
    iget-object v3, p0, Lcom/anddoes/launcher/dy;->d:Landroid/content/ClipData;

    .line 186
    invoke-direct {v1, v0, v2, v3}, Lcom/anddoes/launcher/jo;-><init>(Landroid/appwidget/AppWidgetProviderInfo;Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 188
    iget-object v0, p0, Lcom/anddoes/launcher/dy;->b:Lcom/anddoes/launcher/Launcher;

    const-wide/16 v2, -0x64

    .line 189
    iget v4, p0, Lcom/anddoes/launcher/dy;->g:I

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/anddoes/launcher/dy;->h:[I

    .line 188
    invoke-virtual/range {v0 .. v6}, Lcom/anddoes/launcher/Launcher;->a(Lcom/anddoes/launcher/jo;JI[I[I)V

    .line 190
    return-void
.end method

.method public final registerDataSetObserver(Landroid/database/DataSetObserver;)V
    .registers 2
    .parameter

    .prologue
    .line 95
    return-void
.end method

.method public final unregisterDataSetObserver(Landroid/database/DataSetObserver;)V
    .registers 2
    .parameter

    .prologue
    .line 99
    return-void
.end method
