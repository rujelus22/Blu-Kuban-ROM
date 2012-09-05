.class public Lcom/sec/android/app/myfiles/drm/DrmUtils$DrmRightInfo;
.super Ljava/lang/Object;
.source "DrmUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/myfiles/drm/DrmUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DrmRightInfo"
.end annotation


# instance fields
.field public permissionType:I

.field public typeStr:Ljava/lang/String;

.field public validityStr:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 197
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 193
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/app/myfiles/drm/DrmUtils$DrmRightInfo;->permissionType:I

    .line 194
    iput-object v1, p0, Lcom/sec/android/app/myfiles/drm/DrmUtils$DrmRightInfo;->typeStr:Ljava/lang/String;

    .line 195
    iput-object v1, p0, Lcom/sec/android/app/myfiles/drm/DrmUtils$DrmRightInfo;->validityStr:[Ljava/lang/String;

    .line 199
    return-void
.end method
