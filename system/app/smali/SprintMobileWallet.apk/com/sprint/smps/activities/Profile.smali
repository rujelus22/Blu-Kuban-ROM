.class public Lcom/sprint/smps/activities/Profile;
.super Lcom/sprint/smps/activities/ActivityHelper;
.source "Profile.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/sprint/smps/TimeoutListener;


# static fields
.field private static final TAG:Ljava/lang/String; = null

.field public static final name:Ljava/lang/String; = "Profile"

.field private static parentActivity:Lcom/sprint/smps/activities/Profile;


# instance fields
.field private defaultAddressPos:I

.field private defaultPaymentPos:I

.field private successful:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 35
    const-class v0, Lcom/sprint/smps/activities/Profile;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sprint/smps/activities/Profile;->TAG:Ljava/lang/String;

    .line 37
    const/4 v0, 0x0

    sput-object v0, Lcom/sprint/smps/activities/Profile;->parentActivity:Lcom/sprint/smps/activities/Profile;

    .line 32
    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 42
    invoke-direct {p0}, Lcom/sprint/smps/activities/ActivityHelper;-><init>()V

    .line 38
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sprint/smps/activities/Profile;->successful:Z

    .line 39
    iput v1, p0, Lcom/sprint/smps/activities/Profile;->defaultPaymentPos:I

    .line 40
    iput v1, p0, Lcom/sprint/smps/activities/Profile;->defaultAddressPos:I

    .line 44
    sput-object p0, Lcom/sprint/smps/activities/Profile;->parentActivity:Lcom/sprint/smps/activities/Profile;

    .line 45
    const-string v0, "Profile"

    invoke-static {p0, v0}, Lcom/sprint/smps/activities/ActivityHelper;->addActivity(Landroid/app/Activity;Ljava/lang/String;)V

    .line 46
    return-void
.end method

.method static synthetic access$0(Lcom/sprint/smps/activities/Profile;Ljava/lang/String;)Lcom/sprint/smps/pojo/PaymentAccount;
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 285
    invoke-direct {p0, p1}, Lcom/sprint/smps/activities/Profile;->getPaymentKey(Ljava/lang/String;)Lcom/sprint/smps/pojo/PaymentAccount;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1(Lcom/sprint/smps/activities/Profile;Ljava/lang/String;)Lcom/sprint/smps/pojo/Address;
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 302
    invoke-direct {p0, p1}, Lcom/sprint/smps/activities/Profile;->getAddressKey(Ljava/lang/String;)Lcom/sprint/smps/pojo/Address;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2(Lcom/sprint/smps/activities/Profile;Z)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 38
    iput-boolean p1, p0, Lcom/sprint/smps/activities/Profile;->successful:Z

    return-void
.end method

.method static synthetic access$3()Lcom/sprint/smps/activities/Profile;
    .registers 1

    .prologue
    .line 37
    sget-object v0, Lcom/sprint/smps/activities/Profile;->parentActivity:Lcom/sprint/smps/activities/Profile;

    return-object v0
.end method

.method static synthetic access$4(Lcom/sprint/smps/activities/Profile;Lcom/sprint/smps/pojo/PaymentAccount;)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 261
    invoke-direct {p0, p1}, Lcom/sprint/smps/activities/Profile;->setDefaultPayment(Lcom/sprint/smps/pojo/PaymentAccount;)V

    return-void
.end method

.method static synthetic access$5(Lcom/sprint/smps/activities/Profile;Lcom/sprint/smps/pojo/Address;)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 273
    invoke-direct {p0, p1}, Lcom/sprint/smps/activities/Profile;->setDefaultAddress(Lcom/sprint/smps/pojo/Address;)V

    return-void
.end method

.method static synthetic access$6(Lcom/sprint/smps/activities/Profile;)Z
    .registers 2
    .parameter

    .prologue
    .line 38
    iget-boolean v0, p0, Lcom/sprint/smps/activities/Profile;->successful:Z

    return v0
.end method

.method static synthetic access$7(Lcom/sprint/smps/activities/Profile;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Landroid/widget/TextView;)V
    .registers 5
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 348
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sprint/smps/activities/Profile;->showAlert(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Landroid/widget/TextView;)V

    return-void
.end method

.method private getAddressKey(Ljava/lang/String;)Lcom/sprint/smps/pojo/Address;
    .registers 6
    .parameter "street"

    .prologue
    .line 304
    const/4 v1, 0x0

    .line 305
    .local v1, addressKey:Lcom/sprint/smps/pojo/Address;
    sget-object v3, Lcom/sprint/smps/properties/Properties;->user:Lcom/sprint/smps/service/ClientResponse;

    invoke-virtual {v3}, Lcom/sprint/smps/service/ClientResponse;->getLstAddress()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 306
    .local v2, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/sprint/smps/pojo/Address;>;"
    :cond_b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_12

    .line 316
    :goto_11
    return-object v1

    .line 308
    :cond_12
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sprint/smps/pojo/Address;

    .line 309
    .local v0, addr:Lcom/sprint/smps/pojo/Address;
    invoke-virtual {v0}, Lcom/sprint/smps/pojo/Address;->getStreet()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 311
    move-object v1, v0

    .line 312
    goto :goto_11
.end method

.method private getPaymentKey(Ljava/lang/String;)Lcom/sprint/smps/pojo/PaymentAccount;
    .registers 6
    .parameter "cardNickName"

    .prologue
    .line 287
    const/4 v2, 0x0

    .line 288
    .local v2, paymentKey:Lcom/sprint/smps/pojo/PaymentAccount;
    sget-object v3, Lcom/sprint/smps/properties/Properties;->user:Lcom/sprint/smps/service/ClientResponse;

    invoke-virtual {v3}, Lcom/sprint/smps/service/ClientResponse;->getSortedUserPayments()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 289
    .local v0, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/sprint/smps/pojo/PaymentAccount;>;"
    :cond_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_12

    .line 299
    :goto_11
    return-object v2

    .line 291
    :cond_12
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sprint/smps/pojo/PaymentAccount;

    .line 292
    .local v1, pa:Lcom/sprint/smps/pojo/PaymentAccount;
    invoke-virtual {v1}, Lcom/sprint/smps/pojo/PaymentAccount;->getNickName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 294
    move-object v2, v1

    .line 295
    goto :goto_11
.end method

.method private saveProfile()V
    .registers 3

    .prologue
    .line 205
    new-instance v0, Lcom/sprint/smps/activities/Profile$2;

    invoke-direct {v0, p0}, Lcom/sprint/smps/activities/Profile$2;-><init>(Lcom/sprint/smps/activities/Profile;)V

    .line 258
    .local v0, runnable:Ljava/lang/Runnable;
    new-instance v1, Ljava/lang/Thread;

    invoke-direct {v1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 259
    return-void
.end method

.method private setDefaultAddress(Lcom/sprint/smps/pojo/Address;)V
    .registers 6
    .parameter "defaultAddress"

    .prologue
    .line 275
    sget-object v2, Lcom/sprint/smps/properties/Properties;->user:Lcom/sprint/smps/service/ClientResponse;

    invoke-virtual {v2}, Lcom/sprint/smps/service/ClientResponse;->getLstAddress()Ljava/util/List;

    move-result-object v0

    .line 276
    .local v0, addressList:Ljava/util/List;,"Ljava/util/List<Lcom/sprint/smps/pojo/Address;>;"
    const/4 v1, 0x0

    .local v1, i:I
    :goto_7
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lt v1, v2, :cond_e

    .line 283
    return-void

    .line 278
    :cond_e
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, p1, :cond_21

    .line 279
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sprint/smps/pojo/Address;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/sprint/smps/pojo/Address;->isDefault(Z)V

    .line 276
    :goto_1e
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 281
    :cond_21
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sprint/smps/pojo/Address;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/sprint/smps/pojo/Address;->isDefault(Z)V

    goto :goto_1e
.end method

.method private setDefaultPayment(Lcom/sprint/smps/pojo/PaymentAccount;)V
    .registers 6
    .parameter "defaultCard"

    .prologue
    .line 263
    sget-object v2, Lcom/sprint/smps/properties/Properties;->user:Lcom/sprint/smps/service/ClientResponse;

    invoke-virtual {v2}, Lcom/sprint/smps/service/ClientResponse;->getSortedUserPayments()Ljava/util/List;

    move-result-object v1

    .line 264
    .local v1, paymentList:Ljava/util/List;,"Ljava/util/List<Lcom/sprint/smps/pojo/PaymentAccount;>;"
    const/4 v0, 0x0

    .local v0, i:I
    :goto_7
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lt v0, v2, :cond_e

    .line 271
    return-void

    .line 266
    :cond_e
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, p1, :cond_21

    .line 267
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sprint/smps/pojo/PaymentAccount;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/sprint/smps/pojo/PaymentAccount;->isDefaultPayment(Z)V

    .line 264
    :goto_1e
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 269
    :cond_21
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sprint/smps/pojo/PaymentAccount;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/sprint/smps/pojo/PaymentAccount;->isDefaultPayment(Z)V

    goto :goto_1e
.end method

.method private showAlert(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Landroid/widget/TextView;)V
    .registers 8
    .parameter "title"
    .parameter "msg"
    .parameter "context"
    .parameter "view"

    .prologue
    .line 350
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 352
    const-string v1, "Profile"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 353
    invoke-virtual {v0, p2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 354
    const-string v1, "OK"

    new-instance v2, Lcom/sprint/smps/activities/Profile$4;

    invoke-direct {v2, p0}, Lcom/sprint/smps/activities/Profile$4;-><init>(Lcom/sprint/smps/activities/Profile;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 360
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 361
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 362
    return-void
.end method

.method private validateData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 6
    .parameter "firstName"
    .parameter "lastName"
    .parameter "email"

    .prologue
    const/4 v0, 0x0

    const v1, 0x7f080037

    .line 180
    iput-object v0, p0, Lcom/sprint/smps/activities/Profile;->errorMessage:Ljava/lang/String;

    .line 181
    iput-object v0, p0, Lcom/sprint/smps/activities/Profile;->viewToHaveFocus:Landroid/view/View;

    .line 183
    if-eqz p1, :cond_10

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_25

    .line 184
    :cond_10
    const-string v0, "First name must be entered."

    iput-object v0, p0, Lcom/sprint/smps/activities/Profile;->errorMessage:Ljava/lang/String;

    .line 185
    const v0, 0x7f080001

    invoke-virtual {p0, v0}, Lcom/sprint/smps/activities/Profile;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sprint/smps/activities/Profile;->viewToHaveFocus:Landroid/view/View;

    .line 200
    :cond_1f
    :goto_1f
    iget-object v0, p0, Lcom/sprint/smps/activities/Profile;->errorMessage:Ljava/lang/String;

    if-nez v0, :cond_65

    const/4 v0, 0x1

    :goto_24
    return v0

    .line 187
    :cond_25
    if-eqz p2, :cond_2d

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_3d

    .line 188
    :cond_2d
    const-string v0, "Last name must be entered."

    iput-object v0, p0, Lcom/sprint/smps/activities/Profile;->errorMessage:Ljava/lang/String;

    .line 189
    const v0, 0x7f080002

    invoke-virtual {p0, v0}, Lcom/sprint/smps/activities/Profile;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sprint/smps/activities/Profile;->viewToHaveFocus:Landroid/view/View;

    goto :goto_1f

    .line 191
    :cond_3d
    if-eqz p3, :cond_45

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_52

    .line 192
    :cond_45
    const-string v0, "Email must be entered."

    iput-object v0, p0, Lcom/sprint/smps/activities/Profile;->errorMessage:Ljava/lang/String;

    .line 193
    invoke-virtual {p0, v1}, Lcom/sprint/smps/activities/Profile;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sprint/smps/activities/Profile;->viewToHaveFocus:Landroid/view/View;

    goto :goto_1f

    .line 195
    :cond_52
    invoke-virtual {p0, p3}, Lcom/sprint/smps/activities/Profile;->isValidEmailAddress(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1f

    .line 196
    const-string v0, "Email must be valid."

    iput-object v0, p0, Lcom/sprint/smps/activities/Profile;->errorMessage:Ljava/lang/String;

    .line 197
    invoke-virtual {p0, v1}, Lcom/sprint/smps/activities/Profile;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sprint/smps/activities/Profile;->viewToHaveFocus:Landroid/view/View;

    goto :goto_1f

    .line 200
    :cond_65
    const/4 v0, 0x0

    goto :goto_24
.end method


# virtual methods
.method public buildAddressList(Ljava/util/List;)[Ljava/lang/String;
    .registers 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/sprint/smps/pojo/Address;",
            ">;)[",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 119
    .local p1, addressList:Ljava/util/List;,"Ljava/util/List<Lcom/sprint/smps/pojo/Address;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    new-array v1, v2, [Ljava/lang/String;

    .line 120
    .local v1, list:[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_7
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-lt v0, v2, :cond_e

    .line 127
    return-object v1

    .line 122
    :cond_e
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sprint/smps/pojo/Address;

    invoke-virtual {v2}, Lcom/sprint/smps/pojo/Address;->getStreet()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    .line 123
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sprint/smps/pojo/Address;

    invoke-virtual {v2}, Lcom/sprint/smps/pojo/Address;->isDefault()Z

    move-result v2

    if-eqz v2, :cond_28

    .line 124
    iput v0, p0, Lcom/sprint/smps/activities/Profile;->defaultAddressPos:I

    .line 120
    :cond_28
    add-int/lit8 v0, v0, 0x1

    goto :goto_7
.end method

.method public buildPaymentList(Ljava/util/List;)[Ljava/lang/String;
    .registers 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/sprint/smps/pojo/PaymentAccount;",
            ">;)[",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 106
    .local p1, paymentList:Ljava/util/List;,"Ljava/util/List<Lcom/sprint/smps/pojo/PaymentAccount;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    new-array v1, v2, [Ljava/lang/String;

    .line 107
    .local v1, list:[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_7
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-lt v0, v2, :cond_e

    .line 114
    return-object v1

    .line 109
    :cond_e
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sprint/smps/pojo/PaymentAccount;

    invoke-virtual {v2}, Lcom/sprint/smps/pojo/PaymentAccount;->getNickName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    .line 110
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sprint/smps/pojo/PaymentAccount;

    invoke-virtual {v2}, Lcom/sprint/smps/pojo/PaymentAccount;->isDefaultPayment()Z

    move-result v2

    if-eqz v2, :cond_28

    .line 111
    iput v0, p0, Lcom/sprint/smps/activities/Profile;->defaultPaymentPos:I

    .line 107
    :cond_28
    add-int/lit8 v0, v0, 0x1

    goto :goto_7
.end method

.method public finish()V
    .registers 2

    .prologue
    .line 164
    invoke-super {p0}, Lcom/sprint/smps/activities/ActivityHelper;->finish()V

    .line 165
    const-string v0, "Profile"

    invoke-static {v0}, Lcom/sprint/smps/activities/Profile;->dismissActivity(Ljava/lang/String;)V

    .line 166
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 9
    .parameter "v"

    .prologue
    .line 138
    invoke-static {}, Lcom/sprint/smps/properties/Properties;->referenced()V

    .line 139
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v4

    packed-switch v4, :pswitch_data_60

    .line 160
    :goto_a
    return-void

    .line 142
    :pswitch_b
    const v4, 0x7f080001

    invoke-virtual {p0, v4}, Lcom/sprint/smps/activities/Profile;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 143
    .local v1, firstName:Ljava/lang/String;
    const v4, 0x7f080002

    invoke-virtual {p0, v4}, Lcom/sprint/smps/activities/Profile;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    .line 144
    .local v2, lastName:Ljava/lang/String;
    const v4, 0x7f080037

    invoke-virtual {p0, v4}, Lcom/sprint/smps/activities/Profile;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 145
    .local v0, emailAddress:Ljava/lang/String;
    invoke-direct {p0, v1, v2, v0}, Lcom/sprint/smps/activities/Profile;->validateData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    .line 146
    .local v3, valid:Z
    if-eqz v3, :cond_4f

    .line 148
    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Lcom/sprint/smps/activities/Profile;->showDialog(I)V

    .line 149
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/sprint/smps/activities/Profile;->successful:Z

    .line 150
    invoke-direct {p0}, Lcom/sprint/smps/activities/Profile;->saveProfile()V

    goto :goto_a

    .line 153
    :cond_4f
    const-string v4, "Profile"

    iget-object v5, p0, Lcom/sprint/smps/activities/Profile;->errorMessage:Ljava/lang/String;

    iget-object v6, p0, Lcom/sprint/smps/activities/Profile;->viewToHaveFocus:Landroid/view/View;

    invoke-static {v4, v5, p0, v6}, Lcom/sprint/smps/util/Utilities;->showAlert(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Landroid/view/View;)V

    goto :goto_a

    .line 157
    .end local v0           #emailAddress:Ljava/lang/String;
    .end local v1           #firstName:Ljava/lang/String;
    .end local v2           #lastName:Ljava/lang/String;
    .end local v3           #valid:Z
    :pswitch_59
    const-string v4, "Main Menu"

    invoke-static {v4}, Lcom/sprint/smps/activities/Profile;->dismissActivities(Ljava/lang/String;)V

    goto :goto_a

    .line 139
    nop

    :pswitch_data_60
    .packed-switch 0x7f08003a
        :pswitch_b
        :pswitch_59
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 13
    .parameter "savedInstanceState"

    .prologue
    .line 51
    invoke-super {p0, p1}, Lcom/sprint/smps/activities/ActivityHelper;->onCreate(Landroid/os/Bundle;)V

    .line 52
    invoke-static {}, Lcom/sprint/smps/properties/Properties;->referenced()V

    .line 53
    const/4 v8, 0x7

    invoke-virtual {p0, v8}, Lcom/sprint/smps/activities/Profile;->requestWindowFeature(I)Z

    .line 54
    const v8, 0x7f030015

    invoke-virtual {p0, v8}, Lcom/sprint/smps/activities/Profile;->setContentView(I)V

    .line 56
    sget-object v8, Lcom/sprint/smps/properties/Properties;->localyticsSession:Lcom/Localytics/android/LocalyticsSession;

    const-string v9, "Profile"

    invoke-virtual {v8, v9}, Lcom/Localytics/android/LocalyticsSession;->tagEvent(Ljava/lang/String;)V

    .line 58
    invoke-virtual {p0}, Lcom/sprint/smps/activities/Profile;->getWindow()Landroid/view/Window;

    move-result-object v8

    const/4 v9, 0x7

    const v10, 0x7f03001c

    invoke-virtual {v8, v9, v10}, Landroid/view/Window;->setFeatureInt(II)V

    .line 59
    const v8, 0x7f08004a

    invoke-virtual {p0, v8}, Lcom/sprint/smps/activities/Profile;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    const v9, 0x7f060028

    invoke-virtual {p0, v9}, Lcom/sprint/smps/activities/Profile;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 60
    const v8, 0x7f08004b

    invoke-virtual {p0, v8}, Lcom/sprint/smps/activities/Profile;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    const-string v9, ""

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 62
    new-instance v7, Lcom/sprint/smps/activities/Profile$1;

    invoke-direct {v7, p0}, Lcom/sprint/smps/activities/Profile$1;-><init>(Lcom/sprint/smps/activities/Profile;)V

    .line 67
    .local v7, textWatcher:Landroid/text/TextWatcher;
    const v8, 0x7f080001

    invoke-virtual {p0, v8}, Lcom/sprint/smps/activities/Profile;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    invoke-virtual {v8, v7}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 68
    const v8, 0x7f080002

    invoke-virtual {p0, v8}, Lcom/sprint/smps/activities/Profile;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    invoke-virtual {v8, v7}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 69
    const v8, 0x7f080037

    invoke-virtual {p0, v8}, Lcom/sprint/smps/activities/Profile;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    invoke-virtual {v8, v7}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 70
    sget-object v8, Lcom/sprint/smps/properties/Properties;->user:Lcom/sprint/smps/service/ClientResponse;

    if-eqz v8, :cond_de

    sget-object v8, Lcom/sprint/smps/properties/Properties;->user:Lcom/sprint/smps/service/ClientResponse;

    invoke-virtual {v8}, Lcom/sprint/smps/service/ClientResponse;->getEndUser()Lcom/sprint/smps/pojo/User;

    move-result-object v8

    if-eqz v8, :cond_de

    .line 72
    sget-object v8, Lcom/sprint/smps/properties/Properties;->user:Lcom/sprint/smps/service/ClientResponse;

    invoke-virtual {v8}, Lcom/sprint/smps/service/ClientResponse;->getEndUser()Lcom/sprint/smps/pojo/User;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sprint/smps/pojo/User;->getFirstName()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_9a

    .line 73
    const v8, 0x7f080001

    invoke-virtual {p0, v8}, Lcom/sprint/smps/activities/Profile;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    sget-object v9, Lcom/sprint/smps/properties/Properties;->user:Lcom/sprint/smps/service/ClientResponse;

    invoke-virtual {v9}, Lcom/sprint/smps/service/ClientResponse;->getEndUser()Lcom/sprint/smps/pojo/User;

    move-result-object v9

    invoke-virtual {v9}, Lcom/sprint/smps/pojo/User;->getFirstName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 74
    :cond_9a
    sget-object v8, Lcom/sprint/smps/properties/Properties;->user:Lcom/sprint/smps/service/ClientResponse;

    invoke-virtual {v8}, Lcom/sprint/smps/service/ClientResponse;->getEndUser()Lcom/sprint/smps/pojo/User;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sprint/smps/pojo/User;->getLastName()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_bc

    .line 75
    const v8, 0x7f080002

    invoke-virtual {p0, v8}, Lcom/sprint/smps/activities/Profile;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    sget-object v9, Lcom/sprint/smps/properties/Properties;->user:Lcom/sprint/smps/service/ClientResponse;

    invoke-virtual {v9}, Lcom/sprint/smps/service/ClientResponse;->getEndUser()Lcom/sprint/smps/pojo/User;

    move-result-object v9

    invoke-virtual {v9}, Lcom/sprint/smps/pojo/User;->getLastName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 76
    :cond_bc
    sget-object v8, Lcom/sprint/smps/properties/Properties;->user:Lcom/sprint/smps/service/ClientResponse;

    invoke-virtual {v8}, Lcom/sprint/smps/service/ClientResponse;->getEndUser()Lcom/sprint/smps/pojo/User;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sprint/smps/pojo/User;->getEmailAddress()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_de

    .line 77
    const v8, 0x7f080037

    invoke-virtual {p0, v8}, Lcom/sprint/smps/activities/Profile;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    sget-object v9, Lcom/sprint/smps/properties/Properties;->user:Lcom/sprint/smps/service/ClientResponse;

    invoke-virtual {v9}, Lcom/sprint/smps/service/ClientResponse;->getEndUser()Lcom/sprint/smps/pojo/User;

    move-result-object v9

    invoke-virtual {v9}, Lcom/sprint/smps/pojo/User;->getEmailAddress()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 80
    :cond_de
    sget-object v8, Lcom/sprint/smps/properties/Properties;->user:Lcom/sprint/smps/service/ClientResponse;

    invoke-virtual {v8}, Lcom/sprint/smps/service/ClientResponse;->getSortedUserPayments()Ljava/util/List;

    move-result-object v5

    .line 81
    .local v5, paymentList:Ljava/util/List;,"Ljava/util/List<Lcom/sprint/smps/pojo/PaymentAccount;>;"
    invoke-virtual {p0, v5}, Lcom/sprint/smps/activities/Profile;->buildPaymentList(Ljava/util/List;)[Ljava/lang/String;

    move-result-object v4

    .line 82
    .local v4, list:[Ljava/lang/String;
    const v8, 0x7f080038

    invoke-virtual {p0, v8}, Lcom/sprint/smps/activities/Profile;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Spinner;

    .line 83
    .local v6, paymentsSpinner:Landroid/widget/Spinner;
    new-instance v2, Landroid/widget/ArrayAdapter;

    sget-object v8, Lcom/sprint/smps/activities/Profile;->parentActivity:Lcom/sprint/smps/activities/Profile;

    const v9, 0x1090008

    invoke-direct {v2, v8, v9, v4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 84
    .local v2, arrayAdapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    const v8, 0x7f03001a

    invoke-virtual {v2, v8}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 85
    invoke-virtual {v6, v2}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 86
    iget v8, p0, Lcom/sprint/smps/activities/Profile;->defaultPaymentPos:I

    invoke-virtual {v6, v8}, Landroid/widget/Spinner;->setSelection(I)V

    .line 88
    sget-object v8, Lcom/sprint/smps/properties/Properties;->user:Lcom/sprint/smps/service/ClientResponse;

    invoke-virtual {v8}, Lcom/sprint/smps/service/ClientResponse;->getLstAddress()Ljava/util/List;

    move-result-object v0

    .line 89
    .local v0, addressList:Ljava/util/List;,"Ljava/util/List<Lcom/sprint/smps/pojo/Address;>;"
    invoke-virtual {p0, v0}, Lcom/sprint/smps/activities/Profile;->buildAddressList(Ljava/util/List;)[Ljava/lang/String;

    move-result-object v4

    .line 90
    const v8, 0x7f080039

    invoke-virtual {p0, v8}, Lcom/sprint/smps/activities/Profile;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Spinner;

    .line 91
    .local v1, addressSpinner:Landroid/widget/Spinner;
    new-instance v2, Landroid/widget/ArrayAdapter;

    .end local v2           #arrayAdapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    sget-object v8, Lcom/sprint/smps/activities/Profile;->parentActivity:Lcom/sprint/smps/activities/Profile;

    const v9, 0x1090008

    invoke-direct {v2, v8, v9, v4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 92
    .restart local v2       #arrayAdapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    const v8, 0x7f03001a

    invoke-virtual {v2, v8}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 93
    invoke-virtual {v1, v2}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 94
    iget v8, p0, Lcom/sprint/smps/activities/Profile;->defaultAddressPos:I

    invoke-virtual {v1, v8}, Landroid/widget/Spinner;->setSelection(I)V

    .line 96
    const v8, 0x7f08003a

    invoke-virtual {p0, v8}, Lcom/sprint/smps/activities/Profile;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    .line 97
    .local v3, button:Landroid/widget/Button;
    invoke-virtual {v3, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 98
    const v8, 0x7f08003b

    invoke-virtual {p0, v8}, Lcom/sprint/smps/activities/Profile;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .end local v3           #button:Landroid/widget/Button;
    check-cast v3, Landroid/widget/Button;

    .line 99
    .restart local v3       #button:Landroid/widget/Button;
    invoke-virtual {v3, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 101
    invoke-static {p0}, Lcom/sprint/smps/TimeOutThread;->listener(Lcom/sprint/smps/TimeoutListener;)V

    .line 102
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .registers 5
    .parameter "id"

    .prologue
    .line 321
    const/4 v0, 0x0

    .line 323
    .local v0, dialog:Landroid/app/Dialog;
    if-nez p1, :cond_1e

    .line 325
    new-instance v1, Landroid/app/ProgressDialog;

    invoke-direct {v1, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 326
    .local v1, progDialog:Landroid/app/ProgressDialog;
    const-string v2, "Please wait, updating profile..."

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 327
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 328
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 330
    new-instance v2, Lcom/sprint/smps/activities/Profile$3;

    invoke-direct {v2, p0}, Lcom/sprint/smps/activities/Profile$3;-><init>(Lcom/sprint/smps/activities/Profile;)V

    .line 329
    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 342
    move-object v0, v1

    .line 345
    .end local v1           #progDialog:Landroid/app/ProgressDialog;
    :cond_1e
    return-object v0
.end method

.method public onPause()V
    .registers 1

    .prologue
    .line 132
    invoke-static {}, Lcom/sprint/smps/TimeOutThread;->bumpTimout()V

    .line 133
    invoke-super {p0}, Lcom/sprint/smps/activities/ActivityHelper;->onPause()V

    .line 134
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .registers 2
    .parameter "hasFocus"

    .prologue
    .line 171
    if-eqz p1, :cond_8

    .line 173
    invoke-static {}, Lcom/sprint/smps/properties/Properties;->referenced()V

    .line 174
    invoke-static {p0}, Lcom/sprint/smps/TimeOutThread;->listener(Lcom/sprint/smps/TimeoutListener;)V

    .line 176
    :cond_8
    return-void
.end method
