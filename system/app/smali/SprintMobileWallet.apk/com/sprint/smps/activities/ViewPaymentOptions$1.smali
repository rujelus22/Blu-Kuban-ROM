.class Lcom/sprint/smps/activities/ViewPaymentOptions$1;
.super Ljava/lang/Object;
.source "ViewPaymentOptions.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sprint/smps/activities/ViewPaymentOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sprint/smps/activities/ViewPaymentOptions;


# direct methods
.method constructor <init>(Lcom/sprint/smps/activities/ViewPaymentOptions;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/sprint/smps/activities/ViewPaymentOptions$1;->this$0:Lcom/sprint/smps/activities/ViewPaymentOptions;

    .line 137
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 12

    .prologue
    const v10, 0x7f080016

    const v9, 0x7f080015

    const v8, 0x7f08000f

    const/4 v7, 0x4

    const/4 v6, 0x0

    .line 141
    invoke-static {}, Lcom/sprint/smps/properties/Properties;->referenced()V

    .line 142
    invoke-static {}, Lcom/sprint/smps/activities/ViewPaymentOptions;->access$0()Lcom/sprint/smps/activities/ViewPaymentOptions;

    move-result-object v3

    const v4, 0x7f030013

    invoke-virtual {v3, v4}, Lcom/sprint/smps/activities/ViewPaymentOptions;->setContentView(I)V

    .line 144
    invoke-static {}, Lcom/sprint/smps/activities/ViewPaymentOptions;->access$0()Lcom/sprint/smps/activities/ViewPaymentOptions;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sprint/smps/activities/ViewPaymentOptions;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/4 v4, 0x7

    const v5, 0x7f03001f

    invoke-virtual {v3, v4, v5}, Landroid/view/Window;->setFeatureInt(II)V

    .line 145
    invoke-static {}, Lcom/sprint/smps/activities/ViewPaymentOptions;->access$0()Lcom/sprint/smps/activities/ViewPaymentOptions;

    move-result-object v3

    const v4, 0x7f08004a

    invoke-virtual {v3, v4}, Lcom/sprint/smps/activities/ViewPaymentOptions;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iget-object v4, p0, Lcom/sprint/smps/activities/ViewPaymentOptions$1;->this$0:Lcom/sprint/smps/activities/ViewPaymentOptions;

    const v5, 0x7f060029

    invoke-virtual {v4, v5}, Lcom/sprint/smps/activities/ViewPaymentOptions;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 146
    invoke-static {}, Lcom/sprint/smps/activities/ViewPaymentOptions;->access$0()Lcom/sprint/smps/activities/ViewPaymentOptions;

    move-result-object v3

    const v4, 0x7f08004b

    invoke-virtual {v3, v4}, Lcom/sprint/smps/activities/ViewPaymentOptions;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const-string v4, ""

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 147
    invoke-static {}, Lcom/sprint/smps/activities/ViewPaymentOptions;->access$0()Lcom/sprint/smps/activities/ViewPaymentOptions;

    move-result-object v3

    const v4, 0x7f080051

    invoke-virtual {v3, v4}, Lcom/sprint/smps/activities/ViewPaymentOptions;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ProgressBar;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 149
    invoke-static {}, Lcom/sprint/smps/activities/ViewPaymentOptions;->access$0()Lcom/sprint/smps/activities/ViewPaymentOptions;

    move-result-object v3

    const v4, 0x102000a

    invoke-virtual {v3, v4}, Lcom/sprint/smps/activities/ViewPaymentOptions;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    .line 150
    .local v1, lv:Landroid/widget/ListView;
    if-eqz v1, :cond_a8

    .line 152
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 154
    const/4 v2, 0x0

    .line 155
    .local v2, payments:Ljava/util/List;,"Ljava/util/List<Lcom/sprint/smps/pojo/PaymentAccount;>;"
    sget-object v3, Lcom/sprint/smps/activities/ViewPaymentOptions;->response:Lcom/sprint/smps/service/ClientResponse;

    if-eqz v3, :cond_82

    sget-object v3, Lcom/sprint/smps/activities/ViewPaymentOptions;->response:Lcom/sprint/smps/service/ClientResponse;

    invoke-virtual {v3}, Lcom/sprint/smps/service/ClientResponse;->getSortedUserPayments()Ljava/util/List;

    move-result-object v2

    .line 157
    :cond_82
    if-eqz v2, :cond_8a

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_f6

    .line 159
    :cond_8a
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 160
    invoke-static {}, Lcom/sprint/smps/activities/ViewPaymentOptions;->access$0()Lcom/sprint/smps/activities/ViewPaymentOptions;

    move-result-object v3

    invoke-virtual {v3, v9}, Lcom/sprint/smps/activities/ViewPaymentOptions;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 161
    invoke-static {}, Lcom/sprint/smps/activities/ViewPaymentOptions;->access$0()Lcom/sprint/smps/activities/ViewPaymentOptions;

    move-result-object v3

    invoke-virtual {v3, v10}, Lcom/sprint/smps/activities/ViewPaymentOptions;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 170
    .end local v2           #payments:Ljava/util/List;,"Ljava/util/List<Lcom/sprint/smps/pojo/PaymentAccount;>;"
    :cond_a8
    :goto_a8
    invoke-static {}, Lcom/sprint/smps/properties/Properties;->referenced()V

    .line 172
    invoke-static {}, Lcom/sprint/smps/activities/ViewPaymentOptions;->access$0()Lcom/sprint/smps/activities/ViewPaymentOptions;

    move-result-object v3

    invoke-virtual {v3, v8}, Lcom/sprint/smps/activities/ViewPaymentOptions;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 173
    .local v0, button:Landroid/widget/Button;
    invoke-static {}, Lcom/sprint/smps/activities/ViewPaymentOptions;->access$0()Lcom/sprint/smps/activities/ViewPaymentOptions;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 174
    iget-object v3, p0, Lcom/sprint/smps/activities/ViewPaymentOptions$1;->this$0:Lcom/sprint/smps/activities/ViewPaymentOptions;

    iget-object v3, v3, Lcom/sprint/smps/activities/ViewPaymentOptions;->buttons:Ljava/util/Hashtable;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-class v5, Lcom/sprint/smps/activities/AddPaymentOption;

    invoke-virtual {v3, v4, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    invoke-static {}, Lcom/sprint/smps/activities/ViewPaymentOptions;->access$0()Lcom/sprint/smps/activities/ViewPaymentOptions;

    move-result-object v3

    const v4, 0x7f080034

    invoke-virtual {v3, v4}, Lcom/sprint/smps/activities/ViewPaymentOptions;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0           #button:Landroid/widget/Button;
    check-cast v0, Landroid/widget/Button;

    .line 177
    .restart local v0       #button:Landroid/widget/Button;
    invoke-static {}, Lcom/sprint/smps/activities/ViewPaymentOptions;->access$0()Lcom/sprint/smps/activities/ViewPaymentOptions;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 178
    iget-object v3, p0, Lcom/sprint/smps/activities/ViewPaymentOptions$1;->this$0:Lcom/sprint/smps/activities/ViewPaymentOptions;

    iget-object v3, v3, Lcom/sprint/smps/activities/ViewPaymentOptions;->buttons:Ljava/util/Hashtable;

    const v4, 0x7f080034

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-class v5, Lcom/sprint/smps/activities/AmazonSignup;

    invoke-virtual {v3, v4, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    iget-object v3, p0, Lcom/sprint/smps/activities/ViewPaymentOptions$1;->this$0:Lcom/sprint/smps/activities/ViewPaymentOptions;

    invoke-virtual {v3, v6}, Lcom/sprint/smps/activities/ViewPaymentOptions;->deleteDialog(I)V

    .line 181
    invoke-static {v6}, Lcom/sprint/smps/activities/ViewPaymentOptions;->access$1(Z)V

    .line 182
    return-void

    .line 165
    .end local v0           #button:Landroid/widget/Button;
    .restart local v2       #payments:Ljava/util/List;,"Ljava/util/List<Lcom/sprint/smps/pojo/PaymentAccount;>;"
    :cond_f6
    new-instance v3, Lcom/sprint/smps/activities/ViewPaymentOptions$CardListAdapter;

    iget-object v4, p0, Lcom/sprint/smps/activities/ViewPaymentOptions$1;->this$0:Lcom/sprint/smps/activities/ViewPaymentOptions;

    invoke-static {}, Lcom/sprint/smps/activities/ViewPaymentOptions;->access$0()Lcom/sprint/smps/activities/ViewPaymentOptions;

    move-result-object v5

    invoke-direct {v3, v4, v5, v2}, Lcom/sprint/smps/activities/ViewPaymentOptions$CardListAdapter;-><init>(Lcom/sprint/smps/activities/ViewPaymentOptions;Landroid/app/Activity;Ljava/util/List;)V

    invoke-virtual {v1, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 166
    invoke-static {}, Lcom/sprint/smps/activities/ViewPaymentOptions;->access$0()Lcom/sprint/smps/activities/ViewPaymentOptions;

    move-result-object v3

    invoke-virtual {v3, v9}, Lcom/sprint/smps/activities/ViewPaymentOptions;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 167
    invoke-static {}, Lcom/sprint/smps/activities/ViewPaymentOptions;->access$0()Lcom/sprint/smps/activities/ViewPaymentOptions;

    move-result-object v3

    invoke-virtual {v3, v10}, Lcom/sprint/smps/activities/ViewPaymentOptions;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_a8
.end method
