.class Lcom/google/android/apps/plus/views/PhotoGridItemView$DrawableInfo;
.super Ljava/lang/Object;
.source "PhotoGridItemView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/plus/views/PhotoGridItemView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DrawableInfo"
.end annotation


# instance fields
.field public mDrawable:Landroid/graphics/drawable/Drawable;

.field public mDrawn:Ljava/lang/Boolean;

.field public mLoadingDrawable:Ljava/lang/Boolean;


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/apps/plus/views/PhotoGridItemView$1;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 79
    invoke-direct {p0}, Lcom/google/android/apps/plus/views/PhotoGridItemView$DrawableInfo;-><init>()V

    return-void
.end method
