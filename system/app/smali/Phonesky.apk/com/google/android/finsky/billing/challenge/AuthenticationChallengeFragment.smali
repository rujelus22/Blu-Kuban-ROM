.class public Lcom/google/android/finsky/billing/challenge/AuthenticationChallengeFragment;
.super Landroid/support/v4/app/Fragment;
.source "AuthenticationChallengeFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/finsky/billing/challenge/AuthenticationChallengeFragment$Listener;
    }
.end annotation


# instance fields
.field private mAccountName:Ljava/lang/String;

.field private mAnalytics:Lcom/google/android/finsky/analytics/Analytics;

.field private mAuthRequest:Lcom/android/volley/Request;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/volley/Request",
            "<*>;"
        }
    .end annotation
.end field

.field private mAuthenticationType:I

.field private mChallenge:Lcom/google/android/finsky/remoting/protos/ChallengeProtos$AuthenticationChallenge;

.field private mInput:Landroid/widget/EditText;

.field private mListener:Lcom/google/android/finsky/billing/challenge/AuthenticationChallengeFragment$Listener;

.field private mRetryCount:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 48
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 52
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/finsky/billing/challenge/AuthenticationChallengeFragment;->mAuthRequest:Lcom/android/volley/Request;

    .line 245
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/finsky/billing/challenge/AuthenticationChallengeFragment;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/google/android/finsky/billing/challenge/AuthenticationChallengeFragment;->success()V

    return-void
.end method

.method static synthetic access$100(Lcom/google/android/finsky/billing/challenge/AuthenticationChallengeFragment;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/google/android/finsky/billing/challenge/AuthenticationChallengeFragment;->failure()V

    return-void
.end method

.method static synthetic access$200(Lcom/google/android/finsky/billing/challenge/AuthenticationChallengeFragment;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/google/android/finsky/billing/challenge/AuthenticationChallengeFragment;->mAccountName:Ljava/lang/String;

    return-object v0
.end method

.method private failure()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 227
    iget-object v0, p0, Lcom/google/android/finsky/billing/challenge/AuthenticationChallengeFragment;->mInput:Landroid/widget/EditText;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 228
    iget-object v0, p0, Lcom/google/android/finsky/billing/challenge/AuthenticationChallengeFragment;->mInput:Landroid/widget/EditText;

    invoke-virtual {p0}, Lcom/google/android/finsky/billing/challenge/AuthenticationChallengeFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07007b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 229
    iget v0, p0, Lcom/google/android/finsky/billing/challenge/AuthenticationChallengeFragment;->mRetryCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/finsky/billing/challenge/AuthenticationChallengeFragment;->mRetryCount:I

    .line 230
    iget-object v0, p0, Lcom/google/android/finsky/billing/challenge/AuthenticationChallengeFragment;->mAnalytics:Lcom/google/android/finsky/analytics/Analytics;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "authChallenge.failure?type="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/google/android/finsky/billing/challenge/AuthenticationChallengeFragment;->mAuthenticationType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&retries="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/google/android/finsky/billing/challenge/AuthenticationChallengeFragment;->mRetryCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v3, v3, v1}, Lcom/google/android/finsky/analytics/Analytics;->logPageView(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    return-void
.end method

.method public static newInstance(Ljava/lang/String;Lcom/google/android/finsky/remoting/protos/ChallengeProtos$AuthenticationChallenge;)Lcom/google/android/finsky/billing/challenge/AuthenticationChallengeFragment;
    .registers 6
    .parameter "account"
    .parameter "authenticationChallenge"

    .prologue
    .line 64
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 65
    .local v0, arguments:Landroid/os/Bundle;
    const-string v2, "authAccount"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    const-string v2, "authentication_challenge"

    invoke-static {p1}, Lcom/google/android/finsky/utils/ParcelableProto;->forProto(Lcom/google/protobuf/micro/MessageMicro;)Lcom/google/android/finsky/utils/ParcelableProto;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 68
    new-instance v1, Lcom/google/android/finsky/billing/challenge/AuthenticationChallengeFragment;

    invoke-direct {v1}, Lcom/google/android/finsky/billing/challenge/AuthenticationChallengeFragment;-><init>()V

    .line 69
    .local v1, fragment:Lcom/google/android/finsky/billing/challenge/AuthenticationChallengeFragment;
    invoke-virtual {v1, v0}, Lcom/google/android/finsky/billing/challenge/AuthenticationChallengeFragment;->setArguments(Landroid/os/Bundle;)V

    .line 70
    return-object v1
.end method

.method private success()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 235
    iget-object v0, p0, Lcom/google/android/finsky/billing/challenge/AuthenticationChallengeFragment;->mInput:Landroid/widget/EditText;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 236
    iget-object v0, p0, Lcom/google/android/finsky/billing/challenge/AuthenticationChallengeFragment;->mInput:Landroid/widget/EditText;

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 237
    iget-object v0, p0, Lcom/google/android/finsky/billing/challenge/AuthenticationChallengeFragment;->mListener:Lcom/google/android/finsky/billing/challenge/AuthenticationChallengeFragment$Listener;

    if-eqz v0, :cond_19

    .line 238
    iget-object v0, p0, Lcom/google/android/finsky/billing/challenge/AuthenticationChallengeFragment;->mListener:Lcom/google/android/finsky/billing/challenge/AuthenticationChallengeFragment$Listener;

    iget v1, p0, Lcom/google/android/finsky/billing/challenge/AuthenticationChallengeFragment;->mAuthenticationType:I

    iget v2, p0, Lcom/google/android/finsky/billing/challenge/AuthenticationChallengeFragment;->mRetryCount:I

    invoke-interface {v0, v1, v2}, Lcom/google/android/finsky/billing/challenge/AuthenticationChallengeFragment$Listener;->onSuccess(II)V

    .line 240
    :cond_19
    sget-object v0, Lcom/google/android/finsky/utils/FinskyPreferences;->lastGaiaAuthTimestamp:Lcom/google/android/finsky/config/PreferenceFile$PrefixSharedPreference;

    iget-object v1, p0, Lcom/google/android/finsky/billing/challenge/AuthenticationChallengeFragment;->mAccountName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/config/PreferenceFile$PrefixSharedPreference;->get(Ljava/lang/String;)Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;->put(Ljava/lang/Object;)V

    .line 241
    iget-object v0, p0, Lcom/google/android/finsky/billing/challenge/AuthenticationChallengeFragment;->mAnalytics:Lcom/google/android/finsky/analytics/Analytics;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "authChallenge.success?type="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/google/android/finsky/billing/challenge/AuthenticationChallengeFragment;->mAuthenticationType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&retries="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/google/android/finsky/billing/challenge/AuthenticationChallengeFragment;->mRetryCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v3, v3, v1}, Lcom/google/android/finsky/analytics/Analytics;->logPageView(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    return-void
.end method

.method private verifyGaia(Ljava/lang/String;)V
    .registers 5
    .parameter "password"

    .prologue
    .line 164
    new-instance v0, Lcom/google/android/finsky/billing/challenge/ClientLoginApi;

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/FinskyApp;->getRequestQueue()Lcom/android/volley/RequestQueue;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/finsky/billing/challenge/ClientLoginApi;-><init>(Lcom/android/volley/RequestQueue;)V

    .line 165
    .local v0, clientLoginApi:Lcom/google/android/finsky/billing/challenge/ClientLoginApi;
    iget-object v1, p0, Lcom/google/android/finsky/billing/challenge/AuthenticationChallengeFragment;->mAccountName:Ljava/lang/String;

    new-instance v2, Lcom/google/android/finsky/billing/challenge/AuthenticationChallengeFragment$1;

    invoke-direct {v2, p0}, Lcom/google/android/finsky/billing/challenge/AuthenticationChallengeFragment$1;-><init>(Lcom/google/android/finsky/billing/challenge/AuthenticationChallengeFragment;)V

    invoke-virtual {v0, v1, p1, v2}, Lcom/google/android/finsky/billing/challenge/ClientLoginApi;->validateUser(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/finsky/billing/challenge/ClientLoginApi$ClientLoginListener;)Lcom/android/volley/Request;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/finsky/billing/challenge/AuthenticationChallengeFragment;->mAuthRequest:Lcom/android/volley/Request;

    .line 216
    return-void
.end method

.method private verifyInput()V
    .registers 4

    .prologue
    .line 149
    iget-object v1, p0, Lcom/google/android/finsky/billing/challenge/AuthenticationChallengeFragment;->mInput:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 150
    .local v0, input:Ljava/lang/String;
    iget-object v1, p0, Lcom/google/android/finsky/billing/challenge/AuthenticationChallengeFragment;->mInput:Landroid/widget/EditText;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 151
    invoke-direct {p0, v0}, Lcom/google/android/finsky/billing/challenge/AuthenticationChallengeFragment;->verifyGaia(Ljava/lang/String;)V

    .line 152
    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 5
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 252
    const/16 v0, 0x64

    if-ne p1, v0, :cond_f

    .line 253
    const/4 v0, -0x1

    if-ne p2, v0, :cond_b

    .line 254
    invoke-direct {p0}, Lcom/google/android/finsky/billing/challenge/AuthenticationChallengeFragment;->success()V

    .line 261
    :goto_a
    return-void

    .line 256
    :cond_b
    invoke-direct {p0}, Lcom/google/android/finsky/billing/challenge/AuthenticationChallengeFragment;->failure()V

    goto :goto_a

    .line 259
    :cond_f
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_a
.end method

.method public onClick(Landroid/view/View;)V
    .registers 3
    .parameter "view"

    .prologue
    .line 132
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_16

    .line 142
    :cond_7
    :goto_7
    return-void

    .line 134
    :pswitch_8
    invoke-direct {p0}, Lcom/google/android/finsky/billing/challenge/AuthenticationChallengeFragment;->verifyInput()V

    goto :goto_7

    .line 137
    :pswitch_c
    iget-object v0, p0, Lcom/google/android/finsky/billing/challenge/AuthenticationChallengeFragment;->mListener:Lcom/google/android/finsky/billing/challenge/AuthenticationChallengeFragment$Listener;

    if-eqz v0, :cond_7

    .line 138
    iget-object v0, p0, Lcom/google/android/finsky/billing/challenge/AuthenticationChallengeFragment;->mListener:Lcom/google/android/finsky/billing/challenge/AuthenticationChallengeFragment$Listener;

    invoke-interface {v0}, Lcom/google/android/finsky/billing/challenge/AuthenticationChallengeFragment$Listener;->onCancel()V

    goto :goto_7

    .line 132
    :pswitch_data_16
    .packed-switch 0x7f08002d
        :pswitch_8
        :pswitch_c
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 4
    .parameter "savedInstanceState"

    .prologue
    .line 75
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 76
    invoke-virtual {p0}, Lcom/google/android/finsky/billing/challenge/AuthenticationChallengeFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "authentication_challenge"

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/ParcelableProto;->getProtoFromBundle(Landroid/os/Bundle;Ljava/lang/String;)Lcom/google/protobuf/micro/MessageMicro;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/remoting/protos/ChallengeProtos$AuthenticationChallenge;

    iput-object v0, p0, Lcom/google/android/finsky/billing/challenge/AuthenticationChallengeFragment;->mChallenge:Lcom/google/android/finsky/remoting/protos/ChallengeProtos$AuthenticationChallenge;

    .line 78
    invoke-virtual {p0}, Lcom/google/android/finsky/billing/challenge/AuthenticationChallengeFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "authAccount"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/billing/challenge/AuthenticationChallengeFragment;->mAccountName:Ljava/lang/String;

    .line 79
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/FinskyApp;->getAnalytics()Lcom/google/android/finsky/analytics/Analytics;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/billing/challenge/AuthenticationChallengeFragment;->mAnalytics:Lcom/google/android/finsky/analytics/Analytics;

    .line 80
    if-eqz p1, :cond_31

    .line 81
    const-string v0, "retry_count"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/finsky/billing/challenge/AuthenticationChallengeFragment;->mRetryCount:I

    .line 83
    :cond_31
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 16
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    const/16 v11, 0x8

    const/4 v10, 0x0

    const/4 v9, 0x0

    .line 94
    const v6, 0x7f040016

    invoke-virtual {p1, v6, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .line 96
    .local v5, result:Landroid/view/View;
    iget-object v6, p0, Lcom/google/android/finsky/billing/challenge/AuthenticationChallengeFragment;->mChallenge:Lcom/google/android/finsky/remoting/protos/ChallengeProtos$AuthenticationChallenge;

    invoke-virtual {v6}, Lcom/google/android/finsky/remoting/protos/ChallengeProtos$AuthenticationChallenge;->getAuthenticationType()I

    move-result v6

    iput v6, p0, Lcom/google/android/finsky/billing/challenge/AuthenticationChallengeFragment;->mAuthenticationType:I

    .line 97
    iget-object v6, p0, Lcom/google/android/finsky/billing/challenge/AuthenticationChallengeFragment;->mAnalytics:Lcom/google/android/finsky/analytics/Analytics;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "authChallenge.trigger?type="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/google/android/finsky/billing/challenge/AuthenticationChallengeFragment;->mAuthenticationType:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v10, v10, v7}, Lcom/google/android/finsky/analytics/Analytics;->logPageView(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    const v6, 0x7f08003e

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 101
    .local v2, descriptionView:Landroid/widget/TextView;
    invoke-virtual {v2, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 102
    iget-object v6, p0, Lcom/google/android/finsky/billing/challenge/AuthenticationChallengeFragment;->mChallenge:Lcom/google/android/finsky/remoting/protos/ChallengeProtos$AuthenticationChallenge;

    invoke-virtual {v6}, Lcom/google/android/finsky/remoting/protos/ChallengeProtos$AuthenticationChallenge;->getGaiaDescriptionTextHtml()Ljava/lang/String;

    move-result-object v1

    .line 103
    .local v1, descriptionHtml:Ljava/lang/String;
    if-eqz v1, :cond_52

    .line 104
    invoke-virtual {v2, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 105
    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 106
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 109
    :cond_52
    const v6, 0x7f080041

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/EditText;

    iput-object v6, p0, Lcom/google/android/finsky/billing/challenge/AuthenticationChallengeFragment;->mInput:Landroid/widget/EditText;

    .line 110
    iget-object v6, p0, Lcom/google/android/finsky/billing/challenge/AuthenticationChallengeFragment;->mInput:Landroid/widget/EditText;

    invoke-virtual {v6, v9}, Landroid/widget/EditText;->setVisibility(I)V

    .line 112
    const v6, 0x7f080042

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 113
    .local v3, footer:Landroid/widget/TextView;
    iget-object v6, p0, Lcom/google/android/finsky/billing/challenge/AuthenticationChallengeFragment;->mChallenge:Lcom/google/android/finsky/remoting/protos/ChallengeProtos$AuthenticationChallenge;

    invoke-virtual {v6}, Lcom/google/android/finsky/remoting/protos/ChallengeProtos$AuthenticationChallenge;->hasGaiaFooterTextHtml()Z

    move-result v6

    if-eqz v6, :cond_af

    .line 114
    iget-object v6, p0, Lcom/google/android/finsky/billing/challenge/AuthenticationChallengeFragment;->mChallenge:Lcom/google/android/finsky/remoting/protos/ChallengeProtos$AuthenticationChallenge;

    invoke-virtual {v6}, Lcom/google/android/finsky/remoting/protos/ChallengeProtos$AuthenticationChallenge;->getGaiaFooterTextHtml()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 115
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 116
    invoke-virtual {v3, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 121
    :goto_8a
    const v6, 0x7f08002d

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    .line 122
    .local v4, okButton:Landroid/widget/Button;
    const v6, 0x7f070197

    invoke-virtual {v4, v6}, Landroid/widget/Button;->setText(I)V

    .line 123
    invoke-virtual {v4, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 124
    const v6, 0x7f08002e

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 125
    .local v0, cancelButton:Landroid/widget/Button;
    const v6, 0x7f070059

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setText(I)V

    .line 126
    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 127
    return-object v5

    .line 118
    .end local v0           #cancelButton:Landroid/widget/Button;
    .end local v4           #okButton:Landroid/widget/Button;
    :cond_af
    invoke-virtual {v3, v11}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_8a
.end method

.method public onDestroyView()V
    .registers 2

    .prologue
    .line 220
    iget-object v0, p0, Lcom/google/android/finsky/billing/challenge/AuthenticationChallengeFragment;->mAuthRequest:Lcom/android/volley/Request;

    if-eqz v0, :cond_9

    .line 221
    iget-object v0, p0, Lcom/google/android/finsky/billing/challenge/AuthenticationChallengeFragment;->mAuthRequest:Lcom/android/volley/Request;

    invoke-virtual {v0}, Lcom/android/volley/Request;->cancel()V

    .line 223
    :cond_9
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroyView()V

    .line 224
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4
    .parameter "outState"

    .prologue
    .line 87
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 88
    const-string v0, "retry_count"

    iget v1, p0, Lcom/google/android/finsky/billing/challenge/AuthenticationChallengeFragment;->mRetryCount:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 89
    return-void
.end method

.method public setListener(Lcom/google/android/finsky/billing/challenge/AuthenticationChallengeFragment$Listener;)V
    .registers 2
    .parameter "listener"

    .prologue
    .line 145
    iput-object p1, p0, Lcom/google/android/finsky/billing/challenge/AuthenticationChallengeFragment;->mListener:Lcom/google/android/finsky/billing/challenge/AuthenticationChallengeFragment$Listener;

    .line 146
    return-void
.end method
