.class public Lcom/vlingo/client/superdialer/items/SDItemPhoneNumberView;
.super Landroid/widget/RelativeLayout;
.source "SDItemPhoneNumberView.java"


# instance fields
.field private accessory:Landroid/widget/ImageView;

.field private phoneNumber:Landroid/widget/TextView;

.field private phoneType:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 39
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 40
    return-void
.end method

.method public static create(Landroid/content/Context;Lcom/vlingo/client/core/contacts/ContactDetail;)Lcom/vlingo/client/superdialer/items/SDItemPhoneNumberView;
    .registers 7
    .parameter "context"
    .parameter "detail"

    .prologue
    .line 33
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {p1}, Lcom/vlingo/client/core/contacts/ContactDetail;->getType()I

    move-result v3

    const-string v4, ""

    invoke-static {v2, v3, v4}, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->getTypeLabel(Landroid/content/res/Resources;ILjava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 34
    .local v0, type:Ljava/lang/String;
    invoke-virtual {p1}, Lcom/vlingo/client/core/contacts/ContactDetail;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2, v0}, Lcom/vlingo/client/superdialer/items/SDItemPhoneNumberView;->create(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/vlingo/client/superdialer/items/SDItemPhoneNumberView;

    move-result-object v1

    .line 35
    .local v1, v:Lcom/vlingo/client/superdialer/items/SDItemPhoneNumberView;
    return-object v1
.end method

.method public static create(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/vlingo/client/superdialer/items/SDItemPhoneNumberView;
    .registers 6
    .parameter "context"
    .parameter "phoneType"
    .parameter "phoneNumber"

    .prologue
    .line 26
    const v1, 0x7f030063

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/vlingo/client/superdialer/items/SDItemPhoneNumberView;

    .line 27
    .local v0, v:Lcom/vlingo/client/superdialer/items/SDItemPhoneNumberView;
    invoke-virtual {v0, p2}, Lcom/vlingo/client/superdialer/items/SDItemPhoneNumberView;->setPhoneNumber(Ljava/lang/String;)V

    .line 28
    invoke-virtual {v0, p1}, Lcom/vlingo/client/superdialer/items/SDItemPhoneNumberView;->setPhoneType(Ljava/lang/String;)V

    .line 29
    return-object v0
.end method


# virtual methods
.method public getAccessory()Landroid/widget/ImageView;
    .registers 2

    .prologue
    .line 74
    iget-object v0, p0, Lcom/vlingo/client/superdialer/items/SDItemPhoneNumberView;->accessory:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getPhoneNumber()Ljava/lang/String;
    .registers 2

    .prologue
    .line 62
    invoke-virtual {p0}, Lcom/vlingo/client/superdialer/items/SDItemPhoneNumberView;->getPhoneNumberView()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPhoneNumberView()Landroid/widget/TextView;
    .registers 2

    .prologue
    .line 70
    iget-object v0, p0, Lcom/vlingo/client/superdialer/items/SDItemPhoneNumberView;->phoneNumber:Landroid/widget/TextView;

    return-object v0
.end method

.method public getPhoneType()Ljava/lang/String;
    .registers 2

    .prologue
    .line 54
    invoke-virtual {p0}, Lcom/vlingo/client/superdialer/items/SDItemPhoneNumberView;->getPhoneTypeView()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPhoneTypeView()Landroid/widget/TextView;
    .registers 2

    .prologue
    .line 66
    iget-object v0, p0, Lcom/vlingo/client/superdialer/items/SDItemPhoneNumberView;->phoneType:Landroid/widget/TextView;

    return-object v0
.end method

.method protected onFinishInflate()V
    .registers 2

    .prologue
    .line 43
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 44
    const v0, 0x7f0f00d8

    invoke-virtual {p0, v0}, Lcom/vlingo/client/superdialer/items/SDItemPhoneNumberView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/vlingo/client/superdialer/items/SDItemPhoneNumberView;->phoneNumber:Landroid/widget/TextView;

    .line 45
    const v0, 0x7f0f00db

    invoke-virtual {p0, v0}, Lcom/vlingo/client/superdialer/items/SDItemPhoneNumberView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/vlingo/client/superdialer/items/SDItemPhoneNumberView;->phoneType:Landroid/widget/TextView;

    .line 46
    const v0, 0x7f0f00d9

    invoke-virtual {p0, v0}, Lcom/vlingo/client/superdialer/items/SDItemPhoneNumberView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/vlingo/client/superdialer/items/SDItemPhoneNumberView;->accessory:Landroid/widget/ImageView;

    .line 47
    return-void
.end method

.method public setPhoneNumber(Ljava/lang/String;)V
    .registers 3
    .parameter "type"

    .prologue
    .line 58
    invoke-virtual {p0}, Lcom/vlingo/client/superdialer/items/SDItemPhoneNumberView;->getPhoneNumberView()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 59
    return-void
.end method

.method public setPhoneType(Ljava/lang/String;)V
    .registers 3
    .parameter "type"

    .prologue
    .line 50
    invoke-virtual {p0}, Lcom/vlingo/client/superdialer/items/SDItemPhoneNumberView;->getPhoneTypeView()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 51
    return-void
.end method
