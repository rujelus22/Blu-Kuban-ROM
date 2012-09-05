.class public Lcom/sprint/smps/activities/AddPaymentOption;
.super Lcom/sprint/smps/activities/ActivityHelper;
.source "AddPaymentOption.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/sprint/smps/TimeoutListener;


# static fields
.field private static final TAG:Ljava/lang/String; = null

.field public static final name:Ljava/lang/String; = "Add Payment Option"

.field private static parentActivity:Lcom/sprint/smps/activities/AddPaymentOption;

.field private static response:Lcom/sprint/smps/service/ClientResponse;


# instance fields
.field private successful:Z

.field private user:Lcom/sprint/smps/pojo/User;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v1, 0x0

    .line 38
    const-class v0, Lcom/sprint/smps/activities/AddPaymentOption;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sprint/smps/activities/AddPaymentOption;->TAG:Ljava/lang/String;

    .line 40
    sput-object v1, Lcom/sprint/smps/activities/AddPaymentOption;->parentActivity:Lcom/sprint/smps/activities/AddPaymentOption;

    .line 43
    sput-object v1, Lcom/sprint/smps/activities/AddPaymentOption;->response:Lcom/sprint/smps/service/ClientResponse;

    .line 35
    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/sprint/smps/activities/ActivityHelper;-><init>()V

    .line 41
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sprint/smps/activities/AddPaymentOption;->successful:Z

    .line 42
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sprint/smps/activities/AddPaymentOption;->user:Lcom/sprint/smps/pojo/User;

    .line 47
    sput-object p0, Lcom/sprint/smps/activities/AddPaymentOption;->parentActivity:Lcom/sprint/smps/activities/AddPaymentOption;

    .line 48
    const-string v0, "Add Payment Option"

    invoke-static {p0, v0}, Lcom/sprint/smps/activities/ActivityHelper;->addActivity(Landroid/app/Activity;Ljava/lang/String;)V

    .line 49
    return-void
.end method

.method static synthetic access$0()Lcom/sprint/smps/activities/AddPaymentOption;
    .registers 1

    .prologue
    .line 40
    sget-object v0, Lcom/sprint/smps/activities/AddPaymentOption;->parentActivity:Lcom/sprint/smps/activities/AddPaymentOption;

    return-object v0
.end method

.method static synthetic access$1(Lcom/sprint/smps/activities/AddPaymentOption;Z)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 41
    iput-boolean p1, p0, Lcom/sprint/smps/activities/AddPaymentOption;->successful:Z

    return-void
.end method

.method static synthetic access$2(Lcom/sprint/smps/activities/AddPaymentOption;)Z
    .registers 2
    .parameter

    .prologue
    .line 41
    iget-boolean v0, p0, Lcom/sprint/smps/activities/AddPaymentOption;->successful:Z

    return v0
.end method

.method static synthetic access$3(Lcom/sprint/smps/activities/AddPaymentOption;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Landroid/widget/TextView;)V
    .registers 5
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 339
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sprint/smps/activities/AddPaymentOption;->showAlert(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Landroid/widget/TextView;)V

    return-void
.end method

.method private addPaymentAccount()V
    .registers 3

    .prologue
    .line 275
    new-instance v0, Lcom/sprint/smps/activities/AddPaymentOption$3;

    invoke-direct {v0, p0}, Lcom/sprint/smps/activities/AddPaymentOption$3;-><init>(Lcom/sprint/smps/activities/AddPaymentOption;)V

    .line 306
    .local v0, runnable:Ljava/lang/Runnable;
    new-instance v1, Ljava/lang/Thread;

    invoke-direct {v1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 307
    return-void
.end method

.method private getPosition(Ljava/lang/String;)I
    .registers 7
    .parameter "state"

    .prologue
    .line 155
    const/4 v1, 0x0

    .line 156
    .local v1, pos:I
    const v4, 0x7f080005

    invoke-virtual {p0, v4}, Lcom/sprint/smps/activities/AddPaymentOption;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Spinner;

    .line 157
    .local v3, statesSpinner:Landroid/widget/Spinner;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_b
    invoke-virtual {v3}, Landroid/widget/Spinner;->getCount()I

    move-result v4

    if-lt v0, v4, :cond_12

    .line 167
    :goto_11
    return v1

    .line 159
    :cond_12
    invoke-virtual {v3, v0}, Landroid/widget/Spinner;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 160
    .local v2, stateVal:Ljava/lang/String;
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_20

    .line 162
    move v1, v0

    .line 163
    goto :goto_11

    .line 157
    :cond_20
    add-int/lit8 v0, v0, 0x1

    goto :goto_b
.end method

.method private showAlert(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Landroid/widget/TextView;)V
    .registers 8
    .parameter "title"
    .parameter "msg"
    .parameter "context"
    .parameter "view"

    .prologue
    .line 341
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 343
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 344
    invoke-virtual {v0, p2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 345
    const-string v1, "OK"

    new-instance v2, Lcom/sprint/smps/activities/AddPaymentOption$5;

    invoke-direct {v2, p0}, Lcom/sprint/smps/activities/AddPaymentOption$5;-><init>(Lcom/sprint/smps/activities/AddPaymentOption;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 353
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 354
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 355
    return-void
.end method

.method private validateData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)Z
    .registers 15
    .parameter "acctNickName"
    .parameter "street"
    .parameter "city"
    .parameter "zipcode"
    .parameter "cardNo"
    .parameter "cvvNo"
    .parameter "expMonth"
    .parameter "expYear"
    .parameter "nameOnCard"

    .prologue
    .line 207
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/sprint/smps/activities/AddPaymentOption;->errorMessage:Ljava/lang/String;

    .line 208
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/sprint/smps/activities/AddPaymentOption;->viewToHaveFocus:Landroid/view/View;

    .line 210
    if-eqz p1, :cond_e

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_21

    .line 211
    :cond_e
    const-string v3, "Acount nickname must be entered."

    iput-object v3, p0, Lcom/sprint/smps/activities/AddPaymentOption;->errorMessage:Ljava/lang/String;

    .line 212
    const v3, 0x7f080008

    invoke-virtual {p0, v3}, Lcom/sprint/smps/activities/AddPaymentOption;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/sprint/smps/activities/AddPaymentOption;->viewToHaveFocus:Landroid/view/View;

    .line 270
    :cond_1b
    :goto_1b
    iget-object v3, p0, Lcom/sprint/smps/activities/AddPaymentOption;->errorMessage:Ljava/lang/String;

    if-nez v3, :cond_147

    const/4 v3, 0x1

    :goto_20
    return v3

    .line 214
    :cond_21
    if-eqz p2, :cond_29

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_37

    .line 215
    :cond_29
    const-string v3, "Street address must be entered."

    iput-object v3, p0, Lcom/sprint/smps/activities/AddPaymentOption;->errorMessage:Ljava/lang/String;

    .line 216
    const v3, 0x7f080003

    invoke-virtual {p0, v3}, Lcom/sprint/smps/activities/AddPaymentOption;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/sprint/smps/activities/AddPaymentOption;->viewToHaveFocus:Landroid/view/View;

    goto :goto_1b

    .line 218
    :cond_37
    if-eqz p3, :cond_3f

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_4d

    .line 219
    :cond_3f
    const-string v3, "City must be entered."

    iput-object v3, p0, Lcom/sprint/smps/activities/AddPaymentOption;->errorMessage:Ljava/lang/String;

    .line 220
    const v3, 0x7f080004

    invoke-virtual {p0, v3}, Lcom/sprint/smps/activities/AddPaymentOption;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/sprint/smps/activities/AddPaymentOption;->viewToHaveFocus:Landroid/view/View;

    goto :goto_1b

    .line 222
    :cond_4d
    if-eqz p4, :cond_55

    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_63

    .line 223
    :cond_55
    const-string v3, "Zipcode must be entered."

    iput-object v3, p0, Lcom/sprint/smps/activities/AddPaymentOption;->errorMessage:Ljava/lang/String;

    .line 224
    const v3, 0x7f080006

    invoke-virtual {p0, v3}, Lcom/sprint/smps/activities/AddPaymentOption;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/sprint/smps/activities/AddPaymentOption;->viewToHaveFocus:Landroid/view/View;

    goto :goto_1b

    .line 226
    :cond_63
    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x5

    if-eq v3, v4, :cond_78

    .line 227
    const-string v3, "Zipcode must be 5 digits long."

    iput-object v3, p0, Lcom/sprint/smps/activities/AddPaymentOption;->errorMessage:Ljava/lang/String;

    .line 228
    const v3, 0x7f080006

    invoke-virtual {p0, v3}, Lcom/sprint/smps/activities/AddPaymentOption;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/sprint/smps/activities/AddPaymentOption;->viewToHaveFocus:Landroid/view/View;

    goto :goto_1b

    .line 230
    :cond_78
    invoke-static {p4}, Lcom/sprint/smps/util/Utilities;->isNumeric(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_8c

    .line 231
    const-string v3, "Zipcode must be numeric."

    iput-object v3, p0, Lcom/sprint/smps/activities/AddPaymentOption;->errorMessage:Ljava/lang/String;

    .line 232
    const v3, 0x7f080006

    invoke-virtual {p0, v3}, Lcom/sprint/smps/activities/AddPaymentOption;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/sprint/smps/activities/AddPaymentOption;->viewToHaveFocus:Landroid/view/View;

    goto :goto_1b

    .line 234
    :cond_8c
    if-eqz p5, :cond_9e

    invoke-virtual {p5}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0xf

    if-lt v3, v4, :cond_9e

    invoke-virtual {p5}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0x13

    if-le v3, v4, :cond_ad

    .line 235
    :cond_9e
    const-string v3, "Payment card number must be 15 to 19 digits long."

    iput-object v3, p0, Lcom/sprint/smps/activities/AddPaymentOption;->errorMessage:Ljava/lang/String;

    .line 236
    const v3, 0x7f08000a

    invoke-virtual {p0, v3}, Lcom/sprint/smps/activities/AddPaymentOption;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/sprint/smps/activities/AddPaymentOption;->viewToHaveFocus:Landroid/view/View;

    goto/16 :goto_1b

    .line 238
    :cond_ad
    if-eqz p6, :cond_b5

    invoke-virtual {p6}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_c4

    .line 239
    :cond_b5
    const-string v3, "CVV number must be entered."

    iput-object v3, p0, Lcom/sprint/smps/activities/AddPaymentOption;->errorMessage:Ljava/lang/String;

    .line 240
    const v3, 0x7f08000a

    invoke-virtual {p0, v3}, Lcom/sprint/smps/activities/AddPaymentOption;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/sprint/smps/activities/AddPaymentOption;->viewToHaveFocus:Landroid/view/View;

    goto/16 :goto_1b

    .line 242
    :cond_c4
    invoke-static {p5}, Lcom/sprint/smps/util/Utilities;->isNumeric(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_d9

    .line 243
    const-string v3, "Payment card number must be numeric."

    iput-object v3, p0, Lcom/sprint/smps/activities/AddPaymentOption;->errorMessage:Ljava/lang/String;

    .line 244
    const v3, 0x7f08000a

    invoke-virtual {p0, v3}, Lcom/sprint/smps/activities/AddPaymentOption;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/sprint/smps/activities/AddPaymentOption;->viewToHaveFocus:Landroid/view/View;

    goto/16 :goto_1b

    .line 246
    :cond_d9
    invoke-static {p6}, Lcom/sprint/smps/util/Utilities;->isNumeric(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_ee

    .line 247
    const-string v3, "CVV number must be numeric."

    iput-object v3, p0, Lcom/sprint/smps/activities/AddPaymentOption;->errorMessage:Ljava/lang/String;

    .line 248
    const v3, 0x7f08000b

    invoke-virtual {p0, v3}, Lcom/sprint/smps/activities/AddPaymentOption;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/sprint/smps/activities/AddPaymentOption;->viewToHaveFocus:Landroid/view/View;

    goto/16 :goto_1b

    .line 250
    :cond_ee
    invoke-virtual {p6}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x3

    if-ge v3, v4, :cond_10b

    invoke-virtual {p6}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x5

    if-le v3, v4, :cond_10b

    .line 251
    const-string v3, "CVV number must be between 3 and 5 digits."

    iput-object v3, p0, Lcom/sprint/smps/activities/AddPaymentOption;->errorMessage:Ljava/lang/String;

    .line 252
    const v3, 0x7f08000b

    invoke-virtual {p0, v3}, Lcom/sprint/smps/activities/AddPaymentOption;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/sprint/smps/activities/AddPaymentOption;->viewToHaveFocus:Landroid/view/View;

    goto/16 :goto_1b

    .line 254
    :cond_10b
    if-eqz p9, :cond_113

    invoke-virtual {p9}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_122

    .line 255
    :cond_113
    const-string v3, "Name on card must be entered."

    iput-object v3, p0, Lcom/sprint/smps/activities/AddPaymentOption;->errorMessage:Ljava/lang/String;

    .line 256
    const v3, 0x7f08000e

    invoke-virtual {p0, v3}, Lcom/sprint/smps/activities/AddPaymentOption;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/sprint/smps/activities/AddPaymentOption;->viewToHaveFocus:Landroid/view/View;

    goto/16 :goto_1b

    .line 260
    :cond_122
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 261
    .local v0, cal:Ljava/util/Calendar;
    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    add-int/lit8 v1, v3, 0x1

    .line 262
    .local v1, currMonth:I
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .line 263
    .local v2, currYear:I
    if-lt p8, v2, :cond_138

    if-ne p8, v2, :cond_1b

    if-ge p7, v1, :cond_1b

    .line 265
    :cond_138
    const-string v3, "Expiration date must be a future date."

    iput-object v3, p0, Lcom/sprint/smps/activities/AddPaymentOption;->errorMessage:Ljava/lang/String;

    .line 266
    const v3, 0x7f08000c

    invoke-virtual {p0, v3}, Lcom/sprint/smps/activities/AddPaymentOption;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/sprint/smps/activities/AddPaymentOption;->viewToHaveFocus:Landroid/view/View;

    goto/16 :goto_1b

    .line 270
    .end local v0           #cal:Ljava/util/Calendar;
    .end local v1           #currMonth:I
    .end local v2           #currYear:I
    :cond_147
    const/4 v3, 0x0

    goto/16 :goto_20
.end method


# virtual methods
.method public finish()V
    .registers 2

    .prologue
    .line 132
    invoke-super {p0}, Lcom/sprint/smps/activities/ActivityHelper;->finish()V

    .line 133
    const/4 v0, 0x0

    sput-object v0, Lcom/sprint/smps/activities/AddPaymentOption;->response:Lcom/sprint/smps/service/ClientResponse;

    .line 134
    const-string v0, "Add Payment Option"

    invoke-static {v0}, Lcom/sprint/smps/activities/AddPaymentOption;->dismissActivity(Ljava/lang/String;)V

    .line 135
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 15
    .parameter "v"

    .prologue
    .line 172
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_de

    .line 201
    :goto_7
    return-void

    .line 175
    :pswitch_8
    const v0, 0x7f080008

    invoke-virtual {p0, v0}, Lcom/sprint/smps/activities/AddPaymentOption;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 176
    .local v1, acctNickName:Ljava/lang/String;
    const v0, 0x7f080009

    invoke-virtual {p0, v0}, Lcom/sprint/smps/activities/AddPaymentOption;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    .line 177
    .local v2, street:Ljava/lang/String;
    const v0, 0x7f080004

    invoke-virtual {p0, v0}, Lcom/sprint/smps/activities/AddPaymentOption;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    .line 178
    .local v3, city:Ljava/lang/String;
    const v0, 0x7f080006

    invoke-virtual {p0, v0}, Lcom/sprint/smps/activities/AddPaymentOption;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    .line 179
    .local v4, zipcode:Ljava/lang/String;
    const v0, 0x7f08000a

    invoke-virtual {p0, v0}, Lcom/sprint/smps/activities/AddPaymentOption;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    .line 180
    .local v5, cardNo:Ljava/lang/String;
    const v0, 0x7f08000b

    invoke-virtual {p0, v0}, Lcom/sprint/smps/activities/AddPaymentOption;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    .line 181
    .local v6, cvvNo:Ljava/lang/String;
    const v0, 0x7f08000e

    invoke-virtual {p0, v0}, Lcom/sprint/smps/activities/AddPaymentOption;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v9

    .line 182
    .local v9, nameOnCard:Ljava/lang/String;
    const v0, 0x7f08000c

    invoke-virtual {p0, v0}, Lcom/sprint/smps/activities/AddPaymentOption;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    .line 183
    .local v10, expMonth:Ljava/lang/String;
    const v0, 0x7f08000d

    invoke-virtual {p0, v0}, Lcom/sprint/smps/activities/AddPaymentOption;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    .line 185
    .local v11, expYear:Ljava/lang/String;
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v8

    move-object v0, p0

    .line 184
    invoke-direct/range {v0 .. v9}, Lcom/sprint/smps/activities/AddPaymentOption;->validateData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)Z

    move-result v12

    .line 187
    .local v12, valid:Z
    if-eqz v12, :cond_c4

    .line 189
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sprint/smps/activities/AddPaymentOption;->showDialog(I)V

    .line 190
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sprint/smps/activities/AddPaymentOption;->successful:Z

    .line 191
    invoke-direct {p0}, Lcom/sprint/smps/activities/AddPaymentOption;->addPaymentAccount()V

    goto/16 :goto_7

    .line 194
    :cond_c4
    iget-object v0, p0, Lcom/sprint/smps/activities/AddPaymentOption;->errorMessage:Ljava/lang/String;

    if-nez v0, :cond_d3

    .line 195
    const-string v0, "Payment Accounts"

    const-string v7, "Unable to add payment."

    iget-object v8, p0, Lcom/sprint/smps/activities/AddPaymentOption;->viewToHaveFocus:Landroid/view/View;

    invoke-static {v0, v7, p0, v8}, Lcom/sprint/smps/util/Utilities;->showAlert(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Landroid/view/View;)V

    goto/16 :goto_7

    .line 197
    :cond_d3
    const-string v0, "Payment Accounts"

    iget-object v7, p0, Lcom/sprint/smps/activities/AddPaymentOption;->errorMessage:Ljava/lang/String;

    iget-object v8, p0, Lcom/sprint/smps/activities/AddPaymentOption;->viewToHaveFocus:Landroid/view/View;

    invoke-static {v0, v7, p0, v8}, Lcom/sprint/smps/util/Utilities;->showAlert(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Landroid/view/View;)V

    goto/16 :goto_7

    .line 172
    :pswitch_data_de
    .packed-switch 0x7f08000f
        :pswitch_8
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 13
    .parameter "savedInstanceState"

    .prologue
    .line 54
    invoke-super {p0, p1}, Lcom/sprint/smps/activities/ActivityHelper;->onCreate(Landroid/os/Bundle;)V

    .line 55
    invoke-static {}, Lcom/sprint/smps/properties/Properties;->referenced()V

    .line 56
    const/4 v8, 0x7

    invoke-virtual {p0, v8}, Lcom/sprint/smps/activities/AddPaymentOption;->requestWindowFeature(I)Z

    .line 57
    const v8, 0x7f030001

    invoke-virtual {p0, v8}, Lcom/sprint/smps/activities/AddPaymentOption;->setContentView(I)V

    .line 59
    sget-object v8, Lcom/sprint/smps/properties/Properties;->localyticsSession:Lcom/Localytics/android/LocalyticsSession;

    const-string v9, "Add Payment Option"

    invoke-virtual {v8, v9}, Lcom/Localytics/android/LocalyticsSession;->tagEvent(Ljava/lang/String;)V

    .line 61
    invoke-virtual {p0}, Lcom/sprint/smps/activities/AddPaymentOption;->getWindow()Landroid/view/Window;

    move-result-object v8

    const/4 v9, 0x7

    const v10, 0x7f03001c

    invoke-virtual {v8, v9, v10}, Landroid/view/Window;->setFeatureInt(II)V

    .line 62
    const v8, 0x7f08004a

    invoke-virtual {p0, v8}, Lcom/sprint/smps/activities/AddPaymentOption;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    const v9, 0x7f06002d

    invoke-virtual {p0, v9}, Lcom/sprint/smps/activities/AddPaymentOption;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 63
    const v8, 0x7f08004b

    invoke-virtual {p0, v8}, Lcom/sprint/smps/activities/AddPaymentOption;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    const-string v9, ""

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 65
    invoke-static {}, Lcom/sprint/smps/properties/Properties;->referenced()V

    .line 67
    const/high16 v8, 0x7f08

    invoke-virtual {p0, v8}, Lcom/sprint/smps/activities/AddPaymentOption;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ScrollView;

    .line 68
    .local v6, sv:Landroid/widget/ScrollView;
    new-instance v8, Lcom/sprint/smps/activities/AddPaymentOption$1;

    invoke-direct {v8, p0}, Lcom/sprint/smps/activities/AddPaymentOption$1;-><init>(Lcom/sprint/smps/activities/AddPaymentOption;)V

    invoke-virtual {v6, v8}, Landroid/widget/ScrollView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 77
    new-instance v7, Lcom/sprint/smps/activities/AddPaymentOption$2;

    invoke-direct {v7, p0}, Lcom/sprint/smps/activities/AddPaymentOption$2;-><init>(Lcom/sprint/smps/activities/AddPaymentOption;)V

    .line 82
    .local v7, textWatcher:Landroid/text/TextWatcher;
    const v8, 0x7f080008

    invoke-virtual {p0, v8}, Lcom/sprint/smps/activities/AddPaymentOption;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    invoke-virtual {v8, v7}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 83
    const v8, 0x7f080009

    invoke-virtual {p0, v8}, Lcom/sprint/smps/activities/AddPaymentOption;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    invoke-virtual {v8, v7}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 84
    const v8, 0x7f080004

    invoke-virtual {p0, v8}, Lcom/sprint/smps/activities/AddPaymentOption;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    invoke-virtual {v8, v7}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 85
    const v8, 0x7f080006

    invoke-virtual {p0, v8}, Lcom/sprint/smps/activities/AddPaymentOption;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    invoke-virtual {v8, v7}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 86
    const v8, 0x7f08000a

    invoke-virtual {p0, v8}, Lcom/sprint/smps/activities/AddPaymentOption;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    invoke-virtual {v8, v7}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 87
    const v8, 0x7f08000b

    invoke-virtual {p0, v8}, Lcom/sprint/smps/activities/AddPaymentOption;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    invoke-virtual {v8, v7}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 88
    const v8, 0x7f08000e

    invoke-virtual {p0, v8}, Lcom/sprint/smps/activities/AddPaymentOption;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    invoke-virtual {v8, v7}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 90
    const v8, 0x7f080005

    invoke-virtual {p0, v8}, Lcom/sprint/smps/activities/AddPaymentOption;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Spinner;

    .line 91
    .local v5, s:Landroid/widget/Spinner;
    const v8, 0x7f050001

    const v9, 0x7f03001b

    invoke-static {p0, v8, v9}, Landroid/widget/ArrayAdapter;->createFromResource(Landroid/content/Context;II)Landroid/widget/ArrayAdapter;

    move-result-object v0

    .line 92
    .local v0, adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<*>;"
    const v8, 0x1090009

    invoke-virtual {v0, v8}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 93
    invoke-virtual {v5, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 95
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    .line 96
    .local v2, cal:Ljava/util/Calendar;
    const/4 v8, 0x2

    invoke-virtual {v2, v8}, Ljava/util/Calendar;->get(I)I

    move-result v3

    .line 97
    .local v3, currMonth:I
    const/4 v8, 0x1

    invoke-virtual {v2, v8}, Ljava/util/Calendar;->get(I)I

    move-result v4

    .line 99
    .local v4, currYear:I
    const v8, 0x7f08000c

    invoke-virtual {p0, v8}, Lcom/sprint/smps/activities/AddPaymentOption;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .end local v5           #s:Landroid/widget/Spinner;
    check-cast v5, Landroid/widget/Spinner;

    .line 100
    .restart local v5       #s:Landroid/widget/Spinner;
    const/high16 v8, 0x7f05

    const v9, 0x7f03001b

    invoke-static {p0, v8, v9}, Landroid/widget/ArrayAdapter;->createFromResource(Landroid/content/Context;II)Landroid/widget/ArrayAdapter;

    move-result-object v0

    .line 101
    const v8, 0x1090009

    invoke-virtual {v0, v8}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 102
    invoke-virtual {v5, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 103
    invoke-virtual {v5, v3}, Landroid/widget/Spinner;->setSelection(I)V

    .line 105
    const v8, 0x7f08000d

    invoke-virtual {p0, v8}, Lcom/sprint/smps/activities/AddPaymentOption;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .end local v5           #s:Landroid/widget/Spinner;
    check-cast v5, Landroid/widget/Spinner;

    .line 106
    .restart local v5       #s:Landroid/widget/Spinner;
    new-instance v0, Landroid/widget/ArrayAdapter;

    .end local v0           #adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<*>;"
    const v8, 0x7f03001b

    invoke-virtual {p0, v4}, Lcom/sprint/smps/activities/AddPaymentOption;->getYearArray(I)[Ljava/lang/String;

    move-result-object v9

    invoke-direct {v0, p0, v8, v9}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 107
    .restart local v0       #adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<*>;"
    const v8, 0x1090009

    invoke-virtual {v0, v8}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 108
    invoke-virtual {v5, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 110
    const v8, 0x7f08000f

    invoke-virtual {p0, v8}, Lcom/sprint/smps/activities/AddPaymentOption;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 111
    .local v1, button:Landroid/widget/Button;
    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 113
    sget-object v8, Lcom/sprint/smps/activities/AddPaymentOption;->response:Lcom/sprint/smps/service/ClientResponse;

    if-nez v8, :cond_12d

    .line 114
    sget-object v8, Lcom/sprint/smps/properties/Properties;->smpsApi:Lcom/sprint/smps/service/SMPSService;

    invoke-interface {v8}, Lcom/sprint/smps/service/SMPSService;->getUserProfile()Lcom/sprint/smps/service/ClientResponse;

    move-result-object v8

    sput-object v8, Lcom/sprint/smps/activities/AddPaymentOption;->response:Lcom/sprint/smps/service/ClientResponse;

    .line 116
    :cond_12d
    sget-object v8, Lcom/sprint/smps/activities/AddPaymentOption;->response:Lcom/sprint/smps/service/ClientResponse;

    if-eqz v8, :cond_1bc

    sget-object v8, Lcom/sprint/smps/activities/AddPaymentOption;->response:Lcom/sprint/smps/service/ClientResponse;

    invoke-virtual {v8}, Lcom/sprint/smps/service/ClientResponse;->getEndUser()Lcom/sprint/smps/pojo/User;

    move-result-object v8

    if-eqz v8, :cond_1bc

    .line 119
    sget-object v8, Lcom/sprint/smps/activities/AddPaymentOption;->response:Lcom/sprint/smps/service/ClientResponse;

    invoke-virtual {v8}, Lcom/sprint/smps/service/ClientResponse;->getEndUser()Lcom/sprint/smps/pojo/User;

    move-result-object v8

    iput-object v8, p0, Lcom/sprint/smps/activities/AddPaymentOption;->user:Lcom/sprint/smps/pojo/User;

    .line 120
    const v8, 0x7f080009

    invoke-virtual {p0, v8}, Lcom/sprint/smps/activities/AddPaymentOption;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iget-object v9, p0, Lcom/sprint/smps/activities/AddPaymentOption;->user:Lcom/sprint/smps/pojo/User;

    invoke-virtual {v9}, Lcom/sprint/smps/pojo/User;->getStreet1()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 121
    const v8, 0x7f080004

    invoke-virtual {p0, v8}, Lcom/sprint/smps/activities/AddPaymentOption;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iget-object v9, p0, Lcom/sprint/smps/activities/AddPaymentOption;->user:Lcom/sprint/smps/pojo/User;

    invoke-virtual {v9}, Lcom/sprint/smps/pojo/User;->getCity()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 122
    const v8, 0x7f080005

    invoke-virtual {p0, v8}, Lcom/sprint/smps/activities/AddPaymentOption;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/Spinner;

    iget-object v9, p0, Lcom/sprint/smps/activities/AddPaymentOption;->user:Lcom/sprint/smps/pojo/User;

    invoke-virtual {v9}, Lcom/sprint/smps/pojo/User;->getStateName()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/sprint/smps/activities/AddPaymentOption;->getPosition(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/widget/Spinner;->setSelection(I)V

    .line 123
    const v8, 0x7f080006

    invoke-virtual {p0, v8}, Lcom/sprint/smps/activities/AddPaymentOption;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iget-object v9, p0, Lcom/sprint/smps/activities/AddPaymentOption;->user:Lcom/sprint/smps/pojo/User;

    invoke-virtual {v9}, Lcom/sprint/smps/pojo/User;->getZip()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 124
    const v8, 0x7f08000e

    invoke-virtual {p0, v8}, Lcom/sprint/smps/activities/AddPaymentOption;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    new-instance v9, Ljava/lang/StringBuilder;

    iget-object v10, p0, Lcom/sprint/smps/activities/AddPaymentOption;->user:Lcom/sprint/smps/pojo/User;

    invoke-virtual {v10}, Lcom/sprint/smps/pojo/User;->getFirstName()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/sprint/smps/activities/AddPaymentOption;->user:Lcom/sprint/smps/pojo/User;

    invoke-virtual {v10}, Lcom/sprint/smps/pojo/User;->getLastName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 127
    :cond_1bc
    invoke-static {p0}, Lcom/sprint/smps/TimeOutThread;->listener(Lcom/sprint/smps/TimeoutListener;)V

    .line 128
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .registers 5
    .parameter "id"

    .prologue
    .line 311
    const/4 v0, 0x0

    .line 313
    .local v0, dialog:Landroid/app/Dialog;
    if-nez p1, :cond_1e

    .line 315
    new-instance v1, Landroid/app/ProgressDialog;

    invoke-direct {v1, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 316
    .local v1, progDialog:Landroid/app/ProgressDialog;
    const-string v2, "Please wait, adding payment account..."

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 317
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 318
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 320
    new-instance v2, Lcom/sprint/smps/activities/AddPaymentOption$4;

    invoke-direct {v2, p0}, Lcom/sprint/smps/activities/AddPaymentOption$4;-><init>(Lcom/sprint/smps/activities/AddPaymentOption;)V

    .line 319
    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 333
    move-object v0, v1

    .line 336
    .end local v1           #progDialog:Landroid/app/ProgressDialog;
    :cond_1e
    return-object v0
.end method

.method public onPause()V
    .registers 1

    .prologue
    .line 149
    invoke-static {}, Lcom/sprint/smps/TimeOutThread;->bumpTimout()V

    .line 150
    invoke-super {p0}, Lcom/sprint/smps/activities/ActivityHelper;->onPause()V

    .line 151
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .registers 2
    .parameter "hasFocus"

    .prologue
    .line 140
    if-eqz p1, :cond_8

    .line 142
    invoke-static {}, Lcom/sprint/smps/properties/Properties;->referenced()V

    .line 143
    invoke-static {p0}, Lcom/sprint/smps/TimeOutThread;->listener(Lcom/sprint/smps/TimeoutListener;)V

    .line 145
    :cond_8
    return-void
.end method
