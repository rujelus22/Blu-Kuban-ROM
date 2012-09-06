.class public final enum Ls/w;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum a:Ls/w;

.field public static final enum b:Ls/w;

.field public static final enum c:Ls/w;

.field public static final enum d:Ls/w;

.field public static final enum e:Ls/w;

.field public static final enum f:Ls/w;

.field public static final enum g:Ls/w;

.field public static final enum h:Ls/w;

.field public static final enum i:Ls/w;

.field public static final enum j:Ls/w;

.field public static final enum k:Ls/w;

.field public static final enum l:Ls/w;

.field private static final synthetic n:[Ls/w;


# instance fields
.field private final m:Ljava/lang/Class;


# direct methods
.method static constructor <clinit>()V
    .registers 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 130
    new-instance v0, Ls/w;

    const-string v1, "START"

    const-class v2, Ls/m;

    invoke-direct {v0, v1, v4, v2}, Ls/w;-><init>(Ljava/lang/String;ILjava/lang/Class;)V

    sput-object v0, Ls/w;->a:Ls/w;

    .line 131
    new-instance v0, Ls/w;

    const-string v1, "WAIT_FOR_LOCATION"

    const-class v2, Ls/A;

    invoke-direct {v0, v1, v5, v2}, Ls/w;-><init>(Ljava/lang/String;ILjava/lang/Class;)V

    sput-object v0, Ls/w;->b:Ls/w;

    .line 132
    new-instance v0, Ls/w;

    const-string v1, "WAIT_FOR_NAV_AVAILABILITY"

    const-class v2, Ls/B;

    invoke-direct {v0, v1, v6, v2}, Ls/w;-><init>(Ljava/lang/String;ILjava/lang/Class;)V

    sput-object v0, Ls/w;->c:Ls/w;

    .line 133
    new-instance v0, Ls/w;

    const-string v1, "WAIT_FOR_DIRECTIONS"

    const-class v2, Ls/y;

    invoke-direct {v0, v1, v7, v2}, Ls/w;-><init>(Ljava/lang/String;ILjava/lang/Class;)V

    sput-object v0, Ls/w;->d:Ls/w;

    .line 134
    new-instance v0, Ls/w;

    const-string v1, "WAIT_FOR_ACTIVITY"

    const-class v2, Ls/x;

    invoke-direct {v0, v1, v8, v2}, Ls/w;-><init>(Ljava/lang/String;ILjava/lang/Class;)V

    sput-object v0, Ls/w;->e:Ls/w;

    .line 135
    new-instance v0, Ls/w;

    const-string v1, "ROUTE_OVERVIEW"

    const/4 v2, 0x5

    const-class v3, Ls/k;

    invoke-direct {v0, v1, v2, v3}, Ls/w;-><init>(Ljava/lang/String;ILjava/lang/Class;)V

    sput-object v0, Ls/w;->f:Ls/w;

    .line 136
    new-instance v0, Ls/w;

    const-string v1, "LIST_VIEW"

    const/4 v2, 0x6

    const-class v3, Ls/j;

    invoke-direct {v0, v1, v2, v3}, Ls/w;-><init>(Ljava/lang/String;ILjava/lang/Class;)V

    sput-object v0, Ls/w;->g:Ls/w;

    .line 137
    new-instance v0, Ls/w;

    const-string v1, "FOLLOW_LOCATION"

    const/4 v2, 0x7

    const-class v3, Ls/a;

    invoke-direct {v0, v1, v2, v3}, Ls/w;-><init>(Ljava/lang/String;ILjava/lang/Class;)V

    sput-object v0, Ls/w;->h:Ls/w;

    .line 138
    new-instance v0, Ls/w;

    const-string v1, "FREE_MOVEMENT"

    const/16 v2, 0x8

    const-class v3, Ls/c;

    invoke-direct {v0, v1, v2, v3}, Ls/w;-><init>(Ljava/lang/String;ILjava/lang/Class;)V

    sput-object v0, Ls/w;->i:Ls/w;

    .line 139
    new-instance v0, Ls/w;

    const-string v1, "INSPECT_STEP_MAP"

    const/16 v2, 0x9

    const-class v3, Ls/e;

    invoke-direct {v0, v1, v2, v3}, Ls/w;-><init>(Ljava/lang/String;ILjava/lang/Class;)V

    sput-object v0, Ls/w;->j:Ls/w;

    .line 140
    new-instance v0, Ls/w;

    const-string v1, "INSPECT_TRAFFIC"

    const/16 v2, 0xa

    const-class v3, Ls/g;

    invoke-direct {v0, v1, v2, v3}, Ls/w;-><init>(Ljava/lang/String;ILjava/lang/Class;)V

    sput-object v0, Ls/w;->k:Ls/w;

    .line 141
    new-instance v0, Ls/w;

    const-string v1, "INSPECT_NAVIGATION_IMAGE"

    const/16 v2, 0xb

    const-class v3, Ls/d;

    invoke-direct {v0, v1, v2, v3}, Ls/w;-><init>(Ljava/lang/String;ILjava/lang/Class;)V

    sput-object v0, Ls/w;->l:Ls/w;

    .line 129
    const/16 v0, 0xc

    new-array v0, v0, [Ls/w;

    sget-object v1, Ls/w;->a:Ls/w;

    aput-object v1, v0, v4

    sget-object v1, Ls/w;->b:Ls/w;

    aput-object v1, v0, v5

    sget-object v1, Ls/w;->c:Ls/w;

    aput-object v1, v0, v6

    sget-object v1, Ls/w;->d:Ls/w;

    aput-object v1, v0, v7

    sget-object v1, Ls/w;->e:Ls/w;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Ls/w;->f:Ls/w;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Ls/w;->g:Ls/w;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Ls/w;->h:Ls/w;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Ls/w;->i:Ls/w;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Ls/w;->j:Ls/w;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Ls/w;->k:Ls/w;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Ls/w;->l:Ls/w;

    aput-object v2, v0, v1

    sput-object v0, Ls/w;->n:[Ls/w;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/Class;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 145
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 146
    iput-object p3, p0, Ls/w;->m:Ljava/lang/Class;

    .line 147
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Ls/w;
    .registers 2
    .parameter

    .prologue
    .line 129
    const-class v0, Ls/w;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Ls/w;

    return-object v0
.end method

.method public static values()[Ls/w;
    .registers 1

    .prologue
    .line 129
    sget-object v0, Ls/w;->n:[Ls/w;

    invoke-virtual {v0}, [Ls/w;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ls/w;

    return-object v0
.end method


# virtual methods
.method a(Ls/n;)Ls/q;
    .registers 4
    .parameter

    .prologue
    .line 154
    :try_start_0
    iget-object v0, p0, Ls/w;->m:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ls/q;

    .line 155
    invoke-static {v0, p0}, Ls/q;->a(Ls/q;Ls/w;)Ls/w;

    .line 156
    iput-object p1, v0, Ls/q;->a:Ls/n;
    :try_end_d
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_d} :catch_e
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_d} :catch_15

    .line 157
    return-object v0

    .line 158
    :catch_e
    move-exception v0

    .line 159
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 160
    :catch_15
    move-exception v0

    .line 161
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
