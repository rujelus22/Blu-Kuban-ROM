.class public Lcom/samsung/android/app/divx/DivxRegistration;
.super Landroid/app/Activity;
.source "DivxRegistration.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 13
    .parameter "savedInstanceState"

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 22
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 24
    const v7, 0x7f030001

    invoke-virtual {p0, v7}, Lcom/samsung/android/app/divx/DivxRegistration;->setContentView(I)V

    .line 26
    const v7, 0x7f070009

    invoke-virtual {p0, v7}, Lcom/samsung/android/app/divx/DivxRegistration;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 29
    .local v0, divxRegisterCode:Landroid/widget/TextView;
    new-instance v2, Landroid/drm/DrmManagerClient;

    invoke-virtual {p0}, Lcom/samsung/android/app/divx/DivxRegistration;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v2, v7}, Landroid/drm/DrmManagerClient;-><init>(Landroid/content/Context;)V

    .line 30
    .local v2, drmClient:Landroid/drm/DrmManagerClient;
    new-instance v4, Landroid/drm/DrmInfoRequest;

    const-string v7, "video/mux/DivX"

    invoke-direct {v4, v9, v7}, Landroid/drm/DrmInfoRequest;-><init>(ILjava/lang/String;)V

    .line 34
    .local v4, drmInfoRequest:Landroid/drm/DrmInfoRequest;
    invoke-virtual {v2, v4}, Landroid/drm/DrmManagerClient;->acquireDrmInfo(Landroid/drm/DrmInfoRequest;)Landroid/drm/DrmInfo;

    move-result-object v3

    .line 35
    .local v3, drmInfo:Landroid/drm/DrmInfo;
    if-eqz v3, :cond_47

    .line 37
    invoke-virtual {v3}, Landroid/drm/DrmInfo;->getData()[B

    move-result-object v7

    if-eqz v7, :cond_47

    .line 39
    new-instance v6, Ljava/lang/String;

    invoke-virtual {v3}, Landroid/drm/DrmInfo;->getData()[B

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/String;-><init>([B)V

    .line 40
    .local v6, reg_code:Ljava/lang/String;
    const v7, 0x7f06001b

    new-array v8, v9, [Ljava/lang/Object;

    aput-object v6, v8, v10

    invoke-virtual {p0, v7, v8}, Lcom/samsung/android/app/divx/DivxRegistration;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 45
    .end local v6           #reg_code:Ljava/lang/String;
    :cond_47
    const v7, 0x7f07000a

    invoke-virtual {p0, v7}, Lcom/samsung/android/app/divx/DivxRegistration;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 46
    .local v1, divxRegisterWebsite:Landroid/widget/TextView;
    const v7, 0x7f06001c

    new-array v8, v9, [Ljava/lang/Object;

    const-string v9, "http://vod.divx.com"

    aput-object v9, v8, v10

    invoke-virtual {p0, v7, v8}, Lcom/samsung/android/app/divx/DivxRegistration;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 49
    const v7, 0x7f070006

    invoke-virtual {p0, v7}, Lcom/samsung/android/app/divx/DivxRegistration;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    .line 51
    .local v5, okregisterButton:Landroid/widget/Button;
    new-instance v7, Lcom/samsung/android/app/divx/DivxRegistration$1;

    invoke-direct {v7, p0, v2}, Lcom/samsung/android/app/divx/DivxRegistration$1;-><init>(Lcom/samsung/android/app/divx/DivxRegistration;Landroid/drm/DrmManagerClient;)V

    invoke-virtual {v5, v7}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 58
    return-void
.end method
