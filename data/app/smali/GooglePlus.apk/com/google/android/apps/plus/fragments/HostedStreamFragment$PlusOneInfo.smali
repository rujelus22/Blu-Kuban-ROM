.class Lcom/google/android/apps/plus/fragments/HostedStreamFragment$PlusOneInfo;
.super Ljava/lang/Object;
.source "HostedStreamFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/plus/fragments/HostedStreamFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PlusOneInfo"
.end annotation


# instance fields
.field public activityId:Ljava/lang/String;

.field public objectType:Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$ObjectType;

.field public overrideCount:I

.field public plusOneData:Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$ObjectType;I)V
    .registers 5
    .parameter "_activityId"
    .parameter "_plusOneData"
    .parameter "_objectType"
    .parameter "_overrideCount"

    .prologue
    .line 192
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 193
    iput-object p1, p0, Lcom/google/android/apps/plus/fragments/HostedStreamFragment$PlusOneInfo;->activityId:Ljava/lang/String;

    .line 194
    iput-object p2, p0, Lcom/google/android/apps/plus/fragments/HostedStreamFragment$PlusOneInfo;->plusOneData:Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;

    .line 195
    iput-object p3, p0, Lcom/google/android/apps/plus/fragments/HostedStreamFragment$PlusOneInfo;->objectType:Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$ObjectType;

    .line 196
    iput p4, p0, Lcom/google/android/apps/plus/fragments/HostedStreamFragment$PlusOneInfo;->overrideCount:I

    .line 197
    return-void
.end method
