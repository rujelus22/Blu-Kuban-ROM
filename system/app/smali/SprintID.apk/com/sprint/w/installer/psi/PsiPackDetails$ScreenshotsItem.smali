.class Lcom/sprint/w/installer/psi/PsiPackDetails$ScreenshotsItem;
.super Lcom/sprint/w/installer/psi/PsiPackDetails$ListItem;
.source "PsiPackDetails.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sprint/w/installer/psi/PsiPackDetails;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ScreenshotsItem"
.end annotation


# instance fields
.field mContext:Landroid/content/Context;

.field public mShortcut1Clicked:Landroid/view/View$OnClickListener;

.field public mShortcut2Clicked:Landroid/view/View$OnClickListener;

.field mUrl1:Ljava/lang/String;

.field mUrl2:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .parameter "context"
    .parameter "url1"
    .parameter "url2"

    .prologue
    .line 661
    invoke-direct {p0}, Lcom/sprint/w/installer/psi/PsiPackDetails$ListItem;-><init>()V

    .line 668
    new-instance v0, Lcom/sprint/w/installer/psi/PsiPackDetails$ScreenshotsItem$1;

    invoke-direct {v0, p0}, Lcom/sprint/w/installer/psi/PsiPackDetails$ScreenshotsItem$1;-><init>(Lcom/sprint/w/installer/psi/PsiPackDetails$ScreenshotsItem;)V

    iput-object v0, p0, Lcom/sprint/w/installer/psi/PsiPackDetails$ScreenshotsItem;->mShortcut1Clicked:Landroid/view/View$OnClickListener;

    .line 675
    new-instance v0, Lcom/sprint/w/installer/psi/PsiPackDetails$ScreenshotsItem$2;

    invoke-direct {v0, p0}, Lcom/sprint/w/installer/psi/PsiPackDetails$ScreenshotsItem$2;-><init>(Lcom/sprint/w/installer/psi/PsiPackDetails$ScreenshotsItem;)V

    iput-object v0, p0, Lcom/sprint/w/installer/psi/PsiPackDetails$ScreenshotsItem;->mShortcut2Clicked:Landroid/view/View$OnClickListener;

    .line 662
    iput-object p1, p0, Lcom/sprint/w/installer/psi/PsiPackDetails$ScreenshotsItem;->mContext:Landroid/content/Context;

    .line 663
    iput-object p2, p0, Lcom/sprint/w/installer/psi/PsiPackDetails$ScreenshotsItem;->mUrl1:Ljava/lang/String;

    .line 664
    iput-object p3, p0, Lcom/sprint/w/installer/psi/PsiPackDetails$ScreenshotsItem;->mUrl2:Ljava/lang/String;

    .line 665
    const/4 v0, 0x4

    iput v0, p0, Lcom/sprint/w/installer/psi/PsiPackDetails$ScreenshotsItem;->mType:I

    .line 666
    return-void
.end method

.method static synthetic access$500(Lcom/sprint/w/installer/psi/PsiPackDetails$ScreenshotsItem;I)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 655
    invoke-direct {p0, p1}, Lcom/sprint/w/installer/psi/PsiPackDetails$ScreenshotsItem;->launch(I)V

    return-void
.end method

.method private launch(I)V
    .registers 6
    .parameter "indx"

    .prologue
    .line 683
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 684
    .local v1, urls:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v2, p0, Lcom/sprint/w/installer/psi/PsiPackDetails$ScreenshotsItem;->mUrl1:Ljava/lang/String;

    if-eqz v2, :cond_16

    iget-object v2, p0, Lcom/sprint/w/installer/psi/PsiPackDetails$ScreenshotsItem;->mUrl1:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_16

    .line 685
    iget-object v2, p0, Lcom/sprint/w/installer/psi/PsiPackDetails$ScreenshotsItem;->mUrl1:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 687
    :cond_16
    iget-object v2, p0, Lcom/sprint/w/installer/psi/PsiPackDetails$ScreenshotsItem;->mUrl2:Ljava/lang/String;

    if-eqz v2, :cond_27

    iget-object v2, p0, Lcom/sprint/w/installer/psi/PsiPackDetails$ScreenshotsItem;->mUrl2:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_27

    .line 688
    iget-object v2, p0, Lcom/sprint/w/installer/psi/PsiPackDetails$ScreenshotsItem;->mUrl2:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 691
    :cond_27
    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lcom/sprint/w/installer/psi/PsiPackDetails$ScreenshotsItem;->mContext:Landroid/content/Context;

    const-class v3, Lcom/sprint/w/installer/ScreenshotViewer;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 692
    .local v0, i:Landroid/content/Intent;
    const-string v2, "URLS"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 693
    const-string v2, "INDX"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 694
    iget-object v2, p0, Lcom/sprint/w/installer/psi/PsiPackDetails$ScreenshotsItem;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 695
    return-void
.end method
