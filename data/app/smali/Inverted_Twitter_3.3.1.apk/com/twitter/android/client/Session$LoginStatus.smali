.class public final enum Lcom/twitter/android/client/Session$LoginStatus;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Lcom/twitter/android/client/Session$LoginStatus;

.field public static final enum b:Lcom/twitter/android/client/Session$LoginStatus;

.field public static final enum c:Lcom/twitter/android/client/Session$LoginStatus;

.field public static final enum d:Lcom/twitter/android/client/Session$LoginStatus;

.field private static final synthetic e:[Lcom/twitter/android/client/Session$LoginStatus;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/twitter/android/client/Session$LoginStatus;

    const-string v1, "LOGGED_OUT"

    invoke-direct {v0, v1, v2}, Lcom/twitter/android/client/Session$LoginStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/twitter/android/client/Session$LoginStatus;->a:Lcom/twitter/android/client/Session$LoginStatus;

    new-instance v0, Lcom/twitter/android/client/Session$LoginStatus;

    const-string v1, "LOGGING_IN"

    invoke-direct {v0, v1, v3}, Lcom/twitter/android/client/Session$LoginStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/twitter/android/client/Session$LoginStatus;->b:Lcom/twitter/android/client/Session$LoginStatus;

    new-instance v0, Lcom/twitter/android/client/Session$LoginStatus;

    const-string v1, "LOGGED_IN"

    invoke-direct {v0, v1, v4}, Lcom/twitter/android/client/Session$LoginStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/twitter/android/client/Session$LoginStatus;->c:Lcom/twitter/android/client/Session$LoginStatus;

    new-instance v0, Lcom/twitter/android/client/Session$LoginStatus;

    const-string v1, "LOGGING_OUT"

    invoke-direct {v0, v1, v5}, Lcom/twitter/android/client/Session$LoginStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/twitter/android/client/Session$LoginStatus;->d:Lcom/twitter/android/client/Session$LoginStatus;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/twitter/android/client/Session$LoginStatus;

    sget-object v1, Lcom/twitter/android/client/Session$LoginStatus;->a:Lcom/twitter/android/client/Session$LoginStatus;

    aput-object v1, v0, v2

    sget-object v1, Lcom/twitter/android/client/Session$LoginStatus;->b:Lcom/twitter/android/client/Session$LoginStatus;

    aput-object v1, v0, v3

    sget-object v1, Lcom/twitter/android/client/Session$LoginStatus;->c:Lcom/twitter/android/client/Session$LoginStatus;

    aput-object v1, v0, v4

    sget-object v1, Lcom/twitter/android/client/Session$LoginStatus;->d:Lcom/twitter/android/client/Session$LoginStatus;

    aput-object v1, v0, v5

    sput-object v0, Lcom/twitter/android/client/Session$LoginStatus;->e:[Lcom/twitter/android/client/Session$LoginStatus;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/twitter/android/client/Session$LoginStatus;
    .registers 2

    const-class v0, Lcom/twitter/android/client/Session$LoginStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/client/Session$LoginStatus;

    return-object v0
.end method

.method public static values()[Lcom/twitter/android/client/Session$LoginStatus;
    .registers 1

    sget-object v0, Lcom/twitter/android/client/Session$LoginStatus;->e:[Lcom/twitter/android/client/Session$LoginStatus;

    invoke-virtual {v0}, [Lcom/twitter/android/client/Session$LoginStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/twitter/android/client/Session$LoginStatus;

    return-object v0
.end method
