.class Lcom/google/android/apps/plus/fragments/HostedStreamFragment$CircleSpinnerInfo;
.super Ljava/lang/Object;
.source "HostedStreamFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/plus/fragments/HostedStreamFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CircleSpinnerInfo"
.end annotation


# instance fields
.field private final mCircleId:Ljava/lang/String;

.field private final mCircleName:Ljava/lang/String;

.field private final mRealCircleId:Ljava/lang/String;

.field private final mView:Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .parameter "context"
    .parameter "circleName"
    .parameter "circleId"

    .prologue
    const/4 v1, 0x0

    .line 142
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 143
    iput-object p3, p0, Lcom/google/android/apps/plus/fragments/HostedStreamFragment$CircleSpinnerInfo;->mRealCircleId:Ljava/lang/String;

    .line 144
    const-string v0, "v.all.circles"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 145
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$View;->CIRCLES:Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$View;

    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedStreamFragment$CircleSpinnerInfo;->mView:Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$View;

    .line 146
    const v0, 0x7f08011f

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedStreamFragment$CircleSpinnerInfo;->mCircleName:Ljava/lang/String;

    .line 147
    iput-object v1, p0, Lcom/google/android/apps/plus/fragments/HostedStreamFragment$CircleSpinnerInfo;->mCircleId:Ljava/lang/String;

    .line 161
    :goto_1d
    return-void

    .line 148
    :cond_1e
    const-string v0, "v.whatshot"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_36

    .line 149
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$View;->WHATS_HOT:Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$View;

    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedStreamFragment$CircleSpinnerInfo;->mView:Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$View;

    .line 150
    const v0, 0x7f080121

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedStreamFragment$CircleSpinnerInfo;->mCircleName:Ljava/lang/String;

    .line 151
    iput-object v1, p0, Lcom/google/android/apps/plus/fragments/HostedStreamFragment$CircleSpinnerInfo;->mCircleId:Ljava/lang/String;

    goto :goto_1d

    .line 152
    :cond_36
    const-string v0, "v.nearby"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4e

    .line 153
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$View;->NEARBY:Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$View;

    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedStreamFragment$CircleSpinnerInfo;->mView:Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$View;

    .line 154
    const v0, 0x7f08011e

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedStreamFragment$CircleSpinnerInfo;->mCircleName:Ljava/lang/String;

    .line 155
    iput-object v1, p0, Lcom/google/android/apps/plus/fragments/HostedStreamFragment$CircleSpinnerInfo;->mCircleId:Ljava/lang/String;

    goto :goto_1d

    .line 157
    :cond_4e
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$View;->ALL:Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$View;

    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedStreamFragment$CircleSpinnerInfo;->mView:Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$View;

    .line 158
    iput-object p2, p0, Lcom/google/android/apps/plus/fragments/HostedStreamFragment$CircleSpinnerInfo;->mCircleName:Ljava/lang/String;

    .line 159
    iput-object p3, p0, Lcom/google/android/apps/plus/fragments/HostedStreamFragment$CircleSpinnerInfo;->mCircleId:Ljava/lang/String;

    goto :goto_1d
.end method


# virtual methods
.method public getCircleId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 172
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedStreamFragment$CircleSpinnerInfo;->mCircleId:Ljava/lang/String;

    return-object v0
.end method

.method public getCircleName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 168
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedStreamFragment$CircleSpinnerInfo;->mCircleName:Ljava/lang/String;

    return-object v0
.end method

.method public getRealCircleId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 164
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedStreamFragment$CircleSpinnerInfo;->mRealCircleId:Ljava/lang/String;

    return-object v0
.end method

.method public getView()Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$View;
    .registers 2

    .prologue
    .line 176
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedStreamFragment$CircleSpinnerInfo;->mView:Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$View;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 181
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/HostedStreamFragment$CircleSpinnerInfo;->getCircleName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
