.class public Lcom/google/android/apps/plus/phone/StreamCirclesActivity;
.super Lcom/google/android/apps/plus/fragments/EsFragmentActivity;
.source "StreamCirclesActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/google/android/apps/plus/fragments/CirclesMultipleSelectFragment$OnCircleSelectionListener;


# instance fields
.field private mFragment:Lcom/google/android/apps/plus/fragments/CirclesMultipleSelectFragment;

.field private mPositiveButton:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/EsFragmentActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected getAccount()Lcom/google/android/apps/plus/content/EsAccount;
    .registers 3

    .prologue
    .line 131
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/StreamCirclesActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "account"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/plus/content/EsAccount;

    return-object v0
.end method

.method protected getViewForLogging()Lcom/google/wireless/tacotruck/proto/Logging$Targets$Views;
    .registers 2

    .prologue
    .line 139
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Logging$Targets$Views;->LOOP_MANAGE:Lcom/google/wireless/tacotruck/proto/Logging$Targets$Views;

    return-object v0
.end method

.method public onAttachFragment(Landroid/support/v4/app/Fragment;)V
    .registers 4
    .parameter "fragment"

    .prologue
    .line 37
    instance-of v0, p1, Lcom/google/android/apps/plus/fragments/CirclesMultipleSelectFragment;

    if-eqz v0, :cond_13

    .line 38
    check-cast p1, Lcom/google/android/apps/plus/fragments/CirclesMultipleSelectFragment;

    .end local p1
    iput-object p1, p0, Lcom/google/android/apps/plus/phone/StreamCirclesActivity;->mFragment:Lcom/google/android/apps/plus/fragments/CirclesMultipleSelectFragment;

    .line 39
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/StreamCirclesActivity;->mFragment:Lcom/google/android/apps/plus/fragments/CirclesMultipleSelectFragment;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/fragments/CirclesMultipleSelectFragment;->setCircleUsageType(I)V

    .line 40
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/StreamCirclesActivity;->mFragment:Lcom/google/android/apps/plus/fragments/CirclesMultipleSelectFragment;

    invoke-virtual {v0, p0}, Lcom/google/android/apps/plus/fragments/CirclesMultipleSelectFragment;->setOnCircleSelectionListener(Lcom/google/android/apps/plus/fragments/CirclesMultipleSelectFragment$OnCircleSelectionListener;)V

    .line 42
    :cond_13
    return-void
.end method

.method public onCircleSelectionChange()V
    .registers 3

    .prologue
    .line 94
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/StreamCirclesActivity;->mFragment:Lcom/google/android/apps/plus/fragments/CirclesMultipleSelectFragment;

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/google/android/apps/plus/phone/StreamCirclesActivity;->mPositiveButton:Landroid/view/View;

    if-eqz v0, :cond_1a

    .line 95
    iget-object v1, p0, Lcom/google/android/apps/plus/phone/StreamCirclesActivity;->mPositiveButton:Landroid/view/View;

    iget-object v0, p0, Lcom/google/android/apps/plus/phone/StreamCirclesActivity;->mFragment:Lcom/google/android/apps/plus/fragments/CirclesMultipleSelectFragment;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/fragments/CirclesMultipleSelectFragment;->getSelectedCircleIds()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1b

    const/4 v0, 0x1

    :goto_17
    invoke-virtual {v1, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 97
    :cond_1a
    return-void

    .line 95
    :cond_1b
    const/4 v0, 0x0

    goto :goto_17
.end method

.method public onClick(Landroid/view/View;)V
    .registers 3
    .parameter "v"

    .prologue
    .line 76
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_10

    .line 87
    :goto_7
    return-void

    .line 78
    :pswitch_8
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/StreamCirclesActivity;->save()V

    goto :goto_7

    .line 83
    :pswitch_c
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/StreamCirclesActivity;->finish()V

    goto :goto_7

    .line 76
    :pswitch_data_10
    .packed-switch 0x7f0d0058
        :pswitch_8
        :pswitch_c
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 3
    .parameter "savedInstanceState"

    .prologue
    .line 49
    invoke-super {p0, p1}, Lcom/google/android/apps/plus/fragments/EsFragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 51
    const v0, 0x7f030017

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/phone/StreamCirclesActivity;->setContentView(I)V

    .line 52
    const v0, 0x7f0700e5

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/phone/StreamCirclesActivity;->setTitle(I)V

    .line 54
    const v0, 0x7f0d0058

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/phone/StreamCirclesActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/plus/phone/StreamCirclesActivity;->mPositiveButton:Landroid/view/View;

    .line 55
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/StreamCirclesActivity;->mPositiveButton:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 56
    const v0, 0x7f0d0059

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/phone/StreamCirclesActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 57
    return-void
.end method

.method public onResume()V
    .registers 2

    .prologue
    .line 64
    invoke-super {p0}, Lcom/google/android/apps/plus/fragments/EsFragmentActivity;->onResume()V

    .line 66
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/StreamCirclesActivity;->isIntentAccountActive()Z

    move-result v0

    if-nez v0, :cond_c

    .line 67
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/StreamCirclesActivity;->finish()V

    .line 69
    :cond_c
    return-void
.end method

.method public save()V
    .registers 5

    .prologue
    .line 105
    iget-object v2, p0, Lcom/google/android/apps/plus/phone/StreamCirclesActivity;->mFragment:Lcom/google/android/apps/plus/fragments/CirclesMultipleSelectFragment;

    invoke-virtual {v2}, Lcom/google/android/apps/plus/fragments/CirclesMultipleSelectFragment;->getOriginalCircleIds()Ljava/util/ArrayList;

    move-result-object v0

    .line 106
    .local v0, originalCircleIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-nez v0, :cond_9

    .line 124
    :cond_8
    :goto_8
    return-void

    .line 110
    :cond_9
    iget-object v2, p0, Lcom/google/android/apps/plus/phone/StreamCirclesActivity;->mFragment:Lcom/google/android/apps/plus/fragments/CirclesMultipleSelectFragment;

    invoke-virtual {v2}, Lcom/google/android/apps/plus/fragments/CirclesMultipleSelectFragment;->getSelectedCircleIds()Ljava/util/ArrayList;

    move-result-object v1

    .line 111
    .local v1, selectedCircleIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 112
    invoke-static {v1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 114
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 115
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/StreamCirclesActivity;->finish()V

    goto :goto_8

    .line 119
    :cond_1f
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_8

    .line 120
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/StreamCirclesActivity;->getAccount()Lcom/google/android/apps/plus/content/EsAccount;

    move-result-object v3

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    invoke-static {p0, v3, v2}, Lcom/google/android/apps/plus/service/EsService;->setShowCircles(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;[Ljava/lang/String;)I

    .line 122
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/StreamCirclesActivity;->finish()V

    goto :goto_8
.end method
