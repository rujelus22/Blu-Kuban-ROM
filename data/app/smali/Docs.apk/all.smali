.class public abstract enum Lall;
.super Ljava/lang/Enum;
.source "SortedLists.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lall;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lall;

.field private static final synthetic a:[Lall;

.field public static final enum b:Lall;

.field public static final enum c:Lall;

.field public static final enum d:Lall;

.field public static final enum e:Lall;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 53
    new-instance v0, Lalm;

    const-string v1, "ANY_PRESENT"

    invoke-direct {v0, v1, v2}, Lalm;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lall;->a:Lall;

    .line 63
    new-instance v0, Laln;

    const-string v1, "LAST_PRESENT"

    invoke-direct {v0, v1, v3}, Laln;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lall;->b:Lall;

    .line 87
    new-instance v0, Lalo;

    const-string v1, "FIRST_PRESENT"

    invoke-direct {v0, v1, v4}, Lalo;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lall;->c:Lall;

    .line 113
    new-instance v0, Lalp;

    const-string v1, "FIRST_AFTER"

    invoke-direct {v0, v1, v5}, Lalp;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lall;->d:Lall;

    .line 124
    new-instance v0, Lalq;

    const-string v1, "LAST_BEFORE"

    invoke-direct {v0, v1, v6}, Lalq;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lall;->e:Lall;

    .line 48
    const/4 v0, 0x5

    new-array v0, v0, [Lall;

    sget-object v1, Lall;->a:Lall;

    aput-object v1, v0, v2

    sget-object v1, Lall;->b:Lall;

    aput-object v1, v0, v3

    sget-object v1, Lall;->c:Lall;

    aput-object v1, v0, v4

    sget-object v1, Lall;->d:Lall;

    aput-object v1, v0, v5

    sget-object v1, Lall;->e:Lall;

    aput-object v1, v0, v6

    sput-object v0, Lall;->a:[Lall;

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
    .line 48
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILalg;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 48
    invoke-direct {p0, p1, p2}, Lall;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lall;
    .registers 2
    .parameter

    .prologue
    .line 48
    const-class v0, Lall;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lall;

    return-object v0
.end method

.method public static values()[Lall;
    .registers 1

    .prologue
    .line 48
    sget-object v0, Lall;->a:[Lall;

    invoke-virtual {v0}, [Lall;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lall;

    return-object v0
.end method


# virtual methods
.method abstract a(Ljava/util/Comparator;Ljava/lang/Object;Ljava/util/List;I)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Comparator",
            "<-TE;>;TE;",
            "Ljava/util/List",
            "<+TE;>;I)I"
        }
    .end annotation
.end method
