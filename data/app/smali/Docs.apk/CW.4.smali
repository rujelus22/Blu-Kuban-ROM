.class public final enum LCW;
.super Ljava/lang/Enum;
.source "TextView.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "LCW;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:LCW;

.field private static final synthetic a:[LCW;

.field public static final enum b:LCW;

.field public static final enum c:LCW;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 6854
    new-instance v0, LCW;

    const-string v1, "NORMAL"

    invoke-direct {v0, v1, v2}, LCW;-><init>(Ljava/lang/String;I)V

    sput-object v0, LCW;->a:LCW;

    new-instance v0, LCW;

    const-string v1, "SPANNABLE"

    invoke-direct {v0, v1, v3}, LCW;-><init>(Ljava/lang/String;I)V

    sput-object v0, LCW;->b:LCW;

    new-instance v0, LCW;

    const-string v1, "EDITABLE"

    invoke-direct {v0, v1, v4}, LCW;-><init>(Ljava/lang/String;I)V

    sput-object v0, LCW;->c:LCW;

    .line 6853
    const/4 v0, 0x3

    new-array v0, v0, [LCW;

    sget-object v1, LCW;->a:LCW;

    aput-object v1, v0, v2

    sget-object v1, LCW;->b:LCW;

    aput-object v1, v0, v3

    sget-object v1, LCW;->c:LCW;

    aput-object v1, v0, v4

    sput-object v0, LCW;->a:[LCW;

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
    .line 6853
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)LCW;
    .registers 2
    .parameter

    .prologue
    .line 6853
    const-class v0, LCW;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, LCW;

    return-object v0
.end method

.method public static values()[LCW;
    .registers 1

    .prologue
    .line 6853
    sget-object v0, LCW;->a:[LCW;

    invoke-virtual {v0}, [LCW;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LCW;

    return-object v0
.end method
