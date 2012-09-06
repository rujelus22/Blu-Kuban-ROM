.class final enum Lcom/google/googlenav/ui/wizard/db;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum a:Lcom/google/googlenav/ui/wizard/db;

.field public static final enum b:Lcom/google/googlenav/ui/wizard/db;

.field public static final enum c:Lcom/google/googlenav/ui/wizard/db;

.field public static final enum d:Lcom/google/googlenav/ui/wizard/db;

.field public static final enum e:Lcom/google/googlenav/ui/wizard/db;

.field public static final enum f:Lcom/google/googlenav/ui/wizard/db;

.field public static final enum g:Lcom/google/googlenav/ui/wizard/db;

.field public static final enum h:Lcom/google/googlenav/ui/wizard/db;

.field public static final enum i:Lcom/google/googlenav/ui/wizard/db;

.field private static final synthetic j:[Lcom/google/googlenav/ui/wizard/db;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 44
    new-instance v0, Lcom/google/googlenav/ui/wizard/db;

    const-string v1, "LOCATION_REPORTING_SUMMARY_DIALOG_A"

    invoke-direct {v0, v1, v3}, Lcom/google/googlenav/ui/wizard/db;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/googlenav/ui/wizard/db;->a:Lcom/google/googlenav/ui/wizard/db;

    .line 47
    new-instance v0, Lcom/google/googlenav/ui/wizard/db;

    const-string v1, "LOCATION_REPORTING_OPT_IN_DIALOG_B"

    invoke-direct {v0, v1, v4}, Lcom/google/googlenav/ui/wizard/db;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/googlenav/ui/wizard/db;->b:Lcom/google/googlenav/ui/wizard/db;

    .line 50
    new-instance v0, Lcom/google/googlenav/ui/wizard/db;

    const-string v1, "LOCATION_HISTORY_SUMMARY_DIALOG_C"

    invoke-direct {v0, v1, v5}, Lcom/google/googlenav/ui/wizard/db;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/googlenav/ui/wizard/db;->c:Lcom/google/googlenav/ui/wizard/db;

    .line 53
    new-instance v0, Lcom/google/googlenav/ui/wizard/db;

    const-string v1, "LOCATION_HISTORY_OPT_IN_DIALOG_D"

    invoke-direct {v0, v1, v6}, Lcom/google/googlenav/ui/wizard/db;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/googlenav/ui/wizard/db;->d:Lcom/google/googlenav/ui/wizard/db;

    .line 56
    new-instance v0, Lcom/google/googlenav/ui/wizard/db;

    const-string v1, "LOADING"

    invoke-direct {v0, v1, v7}, Lcom/google/googlenav/ui/wizard/db;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/googlenav/ui/wizard/db;->e:Lcom/google/googlenav/ui/wizard/db;

    .line 59
    new-instance v0, Lcom/google/googlenav/ui/wizard/db;

    const-string v1, "OPT_IN"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/google/googlenav/ui/wizard/db;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/googlenav/ui/wizard/db;->f:Lcom/google/googlenav/ui/wizard/db;

    .line 62
    new-instance v0, Lcom/google/googlenav/ui/wizard/db;

    const-string v1, "COMPLETE"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/google/googlenav/ui/wizard/db;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/googlenav/ui/wizard/db;->g:Lcom/google/googlenav/ui/wizard/db;

    .line 65
    new-instance v0, Lcom/google/googlenav/ui/wizard/db;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/google/googlenav/ui/wizard/db;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/googlenav/ui/wizard/db;->h:Lcom/google/googlenav/ui/wizard/db;

    .line 68
    new-instance v0, Lcom/google/googlenav/ui/wizard/db;

    const-string v1, "CANCELLED"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/google/googlenav/ui/wizard/db;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/googlenav/ui/wizard/db;->i:Lcom/google/googlenav/ui/wizard/db;

    .line 41
    const/16 v0, 0x9

    new-array v0, v0, [Lcom/google/googlenav/ui/wizard/db;

    sget-object v1, Lcom/google/googlenav/ui/wizard/db;->a:Lcom/google/googlenav/ui/wizard/db;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/googlenav/ui/wizard/db;->b:Lcom/google/googlenav/ui/wizard/db;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/googlenav/ui/wizard/db;->c:Lcom/google/googlenav/ui/wizard/db;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/googlenav/ui/wizard/db;->d:Lcom/google/googlenav/ui/wizard/db;

    aput-object v1, v0, v6

    sget-object v1, Lcom/google/googlenav/ui/wizard/db;->e:Lcom/google/googlenav/ui/wizard/db;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/google/googlenav/ui/wizard/db;->f:Lcom/google/googlenav/ui/wizard/db;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/google/googlenav/ui/wizard/db;->g:Lcom/google/googlenav/ui/wizard/db;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/google/googlenav/ui/wizard/db;->h:Lcom/google/googlenav/ui/wizard/db;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/google/googlenav/ui/wizard/db;->i:Lcom/google/googlenav/ui/wizard/db;

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/googlenav/ui/wizard/db;->j:[Lcom/google/googlenav/ui/wizard/db;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 41
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/googlenav/ui/wizard/db;
    .registers 2
    .parameter

    .prologue
    .line 41
    const-class v0, Lcom/google/googlenav/ui/wizard/db;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/ui/wizard/db;

    return-object v0
.end method

.method public static values()[Lcom/google/googlenav/ui/wizard/db;
    .registers 1

    .prologue
    .line 41
    sget-object v0, Lcom/google/googlenav/ui/wizard/db;->j:[Lcom/google/googlenav/ui/wizard/db;

    invoke-virtual {v0}, [Lcom/google/googlenav/ui/wizard/db;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/googlenav/ui/wizard/db;

    return-object v0
.end method
