.class public final Le;
.super Ljava/lang/Object;


# static fields
.field private static final a:[Ljava/lang/String;

.field private static final b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const/4 v0, 0x0

    const/16 v1, 0xc

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "\\u0009-\\u000d"

    aput-object v2, v1, v0

    const/4 v2, 0x1

    const-string v3, "\\u0020"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "\\u0085"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "\\u00a0"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string v3, "\\u1680"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-string v3, "\\u180E"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "\\u2000-\\u200a"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, "\\u2028"

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-string v3, "\\u2029"

    aput-object v3, v1, v2

    const/16 v2, 0x9

    const-string v3, "\\u202F"

    aput-object v3, v1, v2

    const/16 v2, 0xa

    const-string v3, "\\u205F"

    aput-object v3, v1, v2

    const/16 v2, 0xb

    const-string v3, "\\u3000"

    aput-object v3, v1, v2

    sput-object v1, Le;->a:[Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Le;->a:[Ljava/lang/String;

    array-length v2, v2

    add-int/lit8 v2, v2, 0x1

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    sget-object v2, Le;->a:[Ljava/lang/String;

    array-length v3, v2

    :goto_53
    if-ge v0, v3, :cond_5d

    aget-object v4, v2, v0

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_53

    :cond_5d
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Le;->b:Ljava/lang/String;

    return-void
.end method

.method public static a()Ljava/lang/String;
    .registers 1

    sget-object v0, Le;->b:Ljava/lang/String;

    return-object v0
.end method
