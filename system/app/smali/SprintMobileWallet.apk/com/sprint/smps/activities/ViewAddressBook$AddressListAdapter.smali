.class Lcom/sprint/smps/activities/ViewAddressBook$AddressListAdapter;
.super Landroid/widget/BaseAdapter;
.source "ViewAddressBook.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sprint/smps/activities/ViewAddressBook;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AddressListAdapter"
.end annotation


# instance fields
.field private context:Landroid/app/Activity;

.field private data:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sprint/smps/pojo/Address;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/sprint/smps/activities/ViewAddressBook;


# direct methods
.method constructor <init>(Lcom/sprint/smps/activities/ViewAddressBook;Landroid/app/Activity;Ljava/util/List;)V
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
            "Lcom/sprint/smps/pojo/Address;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 182
    .local p3, data:Ljava/util/List;,"Ljava/util/List<Lcom/sprint/smps/pojo/Address;>;"
    iput-object p1, p0, Lcom/sprint/smps/activities/ViewAddressBook$AddressListAdapter;->this$0:Lcom/sprint/smps/activities/ViewAddressBook;

    .line 181
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 179
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sprint/smps/activities/ViewAddressBook$AddressListAdapter;->data:Ljava/util/List;

    .line 183
    iput-object p2, p0, Lcom/sprint/smps/activities/ViewAddressBook$AddressListAdapter;->context:Landroid/app/Activity;

    .line 184
    iput-object p3, p0, Lcom/sprint/smps/activities/ViewAddressBook$AddressListAdapter;->data:Ljava/util/List;

    .line 185
    return-void
.end method

.method static synthetic access$0(Lcom/sprint/smps/activities/ViewAddressBook$AddressListAdapter;)Lcom/sprint/smps/activities/ViewAddressBook;
    .registers 2
    .parameter

    .prologue
    .line 176
    iget-object v0, p0, Lcom/sprint/smps/activities/ViewAddressBook$AddressListAdapter;->this$0:Lcom/sprint/smps/activities/ViewAddressBook;

    return-object v0
.end method


# virtual methods
.method public getCount()I
    .registers 2

    .prologue
    .line 189
    iget-object v0, p0, Lcom/sprint/smps/activities/ViewAddressBook$AddressListAdapter;->data:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .registers 3
    .parameter "position"

    .prologue
    .line 244
    iget-object v0, p0, Lcom/sprint/smps/activities/ViewAddressBook$AddressListAdapter;->data:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .registers 5
    .parameter "position"

    .prologue
    .line 249
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
    .line 194
    invoke-virtual {p0, p1}, Lcom/sprint/smps/activities/ViewAddressBook$AddressListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sprint/smps/pojo/Address;

    .line 196
    .local v0, address:Lcom/sprint/smps/pojo/Address;
    iget-object v4, p0, Lcom/sprint/smps/activities/ViewAddressBook$AddressListAdapter;->context:Landroid/app/Activity;

    const v5, 0x7f030004

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 197
    .local v2, row:Landroid/view/View;
    move-object v1, v2

    .line 199
    .local v1, parentView:Landroid/view/View;
    new-instance v4, Lcom/sprint/smps/activities/ViewAddressBook$AddressListAdapter$1;

    invoke-direct {v4, p0, v1}, Lcom/sprint/smps/activities/ViewAddressBook$AddressListAdapter$1;-><init>(Lcom/sprint/smps/activities/ViewAddressBook$AddressListAdapter;Landroid/view/View;)V

    .line 198
    invoke-virtual {v2, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 227
    const v4, 0x7f080017

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 228
    .local v3, textView:Landroid/widget/TextView;
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 230
    const v4, 0x7f080010

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .end local v3           #textView:Landroid/widget/TextView;
    check-cast v3, Landroid/widget/TextView;

    .line 231
    .restart local v3       #textView:Landroid/widget/TextView;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/sprint/smps/pojo/Address;->getFirstName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/sprint/smps/pojo/Address;->getLastName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 233
    const v4, 0x7f080003

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .end local v3           #textView:Landroid/widget/TextView;
    check-cast v3, Landroid/widget/TextView;

    .line 234
    .restart local v3       #textView:Landroid/widget/TextView;
    invoke-virtual {v0}, Lcom/sprint/smps/pojo/Address;->getStreet()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 236
    const v4, 0x7f080012

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .end local v3           #textView:Landroid/widget/TextView;
    check-cast v3, Landroid/widget/TextView;

    .line 237
    .restart local v3       #textView:Landroid/widget/TextView;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/sprint/smps/pojo/Address;->getCity()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/sprint/smps/pojo/Address;->getState()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/sprint/smps/pojo/Address;->getZipcode()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 239
    return-object v2
.end method
