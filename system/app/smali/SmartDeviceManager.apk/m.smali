.class public final Lm;
.super Ljava/lang/Object;
.source "a"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/Integer;Ljava/lang/Integer;)Z
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 6
    if-nez p0, :cond_8

    .line 7
    if-nez p1, :cond_6

    const/4 v0, 0x1

    .line 9
    :goto_5
    return v0

    .line 7
    :cond_6
    const/4 v0, 0x0

    goto :goto_5

    .line 9
    :cond_8
    invoke-virtual {p0, p1}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_5
.end method
