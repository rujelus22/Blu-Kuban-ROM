.class Lcom/sprint/smps/activities/SignupPage1$1;
.super Ljava/lang/Object;
.source "SignupPage1.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sprint/smps/activities/SignupPage1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sprint/smps/activities/SignupPage1;


# direct methods
.method constructor <init>(Lcom/sprint/smps/activities/SignupPage1;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/sprint/smps/activities/SignupPage1$1;->this$0:Lcom/sprint/smps/activities/SignupPage1;

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 12

    .prologue
    const v10, 0x7f080037

    const v9, 0x7f080002

    const v8, 0x7f080001

    const v7, 0x7f03001a

    const v6, 0x1090008

    .line 45
    sget-object v3, Lcom/sprint/smps/activities/SignupPage1;->entryValues:Ljava/util/Hashtable;

    if-nez v3, :cond_1a

    new-instance v3, Ljava/util/Hashtable;

    invoke-direct {v3}, Ljava/util/Hashtable;-><init>()V

    sput-object v3, Lcom/sprint/smps/activities/SignupPage1;->entryValues:Ljava/util/Hashtable;

    .line 47
    :cond_1a
    iget-object v3, p0, Lcom/sprint/smps/activities/SignupPage1$1;->this$0:Lcom/sprint/smps/activities/SignupPage1;

    const v4, 0x7f08003c

    invoke-virtual {v3, v4}, Lcom/sprint/smps/activities/SignupPage1;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Spinner;

    .line 48
    .local v2, s:Landroid/widget/Spinner;
    new-instance v0, Landroid/widget/ArrayAdapter;

    invoke-static {}, Lcom/sprint/smps/activities/SignupPage1;->access$0()Lcom/sprint/smps/activities/SignupPage1;

    move-result-object v3

    sget-object v4, Lcom/sprint/smps/activities/SignupPage1;->questionList:[Ljava/lang/String;

    invoke-direct {v0, v3, v6, v4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 49
    .local v0, arrayAdapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    invoke-virtual {v0, v7}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 50
    invoke-virtual {v2, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 51
    const/4 v1, 0x0

    .line 52
    .local v1, i:I
    sget-object v3, Lcom/sprint/smps/activities/SignupPage1;->entryValues:Ljava/util/Hashtable;

    const-string v4, "securityQuestion1Index"

    invoke-virtual {v3, v4}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4f

    .line 53
    sget-object v3, Lcom/sprint/smps/activities/SignupPage1;->entryValues:Ljava/util/Hashtable;

    const-string v4, "securityQuestion1Index"

    invoke-virtual {v3, v4}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 54
    :cond_4f
    invoke-virtual {v2, v1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 56
    sget-object v3, Lcom/sprint/smps/activities/SignupPage1;->entryValues:Ljava/util/Hashtable;

    const-string v4, "securityAnswer1"

    invoke-virtual {v3, v4}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_74

    .line 57
    iget-object v3, p0, Lcom/sprint/smps/activities/SignupPage1$1;->this$0:Lcom/sprint/smps/activities/SignupPage1;

    const v4, 0x7f08003d

    invoke-virtual {v3, v4}, Lcom/sprint/smps/activities/SignupPage1;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    sget-object v4, Lcom/sprint/smps/activities/SignupPage1;->entryValues:Ljava/util/Hashtable;

    const-string v5, "securityAnswer1"

    invoke-virtual {v4, v5}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 59
    :cond_74
    iget-object v3, p0, Lcom/sprint/smps/activities/SignupPage1$1;->this$0:Lcom/sprint/smps/activities/SignupPage1;

    const v4, 0x7f08003e

    invoke-virtual {v3, v4}, Lcom/sprint/smps/activities/SignupPage1;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .end local v2           #s:Landroid/widget/Spinner;
    check-cast v2, Landroid/widget/Spinner;

    .line 60
    .restart local v2       #s:Landroid/widget/Spinner;
    new-instance v0, Landroid/widget/ArrayAdapter;

    .end local v0           #arrayAdapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    invoke-static {}, Lcom/sprint/smps/activities/SignupPage1;->access$0()Lcom/sprint/smps/activities/SignupPage1;

    move-result-object v3

    sget-object v4, Lcom/sprint/smps/activities/SignupPage1;->questionList:[Ljava/lang/String;

    invoke-direct {v0, v3, v6, v4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 61
    .restart local v0       #arrayAdapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    invoke-virtual {v0, v7}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 62
    invoke-virtual {v2, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 63
    const/4 v1, 0x1

    .line 64
    sget-object v3, Lcom/sprint/smps/activities/SignupPage1;->entryValues:Ljava/util/Hashtable;

    const-string v4, "securityQuestion2Index"

    invoke-virtual {v3, v4}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a9

    .line 65
    sget-object v3, Lcom/sprint/smps/activities/SignupPage1;->entryValues:Ljava/util/Hashtable;

    const-string v4, "securityQuestion2Index"

    invoke-virtual {v3, v4}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 66
    :cond_a9
    invoke-virtual {v2, v1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 68
    sget-object v3, Lcom/sprint/smps/activities/SignupPage1;->entryValues:Ljava/util/Hashtable;

    const-string v4, "securityAnswer2"

    invoke-virtual {v3, v4}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_ce

    .line 69
    iget-object v3, p0, Lcom/sprint/smps/activities/SignupPage1$1;->this$0:Lcom/sprint/smps/activities/SignupPage1;

    const v4, 0x7f08003f

    invoke-virtual {v3, v4}, Lcom/sprint/smps/activities/SignupPage1;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    sget-object v4, Lcom/sprint/smps/activities/SignupPage1;->entryValues:Ljava/util/Hashtable;

    const-string v5, "securityAnswer2"

    invoke-virtual {v4, v5}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 71
    :cond_ce
    iget-object v3, p0, Lcom/sprint/smps/activities/SignupPage1$1;->this$0:Lcom/sprint/smps/activities/SignupPage1;

    const v4, 0x7f080040

    invoke-virtual {v3, v4}, Lcom/sprint/smps/activities/SignupPage1;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .end local v2           #s:Landroid/widget/Spinner;
    check-cast v2, Landroid/widget/Spinner;

    .line 72
    .restart local v2       #s:Landroid/widget/Spinner;
    new-instance v0, Landroid/widget/ArrayAdapter;

    .end local v0           #arrayAdapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    invoke-static {}, Lcom/sprint/smps/activities/SignupPage1;->access$0()Lcom/sprint/smps/activities/SignupPage1;

    move-result-object v3

    sget-object v4, Lcom/sprint/smps/activities/SignupPage1;->questionList:[Ljava/lang/String;

    invoke-direct {v0, v3, v6, v4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 73
    .restart local v0       #arrayAdapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    invoke-virtual {v0, v7}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 74
    invoke-virtual {v2, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 75
    const/4 v1, 0x2

    .line 76
    sget-object v3, Lcom/sprint/smps/activities/SignupPage1;->entryValues:Ljava/util/Hashtable;

    const-string v4, "securityQuestion3Index"

    invoke-virtual {v3, v4}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_103

    .line 77
    sget-object v3, Lcom/sprint/smps/activities/SignupPage1;->entryValues:Ljava/util/Hashtable;

    const-string v4, "securityQuestion3Index"

    invoke-virtual {v3, v4}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 78
    :cond_103
    invoke-virtual {v2, v1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 80
    sget-object v3, Lcom/sprint/smps/activities/SignupPage1;->entryValues:Ljava/util/Hashtable;

    const-string v4, "securityAnswer3"

    invoke-virtual {v3, v4}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_128

    .line 81
    iget-object v3, p0, Lcom/sprint/smps/activities/SignupPage1$1;->this$0:Lcom/sprint/smps/activities/SignupPage1;

    const v4, 0x7f080041

    invoke-virtual {v3, v4}, Lcom/sprint/smps/activities/SignupPage1;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    sget-object v4, Lcom/sprint/smps/activities/SignupPage1;->entryValues:Ljava/util/Hashtable;

    const-string v5, "securityAnswer3"

    invoke-virtual {v4, v5}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 83
    :cond_128
    sget-object v3, Lcom/sprint/smps/activities/SignupPage1;->entryValues:Ljava/util/Hashtable;

    invoke-virtual {v3}, Ljava/util/Hashtable;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1d8

    .line 85
    sget-object v3, Lcom/sprint/smps/activities/SignupPage1;->entryValues:Ljava/util/Hashtable;

    const-string v4, "firstName"

    invoke-virtual {v3, v4}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_14f

    .line 86
    iget-object v3, p0, Lcom/sprint/smps/activities/SignupPage1$1;->this$0:Lcom/sprint/smps/activities/SignupPage1;

    invoke-virtual {v3, v8}, Lcom/sprint/smps/activities/SignupPage1;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    sget-object v4, Lcom/sprint/smps/activities/SignupPage1;->entryValues:Ljava/util/Hashtable;

    const-string v5, "firstName"

    invoke-virtual {v4, v5}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 88
    :cond_14f
    sget-object v3, Lcom/sprint/smps/activities/SignupPage1;->entryValues:Ljava/util/Hashtable;

    const-string v4, "lastName"

    invoke-virtual {v3, v4}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_16e

    .line 89
    iget-object v3, p0, Lcom/sprint/smps/activities/SignupPage1$1;->this$0:Lcom/sprint/smps/activities/SignupPage1;

    invoke-virtual {v3, v9}, Lcom/sprint/smps/activities/SignupPage1;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    sget-object v4, Lcom/sprint/smps/activities/SignupPage1;->entryValues:Ljava/util/Hashtable;

    const-string v5, "lastName"

    invoke-virtual {v4, v5}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 91
    :cond_16e
    sget-object v3, Lcom/sprint/smps/activities/SignupPage1;->entryValues:Ljava/util/Hashtable;

    const-string v4, "email"

    invoke-virtual {v3, v4}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_18d

    .line 92
    iget-object v3, p0, Lcom/sprint/smps/activities/SignupPage1$1;->this$0:Lcom/sprint/smps/activities/SignupPage1;

    invoke-virtual {v3, v10}, Lcom/sprint/smps/activities/SignupPage1;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    sget-object v4, Lcom/sprint/smps/activities/SignupPage1;->entryValues:Ljava/util/Hashtable;

    const-string v5, "email"

    invoke-virtual {v4, v5}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 94
    :cond_18d
    sget-object v3, Lcom/sprint/smps/activities/SignupPage1;->entryValues:Ljava/util/Hashtable;

    const-string v4, "pin1"

    invoke-virtual {v3, v4}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1af

    .line 95
    iget-object v3, p0, Lcom/sprint/smps/activities/SignupPage1$1;->this$0:Lcom/sprint/smps/activities/SignupPage1;

    const v4, 0x7f080019

    invoke-virtual {v3, v4}, Lcom/sprint/smps/activities/SignupPage1;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    sget-object v4, Lcom/sprint/smps/activities/SignupPage1;->entryValues:Ljava/util/Hashtable;

    const-string v5, "pin1"

    invoke-virtual {v4, v5}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 97
    :cond_1af
    sget-object v3, Lcom/sprint/smps/activities/SignupPage1;->entryValues:Ljava/util/Hashtable;

    const-string v4, "pin2"

    invoke-virtual {v3, v4}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1d1

    .line 98
    iget-object v3, p0, Lcom/sprint/smps/activities/SignupPage1$1;->this$0:Lcom/sprint/smps/activities/SignupPage1;

    const v4, 0x7f08001a

    invoke-virtual {v3, v4}, Lcom/sprint/smps/activities/SignupPage1;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    sget-object v4, Lcom/sprint/smps/activities/SignupPage1;->entryValues:Ljava/util/Hashtable;

    const-string v5, "pin2"

    invoke-virtual {v4, v5}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 112
    :cond_1d1
    :goto_1d1
    iget-object v3, p0, Lcom/sprint/smps/activities/SignupPage1$1;->this$0:Lcom/sprint/smps/activities/SignupPage1;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/sprint/smps/activities/SignupPage1;->removeDialog(I)V

    .line 113
    return-void

    .line 100
    :cond_1d8
    sget-object v3, Lcom/sprint/smps/activities/SignupPage1;->user:Lcom/sprint/smps/pojo/User;

    if-eqz v3, :cond_1d1

    .line 102
    sget-object v3, Lcom/sprint/smps/activities/SignupPage1;->user:Lcom/sprint/smps/pojo/User;

    invoke-virtual {v3}, Lcom/sprint/smps/pojo/User;->getFirstName()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_203

    sget-object v3, Lcom/sprint/smps/activities/SignupPage1;->user:Lcom/sprint/smps/pojo/User;

    invoke-virtual {v3}, Lcom/sprint/smps/pojo/User;->getFirstName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "null"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_203

    .line 103
    iget-object v3, p0, Lcom/sprint/smps/activities/SignupPage1$1;->this$0:Lcom/sprint/smps/activities/SignupPage1;

    invoke-virtual {v3, v8}, Lcom/sprint/smps/activities/SignupPage1;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    sget-object v4, Lcom/sprint/smps/activities/SignupPage1;->user:Lcom/sprint/smps/pojo/User;

    invoke-virtual {v4}, Lcom/sprint/smps/pojo/User;->getFirstName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 105
    :cond_203
    sget-object v3, Lcom/sprint/smps/activities/SignupPage1;->user:Lcom/sprint/smps/pojo/User;

    invoke-virtual {v3}, Lcom/sprint/smps/pojo/User;->getLastName()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_22a

    sget-object v3, Lcom/sprint/smps/activities/SignupPage1;->user:Lcom/sprint/smps/pojo/User;

    invoke-virtual {v3}, Lcom/sprint/smps/pojo/User;->getLastName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "null"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_22a

    .line 106
    iget-object v3, p0, Lcom/sprint/smps/activities/SignupPage1$1;->this$0:Lcom/sprint/smps/activities/SignupPage1;

    invoke-virtual {v3, v9}, Lcom/sprint/smps/activities/SignupPage1;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    sget-object v4, Lcom/sprint/smps/activities/SignupPage1;->user:Lcom/sprint/smps/pojo/User;

    invoke-virtual {v4}, Lcom/sprint/smps/pojo/User;->getLastName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 108
    :cond_22a
    sget-object v3, Lcom/sprint/smps/activities/SignupPage1;->user:Lcom/sprint/smps/pojo/User;

    invoke-virtual {v3}, Lcom/sprint/smps/pojo/User;->getEmailAddress()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1d1

    sget-object v3, Lcom/sprint/smps/activities/SignupPage1;->user:Lcom/sprint/smps/pojo/User;

    invoke-virtual {v3}, Lcom/sprint/smps/pojo/User;->getEmailAddress()Ljava/lang/String;

    move-result-object v3

    const-string v4, "null"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1d1

    .line 109
    iget-object v3, p0, Lcom/sprint/smps/activities/SignupPage1$1;->this$0:Lcom/sprint/smps/activities/SignupPage1;

    invoke-virtual {v3, v10}, Lcom/sprint/smps/activities/SignupPage1;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    sget-object v4, Lcom/sprint/smps/activities/SignupPage1;->user:Lcom/sprint/smps/pojo/User;

    invoke-virtual {v4}, Lcom/sprint/smps/pojo/User;->getEmailAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1d1
.end method
