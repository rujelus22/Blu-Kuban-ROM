.class public final enum Lkb;
.super Ljava/lang/Enum;
.source "TabletDocListActivity.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lkb;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lkb;

.field private static final synthetic a:[Lkb;

.field public static final enum b:Lkb;

.field public static final enum c:Lkb;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 197
    new-instance v0, Lkb;

    const-string v1, "NAVIGATION"

    invoke-direct {v0, v1, v2}, Lkb;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lkb;->a:Lkb;

    new-instance v0, Lkb;

    const-string v1, "DOC_LIST"

    invoke-direct {v0, v1, v3}, Lkb;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lkb;->b:Lkb;

    new-instance v0, Lkb;

    const-string v1, "PREVIEW"

    invoke-direct {v0, v1, v4}, Lkb;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lkb;->c:Lkb;

    const/4 v0, 0x3

    new-array v0, v0, [Lkb;

    sget-object v1, Lkb;->a:Lkb;

    aput-object v1, v0, v2

    sget-object v1, Lkb;->b:Lkb;

    aput-object v1, v0, v3

    sget-object v1, Lkb;->c:Lkb;

    aput-object v1, v0, v4

    sput-object v0, Lkb;->a:[Lkb;

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
    .line 197
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lkb;
    .registers 2
    .parameter

    .prologue
    .line 197
    const-class v0, Lkb;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lkb;

    return-object v0
.end method

.method public static values()[Lkb;
    .registers 1

    .prologue
    .line 197
    sget-object v0, Lkb;->a:[Lkb;

    invoke-virtual {v0}, [Lkb;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lkb;

    return-object v0
.end method
