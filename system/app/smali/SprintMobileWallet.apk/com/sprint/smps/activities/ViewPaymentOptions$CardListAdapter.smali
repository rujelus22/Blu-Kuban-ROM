.class Lcom/sprint/smps/activities/ViewPaymentOptions$CardListAdapter;
.super Landroid/widget/BaseAdapter;
.source "ViewPaymentOptions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sprint/smps/activities/ViewPaymentOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CardListAdapter"
.end annotation


# instance fields
.field private context:Landroid/app/Activity;

.field private data:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sprint/smps/pojo/PaymentAccount;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/sprint/smps/activities/ViewPaymentOptions;


# direct methods
.method public constructor <init>(Lcom/sprint/smps/activities/ViewPaymentOptions;Landroid/app/Activity;Ljava/util/List;)V
    .registers 5
    .parameter
    .parameter "context"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/List",
            "<",
            "Lcom/sprint/smps/pojo/PaymentAccount;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 66
    .local p3, data:Ljava/util/List;,"Ljava/util/List<Lcom/sprint/smps/pojo/PaymentAccount;>;"
    iput-object p1, p0, Lcom/sprint/smps/activities/ViewPaymentOptions$CardListAdapter;->this$0:Lcom/sprint/smps/activities/ViewPaymentOptions;

    .line 65
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 63
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sprint/smps/activities/ViewPaymentOptions$CardListAdapter;->data:Ljava/util/List;

    .line 67
    iput-object p2, p0, Lcom/sprint/smps/activities/ViewPaymentOptions$CardListAdapter;->context:Landroid/app/Activity;

    .line 68
    iput-object p3, p0, Lcom/sprint/smps/activities/ViewPaymentOptions$CardListAdapter;->data:Ljava/util/List;

    .line 69
    return-void
.end method

.method static synthetic access$0(Lcom/sprint/smps/activities/ViewPaymentOptions$CardListAdapter;)Lcom/sprint/smps/activities/ViewPaymentOptions;
    .registers 2
    .parameter

    .prologue
    .line 60
    iget-object v0, p0, Lcom/sprint/smps/activities/ViewPaymentOptions$CardListAdapter;->this$0:Lcom/sprint/smps/activities/ViewPaymentOptions;

    return-object v0
.end method


# virtual methods
.method public getCount()I
    .registers 2

    .prologue
    .line 73
    iget-object v0, p0, Lcom/sprint/smps/activities/ViewPaymentOptions$CardListAdapter;->data:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .registers 3
    .parameter "position"

    .prologue
    .line 128
    iget-object v0, p0, Lcom/sprint/smps/activities/ViewPaymentOptions$CardListAdapter;->data:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .registers 5
    .parameter "position"

    .prologue
    .line 133
    add-int/lit8 v0, p1, 0x1

    .end local p1
    .local v0, position:I
    int-to-long v1, p1

    return-wide v1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 14
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 78
    invoke-virtual {p0, p1}, Lcom/sprint/smps/activities/ViewPaymentOptions$CardListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sprint/smps/pojo/PaymentAccount;

    .line 80
    .local v5, transaction:Lcom/sprint/smps/pojo/PaymentAccount;
    move v2, p1

    .line 81
    .local v2, item:I
    iget-object v7, p0, Lcom/sprint/smps/activities/ViewPaymentOptions$CardListAdapter;->context:Landroid/app/Activity;

    const v8, 0x7f030014

    const/4 v9, 0x0

    invoke-static {v7, v8, v9}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 83
    .local v4, row:Landroid/view/View;
    new-instance v7, Lcom/sprint/smps/activities/ViewPaymentOptions$CardListAdapter$1;

    invoke-direct {v7, p0, v4, v2}, Lcom/sprint/smps/activities/ViewPaymentOptions$CardListAdapter$1;-><init>(Lcom/sprint/smps/activities/ViewPaymentOptions$CardListAdapter;Landroid/view/View;I)V

    .line 82
    invoke-virtual {v4, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 109
    const/4 v0, 0x0

    .line 110
    .local v0, cardImage:I
    invoke-virtual {v5}, Lcom/sprint/smps/pojo/PaymentAccount;->getCardAssociation()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_6f

    invoke-static {}, Lcom/sprint/smps/activities/ViewPaymentOptions;->access$2()Ljava/util/Hashtable;

    move-result-object v7

    invoke-virtual {v5}, Lcom/sprint/smps/pojo/PaymentAccount;->getCardAssociation()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6f

    .line 111
    invoke-static {}, Lcom/sprint/smps/activities/ViewPaymentOptions;->access$2()Ljava/util/Hashtable;

    move-result-object v7

    invoke-virtual {v5}, Lcom/sprint/smps/pojo/PaymentAccount;->getCardAssociation()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 114
    :goto_40
    const v7, 0x7f080035

    invoke-virtual {v4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 115
    .local v3, iv:Landroid/widget/ImageView;
    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 117
    invoke-virtual {v5}, Lcom/sprint/smps/pojo/PaymentAccount;->getNickName()Ljava/lang/String;

    move-result-object v1

    .line 118
    .local v1, cardName:Ljava/lang/String;
    if-eqz v1, :cond_5e

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_62

    .line 119
    :cond_5e
    invoke-virtual {v5}, Lcom/sprint/smps/pojo/PaymentAccount;->getAccountNumber()Ljava/lang/String;

    move-result-object v1

    .line 120
    :cond_62
    const v7, 0x7f080036

    invoke-virtual {v4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 121
    .local v6, tv:Landroid/widget/TextView;
    invoke-virtual {v6, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 123
    return-object v4

    .line 113
    .end local v1           #cardName:Ljava/lang/String;
    .end local v3           #iv:Landroid/widget/ImageView;
    .end local v6           #tv:Landroid/widget/TextView;
    :cond_6f
    invoke-static {}, Lcom/sprint/smps/activities/ViewPaymentOptions;->access$2()Ljava/util/Hashtable;

    move-result-object v7

    const-string v8, "noCard"

    invoke-virtual {v7, v8}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_40
.end method
