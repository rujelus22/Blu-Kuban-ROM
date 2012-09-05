.class abstract Lcom/sprint/w/installer/psi/PsiPackDetails$ClickableTwoLiner;
.super Lcom/sprint/w/installer/psi/PsiPackDetails$ListItem;
.source "PsiPackDetails.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sprint/w/installer/psi/PsiPackDetails;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "ClickableTwoLiner"
.end annotation


# instance fields
.field mSecondaryTitle:Ljava/lang/String;

.field mTitle:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .parameter "title"
    .parameter "secondaryTitle"

    .prologue
    .line 585
    invoke-direct {p0}, Lcom/sprint/w/installer/psi/PsiPackDetails$ListItem;-><init>()V

    .line 586
    iput-object p1, p0, Lcom/sprint/w/installer/psi/PsiPackDetails$ClickableTwoLiner;->mTitle:Ljava/lang/String;

    .line 587
    iput-object p2, p0, Lcom/sprint/w/installer/psi/PsiPackDetails$ClickableTwoLiner;->mSecondaryTitle:Ljava/lang/String;

    .line 588
    const/4 v0, 0x2

    iput v0, p0, Lcom/sprint/w/installer/psi/PsiPackDetails$ClickableTwoLiner;->mType:I

    .line 589
    return-void
.end method


# virtual methods
.method abstract clicked()V
.end method
