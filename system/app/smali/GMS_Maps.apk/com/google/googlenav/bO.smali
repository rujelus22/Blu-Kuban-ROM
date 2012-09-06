.class public final enum Lcom/google/googlenav/bo;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum a:Lcom/google/googlenav/bo;

.field public static final enum b:Lcom/google/googlenav/bo;

.field public static final enum c:Lcom/google/googlenav/bo;

.field private static final synthetic d:[Lcom/google/googlenav/bo;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 55
    new-instance v0, Lcom/google/googlenav/bo;

    const-string v1, "SUBMIT_RATING"

    invoke-direct {v0, v1, v2}, Lcom/google/googlenav/bo;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/googlenav/bo;->a:Lcom/google/googlenav/bo;

    .line 56
    new-instance v0, Lcom/google/googlenav/bo;

    const-string v1, "UPLOAD_PHOTO"

    invoke-direct {v0, v1, v3}, Lcom/google/googlenav/bo;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/googlenav/bo;->b:Lcom/google/googlenav/bo;

    .line 57
    new-instance v0, Lcom/google/googlenav/bo;

    const-string v1, "LANDING_PAGE_PROMO"

    invoke-direct {v0, v1, v4}, Lcom/google/googlenav/bo;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/googlenav/bo;->c:Lcom/google/googlenav/bo;

    .line 54
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/google/googlenav/bo;

    sget-object v1, Lcom/google/googlenav/bo;->a:Lcom/google/googlenav/bo;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/googlenav/bo;->b:Lcom/google/googlenav/bo;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/googlenav/bo;->c:Lcom/google/googlenav/bo;

    aput-object v1, v0, v4

    sput-object v0, Lcom/google/googlenav/bo;->d:[Lcom/google/googlenav/bo;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 54
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/googlenav/bo;
    .registers 2
    .parameter

    .prologue
    .line 54
    const-class v0, Lcom/google/googlenav/bo;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/bo;

    return-object v0
.end method

.method public static values()[Lcom/google/googlenav/bo;
    .registers 1

    .prologue
    .line 54
    sget-object v0, Lcom/google/googlenav/bo;->d:[Lcom/google/googlenav/bo;

    invoke-virtual {v0}, [Lcom/google/googlenav/bo;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/googlenav/bo;

    return-object v0
.end method
