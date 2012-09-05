.class Lcom/google/android/apps/plus/phone/PhotosFromPhoneAdapter$DisplayRow;
.super Ljava/lang/Object;
.source "PhotosFromPhoneAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/plus/phone/PhotosFromPhoneAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DisplayRow"
.end annotation


# instance fields
.field public mDividerCount:I

.field mMediaRefs:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/google/android/apps/plus/api/MediaRef;",
            ">;"
        }
    .end annotation
.end field

.field mPositions:Landroid/util/SparseIntArray;

.field public mType:I


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/apps/plus/phone/PhotosFromPhoneAdapter$DisplayRow;->mDividerCount:I

    .line 58
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/plus/phone/PhotosFromPhoneAdapter$DisplayRow;->mPositions:Landroid/util/SparseIntArray;

    .line 59
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/plus/phone/PhotosFromPhoneAdapter$DisplayRow;->mMediaRefs:Landroid/util/SparseArray;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/apps/plus/phone/PhotosFromPhoneAdapter$1;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/google/android/apps/plus/phone/PhotosFromPhoneAdapter$DisplayRow;-><init>()V

    return-void
.end method
