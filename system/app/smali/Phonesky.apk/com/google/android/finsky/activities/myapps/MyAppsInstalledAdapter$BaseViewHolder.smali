.class Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$BaseViewHolder;
.super Ljava/lang/Object;
.source "MyAppsInstalledAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BaseViewHolder"
.end annotation


# instance fields
.field public final author:Landroid/widget/TextView;

.field public doc:Lcom/google/android/finsky/api/model/Document;

.field public final thumbnail:Lcom/google/android/finsky/layout/SmartThumbnailView;

.field public final title:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .registers 3
    .parameter "convertView"

    .prologue
    .line 602
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 603
    const v0, 0x7f08001e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$BaseViewHolder;->title:Landroid/widget/TextView;

    .line 604
    const v0, 0x7f08001b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/layout/SmartThumbnailView;

    iput-object v0, p0, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$BaseViewHolder;->thumbnail:Lcom/google/android/finsky/layout/SmartThumbnailView;

    .line 605
    const v0, 0x7f08001f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$BaseViewHolder;->author:Landroid/widget/TextView;

    .line 606
    return-void
.end method
