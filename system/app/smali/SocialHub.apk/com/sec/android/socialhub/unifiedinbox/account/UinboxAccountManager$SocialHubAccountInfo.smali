.class public Lcom/sec/android/socialhub/unifiedinbox/account/UinboxAccountManager$SocialHubAccountInfo;
.super Ljava/lang/Object;
.source "UinboxAccountManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/socialhub/unifiedinbox/account/UinboxAccountManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SocialHubAccountInfo"
.end annotation


# instance fields
.field mAccountType:Ljava/lang/String;

.field mActionType:I


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .registers 4
    .parameter "type"
    .parameter "action"

    .prologue
    .line 308
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 304
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/socialhub/unifiedinbox/account/UinboxAccountManager$SocialHubAccountInfo;->mAccountType:Ljava/lang/String;

    .line 305
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/socialhub/unifiedinbox/account/UinboxAccountManager$SocialHubAccountInfo;->mActionType:I

    .line 309
    iput-object p1, p0, Lcom/sec/android/socialhub/unifiedinbox/account/UinboxAccountManager$SocialHubAccountInfo;->mAccountType:Ljava/lang/String;

    .line 310
    iput p2, p0, Lcom/sec/android/socialhub/unifiedinbox/account/UinboxAccountManager$SocialHubAccountInfo;->mActionType:I

    .line 311
    return-void
.end method


# virtual methods
.method public getAccountType()Ljava/lang/String;
    .registers 2

    .prologue
    .line 315
    iget-object v0, p0, Lcom/sec/android/socialhub/unifiedinbox/account/UinboxAccountManager$SocialHubAccountInfo;->mAccountType:Ljava/lang/String;

    return-object v0
.end method

.method public getActionType()I
    .registers 2

    .prologue
    .line 320
    iget v0, p0, Lcom/sec/android/socialhub/unifiedinbox/account/UinboxAccountManager$SocialHubAccountInfo;->mActionType:I

    return v0
.end method
