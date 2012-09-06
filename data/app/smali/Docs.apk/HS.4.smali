.class public final enum LHS;
.super Ljava/lang/Enum;
.source "PreviewFragment.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "LHS;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:LHS;

.field private static final synthetic a:[LHS;

.field public static final enum b:LHS;

.field public static final enum c:LHS;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 92
    new-instance v0, LHS;

    const-string v1, "OFFLINE"

    invoke-direct {v0, v1, v2}, LHS;-><init>(Ljava/lang/String;I)V

    sput-object v0, LHS;->a:LHS;

    new-instance v0, LHS;

    const-string v1, "IDLE"

    invoke-direct {v0, v1, v3}, LHS;-><init>(Ljava/lang/String;I)V

    sput-object v0, LHS;->b:LHS;

    new-instance v0, LHS;

    const-string v1, "COMMUNICATING"

    invoke-direct {v0, v1, v4}, LHS;-><init>(Ljava/lang/String;I)V

    sput-object v0, LHS;->c:LHS;

    .line 91
    const/4 v0, 0x3

    new-array v0, v0, [LHS;

    sget-object v1, LHS;->a:LHS;

    aput-object v1, v0, v2

    sget-object v1, LHS;->b:LHS;

    aput-object v1, v0, v3

    sget-object v1, LHS;->c:LHS;

    aput-object v1, v0, v4

    sput-object v0, LHS;->a:[LHS;

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
    .line 91
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)LHS;
    .registers 2
    .parameter

    .prologue
    .line 91
    const-class v0, LHS;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, LHS;

    return-object v0
.end method

.method public static values()[LHS;
    .registers 1

    .prologue
    .line 91
    sget-object v0, LHS;->a:[LHS;

    invoke-virtual {v0}, [LHS;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LHS;

    return-object v0
.end method
