.class Lcom/swype/android/widget/InputWindow$DrawBuffer;
.super Ljava/lang/Object;
.source "InputWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/swype/android/widget/InputWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DrawBuffer"
.end annotation


# instance fields
.field public bitmap:Landroid/graphics/Bitmap;

.field public canvas:Landroid/graphics/Canvas;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object v0, p0, Lcom/swype/android/widget/InputWindow$DrawBuffer;->canvas:Landroid/graphics/Canvas;

    .line 56
    iput-object v0, p0, Lcom/swype/android/widget/InputWindow$DrawBuffer;->bitmap:Landroid/graphics/Bitmap;

    .line 57
    return-void
.end method
