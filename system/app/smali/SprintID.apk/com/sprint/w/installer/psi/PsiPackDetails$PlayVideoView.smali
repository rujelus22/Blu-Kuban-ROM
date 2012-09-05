.class Lcom/sprint/w/installer/psi/PsiPackDetails$PlayVideoView;
.super Landroid/widget/RelativeLayout;
.source "PsiPackDetails.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sprint/w/installer/psi/PsiPackDetails;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PlayVideoView"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sprint/w/installer/psi/PsiPackDetails;


# direct methods
.method public constructor <init>(Lcom/sprint/w/installer/psi/PsiPackDetails;Landroid/content/Context;)V
    .registers 5
    .parameter
    .parameter "context"

    .prologue
    .line 513
    iput-object p1, p0, Lcom/sprint/w/installer/psi/PsiPackDetails$PlayVideoView;->this$0:Lcom/sprint/w/installer/psi/PsiPackDetails;

    .line 514
    invoke-direct {p0, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 515
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f03001c

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 516
    return-void
.end method
