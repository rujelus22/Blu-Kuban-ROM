.class public abstract enum Laoi;
.super Ljava/lang/Enum;
.source "BytecodeGen.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Laoi;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Laoi;

.field private static final synthetic a:[Laoi;

.field public static final enum b:Laoi;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 235
    new-instance v0, Laoj;

    const-string v1, "PUBLIC"

    invoke-direct {v0, v1, v2}, Laoj;-><init>(Ljava/lang/String;I)V

    sput-object v0, Laoi;->a:Laoi;

    .line 248
    new-instance v0, Laok;

    const-string v1, "SAME_PACKAGE"

    invoke-direct {v0, v1, v3}, Laok;-><init>(Ljava/lang/String;I)V

    sput-object v0, Laoi;->b:Laoi;

    .line 229
    const/4 v0, 0x2

    new-array v0, v0, [Laoi;

    sget-object v1, Laoi;->a:Laoi;

    aput-object v1, v0, v2

    sget-object v1, Laoi;->b:Laoi;

    aput-object v1, v0, v3

    sput-object v0, Laoi;->a:[Laoi;

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
    .line 229
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILaoe;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 229
    invoke-direct {p0, p1, p2}, Laoi;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static a(Ljava/lang/Class;)Laoi;
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Laoi;"
        }
    .end annotation

    .prologue
    .line 281
    invoke-virtual {p0}, Ljava/lang/Class;->getModifiers()I

    move-result v0

    and-int/lit8 v0, v0, 0x5

    if-eqz v0, :cond_b

    sget-object v0, Laoi;->a:Laoi;

    :goto_a
    return-object v0

    :cond_b
    sget-object v0, Laoi;->b:Laoi;

    goto :goto_a
.end method

.method public static valueOf(Ljava/lang/String;)Laoi;
    .registers 2
    .parameter

    .prologue
    .line 229
    const-class v0, Laoi;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Laoi;

    return-object v0
.end method

.method public static values()[Laoi;
    .registers 1

    .prologue
    .line 229
    sget-object v0, Laoi;->a:[Laoi;

    invoke-virtual {v0}, [Laoi;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Laoi;

    return-object v0
.end method
