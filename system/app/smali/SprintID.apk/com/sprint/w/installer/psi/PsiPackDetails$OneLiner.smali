.class Lcom/sprint/w/installer/psi/PsiPackDetails$OneLiner;
.super Lcom/sprint/w/installer/psi/PsiPackDetails$ListItem;
.source "PsiPackDetails.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sprint/w/installer/psi/PsiPackDetails;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "OneLiner"
.end annotation


# instance fields
.field mTitle:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 3
    .parameter "title"

    .prologue
    .line 574
    invoke-direct {p0}, Lcom/sprint/w/installer/psi/PsiPackDetails$ListItem;-><init>()V

    .line 575
    iput-object p1, p0, Lcom/sprint/w/installer/psi/PsiPackDetails$OneLiner;->mTitle:Ljava/lang/String;

    .line 576
    const/4 v0, 0x5

    iput v0, p0, Lcom/sprint/w/installer/psi/PsiPackDetails$OneLiner;->mType:I

    .line 577
    return-void
.end method
