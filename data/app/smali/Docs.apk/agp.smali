.class final enum Lagp;
.super Ljava/lang/Enum;
.source "CacheBuilder.java"

# interfaces
.implements LahE;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lagp;",
        ">;",
        "LahE",
        "<",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lagp;

.field private static final synthetic a:[Lagp;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    const/4 v2, 0x0

    .line 182
    new-instance v0, Lagp;

    const-string v1, "INSTANCE"

    invoke-direct {v0, v1, v2}, Lagp;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lagp;->a:Lagp;

    .line 181
    const/4 v0, 0x1

    new-array v0, v0, [Lagp;

    sget-object v1, Lagp;->a:Lagp;

    aput-object v1, v0, v2

    sput-object v0, Lagp;->a:[Lagp;

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
    .line 181
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lagp;
    .registers 2
    .parameter

    .prologue
    .line 181
    const-class v0, Lagp;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lagp;

    return-object v0
.end method

.method public static values()[Lagp;
    .registers 1

    .prologue
    .line 181
    sget-object v0, Lagp;->a:[Lagp;

    invoke-virtual {v0}, [Lagp;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lagp;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 186
    const/4 v0, 0x1

    return v0
.end method
