.class Lcom/google/android/plus1/BasePlusOneButton$L;
.super Ljava/lang/Object;
.source "BasePlusOneButton.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/plus1/BasePlusOneButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "L"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 554
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static d(Ljava/lang/String;)V
    .registers 3
    .parameter "message"

    .prologue
    .line 559
    const-string v0, "PlusOneButton"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 560
    const-string v0, "PlusOneButton"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 562
    :cond_e
    return-void
.end method

.method public static e(Ljava/lang/String;)V
    .registers 2
    .parameter "message"

    .prologue
    .line 575
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/google/android/plus1/BasePlusOneButton$L;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 576
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 4
    .parameter "message"
    .parameter "throwable"

    .prologue
    .line 579
    const-string v0, "PlusOneButton"

    const/4 v1, 0x6

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 580
    const-string v0, "PlusOneButton"

    invoke-static {v0, p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 582
    :cond_e
    return-void
.end method

.method public static i(Ljava/lang/String;)V
    .registers 2
    .parameter "message"

    .prologue
    .line 565
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/google/android/plus1/BasePlusOneButton$L;->i(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 566
    return-void
.end method

.method public static i(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 4
    .parameter "message"
    .parameter "throwable"

    .prologue
    .line 569
    const-string v0, "PlusOneButton"

    const/4 v1, 0x4

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 570
    const-string v0, "PlusOneButton"

    invoke-static {v0, p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 572
    :cond_e
    return-void
.end method