.class public final enum Lyo;
.super Ljava/lang/Enum;
.source "RedrawType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lyo;",
        ">;"
    }
.end annotation


# static fields
.field private static final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lyo;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum a:Lyo;

.field private static final synthetic a:[Lyo;

.field public static final enum b:Lyo;

.field public static final enum c:Lyo;

.field public static final enum d:Lyo;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 18
    new-instance v0, Lyo;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v2}, Lyo;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lyo;->a:Lyo;

    .line 19
    new-instance v0, Lyo;

    const-string v1, "RANGE"

    invoke-direct {v0, v1, v3}, Lyo;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lyo;->b:Lyo;

    .line 20
    new-instance v0, Lyo;

    const-string v1, "INSERT"

    invoke-direct {v0, v1, v4}, Lyo;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lyo;->c:Lyo;

    .line 21
    new-instance v0, Lyo;

    const-string v1, "DELETE"

    invoke-direct {v0, v1, v5}, Lyo;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lyo;->d:Lyo;

    .line 17
    const/4 v0, 0x4

    new-array v0, v0, [Lyo;

    sget-object v1, Lyo;->a:Lyo;

    aput-object v1, v0, v2

    sget-object v1, Lyo;->b:Lyo;

    aput-object v1, v0, v3

    sget-object v1, Lyo;->c:Lyo;

    aput-object v1, v0, v4

    sget-object v1, Lyo;->d:Lyo;

    aput-object v1, v0, v5

    sput-object v0, Lyo;->a:[Lyo;

    .line 24
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lyo;->a:Ljava/util/Map;

    .line 27
    const-class v0, Lyo;

    invoke-static {v0}, Ljava/util/EnumSet;->allOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/EnumSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_68

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lyo;

    .line 28
    sget-object v2, Lyo;->a:Ljava/util/Map;

    invoke-virtual {v0}, Lyo;->ordinal()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4e

    .line 30
    :cond_68
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
    .line 17
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static a(I)Lyo;
    .registers 3
    .parameter

    .prologue
    .line 37
    sget-object v0, Lyo;->a:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lyo;

    return-object v0
.end method

.method public static a(LvZ;)Lyo;
    .registers 2
    .parameter

    .prologue
    .line 45
    invoke-interface {p0}, LvZ;->a()I

    move-result v0

    invoke-static {v0}, Lyo;->a(I)Lyo;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lyo;
    .registers 2
    .parameter

    .prologue
    .line 17
    const-class v0, Lyo;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lyo;

    return-object v0
.end method

.method public static values()[Lyo;
    .registers 1

    .prologue
    .line 17
    sget-object v0, Lyo;->a:[Lyo;

    invoke-virtual {v0}, [Lyo;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lyo;

    return-object v0
.end method
