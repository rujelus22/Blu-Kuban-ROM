.class public final enum Lcom/google/googlenav/z;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum a:Lcom/google/googlenav/z;

.field public static final enum b:Lcom/google/googlenav/z;

.field public static final enum c:Lcom/google/googlenav/z;

.field public static final enum d:Lcom/google/googlenav/z;

.field public static final enum e:Lcom/google/googlenav/z;

.field public static final enum f:Lcom/google/googlenav/z;

.field public static final enum g:Lcom/google/googlenav/z;

.field private static final synthetic j:[Lcom/google/googlenav/z;


# instance fields
.field public final h:Ljava/lang/String;

.field private final i:Z


# direct methods
.method static constructor <clinit>()V
    .registers 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 49
    new-instance v0, Lcom/google/googlenav/z;

    const-string v1, "STARTUP_GMM"

    const-string v2, "GMM startup"

    invoke-direct {v0, v1, v5, v2, v4}, Lcom/google/googlenav/z;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v0, Lcom/google/googlenav/z;->a:Lcom/google/googlenav/z;

    .line 50
    new-instance v0, Lcom/google/googlenav/z;

    const-string v1, "STARTUP_DRIVEABOUT"

    const-string v2, "Driveabout startup"

    invoke-direct {v0, v1, v4, v2, v4}, Lcom/google/googlenav/z;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v0, Lcom/google/googlenav/z;->b:Lcom/google/googlenav/z;

    .line 51
    new-instance v0, Lcom/google/googlenav/z;

    const-string v1, "STARTUP_COMMON"

    const-string v2, "GMM or Driveabout startup"

    invoke-direct {v0, v1, v6, v2, v4}, Lcom/google/googlenav/z;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v0, Lcom/google/googlenav/z;->c:Lcom/google/googlenav/z;

    .line 52
    new-instance v0, Lcom/google/googlenav/z;

    const-string v1, "TERMS_AND_CONDITIONS"

    const-string v2, "Term and conditions"

    invoke-direct {v0, v1, v7, v2, v4}, Lcom/google/googlenav/z;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v0, Lcom/google/googlenav/z;->d:Lcom/google/googlenav/z;

    .line 53
    new-instance v0, Lcom/google/googlenav/z;

    const-string v1, "ON_RESUME"

    const-string v2, "On resume"

    invoke-direct {v0, v1, v8, v2, v5}, Lcom/google/googlenav/z;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v0, Lcom/google/googlenav/z;->e:Lcom/google/googlenav/z;

    .line 57
    new-instance v0, Lcom/google/googlenav/z;

    const-string v1, "GENERAL"

    const/4 v2, 0x5

    const-string v3, "General"

    invoke-direct {v0, v1, v2, v3, v5}, Lcom/google/googlenav/z;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v0, Lcom/google/googlenav/z;->f:Lcom/google/googlenav/z;

    .line 58
    new-instance v0, Lcom/google/googlenav/z;

    const-string v1, "GENERAL_ONE_TIME"

    const/4 v2, 0x6

    const-string v3, "General one time"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/googlenav/z;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v0, Lcom/google/googlenav/z;->g:Lcom/google/googlenav/z;

    .line 48
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/google/googlenav/z;

    sget-object v1, Lcom/google/googlenav/z;->a:Lcom/google/googlenav/z;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/googlenav/z;->b:Lcom/google/googlenav/z;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/googlenav/z;->c:Lcom/google/googlenav/z;

    aput-object v1, v0, v6

    sget-object v1, Lcom/google/googlenav/z;->d:Lcom/google/googlenav/z;

    aput-object v1, v0, v7

    sget-object v1, Lcom/google/googlenav/z;->e:Lcom/google/googlenav/z;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/google/googlenav/z;->f:Lcom/google/googlenav/z;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/google/googlenav/z;->g:Lcom/google/googlenav/z;

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/googlenav/z;->j:[Lcom/google/googlenav/z;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Z)V
    .registers 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 63
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 64
    iput-object p3, p0, Lcom/google/googlenav/z;->h:Ljava/lang/String;

    .line 65
    iput-boolean p4, p0, Lcom/google/googlenav/z;->i:Z

    .line 66
    return-void
.end method

.method static synthetic a(Lcom/google/googlenav/z;)Z
    .registers 2
    .parameter

    .prologue
    .line 48
    iget-boolean v0, p0, Lcom/google/googlenav/z;->i:Z

    return v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/googlenav/z;
    .registers 2
    .parameter

    .prologue
    .line 48
    const-class v0, Lcom/google/googlenav/z;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/z;

    return-object v0
.end method

.method public static values()[Lcom/google/googlenav/z;
    .registers 1

    .prologue
    .line 48
    sget-object v0, Lcom/google/googlenav/z;->j:[Lcom/google/googlenav/z;

    invoke-virtual {v0}, [Lcom/google/googlenav/z;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/googlenav/z;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 70
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/google/googlenav/z;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "[oneTime = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/google/googlenav/z;->i:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
