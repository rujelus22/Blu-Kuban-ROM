.class public Lcom/android/inputmethod/keyboard/Key$Spacer;
.super Lcom/android/inputmethod/keyboard/Key;
.source "Key.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/inputmethod/keyboard/Key;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Spacer"
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;Lcom/android/inputmethod/keyboard/internal/KeyboardParams;Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder$Row;Lorg/xmlpull/v1/XmlPullParser;Lcom/android/inputmethod/keyboard/internal/KeyStyles;)V
    .registers 6
    .parameter "res"
    .parameter "params"
    .parameter
    .parameter "parser"
    .parameter "keyStyles"

    .prologue
    .line 541
    .local p3, row:Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder$Row;,"Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder$Row;"
    invoke-direct/range {p0 .. p5}, Lcom/android/inputmethod/keyboard/Key;-><init>(Landroid/content/res/Resources;Lcom/android/inputmethod/keyboard/internal/KeyboardParams;Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder$Row;Lorg/xmlpull/v1/XmlPullParser;Lcom/android/inputmethod/keyboard/internal/KeyStyles;)V

    .line 542
    return-void
.end method

.method public constructor <init>(Lcom/android/inputmethod/keyboard/internal/KeyboardParams;Landroid/graphics/drawable/Drawable;IIII)V
    .registers 18
    .parameter "params"
    .parameter "icon"
    .parameter "x"
    .parameter "y"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 548
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    move v7, p3

    move v8, p4

    move/from16 v9, p5

    move/from16 v10, p6

    invoke-direct/range {v0 .. v10}, Lcom/android/inputmethod/keyboard/Key;-><init>(Lcom/android/inputmethod/keyboard/internal/KeyboardParams;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;ILjava/lang/CharSequence;IIII)V

    .line 549
    return-void
.end method


# virtual methods
.method public isSpacer()Z
    .registers 2

    .prologue
    .line 553
    const/4 v0, 0x1

    return v0
.end method
