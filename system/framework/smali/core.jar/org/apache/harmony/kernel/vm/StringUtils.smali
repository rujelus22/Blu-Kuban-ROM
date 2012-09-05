.class public final Lorg/apache/harmony/kernel/vm/StringUtils;
.super Ljava/lang/Object;
.source "StringUtils.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 26
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 28
    return-void
.end method

.method public static combineStrings([Ljava/lang/Object;)Ljava/lang/String;
    .registers 6
    .parameter "list"

    .prologue
    .line 38
    array-length v1, p0

    .line 40
    .local v1, listLength:I
    packed-switch v1, :pswitch_data_32

    .line 49
    const/4 v3, 0x0

    .line 51
    .local v3, strLength:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_6
    if-ge v0, v1, :cond_1d

    .line 52
    aget-object v4, p0, v0

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    .line 51
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 42
    .end local v0           #i:I
    .end local v3           #strLength:I
    :pswitch_14
    const-string v4, ""

    .line 61
    :goto_16
    return-object v4

    .line 45
    :pswitch_17
    const/4 v4, 0x0

    aget-object v4, p0, v4

    check-cast v4, Ljava/lang/String;

    goto :goto_16

    .line 55
    .restart local v0       #i:I
    .restart local v3       #strLength:I
    :cond_1d
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 57
    .local v2, sb:Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    :goto_23
    if-ge v0, v1, :cond_2d

    .line 58
    aget-object v4, p0, v0

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 57
    add-int/lit8 v0, v0, 0x1

    goto :goto_23

    .line 61
    :cond_2d
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_16

    .line 40
    :pswitch_data_32
    .packed-switch 0x0
        :pswitch_14
        :pswitch_17
    .end packed-switch
.end method
