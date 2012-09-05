.class Landroid/webkit/WebViewCore$ImageSelectionCopiedData;
.super Ljava/lang/Object;
.source "WebViewCore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkit/WebViewCore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ImageSelectionCopiedData"
.end annotation


# instance fields
.field handlesPath:Landroid/graphics/Path;

.field imageRect:Landroid/graphics/Rect;

.field mGranularity:I

.field outLinePath:Landroid/graphics/Path;


# direct methods
.method constructor <init>()V
    .registers 2

    .prologue
    .line 1005
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1006
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/webkit/WebViewCore$ImageSelectionCopiedData;->imageRect:Landroid/graphics/Rect;

    .line 1008
    return-void
.end method
