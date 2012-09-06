.class public final enum Laer;
.super Ljava/lang/Enum;
.source "GenericData.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Laer;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Laer;

.field private static final synthetic a:[Laer;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    const/4 v2, 0x0

    .line 71
    new-instance v0, Laer;

    const-string v1, "IGNORE_CASE"

    invoke-direct {v0, v1, v2}, Laer;-><init>(Ljava/lang/String;I)V

    sput-object v0, Laer;->a:Laer;

    .line 68
    const/4 v0, 0x1

    new-array v0, v0, [Laer;

    sget-object v1, Laer;->a:Laer;

    aput-object v1, v0, v2

    sput-object v0, Laer;->a:[Laer;

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
    .line 68
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Laer;
    .registers 2
    .parameter

    .prologue
    .line 68
    const-class v0, Laer;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Laer;

    return-object v0
.end method

.method public static values()[Laer;
    .registers 1

    .prologue
    .line 68
    sget-object v0, Laer;->a:[Laer;

    invoke-virtual {v0}, [Laer;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Laer;

    return-object v0
.end method
