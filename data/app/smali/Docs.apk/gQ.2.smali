.class public final enum LgQ;
.super Ljava/lang/Enum;
.source "HomeScreenActivity.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "LgQ;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:LgQ;

.field private static final synthetic a:[LgQ;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    const/4 v2, 0x0

    .line 174
    new-instance v0, LgQ;

    const-string v1, "TOO_OLD"

    invoke-direct {v0, v1, v2}, LgQ;-><init>(Ljava/lang/String;I)V

    sput-object v0, LgQ;->a:LgQ;

    .line 173
    const/4 v0, 0x1

    new-array v0, v0, [LgQ;

    sget-object v1, LgQ;->a:LgQ;

    aput-object v1, v0, v2

    sput-object v0, LgQ;->a:[LgQ;

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
    .line 173
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)LgQ;
    .registers 2
    .parameter

    .prologue
    .line 173
    const-class v0, LgQ;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, LgQ;

    return-object v0
.end method

.method public static values()[LgQ;
    .registers 1

    .prologue
    .line 173
    sget-object v0, LgQ;->a:[LgQ;

    invoke-virtual {v0}, [LgQ;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LgQ;

    return-object v0
.end method
