.class public Li/Z;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;)Li/Z;
    .registers 2
    .parameter

    .prologue
    .line 22
    if-eqz p0, :cond_a

    const-string v0, "com.svox.pico"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 25
    :cond_a
    new-instance v0, Li/Y;

    invoke-direct {v0}, Li/Y;-><init>()V

    .line 33
    :goto_f
    return-object v0

    .line 26
    :cond_10
    const-string v0, "com.google.android.apps.networktts"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 28
    new-instance v0, Li/R;

    invoke-direct {v0}, Li/R;-><init>()V

    goto :goto_f

    .line 29
    :cond_1e
    const-string v0, "com.google.android.tts"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 30
    new-instance v0, Li/W;

    invoke-direct {v0}, Li/W;-><init>()V

    goto :goto_f

    .line 33
    :cond_2c
    new-instance v0, Li/Z;

    invoke-direct {v0}, Li/Z;-><init>()V

    goto :goto_f
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/util/Locale;)Ljava/lang/String;
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 46
    return-object p1
.end method
