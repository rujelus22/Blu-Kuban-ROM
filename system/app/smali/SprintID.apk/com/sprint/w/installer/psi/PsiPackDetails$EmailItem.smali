.class Lcom/sprint/w/installer/psi/PsiPackDetails$EmailItem;
.super Lcom/sprint/w/installer/psi/PsiPackDetails$ClickableTwoLiner;
.source "PsiPackDetails.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sprint/w/installer/psi/PsiPackDetails;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "EmailItem"
.end annotation


# instance fields
.field mContext:Landroid/content/Context;

.field mEmail:Ljava/lang/String;

.field mSubject:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .parameter "context"
    .parameter "title"
    .parameter "secondaryTitle"
    .parameter "email"
    .parameter "subjectLine"

    .prologue
    .line 621
    invoke-direct {p0, p2, p3}, Lcom/sprint/w/installer/psi/PsiPackDetails$ClickableTwoLiner;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 622
    iput-object p4, p0, Lcom/sprint/w/installer/psi/PsiPackDetails$EmailItem;->mEmail:Ljava/lang/String;

    .line 623
    iput-object p5, p0, Lcom/sprint/w/installer/psi/PsiPackDetails$EmailItem;->mSubject:Ljava/lang/String;

    .line 624
    iput-object p1, p0, Lcom/sprint/w/installer/psi/PsiPackDetails$EmailItem;->mContext:Landroid/content/Context;

    .line 625
    return-void
.end method


# virtual methods
.method public clicked()V
    .registers 5

    .prologue
    .line 628
    iget-object v1, p0, Lcom/sprint/w/installer/psi/PsiPackDetails$EmailItem;->mEmail:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_4c

    .line 629
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SENDTO"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mailto:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sprint/w/installer/psi/PsiPackDetails$EmailItem;->mEmail:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 630
    .local v0, i:Landroid/content/Intent;
    const-string v1, "android.intent.extra.EMAIL"

    iget-object v2, p0, Lcom/sprint/w/installer/psi/PsiPackDetails$EmailItem;->mEmail:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 631
    const-string v1, "android.intent.extra.SUBJECT"

    iget-object v2, p0, Lcom/sprint/w/installer/psi/PsiPackDetails$EmailItem;->mSubject:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 632
    iget-object v1, p0, Lcom/sprint/w/installer/psi/PsiPackDetails$EmailItem;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sprint/w/installer/psi/PsiPackDetails$EmailItem;->mContext:Landroid/content/Context;

    const v3, 0x7f060064

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 634
    .end local v0           #i:Landroid/content/Intent;
    :cond_4c
    return-void
.end method
