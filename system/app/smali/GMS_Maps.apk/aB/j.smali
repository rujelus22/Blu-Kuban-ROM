.class public final enum LaB/j;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum a:LaB/j;

.field public static final enum b:LaB/j;

.field public static final enum c:LaB/j;

.field private static final synthetic e:[LaB/j;


# instance fields
.field public final d:I


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 41
    new-instance v0, LaB/j;

    const-string v1, "UPDATE_FREQUENCY_NONE"

    invoke-direct {v0, v1, v3, v3}, LaB/j;-><init>(Ljava/lang/String;II)V

    sput-object v0, LaB/j;->a:LaB/j;

    .line 47
    new-instance v0, LaB/j;

    const-string v1, "UPDATE_FREQUENCY_SLOW"

    const/16 v2, 0xf

    invoke-direct {v0, v1, v4, v2}, LaB/j;-><init>(Ljava/lang/String;II)V

    sput-object v0, LaB/j;->b:LaB/j;

    .line 50
    new-instance v0, LaB/j;

    const-string v1, "UPDATE_FREQUENCY_FAST"

    const/16 v2, 0x1e

    invoke-direct {v0, v1, v5, v2}, LaB/j;-><init>(Ljava/lang/String;II)V

    sput-object v0, LaB/j;->c:LaB/j;

    .line 39
    const/4 v0, 0x3

    new-array v0, v0, [LaB/j;

    sget-object v1, LaB/j;->a:LaB/j;

    aput-object v1, v0, v3

    sget-object v1, LaB/j;->b:LaB/j;

    aput-object v1, v0, v4

    sget-object v1, LaB/j;->c:LaB/j;

    aput-object v1, v0, v5

    sput-object v0, LaB/j;->e:[LaB/j;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 55
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 56
    if-nez p3, :cond_9

    const/4 v0, 0x0

    :goto_6
    iput v0, p0, LaB/j;->d:I

    .line 57
    return-void

    .line 56
    :cond_9
    const v0, 0xf4240

    div-int/2addr v0, p3

    goto :goto_6
.end method

.method public static valueOf(Ljava/lang/String;)LaB/j;
    .registers 2
    .parameter

    .prologue
    .line 39
    const-class v0, LaB/j;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, LaB/j;

    return-object v0
.end method

.method public static values()[LaB/j;
    .registers 1

    .prologue
    .line 39
    sget-object v0, LaB/j;->e:[LaB/j;

    invoke-virtual {v0}, [LaB/j;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LaB/j;

    return-object v0
.end method
