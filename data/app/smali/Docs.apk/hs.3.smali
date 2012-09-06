.class public final enum Lhs;
.super Ljava/lang/Enum;
.source "ShortcutDefinition.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lhs;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lhs;

.field private static final synthetic a:[Lhs;

.field public static final enum b:Lhs;

.field public static final enum c:Lhs;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 158
    new-instance v0, Lhs;

    const-string v1, "MAIN_LIST"

    invoke-direct {v0, v1, v2}, Lhs;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lhs;->a:Lhs;

    .line 161
    new-instance v0, Lhs;

    const-string v1, "ADDITIONAL_ACTION"

    invoke-direct {v0, v1, v3}, Lhs;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lhs;->b:Lhs;

    .line 164
    new-instance v0, Lhs;

    const-string v1, "DRIVE_ADDITIONAL_FILTERS"

    invoke-direct {v0, v1, v4}, Lhs;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lhs;->c:Lhs;

    .line 156
    const/4 v0, 0x3

    new-array v0, v0, [Lhs;

    sget-object v1, Lhs;->a:Lhs;

    aput-object v1, v0, v2

    sget-object v1, Lhs;->b:Lhs;

    aput-object v1, v0, v3

    sget-object v1, Lhs;->c:Lhs;

    aput-object v1, v0, v4

    sput-object v0, Lhs;->a:[Lhs;

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
    .line 156
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lhs;
    .registers 2
    .parameter

    .prologue
    .line 156
    const-class v0, Lhs;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lhs;

    return-object v0
.end method

.method public static values()[Lhs;
    .registers 1

    .prologue
    .line 156
    sget-object v0, Lhs;->a:[Lhs;

    invoke-virtual {v0}, [Lhs;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lhs;

    return-object v0
.end method
