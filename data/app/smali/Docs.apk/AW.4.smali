.class public final enum LAW;
.super Ljava/lang/Enum;
.source "AggregateStyle.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "LAW;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:LAW;

.field private static final synthetic a:[LAW;

.field public static final enum b:LAW;

.field public static final enum c:LAW;

.field public static final enum d:LAW;

.field public static final enum e:LAW;

.field public static final enum f:LAW;

.field public static final enum g:LAW;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 20
    new-instance v0, LAW;

    const-string v1, "BOLD"

    invoke-direct {v0, v1, v3}, LAW;-><init>(Ljava/lang/String;I)V

    sput-object v0, LAW;->a:LAW;

    .line 21
    new-instance v0, LAW;

    const-string v1, "ITALIC"

    invoke-direct {v0, v1, v4}, LAW;-><init>(Ljava/lang/String;I)V

    sput-object v0, LAW;->b:LAW;

    .line 22
    new-instance v0, LAW;

    const-string v1, "UNDERLINE"

    invoke-direct {v0, v1, v5}, LAW;-><init>(Ljava/lang/String;I)V

    sput-object v0, LAW;->c:LAW;

    .line 23
    new-instance v0, LAW;

    const-string v1, "BACKGROUND"

    invoke-direct {v0, v1, v6}, LAW;-><init>(Ljava/lang/String;I)V

    sput-object v0, LAW;->d:LAW;

    .line 24
    new-instance v0, LAW;

    const-string v1, "FOREGROUND"

    invoke-direct {v0, v1, v7}, LAW;-><init>(Ljava/lang/String;I)V

    sput-object v0, LAW;->e:LAW;

    .line 25
    new-instance v0, LAW;

    const-string v1, "BULLET_TYPE"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, LAW;-><init>(Ljava/lang/String;I)V

    sput-object v0, LAW;->f:LAW;

    .line 26
    new-instance v0, LAW;

    const-string v1, "ALIGNMENT"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, LAW;-><init>(Ljava/lang/String;I)V

    sput-object v0, LAW;->g:LAW;

    .line 19
    const/4 v0, 0x7

    new-array v0, v0, [LAW;

    sget-object v1, LAW;->a:LAW;

    aput-object v1, v0, v3

    sget-object v1, LAW;->b:LAW;

    aput-object v1, v0, v4

    sget-object v1, LAW;->c:LAW;

    aput-object v1, v0, v5

    sget-object v1, LAW;->d:LAW;

    aput-object v1, v0, v6

    sget-object v1, LAW;->e:LAW;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, LAW;->f:LAW;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, LAW;->g:LAW;

    aput-object v2, v0, v1

    sput-object v0, LAW;->a:[LAW;

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
    .line 19
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)LAW;
    .registers 2
    .parameter

    .prologue
    .line 19
    const-class v0, LAW;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, LAW;

    return-object v0
.end method

.method public static values()[LAW;
    .registers 1

    .prologue
    .line 19
    sget-object v0, LAW;->a:[LAW;

    invoke-virtual {v0}, [LAW;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LAW;

    return-object v0
.end method
