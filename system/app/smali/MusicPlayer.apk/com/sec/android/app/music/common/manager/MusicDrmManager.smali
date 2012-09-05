.class public Lcom/sec/android/app/music/common/manager/MusicDrmManager;
.super Ljava/lang/Object;
.source "MusicDrmManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/music/common/manager/MusicDrmManager$MusicDrmOption;,
        Lcom/sec/android/app/music/common/manager/MusicDrmManager$MusicDrmDetailInfo;,
        Lcom/sec/android/app/music/common/manager/MusicDrmManager$POPUP_SOFTKEY_BUTTON;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;

.field public static sDRMInterface:LDigiCAP/LGT/DRM/DRMInterface;


# instance fields
.field private bInitialed:Z

.field private bLGTDrmFile:Z

.field public isDrmPopupShown:Z

.field private final mContext:Landroid/content/Context;

.field private mDrmClient:Landroid/drm/DrmManagerClient;

.field private final mDrmErrorListener:Landroid/drm/DrmManagerClient$OnErrorListener;

.field private final mDrmEventListener:Landroid/drm/DrmManagerClient$OnEventListener;

.field private mDrmMimeType:Ljava/lang/String;

.field private mDrmType:I

.field public mFilePath:Ljava/lang/String;

.field private mHandler:Landroid/os/Handler;

.field private mLicenseStatus:I

.field popupType:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 39
    const-class v0, Lcom/sec/android/app/music/common/manager/MusicDrmManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/music/common/manager/MusicDrmManager;->TAG:Ljava/lang/String;

    .line 177
    new-instance v0, LDigiCAP/LGT/DRM/DRMInterface;

    invoke-direct {v0}, LDigiCAP/LGT/DRM/DRMInterface;-><init>()V

    sput-object v0, Lcom/sec/android/app/music/common/manager/MusicDrmManager;->sDRMInterface:LDigiCAP/LGT/DRM/DRMInterface;

    .line 181
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .parameter "c"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 183
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 154
    iput-boolean v0, p0, Lcom/sec/android/app/music/common/manager/MusicDrmManager;->isDrmPopupShown:Z

    .line 156
    iput-boolean v0, p0, Lcom/sec/android/app/music/common/manager/MusicDrmManager;->bInitialed:Z

    .line 160
    iput-object v1, p0, Lcom/sec/android/app/music/common/manager/MusicDrmManager;->mDrmClient:Landroid/drm/DrmManagerClient;

    .line 162
    iput-object v1, p0, Lcom/sec/android/app/music/common/manager/MusicDrmManager;->mFilePath:Ljava/lang/String;

    .line 164
    iput-object v1, p0, Lcom/sec/android/app/music/common/manager/MusicDrmManager;->mDrmMimeType:Ljava/lang/String;

    .line 166
    iput v0, p0, Lcom/sec/android/app/music/common/manager/MusicDrmManager;->mDrmType:I

    .line 168
    iput v0, p0, Lcom/sec/android/app/music/common/manager/MusicDrmManager;->mLicenseStatus:I

    .line 170
    iput v0, p0, Lcom/sec/android/app/music/common/manager/MusicDrmManager;->popupType:I

    .line 172
    iput-boolean v0, p0, Lcom/sec/android/app/music/common/manager/MusicDrmManager;->bLGTDrmFile:Z

    .line 174
    iput-object v1, p0, Lcom/sec/android/app/music/common/manager/MusicDrmManager;->mHandler:Landroid/os/Handler;

    .line 1129
    new-instance v0, Lcom/sec/android/app/music/common/manager/MusicDrmManager$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/music/common/manager/MusicDrmManager$1;-><init>(Lcom/sec/android/app/music/common/manager/MusicDrmManager;)V

    iput-object v0, p0, Lcom/sec/android/app/music/common/manager/MusicDrmManager;->mDrmErrorListener:Landroid/drm/DrmManagerClient$OnErrorListener;

    .line 1184
    new-instance v0, Lcom/sec/android/app/music/common/manager/MusicDrmManager$2;

    invoke-direct {v0, p0}, Lcom/sec/android/app/music/common/manager/MusicDrmManager$2;-><init>(Lcom/sec/android/app/music/common/manager/MusicDrmManager;)V

    iput-object v0, p0, Lcom/sec/android/app/music/common/manager/MusicDrmManager;->mDrmEventListener:Landroid/drm/DrmManagerClient$OnEventListener;

    .line 184
    iput-object p1, p0, Lcom/sec/android/app/music/common/manager/MusicDrmManager;->mContext:Landroid/content/Context;

    .line 185
    new-instance v0, Landroid/drm/DrmManagerClient;

    iget-object v1, p0, Lcom/sec/android/app/music/common/manager/MusicDrmManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/drm/DrmManagerClient;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/app/music/common/manager/MusicDrmManager;->mDrmClient:Landroid/drm/DrmManagerClient;

    .line 186
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .registers 1

    .prologue
    .line 38
    sget-object v0, Lcom/sec/android/app/music/common/manager/MusicDrmManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/android/app/music/common/manager/MusicDrmManager;)Landroid/os/Handler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/sec/android/app/music/common/manager/MusicDrmManager;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public static getDrmMimeType(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .parameter "drmFileName"

    .prologue
    const/4 v1, 0x0

    .line 815
    if-nez p0, :cond_4

    .line 840
    :cond_3
    :goto_3
    return-object v1

    .line 818
    :cond_4
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 820
    .local v0, drmFilename:Ljava/lang/String;
    if-eqz v0, :cond_3

    .line 821
    const-string v2, ".dcf"

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_15

    .line 822
    const-string v1, "application/vnd.oma.drm.content"

    goto :goto_3

    .line 823
    :cond_15
    const-string v2, ".avi"

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_20

    .line 824
    const-string v1, "video/mux/AVI"

    goto :goto_3

    .line 825
    :cond_20
    const-string v2, ".mkv"

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2b

    .line 826
    const-string v1, "video/mux/MKV"

    goto :goto_3

    .line 827
    :cond_2b
    const-string v2, ".divx"

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_36

    .line 828
    const-string v1, "video/mux/DivX"

    goto :goto_3

    .line 829
    :cond_36
    const-string v2, ".pyv"

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_41

    .line 830
    const-string v1, "video/vnd.ms-playready.media.pyv"

    goto :goto_3

    .line 831
    :cond_41
    const-string v2, ".pya"

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4c

    .line 832
    const-string v1, "audio/vnd.ms-playready.media.pya"

    goto :goto_3

    .line 833
    :cond_4c
    const-string v2, ".wmv"

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_57

    .line 834
    const-string v1, "video/x-ms-wmv"

    goto :goto_3

    .line 835
    :cond_57
    const-string v2, ".wma"

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 836
    const-string v1, "audio/x-ms-wma"

    goto :goto_3
.end method

.method private static getFileType(Ljava/lang/String;)I
    .registers 4
    .parameter "drmFileName"

    .prologue
    const/4 v1, 0x0

    .line 850
    if-nez p0, :cond_4

    .line 861
    :cond_3
    :goto_3
    return v1

    .line 853
    :cond_4
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 855
    .local v0, drmFilename:Ljava/lang/String;
    const-string v2, ".dcf"

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 856
    const/4 v1, 0x1

    goto :goto_3

    .line 857
    :cond_12
    const-string v2, ".pyv"

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_32

    const-string v2, ".pya"

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_32

    const-string v2, ".wmv"

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_32

    const-string v2, ".wma"

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 859
    :cond_32
    const/4 v1, 0x2

    goto :goto_3
.end method

.method public static isAnyDrmEnabled()Z
    .registers 1

    .prologue
    .line 51
    const/4 v0, 0x1

    return v0
.end method

.method public static isWMdrmFile(Ljava/lang/String;)Z
    .registers 3
    .parameter "drmFileName"

    .prologue
    .line 869
    invoke-static {p0}, Lcom/sec/android/app/music/common/manager/MusicDrmManager;->getFileType(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method


# virtual methods
.method public acquireRights(Landroid/drm/DrmInfoRequest;Landroid/os/Handler;)I
    .registers 5
    .parameter "drmInfoRequest"
    .parameter "h"

    .prologue
    const/4 v1, 0x0

    .line 1117
    if-eqz p2, :cond_1a

    .line 1118
    iput-object p2, p0, Lcom/sec/android/app/music/common/manager/MusicDrmManager;->mHandler:Landroid/os/Handler;

    .line 1119
    iget-object v0, p0, Lcom/sec/android/app/music/common/manager/MusicDrmManager;->mDrmClient:Landroid/drm/DrmManagerClient;

    iget-object v1, p0, Lcom/sec/android/app/music/common/manager/MusicDrmManager;->mDrmEventListener:Landroid/drm/DrmManagerClient$OnEventListener;

    invoke-virtual {v0, v1}, Landroid/drm/DrmManagerClient;->setOnEventListener(Landroid/drm/DrmManagerClient$OnEventListener;)V

    .line 1120
    iget-object v0, p0, Lcom/sec/android/app/music/common/manager/MusicDrmManager;->mDrmClient:Landroid/drm/DrmManagerClient;

    iget-object v1, p0, Lcom/sec/android/app/music/common/manager/MusicDrmManager;->mDrmErrorListener:Landroid/drm/DrmManagerClient$OnErrorListener;

    invoke-virtual {v0, v1}, Landroid/drm/DrmManagerClient;->setOnErrorListener(Landroid/drm/DrmManagerClient$OnErrorListener;)V

    .line 1126
    :goto_13
    iget-object v0, p0, Lcom/sec/android/app/music/common/manager/MusicDrmManager;->mDrmClient:Landroid/drm/DrmManagerClient;

    invoke-virtual {v0, p1}, Landroid/drm/DrmManagerClient;->acquireRights(Landroid/drm/DrmInfoRequest;)I

    move-result v0

    return v0

    .line 1122
    :cond_1a
    iput-object v1, p0, Lcom/sec/android/app/music/common/manager/MusicDrmManager;->mHandler:Landroid/os/Handler;

    .line 1123
    iget-object v0, p0, Lcom/sec/android/app/music/common/manager/MusicDrmManager;->mDrmClient:Landroid/drm/DrmManagerClient;

    invoke-virtual {v0, v1}, Landroid/drm/DrmManagerClient;->setOnEventListener(Landroid/drm/DrmManagerClient$OnEventListener;)V

    .line 1124
    iget-object v0, p0, Lcom/sec/android/app/music/common/manager/MusicDrmManager;->mDrmClient:Landroid/drm/DrmManagerClient;

    invoke-virtual {v0, v1}, Landroid/drm/DrmManagerClient;->setOnErrorListener(Landroid/drm/DrmManagerClient$OnErrorListener;)V

    goto :goto_13
.end method

.method public getDetailRightsPermission()Ljava/util/ArrayList;
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/music/common/manager/MusicDrmManager$MusicDrmDetailInfo;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    const/4 v14, 0x3

    const/4 v13, 0x2

    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 900
    const/4 v1, 0x0

    .line 901
    .local v1, categoryType:I
    const/4 v4, 0x0

    .line 903
    .local v4, licenseCategory:Ljava/lang/String;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 904
    .local v0, array:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/app/music/common/manager/MusicDrmManager$MusicDrmDetailInfo;>;"
    new-instance v2, Lcom/sec/android/app/music/common/manager/MusicDrmManager$MusicDrmDetailInfo;

    invoke-direct {v2, p0}, Lcom/sec/android/app/music/common/manager/MusicDrmManager$MusicDrmDetailInfo;-><init>(Lcom/sec/android/app/music/common/manager/MusicDrmManager;)V

    .line 907
    .local v2, details:Lcom/sec/android/app/music/common/manager/MusicDrmManager$MusicDrmDetailInfo;
    iget-boolean v8, p0, Lcom/sec/android/app/music/common/manager/MusicDrmManager;->bLGTDrmFile:Z

    if-nez v8, :cond_19

    iget v8, p0, Lcom/sec/android/app/music/common/manager/MusicDrmManager;->mDrmType:I

    if-ne v8, v14, :cond_34

    .line 908
    :cond_19
    iput v12, v2, Lcom/sec/android/app/music/common/manager/MusicDrmManager$MusicDrmDetailInfo;->constraintsType:I

    .line 909
    iget-object v7, v2, Lcom/sec/android/app/music/common/manager/MusicDrmManager$MusicDrmDetailInfo;->displayStr:[Ljava/lang/String;

    iget-object v8, p0, Lcom/sec/android/app/music/common/manager/MusicDrmManager;->mContext:Landroid/content/Context;

    const v9, 0x7f0900c5

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v11

    .line 910
    iget-object v7, p0, Lcom/sec/android/app/music/common/manager/MusicDrmManager;->mFilePath:Ljava/lang/String;

    invoke-virtual {p0, v7}, Lcom/sec/android/app/music/common/manager/MusicDrmManager;->getExpireDate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v2, Lcom/sec/android/app/music/common/manager/MusicDrmManager$MusicDrmDetailInfo;->validityStr:Ljava/lang/String;

    .line 1068
    :cond_30
    :goto_30
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1069
    .end local v0           #array:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/app/music/common/manager/MusicDrmManager$MusicDrmDetailInfo;>;"
    :goto_33
    return-object v0

    .line 913
    .restart local v0       #array:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/app/music/common/manager/MusicDrmManager$MusicDrmDetailInfo;>;"
    :cond_34
    iget-object v8, p0, Lcom/sec/android/app/music/common/manager/MusicDrmManager;->mDrmClient:Landroid/drm/DrmManagerClient;

    iget-object v9, p0, Lcom/sec/android/app/music/common/manager/MusicDrmManager;->mFilePath:Ljava/lang/String;

    invoke-virtual {v8, v9, v12}, Landroid/drm/DrmManagerClient;->getConstraints(Ljava/lang/String;I)Landroid/content/ContentValues;

    move-result-object v5

    .line 921
    .local v5, rightDetails:Landroid/content/ContentValues;
    if-nez v5, :cond_47

    .line 922
    sget-object v8, Lcom/sec/android/app/music/common/manager/MusicDrmManager;->TAG:Ljava/lang/String;

    const-string v9, "getDetailRightsPermission:rightDetails==null"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v7

    .line 923
    goto :goto_33

    .line 926
    :cond_47
    const-string v8, "license_category"

    invoke-virtual {v5, v8}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    .line 927
    .local v6, tempContent:Ljava/lang/Object;
    if-nez v6, :cond_51

    move-object v0, v7

    .line 928
    goto :goto_33

    .line 930
    :cond_51
    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 931
    sget-object v8, Lcom/sec/android/app/music/common/manager/MusicDrmManager;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "getDetailRightsPermission:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 933
    :try_start_6d
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_70
    .catch Ljava/lang/NumberFormatException; {:try_start_6d .. :try_end_70} :catch_7e

    move-result v1

    .line 938
    iput v1, v2, Lcom/sec/android/app/music/common/manager/MusicDrmManager$MusicDrmDetailInfo;->constraintsType:I

    .line 940
    iget v8, p0, Lcom/sec/android/app/music/common/manager/MusicDrmManager;->mDrmType:I

    if-ne v8, v12, :cond_12e

    .line 941
    iput v12, v2, Lcom/sec/android/app/music/common/manager/MusicDrmManager$MusicDrmDetailInfo;->drmType:I

    .line 942
    if-nez v1, :cond_84

    .line 943
    iput v11, v2, Lcom/sec/android/app/music/common/manager/MusicDrmManager$MusicDrmDetailInfo;->displayType:I

    goto :goto_30

    .line 934
    :catch_7e
    move-exception v3

    .line 935
    .local v3, e:Ljava/lang/NumberFormatException;
    invoke-virtual {v3}, Ljava/lang/NumberFormatException;->printStackTrace()V

    move-object v0, v7

    .line 936
    goto :goto_33

    .line 944
    .end local v3           #e:Ljava/lang/NumberFormatException;
    :cond_84
    if-ne v1, v12, :cond_a5

    .line 945
    iput v12, v2, Lcom/sec/android/app/music/common/manager/MusicDrmManager$MusicDrmDetailInfo;->displayType:I

    .line 946
    iget-object v7, v2, Lcom/sec/android/app/music/common/manager/MusicDrmManager$MusicDrmDetailInfo;->displayStr:[Ljava/lang/String;

    const-string v8, "max_repeat_count"

    invoke-virtual {v5, v8}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v13

    .line 948
    iget-object v7, v2, Lcom/sec/android/app/music/common/manager/MusicDrmManager$MusicDrmDetailInfo;->displayStr:[Ljava/lang/String;

    const-string v8, "remaining_repeat_count"

    invoke-virtual {v5, v8}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v14

    goto :goto_30

    .line 950
    :cond_a5
    if-ne v1, v13, :cond_c7

    .line 951
    iput v13, v2, Lcom/sec/android/app/music/common/manager/MusicDrmManager$MusicDrmDetailInfo;->displayType:I

    .line 952
    iget-object v7, v2, Lcom/sec/android/app/music/common/manager/MusicDrmManager$MusicDrmDetailInfo;->displayStr:[Ljava/lang/String;

    const-string v8, "license_start_time"

    invoke-virtual {v5, v8}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v11

    .line 955
    iget-object v7, v2, Lcom/sec/android/app/music/common/manager/MusicDrmManager$MusicDrmDetailInfo;->displayStr:[Ljava/lang/String;

    const-string v8, "license_expiry_time"

    invoke-virtual {v5, v8}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v12

    goto/16 :goto_30

    .line 958
    :cond_c7
    const/4 v8, 0x4

    if-ne v1, v8, :cond_ea

    .line 959
    iput v14, v2, Lcom/sec/android/app/music/common/manager/MusicDrmManager$MusicDrmDetailInfo;->displayType:I

    .line 960
    iget-object v7, v2, Lcom/sec/android/app/music/common/manager/MusicDrmManager$MusicDrmDetailInfo;->displayStr:[Ljava/lang/String;

    const-string v8, "license_start_time"

    invoke-virtual {v5, v8}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v11

    .line 963
    iget-object v7, v2, Lcom/sec/android/app/music/common/manager/MusicDrmManager$MusicDrmDetailInfo;->displayStr:[Ljava/lang/String;

    const-string v8, "license_available_time"

    invoke-virtual {v5, v8}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v12

    goto/16 :goto_30

    .line 966
    :cond_ea
    const/16 v8, 0x8

    if-ne v1, v8, :cond_12b

    .line 967
    const/4 v7, 0x4

    iput v7, v2, Lcom/sec/android/app/music/common/manager/MusicDrmManager$MusicDrmDetailInfo;->displayType:I

    .line 968
    iget-object v7, v2, Lcom/sec/android/app/music/common/manager/MusicDrmManager$MusicDrmDetailInfo;->displayStr:[Ljava/lang/String;

    const-string v8, "license_start_time"

    invoke-virtual {v5, v8}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v11

    .line 971
    iget-object v7, v2, Lcom/sec/android/app/music/common/manager/MusicDrmManager$MusicDrmDetailInfo;->displayStr:[Ljava/lang/String;

    const-string v8, "license_available_time"

    invoke-virtual {v5, v8}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v12

    .line 974
    iget-object v7, v2, Lcom/sec/android/app/music/common/manager/MusicDrmManager$MusicDrmDetailInfo;->displayStr:[Ljava/lang/String;

    const-string v8, "max_repeat_count"

    invoke-virtual {v5, v8}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v13

    .line 985
    iget-object v7, v2, Lcom/sec/android/app/music/common/manager/MusicDrmManager$MusicDrmDetailInfo;->displayStr:[Ljava/lang/String;

    const-string v8, "remaining_repeat_count"

    invoke-virtual {v5, v8}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v14

    goto/16 :goto_30

    :cond_12b
    move-object v0, v7

    .line 988
    goto/16 :goto_33

    .line 991
    :cond_12e
    iget v8, p0, Lcom/sec/android/app/music/common/manager/MusicDrmManager;->mDrmType:I

    if-ne v8, v13, :cond_30

    .line 992
    iput v13, v2, Lcom/sec/android/app/music/common/manager/MusicDrmManager$MusicDrmDetailInfo;->drmType:I

    .line 993
    packed-switch v1, :pswitch_data_26e

    move-object v0, v7

    .line 1064
    goto/16 :goto_33

    .line 995
    :pswitch_13a
    const/16 v7, 0x1e

    iput v7, v2, Lcom/sec/android/app/music/common/manager/MusicDrmManager$MusicDrmDetailInfo;->displayType:I

    goto/16 :goto_30

    .line 998
    :pswitch_140
    iput v11, v2, Lcom/sec/android/app/music/common/manager/MusicDrmManager$MusicDrmDetailInfo;->displayType:I

    goto/16 :goto_30

    .line 1001
    :pswitch_144
    iput v12, v2, Lcom/sec/android/app/music/common/manager/MusicDrmManager$MusicDrmDetailInfo;->displayType:I

    .line 1002
    iget-object v7, v2, Lcom/sec/android/app/music/common/manager/MusicDrmManager$MusicDrmDetailInfo;->displayStr:[Ljava/lang/String;

    const-string v8, "max_repeat_count"

    invoke-virtual {v5, v8}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v13

    .line 1004
    iget-object v7, v2, Lcom/sec/android/app/music/common/manager/MusicDrmManager$MusicDrmDetailInfo;->displayStr:[Ljava/lang/String;

    const-string v8, "remaining_repeat_count"

    invoke-virtual {v5, v8}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v14

    goto/16 :goto_30

    .line 1008
    :pswitch_164
    const/4 v7, 0x6

    iput v7, v2, Lcom/sec/android/app/music/common/manager/MusicDrmManager$MusicDrmDetailInfo;->displayType:I

    .line 1009
    iget-object v7, v2, Lcom/sec/android/app/music/common/manager/MusicDrmManager$MusicDrmDetailInfo;->displayStr:[Ljava/lang/String;

    const-string v8, "license_start_time"

    invoke-virtual {v5, v8}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v11

    goto/16 :goto_30

    .line 1013
    :pswitch_177
    const/4 v7, 0x6

    iput v7, v2, Lcom/sec/android/app/music/common/manager/MusicDrmManager$MusicDrmDetailInfo;->displayType:I

    .line 1014
    iget-object v7, v2, Lcom/sec/android/app/music/common/manager/MusicDrmManager$MusicDrmDetailInfo;->displayStr:[Ljava/lang/String;

    const-string v8, "license_expiry_time"

    invoke-virtual {v5, v8}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v11

    goto/16 :goto_30

    .line 1018
    :pswitch_18a
    iput v13, v2, Lcom/sec/android/app/music/common/manager/MusicDrmManager$MusicDrmDetailInfo;->displayType:I

    .line 1019
    iget-object v7, v2, Lcom/sec/android/app/music/common/manager/MusicDrmManager$MusicDrmDetailInfo;->displayStr:[Ljava/lang/String;

    const-string v8, "license_start_time"

    invoke-virtual {v5, v8}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v11

    .line 1021
    iget-object v7, v2, Lcom/sec/android/app/music/common/manager/MusicDrmManager$MusicDrmDetailInfo;->displayStr:[Ljava/lang/String;

    const-string v8, "license_expiry_time"

    invoke-virtual {v5, v8}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v12

    goto/16 :goto_30

    .line 1025
    :pswitch_1aa
    const/16 v7, 0x8

    iput v7, v2, Lcom/sec/android/app/music/common/manager/MusicDrmManager$MusicDrmDetailInfo;->displayType:I

    .line 1026
    iget-object v7, v2, Lcom/sec/android/app/music/common/manager/MusicDrmManager$MusicDrmDetailInfo;->displayStr:[Ljava/lang/String;

    const-string v8, "license_start_time"

    invoke-virtual {v5, v8}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v11

    .line 1028
    iget-object v7, v2, Lcom/sec/android/app/music/common/manager/MusicDrmManager$MusicDrmDetailInfo;->displayStr:[Ljava/lang/String;

    const-string v8, "max_repeat_count"

    invoke-virtual {v5, v8}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v13

    .line 1030
    iget-object v7, v2, Lcom/sec/android/app/music/common/manager/MusicDrmManager$MusicDrmDetailInfo;->displayStr:[Ljava/lang/String;

    const-string v8, "remaining_repeat_count"

    invoke-virtual {v5, v8}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v14

    goto/16 :goto_30

    .line 1034
    :pswitch_1da
    const/16 v7, 0x8

    iput v7, v2, Lcom/sec/android/app/music/common/manager/MusicDrmManager$MusicDrmDetailInfo;->displayType:I

    .line 1035
    iget-object v7, v2, Lcom/sec/android/app/music/common/manager/MusicDrmManager$MusicDrmDetailInfo;->displayStr:[Ljava/lang/String;

    const-string v8, "license_expiry_time"

    invoke-virtual {v5, v8}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v11

    .line 1037
    iget-object v7, v2, Lcom/sec/android/app/music/common/manager/MusicDrmManager$MusicDrmDetailInfo;->displayStr:[Ljava/lang/String;

    const-string v8, "max_repeat_count"

    invoke-virtual {v5, v8}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v13

    .line 1039
    iget-object v7, v2, Lcom/sec/android/app/music/common/manager/MusicDrmManager$MusicDrmDetailInfo;->displayStr:[Ljava/lang/String;

    const-string v8, "remaining_repeat_count"

    invoke-virtual {v5, v8}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v14

    goto/16 :goto_30

    .line 1043
    :pswitch_20a
    const/16 v7, 0xa

    iput v7, v2, Lcom/sec/android/app/music/common/manager/MusicDrmManager$MusicDrmDetailInfo;->displayType:I

    .line 1044
    iget-object v7, v2, Lcom/sec/android/app/music/common/manager/MusicDrmManager$MusicDrmDetailInfo;->displayStr:[Ljava/lang/String;

    const-string v8, "license_start_time"

    invoke-virtual {v5, v8}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v11

    .line 1046
    iget-object v7, v2, Lcom/sec/android/app/music/common/manager/MusicDrmManager$MusicDrmDetailInfo;->displayStr:[Ljava/lang/String;

    const-string v8, "license_expiry_time"

    invoke-virtual {v5, v8}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v12

    .line 1048
    iget-object v7, v2, Lcom/sec/android/app/music/common/manager/MusicDrmManager$MusicDrmDetailInfo;->displayStr:[Ljava/lang/String;

    const-string v8, "max_repeat_count"

    invoke-virtual {v5, v8}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v13

    .line 1050
    iget-object v7, v2, Lcom/sec/android/app/music/common/manager/MusicDrmManager$MusicDrmDetailInfo;->displayStr:[Ljava/lang/String;

    const-string v8, "remaining_repeat_count"

    invoke-virtual {v5, v8}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v14

    goto/16 :goto_30

    .line 1054
    :pswitch_248
    iput v14, v2, Lcom/sec/android/app/music/common/manager/MusicDrmManager$MusicDrmDetailInfo;->displayType:I

    .line 1055
    iget-object v7, v2, Lcom/sec/android/app/music/common/manager/MusicDrmManager$MusicDrmDetailInfo;->displayStr:[Ljava/lang/String;

    const-string v8, "license_original_interval"

    invoke-virtual {v5, v8}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v11

    .line 1057
    iget-object v7, v2, Lcom/sec/android/app/music/common/manager/MusicDrmManager$MusicDrmDetailInfo;->displayStr:[Ljava/lang/String;

    const-string v8, "license_available_time"

    invoke-virtual {v5, v8}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v12

    goto/16 :goto_30

    .line 1061
    :pswitch_268
    const/16 v7, 0x14

    iput v7, v2, Lcom/sec/android/app/music/common/manager/MusicDrmManager$MusicDrmDetailInfo;->displayType:I

    goto/16 :goto_30

    .line 993
    :pswitch_data_26e
    .packed-switch 0x0
        :pswitch_13a
        :pswitch_140
        :pswitch_144
        :pswitch_164
        :pswitch_177
        :pswitch_18a
        :pswitch_1aa
        :pswitch_1da
        :pswitch_20a
        :pswitch_248
        :pswitch_268
    .end packed-switch
.end method

.method public getDrmPopup()I
    .registers 15

    .prologue
    .line 665
    iget-boolean v11, p0, Lcom/sec/android/app/music/common/manager/MusicDrmManager;->bInitialed:Z

    if-nez v11, :cond_11

    .line 666
    const-string v5, "MusicDrmManager:setDrmPopup() it did not be initialized"

    .line 667
    .local v5, msg:Ljava/lang/String;
    sget-object v11, Lcom/sec/android/app/music/common/manager/MusicDrmManager;->TAG:Ljava/lang/String;

    invoke-static {v11, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 669
    new-instance v11, Ljava/lang/Error;

    invoke-direct {v11, v5}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v11

    .line 672
    .end local v5           #msg:Ljava/lang/String;
    :cond_11
    invoke-virtual {p0}, Lcom/sec/android/app/music/common/manager/MusicDrmManager;->isValidFile()Z

    .line 674
    const/4 v6, 0x0

    .line 676
    .local v6, popupType:I
    iget v11, p0, Lcom/sec/android/app/music/common/manager/MusicDrmManager;->mDrmType:I

    const/4 v12, 0x2

    if-ne v11, v12, :cond_1e

    .line 686
    const/16 v6, 0xc

    :cond_1c
    :goto_1c
    move v11, v6

    .line 749
    :goto_1d
    return v11

    .line 691
    :cond_1e
    iget v11, p0, Lcom/sec/android/app/music/common/manager/MusicDrmManager;->mDrmType:I

    const/4 v12, 0x1

    if-ne v11, v12, :cond_1c

    .line 694
    const/4 v0, 0x0

    .line 695
    .local v0, cdtype:I
    iget v11, p0, Lcom/sec/android/app/music/common/manager/MusicDrmManager;->mLicenseStatus:I

    if-eqz v11, :cond_6b

    .line 697
    new-instance v3, Landroid/drm/DrmInfoRequest;

    const/16 v11, 0xe

    const-string v12, "application/vnd.oma.drm.content"

    invoke-direct {v3, v11, v12}, Landroid/drm/DrmInfoRequest;-><init>(ILjava/lang/String;)V

    .line 699
    .local v3, fileinfodrmrequset:Landroid/drm/DrmInfoRequest;
    const-string v11, "drm_path"

    iget-object v12, p0, Lcom/sec/android/app/music/common/manager/MusicDrmManager;->mFilePath:Ljava/lang/String;

    invoke-virtual {v3, v11, v12}, Landroid/drm/DrmInfoRequest;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 700
    iget-object v11, p0, Lcom/sec/android/app/music/common/manager/MusicDrmManager;->mDrmClient:Landroid/drm/DrmManagerClient;

    invoke-virtual {v11, v3}, Landroid/drm/DrmManagerClient;->processDrmRequest(Landroid/drm/DrmInfoRequest;)Landroid/drm/DrmInfo;

    move-result-object v2

    .line 702
    .local v2, fileinfodrminfo:Landroid/drm/DrmInfo;
    :try_start_3e
    const-string v11, "type"

    invoke-virtual {v2, v11}, Landroid/drm/DrmInfo;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    .line 703
    .local v9, tempInfo:Ljava/lang/Object;
    if-eqz v9, :cond_4e

    .line 704
    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_4d
    .catch Ljava/lang/NullPointerException; {:try_start_3e .. :try_end_4d} :catch_61

    move-result v0

    .line 711
    :cond_4e
    const/4 v11, 0x3

    if-eq v0, v11, :cond_54

    const/4 v11, 0x2

    if-ne v0, v11, :cond_68

    :cond_54
    iget v11, p0, Lcom/sec/android/app/music/common/manager/MusicDrmManager;->mLicenseStatus:I

    const/4 v12, 0x2

    if-eq v11, v12, :cond_5e

    iget v11, p0, Lcom/sec/android/app/music/common/manager/MusicDrmManager;->mLicenseStatus:I

    const/4 v12, 0x3

    if-ne v11, v12, :cond_68

    .line 713
    :cond_5e
    const/16 v6, 0x10

    goto :goto_1c

    .line 706
    .end local v9           #tempInfo:Ljava/lang/Object;
    :catch_61
    move-exception v1

    .line 707
    .local v1, e:Ljava/lang/NullPointerException;
    invoke-virtual {v1}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 708
    const/16 v11, 0x14

    goto :goto_1d

    .line 715
    .end local v1           #e:Ljava/lang/NullPointerException;
    .restart local v9       #tempInfo:Ljava/lang/Object;
    :cond_68
    const/16 v6, 0xf

    goto :goto_1c

    .line 718
    .end local v2           #fileinfodrminfo:Landroid/drm/DrmInfo;
    .end local v3           #fileinfodrmrequset:Landroid/drm/DrmInfoRequest;
    .end local v9           #tempInfo:Ljava/lang/Object;
    :cond_6b
    const/4 v6, 0x0

    .line 720
    iget-object v11, p0, Lcom/sec/android/app/music/common/manager/MusicDrmManager;->mDrmClient:Landroid/drm/DrmManagerClient;

    iget-object v12, p0, Lcom/sec/android/app/music/common/manager/MusicDrmManager;->mFilePath:Ljava/lang/String;

    const/4 v13, 0x1

    invoke-virtual {v11, v12, v13}, Landroid/drm/DrmManagerClient;->getConstraints(Ljava/lang/String;I)Landroid/content/ContentValues;

    move-result-object v7

    .line 722
    .local v7, rightDetails:Landroid/content/ContentValues;
    const/4 v4, 0x0

    .line 723
    .local v4, licenseCategory:Ljava/lang/String;
    if-nez v7, :cond_81

    .line 724
    sget-object v11, Lcom/sec/android/app/music/common/manager/MusicDrmManager;->TAG:Ljava/lang/String;

    const-string v12, "getDrmPopup(): DRM_VALID_NOPOPUP (rightDetails==null)"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v11, v6

    .line 725
    goto :goto_1d

    .line 727
    :cond_81
    const-string v11, "license_category"

    invoke-virtual {v7, v11}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    .line 729
    .local v8, tempContent:Ljava/lang/Object;
    if-nez v8, :cond_92

    .line 730
    sget-object v11, Lcom/sec/android/app/music/common/manager/MusicDrmManager;->TAG:Ljava/lang/String;

    const-string v12, "getDrmPopup(): DRM_VALID_NOPOPUP (tempContent==null)"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v11, v6

    .line 731
    goto :goto_1d

    .line 734
    :cond_92
    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 735
    sget-object v11, Lcom/sec/android/app/music/common/manager/MusicDrmManager;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "getDrmPopup()licenseCategory:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 738
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    const/4 v12, 0x1

    if-ne v11, v12, :cond_1c

    .line 739
    const-string v11, "remaining_repeat_count"

    invoke-virtual {v7, v11}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    .line 741
    .local v10, validityRemainingCount:Ljava/lang/String;
    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    const/4 v12, 0x2

    if-gt v11, v12, :cond_1c

    .line 742
    const/4 v6, 0x1

    goto/16 :goto_1c
.end method

.method public getDrmPopup(Z[I[Lcom/sec/android/app/music/common/manager/MusicDrmManager$POPUP_SOFTKEY_BUTTON;)I
    .registers 20
    .parameter "bOnRequestByList"
    .parameter "popupStrings"
    .parameter "button"

    .prologue
    .line 497
    sget-object v11, Lcom/sec/android/app/music/common/manager/MusicDrmManager;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "getDrmPopup("

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move/from16 v0, p1

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ")is called"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 502
    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/sec/android/app/music/common/manager/MusicDrmManager;->bInitialed:Z

    if-nez v11, :cond_33

    .line 503
    const-string v6, "MusicDrmManager:setDrmPopup() it did not be initialized"

    .line 504
    .local v6, msg:Ljava/lang/String;
    sget-object v11, Lcom/sec/android/app/music/common/manager/MusicDrmManager;->TAG:Ljava/lang/String;

    invoke-static {v11, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 506
    new-instance v11, Ljava/lang/Error;

    invoke-direct {v11, v6}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v11

    .line 510
    .end local v6           #msg:Ljava/lang/String;
    :cond_33
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/music/common/manager/MusicDrmManager;->isValidFile()Z

    .line 512
    const/4 v11, 0x0

    move-object/from16 v0, p0

    iput v11, v0, Lcom/sec/android/app/music/common/manager/MusicDrmManager;->popupType:I

    .line 514
    move-object/from16 v0, p0

    iget v11, v0, Lcom/sec/android/app/music/common/manager/MusicDrmManager;->mDrmType:I

    const/4 v12, 0x2

    if-ne v11, v12, :cond_e9

    .line 523
    move-object/from16 v0, p0

    iget v11, v0, Lcom/sec/android/app/music/common/manager/MusicDrmManager;->mLicenseStatus:I

    packed-switch v11, :pswitch_data_228

    .line 653
    :cond_49
    :goto_49
    sget-object v11, Lcom/sec/android/app/music/common/manager/MusicDrmManager;->TAG:Ljava/lang/String;

    const-string v12, "getDrmPopup(): popupStrings=%d,%d,popupType=%d"

    const/4 v13, 0x3

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    const/4 v15, 0x0

    aget v15, p2, v15

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v13, v14

    const/4 v14, 0x1

    const/4 v15, 0x1

    aget v15, p2, v15

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v13, v14

    const/4 v14, 0x2

    move-object/from16 v0, p0

    iget v15, v0, Lcom/sec/android/app/music/common/manager/MusicDrmManager;->popupType:I

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v13, v14

    invoke-static {v12, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 655
    move-object/from16 v0, p0

    iget v11, v0, Lcom/sec/android/app/music/common/manager/MusicDrmManager;->popupType:I

    :goto_7a
    return v11

    .line 525
    :pswitch_7b
    const/4 v11, 0x0

    const v12, 0x7f0900bb

    aput v12, p2, v11

    .line 526
    const/16 v11, 0xc

    move-object/from16 v0, p0

    iput v11, v0, Lcom/sec/android/app/music/common/manager/MusicDrmManager;->popupType:I

    .line 527
    const/4 v11, 0x0

    sget-object v12, Lcom/sec/android/app/music/common/manager/MusicDrmManager$POPUP_SOFTKEY_BUTTON;->DRM_OK_SOFTKEY_BUTTON:Lcom/sec/android/app/music/common/manager/MusicDrmManager$POPUP_SOFTKEY_BUTTON;

    aput-object v12, p3, v11

    goto :goto_49

    .line 531
    :pswitch_8d
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/android/app/music/common/manager/MusicDrmManager;->mContext:Landroid/content/Context;

    invoke-static {v11}, Lcom/sec/android/app/music/MusicUtils;->checkIsNetworkConnected(Landroid/content/Context;)Z

    move-result v11

    if-nez v11, :cond_a9

    .line 532
    const/4 v11, 0x0

    const v12, 0x7f0900db

    aput v12, p2, v11

    .line 536
    :goto_9d
    const/16 v11, 0xc

    move-object/from16 v0, p0

    iput v11, v0, Lcom/sec/android/app/music/common/manager/MusicDrmManager;->popupType:I

    .line 537
    const/4 v11, 0x0

    sget-object v12, Lcom/sec/android/app/music/common/manager/MusicDrmManager$POPUP_SOFTKEY_BUTTON;->DRM_OK_SOFTKEY_BUTTON:Lcom/sec/android/app/music/common/manager/MusicDrmManager$POPUP_SOFTKEY_BUTTON;

    aput-object v12, p3, v11

    goto :goto_49

    .line 534
    :cond_a9
    const/4 v11, 0x0

    const v12, 0x7f0900e9

    aput v12, p2, v11

    goto :goto_9d

    .line 541
    :pswitch_b0
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/android/app/music/common/manager/MusicDrmManager;->mContext:Landroid/content/Context;

    invoke-static {v11}, Lcom/sec/android/app/music/MusicUtils;->checkIsNetworkConnected(Landroid/content/Context;)Z

    move-result v11

    if-nez v11, :cond_d4

    .line 542
    sget-object v11, Lcom/sec/android/app/music/common/manager/MusicDrmManager;->TAG:Ljava/lang/String;

    const-string v12, "No Network Connection"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 543
    const/4 v11, 0x0

    const v12, 0x7f0900db

    aput v12, p2, v11

    .line 544
    const/16 v11, 0xc

    move-object/from16 v0, p0

    iput v11, v0, Lcom/sec/android/app/music/common/manager/MusicDrmManager;->popupType:I

    .line 545
    const/4 v11, 0x0

    sget-object v12, Lcom/sec/android/app/music/common/manager/MusicDrmManager$POPUP_SOFTKEY_BUTTON;->DRM_OK_SOFTKEY_BUTTON:Lcom/sec/android/app/music/common/manager/MusicDrmManager$POPUP_SOFTKEY_BUTTON;

    aput-object v12, p3, v11

    goto/16 :goto_49

    .line 547
    :cond_d4
    sget-object v11, Lcom/sec/android/app/music/common/manager/MusicDrmManager;->TAG:Ljava/lang/String;

    const-string v12, "Network connected : Acquiring License"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 548
    const/4 v11, 0x0

    const v12, 0x7f0900df

    aput v12, p2, v11

    .line 549
    const/16 v11, 0x15

    move-object/from16 v0, p0

    iput v11, v0, Lcom/sec/android/app/music/common/manager/MusicDrmManager;->popupType:I

    goto/16 :goto_49

    .line 555
    :cond_e9
    move-object/from16 v0, p0

    iget v11, v0, Lcom/sec/android/app/music/common/manager/MusicDrmManager;->mDrmType:I

    const/4 v12, 0x1

    if-ne v11, v12, :cond_219

    .line 558
    const/4 v1, 0x0

    .line 559
    .local v1, cdtype:I
    move-object/from16 v0, p0

    iget v11, v0, Lcom/sec/android/app/music/common/manager/MusicDrmManager;->mLicenseStatus:I

    if-eqz v11, :cond_191

    .line 561
    new-instance v4, Landroid/drm/DrmInfoRequest;

    const/16 v11, 0xe

    const-string v12, "application/vnd.oma.drm.content"

    invoke-direct {v4, v11, v12}, Landroid/drm/DrmInfoRequest;-><init>(ILjava/lang/String;)V

    .line 563
    .local v4, fileinfodrmrequset:Landroid/drm/DrmInfoRequest;
    const-string v11, "drm_path"

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/app/music/common/manager/MusicDrmManager;->mFilePath:Ljava/lang/String;

    invoke-virtual {v4, v11, v12}, Landroid/drm/DrmInfoRequest;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 564
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/android/app/music/common/manager/MusicDrmManager;->mDrmClient:Landroid/drm/DrmManagerClient;

    invoke-virtual {v11, v4}, Landroid/drm/DrmManagerClient;->processDrmRequest(Landroid/drm/DrmInfoRequest;)Landroid/drm/DrmInfo;

    move-result-object v3

    .line 566
    .local v3, fileinfodrminfo:Landroid/drm/DrmInfo;
    :try_start_111
    const-string v11, "type"

    invoke-virtual {v3, v11}, Landroid/drm/DrmInfo;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    .line 567
    .local v9, tempInfo:Ljava/lang/Object;
    if-eqz v9, :cond_121

    .line 568
    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_120
    .catch Ljava/lang/NullPointerException; {:try_start_111 .. :try_end_120} :catch_14d

    move-result v1

    .line 576
    :cond_121
    const/4 v11, 0x3

    if-eq v1, v11, :cond_127

    const/4 v11, 0x2

    if-ne v1, v11, :cond_15b

    :cond_127
    move-object/from16 v0, p0

    iget v11, v0, Lcom/sec/android/app/music/common/manager/MusicDrmManager;->mLicenseStatus:I

    const/4 v12, 0x2

    if-eq v11, v12, :cond_135

    move-object/from16 v0, p0

    iget v11, v0, Lcom/sec/android/app/music/common/manager/MusicDrmManager;->mLicenseStatus:I

    const/4 v12, 0x3

    if-ne v11, v12, :cond_15b

    .line 578
    :cond_135
    const/4 v11, 0x0

    const v12, 0x7f0900bc

    aput v12, p2, v11

    .line 579
    const/16 v11, 0x10

    move-object/from16 v0, p0

    iput v11, v0, Lcom/sec/android/app/music/common/manager/MusicDrmManager;->popupType:I

    .line 580
    const/4 v11, 0x0

    sget-object v12, Lcom/sec/android/app/music/common/manager/MusicDrmManager$POPUP_SOFTKEY_BUTTON;->DRM_BUY_SOFTKEY_BUTTON:Lcom/sec/android/app/music/common/manager/MusicDrmManager$POPUP_SOFTKEY_BUTTON;

    aput-object v12, p3, v11

    .line 581
    const/4 v11, 0x1

    sget-object v12, Lcom/sec/android/app/music/common/manager/MusicDrmManager$POPUP_SOFTKEY_BUTTON;->DRM_CANCEL_SOFTKEY_BUTTON:Lcom/sec/android/app/music/common/manager/MusicDrmManager$POPUP_SOFTKEY_BUTTON;

    aput-object v12, p3, v11

    goto/16 :goto_49

    .line 570
    .end local v9           #tempInfo:Ljava/lang/Object;
    :catch_14d
    move-exception v2

    .line 571
    .local v2, e:Ljava/lang/NullPointerException;
    invoke-virtual {v2}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 572
    const/4 v11, 0x0

    const v12, 0x7f0900bb

    aput v12, p2, v11

    .line 573
    const/16 v11, 0x14

    goto/16 :goto_7a

    .line 583
    .end local v2           #e:Ljava/lang/NullPointerException;
    .restart local v9       #tempInfo:Ljava/lang/Object;
    :cond_15b
    const/4 v11, 0x1

    move/from16 v0, p1

    if-ne v0, v11, :cond_17e

    .line 584
    const/4 v11, 0x0

    const v12, 0x7f0900bb

    aput v12, p2, v11

    .line 585
    const/4 v11, 0x1

    const v12, 0x7f0900ba

    aput v12, p2, v11

    .line 586
    const/16 v11, 0xe

    move-object/from16 v0, p0

    iput v11, v0, Lcom/sec/android/app/music/common/manager/MusicDrmManager;->popupType:I

    .line 587
    const/4 v11, 0x0

    sget-object v12, Lcom/sec/android/app/music/common/manager/MusicDrmManager$POPUP_SOFTKEY_BUTTON;->DRM_DELETE_SOFTKEY_BUTTON:Lcom/sec/android/app/music/common/manager/MusicDrmManager$POPUP_SOFTKEY_BUTTON;

    aput-object v12, p3, v11

    .line 588
    const/4 v11, 0x1

    sget-object v12, Lcom/sec/android/app/music/common/manager/MusicDrmManager$POPUP_SOFTKEY_BUTTON;->DRM_CANCEL_SOFTKEY_BUTTON:Lcom/sec/android/app/music/common/manager/MusicDrmManager$POPUP_SOFTKEY_BUTTON;

    aput-object v12, p3, v11

    goto/16 :goto_49

    .line 590
    :cond_17e
    const/4 v11, 0x0

    const v12, 0x7f0900bb

    aput v12, p2, v11

    .line 591
    const/16 v11, 0xf

    move-object/from16 v0, p0

    iput v11, v0, Lcom/sec/android/app/music/common/manager/MusicDrmManager;->popupType:I

    .line 592
    const/4 v11, 0x0

    sget-object v12, Lcom/sec/android/app/music/common/manager/MusicDrmManager$POPUP_SOFTKEY_BUTTON;->DRM_OK_SOFTKEY_BUTTON:Lcom/sec/android/app/music/common/manager/MusicDrmManager$POPUP_SOFTKEY_BUTTON;

    aput-object v12, p3, v11

    goto/16 :goto_49

    .line 596
    .end local v3           #fileinfodrminfo:Landroid/drm/DrmInfo;
    .end local v4           #fileinfodrmrequset:Landroid/drm/DrmInfoRequest;
    .end local v9           #tempInfo:Ljava/lang/Object;
    :cond_191
    const/4 v11, 0x0

    move-object/from16 v0, p0

    iput v11, v0, Lcom/sec/android/app/music/common/manager/MusicDrmManager;->popupType:I

    .line 598
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/android/app/music/common/manager/MusicDrmManager;->mDrmClient:Landroid/drm/DrmManagerClient;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/app/music/common/manager/MusicDrmManager;->mFilePath:Ljava/lang/String;

    const/4 v13, 0x1

    invoke-virtual {v11, v12, v13}, Landroid/drm/DrmManagerClient;->getConstraints(Ljava/lang/String;I)Landroid/content/ContentValues;

    move-result-object v7

    .line 600
    .local v7, rightDetails:Landroid/content/ContentValues;
    const/4 v5, 0x0

    .line 601
    .local v5, licenseCategory:Ljava/lang/String;
    if-nez v7, :cond_1b3

    .line 602
    sget-object v11, Lcom/sec/android/app/music/common/manager/MusicDrmManager;->TAG:Ljava/lang/String;

    const-string v12, "getDrmPopup(): DRM_VALID_NOPOPUP (rightDetails==null)"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 603
    move-object/from16 v0, p0

    iget v11, v0, Lcom/sec/android/app/music/common/manager/MusicDrmManager;->popupType:I

    goto/16 :goto_7a

    .line 605
    :cond_1b3
    const-string v11, "license_category"

    invoke-virtual {v7, v11}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    .line 607
    .local v8, tempContent:Ljava/lang/Object;
    if-nez v8, :cond_1c8

    .line 608
    sget-object v11, Lcom/sec/android/app/music/common/manager/MusicDrmManager;->TAG:Ljava/lang/String;

    const-string v12, "getDrmPopup(): DRM_VALID_NOPOPUP (tempContent==null)"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 609
    move-object/from16 v0, p0

    iget v11, v0, Lcom/sec/android/app/music/common/manager/MusicDrmManager;->popupType:I

    goto/16 :goto_7a

    .line 612
    :cond_1c8
    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    .line 613
    sget-object v11, Lcom/sec/android/app/music/common/manager/MusicDrmManager;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "getDrmPopup()licenseCategory:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 615
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    const/4 v12, 0x1

    if-ne v11, v12, :cond_49

    .line 616
    const-string v11, "remaining_repeat_count"

    invoke-virtual {v7, v11}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    .line 618
    .local v10, validityRemainingCount:Ljava/lang/String;
    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    const/4 v12, 0x2

    if-gt v11, v12, :cond_49

    .line 619
    const/4 v11, 0x0

    const v12, 0x7f0900b6

    aput v12, p2, v11

    .line 620
    const/4 v11, 0x1

    const v12, 0x7f0900b8

    aput v12, p2, v11

    .line 621
    const/4 v11, 0x1

    move-object/from16 v0, p0

    iput v11, v0, Lcom/sec/android/app/music/common/manager/MusicDrmManager;->popupType:I

    .line 622
    const/4 v11, 0x0

    sget-object v12, Lcom/sec/android/app/music/common/manager/MusicDrmManager$POPUP_SOFTKEY_BUTTON;->DRM_PLAY_SOFTKEY_BUTTON:Lcom/sec/android/app/music/common/manager/MusicDrmManager$POPUP_SOFTKEY_BUTTON;

    aput-object v12, p3, v11

    .line 623
    const/4 v11, 0x1

    sget-object v12, Lcom/sec/android/app/music/common/manager/MusicDrmManager$POPUP_SOFTKEY_BUTTON;->DRM_CANCEL_SOFTKEY_BUTTON:Lcom/sec/android/app/music/common/manager/MusicDrmManager$POPUP_SOFTKEY_BUTTON;

    aput-object v12, p3, v11

    goto/16 :goto_49

    .line 628
    .end local v1           #cdtype:I
    .end local v5           #licenseCategory:Ljava/lang/String;
    .end local v7           #rightDetails:Landroid/content/ContentValues;
    .end local v8           #tempContent:Ljava/lang/Object;
    .end local v10           #validityRemainingCount:Ljava/lang/String;
    :cond_219
    move-object/from16 v0, p0

    iget v11, v0, Lcom/sec/android/app/music/common/manager/MusicDrmManager;->mDrmType:I

    const/4 v12, 0x3

    if-ne v11, v12, :cond_49

    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/sec/android/app/music/common/manager/MusicDrmManager;->bLGTDrmFile:Z

    if-eqz v11, :cond_49

    goto/16 :goto_49

    .line 523
    :pswitch_data_228
    .packed-switch 0x1
        :pswitch_7b
        :pswitch_8d
        :pswitch_b0
    .end packed-switch
.end method

.method public getDrmType()I
    .registers 2

    .prologue
    .line 845
    iget v0, p0, Lcom/sec/android/app/music/common/manager/MusicDrmManager;->mDrmType:I

    return v0
.end method

.method public getExpireDate(Ljava/lang/String;)Ljava/lang/String;
    .registers 11
    .parameter "filePath"

    .prologue
    .line 468
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 469
    .local v2, expireDate:Ljava/lang/StringBuffer;
    sget-object v6, Lcom/sec/android/app/music/common/manager/MusicDrmManager;->sDRMInterface:LDigiCAP/LGT/DRM/DRMInterface;

    invoke-virtual {v6, p1, v2}, LDigiCAP/LGT/DRM/DRMInterface;->LDRMGetExpireDate(Ljava/lang/String;Ljava/lang/StringBuffer;)I

    move-result v3

    .line 471
    .local v3, expireError:I
    new-instance v4, Ljava/text/SimpleDateFormat;

    const-string v6, "yyyy-MM-dd\'T\'HH:mm:ss\'Z\'"

    invoke-direct {v4, v6}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 472
    .local v4, sdf:Ljava/text/SimpleDateFormat;
    new-instance v6, Ljava/util/SimpleTimeZone;

    const/4 v7, 0x1

    const-string v8, "Europe/London"

    invoke-direct {v6, v7, v8}, Ljava/util/SimpleTimeZone;-><init>(ILjava/lang/String;)V

    invoke-virtual {v4, v6}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 475
    :try_start_1d
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    .line 476
    .local v1, ed:Ljava/util/Date;
    const-string v6, "9999-99-99T99:99:99Z"

    invoke-virtual {v4, v6}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/util/Date;->compareTo(Ljava/util/Date;)I

    move-result v6

    if-nez v6, :cond_3d

    .line 477
    iget-object v6, p0, Lcom/sec/android/app/music/common/manager/MusicDrmManager;->mContext:Landroid/content/Context;

    const v7, 0x7f0900c9

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 486
    .local v5, time:Ljava/lang/String;
    :goto_3a
    if-nez v3, :cond_4b

    .line 489
    .end local v1           #ed:Ljava/util/Date;
    .end local v5           #time:Ljava/lang/String;
    :goto_3c
    return-object v5

    .line 479
    .restart local v1       #ed:Ljava/util/Date;
    :cond_3d
    invoke-virtual {v1}, Ljava/util/Date;->toLocaleString()Ljava/lang/String;
    :try_end_40
    .catch Ljava/text/ParseException; {:try_start_1d .. :try_end_40} :catch_42

    move-result-object v5

    .restart local v5       #time:Ljava/lang/String;
    goto :goto_3a

    .line 481
    .end local v1           #ed:Ljava/util/Date;
    .end local v5           #time:Ljava/lang/String;
    :catch_42
    move-exception v0

    .line 482
    .local v0, e:Ljava/text/ParseException;
    invoke-virtual {v0}, Ljava/text/ParseException;->printStackTrace()V

    .line 483
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_3c

    .line 489
    .end local v0           #e:Ljava/text/ParseException;
    .restart local v1       #ed:Ljava/util/Date;
    .restart local v5       #time:Ljava/lang/String;
    :cond_4b
    const/4 v5, 0x0

    goto :goto_3c
.end method

.method public getOptionInfo()Lcom/sec/android/app/music/common/manager/MusicDrmManager$MusicDrmOption;
    .registers 9

    .prologue
    const/4 v7, 0x0

    .line 753
    const/4 v0, 0x0

    .line 755
    .local v0, drmInfoOption:Lcom/sec/android/app/music/common/manager/MusicDrmManager$MusicDrmOption;
    new-instance v1, Landroid/drm/DrmInfoRequest;

    const/16 v4, 0x10

    const-string v5, "application/vnd.oma.drm.content"

    invoke-direct {v1, v4, v5}, Landroid/drm/DrmInfoRequest;-><init>(ILjava/lang/String;)V

    .line 757
    .local v1, drmInfoRequest_optionMenu:Landroid/drm/DrmInfoRequest;
    const-string v4, "drm_path"

    iget-object v5, p0, Lcom/sec/android/app/music/common/manager/MusicDrmManager;->mFilePath:Ljava/lang/String;

    invoke-virtual {v1, v4, v5}, Landroid/drm/DrmInfoRequest;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 758
    iget-object v4, p0, Lcom/sec/android/app/music/common/manager/MusicDrmManager;->mDrmClient:Landroid/drm/DrmManagerClient;

    invoke-virtual {v4, v1}, Landroid/drm/DrmManagerClient;->processDrmRequest(Landroid/drm/DrmInfoRequest;)Landroid/drm/DrmInfo;

    move-result-object v2

    .line 759
    .local v2, info:Landroid/drm/DrmInfo;
    new-instance v0, Lcom/sec/android/app/music/common/manager/MusicDrmManager$MusicDrmOption;

    .end local v0           #drmInfoOption:Lcom/sec/android/app/music/common/manager/MusicDrmManager$MusicDrmOption;
    invoke-direct {v0, p0}, Lcom/sec/android/app/music/common/manager/MusicDrmManager$MusicDrmOption;-><init>(Lcom/sec/android/app/music/common/manager/MusicDrmManager;)V

    .line 761
    .restart local v0       #drmInfoOption:Lcom/sec/android/app/music/common/manager/MusicDrmManager$MusicDrmOption;
    if-nez v2, :cond_24

    .line 762
    iput-boolean v7, v0, Lcom/sec/android/app/music/common/manager/MusicDrmManager$MusicDrmOption;->bRingtone:Z

    .line 763
    iput-boolean v7, v0, Lcom/sec/android/app/music/common/manager/MusicDrmManager$MusicDrmOption;->bSendAs:Z

    .line 779
    :goto_23
    return-object v0

    .line 765
    :cond_24
    const-string v4, "status"

    invoke-virtual {v2, v4}, Landroid/drm/DrmInfo;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 766
    .local v3, status_req11:Ljava/lang/String;
    sget-object v4, Lcom/sec/android/app/music/common/manager/MusicDrmManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "status req1: TYPE_GET_OPTION_MENU"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 768
    const-string v4, "fail"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_53

    .line 769
    iput-boolean v7, v0, Lcom/sec/android/app/music/common/manager/MusicDrmManager$MusicDrmOption;->bRingtone:Z

    .line 770
    iput-boolean v7, v0, Lcom/sec/android/app/music/common/manager/MusicDrmManager$MusicDrmOption;->bSendAs:Z

    goto :goto_23

    .line 772
    :cond_53
    const-string v4, "bRingtone"

    invoke-virtual {v2, v4}, Landroid/drm/DrmInfo;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "1"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    iput-boolean v4, v0, Lcom/sec/android/app/music/common/manager/MusicDrmManager$MusicDrmOption;->bRingtone:Z

    .line 773
    const-string v4, "bSendAs"

    invoke-virtual {v2, v4}, Landroid/drm/DrmInfo;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "1"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    iput-boolean v4, v0, Lcom/sec/android/app/music/common/manager/MusicDrmManager$MusicDrmOption;->bSendAs:Z

    goto :goto_23
.end method

.method public getRemainedCounts()I
    .registers 9

    .prologue
    const/4 v7, 0x1

    const/4 v4, -0x1

    .line 878
    iget-object v5, p0, Lcom/sec/android/app/music/common/manager/MusicDrmManager;->mDrmClient:Landroid/drm/DrmManagerClient;

    iget-object v6, p0, Lcom/sec/android/app/music/common/manager/MusicDrmManager;->mFilePath:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Landroid/drm/DrmManagerClient;->getConstraints(Ljava/lang/String;I)Landroid/content/ContentValues;

    move-result-object v2

    .line 879
    .local v2, rightDetails:Landroid/content/ContentValues;
    if-eqz v2, :cond_14

    .line 880
    const-string v5, "license_category"

    invoke-virtual {v2, v5}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 881
    .local v3, tempContent:Ljava/lang/Object;
    if-nez v3, :cond_15

    .line 895
    .end local v3           #tempContent:Ljava/lang/Object;
    :cond_14
    :goto_14
    return v4

    .line 885
    .restart local v3       #tempContent:Ljava/lang/Object;
    :cond_15
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 886
    .local v0, licenseCategory:Ljava/lang/String;
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    if-ne v5, v7, :cond_14

    .line 887
    const-string v5, "remaining_repeat_count"

    invoke-virtual {v2, v5}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 889
    .local v1, remained:Ljava/lang/String;
    sget-object v5, Lcom/sec/android/app/music/common/manager/MusicDrmManager;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getRemainedCounts() : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 890
    if-eqz v1, :cond_14

    .line 891
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    goto :goto_14
.end method

.method public getUrlInfo(Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .parameter "filePath"

    .prologue
    .line 1203
    invoke-static {p1}, Lcom/sec/android/app/music/common/manager/MusicDrmManager;->getDrmMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1204
    .local v1, mimeType:Ljava/lang/String;
    new-instance v2, Landroid/drm/DrmInfoRequest;

    const/4 v4, 0x3

    invoke-direct {v2, v4, v1}, Landroid/drm/DrmInfoRequest;-><init>(ILjava/lang/String;)V

    .line 1206
    .local v2, request:Landroid/drm/DrmInfoRequest;
    const-string v4, "drm_path"

    invoke-virtual {v2, v4, p1}, Landroid/drm/DrmInfoRequest;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1207
    iget-object v4, p0, Lcom/sec/android/app/music/common/manager/MusicDrmManager;->mDrmClient:Landroid/drm/DrmManagerClient;

    invoke-virtual {v4, v2}, Landroid/drm/DrmManagerClient;->acquireDrmInfo(Landroid/drm/DrmInfoRequest;)Landroid/drm/DrmInfo;

    move-result-object v0

    .line 1208
    .local v0, drmInfo:Landroid/drm/DrmInfo;
    const-string v4, "URL"

    invoke-virtual {v0, v4}, Landroid/drm/DrmInfo;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1210
    .local v3, url:Ljava/lang/String;
    return-object v3
.end method

.method public initDrmManager()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 195
    sget-object v0, Lcom/sec/android/app/music/common/manager/MusicDrmManager;->TAG:Ljava/lang/String;

    const-string v1, "initDrmManager()is called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    iput-boolean v2, p0, Lcom/sec/android/app/music/common/manager/MusicDrmManager;->isDrmPopupShown:Z

    .line 197
    iput-boolean v2, p0, Lcom/sec/android/app/music/common/manager/MusicDrmManager;->bInitialed:Z

    .line 198
    iput-object v3, p0, Lcom/sec/android/app/music/common/manager/MusicDrmManager;->mFilePath:Ljava/lang/String;

    .line 199
    iput-object v3, p0, Lcom/sec/android/app/music/common/manager/MusicDrmManager;->mDrmMimeType:Ljava/lang/String;

    .line 200
    iput v2, p0, Lcom/sec/android/app/music/common/manager/MusicDrmManager;->mDrmType:I

    .line 201
    iput v2, p0, Lcom/sec/android/app/music/common/manager/MusicDrmManager;->mLicenseStatus:I

    .line 202
    iput-boolean v2, p0, Lcom/sec/android/app/music/common/manager/MusicDrmManager;->bLGTDrmFile:Z

    .line 203
    iput v2, p0, Lcom/sec/android/app/music/common/manager/MusicDrmManager;->popupType:I

    .line 204
    return-void
.end method

.method public isDrmFile(Ljava/lang/String;)Z
    .registers 9
    .parameter "filePath"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 207
    const/4 v0, 0x0

    .line 208
    .local v0, bDrm:Z
    if-nez p1, :cond_10

    .line 209
    const-string v3, "MusicDrmManager:IsDrmFile() path==null"

    .line 210
    .local v3, msg:Ljava/lang/String;
    sget-object v4, Lcom/sec/android/app/music/common/manager/MusicDrmManager;->TAG:Ljava/lang/String;

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    new-instance v4, Ljava/io/FileNotFoundException;

    invoke-direct {v4, v3}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 215
    .end local v3           #msg:Ljava/lang/String;
    :cond_10
    invoke-virtual {p0}, Lcom/sec/android/app/music/common/manager/MusicDrmManager;->initDrmManager()V

    .line 217
    iput-object p1, p0, Lcom/sec/android/app/music/common/manager/MusicDrmManager;->mFilePath:Ljava/lang/String;

    .line 226
    invoke-static {p1}, Lcom/sec/android/app/music/common/manager/MusicDrmManager;->getDrmMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/sec/android/app/music/common/manager/MusicDrmManager;->mDrmMimeType:Ljava/lang/String;

    .line 228
    iget-object v4, p0, Lcom/sec/android/app/music/common/manager/MusicDrmManager;->mDrmMimeType:Ljava/lang/String;

    if-nez v4, :cond_21

    move v1, v0

    .line 242
    .end local v0           #bDrm:Z
    .local v1, bDrm:I
    :goto_20
    return v1

    .line 231
    .end local v1           #bDrm:I
    .restart local v0       #bDrm:Z
    :cond_21
    iget-object v4, p0, Lcom/sec/android/app/music/common/manager/MusicDrmManager;->mDrmClient:Landroid/drm/DrmManagerClient;

    iget-object v5, p0, Lcom/sec/android/app/music/common/manager/MusicDrmManager;->mDrmMimeType:Ljava/lang/String;

    invoke-virtual {v4, p1, v5}, Landroid/drm/DrmManagerClient;->canHandle(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    .line 232
    .local v2, isDrmSupported:Z
    if-eqz v2, :cond_5b

    .line 233
    const/4 v0, 0x1

    .line 234
    invoke-static {p1}, Lcom/sec/android/app/music/common/manager/MusicDrmManager;->getFileType(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/sec/android/app/music/common/manager/MusicDrmManager;->mDrmType:I

    .line 240
    :goto_32
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/sec/android/app/music/common/manager/MusicDrmManager;->bInitialed:Z

    .line 241
    sget-object v4, Lcom/sec/android/app/music/common/manager/MusicDrmManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isDrmFile():"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ",mDrmType:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/sec/android/app/music/common/manager/MusicDrmManager;->mDrmType:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v0

    .line 242
    .restart local v1       #bDrm:I
    goto :goto_20

    .line 236
    .end local v1           #bDrm:I
    :cond_5b
    const/4 v0, 0x0

    goto :goto_32
.end method

.method public isValidFile()Z
    .registers 5

    .prologue
    .line 258
    const/4 v0, 0x1

    .line 259
    .local v0, bValid:Z
    iget v1, p0, Lcom/sec/android/app/music/common/manager/MusicDrmManager;->mDrmType:I

    if-eqz v1, :cond_19

    .line 261
    iget-object v1, p0, Lcom/sec/android/app/music/common/manager/MusicDrmManager;->mDrmClient:Landroid/drm/DrmManagerClient;

    iget-object v2, p0, Lcom/sec/android/app/music/common/manager/MusicDrmManager;->mFilePath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/drm/DrmManagerClient;->checkRightsStatus(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/music/common/manager/MusicDrmManager;->mLicenseStatus:I

    .line 262
    iget v1, p0, Lcom/sec/android/app/music/common/manager/MusicDrmManager;->mLicenseStatus:I

    packed-switch v1, :pswitch_data_36

    .line 269
    const/4 v0, 0x1

    .line 274
    :goto_15
    iget-boolean v1, p0, Lcom/sec/android/app/music/common/manager/MusicDrmManager;->bLGTDrmFile:Z

    if-eqz v1, :cond_19

    .line 278
    :cond_19
    sget-object v1, Lcom/sec/android/app/music/common/manager/MusicDrmManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isVlidFile():"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/sec/android/app/music/common/manager/MusicDrmManager;->mLicenseStatus:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    return v0

    .line 266
    :pswitch_34
    const/4 v0, 0x0

    .line 267
    goto :goto_15

    .line 262
    :pswitch_data_36
    .packed-switch 0x1
        :pswitch_34
        :pswitch_34
        :pswitch_34
    .end packed-switch
.end method

.method public setDrmPopupShown(Z)V
    .registers 2
    .parameter "bPopup"

    .prologue
    .line 1105
    iput-boolean p1, p0, Lcom/sec/android/app/music/common/manager/MusicDrmManager;->isDrmPopupShown:Z

    .line 1107
    return-void
.end method
