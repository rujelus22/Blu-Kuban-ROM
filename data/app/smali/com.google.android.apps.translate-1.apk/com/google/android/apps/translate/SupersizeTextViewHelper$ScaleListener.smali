.class Lcom/google/android/apps/translate/SupersizeTextViewHelper$ScaleListener;
.super Lcom/google/android/apps/translate/ScaleGestureDetector$SimpleOnScaleGestureListener;
.source "SupersizeTextViewHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/translate/SupersizeTextViewHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ScaleListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/translate/SupersizeTextViewHelper;


# direct methods
.method private constructor <init>(Lcom/google/android/apps/translate/SupersizeTextViewHelper;)V
    .registers 2
    .parameter

    .prologue
    .line 256
    iput-object p1, p0, Lcom/google/android/apps/translate/SupersizeTextViewHelper$ScaleListener;->this$0:Lcom/google/android/apps/translate/SupersizeTextViewHelper;

    invoke-direct {p0}, Lcom/google/android/apps/translate/ScaleGestureDetector$SimpleOnScaleGestureListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/apps/translate/SupersizeTextViewHelper;Lcom/google/android/apps/translate/SupersizeTextViewHelper$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 256
    invoke-direct {p0, p1}, Lcom/google/android/apps/translate/SupersizeTextViewHelper$ScaleListener;-><init>(Lcom/google/android/apps/translate/SupersizeTextViewHelper;)V

    return-void
.end method


# virtual methods
.method public onScale(Lcom/google/android/apps/translate/ScaleGestureDetector;)Z
    .registers 4
    .parameter "detector"

    .prologue
    .line 259
    iget-object v0, p0, Lcom/google/android/apps/translate/SupersizeTextViewHelper$ScaleListener;->this$0:Lcom/google/android/apps/translate/SupersizeTextViewHelper;

    invoke-virtual {p1}, Lcom/google/android/apps/translate/ScaleGestureDetector;->getScaleFactor()F

    move-result v1

    #calls: Lcom/google/android/apps/translate/SupersizeTextViewHelper;->zoomSupersizeText(F)V
    invoke-static {v0, v1}, Lcom/google/android/apps/translate/SupersizeTextViewHelper;->access$200(Lcom/google/android/apps/translate/SupersizeTextViewHelper;F)V

    .line 260
    const/4 v0, 0x1

    return v0
.end method
