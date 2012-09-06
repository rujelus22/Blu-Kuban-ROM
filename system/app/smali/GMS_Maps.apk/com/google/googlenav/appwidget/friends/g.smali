.class final enum Lcom/google/googlenav/appwidget/friends/g;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum a:Lcom/google/googlenav/appwidget/friends/g;

.field public static final enum b:Lcom/google/googlenav/appwidget/friends/g;

.field public static final enum c:Lcom/google/googlenav/appwidget/friends/g;

.field public static final enum d:Lcom/google/googlenav/appwidget/friends/g;

.field public static final enum e:Lcom/google/googlenav/appwidget/friends/g;

.field public static final enum f:Lcom/google/googlenav/appwidget/friends/g;

.field public static final enum g:Lcom/google/googlenav/appwidget/friends/g;

.field public static final enum h:Lcom/google/googlenav/appwidget/friends/g;

.field private static final synthetic i:[Lcom/google/googlenav/appwidget/friends/g;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 173
    new-instance v0, Lcom/google/googlenav/appwidget/friends/g;

    const-string v1, "NOT_STARTED"

    invoke-direct {v0, v1, v3}, Lcom/google/googlenav/appwidget/friends/g;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/googlenav/appwidget/friends/g;->a:Lcom/google/googlenav/appwidget/friends/g;

    .line 174
    new-instance v0, Lcom/google/googlenav/appwidget/friends/g;

    const-string v1, "NEEDS_FETCH"

    invoke-direct {v0, v1, v4}, Lcom/google/googlenav/appwidget/friends/g;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/googlenav/appwidget/friends/g;->b:Lcom/google/googlenav/appwidget/friends/g;

    .line 175
    new-instance v0, Lcom/google/googlenav/appwidget/friends/g;

    const-string v1, "FETCHING"

    invoke-direct {v0, v1, v5}, Lcom/google/googlenav/appwidget/friends/g;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/googlenav/appwidget/friends/g;->c:Lcom/google/googlenav/appwidget/friends/g;

    .line 176
    new-instance v0, Lcom/google/googlenav/appwidget/friends/g;

    const-string v1, "FETCHED"

    invoke-direct {v0, v1, v6}, Lcom/google/googlenav/appwidget/friends/g;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/googlenav/appwidget/friends/g;->d:Lcom/google/googlenav/appwidget/friends/g;

    .line 177
    new-instance v0, Lcom/google/googlenav/appwidget/friends/g;

    const-string v1, "FAILED"

    invoke-direct {v0, v1, v7}, Lcom/google/googlenav/appwidget/friends/g;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/googlenav/appwidget/friends/g;->e:Lcom/google/googlenav/appwidget/friends/g;

    .line 178
    new-instance v0, Lcom/google/googlenav/appwidget/friends/g;

    const-string v1, "FINISH"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/google/googlenav/appwidget/friends/g;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/googlenav/appwidget/friends/g;->f:Lcom/google/googlenav/appwidget/friends/g;

    .line 179
    new-instance v0, Lcom/google/googlenav/appwidget/friends/g;

    const-string v1, "STOPPED"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/google/googlenav/appwidget/friends/g;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/googlenav/appwidget/friends/g;->g:Lcom/google/googlenav/appwidget/friends/g;

    .line 180
    new-instance v0, Lcom/google/googlenav/appwidget/friends/g;

    const-string v1, "NOT_SIGNED_IN_FAILURE"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/google/googlenav/appwidget/friends/g;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/googlenav/appwidget/friends/g;->h:Lcom/google/googlenav/appwidget/friends/g;

    .line 172
    const/16 v0, 0x8

    new-array v0, v0, [Lcom/google/googlenav/appwidget/friends/g;

    sget-object v1, Lcom/google/googlenav/appwidget/friends/g;->a:Lcom/google/googlenav/appwidget/friends/g;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/googlenav/appwidget/friends/g;->b:Lcom/google/googlenav/appwidget/friends/g;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/googlenav/appwidget/friends/g;->c:Lcom/google/googlenav/appwidget/friends/g;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/googlenav/appwidget/friends/g;->d:Lcom/google/googlenav/appwidget/friends/g;

    aput-object v1, v0, v6

    sget-object v1, Lcom/google/googlenav/appwidget/friends/g;->e:Lcom/google/googlenav/appwidget/friends/g;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/google/googlenav/appwidget/friends/g;->f:Lcom/google/googlenav/appwidget/friends/g;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/google/googlenav/appwidget/friends/g;->g:Lcom/google/googlenav/appwidget/friends/g;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/google/googlenav/appwidget/friends/g;->h:Lcom/google/googlenav/appwidget/friends/g;

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/googlenav/appwidget/friends/g;->i:[Lcom/google/googlenav/appwidget/friends/g;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 172
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/googlenav/appwidget/friends/g;
    .registers 2
    .parameter

    .prologue
    .line 172
    const-class v0, Lcom/google/googlenav/appwidget/friends/g;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/appwidget/friends/g;

    return-object v0
.end method

.method public static values()[Lcom/google/googlenav/appwidget/friends/g;
    .registers 1

    .prologue
    .line 172
    sget-object v0, Lcom/google/googlenav/appwidget/friends/g;->i:[Lcom/google/googlenav/appwidget/friends/g;

    invoke-virtual {v0}, [Lcom/google/googlenav/appwidget/friends/g;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/googlenav/appwidget/friends/g;

    return-object v0
.end method
