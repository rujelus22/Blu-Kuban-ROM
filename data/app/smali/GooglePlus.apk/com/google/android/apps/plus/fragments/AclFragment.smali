.class public Lcom/google/android/apps/plus/fragments/AclFragment;
.super Landroid/support/v4/app/DialogFragment;
.source "AclFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/plus/fragments/AclFragment$AudienceAdapter;,
        Lcom/google/android/apps/plus/fragments/AclFragment$AudienceItem;
    }
.end annotation


# instance fields
.field private mAccount:Lcom/google/android/apps/plus/content/EsAccount;

.field private mAdapter:Lcom/google/android/apps/plus/fragments/AclFragment$AudienceAdapter;

.field private mListView:Landroid/widget/ListView;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 36
    invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    .line 108
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 2
    .parameter "v"

    .prologue
    .line 276
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/AclFragment;->dismiss()V

    .line 277
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 11
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 248
    const v3, 0x7f030064

    invoke-virtual {p1, v3, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 249
    .local v2, view:Landroid/view/View;
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/AclFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 252
    .local v0, args:Landroid/os/Bundle;
    const v3, 0x102000a

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ListView;

    iput-object v3, p0, Lcom/google/android/apps/plus/fragments/AclFragment;->mListView:Landroid/widget/ListView;

    .line 254
    const-string v3, "audience"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/google/android/apps/plus/api/AudienceData;

    .line 255
    .local v1, audienceData:Lcom/google/android/apps/plus/api/AudienceData;
    const-string v3, "account"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Lcom/google/android/apps/plus/content/EsAccount;

    iput-object v3, p0, Lcom/google/android/apps/plus/fragments/AclFragment;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    .line 256
    new-instance v3, Lcom/google/android/apps/plus/fragments/AclFragment$AudienceAdapter;

    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/AclFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/apps/plus/fragments/AclFragment;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    iget-object v6, p0, Lcom/google/android/apps/plus/fragments/AclFragment;->mListView:Landroid/widget/ListView;

    invoke-direct {v3, v4, v5, v1, v6}, Lcom/google/android/apps/plus/fragments/AclFragment$AudienceAdapter;-><init>(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/android/apps/plus/api/AudienceData;Landroid/widget/ListView;)V

    iput-object v3, p0, Lcom/google/android/apps/plus/fragments/AclFragment;->mAdapter:Lcom/google/android/apps/plus/fragments/AclFragment$AudienceAdapter;

    .line 257
    iget-object v3, p0, Lcom/google/android/apps/plus/fragments/AclFragment;->mListView:Landroid/widget/ListView;

    iget-object v4, p0, Lcom/google/android/apps/plus/fragments/AclFragment;->mAdapter:Lcom/google/android/apps/plus/fragments/AclFragment$AudienceAdapter;

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 258
    iget-object v3, p0, Lcom/google/android/apps/plus/fragments/AclFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v3, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 261
    const v3, 0x7f09006e

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 263
    const v3, 0x7f09006f

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 266
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/AclFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v3

    const-string v4, "acl_display"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 268
    return-object v2
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 16
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 284
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v6, p0, Lcom/google/android/apps/plus/fragments/AclFragment;->mAdapter:Lcom/google/android/apps/plus/fragments/AclFragment$AudienceAdapter;

    invoke-virtual {v6, p3}, Lcom/google/android/apps/plus/fragments/AclFragment$AudienceAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/apps/plus/fragments/AclFragment$AudienceItem;

    .line 285
    .local v3, item:Lcom/google/android/apps/plus/fragments/AclFragment$AudienceItem;
    iget v6, v3, Lcom/google/android/apps/plus/fragments/AclFragment$AudienceItem;->mType:I

    packed-switch v6, :pswitch_data_7c

    .line 316
    :cond_d
    :goto_d
    return-void

    .line 287
    :pswitch_e
    iget-object v0, v3, Lcom/google/android/apps/plus/fragments/AclFragment$AudienceItem;->mCircle:Lcom/google/wireless/tacotruck/proto/Data$Circle;

    .line 288
    .local v0, circle:Lcom/google/wireless/tacotruck/proto/Data$Circle;
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/AclFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    iget-object v7, p0, Lcom/google/android/apps/plus/fragments/AclFragment;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$Circle;->getId()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v7, v8}, Lcom/google/android/apps/plus/phone/Intents;->getCirclePeopleActivityIntent(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    .line 290
    .local v2, intent:Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/AclFragment;->dismiss()V

    .line 291
    invoke-virtual {p0, v2}, Lcom/google/android/apps/plus/fragments/AclFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_d

    .line 296
    .end local v0           #circle:Lcom/google/wireless/tacotruck/proto/Data$Circle;
    .end local v2           #intent:Landroid/content/Intent;
    :pswitch_25
    iget-object v4, v3, Lcom/google/android/apps/plus/fragments/AclFragment$AudienceItem;->mPerson:Lcom/google/wireless/tacotruck/proto/Data$Person;

    .line 297
    .local v4, person:Lcom/google/wireless/tacotruck/proto/Data$Person;
    const/4 v5, 0x0

    .line 298
    .local v5, personId:Ljava/lang/String;
    const/4 v1, 0x0

    .line 299
    .local v1, gaiaId:Ljava/lang/String;
    invoke-virtual {v4}, Lcom/google/wireless/tacotruck/proto/Data$Person;->hasFocusObfuscatedId()Z

    move-result v6

    if-eqz v6, :cond_33

    .line 300
    invoke-virtual {v4}, Lcom/google/wireless/tacotruck/proto/Data$Person;->getFocusObfuscatedId()Ljava/lang/String;

    move-result-object v1

    .line 302
    :cond_33
    if-eqz v1, :cond_5d

    .line 303
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "g:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 307
    :cond_48
    :goto_48
    if-eqz v5, :cond_d

    .line 308
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/AclFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    iget-object v7, p0, Lcom/google/android/apps/plus/fragments/AclFragment;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static {v6, v7, v5, v8, v9}, Lcom/google/android/apps/plus/phone/Intents;->getProfileActivityIntent(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v2

    .line 310
    .restart local v2       #intent:Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/AclFragment;->dismiss()V

    .line 311
    invoke-virtual {p0, v2}, Lcom/google/android/apps/plus/fragments/AclFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_d

    .line 304
    .end local v2           #intent:Landroid/content/Intent;
    :cond_5d
    invoke-virtual {v4}, Lcom/google/wireless/tacotruck/proto/Data$Person;->hasEmail()Z

    move-result v6

    if-eqz v6, :cond_48

    .line 305
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "e:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Lcom/google/wireless/tacotruck/proto/Data$Person;->getEmail()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_48

    .line 285
    nop

    :pswitch_data_7c
    .packed-switch 0x0
        :pswitch_e
        :pswitch_25
    .end packed-switch
.end method
