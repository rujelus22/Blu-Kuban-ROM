.class public final enum LsU;
.super Ljava/lang/Enum;
.source "TimeRange.java"

# interfaces
.implements LsM;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "LsU;",
        ">;",
        "LsM;"
    }
.end annotation


# static fields
.field public static final enum a:LsU;

.field private static final synthetic a:[LsU;

.field public static final enum b:LsU;

.field public static final enum c:LsU;

.field public static final enum d:LsU;

.field public static final enum e:LsU;

.field public static final enum f:LsU;

.field public static final enum g:LsU;


# instance fields
.field private final a:I


# direct methods
.method static constructor <clinit>()V
    .registers 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 15
    new-instance v0, LsU;

    const-string v1, "SAME_AS_PREVIOUS"

    const/4 v2, -0x1

    invoke-direct {v0, v1, v4, v2}, LsU;-><init>(Ljava/lang/String;II)V

    sput-object v0, LsU;->a:LsU;

    .line 16
    new-instance v0, LsU;

    const-string v1, "TODAY"

    sget v2, LcY;->today:I

    invoke-direct {v0, v1, v5, v2}, LsU;-><init>(Ljava/lang/String;II)V

    sput-object v0, LsU;->b:LsU;

    .line 17
    new-instance v0, LsU;

    const-string v1, "YESTERDAY"

    sget v2, LcY;->yesterday:I

    invoke-direct {v0, v1, v6, v2}, LsU;-><init>(Ljava/lang/String;II)V

    sput-object v0, LsU;->c:LsU;

    .line 18
    new-instance v0, LsU;

    const-string v1, "THIS_WEEK"

    sget v2, LcY;->this_week:I

    invoke-direct {v0, v1, v7, v2}, LsU;-><init>(Ljava/lang/String;II)V

    sput-object v0, LsU;->d:LsU;

    .line 19
    new-instance v0, LsU;

    const-string v1, "THIS_MONTH"

    sget v2, LcY;->this_month:I

    invoke-direct {v0, v1, v8, v2}, LsU;-><init>(Ljava/lang/String;II)V

    sput-object v0, LsU;->e:LsU;

    .line 20
    new-instance v0, LsU;

    const-string v1, "THIS_YEAR"

    const/4 v2, 0x5

    sget v3, LcY;->this_year:I

    invoke-direct {v0, v1, v2, v3}, LsU;-><init>(Ljava/lang/String;II)V

    sput-object v0, LsU;->f:LsU;

    .line 21
    new-instance v0, LsU;

    const-string v1, "OLDER"

    const/4 v2, 0x6

    sget v3, LcY;->older:I

    invoke-direct {v0, v1, v2, v3}, LsU;-><init>(Ljava/lang/String;II)V

    sput-object v0, LsU;->g:LsU;

    .line 14
    const/4 v0, 0x7

    new-array v0, v0, [LsU;

    sget-object v1, LsU;->a:LsU;

    aput-object v1, v0, v4

    sget-object v1, LsU;->b:LsU;

    aput-object v1, v0, v5

    sget-object v1, LsU;->c:LsU;

    aput-object v1, v0, v6

    sget-object v1, LsU;->d:LsU;

    aput-object v1, v0, v7

    sget-object v1, LsU;->e:LsU;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, LsU;->f:LsU;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, LsU;->g:LsU;

    aput-object v2, v0, v1

    sput-object v0, LsU;->a:[LsU;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 105
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 106
    iput p3, p0, LsU;->a:I

    .line 107
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)LsU;
    .registers 2
    .parameter

    .prologue
    .line 14
    const-class v0, LsU;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, LsU;

    return-object v0
.end method

.method public static values()[LsU;
    .registers 1

    .prologue
    .line 14
    sget-object v0, LsU;->a:[LsU;

    invoke-virtual {v0}, [LsU;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LsU;

    return-object v0
.end method


# virtual methods
.method public a()I
    .registers 2

    .prologue
    .line 111
    iget v0, p0, LsU;->a:I

    return v0
.end method

.method public a()Ljava/lang/String;
    .registers 2

    .prologue
    .line 116
    const/4 v0, 0x0

    return-object v0
.end method

.method public a()Z
    .registers 3

    .prologue
    .line 121
    iget v0, p0, LsU;->a:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method
