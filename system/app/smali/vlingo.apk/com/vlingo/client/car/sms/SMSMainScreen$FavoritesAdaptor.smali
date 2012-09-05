.class Lcom/vlingo/client/car/sms/SMSMainScreen$FavoritesAdaptor;
.super Lcom/vlingo/client/car/util/VlingoContactAdapter;
.source "SMSMainScreen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vlingo/client/car/sms/SMSMainScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FavoritesAdaptor"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vlingo/client/car/sms/SMSMainScreen;


# direct methods
.method private constructor <init>(Lcom/vlingo/client/car/sms/SMSMainScreen;)V
    .registers 5
    .parameter

    .prologue
    .line 170
    iput-object p1, p0, Lcom/vlingo/client/car/sms/SMSMainScreen$FavoritesAdaptor;->this$0:Lcom/vlingo/client/car/sms/SMSMainScreen;

    .line 171
    invoke-virtual {p1}, Lcom/vlingo/client/car/sms/SMSMainScreen;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1}, Lcom/vlingo/client/car/sms/SMSMainScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090212

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/vlingo/client/car/util/VlingoContactAdapter;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 172
    return-void
.end method

.method synthetic constructor <init>(Lcom/vlingo/client/car/sms/SMSMainScreen;Lcom/vlingo/client/car/sms/SMSMainScreen$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 168
    invoke-direct {p0, p1}, Lcom/vlingo/client/car/sms/SMSMainScreen$FavoritesAdaptor;-><init>(Lcom/vlingo/client/car/sms/SMSMainScreen;)V

    return-void
.end method


# virtual methods
.method protected fetchContacts()Ljava/util/Vector;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Vector",
            "<",
            "Lcom/vlingo/client/core/contacts/VlingoContact;",
            ">;"
        }
    .end annotation

    .prologue
    .line 176
    iget-object v0, p0, Lcom/vlingo/client/car/sms/SMSMainScreen$FavoritesAdaptor;->this$0:Lcom/vlingo/client/car/sms/SMSMainScreen;

    invoke-virtual {v0}, Lcom/vlingo/client/car/sms/SMSMainScreen;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/vlingo/client/util/ContactUtil$SortType;->SORT_BY_NAME:Lcom/vlingo/client/util/ContactUtil$SortType;

    invoke-static {v0, v1}, Lcom/vlingo/client/util/ContactUtil;->getStarredContacts(Landroid/content/Context;Lcom/vlingo/client/util/ContactUtil$SortType;)Ljava/util/Vector;

    move-result-object v0

    return-object v0
.end method

.method public getRowView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 14
    .parameter "position"
    .parameter "v"
    .parameter "parent"

    .prologue
    const/16 v9, 0x8

    const/4 v8, 0x0

    .line 182
    iget-object v5, p0, Lcom/vlingo/client/car/sms/SMSMainScreen$FavoritesAdaptor;->this$0:Lcom/vlingo/client/car/sms/SMSMainScreen;

    invoke-virtual {v5}, Lcom/vlingo/client/car/sms/SMSMainScreen;->getContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f03000d

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 184
    iget-object v5, p0, Lcom/vlingo/client/car/sms/SMSMainScreen$FavoritesAdaptor;->contacts:Ljava/util/Vector;

    invoke-virtual {v5, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vlingo/client/core/contacts/VlingoContact;

    .line 185
    .local v0, contact:Lcom/vlingo/client/core/contacts/VlingoContact;
    const v5, 0x7f0f0037

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 186
    .local v1, name:Landroid/widget/TextView;
    const v5, 0x7f0f003d

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 187
    .local v2, number:Landroid/widget/TextView;
    const v5, 0x7f0f003c

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 188
    .local v4, type:Landroid/widget/TextView;
    invoke-virtual {v0}, Lcom/vlingo/client/core/contacts/VlingoContact;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 190
    invoke-virtual {v0}, Lcom/vlingo/client/core/contacts/VlingoContact;->getNumDetails()I

    move-result v5

    const/4 v6, 0x1

    if-le v5, v6, :cond_60

    .line 191
    invoke-virtual {v2, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 192
    invoke-virtual {v4, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 193
    iget-object v5, p0, Lcom/vlingo/client/car/sms/SMSMainScreen$FavoritesAdaptor;->this$0:Lcom/vlingo/client/car/sms/SMSMainScreen;

    invoke-virtual {v5}, Lcom/vlingo/client/car/sms/SMSMainScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const/16 v6, 0xa

    invoke-static {v5, v6}, Lcom/vlingo/client/ui/UIUtils;->convertDipsToPixels(Landroid/content/res/Resources;I)I

    move-result v3

    .line 194
    .local v3, padding:I
    invoke-virtual {v1, v8, v3, v8, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 201
    .end local v3           #padding:I
    :goto_57
    new-instance v5, Lcom/vlingo/client/car/sms/SMSMainScreen$FavoritesAdaptor$1;

    invoke-direct {v5, p0, v0}, Lcom/vlingo/client/car/sms/SMSMainScreen$FavoritesAdaptor$1;-><init>(Lcom/vlingo/client/car/sms/SMSMainScreen$FavoritesAdaptor;Lcom/vlingo/client/core/contacts/VlingoContact;)V

    invoke-virtual {p2, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 219
    return-object p2

    .line 197
    :cond_60
    invoke-virtual {v0, v8}, Lcom/vlingo/client/core/contacts/VlingoContact;->getDetail(I)Lcom/vlingo/client/core/contacts/ContactDetail;

    move-result-object v5

    invoke-virtual {v5}, Lcom/vlingo/client/core/contacts/ContactDetail;->getAddress()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 198
    iget-object v5, p0, Lcom/vlingo/client/car/sms/SMSMainScreen$FavoritesAdaptor;->this$0:Lcom/vlingo/client/car/sms/SMSMainScreen;

    invoke-virtual {v5}, Lcom/vlingo/client/car/sms/SMSMainScreen;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v0, v8}, Lcom/vlingo/client/core/contacts/VlingoContact;->getDetail(I)Lcom/vlingo/client/core/contacts/ContactDetail;

    move-result-object v6

    invoke-virtual {v6}, Lcom/vlingo/client/core/contacts/ContactDetail;->getType()I

    move-result v6

    invoke-static {v5, v6}, Lcom/vlingo/client/contacts/AndroidContactUtil;->getTypeString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_57
.end method
