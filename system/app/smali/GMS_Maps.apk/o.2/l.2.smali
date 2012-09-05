.class public Lo/l;
.super Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lo/m;)V
    .registers 2

    invoke-direct {p0}, Lo/l;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;)I
    .registers 2

    const-string v0, "THEN"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x0

    :goto_9
    return v0

    :cond_a
    const-string v0, "GPS_LOST"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    const/4 v0, 0x1

    goto :goto_9

    :cond_14
    const-string v0, "DATA_LOST"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    const/4 v0, 0x2

    goto :goto_9

    :cond_1e
    const-string v0, "NAVIGATION_RESUMED"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_28

    const/4 v0, 0x3

    goto :goto_9

    :cond_28
    const-string v0, "PLEASE_DESCRIBE_PROBLEM"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_32

    const/4 v0, 0x4

    goto :goto_9

    :cond_32
    const-string v0, "ARRIVED"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3c

    const/4 v0, 0x5

    goto :goto_9

    :cond_3c
    const-string v0, "WILL_ARRIVE"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_46

    const/4 v0, 0x6

    goto :goto_9

    :cond_46
    const-string v0, "DESTINATION_ON_LEFT"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_50

    const/4 v0, 0x7

    goto :goto_9

    :cond_50
    const-string v0, "DESTINATION_ON_RIGHT"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5b

    const/16 v0, 0x8

    goto :goto_9

    :cond_5b
    const-string v0, "DESTINATION_WILL_BE_ON_LEFT"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_66

    const/16 v0, 0x9

    goto :goto_9

    :cond_66
    const-string v0, "DESTINATION_WILL_BE_ON_RIGHT"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_71

    const/16 v0, 0xa

    goto :goto_9

    :cond_71
    const-string v0, "GENERIC_CONTINUE"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7c

    const/16 v0, 0xb

    goto :goto_9

    :cond_7c
    const/4 v0, -0x1

    goto :goto_9
.end method

.method public static a(Lo/l;)Lo/l;
    .registers 2

    if-nez p0, :cond_4

    const/4 v0, 0x0

    :goto_3
    return-object v0

    :cond_4
    new-instance v0, Lo/q;

    invoke-direct {v0, p0}, Lo/q;-><init>(Lo/l;)V

    goto :goto_3
.end method

.method public static a(Lo/l;Lo/l;)Lo/l;
    .registers 4

    const/4 v0, 0x0

    if-eqz p0, :cond_5

    if-nez p1, :cond_6

    :cond_5
    :goto_5
    return-object v0

    :cond_6
    new-instance v1, Lo/o;

    invoke-direct {v1, v0}, Lo/o;-><init>(Lo/m;)V

    invoke-virtual {v1, p0}, Lo/o;->a(Lo/l;)V

    invoke-virtual {v1, p1}, Lo/o;->a(Lo/l;)V

    invoke-virtual {v1}, Lo/o;->a()Lo/l;

    move-result-object v0

    goto :goto_5
.end method


# virtual methods
.method public a()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method
