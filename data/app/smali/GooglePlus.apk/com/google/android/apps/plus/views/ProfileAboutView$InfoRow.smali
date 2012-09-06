.class Lcom/google/android/apps/plus/views/ProfileAboutView$InfoRow;
.super Ljava/lang/Object;
.source "ProfileAboutView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/plus/views/ProfileAboutView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "InfoRow"
.end annotation


# instance fields
.field container:Landroid/view/View;

.field public icon:Landroid/widget/ImageView;

.field public text:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;I)V
    .registers 5
    .parameter "parent"
    .parameter "resourceId"

    .prologue
    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/plus/views/ProfileAboutView$InfoRow;->container:Landroid/view/View;

    .line 101
    iget-object v0, p0, Lcom/google/android/apps/plus/views/ProfileAboutView$InfoRow;->container:Landroid/view/View;

    const v1, 0x7f0900cb

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/google/android/apps/plus/views/ProfileAboutView$InfoRow;->icon:Landroid/widget/ImageView;

    .line 102
    iget-object v0, p0, Lcom/google/android/apps/plus/views/ProfileAboutView$InfoRow;->container:Landroid/view/View;

    const v1, 0x7f090072

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/apps/plus/views/ProfileAboutView$InfoRow;->text:Landroid/widget/TextView;

    .line 103
    return-void
.end method
