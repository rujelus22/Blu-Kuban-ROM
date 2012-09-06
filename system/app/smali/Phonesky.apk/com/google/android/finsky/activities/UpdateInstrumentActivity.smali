.class public Lcom/google/android/finsky/activities/UpdateInstrumentActivity;
.super Lcom/google/android/finsky/activities/InstrumentActivity;
.source "UpdateInstrumentActivity.java"


# instance fields
.field private mActionBar:Lcom/google/android/finsky/layout/CustomActionBar;

.field private mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/google/android/finsky/activities/InstrumentActivity;-><init>()V

    .line 39
    new-instance v0, Lcom/google/android/finsky/activities/FakeNavigationManager;

    invoke-direct {v0, p0}, Lcom/google/android/finsky/activities/FakeNavigationManager;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/google/android/finsky/activities/UpdateInstrumentActivity;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    return-void
.end method

.method public static createIntent(Ljava/lang/String;Lcom/google/android/finsky/billing/Instrument;Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;ILjava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    .registers 10
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 47
    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v1

    const-class v2, Lcom/google/android/finsky/activities/UpdateInstrumentActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 48
    const-string v1, "authAccount"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 49
    const-string v1, "instrument_mode"

    sget-object v2, Lcom/google/android/finsky/activities/InstrumentActivity$Mode;->UPDATE:Lcom/google/android/finsky/activities/InstrumentActivity$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 51
    const-string v1, "billing_flow"

    invoke-virtual {p1}, Lcom/google/android/finsky/billing/Instrument;->getInstrumentFamily()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 54
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 55
    const-string v2, "rejected_instrument"

    invoke-static {p2}, Lcom/google/android/finsky/utils/ParcelableProto;->forProto(Lcom/google/protobuf/micro/MessageMicro;)Lcom/google/android/finsky/utils/ParcelableProto;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 57
    const-string v2, "instrument_display_name"

    invoke-virtual {p1}, Lcom/google/android/finsky/billing/Instrument;->getDisplayName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    const-string v2, "extra_paramters"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 60
    const-string v1, "backend_id"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 61
    const-string v1, "referrer_url"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 62
    const-string v1, "referrer_list_cookie"

    invoke-virtual {v0, v1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 63
    return-object v0
.end method

.method private setupActionBar(Landroid/os/Bundle;)V
    .registers 6
    .parameter "savedInstanceState"

    .prologue
    .line 84
    invoke-static {p0}, Lcom/google/android/finsky/layout/CustomActionBarFactory;->getInstance(Landroid/app/Activity;)Lcom/google/android/finsky/layout/CustomActionBar;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/finsky/activities/UpdateInstrumentActivity;->mActionBar:Lcom/google/android/finsky/layout/CustomActionBar;

    .line 85
    iget-object v1, p0, Lcom/google/android/finsky/activities/UpdateInstrumentActivity;->mActionBar:Lcom/google/android/finsky/layout/CustomActionBar;

    iget-object v2, p0, Lcom/google/android/finsky/activities/UpdateInstrumentActivity;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    invoke-interface {v1, v2, p0}, Lcom/google/android/finsky/layout/CustomActionBar;->initialize(Lcom/google/android/finsky/navigationmanager/NavigationManager;Landroid/app/Activity;)V

    .line 88
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/UpdateInstrumentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "backend_id"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 89
    .local v0, backendId:I
    iget-object v1, p0, Lcom/google/android/finsky/activities/UpdateInstrumentActivity;->mActionBar:Lcom/google/android/finsky/layout/CustomActionBar;

    invoke-interface {v1, v0}, Lcom/google/android/finsky/layout/CustomActionBar;->updateCurrentBackendId(I)V

    .line 92
    if-eqz p1, :cond_30

    const-string v1, "last_title"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_30

    .line 93
    const-string v1, "last_title"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/activities/UpdateInstrumentActivity;->setTitle(Ljava/lang/String;)V

    .line 95
    :cond_30
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 2
    .parameter "savedInstanceState"

    .prologue
    .line 68
    invoke-super {p0, p1}, Lcom/google/android/finsky/activities/InstrumentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 69
    invoke-direct {p0, p1}, Lcom/google/android/finsky/activities/UpdateInstrumentActivity;->setupActionBar(Landroid/os/Bundle;)V

    .line 70
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4
    .parameter "outState"

    .prologue
    .line 74
    invoke-super {p0, p1}, Lcom/google/android/finsky/activities/InstrumentActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 75
    const-string v0, "last_title"

    iget-object v1, p0, Lcom/google/android/finsky/activities/UpdateInstrumentActivity;->mActionBar:Lcom/google/android/finsky/layout/CustomActionBar;

    invoke-interface {v1}, Lcom/google/android/finsky/layout/CustomActionBar;->getBreadcrumbText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    return-void
.end method

.method protected setTitle(Ljava/lang/String;)V
    .registers 3
    .parameter "title"

    .prologue
    .line 80
    iget-object v0, p0, Lcom/google/android/finsky/activities/UpdateInstrumentActivity;->mActionBar:Lcom/google/android/finsky/layout/CustomActionBar;

    invoke-interface {v0, p1}, Lcom/google/android/finsky/layout/CustomActionBar;->updateBreadcrumb(Ljava/lang/String;)V

    .line 81
    return-void
.end method
