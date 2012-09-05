.class Lcom/vlingo/client/tos/TermsOfServiceView;
.super Landroid/widget/LinearLayout;
.source "TermsOfServiceView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vlingo/client/tos/TermsOfServiceView$Text;
    }
.end annotation


# instance fields
.field m_tosLink:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/vlingo/client/tos/TermsOfServiceView$Text;)V
    .registers 5
    .parameter "context"
    .parameter "text"

    .prologue
    .line 27
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 28
    invoke-virtual {p0}, Lcom/vlingo/client/tos/TermsOfServiceView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f030068

    invoke-static {v0, v1, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 29
    invoke-direct {p0, p2}, Lcom/vlingo/client/tos/TermsOfServiceView;->init(Lcom/vlingo/client/tos/TermsOfServiceView$Text;)V

    .line 30
    return-void
.end method

.method private init(Lcom/vlingo/client/tos/TermsOfServiceView$Text;)V
    .registers 5
    .parameter "text"

    .prologue
    .line 39
    sget-object v1, Lcom/vlingo/client/tos/TermsOfServiceView$Text;->TextSamsung:Lcom/vlingo/client/tos/TermsOfServiceView$Text;

    if-ne p1, v1, :cond_42

    const v0, 0x7f090428

    .line 40
    .local v0, resID:I
    :goto_7
    const v1, 0x7f0f0171

    invoke-virtual {p0, v1}, Lcom/vlingo/client/tos/TermsOfServiceView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/vlingo/client/tos/TermsOfServiceView;->m_tosLink:Landroid/widget/TextView;

    .line 41
    iget-object v1, p0, Lcom/vlingo/client/tos/TermsOfServiceView;->m_tosLink:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/vlingo/client/tos/TermsOfServiceView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 42
    iget-object v1, p0, Lcom/vlingo/client/tos/TermsOfServiceView;->m_tosLink:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 43
    iget-object v1, p0, Lcom/vlingo/client/tos/TermsOfServiceView;->m_tosLink:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 44
    iget-object v1, p0, Lcom/vlingo/client/tos/TermsOfServiceView;->m_tosLink:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/vlingo/client/tos/TermsOfServiceView;->m_tosLink:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 45
    return-void

    .line 39
    .end local v0           #resID:I
    :cond_42
    const v0, 0x7f090427

    goto :goto_7
.end method
