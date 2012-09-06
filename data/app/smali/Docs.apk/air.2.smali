.class final enum Lair;
.super Ljava/lang/Enum;
.source "GenericMapMaker.java"

# interfaces
.implements Lajv;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lair;",
        ">;",
        "Lajv",
        "<",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lair;

.field private static final synthetic a:[Lair;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    const/4 v2, 0x0

    .line 45
    new-instance v0, Lair;

    const-string v1, "INSTANCE"

    invoke-direct {v0, v1, v2}, Lair;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lair;->a:Lair;

    .line 43
    const/4 v0, 0x1

    new-array v0, v0, [Lair;

    sget-object v1, Lair;->a:Lair;

    aput-object v1, v0, v2

    sput-object v0, Lair;->a:[Lair;

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
    .line 44
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lair;
    .registers 2
    .parameter

    .prologue
    .line 43
    const-class v0, Lair;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lair;

    return-object v0
.end method

.method public static values()[Lair;
    .registers 1

    .prologue
    .line 43
    sget-object v0, Lair;->a:[Lair;

    invoke-virtual {v0}, [Lair;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lair;

    return-object v0
.end method


# virtual methods
.method public a(Lajw;)V
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lajw",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 48
    return-void
.end method
