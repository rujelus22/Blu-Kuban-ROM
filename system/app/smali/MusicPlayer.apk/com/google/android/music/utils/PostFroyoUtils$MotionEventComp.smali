.class public Lcom/google/android/music/utils/PostFroyoUtils$MotionEventComp;
.super Ljava/lang/Object;
.source "PostFroyoUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/music/utils/PostFroyoUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MotionEventComp"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 139
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getSource(Landroid/view/MotionEvent;)I
    .registers 5
    .parameter

    .prologue
    .line 157
    const/4 v1, 0x0

    .line 160
    :try_start_1
    const-class v2, Landroid/view/MotionEvent;

    const-string v3, "getSource"

    const/4 v0, 0x0

    check-cast v0, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 162
    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getGenericReturnType()Ljava/lang/reflect/Type;

    move-result-object v0

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-eq v0, v3, :cond_1e

    .line 163
    const-string v0, "PostFroyoUtils"

    const-string v2, "Unexpected result type of MotionEvent.getSource"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    :goto_1c
    move v1, v0

    .line 174
    :goto_1d
    return v1

    .line 165
    :cond_1e
    const/4 v0, 0x0

    check-cast v0, [Ljava/lang/Object;

    invoke-virtual {v2, p0, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 166
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_2a
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_2a} :catch_35
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_2a} :catch_2c

    move-result v0

    goto :goto_1c

    .line 170
    :catch_2c
    move-exception v0

    .line 171
    const-string v2, "PostFroyoUtils"

    const-string v3, "Unexpected exception when invoking MotionEvent.getSource via reflection"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1d

    .line 168
    :catch_35
    move-exception v0

    goto :goto_1d
.end method
