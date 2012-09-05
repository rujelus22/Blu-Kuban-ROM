.class public Lcom/arcsoft/android/camera/utils/MFaceResult;
.super Ljava/lang/Object;
.source "MFaceResult.java"


# instance fields
.field public face:[Landroid/graphics/Rect;

.field public facenumber:I

.field public feature:[Landroid/graphics/Rect;

.field public featurenumber:I

.field public flags:[I


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 40
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput v1, p0, Lcom/arcsoft/android/camera/utils/MFaceResult;->facenumber:I

    .line 42
    iput v1, p0, Lcom/arcsoft/android/camera/utils/MFaceResult;->featurenumber:I

    .line 43
    iput-object v0, p0, Lcom/arcsoft/android/camera/utils/MFaceResult;->face:[Landroid/graphics/Rect;

    .line 44
    iput-object v0, p0, Lcom/arcsoft/android/camera/utils/MFaceResult;->feature:[Landroid/graphics/Rect;

    .line 45
    iput-object v0, p0, Lcom/arcsoft/android/camera/utils/MFaceResult;->flags:[I

    .line 46
    return-void
.end method
