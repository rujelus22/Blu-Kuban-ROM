.class public Lcom/google/android/apps/reader/app/SocialActivity;
.super Landroid/app/Activity;
.source "SocialActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/reader/app/SocialActivity$1;,
        Lcom/google/android/apps/reader/app/SocialActivity$SubscribeQueryHandler;
    }
.end annotation


# instance fields
.field private mQueryHandler:Lcom/google/android/apps/reader/app/SocialActivity$SubscribeQueryHandler;

.field private mService:Landroid/widget/Spinner;

.field private mUsername:Landroid/widget/EditText;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 45
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 94
    return-void
.end method

.method static synthetic access$100(Lcom/google/android/apps/reader/app/SocialActivity;Ljava/lang/CharSequence;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/google/android/apps/reader/app/SocialActivity;->showToast(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private showToast(Ljava/lang/CharSequence;)V
    .registers 4
    .parameter "text"

    .prologue
    .line 90
    const/4 v1, 0x0

    invoke-static {p0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 91
    .local v0, toast:Landroid/widget/Toast;
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 92
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 12
    .parameter "v"

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 73
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v6

    packed-switch v6, :pswitch_data_52

    .line 87
    :goto_9
    return-void

    .line 75
    :pswitch_a
    iget-object v6, p0, Lcom/google/android/apps/reader/app/SocialActivity;->mUsername:Landroid/widget/EditText;

    invoke-static {v6}, Lcom/google/android/apps/reader/util/SoftInput;->hide(Landroid/view/View;)V

    .line 77
    iget-object v6, p0, Lcom/google/android/apps/reader/app/SocialActivity;->mUsername:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    .line 78
    .local v5, username:Ljava/lang/String;
    iget-object v6, p0, Lcom/google/android/apps/reader/app/SocialActivity;->mService:Landroid/widget/Spinner;

    invoke-virtual {v6}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$ServiceDefinition;

    .line 79
    .local v1, service:Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$ServiceDefinition;
    invoke-virtual {v1}, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$ServiceDefinition;->getUrlPattern()Ljava/lang/String;

    move-result-object v0

    .line 80
    .local v0, pattern:Ljava/lang/String;
    const-string v6, "%1"

    const-string v7, "%s"

    invoke-virtual {v0, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 81
    invoke-virtual {v1}, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$ServiceDefinition;->getName()Ljava/lang/String;

    move-result-object v2

    .line 82
    .local v2, serviceName:Ljava/lang/String;
    new-array v6, v9, [Ljava/lang/Object;

    invoke-static {v5}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v0, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 83
    .local v4, url:Ljava/lang/String;
    const v6, 0x7f0d002f

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v5, v7, v8

    aput-object v2, v7, v9

    invoke-virtual {p0, v6, v7}, Lcom/google/android/apps/reader/app/SocialActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 84
    .local v3, title:Ljava/lang/String;
    iget-object v6, p0, Lcom/google/android/apps/reader/app/SocialActivity;->mQueryHandler:Lcom/google/android/apps/reader/app/SocialActivity$SubscribeQueryHandler;

    invoke-virtual {v6, v4, v3}, Lcom/google/android/apps/reader/app/SocialActivity$SubscribeQueryHandler;->startSubscribe(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_9

    .line 73
    nop

    :pswitch_data_52
    .packed-switch 0x7f0b002d
        :pswitch_a
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 7
    .parameter "savedInstanceState"

    .prologue
    .line 55
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 56
    const v3, 0x7f03000f

    invoke-virtual {p0, v3}, Lcom/google/android/apps/reader/app/SocialActivity;->setContentView(I)V

    .line 57
    const v3, 0x7f0b002b

    invoke-virtual {p0, v3}, Lcom/google/android/apps/reader/app/SocialActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    iput-object v3, p0, Lcom/google/android/apps/reader/app/SocialActivity;->mUsername:Landroid/widget/EditText;

    .line 58
    const v3, 0x7f0b002c

    invoke-virtual {p0, v3}, Lcom/google/android/apps/reader/app/SocialActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Spinner;

    iput-object v3, p0, Lcom/google/android/apps/reader/app/SocialActivity;->mService:Landroid/widget/Spinner;

    .line 60
    invoke-virtual {p0}, Lcom/google/android/apps/reader/app/SocialActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 61
    .local v1, resources:Landroid/content/res/Resources;
    invoke-static {v1}, Lcom/google/android/apps/reader/res/ReaderResources;->getServices(Landroid/content/res/Resources;)Ljava/util/List;

    move-result-object v2

    .line 62
    .local v2, services:Ljava/util/List;,"Ljava/util/List<Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$ServiceDefinition;>;"
    new-instance v0, Lcom/google/android/apps/reader/widget/ServiceSpinnerAdapter;

    invoke-direct {v0, v2}, Lcom/google/android/apps/reader/widget/ServiceSpinnerAdapter;-><init>(Ljava/util/List;)V

    .line 63
    .local v0, adapter:Lcom/google/android/apps/reader/widget/ServiceSpinnerAdapter;
    iget-object v3, p0, Lcom/google/android/apps/reader/app/SocialActivity;->mService:Landroid/widget/Spinner;

    invoke-virtual {v3, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 65
    new-instance v3, Lcom/google/android/apps/reader/app/SocialActivity$SubscribeQueryHandler;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/google/android/apps/reader/app/SocialActivity$SubscribeQueryHandler;-><init>(Lcom/google/android/apps/reader/app/SocialActivity;Lcom/google/android/apps/reader/app/SocialActivity$1;)V

    iput-object v3, p0, Lcom/google/android/apps/reader/app/SocialActivity;->mQueryHandler:Lcom/google/android/apps/reader/app/SocialActivity$SubscribeQueryHandler;

    .line 66
    const v3, 0x7f0b002d

    invoke-virtual {p0, v3}, Lcom/google/android/apps/reader/app/SocialActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 67
    return-void
.end method
