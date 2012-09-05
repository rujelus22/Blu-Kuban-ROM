.class public Lcom/samsung/android/app/divx/DivxDeRegistration;
.super Landroid/app/Activity;
.source "DivxDeRegistration.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 15
    .parameter "savedInstanceState"

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 23
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 25
    const/high16 v8, 0x7f03

    invoke-virtual {p0, v8}, Lcom/samsung/android/app/divx/DivxDeRegistration;->setContentView(I)V

    .line 27
    const v8, 0x7f070003

    invoke-virtual {p0, v8}, Lcom/samsung/android/app/divx/DivxDeRegistration;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 29
    .local v1, divxRegisterCode:Landroid/widget/TextView;
    const v8, 0x7f070004

    invoke-virtual {p0, v8}, Lcom/samsung/android/app/divx/DivxDeRegistration;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 30
    .local v2, divxRegisterWebsite:Landroid/widget/TextView;
    const v8, 0x7f06001e

    new-array v9, v12, [Ljava/lang/Object;

    const-string v10, "http://vod.divx.com"

    aput-object v10, v9, v11

    invoke-virtual {p0, v8, v9}, Lcom/samsung/android/app/divx/DivxDeRegistration;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 33
    sget-object v8, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v9, "DivxDeRegistration deregistration code is called"

    invoke-virtual {v8, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 37
    new-instance v3, Landroid/drm/DrmManagerClient;

    invoke-virtual {p0}, Lcom/samsung/android/app/divx/DivxDeRegistration;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    invoke-direct {v3, v8}, Landroid/drm/DrmManagerClient;-><init>(Landroid/content/Context;)V

    .line 38
    .local v3, drmClient:Landroid/drm/DrmManagerClient;
    new-instance v5, Landroid/drm/DrmInfoRequest;

    const/4 v8, 0x2

    const-string v9, "video/mux/DivX"

    invoke-direct {v5, v8, v9}, Landroid/drm/DrmInfoRequest;-><init>(ILjava/lang/String;)V

    .line 42
    .local v5, drmInfoRequest:Landroid/drm/DrmInfoRequest;
    invoke-virtual {v3, v5}, Landroid/drm/DrmManagerClient;->acquireDrmInfo(Landroid/drm/DrmInfoRequest;)Landroid/drm/DrmInfo;

    move-result-object v4

    .line 43
    .local v4, drmInfo:Landroid/drm/DrmInfo;
    if-eqz v4, :cond_7f

    .line 45
    invoke-virtual {v4}, Landroid/drm/DrmInfo;->getData()[B

    move-result-object v8

    if-eqz v8, :cond_7f

    .line 47
    new-instance v7, Ljava/lang/String;

    invoke-virtual {v4}, Landroid/drm/DrmInfo;->getData()[B

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/String;-><init>([B)V

    .line 48
    .local v7, unreg_code:Ljava/lang/String;
    sget-object v8, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "DivxDeRegistration deregistration code :"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 49
    const v8, 0x7f06001d

    new-array v9, v12, [Ljava/lang/Object;

    aput-object v7, v9, v11

    invoke-virtual {p0, v8, v9}, Lcom/samsung/android/app/divx/DivxDeRegistration;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 53
    .end local v7           #unreg_code:Ljava/lang/String;
    :cond_7f
    const v8, 0x7f070006

    invoke-virtual {p0, v8}, Lcom/samsung/android/app/divx/DivxDeRegistration;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Button;

    .line 54
    .local v6, registerButton:Landroid/widget/Button;
    new-instance v8, Lcom/samsung/android/app/divx/DivxDeRegistration$1;

    invoke-direct {v8, p0, v3}, Lcom/samsung/android/app/divx/DivxDeRegistration$1;-><init>(Lcom/samsung/android/app/divx/DivxDeRegistration;Landroid/drm/DrmManagerClient;)V

    invoke-virtual {v6, v8}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 62
    const v8, 0x7f070007

    invoke-virtual {p0, v8}, Lcom/samsung/android/app/divx/DivxDeRegistration;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 64
    .local v0, cancelregisterButton:Landroid/widget/Button;
    new-instance v8, Lcom/samsung/android/app/divx/DivxDeRegistration$2;

    invoke-direct {v8, p0, v3}, Lcom/samsung/android/app/divx/DivxDeRegistration$2;-><init>(Lcom/samsung/android/app/divx/DivxDeRegistration;Landroid/drm/DrmManagerClient;)V

    invoke-virtual {v0, v8}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 72
    return-void
.end method
