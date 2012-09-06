.class public abstract enum Lqb;
.super Ljava/lang/Enum;
.source "FileOpenerIntentCreatorImpl.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lqb;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lqb;

.field private static final synthetic a:[Lqb;

.field public static final enum b:Lqb;

.field public static final enum c:Lqb;

.field public static final enum d:Lqb;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 81
    new-instance v0, Lqc;

    const-string v1, "URI_WITH_MIME_TYPE"

    invoke-direct {v0, v1, v2}, Lqc;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lqb;->a:Lqb;

    .line 88
    new-instance v0, Lqd;

    const-string v1, "URI_WITHOUT_MIME_TYPE"

    invoke-direct {v0, v1, v3}, Lqd;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lqb;->b:Lqb;

    .line 95
    new-instance v0, Lqe;

    const-string v1, "EXTENSION_WITH_MIME_TYPE"

    invoke-direct {v0, v1, v4}, Lqe;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lqb;->c:Lqb;

    .line 103
    new-instance v0, Lqf;

    const-string v1, "EXTENSION_WITHOUT_MIME_TYPE"

    invoke-direct {v0, v1, v5}, Lqf;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lqb;->d:Lqb;

    .line 80
    const/4 v0, 0x4

    new-array v0, v0, [Lqb;

    sget-object v1, Lqb;->a:Lqb;

    aput-object v1, v0, v2

    sget-object v1, Lqb;->b:Lqb;

    aput-object v1, v0, v3

    sget-object v1, Lqb;->c:Lqb;

    aput-object v1, v0, v4

    sget-object v1, Lqb;->d:Lqb;

    aput-object v1, v0, v5

    sput-object v0, Lqb;->a:[Lqb;

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
    .line 80
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILqa;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 80
    invoke-direct {p0, p1, p2}, Lqb;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lqb;
    .registers 2
    .parameter

    .prologue
    .line 80
    const-class v0, Lqb;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lqb;

    return-object v0
.end method

.method public static values()[Lqb;
    .registers 1

    .prologue
    .line 80
    sget-object v0, Lqb;->a:[Lqb;

    invoke-virtual {v0}, [Lqb;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lqb;

    return-object v0
.end method


# virtual methods
.method public abstract a(Landroid/content/Context;LeD;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)LpZ;
.end method
