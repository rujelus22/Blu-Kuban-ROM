.class Lcom/sprint/w/installer/psi/PsiPackDetails$WebSiteItem;
.super Lcom/sprint/w/installer/psi/PsiPackDetails$ClickableTwoLiner;
.source "PsiPackDetails.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sprint/w/installer/psi/PsiPackDetails;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "WebSiteItem"
.end annotation


# instance fields
.field mContext:Landroid/content/Context;

.field mUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .parameter "context"
    .parameter "title"
    .parameter "secondaryTitle"
    .parameter "url"

    .prologue
    .line 600
    invoke-direct {p0, p2, p3}, Lcom/sprint/w/installer/psi/PsiPackDetails$ClickableTwoLiner;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 601
    iput-object p4, p0, Lcom/sprint/w/installer/psi/PsiPackDetails$WebSiteItem;->mUrl:Ljava/lang/String;

    .line 602
    iput-object p1, p0, Lcom/sprint/w/installer/psi/PsiPackDetails$WebSiteItem;->mContext:Landroid/content/Context;

    .line 603
    return-void
.end method


# virtual methods
.method public clicked()V
    .registers 3

    .prologue
    .line 606
    iget-object v1, p0, Lcom/sprint/w/installer/psi/PsiPackDetails$WebSiteItem;->mUrl:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_21

    .line 607
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 608
    .local v0, i:Landroid/content/Intent;
    iget-object v1, p0, Lcom/sprint/w/installer/psi/PsiPackDetails$WebSiteItem;->mUrl:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 609
    iget-object v1, p0, Lcom/sprint/w/installer/psi/PsiPackDetails$WebSiteItem;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 611
    .end local v0           #i:Landroid/content/Intent;
    :cond_21
    return-void
.end method
