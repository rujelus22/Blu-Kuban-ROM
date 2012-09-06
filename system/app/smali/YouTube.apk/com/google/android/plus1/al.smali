.class public final Lcom/google/android/plus1/al;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 16
    const/4 v0, 0x0

    sput-boolean v0, Lcom/google/android/plus1/al;->a:Z

    return-void
.end method

.method public static a(Ljava/lang/String;I)Z
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 27
    sget-boolean v0, Lcom/google/android/plus1/al;->a:Z

    if-nez v0, :cond_7

    const/4 v0, 0x6

    if-ne p1, v0, :cond_f

    :cond_7
    invoke-static {p0, p1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_f

    const/4 v0, 0x1

    :goto_e
    return v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method
