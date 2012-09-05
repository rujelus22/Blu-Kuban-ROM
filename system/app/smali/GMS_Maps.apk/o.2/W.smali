.class public Lo/W;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;)Lo/W;
    .registers 2

    if-eqz p0, :cond_a

    const-string v0, "com.svox.pico"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    :cond_a
    new-instance v0, Lo/V;

    invoke-direct {v0}, Lo/V;-><init>()V

    :goto_f
    return-object v0

    :cond_10
    const-string v0, "com.google.android.apps.networktts"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    new-instance v0, Lo/O;

    invoke-direct {v0}, Lo/O;-><init>()V

    goto :goto_f

    :cond_1e
    const-string v0, "com.google.android.tts"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2c

    new-instance v0, Lo/T;

    invoke-direct {v0}, Lo/T;-><init>()V

    goto :goto_f

    :cond_2c
    new-instance v0, Lo/W;

    invoke-direct {v0}, Lo/W;-><init>()V

    goto :goto_f
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/util/Locale;)Ljava/lang/String;
    .registers 3

    return-object p1
.end method
