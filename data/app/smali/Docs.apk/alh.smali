.class public abstract enum Lalh;
.super Ljava/lang/Enum;
.source "SortedLists.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lalh;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lalh;

.field private static final synthetic a:[Lalh;

.field public static final enum b:Lalh;

.field public static final enum c:Lalh;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 144
    new-instance v0, Lali;

    const-string v1, "NEXT_LOWER"

    invoke-direct {v0, v1, v2}, Lali;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lalh;->a:Lalh;

    .line 154
    new-instance v0, Lalj;

    const-string v1, "NEXT_HIGHER"

    invoke-direct {v0, v1, v3}, Lalj;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lalh;->b:Lalh;

    .line 172
    new-instance v0, Lalk;

    const-string v1, "INVERTED_INSERTION_INDEX"

    invoke-direct {v0, v1, v4}, Lalk;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lalh;->c:Lalh;

    .line 139
    const/4 v0, 0x3

    new-array v0, v0, [Lalh;

    sget-object v1, Lalh;->a:Lalh;

    aput-object v1, v0, v2

    sget-object v1, Lalh;->b:Lalh;

    aput-object v1, v0, v3

    sget-object v1, Lalh;->c:Lalh;

    aput-object v1, v0, v4

    sput-object v0, Lalh;->a:[Lalh;

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
    .line 139
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILalg;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 139
    invoke-direct {p0, p1, p2}, Lalh;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lalh;
    .registers 2
    .parameter

    .prologue
    .line 139
    const-class v0, Lalh;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lalh;

    return-object v0
.end method

.method public static values()[Lalh;
    .registers 1

    .prologue
    .line 139
    sget-object v0, Lalh;->a:[Lalh;

    invoke-virtual {v0}, [Lalh;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lalh;

    return-object v0
.end method


# virtual methods
.method abstract a(I)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(I)I"
        }
    .end annotation
.end method
