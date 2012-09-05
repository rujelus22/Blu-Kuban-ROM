.class public Lcom/locationlabs/v3client/feature/whitelist/PhoneCoverer;
.super Landroid/app/Activity;
.source "a"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 12
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 5
    .parameter

    .prologue
    const/16 v2, 0x400

    .line 17
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 21
    const-string v0, "com.locationlabs.v3client.action.STOP"

    invoke-virtual {p0}, Lcom/locationlabs/v3client/feature/whitelist/PhoneCoverer;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 22
    invoke-virtual {p0}, Lcom/locationlabs/v3client/feature/whitelist/PhoneCoverer;->finish()V

    .line 34
    :goto_18
    return-void

    .line 26
    :cond_19
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/locationlabs/v3client/feature/whitelist/PhoneCoverer;->requestWindowFeature(I)Z

    .line 28
    invoke-virtual {p0}, Lcom/locationlabs/v3client/feature/whitelist/PhoneCoverer;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v2, v2}, Landroid/view/Window;->setFlags(II)V

    .line 31
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 32
    invoke-virtual {p0, v0}, Lcom/locationlabs/v3client/feature/whitelist/PhoneCoverer;->setContentView(Landroid/view/View;)V

    goto :goto_18
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .registers 4
    .parameter

    .prologue
    .line 38
    const-string v0, "com.locationlabs.v3client.action.STOP"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 39
    invoke-virtual {p0}, Lcom/locationlabs/v3client/feature/whitelist/PhoneCoverer;->finish()V

    .line 41
    :cond_f
    return-void
.end method
