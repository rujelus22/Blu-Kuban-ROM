.class public final enum Ladf;
.super Ljava/lang/Enum;
.source "HttpMethod.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Ladf;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Ladf;

.field private static final synthetic a:[Ladf;

.field public static final enum b:Ladf;

.field public static final enum c:Ladf;

.field public static final enum d:Ladf;

.field public static final enum e:Ladf;

.field public static final enum f:Ladf;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 24
    new-instance v0, Ladf;

    const-string v1, "DELETE"

    invoke-direct {v0, v1, v3}, Ladf;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ladf;->a:Ladf;

    new-instance v0, Ladf;

    const-string v1, "GET"

    invoke-direct {v0, v1, v4}, Ladf;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ladf;->b:Ladf;

    new-instance v0, Ladf;

    const-string v1, "HEAD"

    invoke-direct {v0, v1, v5}, Ladf;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ladf;->c:Ladf;

    new-instance v0, Ladf;

    const-string v1, "PATCH"

    invoke-direct {v0, v1, v6}, Ladf;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ladf;->d:Ladf;

    new-instance v0, Ladf;

    const-string v1, "PUT"

    invoke-direct {v0, v1, v7}, Ladf;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ladf;->e:Ladf;

    new-instance v0, Ladf;

    const-string v1, "POST"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Ladf;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ladf;->f:Ladf;

    .line 23
    const/4 v0, 0x6

    new-array v0, v0, [Ladf;

    sget-object v1, Ladf;->a:Ladf;

    aput-object v1, v0, v3

    sget-object v1, Ladf;->b:Ladf;

    aput-object v1, v0, v4

    sget-object v1, Ladf;->c:Ladf;

    aput-object v1, v0, v5

    sget-object v1, Ladf;->d:Ladf;

    aput-object v1, v0, v6

    sget-object v1, Ladf;->e:Ladf;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Ladf;->f:Ladf;

    aput-object v2, v0, v1

    sput-object v0, Ladf;->a:[Ladf;

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
    .line 23
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Ladf;
    .registers 2
    .parameter

    .prologue
    .line 23
    const-class v0, Ladf;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Ladf;

    return-object v0
.end method

.method public static values()[Ladf;
    .registers 1

    .prologue
    .line 23
    sget-object v0, Ladf;->a:[Ladf;

    invoke-virtual {v0}, [Ladf;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ladf;

    return-object v0
.end method
