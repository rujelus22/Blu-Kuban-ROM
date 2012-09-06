.class Lcom/google/android/apps/translate/SupersizeTextViewHelper$TextLayoutInfo;
.super Ljava/lang/Object;
.source "SupersizeTextViewHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/translate/SupersizeTextViewHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TextLayoutInfo"
.end annotation


# instance fields
.field fontSize:I

.field requiredHeight:I

.field requiredLines:I


# direct methods
.method public constructor <init>(III)V
    .registers 4
    .parameter "height"
    .parameter "lines"
    .parameter "fontSize"

    .prologue
    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    iput p1, p0, Lcom/google/android/apps/translate/SupersizeTextViewHelper$TextLayoutInfo;->requiredHeight:I

    .line 94
    iput p2, p0, Lcom/google/android/apps/translate/SupersizeTextViewHelper$TextLayoutInfo;->requiredLines:I

    .line 95
    iput p3, p0, Lcom/google/android/apps/translate/SupersizeTextViewHelper$TextLayoutInfo;->fontSize:I

    .line 96
    return-void
.end method
