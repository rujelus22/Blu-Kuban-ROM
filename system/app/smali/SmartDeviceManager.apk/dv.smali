.class public final enum Ldv;
.super Ljava/lang/Enum;
.source "a"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Ldv;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Ldv;

.field public static final enum b:Ldv;

.field public static final enum c:Ldv;

.field public static final enum d:Ldv;

.field public static final enum e:Ldv;

.field public static final enum f:Ldv;

.field private static final synthetic i:[Ldv;


# instance fields
.field private final g:Ljava/lang/String;

.field private final h:I


# direct methods
.method static constructor <clinit>()V
    .registers 10

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 4
    new-instance v0, Ldv;

    const-string v1, "GPS_LOCATION_UNAVAILABLE"

    const-string v2, "GPS_LOCATION_UNAVAILABLE"

    const/16 v3, 0x64

    invoke-direct {v0, v1, v5, v2, v3}, Ldv;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Ldv;->a:Ldv;

    .line 5
    new-instance v0, Ldv;

    const-string v1, "GPS_LOCATION_TIMEOUT"

    const-string v2, "GPS_LOCATION_TIMEOUT"

    const/16 v3, 0x65

    invoke-direct {v0, v1, v6, v2, v3}, Ldv;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Ldv;->b:Ldv;

    .line 6
    new-instance v0, Ldv;

    const-string v1, "GPS_LOCATION_INSUFFICIENT_ACCURACY"

    const-string v2, "GPS_LOCATION_INSUFFICIENT_ACCURACY"

    const/16 v3, 0x66

    invoke-direct {v0, v1, v7, v2, v3}, Ldv;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Ldv;->c:Ldv;

    .line 7
    new-instance v0, Ldv;

    const-string v1, "NETWORK_LOCATION_UNAVAILABLE"

    const-string v2, "NETWORK_LOCATION_UNAVAILABLE"

    const/16 v3, 0x6e

    invoke-direct {v0, v1, v8, v2, v3}, Ldv;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Ldv;->d:Ldv;

    .line 8
    new-instance v0, Ldv;

    const-string v1, "NETWORK_LOCATION_TIMEOUT"

    const-string v2, "NETWORK_LOCATION_TIMEOUT"

    const/16 v3, 0x6f

    invoke-direct {v0, v1, v9, v2, v3}, Ldv;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Ldv;->e:Ldv;

    .line 9
    new-instance v0, Ldv;

    const-string v1, "NETWORK_LOCATION_LOCATION_INSUFFICIENT_ACCURACY"

    const/4 v2, 0x5

    const-string v3, "NETWORK_LOCATION_LOCATION_INSUFFICIENT_ACCURACY"

    const/16 v4, 0x70

    invoke-direct {v0, v1, v2, v3, v4}, Ldv;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Ldv;->f:Ldv;

    .line 3
    const/4 v0, 0x6

    new-array v0, v0, [Ldv;

    sget-object v1, Ldv;->a:Ldv;

    aput-object v1, v0, v5

    sget-object v1, Ldv;->b:Ldv;

    aput-object v1, v0, v6

    sget-object v1, Ldv;->c:Ldv;

    aput-object v1, v0, v7

    sget-object v1, Ldv;->d:Ldv;

    aput-object v1, v0, v8

    sget-object v1, Ldv;->e:Ldv;

    aput-object v1, v0, v9

    const/4 v1, 0x5

    sget-object v2, Ldv;->f:Ldv;

    aput-object v2, v0, v1

    sput-object v0, Ldv;->i:[Ldv;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;I)V
    .registers 5
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 14
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 15
    iput-object p3, p0, Ldv;->g:Ljava/lang/String;

    .line 16
    iput p4, p0, Ldv;->h:I

    .line 17
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Ldv;
    .registers 2
    .parameter

    .prologue
    .line 3
    const-class v0, Ldv;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Ldv;

    return-object p0
.end method

.method public static values()[Ldv;
    .registers 1

    .prologue
    .line 3
    sget-object v0, Ldv;->i:[Ldv;

    invoke-virtual {v0}, [Ldv;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ldv;

    return-object v0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .registers 2

    .prologue
    .line 20
    iget-object v0, p0, Ldv;->g:Ljava/lang/String;

    return-object v0
.end method

.method public final b()I
    .registers 2

    .prologue
    .line 24
    iget v0, p0, Ldv;->h:I

    return v0
.end method
