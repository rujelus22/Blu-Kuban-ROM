.class public Lcom/google/android/apps/translate/Logger;
.super Ljava/lang/Object;
.source "Logger.java"


# static fields
.field public static final DEBUG:I = 0x8

.field private static final DEBUG_ALL:Z = false

.field public static final ERROR:I = 0x1

.field public static final INFO:I = 0x4

.field public static final NONE:I = 0x0

.field public static final T:Z = false

.field public static final V:Z = false

.field public static final VERBOSE:I = 0x10

.field public static final WARNING:I = 0x2

.field private static sLastTimes:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private static sLevel:I

.field private static sTag:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 26
    const/4 v0, 0x1

    sput v0, Lcom/google/android/apps/translate/Logger;->sLevel:I

    .line 27
    const-string v0, "Logger"

    sput-object v0, Lcom/google/android/apps/translate/Logger;->sTag:Ljava/lang/String;

    .line 33
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static d(Ljava/lang/Object;Ljava/lang/String;)V
    .registers 3
    .parameter "obj"
    .parameter "msg"

    .prologue
    .line 97
    sget v0, Lcom/google/android/apps/translate/Logger;->sLevel:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_11

    .line 98
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    :cond_11
    return-void
.end method

.method public static d(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 4
    .parameter "obj"
    .parameter "msg"
    .parameter "cause"

    .prologue
    .line 127
    sget v0, Lcom/google/android/apps/translate/Logger;->sLevel:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_11

    .line 128
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 130
    :cond_11
    return-void
.end method

.method public static d(Ljava/lang/String;)V
    .registers 2
    .parameter "msg"

    .prologue
    .line 155
    sget v0, Lcom/google/android/apps/translate/Logger;->sLevel:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_b

    sget-object v0, Lcom/google/android/apps/translate/Logger;->sTag:Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    :cond_b
    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .parameter "tag"
    .parameter "msg"

    .prologue
    .line 75
    sget v0, Lcom/google/android/apps/translate/Logger;->sLevel:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_9

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    :cond_9
    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 4
    .parameter "tag"
    .parameter "msg"
    .parameter "cause"

    .prologue
    .line 175
    sget v0, Lcom/google/android/apps/translate/Logger;->sLevel:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_9

    invoke-static {p0, p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 176
    :cond_9
    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 3
    .parameter "msg"
    .parameter "cause"

    .prologue
    .line 195
    sget v0, Lcom/google/android/apps/translate/Logger;->sLevel:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_b

    sget-object v0, Lcom/google/android/apps/translate/Logger;->sTag:Ljava/lang/String;

    invoke-static {v0, p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 196
    :cond_b
    return-void
.end method

.method public static e(Ljava/lang/Object;Ljava/lang/String;)V
    .registers 3
    .parameter "obj"
    .parameter "msg"

    .prologue
    .line 115
    sget v0, Lcom/google/android/apps/translate/Logger;->sLevel:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_11

    .line 116
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    :cond_11
    return-void
.end method

.method public static e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 4
    .parameter "obj"
    .parameter "msg"
    .parameter "cause"

    .prologue
    .line 145
    sget v0, Lcom/google/android/apps/translate/Logger;->sLevel:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_11

    .line 146
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 148
    :cond_11
    return-void
.end method

.method public static e(Ljava/lang/String;)V
    .registers 2
    .parameter "msg"

    .prologue
    .line 167
    sget v0, Lcom/google/android/apps/translate/Logger;->sLevel:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_b

    sget-object v0, Lcom/google/android/apps/translate/Logger;->sTag:Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    :cond_b
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .parameter "tag"
    .parameter "msg"

    .prologue
    .line 87
    sget v0, Lcom/google/android/apps/translate/Logger;->sLevel:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_9

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    :cond_9
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 4
    .parameter "tag"
    .parameter "msg"
    .parameter "cause"

    .prologue
    .line 187
    sget v0, Lcom/google/android/apps/translate/Logger;->sLevel:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_9

    invoke-static {p0, p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 188
    :cond_9
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 3
    .parameter "msg"
    .parameter "cause"

    .prologue
    .line 207
    sget v0, Lcom/google/android/apps/translate/Logger;->sLevel:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_b

    sget-object v0, Lcom/google/android/apps/translate/Logger;->sTag:Ljava/lang/String;

    invoke-static {v0, p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 208
    :cond_b
    return-void
.end method

.method public static i(Ljava/lang/Object;Ljava/lang/String;)V
    .registers 3
    .parameter "obj"
    .parameter "msg"

    .prologue
    .line 103
    sget v0, Lcom/google/android/apps/translate/Logger;->sLevel:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_11

    .line 104
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    :cond_11
    return-void
.end method

.method public static i(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 4
    .parameter "obj"
    .parameter "msg"
    .parameter "cause"

    .prologue
    .line 133
    sget v0, Lcom/google/android/apps/translate/Logger;->sLevel:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_11

    .line 134
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 136
    :cond_11
    return-void
.end method

.method public static i(Ljava/lang/String;)V
    .registers 2
    .parameter "msg"

    .prologue
    .line 159
    sget v0, Lcom/google/android/apps/translate/Logger;->sLevel:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_b

    sget-object v0, Lcom/google/android/apps/translate/Logger;->sTag:Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    :cond_b
    return-void
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .parameter "tag"
    .parameter "msg"

    .prologue
    .line 79
    sget v0, Lcom/google/android/apps/translate/Logger;->sLevel:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_9

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    :cond_9
    return-void
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 4
    .parameter "tag"
    .parameter "msg"
    .parameter "cause"

    .prologue
    .line 179
    sget v0, Lcom/google/android/apps/translate/Logger;->sLevel:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_9

    invoke-static {p0, p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 180
    :cond_9
    return-void
.end method

.method public static i(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 3
    .parameter "msg"
    .parameter "cause"

    .prologue
    .line 199
    sget v0, Lcom/google/android/apps/translate/Logger;->sLevel:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_b

    sget-object v0, Lcom/google/android/apps/translate/Logger;->sTag:Ljava/lang/String;

    invoke-static {v0, p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 200
    :cond_b
    return-void
.end method

.method public static isDebug()Z
    .registers 1

    .prologue
    .line 211
    sget v0, Lcom/google/android/apps/translate/Logger;->sLevel:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public static isError()Z
    .registers 1

    .prologue
    .line 223
    sget v0, Lcom/google/android/apps/translate/Logger;->sLevel:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public static isInfo()Z
    .registers 1

    .prologue
    .line 215
    sget v0, Lcom/google/android/apps/translate/Logger;->sLevel:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public static isWarning()Z
    .registers 1

    .prologue
    .line 219
    sget v0, Lcom/google/android/apps/translate/Logger;->sLevel:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public static setLogLevel(I)V
    .registers 2
    .parameter "level"

    .prologue
    .line 44
    const/4 v0, 0x0

    sput v0, Lcom/google/android/apps/translate/Logger;->sLevel:I

    .line 49
    sparse-switch p0, :sswitch_data_26

    .line 61
    :goto_6
    return-void

    .line 51
    :sswitch_7
    sget v0, Lcom/google/android/apps/translate/Logger;->sLevel:I

    or-int/lit8 v0, v0, 0x10

    sput v0, Lcom/google/android/apps/translate/Logger;->sLevel:I

    .line 53
    :sswitch_d
    sget v0, Lcom/google/android/apps/translate/Logger;->sLevel:I

    or-int/lit8 v0, v0, 0x8

    sput v0, Lcom/google/android/apps/translate/Logger;->sLevel:I

    .line 55
    :sswitch_13
    sget v0, Lcom/google/android/apps/translate/Logger;->sLevel:I

    or-int/lit8 v0, v0, 0x4

    sput v0, Lcom/google/android/apps/translate/Logger;->sLevel:I

    .line 57
    :sswitch_19
    sget v0, Lcom/google/android/apps/translate/Logger;->sLevel:I

    or-int/lit8 v0, v0, 0x2

    sput v0, Lcom/google/android/apps/translate/Logger;->sLevel:I

    .line 59
    :sswitch_1f
    sget v0, Lcom/google/android/apps/translate/Logger;->sLevel:I

    or-int/lit8 v0, v0, 0x1

    sput v0, Lcom/google/android/apps/translate/Logger;->sLevel:I

    goto :goto_6

    .line 49
    :sswitch_data_26
    .sparse-switch
        0x1 -> :sswitch_1f
        0x2 -> :sswitch_19
        0x4 -> :sswitch_13
        0x8 -> :sswitch_d
        0x10 -> :sswitch_7
    .end sparse-switch
.end method

.method public static setTag(Ljava/lang/String;)V
    .registers 1
    .parameter "tag"

    .prologue
    .line 67
    if-eqz p0, :cond_4

    sput-object p0, Lcom/google/android/apps/translate/Logger;->sTag:Ljava/lang/String;

    .line 68
    :cond_4
    return-void
.end method

.method public static declared-synchronized t(Ljava/lang/String;)V
    .registers 2
    .parameter "msg"

    .prologue
    .line 243
    const-class v0, Lcom/google/android/apps/translate/Logger;

    monitor-enter v0

    monitor-exit v0

    return-void
.end method

.method public static v(Ljava/lang/Object;Ljava/lang/String;)V
    .registers 3
    .parameter "obj"
    .parameter "msg"

    .prologue
    .line 91
    sget v0, Lcom/google/android/apps/translate/Logger;->sLevel:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_11

    .line 92
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    :cond_11
    return-void
.end method

.method public static v(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 4
    .parameter "obj"
    .parameter "msg"
    .parameter "cause"

    .prologue
    .line 121
    sget v0, Lcom/google/android/apps/translate/Logger;->sLevel:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_11

    .line 122
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 124
    :cond_11
    return-void
.end method

.method public static v(Ljava/lang/String;)V
    .registers 2
    .parameter "msg"

    .prologue
    .line 151
    sget v0, Lcom/google/android/apps/translate/Logger;->sLevel:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_b

    sget-object v0, Lcom/google/android/apps/translate/Logger;->sTag:Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    :cond_b
    return-void
.end method

.method public static v(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .parameter "tag"
    .parameter "msg"

    .prologue
    .line 71
    sget v0, Lcom/google/android/apps/translate/Logger;->sLevel:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_9

    invoke-static {p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    :cond_9
    return-void
.end method

.method public static v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 4
    .parameter "tag"
    .parameter "msg"
    .parameter "cause"

    .prologue
    .line 171
    sget v0, Lcom/google/android/apps/translate/Logger;->sLevel:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_9

    invoke-static {p0, p1, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 172
    :cond_9
    return-void
.end method

.method public static v(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 3
    .parameter "msg"
    .parameter "cause"

    .prologue
    .line 191
    sget v0, Lcom/google/android/apps/translate/Logger;->sLevel:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_b

    sget-object v0, Lcom/google/android/apps/translate/Logger;->sTag:Ljava/lang/String;

    invoke-static {v0, p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 192
    :cond_b
    return-void
.end method

.method public static w(Ljava/lang/Object;Ljava/lang/String;)V
    .registers 3
    .parameter "obj"
    .parameter "msg"

    .prologue
    .line 109
    sget v0, Lcom/google/android/apps/translate/Logger;->sLevel:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_11

    .line 110
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    :cond_11
    return-void
.end method

.method public static w(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 4
    .parameter "obj"
    .parameter "msg"
    .parameter "cause"

    .prologue
    .line 139
    sget v0, Lcom/google/android/apps/translate/Logger;->sLevel:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_11

    .line 140
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 142
    :cond_11
    return-void
.end method

.method public static w(Ljava/lang/String;)V
    .registers 2
    .parameter "msg"

    .prologue
    .line 163
    sget v0, Lcom/google/android/apps/translate/Logger;->sLevel:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_b

    sget-object v0, Lcom/google/android/apps/translate/Logger;->sTag:Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    :cond_b
    return-void
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .parameter "tag"
    .parameter "msg"

    .prologue
    .line 83
    sget v0, Lcom/google/android/apps/translate/Logger;->sLevel:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_9

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    :cond_9
    return-void
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 4
    .parameter "tag"
    .parameter "msg"
    .parameter "cause"

    .prologue
    .line 183
    sget v0, Lcom/google/android/apps/translate/Logger;->sLevel:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_9

    invoke-static {p0, p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 184
    :cond_9
    return-void
.end method

.method public static w(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 3
    .parameter "msg"
    .parameter "cause"

    .prologue
    .line 203
    sget v0, Lcom/google/android/apps/translate/Logger;->sLevel:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_b

    sget-object v0, Lcom/google/android/apps/translate/Logger;->sTag:Ljava/lang/String;

    invoke-static {v0, p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 204
    :cond_b
    return-void
.end method
