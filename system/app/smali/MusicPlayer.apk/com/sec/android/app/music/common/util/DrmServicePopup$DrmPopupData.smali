.class public Lcom/sec/android/app/music/common/util/DrmServicePopup$DrmPopupData;
.super Ljava/lang/Object;
.source "DrmServicePopup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/music/common/util/DrmServicePopup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DrmPopupData"
.end annotation


# instance fields
.field public keyWord:Ljava/lang/String;

.field public list:[J

.field public popupFilePath:Ljava/lang/String;

.field public popupFrom:I

.field public popupRedirectUrl:Landroid/net/Uri;

.field public popupStrings:[I

.field public popupType:I

.field public position:I

.field public remainCount:I

.field public tabId:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, -0x1

    .line 404
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 407
    iput v0, p0, Lcom/sec/android/app/music/common/util/DrmServicePopup$DrmPopupData;->remainCount:I

    .line 409
    iput v0, p0, Lcom/sec/android/app/music/common/util/DrmServicePopup$DrmPopupData;->popupType:I

    .line 413
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/music/common/util/DrmServicePopup$DrmPopupData;->popupFrom:I

    return-void
.end method
