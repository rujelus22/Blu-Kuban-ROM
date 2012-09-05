.class public Lcom/samsung/shareshot/User;
.super Ljava/lang/Object;
.source "User.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/samsung/shareshot/User;",
            ">;"
        }
    .end annotation
.end field

.field private static final MAX_GROUP:I = 0x5

.field private static final MAX_GROUPUSER:I = 0xa

.field private static final MAX_USER:I = 0x32

.field public static final SELECTION_CONFIRMED:I = 0x1

.field public static final SELECTION_REJECTED:I = 0x3

.field public static final SELECTION_UNSELECTED:I = 0x0

.field public static final SELECTION_WAITING:I = 0x2

.field public static final STATE_ACTIVE:I = 0x2

.field public static final STATE_INACTIVE:I = 0x1

.field public static final STATE_OFFLINE:I = 0x0

.field public static final STATE_WAITING:I = 0x3

.field private static final TAG:Ljava/lang/String; = "ShareShot"

.field private static final s_nGroupIDs:[[I = null

.field private static final s_nIDs:[I = null

.field private static final serialVersionUID:J = -0x3bef7e8e436c3c6eL


# instance fields
.field private context:Landroid/content/Context;

.field private headImage:Landroid/graphics/Bitmap;

.field private iconID:I

.field private selectUserCallBack:Lcom/samsung/shareshot/Interfaces$SelectUserInterface;

.field private selected:Z

.field private updateUserStateCallBack:Lcom/samsung/shareshot/Interfaces$UpdateUserStateInterface;

.field private userInfo:Lcom/samsung/dmc/ux/db/UserInfo;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 33
    const/16 v0, 0x32

    new-array v0, v0, [I

    sput-object v0, Lcom/samsung/shareshot/User;->s_nIDs:[I

    .line 34
    const/4 v0, 0x5

    const/16 v1, 0xa

    filled-new-array {v0, v1}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[I

    sput-object v0, Lcom/samsung/shareshot/User;->s_nGroupIDs:[[I

    .line 414
    new-instance v0, Lcom/samsung/shareshot/User$1;

    invoke-direct {v0}, Lcom/samsung/shareshot/User$1;-><init>()V

    sput-object v0, Lcom/samsung/shareshot/User;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 16
    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    new-instance v0, Lcom/samsung/dmc/ux/db/UserInfo;

    invoke-direct {v0}, Lcom/samsung/dmc/ux/db/UserInfo;-><init>()V

    iput-object v0, p0, Lcom/samsung/shareshot/User;->userInfo:Lcom/samsung/dmc/ux/db/UserInfo;

    .line 49
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object p1, p0, Lcom/samsung/shareshot/User;->context:Landroid/content/Context;

    .line 58
    iput v0, p0, Lcom/samsung/shareshot/User;->iconID:I

    .line 59
    iput-boolean v0, p0, Lcom/samsung/shareshot/User;->selected:Z

    .line 62
    new-instance v0, Lcom/samsung/dmc/ux/db/UserInfo;

    invoke-direct {v0}, Lcom/samsung/dmc/ux/db/UserInfo;-><init>()V

    iput-object v0, p0, Lcom/samsung/shareshot/User;->userInfo:Lcom/samsung/dmc/ux/db/UserInfo;

    .line 63
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;II)V
    .registers 5
    .parameter "context"
    .parameter "nIconID"
    .parameter "group"

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    new-instance v0, Lcom/samsung/dmc/ux/db/UserInfo;

    invoke-direct {v0}, Lcom/samsung/dmc/ux/db/UserInfo;-><init>()V

    iput-object v0, p0, Lcom/samsung/shareshot/User;->userInfo:Lcom/samsung/dmc/ux/db/UserInfo;

    .line 69
    iput-object p1, p0, Lcom/samsung/shareshot/User;->context:Landroid/content/Context;

    .line 70
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/shareshot/User;->selected:Z

    .line 82
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 4
    .parameter "source"

    .prologue
    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    new-instance v0, Lcom/samsung/dmc/ux/db/UserInfo;

    invoke-direct {v0}, Lcom/samsung/dmc/ux/db/UserInfo;-><init>()V

    iput-object v0, p0, Lcom/samsung/shareshot/User;->userInfo:Lcom/samsung/dmc/ux/db/UserInfo;

    .line 91
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/samsung/shareshot/User;->setIconID(I)V

    .line 92
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_9c

    .line 93
    invoke-virtual {p0}, Lcom/samsung/shareshot/User;->onSelected()V

    .line 102
    :goto_1b
    iget-object v0, p0, Lcom/samsung/shareshot/User;->userInfo:Lcom/samsung/dmc/ux/db/UserInfo;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/dmc/ux/db/UserInfo;->setUserID(I)V

    .line 103
    iget-object v0, p0, Lcom/samsung/shareshot/User;->userInfo:Lcom/samsung/dmc/ux/db/UserInfo;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/dmc/ux/db/UserInfo;->setIPAddress(Ljava/lang/String;)V

    .line 104
    iget-object v0, p0, Lcom/samsung/shareshot/User;->userInfo:Lcom/samsung/dmc/ux/db/UserInfo;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/dmc/ux/db/UserInfo;->setMacAddress(Ljava/lang/String;)V

    .line 105
    iget-object v0, p0, Lcom/samsung/shareshot/User;->userInfo:Lcom/samsung/dmc/ux/db/UserInfo;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/dmc/ux/db/UserInfo;->setLoginTime(Ljava/lang/String;)V

    .line 106
    iget-object v0, p0, Lcom/samsung/shareshot/User;->userInfo:Lcom/samsung/dmc/ux/db/UserInfo;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/dmc/ux/db/UserInfo;->setLogoutTime(Ljava/lang/String;)V

    .line 107
    iget-object v0, p0, Lcom/samsung/shareshot/User;->userInfo:Lcom/samsung/dmc/ux/db/UserInfo;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/dmc/ux/db/UserInfo;->setUserStatus(I)V

    .line 108
    iget-object v0, p0, Lcom/samsung/shareshot/User;->userInfo:Lcom/samsung/dmc/ux/db/UserInfo;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/dmc/ux/db/UserInfo;->setGroupID(I)V

    .line 110
    iget-object v0, p0, Lcom/samsung/shareshot/User;->userInfo:Lcom/samsung/dmc/ux/db/UserInfo;

    invoke-virtual {v0}, Lcom/samsung/dmc/ux/db/UserInfo;->getPersonInfo()Lcom/samsung/dmc/ux/db/PersonalSettingInfo;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/dmc/ux/db/PersonalSettingInfo;->setSettingID(I)V

    .line 111
    iget-object v0, p0, Lcom/samsung/shareshot/User;->userInfo:Lcom/samsung/dmc/ux/db/UserInfo;

    invoke-virtual {v0}, Lcom/samsung/dmc/ux/db/UserInfo;->getPersonInfo()Lcom/samsung/dmc/ux/db/PersonalSettingInfo;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/dmc/ux/db/PersonalSettingInfo;->setUserName(Ljava/lang/String;)V

    .line 112
    iget-object v0, p0, Lcom/samsung/shareshot/User;->userInfo:Lcom/samsung/dmc/ux/db/UserInfo;

    invoke-virtual {v0}, Lcom/samsung/dmc/ux/db/UserInfo;->getPersonInfo()Lcom/samsung/dmc/ux/db/PersonalSettingInfo;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/dmc/ux/db/PersonalSettingInfo;->setIconType(I)V

    .line 113
    iget-object v0, p0, Lcom/samsung/shareshot/User;->userInfo:Lcom/samsung/dmc/ux/db/UserInfo;

    invoke-virtual {v0}, Lcom/samsung/dmc/ux/db/UserInfo;->getPersonInfo()Lcom/samsung/dmc/ux/db/PersonalSettingInfo;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/dmc/ux/db/PersonalSettingInfo;->setIconResID(I)V

    .line 114
    iget-object v0, p0, Lcom/samsung/shareshot/User;->userInfo:Lcom/samsung/dmc/ux/db/UserInfo;

    invoke-virtual {v0}, Lcom/samsung/dmc/ux/db/UserInfo;->getPersonInfo()Lcom/samsung/dmc/ux/db/PersonalSettingInfo;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/dmc/ux/db/PersonalSettingInfo;->setIconPath(Ljava/lang/String;)V

    .line 115
    return-void

    .line 95
    :cond_9c
    invoke-virtual {p0}, Lcom/samsung/shareshot/User;->onUnSelected()V

    goto/16 :goto_1b
.end method

.method private static AssignID([II)I
    .registers 6
    .parameter "ids"
    .parameter "maxid"

    .prologue
    .line 458
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-lt v0, p1, :cond_18

    .line 468
    const-string v1, "ShareShot"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Limited ID resource... AssignID id="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 469
    :goto_17
    return v0

    .line 460
    :cond_18
    aget v1, p0, v0

    if-nez v1, :cond_34

    .line 462
    const/4 v1, 0x1

    aput v1, p0, v0

    .line 463
    const-string v1, "ShareShot"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "AssignID, id="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_17

    .line 458
    :cond_34
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private static UnassignGroupID(II)Z
    .registers 3
    .parameter "group"
    .parameter "id"

    .prologue
    .line 499
    sget-object v0, Lcom/samsung/shareshot/User;->s_nGroupIDs:[[I

    aget-object v0, v0, p0

    invoke-static {v0, p1}, Lcom/samsung/shareshot/User;->UnassignID([II)Z

    move-result v0

    return v0
.end method

.method private static UnassignID([II)Z
    .registers 6
    .parameter "from"
    .parameter "id"

    .prologue
    const/4 v0, 0x0

    .line 485
    const-string v1, "ShareShot"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "UnassignID, id="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 486
    aget v1, p0, p1

    if-nez v1, :cond_1a

    .line 489
    :goto_19
    return v0

    .line 488
    :cond_1a
    aput v0, p0, p1

    .line 489
    const/4 v0, 0x1

    goto :goto_19
.end method

.method private static UnassignNormalID(I)Z
    .registers 2
    .parameter "id"

    .prologue
    .line 494
    sget-object v0, Lcom/samsung/shareshot/User;->s_nIDs:[I

    invoke-static {v0, p0}, Lcom/samsung/shareshot/User;->UnassignID([II)Z

    move-result v0

    return v0
.end method

.method private setHeadImage(Landroid/net/Uri;)V
    .registers 2
    .parameter "uri"

    .prologue
    .line 148
    invoke-virtual {p0}, Lcom/samsung/shareshot/User;->onSetHeadImage()V

    .line 149
    return-void
.end method


# virtual methods
.method public active()V
    .registers 2

    .prologue
    .line 307
    iget-object v0, p0, Lcom/samsung/shareshot/User;->selectUserCallBack:Lcom/samsung/shareshot/Interfaces$SelectUserInterface;

    invoke-interface {v0, p0}, Lcom/samsung/shareshot/Interfaces$SelectUserInterface;->onActivateUser(Lcom/samsung/shareshot/User;)Z

    .line 308
    return-void
.end method

.method public block()V
    .registers 1

    .prologue
    .line 245
    return-void
.end method

.method public deative()V
    .registers 2

    .prologue
    .line 319
    iget-object v0, p0, Lcom/samsung/shareshot/User;->selectUserCallBack:Lcom/samsung/shareshot/Interfaces$SelectUserInterface;

    invoke-interface {v0, p0}, Lcom/samsung/shareshot/Interfaces$SelectUserInterface;->onDeactivateUser(Lcom/samsung/shareshot/User;)V

    .line 320
    return-void
.end method

.method public describeContents()I
    .registers 2

    .prologue
    .line 388
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 5
    .parameter "o"

    .prologue
    .line 374
    if-ne p0, p1, :cond_4

    .line 375
    const/4 v1, 0x1

    .line 380
    :goto_3
    return v1

    :cond_4
    move-object v0, p1

    .line 377
    check-cast v0, Lcom/samsung/shareshot/User;

    .line 380
    .local v0, user:Lcom/samsung/shareshot/User;
    invoke-virtual {p0}, Lcom/samsung/shareshot/User;->getUserInfo()Lcom/samsung/dmc/ux/db/UserInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/dmc/ux/db/UserInfo;->getIPAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/samsung/shareshot/User;->getUserInfo()Lcom/samsung/dmc/ux/db/UserInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/dmc/ux/db/UserInfo;->getIPAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_3
.end method

.method public getHeadImage()Landroid/graphics/Bitmap;
    .registers 2

    .prologue
    .line 175
    iget-object v0, p0, Lcom/samsung/shareshot/User;->headImage:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getIconID()I
    .registers 2

    .prologue
    .line 136
    iget v0, p0, Lcom/samsung/shareshot/User;->iconID:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 348
    iget-object v0, p0, Lcom/samsung/shareshot/User;->userInfo:Lcom/samsung/dmc/ux/db/UserInfo;

    invoke-virtual {v0}, Lcom/samsung/dmc/ux/db/UserInfo;->getPersonInfo()Lcom/samsung/dmc/ux/db/PersonalSettingInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/dmc/ux/db/PersonalSettingInfo;->getUserName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getState()I
    .registers 2

    .prologue
    .line 180
    iget-object v0, p0, Lcom/samsung/shareshot/User;->userInfo:Lcom/samsung/dmc/ux/db/UserInfo;

    invoke-virtual {v0}, Lcom/samsung/dmc/ux/db/UserInfo;->isOnline()Z

    move-result v0

    if-nez v0, :cond_a

    .line 182
    const/4 v0, 0x0

    .line 190
    :goto_9
    return v0

    .line 184
    :cond_a
    iget-object v0, p0, Lcom/samsung/shareshot/User;->userInfo:Lcom/samsung/dmc/ux/db/UserInfo;

    invoke-virtual {v0}, Lcom/samsung/dmc/ux/db/UserInfo;->isActivate()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 186
    const/4 v0, 0x2

    goto :goto_9

    .line 190
    :cond_14
    const/4 v0, 0x1

    goto :goto_9
.end method

.method public getUserID()I
    .registers 4

    .prologue
    .line 224
    const-string v0, "User::getNormalID()"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "UserID="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/shareshot/User;->userInfo:Lcom/samsung/dmc/ux/db/UserInfo;

    invoke-virtual {v2}, Lcom/samsung/dmc/ux/db/UserInfo;->getUserID()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    iget-object v0, p0, Lcom/samsung/shareshot/User;->userInfo:Lcom/samsung/dmc/ux/db/UserInfo;

    invoke-virtual {v0}, Lcom/samsung/dmc/ux/db/UserInfo;->getUserID()I

    move-result v0

    return v0
.end method

.method public getUserInfo()Lcom/samsung/dmc/ux/db/UserInfo;
    .registers 2

    .prologue
    .line 343
    iget-object v0, p0, Lcom/samsung/shareshot/User;->userInfo:Lcom/samsung/dmc/ux/db/UserInfo;

    return-object v0
.end method

.method public isActivate()Z
    .registers 2

    .prologue
    .line 248
    iget-object v0, p0, Lcom/samsung/shareshot/User;->userInfo:Lcom/samsung/dmc/ux/db/UserInfo;

    if-nez v0, :cond_6

    .line 249
    const/4 v0, 0x0

    .line 251
    :goto_5
    return v0

    :cond_6
    iget-object v0, p0, Lcom/samsung/shareshot/User;->userInfo:Lcom/samsung/dmc/ux/db/UserInfo;

    invoke-virtual {v0}, Lcom/samsung/dmc/ux/db/UserInfo;->isActivate()Z

    move-result v0

    goto :goto_5
.end method

.method public isUserSelected()Z
    .registers 2

    .prologue
    .line 284
    iget-boolean v0, p0, Lcom/samsung/shareshot/User;->selected:Z

    return v0
.end method

.method public onSelected()V
    .registers 2

    .prologue
    .line 270
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/shareshot/User;->selected:Z

    .line 271
    return-void
.end method

.method protected onSetHeadImage()V
    .registers 2

    .prologue
    .line 167
    iget-object v0, p0, Lcom/samsung/shareshot/User;->updateUserStateCallBack:Lcom/samsung/shareshot/Interfaces$UpdateUserStateInterface;

    if-eqz v0, :cond_9

    .line 169
    iget-object v0, p0, Lcom/samsung/shareshot/User;->updateUserStateCallBack:Lcom/samsung/shareshot/Interfaces$UpdateUserStateInterface;

    invoke-interface {v0}, Lcom/samsung/shareshot/Interfaces$UpdateUserStateInterface;->onUpdateState()V

    .line 171
    :cond_9
    return-void
.end method

.method public onUnSelected()V
    .registers 2

    .prologue
    .line 274
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/shareshot/User;->selected:Z

    .line 275
    return-void
.end method

.method public recyle()V
    .registers 2

    .prologue
    .line 127
    iget-object v0, p0, Lcom/samsung/shareshot/User;->userInfo:Lcom/samsung/dmc/ux/db/UserInfo;

    invoke-virtual {v0}, Lcom/samsung/dmc/ux/db/UserInfo;->getUserID()I

    move-result v0

    invoke-static {v0}, Lcom/samsung/shareshot/User;->UnassignNormalID(I)Z

    .line 129
    return-void
.end method

.method public setActivate(Z)Z
    .registers 3
    .parameter "state"

    .prologue
    .line 255
    iget-object v0, p0, Lcom/samsung/shareshot/User;->userInfo:Lcom/samsung/dmc/ux/db/UserInfo;

    if-nez v0, :cond_6

    .line 256
    const/4 v0, 0x0

    .line 261
    :goto_5
    return v0

    .line 259
    :cond_6
    iget-object v0, p0, Lcom/samsung/shareshot/User;->userInfo:Lcom/samsung/dmc/ux/db/UserInfo;

    invoke-virtual {v0, p1}, Lcom/samsung/dmc/ux/db/UserInfo;->setActivateStatus(Z)V

    .line 261
    const/4 v0, 0x1

    goto :goto_5
.end method

.method public setHeadImage()V
    .registers 4

    .prologue
    .line 141
    iget-object v0, p0, Lcom/samsung/shareshot/User;->headImage:Landroid/graphics/Bitmap;

    invoke-static {v0}, Lcom/samsung/dmc/ux/fexplorer/BitmapUtil;->recycleBitmap(Landroid/graphics/Bitmap;)V

    .line 142
    iget-object v0, p0, Lcom/samsung/shareshot/User;->context:Landroid/content/Context;

    sget v1, Lcom/samsung/shareshot/HeadCtrl;->mPhoto:I

    const/4 v2, 0x2

    invoke-static {v2}, Lcom/samsung/dmc/ux/fexplorer/BitmapUtil;->getBitmapOption(I)Landroid/graphics/BitmapFactory$Options;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/samsung/dmc/ux/fexplorer/BitmapUtil;->getBitmapFromResID(Landroid/content/Context;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/shareshot/User;->headImage:Landroid/graphics/Bitmap;

    .line 143
    invoke-virtual {p0}, Lcom/samsung/shareshot/User;->onSetHeadImage()V

    .line 144
    return-void
.end method

.method public setHeadImage(Landroid/graphics/Bitmap;)V
    .registers 4
    .parameter "bmp"

    .prologue
    .line 153
    iget-object v0, p0, Lcom/samsung/shareshot/User;->headImage:Landroid/graphics/Bitmap;

    if-eq p1, v0, :cond_f

    .line 155
    iget-object v0, p0, Lcom/samsung/shareshot/User;->headImage:Landroid/graphics/Bitmap;

    invoke-static {v0}, Lcom/samsung/dmc/ux/fexplorer/BitmapUtil;->recycleBitmap(Landroid/graphics/Bitmap;)V

    .line 156
    iput-object p1, p0, Lcom/samsung/shareshot/User;->headImage:Landroid/graphics/Bitmap;

    .line 157
    invoke-virtual {p0}, Lcom/samsung/shareshot/User;->onSetHeadImage()V

    .line 163
    :goto_e
    return-void

    .line 161
    :cond_f
    const-string v0, "ShareShot"

    const-string v1, "bmp == m_HeadImage"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e
.end method

.method public setIconID(I)V
    .registers 2
    .parameter "iconID"

    .prologue
    .line 132
    iput p1, p0, Lcom/samsung/shareshot/User;->iconID:I

    .line 133
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .registers 3
    .parameter "name"

    .prologue
    .line 354
    iget-object v0, p0, Lcom/samsung/shareshot/User;->userInfo:Lcom/samsung/dmc/ux/db/UserInfo;

    invoke-virtual {v0}, Lcom/samsung/dmc/ux/db/UserInfo;->getPersonInfo()Lcom/samsung/dmc/ux/db/PersonalSettingInfo;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/dmc/ux/db/PersonalSettingInfo;->setUserName(Ljava/lang/String;)V

    .line 355
    iget-object v0, p0, Lcom/samsung/shareshot/User;->updateUserStateCallBack:Lcom/samsung/shareshot/Interfaces$UpdateUserStateInterface;

    if-eqz v0, :cond_12

    .line 357
    iget-object v0, p0, Lcom/samsung/shareshot/User;->updateUserStateCallBack:Lcom/samsung/shareshot/Interfaces$UpdateUserStateInterface;

    invoke-interface {v0}, Lcom/samsung/shareshot/Interfaces$UpdateUserStateInterface;->onUpdateState()V

    .line 359
    :cond_12
    return-void
.end method

.method protected setNormalID(I)V
    .registers 3
    .parameter "id"

    .prologue
    .line 230
    iget-object v0, p0, Lcom/samsung/shareshot/User;->userInfo:Lcom/samsung/dmc/ux/db/UserInfo;

    invoke-virtual {v0, p1}, Lcom/samsung/dmc/ux/db/UserInfo;->setUserID(I)V

    .line 231
    return-void
.end method

.method public setSelectUserCallBack(Lcom/samsung/shareshot/Interfaces$SelectUserInterface;)V
    .registers 2
    .parameter "callback"

    .prologue
    .line 368
    iput-object p1, p0, Lcom/samsung/shareshot/User;->selectUserCallBack:Lcom/samsung/shareshot/Interfaces$SelectUserInterface;

    .line 369
    return-void
.end method

.method public setSelected()V
    .registers 2

    .prologue
    .line 266
    iget-object v0, p0, Lcom/samsung/shareshot/User;->selectUserCallBack:Lcom/samsung/shareshot/Interfaces$SelectUserInterface;

    invoke-interface {v0, p0}, Lcom/samsung/shareshot/Interfaces$SelectUserInterface;->onSelectUser(Lcom/samsung/shareshot/User;)V

    .line 267
    return-void
.end method

.method public setState(I)V
    .registers 4
    .parameter "state"

    .prologue
    .line 196
    if-nez p1, :cond_9

    .line 198
    iget-object v0, p0, Lcom/samsung/shareshot/User;->userInfo:Lcom/samsung/dmc/ux/db/UserInfo;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/dmc/ux/db/UserInfo;->setUserStatus(I)V

    .line 208
    :cond_8
    :goto_8
    return-void

    .line 200
    :cond_9
    const/4 v0, 0x2

    if-ne p1, v0, :cond_15

    .line 202
    iget-object v0, p0, Lcom/samsung/shareshot/User;->userInfo:Lcom/samsung/dmc/ux/db/UserInfo;

    const v1, 0x10000002

    invoke-virtual {v0, v1}, Lcom/samsung/dmc/ux/db/UserInfo;->setUserStatus(I)V

    goto :goto_8

    .line 204
    :cond_15
    const/4 v0, 0x1

    if-ne p1, v0, :cond_8

    .line 206
    iget-object v0, p0, Lcom/samsung/shareshot/User;->userInfo:Lcom/samsung/dmc/ux/db/UserInfo;

    const v1, 0x10000001

    invoke-virtual {v0, v1}, Lcom/samsung/dmc/ux/db/UserInfo;->setUserStatus(I)V

    goto :goto_8
.end method

.method public setUnSelected()V
    .registers 2

    .prologue
    .line 279
    iget-object v0, p0, Lcom/samsung/shareshot/User;->selectUserCallBack:Lcom/samsung/shareshot/Interfaces$SelectUserInterface;

    invoke-interface {v0, p0}, Lcom/samsung/shareshot/Interfaces$SelectUserInterface;->onCancelSelectUser(Lcom/samsung/shareshot/User;)V

    .line 280
    return-void
.end method

.method public setUpdateUserStateCallBack(Lcom/samsung/shareshot/Interfaces$UpdateUserStateInterface;)V
    .registers 2
    .parameter "callback"

    .prologue
    .line 363
    iput-object p1, p0, Lcom/samsung/shareshot/User;->updateUserStateCallBack:Lcom/samsung/shareshot/Interfaces$UpdateUserStateInterface;

    .line 364
    return-void
.end method

.method public setUserInfo(Lcom/samsung/dmc/ux/db/UserInfo;)V
    .registers 4
    .parameter "gsUserInfo"

    .prologue
    .line 323
    iput-object p1, p0, Lcom/samsung/shareshot/User;->userInfo:Lcom/samsung/dmc/ux/db/UserInfo;

    .line 324
    invoke-virtual {p1}, Lcom/samsung/dmc/ux/db/UserInfo;->getPersonInfo()Lcom/samsung/dmc/ux/db/PersonalSettingInfo;

    move-result-object v0

    .line 325
    .local v0, personInfo:Lcom/samsung/dmc/ux/db/PersonalSettingInfo;
    invoke-virtual {v0}, Lcom/samsung/dmc/ux/db/PersonalSettingInfo;->getIconType()I

    move-result v1

    packed-switch v1, :pswitch_data_18

    .line 336
    :pswitch_d
    iget-object v1, p0, Lcom/samsung/shareshot/User;->updateUserStateCallBack:Lcom/samsung/shareshot/Interfaces$UpdateUserStateInterface;

    if-eqz v1, :cond_16

    .line 338
    iget-object v1, p0, Lcom/samsung/shareshot/User;->updateUserStateCallBack:Lcom/samsung/shareshot/Interfaces$UpdateUserStateInterface;

    invoke-interface {v1}, Lcom/samsung/shareshot/Interfaces$UpdateUserStateInterface;->onUpdateState()V

    .line 340
    :cond_16
    return-void

    .line 325
    nop

    :pswitch_data_18
    .packed-switch 0x0
        :pswitch_d
        :pswitch_d
    .end packed-switch
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 395
    iget v0, p0, Lcom/samsung/shareshot/User;->iconID:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 396
    iget-boolean v0, p0, Lcom/samsung/shareshot/User;->selected:Z

    if-eqz v0, :cond_8e

    const/4 v0, 0x1

    :goto_a
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 399
    iget-object v0, p0, Lcom/samsung/shareshot/User;->userInfo:Lcom/samsung/dmc/ux/db/UserInfo;

    invoke-virtual {v0}, Lcom/samsung/dmc/ux/db/UserInfo;->getUserID()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 400
    iget-object v0, p0, Lcom/samsung/shareshot/User;->userInfo:Lcom/samsung/dmc/ux/db/UserInfo;

    invoke-virtual {v0}, Lcom/samsung/dmc/ux/db/UserInfo;->getIPAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 401
    iget-object v0, p0, Lcom/samsung/shareshot/User;->userInfo:Lcom/samsung/dmc/ux/db/UserInfo;

    invoke-virtual {v0}, Lcom/samsung/dmc/ux/db/UserInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 402
    iget-object v0, p0, Lcom/samsung/shareshot/User;->userInfo:Lcom/samsung/dmc/ux/db/UserInfo;

    invoke-virtual {v0}, Lcom/samsung/dmc/ux/db/UserInfo;->getLoginTime()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 403
    iget-object v0, p0, Lcom/samsung/shareshot/User;->userInfo:Lcom/samsung/dmc/ux/db/UserInfo;

    invoke-virtual {v0}, Lcom/samsung/dmc/ux/db/UserInfo;->getLogoutTime()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 404
    iget-object v0, p0, Lcom/samsung/shareshot/User;->userInfo:Lcom/samsung/dmc/ux/db/UserInfo;

    invoke-virtual {v0}, Lcom/samsung/dmc/ux/db/UserInfo;->getUserStatus()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 405
    iget-object v0, p0, Lcom/samsung/shareshot/User;->userInfo:Lcom/samsung/dmc/ux/db/UserInfo;

    invoke-virtual {v0}, Lcom/samsung/dmc/ux/db/UserInfo;->getGroupID()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 407
    iget-object v0, p0, Lcom/samsung/shareshot/User;->userInfo:Lcom/samsung/dmc/ux/db/UserInfo;

    invoke-virtual {v0}, Lcom/samsung/dmc/ux/db/UserInfo;->getPersonInfo()Lcom/samsung/dmc/ux/db/PersonalSettingInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/dmc/ux/db/PersonalSettingInfo;->getSettingID()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 408
    iget-object v0, p0, Lcom/samsung/shareshot/User;->userInfo:Lcom/samsung/dmc/ux/db/UserInfo;

    invoke-virtual {v0}, Lcom/samsung/dmc/ux/db/UserInfo;->getPersonInfo()Lcom/samsung/dmc/ux/db/PersonalSettingInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/dmc/ux/db/PersonalSettingInfo;->getUserName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 409
    iget-object v0, p0, Lcom/samsung/shareshot/User;->userInfo:Lcom/samsung/dmc/ux/db/UserInfo;

    invoke-virtual {v0}, Lcom/samsung/dmc/ux/db/UserInfo;->getPersonInfo()Lcom/samsung/dmc/ux/db/PersonalSettingInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/dmc/ux/db/PersonalSettingInfo;->getIconType()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 410
    iget-object v0, p0, Lcom/samsung/shareshot/User;->userInfo:Lcom/samsung/dmc/ux/db/UserInfo;

    invoke-virtual {v0}, Lcom/samsung/dmc/ux/db/UserInfo;->getPersonInfo()Lcom/samsung/dmc/ux/db/PersonalSettingInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/dmc/ux/db/PersonalSettingInfo;->getIconResID()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 411
    iget-object v0, p0, Lcom/samsung/shareshot/User;->userInfo:Lcom/samsung/dmc/ux/db/UserInfo;

    invoke-virtual {v0}, Lcom/samsung/dmc/ux/db/UserInfo;->getPersonInfo()Lcom/samsung/dmc/ux/db/PersonalSettingInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/dmc/ux/db/PersonalSettingInfo;->getIconPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 412
    return-void

    .line 396
    :cond_8e
    const/4 v0, 0x0

    goto/16 :goto_a
.end method
