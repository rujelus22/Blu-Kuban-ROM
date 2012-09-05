.class public Lcom/sec/android/socialhub/parent/SocialHubBaseActivity$DestroyPageCondition;
.super Ljava/lang/Object;
.source "SocialHubBaseActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/socialhub/parent/SocialHubBaseActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DestroyPageCondition"
.end annotation


# instance fields
.field public mAppType:Ljava/lang/String;

.field public mID:I


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .registers 4
    .parameter "type"
    .parameter "id"

    .prologue
    .line 38
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/socialhub/parent/SocialHubBaseActivity$DestroyPageCondition;->mAppType:Ljava/lang/String;

    .line 30
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/socialhub/parent/SocialHubBaseActivity$DestroyPageCondition;->mID:I

    .line 39
    iput-object p1, p0, Lcom/sec/android/socialhub/parent/SocialHubBaseActivity$DestroyPageCondition;->mAppType:Ljava/lang/String;

    .line 40
    iput p2, p0, Lcom/sec/android/socialhub/parent/SocialHubBaseActivity$DestroyPageCondition;->mID:I

    .line 41
    return-void
.end method
