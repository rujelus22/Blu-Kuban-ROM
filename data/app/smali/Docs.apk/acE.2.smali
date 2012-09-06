.class public final enum LacE;
.super Ljava/lang/Enum;
.source "LoginData.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "LacE;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:LacE;

.field private static final synthetic a:[LacE;

.field public static final enum b:LacE;

.field public static final enum c:LacE;

.field public static final enum d:LacE;

.field public static final enum e:LacE;

.field public static final enum f:LacE;

.field public static final enum g:LacE;

.field public static final enum h:LacE;

.field public static final enum i:LacE;

.field public static final enum j:LacE;

.field public static final enum k:LacE;

.field public static final enum l:LacE;

.field public static final enum m:LacE;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 30
    new-instance v0, LacE;

    const-string v1, "SUCCESS"

    invoke-direct {v0, v1, v3}, LacE;-><init>(Ljava/lang/String;I)V

    sput-object v0, LacE;->a:LacE;

    .line 31
    new-instance v0, LacE;

    const-string v1, "ACCOUNT_DISABLED"

    invoke-direct {v0, v1, v4}, LacE;-><init>(Ljava/lang/String;I)V

    sput-object v0, LacE;->b:LacE;

    .line 32
    new-instance v0, LacE;

    const-string v1, "BAD_USERNAME"

    invoke-direct {v0, v1, v5}, LacE;-><init>(Ljava/lang/String;I)V

    sput-object v0, LacE;->c:LacE;

    .line 33
    new-instance v0, LacE;

    const-string v1, "BAD_REQUEST"

    invoke-direct {v0, v1, v6}, LacE;-><init>(Ljava/lang/String;I)V

    sput-object v0, LacE;->d:LacE;

    .line 34
    new-instance v0, LacE;

    const-string v1, "LOGIN_FAIL"

    invoke-direct {v0, v1, v7}, LacE;-><init>(Ljava/lang/String;I)V

    sput-object v0, LacE;->e:LacE;

    .line 35
    new-instance v0, LacE;

    const-string v1, "SERVER_ERROR"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, LacE;-><init>(Ljava/lang/String;I)V

    sput-object v0, LacE;->f:LacE;

    .line 36
    new-instance v0, LacE;

    const-string v1, "MISSING_APPS"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, LacE;-><init>(Ljava/lang/String;I)V

    sput-object v0, LacE;->g:LacE;

    .line 37
    new-instance v0, LacE;

    const-string v1, "NO_GMAIL"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, LacE;-><init>(Ljava/lang/String;I)V

    sput-object v0, LacE;->h:LacE;

    .line 38
    new-instance v0, LacE;

    const-string v1, "NETWORK_ERROR"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, LacE;-><init>(Ljava/lang/String;I)V

    sput-object v0, LacE;->i:LacE;

    .line 39
    new-instance v0, LacE;

    const-string v1, "CAPTCHA"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, LacE;-><init>(Ljava/lang/String;I)V

    sput-object v0, LacE;->j:LacE;

    .line 40
    new-instance v0, LacE;

    const-string v1, "CANCELLED"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, LacE;-><init>(Ljava/lang/String;I)V

    sput-object v0, LacE;->k:LacE;

    .line 41
    new-instance v0, LacE;

    const-string v1, "DELETED_GMAIL"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, LacE;-><init>(Ljava/lang/String;I)V

    sput-object v0, LacE;->l:LacE;

    .line 42
    new-instance v0, LacE;

    const-string v1, "OAUTH_MIGRATION_REQUIRED"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, LacE;-><init>(Ljava/lang/String;I)V

    sput-object v0, LacE;->m:LacE;

    .line 29
    const/16 v0, 0xd

    new-array v0, v0, [LacE;

    sget-object v1, LacE;->a:LacE;

    aput-object v1, v0, v3

    sget-object v1, LacE;->b:LacE;

    aput-object v1, v0, v4

    sget-object v1, LacE;->c:LacE;

    aput-object v1, v0, v5

    sget-object v1, LacE;->d:LacE;

    aput-object v1, v0, v6

    sget-object v1, LacE;->e:LacE;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, LacE;->f:LacE;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, LacE;->g:LacE;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, LacE;->h:LacE;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, LacE;->i:LacE;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, LacE;->j:LacE;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, LacE;->k:LacE;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, LacE;->l:LacE;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, LacE;->m:LacE;

    aput-object v2, v0, v1

    sput-object v0, LacE;->a:[LacE;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 29
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)LacE;
    .registers 2
    .parameter

    .prologue
    .line 29
    const-class v0, LacE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, LacE;

    return-object v0
.end method

.method public static final values()[LacE;
    .registers 1

    .prologue
    .line 29
    sget-object v0, LacE;->a:[LacE;

    invoke-virtual {v0}, [LacE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LacE;

    return-object v0
.end method
