.class public final enum LC/S;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum a:LC/S;

.field public static final enum b:LC/S;

.field public static final enum c:LC/S;

.field private static final synthetic e:[LC/S;


# instance fields
.field private final d:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 23
    new-instance v0, LC/S;

    const-string v1, "GPS"

    const-string v2, "gps"

    invoke-direct {v0, v1, v3, v2}, LC/S;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, LC/S;->a:LC/S;

    .line 24
    new-instance v0, LC/S;

    const-string v1, "NETWORK"

    const-string v2, "network"

    invoke-direct {v0, v1, v4, v2}, LC/S;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, LC/S;->b:LC/S;

    .line 25
    new-instance v0, LC/S;

    const-string v1, "TIMER"

    const-string v2, "speed_provider"

    invoke-direct {v0, v1, v5, v2}, LC/S;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, LC/S;->c:LC/S;

    .line 22
    const/4 v0, 0x3

    new-array v0, v0, [LC/S;

    sget-object v1, LC/S;->a:LC/S;

    aput-object v1, v0, v3

    sget-object v1, LC/S;->b:LC/S;

    aput-object v1, v0, v4

    sget-object v1, LC/S;->c:LC/S;

    aput-object v1, v0, v5

    sput-object v0, LC/S;->e:[LC/S;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 31
    iput-object p3, p0, LC/S;->d:Ljava/lang/String;

    .line 32
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)LC/S;
    .registers 2
    .parameter

    .prologue
    .line 22
    const-class v0, LC/S;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, LC/S;

    return-object v0
.end method

.method public static values()[LC/S;
    .registers 1

    .prologue
    .line 22
    sget-object v0, LC/S;->e:[LC/S;

    invoke-virtual {v0}, [LC/S;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LC/S;

    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    .prologue
    .line 38
    iget-object v0, p0, LC/S;->d:Ljava/lang/String;

    return-object v0
.end method
