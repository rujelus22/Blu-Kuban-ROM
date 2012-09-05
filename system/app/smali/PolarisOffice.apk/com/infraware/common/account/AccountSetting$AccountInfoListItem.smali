.class public Lcom/infraware/common/account/AccountSetting$AccountInfoListItem;
.super Ljava/lang/Object;
.source "AccountSetting.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/infraware/common/account/AccountSetting;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AccountInfoListItem"
.end annotation


# instance fields
.field mIconResID:I

.field mInfo:Lcom/infraware/common/account/AccountInfo;

.field mText:Ljava/lang/String;

.field final synthetic this$0:Lcom/infraware/common/account/AccountSetting;


# direct methods
.method public constructor <init>(Lcom/infraware/common/account/AccountSetting;Lcom/infraware/common/account/AccountInfo;)V
    .registers 5
    .parameter
    .parameter "aInfo"

    .prologue
    .line 386
    iput-object p1, p0, Lcom/infraware/common/account/AccountSetting$AccountInfoListItem;->this$0:Lcom/infraware/common/account/AccountSetting;

    .line 377
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 378
    invoke-virtual {p2}, Lcom/infraware/common/account/AccountInfo;->getService()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1c

    .line 379
    const v0, 0x7f0200ba

    iput v0, p0, Lcom/infraware/common/account/AccountSetting$AccountInfoListItem;->mIconResID:I

    .line 384
    :goto_11
    iput-object p2, p0, Lcom/infraware/common/account/AccountSetting$AccountInfoListItem;->mInfo:Lcom/infraware/common/account/AccountInfo;

    .line 385
    iget-object v0, p0, Lcom/infraware/common/account/AccountSetting$AccountInfoListItem;->mInfo:Lcom/infraware/common/account/AccountInfo;

    invoke-virtual {v0}, Lcom/infraware/common/account/AccountInfo;->getEmail()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/infraware/common/account/AccountSetting$AccountInfoListItem;->mText:Ljava/lang/String;

    return-void

    .line 382
    :cond_1c
    const v0, 0x7f0200ad

    iput v0, p0, Lcom/infraware/common/account/AccountSetting$AccountInfoListItem;->mIconResID:I

    goto :goto_11
.end method

.method public constructor <init>(Lcom/infraware/common/account/AccountSetting;Ljava/lang/String;ILcom/infraware/common/account/AccountInfo;)V
    .registers 5
    .parameter
    .parameter "aText"
    .parameter "aIconRes"
    .parameter "aInfo"

    .prologue
    .line 375
    iput-object p1, p0, Lcom/infraware/common/account/AccountSetting$AccountInfoListItem;->this$0:Lcom/infraware/common/account/AccountSetting;

    .line 371
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 372
    iput-object p2, p0, Lcom/infraware/common/account/AccountSetting$AccountInfoListItem;->mText:Ljava/lang/String;

    .line 373
    iput p3, p0, Lcom/infraware/common/account/AccountSetting$AccountInfoListItem;->mIconResID:I

    .line 374
    iput-object p4, p0, Lcom/infraware/common/account/AccountSetting$AccountInfoListItem;->mInfo:Lcom/infraware/common/account/AccountInfo;

    return-void
.end method


# virtual methods
.method public getInfo()Lcom/infraware/common/account/AccountInfo;
    .registers 2

    .prologue
    .line 389
    iget-object v0, p0, Lcom/infraware/common/account/AccountSetting$AccountInfoListItem;->mInfo:Lcom/infraware/common/account/AccountInfo;

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .registers 2

    .prologue
    .line 388
    iget-object v0, p0, Lcom/infraware/common/account/AccountSetting$AccountInfoListItem;->mText:Ljava/lang/String;

    return-object v0
.end method
