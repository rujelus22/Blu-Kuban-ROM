.class Lcom/sprint/w/installer/psi/PsiPackDetails$WebViewItem;
.super Lcom/sprint/w/installer/psi/PsiPackDetails$ListItem;
.source "PsiPackDetails.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sprint/w/installer/psi/PsiPackDetails;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "WebViewItem"
.end annotation


# instance fields
.field mContent:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 3
    .parameter "content"

    .prologue
    .line 554
    invoke-direct {p0}, Lcom/sprint/w/installer/psi/PsiPackDetails$ListItem;-><init>()V

    .line 555
    const/4 v0, 0x1

    iput v0, p0, Lcom/sprint/w/installer/psi/PsiPackDetails$WebViewItem;->mType:I

    .line 556
    iput-object p1, p0, Lcom/sprint/w/installer/psi/PsiPackDetails$WebViewItem;->mContent:Ljava/lang/String;

    .line 557
    return-void
.end method
