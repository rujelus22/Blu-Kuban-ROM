.class public final enum LacL;
.super Ljava/lang/Enum;
.source "Presence.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "LacL;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:LacL;

.field private static final synthetic a:[LacL;

.field public static final enum b:LacL;

.field public static final enum c:LacL;

.field public static final enum d:LacL;

.field public static final enum e:LacL;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 42
    new-instance v0, LacL;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v2}, LacL;-><init>(Ljava/lang/String;I)V

    sput-object v0, LacL;->a:LacL;

    .line 43
    new-instance v0, LacL;

    const-string v1, "AWAY"

    invoke-direct {v0, v1, v3}, LacL;-><init>(Ljava/lang/String;I)V

    sput-object v0, LacL;->b:LacL;

    .line 44
    new-instance v0, LacL;

    const-string v1, "EXTENDED_AWAY"

    invoke-direct {v0, v1, v4}, LacL;-><init>(Ljava/lang/String;I)V

    sput-object v0, LacL;->c:LacL;

    .line 45
    new-instance v0, LacL;

    const-string v1, "DND"

    invoke-direct {v0, v1, v5}, LacL;-><init>(Ljava/lang/String;I)V

    sput-object v0, LacL;->d:LacL;

    .line 46
    new-instance v0, LacL;

    const-string v1, "AVAILABLE"

    invoke-direct {v0, v1, v6}, LacL;-><init>(Ljava/lang/String;I)V

    sput-object v0, LacL;->e:LacL;

    .line 41
    const/4 v0, 0x5

    new-array v0, v0, [LacL;

    sget-object v1, LacL;->a:LacL;

    aput-object v1, v0, v2

    sget-object v1, LacL;->b:LacL;

    aput-object v1, v0, v3

    sget-object v1, LacL;->c:LacL;

    aput-object v1, v0, v4

    sget-object v1, LacL;->d:LacL;

    aput-object v1, v0, v5

    sget-object v1, LacL;->e:LacL;

    aput-object v1, v0, v6

    sput-object v0, LacL;->a:[LacL;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 41
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)LacL;
    .registers 2
    .parameter

    .prologue
    .line 41
    const-class v0, LacL;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, LacL;

    return-object v0
.end method

.method public static final values()[LacL;
    .registers 1

    .prologue
    .line 41
    sget-object v0, LacL;->a:[LacL;

    invoke-virtual {v0}, [LacL;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LacL;

    return-object v0
.end method
