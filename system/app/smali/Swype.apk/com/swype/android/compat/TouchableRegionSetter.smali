.class public Lcom/swype/android/compat/TouchableRegionSetter;
.super Ljava/lang/Object;
.source "TouchableRegionSetter.java"


# static fields
.field private static final Insets_touchableRegion:Ljava/lang/reflect/Field;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 24
    :try_start_0
    const-class v0, Landroid/inputmethodservice/InputMethodService$Insets;

    const-string v1, "touchableRegion"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;
    :try_end_7
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_7} :catch_b

    move-result-object v0

    .line 30
    :goto_8
    sput-object v0, Lcom/swype/android/compat/TouchableRegionSetter;->Insets_touchableRegion:Ljava/lang/reflect/Field;

    .line 31
    return-void

    .line 28
    :catch_b
    move-exception v0

    const/4 v0, 0x0

    goto :goto_8
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    return-void
.end method

.method private static getTouchableRegion(Landroid/inputmethodservice/InputMethodService$Insets;)Landroid/graphics/Region;
    .registers 5
    .parameter "insets"

    .prologue
    .line 39
    :try_start_0
    sget-object v1, Lcom/swype/android/compat/TouchableRegionSetter;->Insets_touchableRegion:Ljava/lang/reflect/Field;

    invoke-virtual {v1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/graphics/Region;
    :try_end_8
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_8} :catch_a

    move-object v1, p0

    .line 42
    :goto_9
    return-object v1

    .line 40
    :catch_a
    move-exception v1

    move-object v0, v1

    .line 41
    .local v0, iae:Ljava/lang/IllegalAccessException;
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unexpected "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 42
    const/4 v1, 0x0

    goto :goto_9
.end method

.method public static setTouchableRegion(Landroid/inputmethodservice/InputMethodService$Insets;Landroid/graphics/Rect;)Z
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 56
    sget-object v0, Lcom/swype/android/compat/TouchableRegionSetter;->Insets_touchableRegion:Ljava/lang/reflect/Field;

    if-eqz v0, :cond_12

    .line 57
    invoke-static {p0}, Lcom/swype/android/compat/TouchableRegionSetter;->getTouchableRegion(Landroid/inputmethodservice/InputMethodService$Insets;)Landroid/graphics/Region;

    move-result-object v0

    .line 58
    if-eqz v0, :cond_12

    .line 59
    invoke-virtual {v0, p1}, Landroid/graphics/Region;->set(Landroid/graphics/Rect;)Z

    .line 60
    const/4 v0, 0x3

    iput v0, p0, Landroid/inputmethodservice/InputMethodService$Insets;->touchableInsets:I

    .line 61
    const/4 v0, 0x1

    .line 65
    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method
