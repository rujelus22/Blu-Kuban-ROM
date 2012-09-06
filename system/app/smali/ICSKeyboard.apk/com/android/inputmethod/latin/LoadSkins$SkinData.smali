.class public Lcom/android/inputmethod/latin/LoadSkins$SkinData;
.super Ljava/lang/Object;
.source "LoadSkins.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/inputmethod/latin/LoadSkins;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SkinData"
.end annotation


# instance fields
.field public btn_keyboard_key:Landroid/graphics/drawable/Drawable;

.field public btn_keyboard_key_alt:Landroid/graphics/drawable/Drawable;

.field public keyboard_background:Landroid/graphics/drawable/Drawable;

.field public keyboard_key_feedback:Landroid/graphics/drawable/Drawable;

.field public shadow_color:I

.field public shadow_color2:I

.field public text_color:I

.field public text_color2:I


# direct methods
.method constructor <init>()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    const/4 v0, 0x0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object v0, p0, Lcom/android/inputmethod/latin/LoadSkins$SkinData;->btn_keyboard_key:Landroid/graphics/drawable/Drawable;

    .line 29
    iput-object v0, p0, Lcom/android/inputmethod/latin/LoadSkins$SkinData;->btn_keyboard_key_alt:Landroid/graphics/drawable/Drawable;

    .line 30
    iput-object v0, p0, Lcom/android/inputmethod/latin/LoadSkins$SkinData;->keyboard_key_feedback:Landroid/graphics/drawable/Drawable;

    .line 31
    iput-object v0, p0, Lcom/android/inputmethod/latin/LoadSkins$SkinData;->keyboard_background:Landroid/graphics/drawable/Drawable;

    .line 32
    iput v1, p0, Lcom/android/inputmethod/latin/LoadSkins$SkinData;->shadow_color2:I

    .line 33
    iput v2, p0, Lcom/android/inputmethod/latin/LoadSkins$SkinData;->text_color2:I

    .line 34
    iput v1, p0, Lcom/android/inputmethod/latin/LoadSkins$SkinData;->shadow_color:I

    .line 35
    iput v2, p0, Lcom/android/inputmethod/latin/LoadSkins$SkinData;->text_color:I

    .line 36
    return-void
.end method
