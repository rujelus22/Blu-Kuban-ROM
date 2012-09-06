.class public final enum Lcom/dropbox/android/taskqueue/m;
.super Ljava/lang/Enum;
.source "panda.py"


# static fields
.field public static final enum a:Lcom/dropbox/android/taskqueue/m;

.field public static final enum b:Lcom/dropbox/android/taskqueue/m;

.field public static final enum c:Lcom/dropbox/android/taskqueue/m;

.field public static final enum d:Lcom/dropbox/android/taskqueue/m;

.field public static final enum e:Lcom/dropbox/android/taskqueue/m;

.field public static final enum f:Lcom/dropbox/android/taskqueue/m;

.field public static final enum g:Lcom/dropbox/android/taskqueue/m;

.field public static final enum h:Lcom/dropbox/android/taskqueue/m;

.field public static final enum i:Lcom/dropbox/android/taskqueue/m;

.field public static final enum j:Lcom/dropbox/android/taskqueue/m;

.field public static final enum k:Lcom/dropbox/android/taskqueue/m;

.field public static final enum l:Lcom/dropbox/android/taskqueue/m;

.field public static final enum m:Lcom/dropbox/android/taskqueue/m;

.field public static final enum n:Lcom/dropbox/android/taskqueue/m;

.field private static final synthetic q:[Lcom/dropbox/android/taskqueue/m;


# instance fields
.field private final o:Lcom/dropbox/android/taskqueue/n;

.field private final p:Z


# direct methods
.method static constructor <clinit>()V
    .registers 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 36
    new-instance v0, Lcom/dropbox/android/taskqueue/m;

    const-string v1, "NONE"

    sget-object v2, Lcom/dropbox/android/taskqueue/n;->c:Lcom/dropbox/android/taskqueue/n;

    invoke-direct {v0, v1, v4, v2, v5}, Lcom/dropbox/android/taskqueue/m;-><init>(Ljava/lang/String;ILcom/dropbox/android/taskqueue/n;Z)V

    sput-object v0, Lcom/dropbox/android/taskqueue/m;->a:Lcom/dropbox/android/taskqueue/m;

    .line 37
    new-instance v0, Lcom/dropbox/android/taskqueue/m;

    const-string v1, "SUCCESS"

    sget-object v2, Lcom/dropbox/android/taskqueue/n;->a:Lcom/dropbox/android/taskqueue/n;

    invoke-direct {v0, v1, v5, v2, v4}, Lcom/dropbox/android/taskqueue/m;-><init>(Ljava/lang/String;ILcom/dropbox/android/taskqueue/n;Z)V

    sput-object v0, Lcom/dropbox/android/taskqueue/m;->b:Lcom/dropbox/android/taskqueue/m;

    .line 38
    new-instance v0, Lcom/dropbox/android/taskqueue/m;

    const-string v1, "NETWORK_ERROR"

    sget-object v2, Lcom/dropbox/android/taskqueue/n;->b:Lcom/dropbox/android/taskqueue/n;

    invoke-direct {v0, v1, v6, v2, v5}, Lcom/dropbox/android/taskqueue/m;-><init>(Ljava/lang/String;ILcom/dropbox/android/taskqueue/n;Z)V

    sput-object v0, Lcom/dropbox/android/taskqueue/m;->c:Lcom/dropbox/android/taskqueue/m;

    .line 39
    new-instance v0, Lcom/dropbox/android/taskqueue/m;

    const-string v1, "PERM_NETWORK_ERROR"

    sget-object v2, Lcom/dropbox/android/taskqueue/n;->b:Lcom/dropbox/android/taskqueue/n;

    invoke-direct {v0, v1, v7, v2, v4}, Lcom/dropbox/android/taskqueue/m;-><init>(Ljava/lang/String;ILcom/dropbox/android/taskqueue/n;Z)V

    sput-object v0, Lcom/dropbox/android/taskqueue/m;->d:Lcom/dropbox/android/taskqueue/m;

    .line 40
    new-instance v0, Lcom/dropbox/android/taskqueue/m;

    const-string v1, "STORAGE_ERROR"

    sget-object v2, Lcom/dropbox/android/taskqueue/n;->b:Lcom/dropbox/android/taskqueue/n;

    invoke-direct {v0, v1, v8, v2, v4}, Lcom/dropbox/android/taskqueue/m;-><init>(Ljava/lang/String;ILcom/dropbox/android/taskqueue/n;Z)V

    sput-object v0, Lcom/dropbox/android/taskqueue/m;->e:Lcom/dropbox/android/taskqueue/m;

    .line 41
    new-instance v0, Lcom/dropbox/android/taskqueue/m;

    const-string v1, "SECURITY_ERROR"

    const/4 v2, 0x5

    sget-object v3, Lcom/dropbox/android/taskqueue/n;->b:Lcom/dropbox/android/taskqueue/n;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/dropbox/android/taskqueue/m;-><init>(Ljava/lang/String;ILcom/dropbox/android/taskqueue/n;Z)V

    sput-object v0, Lcom/dropbox/android/taskqueue/m;->f:Lcom/dropbox/android/taskqueue/m;

    .line 42
    new-instance v0, Lcom/dropbox/android/taskqueue/m;

    const-string v1, "MEMORY_ERROR"

    const/4 v2, 0x6

    sget-object v3, Lcom/dropbox/android/taskqueue/n;->b:Lcom/dropbox/android/taskqueue/n;

    invoke-direct {v0, v1, v2, v3, v5}, Lcom/dropbox/android/taskqueue/m;-><init>(Ljava/lang/String;ILcom/dropbox/android/taskqueue/n;Z)V

    sput-object v0, Lcom/dropbox/android/taskqueue/m;->g:Lcom/dropbox/android/taskqueue/m;

    .line 43
    new-instance v0, Lcom/dropbox/android/taskqueue/m;

    const-string v1, "TEMP_SERVER_ERROR"

    const/4 v2, 0x7

    sget-object v3, Lcom/dropbox/android/taskqueue/n;->b:Lcom/dropbox/android/taskqueue/n;

    invoke-direct {v0, v1, v2, v3, v5}, Lcom/dropbox/android/taskqueue/m;-><init>(Ljava/lang/String;ILcom/dropbox/android/taskqueue/n;Z)V

    sput-object v0, Lcom/dropbox/android/taskqueue/m;->h:Lcom/dropbox/android/taskqueue/m;

    .line 44
    new-instance v0, Lcom/dropbox/android/taskqueue/m;

    const-string v1, "TEMP_LOCAL_ERROR"

    const/16 v2, 0x8

    sget-object v3, Lcom/dropbox/android/taskqueue/n;->b:Lcom/dropbox/android/taskqueue/n;

    invoke-direct {v0, v1, v2, v3, v5}, Lcom/dropbox/android/taskqueue/m;-><init>(Ljava/lang/String;ILcom/dropbox/android/taskqueue/n;Z)V

    sput-object v0, Lcom/dropbox/android/taskqueue/m;->i:Lcom/dropbox/android/taskqueue/m;

    .line 45
    new-instance v0, Lcom/dropbox/android/taskqueue/m;

    const-string v1, "CANCELED"

    const/16 v2, 0x9

    sget-object v3, Lcom/dropbox/android/taskqueue/n;->b:Lcom/dropbox/android/taskqueue/n;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/dropbox/android/taskqueue/m;-><init>(Ljava/lang/String;ILcom/dropbox/android/taskqueue/n;Z)V

    sput-object v0, Lcom/dropbox/android/taskqueue/m;->j:Lcom/dropbox/android/taskqueue/m;

    .line 46
    new-instance v0, Lcom/dropbox/android/taskqueue/m;

    const-string v1, "NOT_ENOUGH_QUOTA"

    const/16 v2, 0xa

    sget-object v3, Lcom/dropbox/android/taskqueue/n;->c:Lcom/dropbox/android/taskqueue/n;

    invoke-direct {v0, v1, v2, v3, v5}, Lcom/dropbox/android/taskqueue/m;-><init>(Ljava/lang/String;ILcom/dropbox/android/taskqueue/n;Z)V

    sput-object v0, Lcom/dropbox/android/taskqueue/m;->k:Lcom/dropbox/android/taskqueue/m;

    .line 47
    new-instance v0, Lcom/dropbox/android/taskqueue/m;

    const-string v1, "ALMOST_NOT_ENOUGH_QUOTA"

    const/16 v2, 0xb

    sget-object v3, Lcom/dropbox/android/taskqueue/n;->c:Lcom/dropbox/android/taskqueue/n;

    invoke-direct {v0, v1, v2, v3, v5}, Lcom/dropbox/android/taskqueue/m;-><init>(Ljava/lang/String;ILcom/dropbox/android/taskqueue/n;Z)V

    sput-object v0, Lcom/dropbox/android/taskqueue/m;->l:Lcom/dropbox/android/taskqueue/m;

    .line 48
    new-instance v0, Lcom/dropbox/android/taskqueue/m;

    const-string v1, "FAILURE"

    const/16 v2, 0xc

    sget-object v3, Lcom/dropbox/android/taskqueue/n;->b:Lcom/dropbox/android/taskqueue/n;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/dropbox/android/taskqueue/m;-><init>(Ljava/lang/String;ILcom/dropbox/android/taskqueue/n;Z)V

    sput-object v0, Lcom/dropbox/android/taskqueue/m;->m:Lcom/dropbox/android/taskqueue/m;

    .line 49
    new-instance v0, Lcom/dropbox/android/taskqueue/m;

    const-string v1, "FORBIDDEN"

    const/16 v2, 0xd

    sget-object v3, Lcom/dropbox/android/taskqueue/n;->b:Lcom/dropbox/android/taskqueue/n;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/dropbox/android/taskqueue/m;-><init>(Ljava/lang/String;ILcom/dropbox/android/taskqueue/n;Z)V

    sput-object v0, Lcom/dropbox/android/taskqueue/m;->n:Lcom/dropbox/android/taskqueue/m;

    .line 35
    const/16 v0, 0xe

    new-array v0, v0, [Lcom/dropbox/android/taskqueue/m;

    sget-object v1, Lcom/dropbox/android/taskqueue/m;->a:Lcom/dropbox/android/taskqueue/m;

    aput-object v1, v0, v4

    sget-object v1, Lcom/dropbox/android/taskqueue/m;->b:Lcom/dropbox/android/taskqueue/m;

    aput-object v1, v0, v5

    sget-object v1, Lcom/dropbox/android/taskqueue/m;->c:Lcom/dropbox/android/taskqueue/m;

    aput-object v1, v0, v6

    sget-object v1, Lcom/dropbox/android/taskqueue/m;->d:Lcom/dropbox/android/taskqueue/m;

    aput-object v1, v0, v7

    sget-object v1, Lcom/dropbox/android/taskqueue/m;->e:Lcom/dropbox/android/taskqueue/m;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/dropbox/android/taskqueue/m;->f:Lcom/dropbox/android/taskqueue/m;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/dropbox/android/taskqueue/m;->g:Lcom/dropbox/android/taskqueue/m;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/dropbox/android/taskqueue/m;->h:Lcom/dropbox/android/taskqueue/m;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/dropbox/android/taskqueue/m;->i:Lcom/dropbox/android/taskqueue/m;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/dropbox/android/taskqueue/m;->j:Lcom/dropbox/android/taskqueue/m;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/dropbox/android/taskqueue/m;->k:Lcom/dropbox/android/taskqueue/m;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/dropbox/android/taskqueue/m;->l:Lcom/dropbox/android/taskqueue/m;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/dropbox/android/taskqueue/m;->m:Lcom/dropbox/android/taskqueue/m;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/dropbox/android/taskqueue/m;->n:Lcom/dropbox/android/taskqueue/m;

    aput-object v2, v0, v1

    sput-object v0, Lcom/dropbox/android/taskqueue/m;->q:[Lcom/dropbox/android/taskqueue/m;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILcom/dropbox/android/taskqueue/n;Z)V
    .registers 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 60
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 61
    iput-object p3, p0, Lcom/dropbox/android/taskqueue/m;->o:Lcom/dropbox/android/taskqueue/n;

    .line 62
    iput-boolean p4, p0, Lcom/dropbox/android/taskqueue/m;->p:Z

    .line 63
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/dropbox/android/taskqueue/m;
    .registers 2
    .parameter

    .prologue
    .line 35
    const-class v0, Lcom/dropbox/android/taskqueue/m;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/dropbox/android/taskqueue/m;

    return-object v0
.end method

.method public static values()[Lcom/dropbox/android/taskqueue/m;
    .registers 1

    .prologue
    .line 35
    sget-object v0, Lcom/dropbox/android/taskqueue/m;->q:[Lcom/dropbox/android/taskqueue/m;

    invoke-virtual {v0}, [Lcom/dropbox/android/taskqueue/m;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/dropbox/android/taskqueue/m;

    return-object v0
.end method


# virtual methods
.method public final a()Z
    .registers 2

    .prologue
    .line 65
    iget-boolean v0, p0, Lcom/dropbox/android/taskqueue/m;->p:Z

    return v0
.end method

.method public final b()Lcom/dropbox/android/taskqueue/n;
    .registers 2

    .prologue
    .line 68
    iget-object v0, p0, Lcom/dropbox/android/taskqueue/m;->o:Lcom/dropbox/android/taskqueue/n;

    return-object v0
.end method
