.class public final enum Lhg;
.super Ljava/lang/Enum;
.source "MainProxyLogic.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lhg;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lhg;

.field private static final synthetic a:[Lhg;

.field public static final enum b:Lhg;

.field public static final enum c:Lhg;

.field public static final enum d:Lhg;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 42
    new-instance v0, Lhg;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v2}, Lhg;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lhg;->a:Lhg;

    new-instance v0, Lhg;

    const-string v1, "CREATE_NEW"

    invoke-direct {v0, v1, v3}, Lhg;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lhg;->b:Lhg;

    new-instance v0, Lhg;

    const-string v1, "WELCOME_TO_DRIVE"

    invoke-direct {v0, v1, v4}, Lhg;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lhg;->c:Lhg;

    new-instance v0, Lhg;

    const-string v1, "DOCS_UPGRADED_TO_DRIVE"

    invoke-direct {v0, v1, v5}, Lhg;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lhg;->d:Lhg;

    .line 41
    const/4 v0, 0x4

    new-array v0, v0, [Lhg;

    sget-object v1, Lhg;->a:Lhg;

    aput-object v1, v0, v2

    sget-object v1, Lhg;->b:Lhg;

    aput-object v1, v0, v3

    sget-object v1, Lhg;->c:Lhg;

    aput-object v1, v0, v4

    sget-object v1, Lhg;->d:Lhg;

    aput-object v1, v0, v5

    sput-object v0, Lhg;->a:[Lhg;

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
    .line 41
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static a(Landroid/content/Intent;)Lhg;
    .registers 2
    .parameter

    .prologue
    .line 45
    const-string v0, "dialogToShow"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lhg;

    .line 47
    if-nez v0, :cond_c

    .line 48
    sget-object v0, Lhg;->a:Lhg;

    .line 50
    :cond_c
    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lhg;
    .registers 2
    .parameter

    .prologue
    .line 41
    const-class v0, Lhg;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lhg;

    return-object v0
.end method

.method public static values()[Lhg;
    .registers 1

    .prologue
    .line 41
    sget-object v0, Lhg;->a:[Lhg;

    invoke-virtual {v0}, [Lhg;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lhg;

    return-object v0
.end method
