.class public Lcom/google/android/apps/unveil/textinput/SmudgeView$Smudge;
.super Ljava/lang/Object;
.source "SmudgeView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/unveil/textinput/SmudgeView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Smudge"
.end annotation


# static fields
.field public static final ALL:Lcom/google/android/apps/unveil/textinput/SmudgeView$Smudge;

.field public static final NONE:Lcom/google/android/apps/unveil/textinput/SmudgeView$Smudge;


# instance fields
.field public final isMultipass:Z

.field public final mask:Lcom/google/android/apps/unveil/env/Picture;

.field public final oneLineSelection:Z

.field public final points:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/graphics/Point;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 93
    new-instance v0, Lcom/google/android/apps/unveil/textinput/SmudgeView$Smudge;

    invoke-direct {v0, v2, v1, v1, v2}, Lcom/google/android/apps/unveil/textinput/SmudgeView$Smudge;-><init>(Lcom/google/android/apps/unveil/env/Picture;ZZLjava/util/List;)V

    sput-object v0, Lcom/google/android/apps/unveil/textinput/SmudgeView$Smudge;->ALL:Lcom/google/android/apps/unveil/textinput/SmudgeView$Smudge;

    .line 94
    new-instance v0, Lcom/google/android/apps/unveil/textinput/SmudgeView$Smudge;

    invoke-direct {v0, v2, v1, v1, v2}, Lcom/google/android/apps/unveil/textinput/SmudgeView$Smudge;-><init>(Lcom/google/android/apps/unveil/env/Picture;ZZLjava/util/List;)V

    sput-object v0, Lcom/google/android/apps/unveil/textinput/SmudgeView$Smudge;->NONE:Lcom/google/android/apps/unveil/textinput/SmudgeView$Smudge;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/apps/unveil/env/Picture;ZZLjava/util/List;)V
    .registers 5
    .parameter "mask"
    .parameter "oneLineSelection"
    .parameter "isMultipass"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/apps/unveil/env/Picture;",
            "ZZ",
            "Ljava/util/List",
            "<",
            "Landroid/graphics/Point;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 113
    .local p4, points:Ljava/util/List;,"Ljava/util/List<Landroid/graphics/Point;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 114
    iput-object p1, p0, Lcom/google/android/apps/unveil/textinput/SmudgeView$Smudge;->mask:Lcom/google/android/apps/unveil/env/Picture;

    .line 115
    iput-boolean p2, p0, Lcom/google/android/apps/unveil/textinput/SmudgeView$Smudge;->oneLineSelection:Z

    .line 116
    iput-boolean p3, p0, Lcom/google/android/apps/unveil/textinput/SmudgeView$Smudge;->isMultipass:Z

    .line 117
    iput-object p4, p0, Lcom/google/android/apps/unveil/textinput/SmudgeView$Smudge;->points:Ljava/util/List;

    .line 118
    return-void
.end method


# virtual methods
.method public isHighlighted(II)Z
    .registers 5
    .parameter "centerX"
    .parameter "centerY"

    .prologue
    .line 122
    iget-object v1, p0, Lcom/google/android/apps/unveil/textinput/SmudgeView$Smudge;->mask:Lcom/google/android/apps/unveil/env/Picture;

    invoke-virtual {v1}, Lcom/google/android/apps/unveil/env/Picture;->getSize()Lcom/google/android/apps/unveil/env/Size;

    move-result-object v0

    .line 123
    .local v0, size:Lcom/google/android/apps/unveil/env/Size;
    if-lez p1, :cond_24

    iget v1, v0, Lcom/google/android/apps/unveil/env/Size;->width:I

    if-ge p1, v1, :cond_24

    if-lez p2, :cond_24

    iget v1, v0, Lcom/google/android/apps/unveil/env/Size;->height:I

    if-ge p2, v1, :cond_24

    iget-object v1, p0, Lcom/google/android/apps/unveil/textinput/SmudgeView$Smudge;->mask:Lcom/google/android/apps/unveil/env/Picture;

    invoke-virtual {v1}, Lcom/google/android/apps/unveil/env/Picture;->peekBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v1

    invoke-static {v1}, Landroid/graphics/Color;->alpha(I)I

    move-result v1

    if-lez v1, :cond_24

    const/4 v1, 0x1

    :goto_23
    return v1

    :cond_24
    const/4 v1, 0x0

    goto :goto_23
.end method
