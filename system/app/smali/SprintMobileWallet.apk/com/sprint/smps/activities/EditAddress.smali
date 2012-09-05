.class public Lcom/sprint/smps/activities/EditAddress;
.super Lcom/sprint/smps/activities/ActivityHelper;
.source "EditAddress.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/sprint/smps/TimeoutListener;


# static fields
.field private static final TAG:Ljava/lang/String; = null

.field public static final name:Ljava/lang/String; = "Edit Address"

.field private static parentActivity:Lcom/sprint/smps/activities/EditAddress;


# instance fields
.field private successful:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 32
    const-class v0, Lcom/sprint/smps/activities/EditAddress;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sprint/smps/activities/EditAddress;->TAG:Ljava/lang/String;

    .line 34
    const/4 v0, 0x0

    sput-object v0, Lcom/sprint/smps/activities/EditAddress;->parentActivity:Lcom/sprint/smps/activities/EditAddress;

    .line 29
    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/sprint/smps/activities/ActivityHelper;-><init>()V

    .line 35
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sprint/smps/activities/EditAddress;->successful:Z

    .line 39
    sput-object p0, Lcom/sprint/smps/activities/EditAddress;->parentActivity:Lcom/sprint/smps/activities/EditAddress;

    .line 40
    const-string v0, "Edit Address"

    invoke-static {p0, v0}, Lcom/sprint/smps/activities/ActivityHelper;->addActivity(Landroid/app/Activity;Ljava/lang/String;)V

    .line 41
    return-void
.end method

.method static synthetic access$0()Lcom/sprint/smps/activities/EditAddress;
    .registers 1

    .prologue
    .line 34
    sget-object v0, Lcom/sprint/smps/activities/EditAddress;->parentActivity:Lcom/sprint/smps/activities/EditAddress;

    return-object v0
.end method

.method static synthetic access$1(Lcom/sprint/smps/activities/EditAddress;Z)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 35
    iput-boolean p1, p0, Lcom/sprint/smps/activities/EditAddress;->successful:Z

    return-void
.end method

.method static synthetic access$2(Lcom/sprint/smps/activities/EditAddress;)Z
    .registers 2
    .parameter

    .prologue
    .line 35
    iget-boolean v0, p0, Lcom/sprint/smps/activities/EditAddress;->successful:Z

    return v0
.end method

.method static synthetic access$3(Lcom/sprint/smps/activities/EditAddress;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Landroid/widget/TextView;)V
    .registers 5
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 248
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sprint/smps/activities/EditAddress;->showAlert(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Landroid/widget/TextView;)V

    return-void
.end method

.method private getPosition(Ljava/lang/String;)I
    .registers 7
    .parameter "state"

    .prologue
    .line 100
    const/4 v1, 0x0

    .line 101
    .local v1, pos:I
    const v4, 0x7f080005

    invoke-virtual {p0, v4}, Lcom/sprint/smps/activities/EditAddress;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Spinner;

    .line 102
    .local v3, statesSpinner:Landroid/widget/Spinner;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_b
    invoke-virtual {v3}, Landroid/widget/Spinner;->getCount()I

    move-result v4

    if-lt v0, v4, :cond_12

    .line 112
    :goto_11
    return v1

    .line 104
    :cond_12
    invoke-virtual {v3, v0}, Landroid/widget/Spinner;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 105
    .local v2, stateVal:Ljava/lang/String;
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_20

    .line 107
    move v1, v0

    .line 108
    goto :goto_11

    .line 102
    :cond_20
    add-int/lit8 v0, v0, 0x1

    goto :goto_b
.end method

.method private saveAddress()V
    .registers 3

    .prologue
    .line 187
    new-instance v0, Lcom/sprint/smps/activities/EditAddress$2;

    invoke-direct {v0, p0}, Lcom/sprint/smps/activities/EditAddress$2;-><init>(Lcom/sprint/smps/activities/EditAddress;)V

    .line 216
    .local v0, runnable:Ljava/lang/Runnable;
    new-instance v1, Ljava/lang/Thread;

    invoke-direct {v1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 217
    return-void
.end method

.method private showAlert(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Landroid/widget/TextView;)V
    .registers 8
    .parameter "title"
    .parameter "msg"
    .parameter "context"
    .parameter "view"

    .prologue
    .line 250
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 252
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 253
    invoke-virtual {v0, p2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 254
    const-string v1, "OK"

    new-instance v2, Lcom/sprint/smps/activities/EditAddress$4;

    invoke-direct {v2, p0}, Lcom/sprint/smps/activities/EditAddress$4;-><init>(Lcom/sprint/smps/activities/EditAddress;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 261
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 262
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 263
    return-void
.end method

.method private validateData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 10
    .parameter "firstName"
    .parameter "lastName"
    .parameter "street"
    .parameter "city"
    .parameter "state"
    .parameter "zipcode"

    .prologue
    const/4 v0, 0x0

    const v2, 0x7f080006

    .line 150
    iput-object v0, p0, Lcom/sprint/smps/activities/EditAddress;->errorMessage:Ljava/lang/String;

    .line 151
    iput-object v0, p0, Lcom/sprint/smps/activities/EditAddress;->viewToHaveFocus:Landroid/view/View;

    .line 153
    if-eqz p1, :cond_10

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_25

    .line 154
    :cond_10
    const-string v0, "First name must be entered."

    iput-object v0, p0, Lcom/sprint/smps/activities/EditAddress;->errorMessage:Ljava/lang/String;

    .line 155
    const v0, 0x7f080001

    invoke-virtual {p0, v0}, Lcom/sprint/smps/activities/EditAddress;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sprint/smps/activities/EditAddress;->viewToHaveFocus:Landroid/view/View;

    .line 182
    :cond_1f
    :goto_1f
    iget-object v0, p0, Lcom/sprint/smps/activities/EditAddress;->errorMessage:Ljava/lang/String;

    if-nez v0, :cond_aa

    const/4 v0, 0x1

    :goto_24
    return v0

    .line 157
    :cond_25
    if-eqz p2, :cond_2d

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_3d

    .line 158
    :cond_2d
    const-string v0, "Last name must be entered."

    iput-object v0, p0, Lcom/sprint/smps/activities/EditAddress;->errorMessage:Ljava/lang/String;

    .line 159
    const v0, 0x7f080002

    invoke-virtual {p0, v0}, Lcom/sprint/smps/activities/EditAddress;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sprint/smps/activities/EditAddress;->viewToHaveFocus:Landroid/view/View;

    goto :goto_1f

    .line 161
    :cond_3d
    if-eqz p3, :cond_45

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_55

    .line 162
    :cond_45
    const-string v0, "Street must be entered."

    iput-object v0, p0, Lcom/sprint/smps/activities/EditAddress;->errorMessage:Ljava/lang/String;

    .line 163
    const v0, 0x7f080003

    invoke-virtual {p0, v0}, Lcom/sprint/smps/activities/EditAddress;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sprint/smps/activities/EditAddress;->viewToHaveFocus:Landroid/view/View;

    goto :goto_1f

    .line 165
    :cond_55
    if-eqz p4, :cond_5d

    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_6d

    .line 166
    :cond_5d
    const-string v0, "City must be entered."

    iput-object v0, p0, Lcom/sprint/smps/activities/EditAddress;->errorMessage:Ljava/lang/String;

    .line 167
    const v0, 0x7f080004

    invoke-virtual {p0, v0}, Lcom/sprint/smps/activities/EditAddress;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sprint/smps/activities/EditAddress;->viewToHaveFocus:Landroid/view/View;

    goto :goto_1f

    .line 169
    :cond_6d
    if-eqz p6, :cond_75

    invoke-virtual {p6}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_82

    .line 170
    :cond_75
    const-string v0, "Zipcode must be entered."

    iput-object v0, p0, Lcom/sprint/smps/activities/EditAddress;->errorMessage:Ljava/lang/String;

    .line 171
    invoke-virtual {p0, v2}, Lcom/sprint/smps/activities/EditAddress;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sprint/smps/activities/EditAddress;->viewToHaveFocus:Landroid/view/View;

    goto :goto_1f

    .line 173
    :cond_82
    invoke-virtual {p6}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_96

    .line 174
    const-string v0, "Zipcode must be 5 digits long."

    iput-object v0, p0, Lcom/sprint/smps/activities/EditAddress;->errorMessage:Ljava/lang/String;

    .line 175
    invoke-virtual {p0, v2}, Lcom/sprint/smps/activities/EditAddress;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sprint/smps/activities/EditAddress;->viewToHaveFocus:Landroid/view/View;

    goto :goto_1f

    .line 177
    :cond_96
    invoke-static {p6}, Lcom/sprint/smps/util/Utilities;->isNumeric(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1f

    .line 178
    const-string v0, "Zipcode must be numeric."

    iput-object v0, p0, Lcom/sprint/smps/activities/EditAddress;->errorMessage:Ljava/lang/String;

    .line 179
    invoke-virtual {p0, v2}, Lcom/sprint/smps/activities/EditAddress;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sprint/smps/activities/EditAddress;->viewToHaveFocus:Landroid/view/View;

    goto/16 :goto_1f

    .line 182
    :cond_aa
    const/4 v0, 0x0

    goto/16 :goto_24
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 12
    .parameter "v"

    .prologue
    .line 117
    invoke-static {}, Lcom/sprint/smps/properties/Properties;->referenced()V

    .line 118
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v8, 0x7f08001d

    if-ne v0, v8, :cond_83

    .line 120
    const v0, 0x7f080001

    invoke-virtual {p0, v0}, Lcom/sprint/smps/activities/EditAddress;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 121
    .local v1, firstName:Ljava/lang/String;
    const v0, 0x7f080002

    invoke-virtual {p0, v0}, Lcom/sprint/smps/activities/EditAddress;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    .line 122
    .local v2, lastName:Ljava/lang/String;
    const v0, 0x7f080003

    invoke-virtual {p0, v0}, Lcom/sprint/smps/activities/EditAddress;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    .line 123
    .local v3, street:Ljava/lang/String;
    const v0, 0x7f080004

    invoke-virtual {p0, v0}, Lcom/sprint/smps/activities/EditAddress;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    .line 124
    .local v4, city:Ljava/lang/String;
    const v0, 0x7f080005

    invoke-virtual {p0, v0}, Lcom/sprint/smps/activities/EditAddress;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    .line 125
    .local v5, state:Ljava/lang/String;
    const v0, 0x7f080006

    invoke-virtual {p0, v0}, Lcom/sprint/smps/activities/EditAddress;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    .local v6, zipcode:Ljava/lang/String;
    move-object v0, p0

    .line 126
    invoke-direct/range {v0 .. v6}, Lcom/sprint/smps/activities/EditAddress;->validateData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    .line 127
    .local v7, valid:Z
    if-eqz v7, :cond_84

    .line 129
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sprint/smps/activities/EditAddress;->showDialog(I)V

    .line 130
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sprint/smps/activities/EditAddress;->successful:Z

    .line 131
    invoke-direct {p0}, Lcom/sprint/smps/activities/EditAddress;->saveAddress()V

    .line 136
    .end local v1           #firstName:Ljava/lang/String;
    .end local v2           #lastName:Ljava/lang/String;
    .end local v3           #street:Ljava/lang/String;
    .end local v4           #city:Ljava/lang/String;
    .end local v5           #state:Ljava/lang/String;
    .end local v6           #zipcode:Ljava/lang/String;
    .end local v7           #valid:Z
    :cond_83
    :goto_83
    return-void

    .line 134
    .restart local v1       #firstName:Ljava/lang/String;
    .restart local v2       #lastName:Ljava/lang/String;
    .restart local v3       #street:Ljava/lang/String;
    .restart local v4       #city:Ljava/lang/String;
    .restart local v5       #state:Ljava/lang/String;
    .restart local v6       #zipcode:Ljava/lang/String;
    .restart local v7       #valid:Z
    :cond_84
    const-string v0, "Change"

    iget-object v8, p0, Lcom/sprint/smps/activities/EditAddress;->errorMessage:Ljava/lang/String;

    iget-object v9, p0, Lcom/sprint/smps/activities/EditAddress;->viewToHaveFocus:Landroid/view/View;

    invoke-static {v0, v8, p0, v9}, Lcom/sprint/smps/util/Utilities;->showAlert(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Landroid/view/View;)V

    goto :goto_83
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 13
    .parameter "savedInstanceState"

    .prologue
    const v10, 0x7f080004

    const v9, 0x7f080003

    const v8, 0x7f080002

    const v7, 0x7f080001

    const/4 v6, 0x7

    .line 46
    invoke-super {p0, p1}, Lcom/sprint/smps/activities/ActivityHelper;->onCreate(Landroid/os/Bundle;)V

    .line 47
    invoke-static {}, Lcom/sprint/smps/properties/Properties;->referenced()V

    .line 48
    invoke-virtual {p0, v6}, Lcom/sprint/smps/activities/EditAddress;->requestWindowFeature(I)Z

    .line 49
    const v4, 0x7f030007

    invoke-virtual {p0, v4}, Lcom/sprint/smps/activities/EditAddress;->setContentView(I)V

    .line 51
    sget-object v4, Lcom/sprint/smps/properties/Properties;->localyticsSession:Lcom/Localytics/android/LocalyticsSession;

    const-string v5, "Edit Address"

    invoke-virtual {v4, v5}, Lcom/Localytics/android/LocalyticsSession;->tagEvent(Ljava/lang/String;)V

    .line 53
    invoke-virtual {p0}, Lcom/sprint/smps/activities/EditAddress;->getWindow()Landroid/view/Window;

    move-result-object v4

    const v5, 0x7f03001c

    invoke-virtual {v4, v6, v5}, Landroid/view/Window;->setFeatureInt(II)V

    .line 54
    const v4, 0x7f08004a

    invoke-virtual {p0, v4}, Lcom/sprint/smps/activities/EditAddress;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    const v5, 0x7f06002c

    invoke-virtual {p0, v5}, Lcom/sprint/smps/activities/EditAddress;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 55
    const v4, 0x7f08004b

    invoke-virtual {p0, v4}, Lcom/sprint/smps/activities/EditAddress;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    const-string v5, ""

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 57
    new-instance v3, Lcom/sprint/smps/activities/EditAddress$1;

    invoke-direct {v3, p0}, Lcom/sprint/smps/activities/EditAddress$1;-><init>(Lcom/sprint/smps/activities/EditAddress;)V

    .line 62
    .local v3, textWatcher:Landroid/text/TextWatcher;
    invoke-virtual {p0, v7}, Lcom/sprint/smps/activities/EditAddress;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 63
    invoke-virtual {p0, v8}, Lcom/sprint/smps/activities/EditAddress;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 64
    invoke-virtual {p0, v9}, Lcom/sprint/smps/activities/EditAddress;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 65
    invoke-virtual {p0, v10}, Lcom/sprint/smps/activities/EditAddress;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 66
    const v4, 0x7f080006

    invoke-virtual {p0, v4}, Lcom/sprint/smps/activities/EditAddress;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 68
    const v4, 0x7f080005

    invoke-virtual {p0, v4}, Lcom/sprint/smps/activities/EditAddress;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Spinner;

    .line 69
    .local v2, s:Landroid/widget/Spinner;
    const v4, 0x7f050001

    const v5, 0x7f03001b

    invoke-static {p0, v4, v5}, Landroid/widget/ArrayAdapter;->createFromResource(Landroid/content/Context;II)Landroid/widget/ArrayAdapter;

    move-result-object v0

    .line 70
    .local v0, adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<*>;"
    const v4, 0x1090009

    invoke-virtual {v0, v4}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 71
    invoke-virtual {v2, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 73
    const v4, 0x7f08001d

    invoke-virtual {p0, v4}, Lcom/sprint/smps/activities/EditAddress;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 74
    .local v1, button:Landroid/widget/Button;
    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 76
    invoke-virtual {p0, v7}, Lcom/sprint/smps/activities/EditAddress;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    sget-object v5, Lcom/sprint/smps/activities/AddressDetail;->address:Lcom/sprint/smps/pojo/Address;

    invoke-virtual {v5}, Lcom/sprint/smps/pojo/Address;->getFirstName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 77
    invoke-virtual {p0, v8}, Lcom/sprint/smps/activities/EditAddress;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    sget-object v5, Lcom/sprint/smps/activities/AddressDetail;->address:Lcom/sprint/smps/pojo/Address;

    invoke-virtual {v5}, Lcom/sprint/smps/pojo/Address;->getLastName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 78
    invoke-virtual {p0, v9}, Lcom/sprint/smps/activities/EditAddress;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    sget-object v5, Lcom/sprint/smps/activities/AddressDetail;->address:Lcom/sprint/smps/pojo/Address;

    invoke-virtual {v5}, Lcom/sprint/smps/pojo/Address;->getStreet()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 79
    invoke-virtual {p0, v10}, Lcom/sprint/smps/activities/EditAddress;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    sget-object v5, Lcom/sprint/smps/activities/AddressDetail;->address:Lcom/sprint/smps/pojo/Address;

    invoke-virtual {v5}, Lcom/sprint/smps/pojo/Address;->getCity()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 80
    const v4, 0x7f080005

    invoke-virtual {p0, v4}, Lcom/sprint/smps/activities/EditAddress;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Spinner;

    sget-object v5, Lcom/sprint/smps/activities/AddressDetail;->address:Lcom/sprint/smps/pojo/Address;

    invoke-virtual {v5}, Lcom/sprint/smps/pojo/Address;->getStateName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/sprint/smps/activities/EditAddress;->getPosition(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/Spinner;->setSelection(I)V

    .line 81
    const v4, 0x7f080006

    invoke-virtual {p0, v4}, Lcom/sprint/smps/activities/EditAddress;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    sget-object v5, Lcom/sprint/smps/activities/AddressDetail;->address:Lcom/sprint/smps/pojo/Address;

    invoke-virtual {v5}, Lcom/sprint/smps/pojo/Address;->getZipcode()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 83
    invoke-static {p0}, Lcom/sprint/smps/TimeOutThread;->listener(Lcom/sprint/smps/TimeoutListener;)V

    .line 84
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .registers 5
    .parameter "id"

    .prologue
    .line 221
    const/4 v0, 0x0

    .line 223
    .local v0, dialog:Landroid/app/Dialog;
    if-nez p1, :cond_1e

    .line 225
    new-instance v1, Landroid/app/ProgressDialog;

    invoke-direct {v1, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 226
    .local v1, progDialog:Landroid/app/ProgressDialog;
    const-string v2, "Please wait, changing address..."

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 227
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 228
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 230
    new-instance v2, Lcom/sprint/smps/activities/EditAddress$3;

    invoke-direct {v2, p0}, Lcom/sprint/smps/activities/EditAddress$3;-><init>(Lcom/sprint/smps/activities/EditAddress;)V

    .line 229
    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 242
    move-object v0, v1

    .line 245
    .end local v1           #progDialog:Landroid/app/ProgressDialog;
    :cond_1e
    return-object v0
.end method

.method public onDestroy()V
    .registers 2

    .prologue
    .line 94
    invoke-super {p0}, Lcom/sprint/smps/activities/ActivityHelper;->onDestroy()V

    .line 95
    const-string v0, "Edit Address"

    invoke-static {v0}, Lcom/sprint/smps/activities/EditAddress;->dismissActivity(Ljava/lang/String;)V

    .line 96
    return-void
.end method

.method public onPause()V
    .registers 1

    .prologue
    .line 88
    invoke-static {}, Lcom/sprint/smps/TimeOutThread;->bumpTimout()V

    .line 89
    invoke-super {p0}, Lcom/sprint/smps/activities/ActivityHelper;->onPause()V

    .line 90
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .registers 2
    .parameter "hasFocus"

    .prologue
    .line 141
    if-eqz p1, :cond_8

    .line 143
    invoke-static {}, Lcom/sprint/smps/properties/Properties;->referenced()V

    .line 144
    invoke-static {p0}, Lcom/sprint/smps/TimeOutThread;->listener(Lcom/sprint/smps/TimeoutListener;)V

    .line 146
    :cond_8
    return-void
.end method
