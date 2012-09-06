.class final enum Lago;
.super Ljava/lang/Enum;
.source "CacheBuilder.java"

# interfaces
.implements LahC;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lago;",
        ">;",
        "LahC",
        "<",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lago;

.field private static final synthetic a:[Lago;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    const/4 v2, 0x0

    .line 175
    new-instance v0, Lago;

    const-string v1, "INSTANCE"

    invoke-direct {v0, v1, v2}, Lago;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lago;->a:Lago;

    .line 174
    const/4 v0, 0x1

    new-array v0, v0, [Lago;

    sget-object v1, Lago;->a:Lago;

    aput-object v1, v0, v2

    sput-object v0, Lago;->a:[Lago;

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
    .line 174
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lago;
    .registers 2
    .parameter

    .prologue
    .line 174
    const-class v0, Lago;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lago;

    return-object v0
.end method

.method public static values()[Lago;
    .registers 1

    .prologue
    .line 174
    sget-object v0, Lago;->a:[Lago;

    invoke-virtual {v0}, [Lago;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lago;

    return-object v0
.end method


# virtual methods
.method public a(LahD;)V
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LahD",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 178
    return-void
.end method
