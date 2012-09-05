.class public Lcom/sprint/smps/activities/MainMenu;
.super Lcom/sprint/smps/activities/ActivityHelper;
.source "MainMenu.java"

# interfaces
.implements Lcom/sprint/smps/TimeoutListener;


# static fields
.field private static final TAG:Ljava/lang/String; = null

.field private static context:Lcom/sprint/smps/activities/MainMenu; = null

.field public static final name:Ljava/lang/String; = "Main Menu"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 27
    const-class v0, Lcom/sprint/smps/activities/MainMenu;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sprint/smps/activities/MainMenu;->TAG:Ljava/lang/String;

    .line 28
    const/4 v0, 0x0

    sput-object v0, Lcom/sprint/smps/activities/MainMenu;->context:Lcom/sprint/smps/activities/MainMenu;

    .line 24
    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/sprint/smps/activities/ActivityHelper;-><init>()V

    .line 33
    sput-object p0, Lcom/sprint/smps/activities/MainMenu;->context:Lcom/sprint/smps/activities/MainMenu;

    .line 34
    const-string v0, "Main Menu"

    invoke-static {p0, v0}, Lcom/sprint/smps/activities/ActivityHelper;->addActivity(Landroid/app/Activity;Ljava/lang/String;)V

    .line 35
    return-void
.end method

.method static synthetic access$0()Lcom/sprint/smps/activities/MainMenu;
    .registers 1

    .prologue
    .line 28
    sget-object v0, Lcom/sprint/smps/activities/MainMenu;->context:Lcom/sprint/smps/activities/MainMenu;

    return-object v0
.end method


# virtual methods
.method public finish()V
    .registers 2

    .prologue
    .line 148
    invoke-super {p0}, Lcom/sprint/smps/activities/ActivityHelper;->finish()V

    .line 149
    const-string v0, "Main Menu"

    invoke-static {v0}, Lcom/sprint/smps/activities/ActivityHelper;->dismissActivities(Ljava/lang/String;)V

    .line 150
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 9
    .parameter "savedInstanceState"

    .prologue
    const/4 v6, 0x7

    const/4 v5, 0x1

    .line 40
    invoke-super {p0, p1}, Lcom/sprint/smps/activities/ActivityHelper;->onCreate(Landroid/os/Bundle;)V

    .line 41
    invoke-static {}, Lcom/sprint/smps/properties/Properties;->referenced()V

    .line 42
    invoke-virtual {p0, v6}, Lcom/sprint/smps/activities/MainMenu;->requestWindowFeature(I)Z

    .line 43
    const v3, 0x7f030010

    invoke-virtual {p0, v3}, Lcom/sprint/smps/activities/MainMenu;->setContentView(I)V

    .line 45
    sget-object v3, Lcom/sprint/smps/properties/Properties;->localyticsSession:Lcom/Localytics/android/LocalyticsSession;

    const-string v4, "Main Menu"

    invoke-virtual {v3, v4}, Lcom/Localytics/android/LocalyticsSession;->tagEvent(Ljava/lang/String;)V

    .line 47
    invoke-virtual {p0}, Lcom/sprint/smps/activities/MainMenu;->getWindow()Landroid/view/Window;

    move-result-object v3

    const v4, 0x7f03001c

    invoke-virtual {v3, v6, v4}, Landroid/view/Window;->setFeatureInt(II)V

    .line 48
    const v3, 0x7f08004a

    invoke-virtual {p0, v3}, Lcom/sprint/smps/activities/MainMenu;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const v4, 0x7f06001e

    invoke-virtual {p0, v4}, Lcom/sprint/smps/activities/MainMenu;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 49
    const v3, 0x7f08004b

    invoke-virtual {p0, v3}, Lcom/sprint/smps/activities/MainMenu;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const-string v4, ""

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 51
    const/high16 v3, 0x101

    invoke-virtual {p0, v3}, Lcom/sprint/smps/activities/MainMenu;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    .line 52
    .local v1, lv:Landroid/widget/ListView;
    invoke-virtual {v1, v5}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 53
    const/4 v3, 0x4

    new-array v2, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "Payment Options"

    aput-object v4, v2, v3

    const-string v3, "My Transactions"

    aput-object v3, v2, v5

    const/4 v3, 0x2

    const-string v4, "Address Book"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string v4, "Profile"

    aput-object v4, v2, v3

    .line 54
    .local v2, lv_arr:[Ljava/lang/String;
    new-instance v3, Landroid/widget/ArrayAdapter;

    const v4, 0x1090003

    invoke-direct {v3, p0, v4, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    invoke-virtual {v1, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 55
    new-instance v3, Lcom/sprint/smps/activities/MainMenu$1;

    invoke-direct {v3, p0}, Lcom/sprint/smps/activities/MainMenu$1;-><init>(Lcom/sprint/smps/activities/MainMenu;)V

    invoke-virtual {v1, v3}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 80
    invoke-static {}, Lcom/sprint/smps/properties/Properties;->referenced()V

    .line 81
    invoke-static {p0}, Lcom/sprint/smps/TimeOutThread;->listener(Lcom/sprint/smps/TimeoutListener;)V

    .line 83
    sget-object v3, Lcom/sprint/smps/properties/Properties;->user:Lcom/sprint/smps/service/ClientResponse;

    invoke-virtual {v3}, Lcom/sprint/smps/service/ClientResponse;->hasSecurityQuestionsSet()Z

    move-result v3

    if-nez v3, :cond_91

    .line 86
    new-instance v0, Lcom/sprint/smps/activities/MainMenu$2;

    invoke-direct {v0, p0}, Lcom/sprint/smps/activities/MainMenu$2;-><init>(Lcom/sprint/smps/activities/MainMenu;)V

    .line 92
    .local v0, listener:Landroid/content/DialogInterface$OnClickListener;
    const-string v3, "Security Questions"

    const-string v4, "Security questions not set, please set them from your Menu, Change Hint option."

    invoke-static {v3, v4, p0, v0}, Lcom/sprint/smps/util/Utilities;->showAlert(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;)V

    .line 94
    .end local v0           #listener:Landroid/content/DialogInterface$OnClickListener;
    :cond_91
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 4
    .parameter "menu"

    .prologue
    .line 105
    invoke-static {}, Lcom/sprint/smps/properties/Properties;->referenced()V

    .line 107
    invoke-virtual {p0}, Lcom/sprint/smps/activities/MainMenu;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 108
    .local v0, inflater:Landroid/view/MenuInflater;
    const/high16 v1, 0x7f07

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 110
    const/4 v1, 0x1

    return v1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 6
    .parameter "item"

    .prologue
    const/4 v1, 0x1

    .line 116
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    sparse-switch v2, :sswitch_data_5a

    .line 143
    :goto_8
    const/4 v1, 0x0

    :cond_9
    :goto_9
    return v1

    .line 119
    :sswitch_a
    invoke-static {}, Lcom/sprint/smps/properties/Properties;->referenced()V

    .line 120
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    const-class v3, Lcom/sprint/smps/activities/ChangePin;

    invoke-static {p0, v2, v3}, Lcom/sprint/smps/activities/ActivityHelper;->getIntent(Landroid/app/Activity;ILjava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 121
    .local v0, intent:Landroid/content/Intent;
    if-eqz v0, :cond_9

    invoke-virtual {p0, v0}, Lcom/sprint/smps/activities/MainMenu;->startActivity(Landroid/content/Intent;)V

    goto :goto_9

    .line 124
    .end local v0           #intent:Landroid/content/Intent;
    :sswitch_1d
    invoke-static {}, Lcom/sprint/smps/properties/Properties;->referenced()V

    .line 125
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    const-class v3, Lcom/sprint/smps/activities/ChangeQuestions;

    invoke-static {p0, v2, v3}, Lcom/sprint/smps/activities/ActivityHelper;->getIntent(Landroid/app/Activity;ILjava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 126
    .restart local v0       #intent:Landroid/content/Intent;
    if-eqz v0, :cond_9

    invoke-virtual {p0, v0}, Lcom/sprint/smps/activities/MainMenu;->startActivity(Landroid/content/Intent;)V

    goto :goto_9

    .line 129
    .end local v0           #intent:Landroid/content/Intent;
    :sswitch_30
    invoke-static {}, Lcom/sprint/smps/properties/Properties;->referenced()V

    .line 130
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    const-class v3, Lcom/sprint/smps/activities/ViewFAQs;

    invoke-static {p0, v2, v3}, Lcom/sprint/smps/activities/ActivityHelper;->getIntent(Landroid/app/Activity;ILjava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 131
    .restart local v0       #intent:Landroid/content/Intent;
    if-eqz v0, :cond_9

    invoke-virtual {p0, v0}, Lcom/sprint/smps/activities/MainMenu;->startActivity(Landroid/content/Intent;)V

    goto :goto_9

    .line 134
    .end local v0           #intent:Landroid/content/Intent;
    :sswitch_43
    invoke-static {}, Lcom/sprint/smps/properties/Properties;->referenced()V

    .line 135
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    const-class v3, Lcom/sprint/smps/activities/DeleteSMPSAccount;

    invoke-static {p0, v2, v3}, Lcom/sprint/smps/activities/ActivityHelper;->getIntent(Landroid/app/Activity;ILjava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 136
    .restart local v0       #intent:Landroid/content/Intent;
    if-eqz v0, :cond_9

    invoke-virtual {p0, v0}, Lcom/sprint/smps/activities/MainMenu;->startActivity(Landroid/content/Intent;)V

    goto :goto_9

    .line 139
    .end local v0           #intent:Landroid/content/Intent;
    :sswitch_56
    invoke-virtual {p0}, Lcom/sprint/smps/activities/MainMenu;->finish()V

    goto :goto_8

    .line 116
    :sswitch_data_5a
    .sparse-switch
        0x7f08001b -> :sswitch_a
        0x7f08001c -> :sswitch_43
        0x7f080059 -> :sswitch_1d
        0x7f08005a -> :sswitch_30
        0x7f08005b -> :sswitch_56
    .end sparse-switch
.end method

.method public onPause()V
    .registers 1

    .prologue
    .line 98
    invoke-static {}, Lcom/sprint/smps/TimeOutThread;->bumpTimout()V

    .line 99
    invoke-super {p0}, Lcom/sprint/smps/activities/ActivityHelper;->onPause()V

    .line 100
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .registers 2
    .parameter "hasFocus"

    .prologue
    .line 155
    if-eqz p1, :cond_8

    .line 157
    invoke-static {}, Lcom/sprint/smps/properties/Properties;->referenced()V

    .line 158
    invoke-static {p0}, Lcom/sprint/smps/TimeOutThread;->listener(Lcom/sprint/smps/TimeoutListener;)V

    .line 160
    :cond_8
    return-void
.end method
