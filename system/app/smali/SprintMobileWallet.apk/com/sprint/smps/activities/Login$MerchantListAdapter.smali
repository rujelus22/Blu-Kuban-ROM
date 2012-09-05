.class Lcom/sprint/smps/activities/Login$MerchantListAdapter;
.super Landroid/widget/BaseAdapter;
.source "Login.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sprint/smps/activities/Login;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MerchantListAdapter"
.end annotation


# instance fields
.field private context:Landroid/app/Activity;

.field private data:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sprint/smps/pojo/Merchant;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/sprint/smps/activities/Login;


# direct methods
.method constructor <init>(Lcom/sprint/smps/activities/Login;Landroid/app/Activity;Ljava/util/List;)V
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
            "Lcom/sprint/smps/pojo/Merchant;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 54
    .local p3, data:Ljava/util/List;,"Ljava/util/List<Lcom/sprint/smps/pojo/Merchant;>;"
    iput-object p1, p0, Lcom/sprint/smps/activities/Login$MerchantListAdapter;->this$0:Lcom/sprint/smps/activities/Login;

    .line 53
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 51
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sprint/smps/activities/Login$MerchantListAdapter;->data:Ljava/util/List;

    .line 55
    iput-object p2, p0, Lcom/sprint/smps/activities/Login$MerchantListAdapter;->context:Landroid/app/Activity;

    .line 56
    iput-object p3, p0, Lcom/sprint/smps/activities/Login$MerchantListAdapter;->data:Ljava/util/List;

    .line 57
    return-void
.end method

.method static synthetic access$0(Lcom/sprint/smps/activities/Login$MerchantListAdapter;)Lcom/sprint/smps/activities/Login;
    .registers 2
    .parameter

    .prologue
    .line 48
    iget-object v0, p0, Lcom/sprint/smps/activities/Login$MerchantListAdapter;->this$0:Lcom/sprint/smps/activities/Login;

    return-object v0
.end method


# virtual methods
.method public getCount()I
    .registers 2

    .prologue
    .line 61
    iget-object v0, p0, Lcom/sprint/smps/activities/Login$MerchantListAdapter;->data:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .registers 3
    .parameter "position"

    .prologue
    .line 121
    iget-object v0, p0, Lcom/sprint/smps/activities/Login$MerchantListAdapter;->data:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .registers 5
    .parameter "position"

    .prologue
    .line 126
    add-int/lit8 v0, p1, 0x1

    .end local p1
    .local v0, position:I
    int-to-long v1, p1

    return-wide v1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 11
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 66
    invoke-virtual {p0, p1}, Lcom/sprint/smps/activities/Login$MerchantListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sprint/smps/pojo/Merchant;

    .line 68
    .local v3, transaction:Lcom/sprint/smps/pojo/Merchant;
    iget-object v4, p0, Lcom/sprint/smps/activities/Login$MerchantListAdapter;->context:Landroid/app/Activity;

    const v5, 0x7f030011

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 69
    .local v1, row:Landroid/view/View;
    move-object v0, v1

    .line 71
    .local v0, parentView:Landroid/view/View;
    new-instance v4, Lcom/sprint/smps/activities/Login$MerchantListAdapter$1;

    invoke-direct {v4, p0, v0, v3}, Lcom/sprint/smps/activities/Login$MerchantListAdapter$1;-><init>(Lcom/sprint/smps/activities/Login$MerchantListAdapter;Landroid/view/View;Lcom/sprint/smps/pojo/Merchant;)V

    .line 70
    invoke-virtual {v1, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 110
    invoke-virtual {v3}, Lcom/sprint/smps/pojo/Merchant;->getMerchantName()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_2f

    .line 112
    const v4, 0x7f08002f

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 113
    .local v2, textView:Landroid/widget/TextView;
    invoke-virtual {v3}, Lcom/sprint/smps/pojo/Merchant;->getMerchantName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 116
    .end local v2           #textView:Landroid/widget/TextView;
    :cond_2f
    return-object v1
.end method
