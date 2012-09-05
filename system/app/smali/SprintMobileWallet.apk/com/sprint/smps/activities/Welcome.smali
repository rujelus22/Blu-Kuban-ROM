.class public Lcom/sprint/smps/activities/Welcome;
.super Lcom/sprint/smps/activities/ActivityHelper;
.source "Welcome.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/sprint/smps/TimeoutListener;


# static fields
.field public static final PREFS_NAME:Ljava/lang/String; = "MyPrefsFile"

.field private static final TAG:Ljava/lang/String; = null

.field public static instance:Lcom/sprint/smps/activities/Welcome; = null

.field public static final name:Ljava/lang/String; = "Welcome"

.field private static passedThrough:Z


# instance fields
.field buttons:Ljava/util/Hashtable;
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
    .line 36
    const/4 v0, 0x0

    sput-object v0, Lcom/sprint/smps/activities/Welcome;->instance:Lcom/sprint/smps/activities/Welcome;

    .line 37
    const-class v0, Lcom/sprint/smps/activities/Welcome;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sprint/smps/activities/Welcome;->TAG:Ljava/lang/String;

    .line 40
    const/4 v0, 0x0

    sput-boolean v0, Lcom/sprint/smps/activities/Welcome;->passedThrough:Z

    .line 33
    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/sprint/smps/activities/ActivityHelper;-><init>()V

    .line 38
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/sprint/smps/activities/Welcome;->buttons:Ljava/util/Hashtable;

    .line 44
    const-string v0, "Welcome"

    invoke-static {p0, v0}, Lcom/sprint/smps/activities/Welcome;->addActivity(Landroid/app/Activity;Ljava/lang/String;)V

    .line 45
    sput-object p0, Lcom/sprint/smps/activities/Welcome;->instance:Lcom/sprint/smps/activities/Welcome;

    .line 46
    return-void
.end method

.method private showLogin()V
    .registers 4

    .prologue
    .line 123
    const v1, 0x7f080057

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const-class v2, Lcom/sprint/smps/activities/Login;

    invoke-static {p0, v1, v2}, Lcom/sprint/smps/activities/ActivityHelper;->getIntent(Landroid/app/Activity;ILjava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 124
    .local v0, intent:Landroid/content/Intent;
    if-eqz v0, :cond_16

    invoke-virtual {p0, v0}, Lcom/sprint/smps/activities/Welcome;->startActivity(Landroid/content/Intent;)V

    .line 125
    :cond_16
    return-void
.end method


# virtual methods
.method public finish()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 136
    invoke-virtual {p0}, Lcom/sprint/smps/activities/Welcome;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_19

    .line 138
    const/4 v0, 0x0

    sput-object v0, Lcom/sprint/smps/activities/Welcome;->instance:Lcom/sprint/smps/activities/Welcome;

    .line 139
    sput-boolean v2, Lcom/sprint/smps/activities/Welcome;->passedThrough:Z

    .line 140
    sget-boolean v0, Lcom/sprint/smps/properties/Properties;->loggedIn:Z

    if-nez v0, :cond_1a

    .line 142
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/sprint/smps/properties/Properties;->lastReferenced:J

    .line 143
    sput-boolean v2, Lcom/sprint/smps/properties/Properties;->initialized:Z

    .line 149
    :goto_16
    invoke-super {p0}, Lcom/sprint/smps/activities/ActivityHelper;->finish()V

    .line 151
    :cond_19
    return-void

    .line 146
    :cond_1a
    invoke-static {}, Lcom/sprint/smps/TimeOutThread;->bumpTimout()V

    goto :goto_16
.end method

.method public onClick(Landroid/view/View;)V
    .registers 6
    .parameter "v"

    .prologue
    .line 165
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    const v2, 0x7f080056

    if-eq v1, v2, :cond_12

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    const v2, 0x7f080057

    if-ne v1, v2, :cond_32

    .line 167
    :cond_12
    invoke-static {}, Lcom/sprint/smps/properties/Properties;->referenced()V

    .line 168
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    iget-object v1, p0, Lcom/sprint/smps/activities/Welcome;->buttons:Ljava/util/Hashtable;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    invoke-static {p0, v2, v1}, Lcom/sprint/smps/activities/ActivityHelper;->getIntent(Landroid/app/Activity;ILjava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 169
    .local v0, intent:Landroid/content/Intent;
    if-eqz v0, :cond_32

    invoke-virtual {p0, v0}, Lcom/sprint/smps/activities/Welcome;->startActivity(Landroid/content/Intent;)V

    .line 171
    .end local v0           #intent:Landroid/content/Intent;
    :cond_32
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 8
    .parameter "savedInstanceState"

    .prologue
    const v5, 0x7f080057

    const v4, 0x7f080056

    const/4 v3, 0x7

    .line 51
    invoke-super {p0, p1}, Lcom/sprint/smps/activities/ActivityHelper;->onCreate(Landroid/os/Bundle;)V

    .line 52
    invoke-static {}, Lcom/sprint/smps/properties/Properties;->referenced()V

    .line 53
    invoke-virtual {p0, v3}, Lcom/sprint/smps/activities/Welcome;->requestWindowFeature(I)Z

    .line 54
    const v1, 0x7f030021

    invoke-virtual {p0, v1}, Lcom/sprint/smps/activities/Welcome;->setContentView(I)V

    .line 58
    sget-object v1, Lcom/sprint/smps/properties/Properties;->localyticsSession:Lcom/Localytics/android/LocalyticsSession;

    if-eqz v1, :cond_21

    .line 59
    sget-object v1, Lcom/sprint/smps/properties/Properties;->localyticsSession:Lcom/Localytics/android/LocalyticsSession;

    const-string v2, "Welcome"

    invoke-virtual {v1, v2}, Lcom/Localytics/android/LocalyticsSession;->tagEvent(Ljava/lang/String;)V

    .line 61
    :cond_21
    invoke-virtual {p0}, Lcom/sprint/smps/activities/Welcome;->getWindow()Landroid/view/Window;

    move-result-object v1

    const v2, 0x7f03001c

    invoke-virtual {v1, v3, v2}, Landroid/view/Window;->setFeatureInt(II)V

    .line 62
    const v1, 0x7f08004a

    invoke-virtual {p0, v1}, Lcom/sprint/smps/activities/Welcome;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f06001d

    invoke-virtual {p0, v2}, Lcom/sprint/smps/activities/Welcome;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 63
    const v1, 0x7f08004b

    invoke-virtual {p0, v1}, Lcom/sprint/smps/activities/Welcome;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 65
    invoke-virtual {p0, v5}, Lcom/sprint/smps/activities/Welcome;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 66
    .local v0, button:Landroid/widget/Button;
    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 67
    iget-object v1, p0, Lcom/sprint/smps/activities/Welcome;->buttons:Ljava/util/Hashtable;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-class v3, Lcom/sprint/smps/activities/Login;

    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    invoke-virtual {p0, v4}, Lcom/sprint/smps/activities/Welcome;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0           #button:Landroid/widget/Button;
    check-cast v0, Landroid/widget/Button;

    .line 70
    .restart local v0       #button:Landroid/widget/Button;
    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 71
    iget-object v1, p0, Lcom/sprint/smps/activities/Welcome;->buttons:Ljava/util/Hashtable;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-class v3, Lcom/sprint/smps/activities/EULA;

    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    sget-boolean v1, Lcom/sprint/smps/activities/Welcome;->passedThrough:Z

    if-nez v1, :cond_86

    sget-boolean v1, Lcom/sprint/smps/properties/Properties;->registered:Z

    if-eqz v1, :cond_86

    .line 77
    invoke-direct {p0}, Lcom/sprint/smps/activities/Welcome;->showLogin()V

    .line 78
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/sprint/smps/activities/Welcome;->setVisible(Z)V

    .line 79
    const/4 v1, 0x1

    sput-boolean v1, Lcom/sprint/smps/activities/Welcome;->passedThrough:Z

    .line 81
    :cond_86
    invoke-static {p0}, Lcom/sprint/smps/TimeOutThread;->listener(Lcom/sprint/smps/TimeoutListener;)V

    .line 82
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 4
    .parameter "menu"

    .prologue
    .line 87
    invoke-static {}, Lcom/sprint/smps/properties/Properties;->referenced()V

    .line 89
    invoke-virtual {p0}, Lcom/sprint/smps/activities/Welcome;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 90
    .local v0, inflater:Landroid/view/MenuInflater;
    const v1, 0x7f070001

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 92
    const/4 v1, 0x1

    return v1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 5
    .parameter "item"

    .prologue
    .line 98
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_1e

    .line 112
    const/4 v1, 0x0

    :goto_8
    return v1

    .line 101
    :pswitch_9
    invoke-static {}, Lcom/sprint/smps/properties/Properties;->referenced()V

    .line 102
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    const-class v2, Lcom/sprint/smps/activities/ViewFAQs;

    invoke-static {p0, v1, v2}, Lcom/sprint/smps/activities/ActivityHelper;->getIntent(Landroid/app/Activity;ILjava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 103
    .local v0, intent:Landroid/content/Intent;
    if-eqz v0, :cond_1b

    invoke-virtual {p0, v0}, Lcom/sprint/smps/activities/Welcome;->startActivity(Landroid/content/Intent;)V

    .line 104
    :cond_1b
    const/4 v1, 0x1

    goto :goto_8

    .line 98
    nop

    :pswitch_data_1e
    .packed-switch 0x7f08005a
        :pswitch_9
    .end packed-switch
.end method

.method public onPause()V
    .registers 1

    .prologue
    .line 129
    invoke-static {}, Lcom/sprint/smps/TimeOutThread;->bumpTimout()V

    .line 130
    invoke-super {p0}, Lcom/sprint/smps/activities/ActivityHelper;->onPause()V

    .line 131
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .registers 2
    .parameter "hasFocus"

    .prologue
    .line 156
    if-eqz p1, :cond_8

    .line 158
    invoke-static {}, Lcom/sprint/smps/properties/Properties;->referenced()V

    .line 159
    invoke-static {p0}, Lcom/sprint/smps/TimeOutThread;->listener(Lcom/sprint/smps/TimeoutListener;)V

    .line 161
    :cond_8
    return-void
.end method
