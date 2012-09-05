.class Lcom/sprint/w/installer/psi/PsiPackDetails$ScreenshotsView;
.super Landroid/widget/RelativeLayout;
.source "PsiPackDetails.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sprint/w/installer/psi/PsiPackDetails;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ScreenshotsView"
.end annotation


# instance fields
.field mImage1:Landroid/widget/ImageView;

.field mImage2:Landroid/widget/ImageView;

.field final synthetic this$0:Lcom/sprint/w/installer/psi/PsiPackDetails;


# direct methods
.method public constructor <init>(Lcom/sprint/w/installer/psi/PsiPackDetails;Landroid/content/Context;)V
    .registers 5
    .parameter
    .parameter "context"

    .prologue
    .line 524
    iput-object p1, p0, Lcom/sprint/w/installer/psi/PsiPackDetails$ScreenshotsView;->this$0:Lcom/sprint/w/installer/psi/PsiPackDetails;

    .line 525
    invoke-direct {p0, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 526
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f03001b

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 527
    const v0, 0x7f0c0046

    invoke-virtual {p0, v0}, Lcom/sprint/w/installer/psi/PsiPackDetails$ScreenshotsView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sprint/w/installer/psi/PsiPackDetails$ScreenshotsView;->mImage1:Landroid/widget/ImageView;

    .line 528
    const v0, 0x7f0c0047

    invoke-virtual {p0, v0}, Lcom/sprint/w/installer/psi/PsiPackDetails$ScreenshotsView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sprint/w/installer/psi/PsiPackDetails$ScreenshotsView;->mImage2:Landroid/widget/ImageView;

    .line 529
    return-void
.end method
