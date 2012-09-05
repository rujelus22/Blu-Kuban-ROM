.class Lcom/sprint/smps/activities/ViewMyTransactions$TransactionListAdapter;
.super Landroid/widget/BaseAdapter;
.source "ViewMyTransactions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sprint/smps/activities/ViewMyTransactions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TransactionListAdapter"
.end annotation


# instance fields
.field private context:Landroid/app/Activity;

.field private data:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sprint/smps/pojo/PaymentTransaction;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/sprint/smps/activities/ViewMyTransactions;


# direct methods
.method constructor <init>(Lcom/sprint/smps/activities/ViewMyTransactions;Landroid/app/Activity;Ljava/util/List;)V
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
            "Lcom/sprint/smps/pojo/PaymentTransaction;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 174
    .local p3, data:Ljava/util/List;,"Ljava/util/List<Lcom/sprint/smps/pojo/PaymentTransaction;>;"
    iput-object p1, p0, Lcom/sprint/smps/activities/ViewMyTransactions$TransactionListAdapter;->this$0:Lcom/sprint/smps/activities/ViewMyTransactions;

    .line 173
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 171
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sprint/smps/activities/ViewMyTransactions$TransactionListAdapter;->data:Ljava/util/List;

    .line 175
    iput-object p2, p0, Lcom/sprint/smps/activities/ViewMyTransactions$TransactionListAdapter;->context:Landroid/app/Activity;

    .line 176
    iput-object p3, p0, Lcom/sprint/smps/activities/ViewMyTransactions$TransactionListAdapter;->data:Ljava/util/List;

    .line 177
    return-void
.end method


# virtual methods
.method public getCount()I
    .registers 2

    .prologue
    .line 181
    iget-object v0, p0, Lcom/sprint/smps/activities/ViewMyTransactions$TransactionListAdapter;->data:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .registers 3
    .parameter "position"

    .prologue
    .line 233
    iget-object v0, p0, Lcom/sprint/smps/activities/ViewMyTransactions$TransactionListAdapter;->data:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .registers 5
    .parameter "position"

    .prologue
    .line 238
    add-int/lit8 v0, p1, 0x1

    .end local p1
    .local v0, position:I
    int-to-long v1, p1

    return-wide v1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 10
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 186
    invoke-virtual {p0, p1}, Lcom/sprint/smps/activities/ViewMyTransactions$TransactionListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sprint/smps/pojo/PaymentTransaction;

    .line 188
    .local v2, transaction:Lcom/sprint/smps/pojo/PaymentTransaction;
    iget-object v3, p0, Lcom/sprint/smps/activities/ViewMyTransactions$TransactionListAdapter;->context:Landroid/app/Activity;

    const v4, 0x7f03001e

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 190
    .local v0, row:Landroid/view/View;
    new-instance v3, Lcom/sprint/smps/activities/ViewMyTransactions$TransactionListAdapter$1;

    invoke-direct {v3, p0}, Lcom/sprint/smps/activities/ViewMyTransactions$TransactionListAdapter$1;-><init>(Lcom/sprint/smps/activities/ViewMyTransactions$TransactionListAdapter;)V

    .line 189
    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 198
    invoke-virtual {v2}, Lcom/sprint/smps/pojo/PaymentTransaction;->getMerchantFullName()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2e

    .line 200
    const v3, 0x7f08002f

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 201
    .local v1, textView:Landroid/widget/TextView;
    invoke-virtual {v2}, Lcom/sprint/smps/pojo/PaymentTransaction;->getMerchantFullName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 204
    .end local v1           #textView:Landroid/widget/TextView;
    :cond_2e
    invoke-virtual {v2}, Lcom/sprint/smps/pojo/PaymentTransaction;->getTxnAmount()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_44

    .line 206
    const v3, 0x7f08004d

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 207
    .restart local v1       #textView:Landroid/widget/TextView;
    invoke-virtual {v2}, Lcom/sprint/smps/pojo/PaymentTransaction;->getFormattedTxnAmount()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 210
    .end local v1           #textView:Landroid/widget/TextView;
    :cond_44
    invoke-virtual {v2}, Lcom/sprint/smps/pojo/PaymentTransaction;->getTxnDescription()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_5a

    .line 212
    const v3, 0x7f08004e

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 213
    .restart local v1       #textView:Landroid/widget/TextView;
    invoke-virtual {v2}, Lcom/sprint/smps/pojo/PaymentTransaction;->getTxnDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 216
    .end local v1           #textView:Landroid/widget/TextView;
    :cond_5a
    invoke-virtual {v2}, Lcom/sprint/smps/pojo/PaymentTransaction;->getTxnDate()Ljava/util/Date;

    move-result-object v3

    if-eqz v3, :cond_74

    .line 218
    const v3, 0x7f08004f

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 219
    .restart local v1       #textView:Landroid/widget/TextView;
    invoke-virtual {v2}, Lcom/sprint/smps/pojo/PaymentTransaction;->getTxnDate()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 222
    .end local v1           #textView:Landroid/widget/TextView;
    :cond_74
    invoke-virtual {v2}, Lcom/sprint/smps/pojo/PaymentTransaction;->getTxnStatus()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_8a

    .line 224
    const v3, 0x7f080050

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 225
    .restart local v1       #textView:Landroid/widget/TextView;
    invoke-virtual {v2}, Lcom/sprint/smps/pojo/PaymentTransaction;->getTxnStatus()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 228
    .end local v1           #textView:Landroid/widget/TextView;
    :cond_8a
    return-object v0
.end method
