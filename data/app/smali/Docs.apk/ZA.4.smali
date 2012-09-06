.class public final LZA;
.super Ljava/lang/Object;
.source "Log.java"


# static fields
.field private static a:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 61
    const/4 v0, 0x0

    sput v0, LZA;->a:I

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)I
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 121
    const/4 v0, 0x2

    invoke-static {p0, v0}, LZA;->b(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 122
    invoke-static {p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 124
    :goto_b
    return v0

    :cond_c
    const/4 v0, -0x1

    goto :goto_b
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 162
    const/4 v0, 0x3

    invoke-static {p0, v0}, LZA;->b(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 163
    invoke-static {p0, p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v0

    .line 165
    :goto_b
    return v0

    :cond_c
    const/4 v0, -0x1

    goto :goto_b
.end method

.method public static a(Ljava/lang/String;Ljava/lang/Throwable;)I
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 229
    const/4 v0, 0x5

    invoke-static {p0, v0}, LZA;->b(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 230
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v0

    .line 232
    :goto_b
    return v0

    :cond_c
    const/4 v0, -0x1

    goto :goto_b
.end method

.method public static a(Ljava/lang/Throwable;)Ljava/lang/String;
    .registers 2
    .parameter

    .prologue
    .line 99
    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(I)V
    .registers 1
    .parameter

    .prologue
    .line 69
    sput p0, LZA;->a:I

    .line 70
    return-void
.end method

.method public static a(Ljava/lang/String;I)Z
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 91
    invoke-static {p0, p1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;)I
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 148
    const/4 v0, 0x3

    invoke-static {p0, v0}, LZA;->b(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 149
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 151
    :goto_b
    return v0

    :cond_c
    const/4 v0, -0x1

    goto :goto_b
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 189
    const/4 v0, 0x4

    invoke-static {p0, v0}, LZA;->b(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 190
    invoke-static {p0, p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v0

    .line 192
    :goto_b
    return v0

    :cond_c
    const/4 v0, -0x1

    goto :goto_b
.end method

.method private static b(Ljava/lang/String;I)Z
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 267
    sget v0, LZA;->a:I

    if-lt p1, v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public static c(Ljava/lang/String;Ljava/lang/String;)I
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 175
    const/4 v0, 0x4

    invoke-static {p0, v0}, LZA;->b(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 176
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 178
    :goto_b
    return v0

    :cond_c
    const/4 v0, -0x1

    goto :goto_b
.end method

.method public static c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 216
    const/4 v0, 0x5

    invoke-static {p0, v0}, LZA;->b(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 217
    invoke-static {p0, p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v0

    .line 219
    :goto_b
    return v0

    :cond_c
    const/4 v0, -0x1

    goto :goto_b
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)I
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 202
    const/4 v0, 0x5

    invoke-static {p0, v0}, LZA;->b(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 203
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 205
    :goto_b
    return v0

    :cond_c
    const/4 v0, -0x1

    goto :goto_b
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 256
    const/4 v0, 0x6

    invoke-static {p0, v0}, LZA;->b(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 257
    invoke-static {p0, p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v0

    .line 259
    :goto_b
    return v0

    :cond_c
    const/4 v0, -0x1

    goto :goto_b
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;)I
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 242
    const/4 v0, 0x6

    invoke-static {p0, v0}, LZA;->b(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 243
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 245
    :goto_b
    return v0

    :cond_c
    const/4 v0, -0x1

    goto :goto_b
.end method
