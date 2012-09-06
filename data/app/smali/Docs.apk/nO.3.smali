.class public final enum LnO;
.super Ljava/lang/Enum;
.source "SqlWhereClause.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "LnO;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:LnO;

.field private static final synthetic a:[LnO;

.field public static final enum b:LnO;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 91
    new-instance v0, LnO;

    const-string v1, "AND"

    invoke-direct {v0, v1, v2}, LnO;-><init>(Ljava/lang/String;I)V

    sput-object v0, LnO;->a:LnO;

    .line 92
    new-instance v0, LnO;

    const-string v1, "OR"

    invoke-direct {v0, v1, v3}, LnO;-><init>(Ljava/lang/String;I)V

    sput-object v0, LnO;->b:LnO;

    .line 90
    const/4 v0, 0x2

    new-array v0, v0, [LnO;

    sget-object v1, LnO;->a:LnO;

    aput-object v1, v0, v2

    sget-object v1, LnO;->b:LnO;

    aput-object v1, v0, v3

    sput-object v0, LnO;->a:[LnO;

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
    .line 90
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)LnO;
    .registers 2
    .parameter

    .prologue
    .line 90
    const-class v0, LnO;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, LnO;

    return-object v0
.end method

.method public static values()[LnO;
    .registers 1

    .prologue
    .line 90
    sget-object v0, LnO;->a:[LnO;

    invoke-virtual {v0}, [LnO;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LnO;

    return-object v0
.end method


# virtual methods
.method public varargs a(LnL;[LnL;)LnL;
    .registers 7
    .parameter
    .parameter

    .prologue
    .line 98
    invoke-static {p1}, LafQ;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    invoke-virtual {p1}, LnL;->a()LnN;

    move-result-object v1

    .line 101
    array-length v2, p2

    const/4 v0, 0x0

    :goto_9
    if-ge v0, v2, :cond_13

    aget-object v3, p2, v0

    .line 102
    invoke-virtual {v1, p0, v3}, LnN;->a(LnO;LnL;)LnN;

    .line 101
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 105
    :cond_13
    invoke-virtual {v1}, LnN;->a()LnL;

    move-result-object v0

    return-object v0
.end method
