.class public Lcom/google/android/youtube/core/L;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final synthetic a:Z

.field private static b:Ljava/lang/String;

.field private static final c:I

.field private static final d:Ljava/lang/String;

.field private static e:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 18
    const-class v0, Lcom/google/android/youtube/core/L;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_24

    const/4 v0, 0x1

    :goto_9
    sput-boolean v0, Lcom/google/android/youtube/core/L;->a:Z

    .line 27
    const-string v0, "L"

    sput-object v0, Lcom/google/android/youtube/core/L;->b:Ljava/lang/String;

    .line 37
    const/16 v0, 0x13

    sput v0, Lcom/google/android/youtube/core/L;->c:I

    .line 43
    const-class v0, Lcom/google/android/youtube/core/L;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/youtube/core/L;->d:Ljava/lang/String;

    .line 48
    const-string v0, ""

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/youtube/core/L;->e:Ljava/util/regex/Pattern;

    return-void

    .line 18
    :cond_24
    const/4 v0, 0x0

    goto :goto_9
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    return-void
.end method

.method public static a()V
    .registers 0

    .prologue
    .line 108
    return-void
.end method

.method private static a(Lcom/google/android/youtube/core/L$Type;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 212
    sget-object v0, Lcom/google/android/youtube/core/h;->a:[I

    invoke-virtual {p0}, Lcom/google/android/youtube/core/L$Type;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_30

    .line 234
    sget-boolean v0, Lcom/google/android/youtube/core/L;->a:Z

    if-nez v0, :cond_1c

    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "Unknown type."

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 217
    :pswitch_17
    sget-object v0, Lcom/google/android/youtube/core/L;->b:Ljava/lang/String;

    invoke-static {v0, p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 241
    :cond_1c
    :goto_1c
    :pswitch_1c
    return-void

    .line 221
    :pswitch_1d
    sget-object v0, Lcom/google/android/youtube/core/L;->b:Ljava/lang/String;

    invoke-static {v0, p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1c

    .line 225
    :pswitch_23
    sget-object v0, Lcom/google/android/youtube/core/L;->b:Ljava/lang/String;

    invoke-static {v0, p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1c

    .line 229
    :pswitch_29
    sget-object v0, Lcom/google/android/youtube/core/L;->b:Ljava/lang/String;

    invoke-static {v0, p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1c

    .line 212
    nop

    :pswitch_data_30
    .packed-switch 0x1
        :pswitch_17
        :pswitch_1d
        :pswitch_23
        :pswitch_29
        :pswitch_1c
    .end packed-switch
.end method

.method public static a(Ljava/lang/String;)V
    .registers 1
    .parameter

    .prologue
    .line 59
    sput-object p0, Lcom/google/android/youtube/core/L;->b:Ljava/lang/String;

    .line 60
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 78
    sget-object v0, Lcom/google/android/youtube/core/L$Type;->ERROR:Lcom/google/android/youtube/core/L$Type;

    invoke-static {v0, p0, p1}, Lcom/google/android/youtube/core/L;->a(Lcom/google/android/youtube/core/L$Type;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 79
    return-void
.end method

.method public static b()V
    .registers 0

    .prologue
    .line 128
    return-void
.end method

.method public static b(Ljava/lang/String;)V
    .registers 3
    .parameter

    .prologue
    .line 68
    sget-object v0, Lcom/google/android/youtube/core/L$Type;->ERROR:Lcom/google/android/youtube/core/L$Type;

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Lcom/google/android/youtube/core/L;->a(Lcom/google/android/youtube/core/L$Type;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 69
    return-void
.end method

.method public static b(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 97
    sget-object v0, Lcom/google/android/youtube/core/L$Type;->WARNING:Lcom/google/android/youtube/core/L$Type;

    invoke-static {v0, p0, p1}, Lcom/google/android/youtube/core/L;->a(Lcom/google/android/youtube/core/L$Type;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 98
    return-void
.end method

.method public static c()V
    .registers 0

    .prologue
    .line 138
    return-void
.end method

.method public static c(Ljava/lang/String;)V
    .registers 3
    .parameter

    .prologue
    .line 87
    sget-object v0, Lcom/google/android/youtube/core/L$Type;->WARNING:Lcom/google/android/youtube/core/L$Type;

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Lcom/google/android/youtube/core/L;->a(Lcom/google/android/youtube/core/L$Type;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 88
    return-void
.end method

.method public static d()V
    .registers 0

    .prologue
    .line 147
    return-void
.end method

.method public static d(Ljava/lang/String;)V
    .registers 2
    .parameter

    .prologue
    .line 177
    invoke-static {p0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/youtube/core/L;->e:Ljava/util/regex/Pattern;

    .line 178
    return-void
.end method

.method public static e()V
    .registers 0

    .prologue
    .line 165
    return-void
.end method
