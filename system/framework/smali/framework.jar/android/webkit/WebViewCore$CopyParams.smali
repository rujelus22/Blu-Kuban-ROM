.class Landroid/webkit/WebViewCore$CopyParams;
.super Ljava/lang/Object;
.source "WebViewCore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkit/WebViewCore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "CopyParams"
.end annotation


# instance fields
.field mContentX:I

.field mContentY:I

.field mController:I

.field mGranularity:I

.field mSelectionMove:Z

.field mSmartSelection:Z

.field mZoomScale:F


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 975
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
