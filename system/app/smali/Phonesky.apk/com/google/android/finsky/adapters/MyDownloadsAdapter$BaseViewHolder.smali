.class Lcom/google/android/finsky/adapters/MyDownloadsAdapter$BaseViewHolder;
.super Ljava/lang/Object;
.source "MyDownloadsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/adapters/MyDownloadsAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BaseViewHolder"
.end annotation


# instance fields
.field public asset:Lcom/google/android/vending/model/Asset;

.field public final author:Landroid/widget/TextView;

.field public final thumbnail:Landroid/widget/ImageView;

.field public final title:Landroid/widget/TextView;

.field public final wifiBug:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .registers 3
    .parameter "convertView"

    .prologue
    .line 763
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 764
    const v0, 0x7f080017

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/finsky/adapters/MyDownloadsAdapter$BaseViewHolder;->title:Landroid/widget/TextView;

    .line 765
    const v0, 0x7f080013

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/google/android/finsky/adapters/MyDownloadsAdapter$BaseViewHolder;->thumbnail:Landroid/widget/ImageView;

    .line 766
    const v0, 0x7f080018

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/finsky/adapters/MyDownloadsAdapter$BaseViewHolder;->author:Landroid/widget/TextView;

    .line 767
    const v0, 0x7f080016

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/adapters/MyDownloadsAdapter$BaseViewHolder;->wifiBug:Landroid/view/View;

    .line 768
    return-void
.end method
