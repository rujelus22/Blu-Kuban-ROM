.class Lcom/sprint/w/installer/psi/PsiPackDetails$PlayVideoItem;
.super Lcom/sprint/w/installer/psi/PsiPackDetails$ListItem;
.source "PsiPackDetails.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sprint/w/installer/psi/PsiPackDetails;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "PlayVideoItem"
.end annotation


# instance fields
.field mContext:Landroid/content/Context;

.field mUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4
    .parameter "context"
    .parameter "url"

    .prologue
    .line 642
    invoke-direct {p0}, Lcom/sprint/w/installer/psi/PsiPackDetails$ListItem;-><init>()V

    .line 643
    iput-object p2, p0, Lcom/sprint/w/installer/psi/PsiPackDetails$PlayVideoItem;->mUrl:Ljava/lang/String;

    .line 644
    iput-object p1, p0, Lcom/sprint/w/installer/psi/PsiPackDetails$PlayVideoItem;->mContext:Landroid/content/Context;

    .line 645
    const/4 v0, 0x3

    iput v0, p0, Lcom/sprint/w/installer/psi/PsiPackDetails$PlayVideoItem;->mType:I

    .line 646
    return-void
.end method


# virtual methods
.method public play()V
    .registers 4

    .prologue
    .line 649
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 650
    .local v0, i:Landroid/content/Intent;
    iget-object v1, p0, Lcom/sprint/w/installer/psi/PsiPackDetails$PlayVideoItem;->mUrl:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "video/*"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 651
    iget-object v1, p0, Lcom/sprint/w/installer/psi/PsiPackDetails$PlayVideoItem;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 652
    return-void
.end method
