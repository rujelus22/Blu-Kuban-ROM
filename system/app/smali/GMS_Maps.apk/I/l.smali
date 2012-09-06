.class public Li/l;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Li/m;)V
    .registers 2
    .parameter

    .prologue
    .line 12
    invoke-direct {p0}, Li/l;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;)I
    .registers 2
    .parameter

    .prologue
    .line 296
    const-string v0, "THEN"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 297
    const/4 v0, 0x0

    .line 321
    :goto_9
    return v0

    .line 298
    :cond_a
    const-string v0, "GPS_LOST"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 299
    const/4 v0, 0x1

    goto :goto_9

    .line 300
    :cond_14
    const-string v0, "DATA_LOST"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 301
    const/4 v0, 0x2

    goto :goto_9

    .line 302
    :cond_1e
    const-string v0, "NAVIGATION_RESUMED"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_28

    .line 303
    const/4 v0, 0x3

    goto :goto_9

    .line 304
    :cond_28
    const-string v0, "PLEASE_DESCRIBE_PROBLEM"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_32

    .line 305
    const/4 v0, 0x4

    goto :goto_9

    .line 306
    :cond_32
    const-string v0, "ARRIVED"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 307
    const/4 v0, 0x5

    goto :goto_9

    .line 308
    :cond_3c
    const-string v0, "WILL_ARRIVE"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_46

    .line 309
    const/4 v0, 0x6

    goto :goto_9

    .line 310
    :cond_46
    const-string v0, "DESTINATION_ON_LEFT"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_50

    .line 311
    const/4 v0, 0x7

    goto :goto_9

    .line 312
    :cond_50
    const-string v0, "DESTINATION_ON_RIGHT"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5b

    .line 313
    const/16 v0, 0x8

    goto :goto_9

    .line 314
    :cond_5b
    const-string v0, "DESTINATION_WILL_BE_ON_LEFT"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_66

    .line 315
    const/16 v0, 0x9

    goto :goto_9

    .line 316
    :cond_66
    const-string v0, "DESTINATION_WILL_BE_ON_RIGHT"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_71

    .line 317
    const/16 v0, 0xa

    goto :goto_9

    .line 318
    :cond_71
    const-string v0, "GENERIC_CONTINUE"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7c

    .line 319
    const/16 v0, 0xb

    goto :goto_9

    .line 321
    :cond_7c
    const/4 v0, -0x1

    goto :goto_9
.end method

.method public static a(Li/l;)Li/l;
    .registers 2
    .parameter

    .prologue
    .line 288
    if-nez p0, :cond_4

    const/4 v0, 0x0

    :goto_3
    return-object v0

    :cond_4
    new-instance v0, Li/q;

    invoke-direct {v0, p0}, Li/q;-><init>(Li/l;)V

    goto :goto_3
.end method

.method public static a(Li/l;Li/l;)Li/l;
    .registers 4
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 274
    if-eqz p0, :cond_5

    if-nez p1, :cond_6

    .line 280
    :cond_5
    :goto_5
    return-object v0

    .line 277
    :cond_6
    new-instance v1, Li/o;

    invoke-direct {v1, v0}, Li/o;-><init>(Li/m;)V

    .line 278
    invoke-virtual {v1, p0}, Li/o;->a(Li/l;)V

    .line 279
    invoke-virtual {v1, p1}, Li/o;->a(Li/l;)V

    .line 280
    invoke-virtual {v1}, Li/o;->a()Li/l;

    move-result-object v0

    goto :goto_5
.end method


# virtual methods
.method public a()Z
    .registers 2

    .prologue
    .line 42
    const/4 v0, 0x0

    return v0
.end method
