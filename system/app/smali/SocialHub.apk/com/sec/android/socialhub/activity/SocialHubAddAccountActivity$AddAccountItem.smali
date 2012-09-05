.class public Lcom/sec/android/socialhub/activity/SocialHubAddAccountActivity$AddAccountItem;
.super Ljava/lang/Object;
.source "SocialHubAddAccountActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/socialhub/activity/SocialHubAddAccountActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AddAccountItem"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/socialhub/activity/SocialHubAddAccountActivity$AddAccountItem$IAccountPage;
    }
.end annotation


# instance fields
.field public bHasSubTitle:Z

.field public bIsSubTitle:Z

.field public bIsVisibility:Z

.field public mAccountType:I

.field public mImgResource:I

.field public mIspNameResource:I

.field public mIspType:I

.field public mPage:Lcom/sec/android/socialhub/activity/SocialHubAddAccountActivity$AddAccountItem$IAccountPage;


# direct methods
.method public constructor <init>(ZZZIIII)V
    .registers 8
    .parameter "title"
    .parameter "hasTitle"
    .parameter "visible"
    .parameter "type"
    .parameter "name"
    .parameter "img"
    .parameter "isp"

    .prologue
    .line 287
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 288
    iput-boolean p1, p0, Lcom/sec/android/socialhub/activity/SocialHubAddAccountActivity$AddAccountItem;->bIsSubTitle:Z

    .line 289
    iput-boolean p2, p0, Lcom/sec/android/socialhub/activity/SocialHubAddAccountActivity$AddAccountItem;->bHasSubTitle:Z

    .line 290
    iput-boolean p3, p0, Lcom/sec/android/socialhub/activity/SocialHubAddAccountActivity$AddAccountItem;->bIsVisibility:Z

    .line 291
    iput p4, p0, Lcom/sec/android/socialhub/activity/SocialHubAddAccountActivity$AddAccountItem;->mAccountType:I

    .line 292
    iput p5, p0, Lcom/sec/android/socialhub/activity/SocialHubAddAccountActivity$AddAccountItem;->mIspNameResource:I

    .line 293
    iput p6, p0, Lcom/sec/android/socialhub/activity/SocialHubAddAccountActivity$AddAccountItem;->mImgResource:I

    .line 294
    iput p7, p0, Lcom/sec/android/socialhub/activity/SocialHubAddAccountActivity$AddAccountItem;->mIspType:I

    .line 295
    return-void
.end method
