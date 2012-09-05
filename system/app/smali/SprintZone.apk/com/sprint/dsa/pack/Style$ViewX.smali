.class Lcom/sprint/dsa/pack/Style$ViewX;
.super Landroid/view/View;
.source "Style.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sprint/dsa/pack/Style;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ViewX"
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .parameter "context"

    .prologue
    .line 227
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 228
    return-void
.end method

.method public static createColorSet(III)[I
    .registers 6
    .parameter "pressedColor"
    .parameter "selectedColor"
    .parameter "focusedColor"

    .prologue
    const/4 v2, 0x0

    .line 254
    const/4 v1, 0x5

    new-array v0, v1, [I

    .line 256
    .local v0, colorSets:[I
    aput p0, v0, v2

    .line 257
    const/4 v1, 0x1

    aput p0, v0, v1

    .line 259
    const/4 v1, 0x2

    aput p1, v0, v1

    .line 261
    const/4 v1, 0x3

    aput p2, v0, v1

    .line 263
    const/4 v1, 0x4

    aput v2, v0, v1

    .line 265
    return-object v0
.end method

.method public static createStateSets(III)[[I
    .registers 6
    .parameter "pressedColor"
    .parameter "selectedColor"
    .parameter "focusedColor"

    .prologue
    .line 269
    const/4 v1, 0x5

    new-array v0, v1, [[I

    .line 271
    .local v0, stateSets:[[I
    const/4 v1, 0x0

    sget-object v2, Landroid/view/View;->PRESSED_ENABLED_STATE_SET:[I

    aput-object v2, v0, v1

    .line 272
    const/4 v1, 0x1

    sget-object v2, Landroid/view/View;->PRESSED_FOCUSED_STATE_SET:[I

    aput-object v2, v0, v1

    .line 274
    const/4 v1, 0x2

    sget-object v2, Landroid/view/View;->SELECTED_STATE_SET:[I

    aput-object v2, v0, v1

    .line 276
    const/4 v1, 0x3

    sget-object v2, Landroid/view/View;->FOCUSED_STATE_SET:[I

    aput-object v2, v0, v1

    .line 278
    const/4 v1, 0x4

    sget-object v2, Landroid/view/View;->EMPTY_STATE_SET:[I

    aput-object v2, v0, v1

    .line 280
    return-object v0
.end method
