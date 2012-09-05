.class public Lcom/sprint/smps/activities/EditPaymentAccount;
.super Lcom/sprint/smps/activities/ActivityHelper;
.source "EditPaymentAccount.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/sprint/smps/TimeoutListener;


# static fields
.field private static final TAG:Ljava/lang/String; = null

.field public static final name:Ljava/lang/String; = "Edit Payment Account"

.field private static parentActivity:Lcom/sprint/smps/activities/EditPaymentAccount;


# instance fields
.field private successful:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 34
    const-class v0, Lcom/sprint/smps/activities/EditPaymentAccount;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sprint/smps/activities/EditPaymentAccount;->TAG:Ljava/lang/String;

    .line 36
    const/4 v0, 0x0

    sput-object v0, Lcom/sprint/smps/activities/EditPaymentAccount;->parentActivity:Lcom/sprint/smps/activities/EditPaymentAccount;

    .line 31
    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/sprint/smps/activities/ActivityHelper;-><init>()V

    .line 37
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sprint/smps/activities/EditPaymentAccount;->successful:Z

    .line 41
    sput-object p0, Lcom/sprint/smps/activities/EditPaymentAccount;->parentActivity:Lcom/sprint/smps/activities/EditPaymentAccount;

    .line 42
    const-string v0, "Edit Payment Account"

    invoke-static {p0, v0}, Lcom/sprint/smps/activities/ActivityHelper;->addActivity(Landroid/app/Activity;Ljava/lang/String;)V

    .line 43
    return-void
.end method

.method static synthetic access$0()Lcom/sprint/smps/activities/EditPaymentAccount;
    .registers 1

    .prologue
    .line 36
    sget-object v0, Lcom/sprint/smps/activities/EditPaymentAccount;->parentActivity:Lcom/sprint/smps/activities/EditPaymentAccount;

    return-object v0
.end method

.method static synthetic access$1(Lcom/sprint/smps/activities/EditPaymentAccount;Z)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 37
    iput-boolean p1, p0, Lcom/sprint/smps/activities/EditPaymentAccount;->successful:Z

    return-void
.end method

.method static synthetic access$2(Lcom/sprint/smps/activities/EditPaymentAccount;)Z
    .registers 2
    .parameter

    .prologue
    .line 37
    iget-boolean v0, p0, Lcom/sprint/smps/activities/EditPaymentAccount;->successful:Z

    return v0
.end method

.method static synthetic access$3(Lcom/sprint/smps/activities/EditPaymentAccount;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Landroid/widget/TextView;)V
    .registers 5
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 278
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sprint/smps/activities/EditPaymentAccount;->showAlert(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Landroid/widget/TextView;)V

    return-void
.end method

.method private getPosition(Landroid/widget/Spinner;Ljava/lang/String;)I
    .registers 7
    .parameter "spinner"
    .parameter "item"

    .prologue
    .line 122
    const/4 v1, 0x0

    .line 123
    .local v1, pos:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_2
    invoke-virtual {p1}, Landroid/widget/Spinner;->getCount()I

    move-result v3

    if-lt v0, v3, :cond_9

    .line 133
    :goto_8
    return v1

    .line 125
    :cond_9
    invoke-virtual {p1, v0}, Landroid/widget/Spinner;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 126
    .local v2, val:Ljava/lang/String;
    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_17

    .line 128
    move v1, v0

    .line 129
    goto :goto_8

    .line 123
    :cond_17
    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method

.method private savePaymentAccount()V
    .registers 3

    .prologue
    .line 220
    new-instance v0, Lcom/sprint/smps/activities/EditPaymentAccount$2;

    invoke-direct {v0, p0}, Lcom/sprint/smps/activities/EditPaymentAccount$2;-><init>(Lcom/sprint/smps/activities/EditPaymentAccount;)V

    .line 246
    .local v0, runnable:Ljava/lang/Runnable;
    new-instance v1, Ljava/lang/Thread;

    invoke-direct {v1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 247
    return-void
.end method

.method private showAlert(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Landroid/widget/TextView;)V
    .registers 8
    .parameter "title"
    .parameter "msg"
    .parameter "context"
    .parameter "view"

    .prologue
    .line 280
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 282
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 283
    invoke-virtual {v0, p2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 284
    const-string v1, "OK"

    new-instance v2, Lcom/sprint/smps/activities/EditPaymentAccount$4;

    invoke-direct {v2, p0}, Lcom/sprint/smps/activities/EditPaymentAccount$4;-><init>(Lcom/sprint/smps/activities/EditPaymentAccount;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 292
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 293
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 294
    return-void
.end method

.method private validateData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)Z
    .registers 15
    .parameter "acctNickName"
    .parameter "street"
    .parameter "city"
    .parameter "zipcode"
    .parameter "expMonth"
    .parameter "expYear"
    .parameter "nameOnCard"

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x1

    const v6, 0x7f080006

    .line 172
    iput-object v3, p0, Lcom/sprint/smps/activities/EditPaymentAccount;->errorMessage:Ljava/lang/String;

    .line 173
    iput-object v3, p0, Lcom/sprint/smps/activities/EditPaymentAccount;->viewToHaveFocus:Landroid/view/View;

    .line 175
    if-eqz p1, :cond_11

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_26

    .line 176
    :cond_11
    const-string v3, "Account nickname must be entered."

    iput-object v3, p0, Lcom/sprint/smps/activities/EditPaymentAccount;->errorMessage:Ljava/lang/String;

    .line 177
    const v3, 0x7f080008

    invoke-virtual {p0, v3}, Lcom/sprint/smps/activities/EditPaymentAccount;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/sprint/smps/activities/EditPaymentAccount;->viewToHaveFocus:Landroid/view/View;

    .line 215
    :cond_20
    :goto_20
    iget-object v3, p0, Lcom/sprint/smps/activities/EditPaymentAccount;->errorMessage:Ljava/lang/String;

    if-nez v3, :cond_cd

    move v3, v4

    :goto_25
    return v3

    .line 179
    :cond_26
    if-eqz p2, :cond_2e

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_3e

    .line 180
    :cond_2e
    const-string v3, "Street must be entered."

    iput-object v3, p0, Lcom/sprint/smps/activities/EditPaymentAccount;->errorMessage:Ljava/lang/String;

    .line 181
    const v3, 0x7f080003

    invoke-virtual {p0, v3}, Lcom/sprint/smps/activities/EditPaymentAccount;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/sprint/smps/activities/EditPaymentAccount;->viewToHaveFocus:Landroid/view/View;

    goto :goto_20

    .line 183
    :cond_3e
    if-eqz p3, :cond_46

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_56

    .line 184
    :cond_46
    const-string v3, "City must be entered."

    iput-object v3, p0, Lcom/sprint/smps/activities/EditPaymentAccount;->errorMessage:Ljava/lang/String;

    .line 185
    const v3, 0x7f080004

    invoke-virtual {p0, v3}, Lcom/sprint/smps/activities/EditPaymentAccount;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/sprint/smps/activities/EditPaymentAccount;->viewToHaveFocus:Landroid/view/View;

    goto :goto_20

    .line 187
    :cond_56
    if-eqz p4, :cond_5e

    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_6b

    .line 188
    :cond_5e
    const-string v3, "Zipcode must be entered."

    iput-object v3, p0, Lcom/sprint/smps/activities/EditPaymentAccount;->errorMessage:Ljava/lang/String;

    .line 189
    invoke-virtual {p0, v6}, Lcom/sprint/smps/activities/EditPaymentAccount;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/sprint/smps/activities/EditPaymentAccount;->viewToHaveFocus:Landroid/view/View;

    goto :goto_20

    .line 191
    :cond_6b
    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v5, 0x5

    if-eq v3, v5, :cond_7f

    .line 192
    const-string v3, "Zipcode must be 5 digits long."

    iput-object v3, p0, Lcom/sprint/smps/activities/EditPaymentAccount;->errorMessage:Ljava/lang/String;

    .line 193
    invoke-virtual {p0, v6}, Lcom/sprint/smps/activities/EditPaymentAccount;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/sprint/smps/activities/EditPaymentAccount;->viewToHaveFocus:Landroid/view/View;

    goto :goto_20

    .line 195
    :cond_7f
    invoke-static {p4}, Lcom/sprint/smps/util/Utilities;->isNumeric(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_92

    .line 196
    const-string v3, "Zipcode must be numeric."

    iput-object v3, p0, Lcom/sprint/smps/activities/EditPaymentAccount;->errorMessage:Ljava/lang/String;

    .line 197
    invoke-virtual {p0, v6}, Lcom/sprint/smps/activities/EditPaymentAccount;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/sprint/smps/activities/EditPaymentAccount;->viewToHaveFocus:Landroid/view/View;

    goto :goto_20

    .line 199
    :cond_92
    if-eqz p7, :cond_9a

    invoke-virtual {p7}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_ab

    .line 200
    :cond_9a
    const-string v3, "Name on card must be entered."

    iput-object v3, p0, Lcom/sprint/smps/activities/EditPaymentAccount;->errorMessage:Ljava/lang/String;

    .line 201
    const v3, 0x7f08000e

    invoke-virtual {p0, v3}, Lcom/sprint/smps/activities/EditPaymentAccount;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/sprint/smps/activities/EditPaymentAccount;->viewToHaveFocus:Landroid/view/View;

    goto/16 :goto_20

    .line 205
    :cond_ab
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 206
    .local v0, cal:Ljava/util/Calendar;
    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 207
    .local v1, currMonth:I
    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .line 208
    .local v2, currYear:I
    if-lt p6, v2, :cond_be

    if-ne p6, v2, :cond_20

    if-ge p5, v1, :cond_20

    .line 210
    :cond_be
    const-string v3, "Expiration date must be a future date."

    iput-object v3, p0, Lcom/sprint/smps/activities/EditPaymentAccount;->errorMessage:Ljava/lang/String;

    .line 211
    const v3, 0x7f08000c

    invoke-virtual {p0, v3}, Lcom/sprint/smps/activities/EditPaymentAccount;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/sprint/smps/activities/EditPaymentAccount;->viewToHaveFocus:Landroid/view/View;

    goto/16 :goto_20

    .line 215
    .end local v0           #cal:Ljava/util/Calendar;
    .end local v1           #currMonth:I
    .end local v2           #currYear:I
    :cond_cd
    const/4 v3, 0x0

    goto/16 :goto_25
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 13
    .parameter "v"

    .prologue
    .line 148
    invoke-static {}, Lcom/sprint/smps/properties/Properties;->referenced()V

    .line 149
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v5, 0x7f08001e

    if-ne v0, v5, :cond_a4

    .line 151
    const v0, 0x7f080008

    invoke-virtual {p0, v0}, Lcom/sprint/smps/activities/EditPaymentAccount;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 152
    .local v1, acctNickName:Ljava/lang/String;
    const v0, 0x7f080009

    invoke-virtual {p0, v0}, Lcom/sprint/smps/activities/EditPaymentAccount;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    .line 153
    .local v2, street:Ljava/lang/String;
    const v0, 0x7f080004

    invoke-virtual {p0, v0}, Lcom/sprint/smps/activities/EditPaymentAccount;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    .line 154
    .local v3, city:Ljava/lang/String;
    const v0, 0x7f080006

    invoke-virtual {p0, v0}, Lcom/sprint/smps/activities/EditPaymentAccount;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    .line 155
    .local v4, zipcode:Ljava/lang/String;
    const v0, 0x7f08000e

    invoke-virtual {p0, v0}, Lcom/sprint/smps/activities/EditPaymentAccount;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    .line 156
    .local v7, nameOnCard:Ljava/lang/String;
    const v0, 0x7f08000c

    invoke-virtual {p0, v0}, Lcom/sprint/smps/activities/EditPaymentAccount;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    .line 157
    .local v8, expMonth:Ljava/lang/String;
    const v0, 0x7f08000d

    invoke-virtual {p0, v0}, Lcom/sprint/smps/activities/EditPaymentAccount;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    .line 158
    .local v9, expYear:Ljava/lang/String;
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v6

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/sprint/smps/activities/EditPaymentAccount;->validateData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)Z

    move-result v10

    .line 159
    .local v10, valid:Z
    if-eqz v10, :cond_a5

    .line 161
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sprint/smps/activities/EditPaymentAccount;->showDialog(I)V

    .line 162
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sprint/smps/activities/EditPaymentAccount;->successful:Z

    .line 163
    invoke-direct {p0}, Lcom/sprint/smps/activities/EditPaymentAccount;->savePaymentAccount()V

    .line 168
    .end local v1           #acctNickName:Ljava/lang/String;
    .end local v2           #street:Ljava/lang/String;
    .end local v3           #city:Ljava/lang/String;
    .end local v4           #zipcode:Ljava/lang/String;
    .end local v7           #nameOnCard:Ljava/lang/String;
    .end local v8           #expMonth:Ljava/lang/String;
    .end local v9           #expYear:Ljava/lang/String;
    .end local v10           #valid:Z
    :cond_a4
    :goto_a4
    return-void

    .line 166
    .restart local v1       #acctNickName:Ljava/lang/String;
    .restart local v2       #street:Ljava/lang/String;
    .restart local v3       #city:Ljava/lang/String;
    .restart local v4       #zipcode:Ljava/lang/String;
    .restart local v7       #nameOnCard:Ljava/lang/String;
    .restart local v8       #expMonth:Ljava/lang/String;
    .restart local v9       #expYear:Ljava/lang/String;
    .restart local v10       #valid:Z
    :cond_a5
    const-string v0, "Payment Account"

    iget-object v5, p0, Lcom/sprint/smps/activities/EditPaymentAccount;->errorMessage:Ljava/lang/String;

    iget-object v6, p0, Lcom/sprint/smps/activities/EditPaymentAccount;->viewToHaveFocus:Landroid/view/View;

    invoke-static {v0, v5, p0, v6}, Lcom/sprint/smps/util/Utilities;->showAlert(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Landroid/view/View;)V

    goto :goto_a4
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 16
    .parameter "savedInstanceState"

    .prologue
    const v13, 0x7f08000d

    const v12, 0x7f08000c

    const v11, 0x7f080005

    const v10, 0x7f03001b

    const v9, 0x1090009

    .line 48
    invoke-super {p0, p1}, Lcom/sprint/smps/activities/ActivityHelper;->onCreate(Landroid/os/Bundle;)V

    .line 49
    invoke-static {}, Lcom/sprint/smps/properties/Properties;->referenced()V

    .line 50
    const/4 v6, 0x7

    invoke-virtual {p0, v6}, Lcom/sprint/smps/activities/EditPaymentAccount;->requestWindowFeature(I)Z

    .line 51
    const v6, 0x7f030009

    invoke-virtual {p0, v6}, Lcom/sprint/smps/activities/EditPaymentAccount;->setContentView(I)V

    .line 53
    sget-object v6, Lcom/sprint/smps/properties/Properties;->localyticsSession:Lcom/Localytics/android/LocalyticsSession;

    const-string v7, "Edit Payment Account"

    invoke-virtual {v6, v7}, Lcom/Localytics/android/LocalyticsSession;->tagEvent(Ljava/lang/String;)V

    .line 55
    invoke-virtual {p0}, Lcom/sprint/smps/activities/EditPaymentAccount;->getWindow()Landroid/view/Window;

    move-result-object v6

    const/4 v7, 0x7

    const v8, 0x7f03001c

    invoke-virtual {v6, v7, v8}, Landroid/view/Window;->setFeatureInt(II)V

    .line 56
    const v6, 0x7f08004a

    invoke-virtual {p0, v6}, Lcom/sprint/smps/activities/EditPaymentAccount;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    const v7, 0x7f060030

    invoke-virtual {p0, v7}, Lcom/sprint/smps/activities/EditPaymentAccount;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 57
    const v6, 0x7f08004b

    invoke-virtual {p0, v6}, Lcom/sprint/smps/activities/EditPaymentAccount;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    const-string v7, ""

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 59
    new-instance v5, Lcom/sprint/smps/activities/EditPaymentAccount$1;

    invoke-direct {v5, p0}, Lcom/sprint/smps/activities/EditPaymentAccount$1;-><init>(Lcom/sprint/smps/activities/EditPaymentAccount;)V

    .line 64
    .local v5, textWatcher:Landroid/text/TextWatcher;
    const v6, 0x7f080008

    invoke-virtual {p0, v6}, Lcom/sprint/smps/activities/EditPaymentAccount;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    invoke-virtual {v6, v5}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 65
    const v6, 0x7f080009

    invoke-virtual {p0, v6}, Lcom/sprint/smps/activities/EditPaymentAccount;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    invoke-virtual {v6, v5}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 66
    const v6, 0x7f080004

    invoke-virtual {p0, v6}, Lcom/sprint/smps/activities/EditPaymentAccount;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    invoke-virtual {v6, v5}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 67
    const v6, 0x7f080006

    invoke-virtual {p0, v6}, Lcom/sprint/smps/activities/EditPaymentAccount;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    invoke-virtual {v6, v5}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 68
    const v6, 0x7f08000a

    invoke-virtual {p0, v6}, Lcom/sprint/smps/activities/EditPaymentAccount;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    invoke-virtual {v6, v5}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 69
    const v6, 0x7f08000e

    invoke-virtual {p0, v6}, Lcom/sprint/smps/activities/EditPaymentAccount;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    invoke-virtual {v6, v5}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 71
    invoke-virtual {p0, v11}, Lcom/sprint/smps/activities/EditPaymentAccount;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Spinner;

    .line 72
    .local v4, s:Landroid/widget/Spinner;
    const v6, 0x7f050001

    invoke-static {p0, v6, v10}, Landroid/widget/ArrayAdapter;->createFromResource(Landroid/content/Context;II)Landroid/widget/ArrayAdapter;

    move-result-object v0

    .line 73
    .local v0, adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<*>;"
    invoke-virtual {v0, v9}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 74
    invoke-virtual {v4, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 76
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    .line 77
    .local v2, cal:Ljava/util/Calendar;
    const/4 v6, 0x1

    invoke-virtual {v2, v6}, Ljava/util/Calendar;->get(I)I

    move-result v3

    .line 79
    .local v3, currYear:I
    invoke-virtual {p0, v12}, Lcom/sprint/smps/activities/EditPaymentAccount;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .end local v4           #s:Landroid/widget/Spinner;
    check-cast v4, Landroid/widget/Spinner;

    .line 80
    .restart local v4       #s:Landroid/widget/Spinner;
    const/high16 v6, 0x7f05

    invoke-static {p0, v6, v10}, Landroid/widget/ArrayAdapter;->createFromResource(Landroid/content/Context;II)Landroid/widget/ArrayAdapter;

    move-result-object v0

    .line 81
    invoke-virtual {v0, v9}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 82
    invoke-virtual {v4, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 84
    invoke-virtual {p0, v13}, Lcom/sprint/smps/activities/EditPaymentAccount;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .end local v4           #s:Landroid/widget/Spinner;
    check-cast v4, Landroid/widget/Spinner;

    .line 85
    .restart local v4       #s:Landroid/widget/Spinner;
    new-instance v0, Landroid/widget/ArrayAdapter;

    .end local v0           #adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<*>;"
    invoke-virtual {p0, v3}, Lcom/sprint/smps/activities/EditPaymentAccount;->getYearArray(I)[Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, p0, v10, v6}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 86
    .restart local v0       #adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<*>;"
    invoke-virtual {v0, v9}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 87
    invoke-virtual {v4, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 89
    const v6, 0x7f08001e

    invoke-virtual {p0, v6}, Lcom/sprint/smps/activities/EditPaymentAccount;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 90
    .local v1, button:Landroid/widget/Button;
    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 92
    sget-object v6, Lcom/sprint/smps/activities/PaymentAccountDetail;->paymentAccount:Lcom/sprint/smps/pojo/PaymentAccount;

    if-eqz v6, :cond_1a9

    .line 94
    const v6, 0x7f080008

    invoke-virtual {p0, v6}, Lcom/sprint/smps/activities/EditPaymentAccount;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    sget-object v7, Lcom/sprint/smps/activities/PaymentAccountDetail;->paymentAccount:Lcom/sprint/smps/pojo/PaymentAccount;

    invoke-virtual {v7}, Lcom/sprint/smps/pojo/PaymentAccount;->getNickName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 95
    const v6, 0x7f080009

    invoke-virtual {p0, v6}, Lcom/sprint/smps/activities/EditPaymentAccount;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    sget-object v7, Lcom/sprint/smps/activities/PaymentAccountDetail;->paymentAccount:Lcom/sprint/smps/pojo/PaymentAccount;

    invoke-virtual {v7}, Lcom/sprint/smps/pojo/PaymentAccount;->getStreet()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 96
    const v6, 0x7f080004

    invoke-virtual {p0, v6}, Lcom/sprint/smps/activities/EditPaymentAccount;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    sget-object v7, Lcom/sprint/smps/activities/PaymentAccountDetail;->paymentAccount:Lcom/sprint/smps/pojo/PaymentAccount;

    invoke-virtual {v7}, Lcom/sprint/smps/pojo/PaymentAccount;->getCity()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 97
    invoke-virtual {p0, v11}, Lcom/sprint/smps/activities/EditPaymentAccount;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Spinner;

    invoke-virtual {p0, v11}, Lcom/sprint/smps/activities/EditPaymentAccount;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/Spinner;

    sget-object v8, Lcom/sprint/smps/activities/PaymentAccountDetail;->paymentAccount:Lcom/sprint/smps/pojo/PaymentAccount;

    invoke-virtual {v8}, Lcom/sprint/smps/pojo/PaymentAccount;->getState()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v7, v8}, Lcom/sprint/smps/activities/EditPaymentAccount;->getPosition(Landroid/widget/Spinner;Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/widget/Spinner;->setSelection(I)V

    .line 98
    const v6, 0x7f080006

    invoke-virtual {p0, v6}, Lcom/sprint/smps/activities/EditPaymentAccount;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    sget-object v7, Lcom/sprint/smps/activities/PaymentAccountDetail;->paymentAccount:Lcom/sprint/smps/pojo/PaymentAccount;

    invoke-virtual {v7}, Lcom/sprint/smps/pojo/PaymentAccount;->getZip()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 99
    const v6, 0x7f08000a

    invoke-virtual {p0, v6}, Lcom/sprint/smps/activities/EditPaymentAccount;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    sget-object v7, Lcom/sprint/smps/activities/PaymentAccountDetail;->paymentAccount:Lcom/sprint/smps/pojo/PaymentAccount;

    invoke-virtual {v7}, Lcom/sprint/smps/pojo/PaymentAccount;->getMaskedAccountNumber()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 100
    invoke-virtual {p0, v12}, Lcom/sprint/smps/activities/EditPaymentAccount;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Spinner;

    invoke-virtual {p0, v12}, Lcom/sprint/smps/activities/EditPaymentAccount;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/Spinner;

    sget-object v8, Lcom/sprint/smps/activities/PaymentAccountDetail;->paymentAccount:Lcom/sprint/smps/pojo/PaymentAccount;

    invoke-virtual {v8}, Lcom/sprint/smps/pojo/PaymentAccount;->getExpiryMonth()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v7, v8}, Lcom/sprint/smps/activities/EditPaymentAccount;->getPosition(Landroid/widget/Spinner;Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/widget/Spinner;->setSelection(I)V

    .line 101
    invoke-virtual {p0, v13}, Lcom/sprint/smps/activities/EditPaymentAccount;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Spinner;

    invoke-virtual {p0, v13}, Lcom/sprint/smps/activities/EditPaymentAccount;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/Spinner;

    sget-object v8, Lcom/sprint/smps/activities/PaymentAccountDetail;->paymentAccount:Lcom/sprint/smps/pojo/PaymentAccount;

    invoke-virtual {v8}, Lcom/sprint/smps/pojo/PaymentAccount;->getExpiryYear()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v7, v8}, Lcom/sprint/smps/activities/EditPaymentAccount;->getPosition(Landroid/widget/Spinner;Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/widget/Spinner;->setSelection(I)V

    .line 102
    const v6, 0x7f08000e

    invoke-virtual {p0, v6}, Lcom/sprint/smps/activities/EditPaymentAccount;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    sget-object v7, Lcom/sprint/smps/activities/PaymentAccountDetail;->paymentAccount:Lcom/sprint/smps/pojo/PaymentAccount;

    invoke-virtual {v7}, Lcom/sprint/smps/pojo/PaymentAccount;->getNameOnAccount()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 105
    :cond_1a9
    invoke-static {p0}, Lcom/sprint/smps/TimeOutThread;->listener(Lcom/sprint/smps/TimeoutListener;)V

    .line 106
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .registers 5
    .parameter "id"

    .prologue
    .line 251
    const/4 v0, 0x0

    .line 253
    .local v0, dialog:Landroid/app/Dialog;
    if-nez p1, :cond_1e

    .line 255
    new-instance v1, Landroid/app/ProgressDialog;

    invoke-direct {v1, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 256
    .local v1, progDialog:Landroid/app/ProgressDialog;
    const-string v2, "Please wait, changing payment account..."

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 257
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 258
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 260
    new-instance v2, Lcom/sprint/smps/activities/EditPaymentAccount$3;

    invoke-direct {v2, p0}, Lcom/sprint/smps/activities/EditPaymentAccount$3;-><init>(Lcom/sprint/smps/activities/EditPaymentAccount;)V

    .line 259
    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 272
    move-object v0, v1

    .line 275
    .end local v1           #progDialog:Landroid/app/ProgressDialog;
    :cond_1e
    return-object v0
.end method

.method public onDestroy()V
    .registers 2

    .prologue
    .line 110
    invoke-super {p0}, Lcom/sprint/smps/activities/ActivityHelper;->onDestroy()V

    .line 111
    const-string v0, "Edit Payment Account"

    invoke-static {v0}, Lcom/sprint/smps/activities/EditPaymentAccount;->dismissActivity(Ljava/lang/String;)V

    .line 112
    return-void
.end method

.method public onPause()V
    .registers 1

    .prologue
    .line 116
    invoke-static {}, Lcom/sprint/smps/TimeOutThread;->bumpTimout()V

    .line 117
    invoke-super {p0}, Lcom/sprint/smps/activities/ActivityHelper;->onPause()V

    .line 118
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .registers 2
    .parameter "hasFocus"

    .prologue
    .line 139
    if-eqz p1, :cond_8

    .line 141
    invoke-static {}, Lcom/sprint/smps/properties/Properties;->referenced()V

    .line 142
    invoke-static {p0}, Lcom/sprint/smps/TimeOutThread;->listener(Lcom/sprint/smps/TimeoutListener;)V

    .line 144
    :cond_8
    return-void
.end method
