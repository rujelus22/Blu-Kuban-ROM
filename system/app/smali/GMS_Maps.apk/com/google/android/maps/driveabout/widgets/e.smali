.class Lcom/google/android/maps/driveabout/widgets/e;
.super Landroid/widget/ArrayAdapter;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;[Lcom/google/android/maps/driveabout/app/N;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 167
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 168
    return-void
.end method


# virtual methods
.method public getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 190
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/maps/driveabout/widgets/e;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 8
    .parameter
    .parameter
    .parameter

    .prologue
    .line 173
    if-eqz p2, :cond_c

    .line 174
    invoke-virtual {p0, p1}, Lcom/google/android/maps/driveabout/widgets/e;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/app/N;

    invoke-static {v0, p2}, Lcom/google/android/maps/driveabout/widgets/TravelModeSelector;->a(Lcom/google/android/maps/driveabout/app/N;Landroid/view/View;)V

    .line 185
    :cond_b
    :goto_b
    return-object p2

    .line 177
    :cond_c
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/widgets/e;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0, p1}, Lcom/google/android/maps/driveabout/widgets/e;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/app/N;

    invoke-static {v1, v0}, Lcom/google/android/maps/driveabout/widgets/TravelModeSelector;->a(Landroid/content/Context;Lcom/google/android/maps/driveabout/app/N;)Landroid/view/View;

    move-result-object p2

    .line 178
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 179
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/widgets/e;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const v2, 0x101004d

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 181
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/widgets/e;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/TypedValue;->getDimension(Landroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p2, v0}, Landroid/view/View;->setMinimumHeight(I)V

    goto :goto_b
.end method
