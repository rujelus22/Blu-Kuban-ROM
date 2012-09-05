.class public Lcom/vlingo/client/superdialer/items/SDItemContactView;
.super Landroid/widget/LinearLayout;
.source "SDItemContactView.java"


# static fields
.field public static final TYPE_ALTERNATE:I = 0x1

.field public static final TYPE_NORMAL:I = 0x0

.field public static final TYPE_WITH_NUMBER:I = 0x2


# instance fields
.field private checkBox:Landroid/widget/ImageView;

.field private contactBadgeImageView:Landroid/widget/ImageView;

.field private contactBadgeView:Landroid/widget/QuickContactBadge;

.field private contactNameView:Landroid/widget/TextView;

.field private info:Ljava/lang/Object;

.field private phoneNumberView:Landroid/widget/TextView;

.field private phoneTypeView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 73
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 74
    return-void
.end method

.method public static create(Landroid/content/Context;Lcom/vlingo/client/core/contacts/VlingoContact;I)Lcom/vlingo/client/superdialer/items/SDItemContactView;
    .registers 8
    .parameter "context"
    .parameter "contact"
    .parameter "type"

    .prologue
    .line 51
    invoke-virtual {p1}, Lcom/vlingo/client/core/contacts/VlingoContact;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1, p2}, Lcom/vlingo/client/superdialer/items/SDItemContactView;->create(Landroid/content/Context;Ljava/lang/String;I)Lcom/vlingo/client/superdialer/items/SDItemContactView;

    move-result-object v0

    .line 52
    .local v0, v:Lcom/vlingo/client/superdialer/items/SDItemContactView;
    invoke-virtual {v0}, Lcom/vlingo/client/superdialer/items/SDItemContactView;->getContactBadgeView()Landroid/widget/QuickContactBadge;

    move-result-object v1

    if-eqz v1, :cond_24

    .line 53
    invoke-virtual {p1}, Lcom/vlingo/client/core/contacts/VlingoContact;->getId()I

    move-result v1

    invoke-virtual {v0}, Lcom/vlingo/client/superdialer/items/SDItemContactView;->getContactBadgeView()Landroid/widget/QuickContactBadge;

    move-result-object v2

    const-string v3, "call"

    const/4 v4, 0x0

    invoke-virtual {p1, v4}, Lcom/vlingo/client/core/contacts/VlingoContact;->getDetail(I)Lcom/vlingo/client/core/contacts/ContactDetail;

    move-result-object v4

    invoke-virtual {v4}, Lcom/vlingo/client/core/contacts/ContactDetail;->getAddress()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v2, v3, v4, p0}, Lcom/vlingo/client/contacts/AndroidContactUtil;->applyContactImageToQuickContactBadge(ILandroid/widget/QuickContactBadge;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    .line 54
    :cond_24
    return-object v0
.end method

.method public static create(Landroid/content/Context;Ljava/lang/String;I)Lcom/vlingo/client/superdialer/items/SDItemContactView;
    .registers 6
    .parameter "context"
    .parameter "contactName"
    .parameter "type"

    .prologue
    .line 40
    const v0, 0x7f03005e

    .line 41
    .local v0, layoutId:I
    const/4 v2, 0x1

    if-ne p2, v2, :cond_14

    .line 42
    const v0, 0x7f03005f

    .line 45
    :cond_9
    :goto_9
    const/4 v2, 0x0

    invoke-static {p0, v0, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/vlingo/client/superdialer/items/SDItemContactView;

    .line 46
    .local v1, v:Lcom/vlingo/client/superdialer/items/SDItemContactView;
    invoke-virtual {v1, p1}, Lcom/vlingo/client/superdialer/items/SDItemContactView;->setContactName(Ljava/lang/String;)V

    .line 47
    return-object v1

    .line 43
    .end local v1           #v:Lcom/vlingo/client/superdialer/items/SDItemContactView;
    :cond_14
    const/4 v2, 0x2

    if-ne p2, v2, :cond_9

    .line 44
    const v0, 0x7f030060

    goto :goto_9
.end method

.method public static create(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/vlingo/client/superdialer/items/SDItemContactView;
    .registers 6
    .parameter "context"
    .parameter "contactName"
    .parameter "phoneType"
    .parameter "phoneNumber"

    .prologue
    .line 58
    const/4 v1, 0x2

    invoke-static {p0, p1, v1}, Lcom/vlingo/client/superdialer/items/SDItemContactView;->create(Landroid/content/Context;Ljava/lang/String;I)Lcom/vlingo/client/superdialer/items/SDItemContactView;

    move-result-object v0

    .line 59
    .local v0, v:Lcom/vlingo/client/superdialer/items/SDItemContactView;
    invoke-virtual {v0}, Lcom/vlingo/client/superdialer/items/SDItemContactView;->getPhoneTypeView()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 60
    invoke-virtual {v0}, Lcom/vlingo/client/superdialer/items/SDItemContactView;->getPhoneNumberView()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 61
    return-object v0
.end method

.method public static create(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/vlingo/client/superdialer/items/SDItemContactView;
    .registers 9
    .parameter "context"
    .parameter "contactName"
    .parameter "phoneType"
    .parameter "phoneNumber"
    .parameter "checked"

    .prologue
    const/16 v2, 0x8

    .line 65
    invoke-static {p0, p1, p2, p3}, Lcom/vlingo/client/superdialer/items/SDItemContactView;->create(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/vlingo/client/superdialer/items/SDItemContactView;

    move-result-object v0

    .line 66
    .local v0, v:Lcom/vlingo/client/superdialer/items/SDItemContactView;
    invoke-virtual {v0}, Lcom/vlingo/client/superdialer/items/SDItemContactView;->getCheckBox()Landroid/widget/ImageView;

    move-result-object v3

    if-eqz p4, :cond_20

    const/4 v1, 0x0

    :goto_d
    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 67
    if-eqz p2, :cond_18

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1f

    .line 68
    :cond_18
    invoke-virtual {v0}, Lcom/vlingo/client/superdialer/items/SDItemContactView;->getPhoneTypeView()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 69
    :cond_1f
    return-object v0

    :cond_20
    move v1, v2

    .line 66
    goto :goto_d
.end method


# virtual methods
.method public getCheckBox()Landroid/widget/ImageView;
    .registers 2

    .prologue
    .line 123
    iget-object v0, p0, Lcom/vlingo/client/superdialer/items/SDItemContactView;->checkBox:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getContactBadgeImageView()Landroid/widget/ImageView;
    .registers 2

    .prologue
    .line 107
    iget-object v0, p0, Lcom/vlingo/client/superdialer/items/SDItemContactView;->contactBadgeImageView:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getContactBadgeView()Landroid/widget/QuickContactBadge;
    .registers 2

    .prologue
    .line 103
    iget-object v0, p0, Lcom/vlingo/client/superdialer/items/SDItemContactView;->contactBadgeView:Landroid/widget/QuickContactBadge;

    return-object v0
.end method

.method public getContactName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 99
    invoke-virtual {p0}, Lcom/vlingo/client/superdialer/items/SDItemContactView;->getContactNameView()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getContactNameView()Landroid/widget/TextView;
    .registers 2

    .prologue
    .line 111
    iget-object v0, p0, Lcom/vlingo/client/superdialer/items/SDItemContactView;->contactNameView:Landroid/widget/TextView;

    return-object v0
.end method

.method public getInfo()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 81
    iget-object v0, p0, Lcom/vlingo/client/superdialer/items/SDItemContactView;->info:Ljava/lang/Object;

    return-object v0
.end method

.method public getPhoneNumberView()Landroid/widget/TextView;
    .registers 2

    .prologue
    .line 119
    iget-object v0, p0, Lcom/vlingo/client/superdialer/items/SDItemContactView;->phoneNumberView:Landroid/widget/TextView;

    return-object v0
.end method

.method public getPhoneTypeView()Landroid/widget/TextView;
    .registers 2

    .prologue
    .line 115
    iget-object v0, p0, Lcom/vlingo/client/superdialer/items/SDItemContactView;->phoneTypeView:Landroid/widget/TextView;

    return-object v0
.end method

.method protected onFinishInflate()V
    .registers 2

    .prologue
    .line 85
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 86
    const v0, 0x7f0f0162

    invoke-virtual {p0, v0}, Lcom/vlingo/client/superdialer/items/SDItemContactView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/vlingo/client/superdialer/items/SDItemContactView;->contactNameView:Landroid/widget/TextView;

    .line 87
    const v0, 0x7f0f0161

    invoke-virtual {p0, v0}, Lcom/vlingo/client/superdialer/items/SDItemContactView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/QuickContactBadge;

    iput-object v0, p0, Lcom/vlingo/client/superdialer/items/SDItemContactView;->contactBadgeView:Landroid/widget/QuickContactBadge;

    .line 88
    const v0, 0x7f0f0163

    invoke-virtual {p0, v0}, Lcom/vlingo/client/superdialer/items/SDItemContactView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/vlingo/client/superdialer/items/SDItemContactView;->contactBadgeImageView:Landroid/widget/ImageView;

    .line 89
    const v0, 0x7f0f0164

    invoke-virtual {p0, v0}, Lcom/vlingo/client/superdialer/items/SDItemContactView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/vlingo/client/superdialer/items/SDItemContactView;->phoneTypeView:Landroid/widget/TextView;

    .line 90
    const v0, 0x7f0f0165

    invoke-virtual {p0, v0}, Lcom/vlingo/client/superdialer/items/SDItemContactView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/vlingo/client/superdialer/items/SDItemContactView;->phoneNumberView:Landroid/widget/TextView;

    .line 91
    const v0, 0x7f0f0166

    invoke-virtual {p0, v0}, Lcom/vlingo/client/superdialer/items/SDItemContactView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/vlingo/client/superdialer/items/SDItemContactView;->checkBox:Landroid/widget/ImageView;

    .line 92
    return-void
.end method

.method public setContactName(Ljava/lang/String;)V
    .registers 3
    .parameter "name"

    .prologue
    .line 95
    invoke-virtual {p0}, Lcom/vlingo/client/superdialer/items/SDItemContactView;->getContactNameView()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 96
    return-void
.end method

.method public setInfo(Ljava/lang/Object;)V
    .registers 2
    .parameter "info"

    .prologue
    .line 77
    iput-object p1, p0, Lcom/vlingo/client/superdialer/items/SDItemContactView;->info:Ljava/lang/Object;

    .line 78
    return-void
.end method
