.class public Lcom/sprint/smps/activities/SignupPage2;
.super Lcom/sprint/smps/activities/SignupAbstract;
.source "SignupPage2.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/sprint/smps/TimeoutListener;


# static fields
.field private static final TAG:Ljava/lang/String; = null

.field public static final name:Ljava/lang/String; = "Signup Page 2"


# instance fields
.field private buttons:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Class",
            "<*>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 28
    const-class v0, Lcom/sprint/smps/activities/SignupPage2;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sprint/smps/activities/SignupPage2;->TAG:Ljava/lang/String;

    .line 25
    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/sprint/smps/activities/SignupAbstract;-><init>()V

    .line 30
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/sprint/smps/activities/SignupPage2;->buttons:Ljava/util/Hashtable;

    .line 34
    const-string v0, "Signup Page 2"

    invoke-static {p0, v0}, Lcom/sprint/smps/activities/ActivityHelper;->addActivity(Landroid/app/Activity;Ljava/lang/String;)V

    .line 35
    return-void
.end method

.method private saveData()V
    .registers 6

    .prologue
    const v4, 0x7f08000d

    const v3, 0x7f08000c

    .line 154
    sget-object v1, Lcom/sprint/smps/activities/SignupPage2;->entryValues:Ljava/util/Hashtable;

    const-string v2, "paymentCardNumber"

    const v0, 0x7f08000a

    invoke-virtual {p0, v0}, Lcom/sprint/smps/activities/SignupPage2;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    sget-object v1, Lcom/sprint/smps/activities/SignupPage2;->entryValues:Ljava/util/Hashtable;

    const-string v2, "cvvNumber"

    const v0, 0x7f08000b

    invoke-virtual {p0, v0}, Lcom/sprint/smps/activities/SignupPage2;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    sget-object v1, Lcom/sprint/smps/activities/SignupPage2;->entryValues:Ljava/util/Hashtable;

    const-string v2, "acctNickName"

    const v0, 0x7f080045

    invoke-virtual {p0, v0}, Lcom/sprint/smps/activities/SignupPage2;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    sget-object v1, Lcom/sprint/smps/activities/SignupPage2;->entryValues:Ljava/util/Hashtable;

    const-string v2, "month"

    invoke-virtual {p0, v3}, Lcom/sprint/smps/activities/SignupPage2;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    sget-object v1, Lcom/sprint/smps/activities/SignupPage2;->entryValues:Ljava/util/Hashtable;

    const-string v2, "monthIndex"

    invoke-virtual {p0, v3}, Lcom/sprint/smps/activities/SignupPage2;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    sget-object v1, Lcom/sprint/smps/activities/SignupPage2;->entryValues:Ljava/util/Hashtable;

    const-string v2, "year"

    invoke-virtual {p0, v4}, Lcom/sprint/smps/activities/SignupPage2;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    sget-object v1, Lcom/sprint/smps/activities/SignupPage2;->entryValues:Ljava/util/Hashtable;

    const-string v2, "yearIndex"

    invoke-virtual {p0, v4}, Lcom/sprint/smps/activities/SignupPage2;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    return-void
.end method

.method private showData()V
    .registers 5

    .prologue
    .line 87
    const-string v1, ""

    .line 88
    .local v1, value:Ljava/lang/String;
    sget-object v2, Lcom/sprint/smps/activities/SignupPage2;->entryValues:Ljava/util/Hashtable;

    const-string v3, "paymentCardNumber"

    invoke-virtual {v2, v3}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    .line 89
    sget-object v2, Lcom/sprint/smps/activities/SignupPage2;->entryValues:Ljava/util/Hashtable;

    const-string v3, "paymentCardNumber"

    invoke-virtual {v2, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #value:Ljava/lang/String;
    check-cast v1, Ljava/lang/String;

    .line 90
    .restart local v1       #value:Ljava/lang/String;
    :cond_16
    const v2, 0x7f08000a

    invoke-virtual {p0, v2}, Lcom/sprint/smps/activities/SignupPage2;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 92
    const-string v1, ""

    .line 93
    sget-object v2, Lcom/sprint/smps/activities/SignupPage2;->entryValues:Ljava/util/Hashtable;

    const-string v3, "cvvNumber"

    invoke-virtual {v2, v3}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_38

    .line 94
    sget-object v2, Lcom/sprint/smps/activities/SignupPage2;->entryValues:Ljava/util/Hashtable;

    const-string v3, "cvvNumber"

    invoke-virtual {v2, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #value:Ljava/lang/String;
    check-cast v1, Ljava/lang/String;

    .line 95
    .restart local v1       #value:Ljava/lang/String;
    :cond_38
    const v2, 0x7f08000b

    invoke-virtual {p0, v2}, Lcom/sprint/smps/activities/SignupPage2;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 97
    const/4 v0, 0x0

    .line 98
    .local v0, iValue:Ljava/lang/Integer;
    sget-object v2, Lcom/sprint/smps/activities/SignupPage2;->entryValues:Ljava/util/Hashtable;

    const-string v3, "monthIndex"

    invoke-virtual {v2, v3}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_69

    .line 100
    sget-object v2, Lcom/sprint/smps/activities/SignupPage2;->entryValues:Ljava/util/Hashtable;

    const-string v3, "monthIndex"

    invoke-virtual {v2, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #iValue:Ljava/lang/Integer;
    check-cast v0, Ljava/lang/Integer;

    .line 101
    .restart local v0       #iValue:Ljava/lang/Integer;
    const v2, 0x7f08000c

    invoke-virtual {p0, v2}, Lcom/sprint/smps/activities/SignupPage2;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Spinner;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/Spinner;->setSelection(I)V

    .line 104
    :cond_69
    const/4 v0, 0x0

    .line 105
    sget-object v2, Lcom/sprint/smps/activities/SignupPage2;->entryValues:Ljava/util/Hashtable;

    const-string v3, "yearIndex"

    invoke-virtual {v2, v3}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8e

    .line 107
    sget-object v2, Lcom/sprint/smps/activities/SignupPage2;->entryValues:Ljava/util/Hashtable;

    const-string v3, "yearIndex"

    invoke-virtual {v2, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #iValue:Ljava/lang/Integer;
    check-cast v0, Ljava/lang/Integer;

    .line 108
    .restart local v0       #iValue:Ljava/lang/Integer;
    const v2, 0x7f08000d

    invoke-virtual {p0, v2}, Lcom/sprint/smps/activities/SignupPage2;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Spinner;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/Spinner;->setSelection(I)V

    .line 111
    :cond_8e
    const-string v1, ""

    .line 112
    sget-object v2, Lcom/sprint/smps/activities/SignupPage2;->entryValues:Ljava/util/Hashtable;

    const-string v3, "acctNickName"

    invoke-virtual {v2, v3}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a4

    .line 113
    sget-object v2, Lcom/sprint/smps/activities/SignupPage2;->entryValues:Ljava/util/Hashtable;

    const-string v3, "acctNickName"

    invoke-virtual {v2, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #value:Ljava/lang/String;
    check-cast v1, Ljava/lang/String;

    .line 114
    .restart local v1       #value:Ljava/lang/String;
    :cond_a4
    const v2, 0x7f080045

    invoke-virtual {p0, v2}, Lcom/sprint/smps/activities/SignupPage2;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 115
    return-void
.end method

.method private validateData(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)Z
    .registers 13
    .parameter "paymentCardNumber"
    .parameter "cvvNumber"
    .parameter "expMonth"
    .parameter "expYear"
    .parameter "acctNickName"

    .prologue
    const/4 v3, 0x0

    const v6, 0x7f08000a

    const/4 v4, 0x1

    .line 182
    iput-object v3, p0, Lcom/sprint/smps/activities/SignupPage2;->errorMessage:Ljava/lang/String;

    .line 183
    iput-object v3, p0, Lcom/sprint/smps/activities/SignupPage2;->viewToHaveFocus:Landroid/view/View;

    .line 185
    if-eqz p1, :cond_1b

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v5, 0xf

    if-lt v3, v5, :cond_1b

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v5, 0x13

    if-le v3, v5, :cond_2d

    .line 186
    :cond_1b
    const-string v3, "Payment card number must be 15 to 19 digits long."

    iput-object v3, p0, Lcom/sprint/smps/activities/SignupPage2;->errorMessage:Ljava/lang/String;

    .line 187
    invoke-virtual {p0, v6}, Lcom/sprint/smps/activities/SignupPage2;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/sprint/smps/activities/SignupPage2;->viewToHaveFocus:Landroid/view/View;

    .line 213
    :cond_27
    :goto_27
    iget-object v3, p0, Lcom/sprint/smps/activities/SignupPage2;->errorMessage:Ljava/lang/String;

    if-nez v3, :cond_9b

    move v3, v4

    :goto_2c
    return v3

    .line 189
    :cond_2d
    if-eqz p2, :cond_3d

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v5, 0x3

    if-lt v3, v5, :cond_3d

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v5, 0x5

    if-le v3, v5, :cond_4d

    .line 190
    :cond_3d
    const-string v3, "CVV number must be 3 to 5 digits long."

    iput-object v3, p0, Lcom/sprint/smps/activities/SignupPage2;->errorMessage:Ljava/lang/String;

    .line 191
    const v3, 0x7f08000b

    invoke-virtual {p0, v3}, Lcom/sprint/smps/activities/SignupPage2;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/sprint/smps/activities/SignupPage2;->viewToHaveFocus:Landroid/view/View;

    goto :goto_27

    .line 193
    :cond_4d
    invoke-static {p1}, Lcom/sprint/smps/util/Utilities;->isNumeric(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_60

    .line 194
    const-string v3, "Payment card Number must contain only digits."

    iput-object v3, p0, Lcom/sprint/smps/activities/SignupPage2;->errorMessage:Ljava/lang/String;

    .line 195
    invoke-virtual {p0, v6}, Lcom/sprint/smps/activities/SignupPage2;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/sprint/smps/activities/SignupPage2;->viewToHaveFocus:Landroid/view/View;

    goto :goto_27

    .line 197
    :cond_60
    if-eqz p5, :cond_68

    invoke-virtual {p5}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_78

    .line 198
    :cond_68
    const-string v3, "Account nickname must be entered."

    iput-object v3, p0, Lcom/sprint/smps/activities/SignupPage2;->errorMessage:Ljava/lang/String;

    .line 199
    const v3, 0x7f080045

    invoke-virtual {p0, v3}, Lcom/sprint/smps/activities/SignupPage2;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/sprint/smps/activities/SignupPage2;->viewToHaveFocus:Landroid/view/View;

    goto :goto_27

    .line 203
    :cond_78
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 204
    .local v0, cal:Ljava/util/Calendar;
    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    add-int/lit8 v1, v3, 0x1

    .line 205
    .local v1, currMonth:I
    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .line 206
    .local v2, currYear:I
    if-lt p4, v2, :cond_8d

    if-ne p4, v2, :cond_27

    if-ge p3, v1, :cond_27

    .line 208
    :cond_8d
    const-string v3, "Expiration date must be a future date."

    iput-object v3, p0, Lcom/sprint/smps/activities/SignupPage2;->errorMessage:Ljava/lang/String;

    .line 209
    const v3, 0x7f08000c

    invoke-virtual {p0, v3}, Lcom/sprint/smps/activities/SignupPage2;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/sprint/smps/activities/SignupPage2;->viewToHaveFocus:Landroid/view/View;

    goto :goto_27

    .line 213
    .end local v0           #cal:Ljava/util/Calendar;
    .end local v1           #currMonth:I
    .end local v2           #currYear:I
    :cond_9b
    const/4 v3, 0x0

    goto :goto_2c
.end method


# virtual methods
.method public finish()V
    .registers 2

    .prologue
    .line 165
    invoke-super {p0}, Lcom/sprint/smps/activities/SignupAbstract;->finish()V

    .line 166
    invoke-direct {p0}, Lcom/sprint/smps/activities/SignupPage2;->saveData()V

    .line 167
    const-string v0, "Signup Page 2"

    invoke-static {v0}, Lcom/sprint/smps/activities/SignupPage2;->dismissActivity(Ljava/lang/String;)V

    .line 168
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 12
    .parameter "v"

    .prologue
    .line 125
    invoke-static {}, Lcom/sprint/smps/properties/Properties;->referenced()V

    .line 126
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_a4

    .line 150
    :cond_a
    :goto_a
    return-void

    .line 130
    :pswitch_b
    const v0, 0x7f08000a

    invoke-virtual {p0, v0}, Lcom/sprint/smps/activities/SignupPage2;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 131
    .local v1, paymentCardNumber:Ljava/lang/String;
    const v0, 0x7f08000b

    invoke-virtual {p0, v0}, Lcom/sprint/smps/activities/SignupPage2;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    .line 132
    .local v2, cvvNumber:Ljava/lang/String;
    const v0, 0x7f080045

    invoke-virtual {p0, v0}, Lcom/sprint/smps/activities/SignupPage2;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    .line 133
    .local v5, acctNickName:Ljava/lang/String;
    const v0, 0x7f08000c

    invoke-virtual {p0, v0}, Lcom/sprint/smps/activities/SignupPage2;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    .line 134
    .local v6, expMonth:Ljava/lang/String;
    const v0, 0x7f08000d

    invoke-virtual {p0, v0}, Lcom/sprint/smps/activities/SignupPage2;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    .line 135
    .local v7, expYear:Ljava/lang/String;
    invoke-direct {p0}, Lcom/sprint/smps/activities/SignupPage2;->saveData()V

    .line 136
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/sprint/smps/activities/SignupPage2;->validateData(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)Z

    move-result v9

    .line 138
    .local v9, valid:Z
    if-eqz v9, :cond_99

    .line 140
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v3

    iget-object v0, p0, Lcom/sprint/smps/activities/SignupPage2;->buttons:Ljava/util/Hashtable;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    invoke-static {p0, v3, v0}, Lcom/sprint/smps/activities/ActivityHelper;->getIntent(Landroid/app/Activity;ILjava/lang/Class;)Landroid/content/Intent;

    move-result-object v8

    .line 141
    .local v8, intent:Landroid/content/Intent;
    if-eqz v8, :cond_a

    invoke-virtual {p0, v8}, Lcom/sprint/smps/activities/SignupPage2;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_a

    .line 145
    .end local v8           #intent:Landroid/content/Intent;
    :cond_99
    const-string v0, "Signup"

    iget-object v3, p0, Lcom/sprint/smps/activities/SignupPage2;->errorMessage:Ljava/lang/String;

    iget-object v4, p0, Lcom/sprint/smps/activities/SignupPage2;->viewToHaveFocus:Landroid/view/View;

    invoke-static {v0, v3, p0, v4}, Lcom/sprint/smps/util/Utilities;->showAlert(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Landroid/view/View;)V

    goto/16 :goto_a

    .line 126
    :pswitch_data_a4
    .packed-switch 0x7f080046
        :pswitch_b
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 15
    .parameter "savedInstanceState"

    .prologue
    const v12, 0x7f080046

    const v11, 0x7f03001b

    const v10, 0x1090009

    const/4 v9, 0x7

    .line 40
    invoke-super {p0, p1}, Lcom/sprint/smps/activities/SignupAbstract;->onCreate(Landroid/os/Bundle;)V

    .line 41
    invoke-static {}, Lcom/sprint/smps/properties/Properties;->referenced()V

    .line 42
    invoke-virtual {p0, v9}, Lcom/sprint/smps/activities/SignupPage2;->requestWindowFeature(I)Z

    .line 43
    const v7, 0x7f030018

    invoke-virtual {p0, v7}, Lcom/sprint/smps/activities/SignupPage2;->setContentView(I)V

    .line 46
    :try_start_19
    sget-object v7, Lcom/sprint/smps/properties/Properties;->localyticsSession:Lcom/Localytics/android/LocalyticsSession;

    const-string v8, "Signup Page 2"

    invoke-virtual {v7, v8}, Lcom/Localytics/android/LocalyticsSession;->tagEvent(Ljava/lang/String;)V
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_20} :catch_cd

    .line 48
    :goto_20
    invoke-virtual {p0}, Lcom/sprint/smps/activities/SignupPage2;->getWindow()Landroid/view/Window;

    move-result-object v7

    const v8, 0x7f03001c

    invoke-virtual {v7, v9, v8}, Landroid/view/Window;->setFeatureInt(II)V

    .line 49
    const v7, 0x7f08004a

    invoke-virtual {p0, v7}, Lcom/sprint/smps/activities/SignupPage2;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    const v8, 0x7f060021

    invoke-virtual {p0, v8}, Lcom/sprint/smps/activities/SignupPage2;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 50
    const v7, 0x7f08004b

    invoke-virtual {p0, v7}, Lcom/sprint/smps/activities/SignupPage2;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    const-string v8, ""

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 52
    new-instance v6, Lcom/sprint/smps/activities/SignupPage2$1;

    invoke-direct {v6, p0}, Lcom/sprint/smps/activities/SignupPage2$1;-><init>(Lcom/sprint/smps/activities/SignupPage2;)V

    .line 57
    .local v6, textWatcher:Landroid/text/TextWatcher;
    const v7, 0x7f08000a

    invoke-virtual {p0, v7}, Lcom/sprint/smps/activities/SignupPage2;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    invoke-virtual {v7, v6}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 58
    const v7, 0x7f08000b

    invoke-virtual {p0, v7}, Lcom/sprint/smps/activities/SignupPage2;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    invoke-virtual {v7, v6}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 59
    const v7, 0x7f080045

    invoke-virtual {p0, v7}, Lcom/sprint/smps/activities/SignupPage2;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    invoke-virtual {v7, v6}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 61
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    .line 62
    .local v2, cal:Ljava/util/Calendar;
    const/4 v7, 0x2

    invoke-virtual {v2, v7}, Ljava/util/Calendar;->get(I)I

    move-result v3

    .line 63
    .local v3, currMonth:I
    const/4 v7, 0x1

    invoke-virtual {v2, v7}, Ljava/util/Calendar;->get(I)I

    move-result v4

    .line 65
    .local v4, currYear:I
    const v7, 0x7f08000c

    invoke-virtual {p0, v7}, Lcom/sprint/smps/activities/SignupPage2;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Spinner;

    .line 66
    .local v5, s:Landroid/widget/Spinner;
    const/high16 v7, 0x7f05

    invoke-static {p0, v7, v11}, Landroid/widget/ArrayAdapter;->createFromResource(Landroid/content/Context;II)Landroid/widget/ArrayAdapter;

    move-result-object v0

    .line 67
    .local v0, adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<*>;"
    invoke-virtual {v0, v10}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 68
    invoke-virtual {v5, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 69
    invoke-virtual {v5, v3}, Landroid/widget/Spinner;->setSelection(I)V

    .line 71
    const v7, 0x7f08000d

    invoke-virtual {p0, v7}, Lcom/sprint/smps/activities/SignupPage2;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .end local v5           #s:Landroid/widget/Spinner;
    check-cast v5, Landroid/widget/Spinner;

    .line 72
    .restart local v5       #s:Landroid/widget/Spinner;
    new-instance v0, Landroid/widget/ArrayAdapter;

    .end local v0           #adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<*>;"
    invoke-virtual {p0, v4}, Lcom/sprint/smps/activities/SignupPage2;->getYearArray(I)[Ljava/lang/String;

    move-result-object v7

    invoke-direct {v0, p0, v11, v7}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 73
    .restart local v0       #adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<*>;"
    invoke-virtual {v0, v10}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 74
    invoke-virtual {v5, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 76
    invoke-virtual {p0, v12}, Lcom/sprint/smps/activities/SignupPage2;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 77
    .local v1, button:Landroid/widget/Button;
    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 78
    iget-object v7, p0, Lcom/sprint/smps/activities/SignupPage2;->buttons:Ljava/util/Hashtable;

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const-class v9, Lcom/sprint/smps/activities/SignupPage3;

    invoke-virtual {v7, v8, v9}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    invoke-static {p0}, Lcom/sprint/smps/TimeOutThread;->listener(Lcom/sprint/smps/TimeoutListener;)V

    .line 82
    invoke-direct {p0}, Lcom/sprint/smps/activities/SignupPage2;->showData()V

    .line 83
    return-void

    .line 46
    .end local v0           #adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<*>;"
    .end local v1           #button:Landroid/widget/Button;
    .end local v2           #cal:Ljava/util/Calendar;
    .end local v3           #currMonth:I
    .end local v4           #currYear:I
    .end local v5           #s:Landroid/widget/Spinner;
    .end local v6           #textWatcher:Landroid/text/TextWatcher;
    :catch_cd
    move-exception v7

    goto/16 :goto_20
.end method

.method public onPause()V
    .registers 1

    .prologue
    .line 119
    invoke-static {}, Lcom/sprint/smps/TimeOutThread;->bumpTimout()V

    .line 120
    invoke-super {p0}, Lcom/sprint/smps/activities/SignupAbstract;->onPause()V

    .line 121
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .registers 2
    .parameter "hasFocus"

    .prologue
    .line 173
    if-eqz p1, :cond_8

    .line 175
    invoke-static {}, Lcom/sprint/smps/properties/Properties;->referenced()V

    .line 176
    invoke-static {p0}, Lcom/sprint/smps/TimeOutThread;->listener(Lcom/sprint/smps/TimeoutListener;)V

    .line 178
    :cond_8
    return-void
.end method
