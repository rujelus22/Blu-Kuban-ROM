.class Lcom/sprint/w/installer/psi/PsiPackDetails$DividerItem;
.super Lcom/sprint/w/installer/psi/PsiPackDetails$ListItem;
.source "PsiPackDetails.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sprint/w/installer/psi/PsiPackDetails;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "DividerItem"
.end annotation


# instance fields
.field mTitle:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 3
    .parameter "title"

    .prologue
    .line 564
    invoke-direct {p0}, Lcom/sprint/w/installer/psi/PsiPackDetails$ListItem;-><init>()V

    .line 565
    iput-object p1, p0, Lcom/sprint/w/installer/psi/PsiPackDetails$DividerItem;->mTitle:Ljava/lang/String;

    .line 566
    const/4 v0, 0x0

    iput v0, p0, Lcom/sprint/w/installer/psi/PsiPackDetails$DividerItem;->mType:I

    .line 567
    return-void
.end method
