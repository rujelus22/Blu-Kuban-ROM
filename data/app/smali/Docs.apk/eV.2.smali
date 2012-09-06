.class public enum LeV;
.super Ljava/lang/Enum;
.source "Feature.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Ldu;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:LeV;

.field private static final synthetic a:[LeV;

.field public static final enum b:LeV;

.field public static final enum c:LeV;

.field public static final enum d:LeV;

.field public static final enum e:LeV;

.field public static final enum f:LeV;

.field public static final enum g:LeV;

.field public static final enum h:LeV;

.field public static final enum i:LeV;

.field public static final enum j:LeV;

.field public static final enum k:LeV;

.field public static final enum l:LeV;

.field public static final enum m:LeV;

.field public static final enum n:LeV;

.field public static final enum o:LeV;

.field public static final enum p:LeV;

.field public static final enum q:LeV;

.field public static final enum r:LeV;

.field public static final enum s:LeV;

.field public static final enum t:LeV;

.field public static final enum u:LeV;

.field public static final enum v:LeV;

.field public static final enum w:LeV;


# instance fields
.field public final a:LdX;


# direct methods
.method static constructor <clinit>()V
    .registers 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 25
    new-instance v0, LeW;

    const-string v1, "ACL_ADDITIONAL_ROLE"

    sget-object v2, LdX;->c:LdX;

    invoke-direct {v0, v1, v4, v2}, LeW;-><init>(Ljava/lang/String;ILdX;)V

    sput-object v0, LeV;->a:LeV;

    .line 35
    new-instance v0, LeV;

    const-string v1, "COMMENTS"

    sget-object v2, LdX;->c:LdX;

    invoke-direct {v0, v1, v5, v2}, LeV;-><init>(Ljava/lang/String;ILdX;)V

    sput-object v0, LeV;->b:LeV;

    .line 40
    new-instance v0, LeV;

    const-string v1, "DRIVE"

    sget-object v2, LdX;->a:LdX;

    invoke-direct {v0, v1, v6, v2}, LeV;-><init>(Ljava/lang/String;ILdX;)V

    sput-object v0, LeV;->c:LeV;

    .line 45
    new-instance v0, LeX;

    const-string v1, "DRIVE_INVITATION_FLOW"

    sget-object v2, LdX;->a:LdX;

    invoke-direct {v0, v1, v7, v2}, LeX;-><init>(Ljava/lang/String;ILdX;)V

    sput-object v0, LeV;->d:LeV;

    .line 55
    new-instance v0, LeY;

    const-string v1, "DRIVE_SDK_APP"

    sget-object v2, LdX;->a:LdX;

    invoke-direct {v0, v1, v8, v2}, LeY;-><init>(Ljava/lang/String;ILdX;)V

    sput-object v0, LeV;->e:LeV;

    .line 65
    new-instance v0, LeV;

    const-string v1, "GSYNC"

    const/4 v2, 0x5

    sget-object v3, LdX;->a:LdX;

    invoke-direct {v0, v1, v2, v3}, LeV;-><init>(Ljava/lang/String;ILdX;)V

    sput-object v0, LeV;->f:LeV;

    .line 72
    new-instance v0, LeV;

    const-string v1, "MULTI_OPERATION_QUEUE"

    const/4 v2, 0x6

    sget-object v3, LdX;->a:LdX;

    invoke-direct {v0, v1, v2, v3}, LeV;-><init>(Ljava/lang/String;ILdX;)V

    sput-object v0, LeV;->g:LeV;

    .line 78
    new-instance v0, LeV;

    const-string v1, "NOTIFICATIONS"

    const/4 v2, 0x7

    sget-object v3, LdX;->c:LdX;

    invoke-direct {v0, v1, v2, v3}, LeV;-><init>(Ljava/lang/String;ILdX;)V

    sput-object v0, LeV;->h:LeV;

    .line 83
    new-instance v0, LeV;

    const-string v1, "PARANOID_CHECKS"

    const/16 v2, 0x8

    sget-object v3, LdX;->c:LdX;

    invoke-direct {v0, v1, v2, v3}, LeV;-><init>(Ljava/lang/String;ILdX;)V

    sput-object v0, LeV;->i:LeV;

    .line 88
    new-instance v0, LeV;

    const-string v1, "PINNING"

    const/16 v2, 0x9

    sget-object v3, LdX;->a:LdX;

    invoke-direct {v0, v1, v2, v3}, LeV;-><init>(Ljava/lang/String;ILdX;)V

    sput-object v0, LeV;->j:LeV;

    .line 93
    new-instance v0, LeV;

    const-string v1, "SEND_LINK"

    const/16 v2, 0xa

    sget-object v3, LdX;->a:LdX;

    invoke-direct {v0, v1, v2, v3}, LeV;-><init>(Ljava/lang/String;ILdX;)V

    sput-object v0, LeV;->k:LeV;

    .line 98
    new-instance v0, LeV;

    const-string v1, "PRINT_STATS_TO_LOG"

    const/16 v2, 0xb

    sget-object v3, LdX;->c:LdX;

    invoke-direct {v0, v1, v2, v3}, LeV;-><init>(Ljava/lang/String;ILdX;)V

    sput-object v0, LeV;->l:LeV;

    .line 103
    new-instance v0, LeV;

    const-string v1, "PUNCH_PROFILING"

    const/16 v2, 0xc

    sget-object v3, LdX;->d:LdX;

    invoke-direct {v0, v1, v2, v3}, LeV;-><init>(Ljava/lang/String;ILdX;)V

    sput-object v0, LeV;->m:LeV;

    .line 108
    new-instance v0, LeV;

    const-string v1, "PUNCH_WEB_VIEW"

    const/16 v2, 0xd

    sget-object v3, LdX;->c:LdX;

    invoke-direct {v0, v1, v2, v3}, LeV;-><init>(Ljava/lang/String;ILdX;)V

    sput-object v0, LeV;->n:LeV;

    .line 114
    new-instance v0, LeV;

    const-string v1, "READ_UNREAD"

    const/16 v2, 0xe

    sget-object v3, LdX;->c:LdX;

    invoke-direct {v0, v1, v2, v3}, LeV;-><init>(Ljava/lang/String;ILdX;)V

    sput-object v0, LeV;->o:LeV;

    .line 119
    new-instance v0, LeV;

    const-string v1, "STREAMING_DECRYPTION"

    const/16 v2, 0xf

    sget-object v3, LdX;->a:LdX;

    invoke-direct {v0, v1, v2, v3}, LeV;-><init>(Ljava/lang/String;ILdX;)V

    sput-object v0, LeV;->p:LeV;

    .line 124
    new-instance v0, LeV;

    const-string v1, "SYNC_MORE"

    const/16 v2, 0x10

    sget-object v3, LdX;->a:LdX;

    invoke-direct {v0, v1, v2, v3}, LeV;-><init>(Ljava/lang/String;ILdX;)V

    sput-object v0, LeV;->q:LeV;

    .line 129
    new-instance v0, LeV;

    const-string v1, "KIX_PROFILING"

    const/16 v2, 0x11

    sget-object v3, LdX;->d:LdX;

    invoke-direct {v0, v1, v2, v3}, LeV;-><init>(Ljava/lang/String;ILdX;)V

    sput-object v0, LeV;->r:LeV;

    .line 134
    new-instance v0, LeV;

    const-string v1, "KIX_COMMENTS"

    const/16 v2, 0x12

    sget-object v3, LdX;->d:LdX;

    invoke-direct {v0, v1, v2, v3}, LeV;-><init>(Ljava/lang/String;ILdX;)V

    sput-object v0, LeV;->s:LeV;

    .line 139
    new-instance v0, LeV;

    const-string v1, "KIX_TABLES"

    const/16 v2, 0x13

    sget-object v3, LdX;->d:LdX;

    invoke-direct {v0, v1, v2, v3}, LeV;-><init>(Ljava/lang/String;ILdX;)V

    sput-object v0, LeV;->t:LeV;

    .line 144
    new-instance v0, LeV;

    const-string v1, "TRIX_NATIVE_EDITOR"

    const/16 v2, 0x14

    sget-object v3, LdX;->d:LdX;

    invoke-direct {v0, v1, v2, v3}, LeV;-><init>(Ljava/lang/String;ILdX;)V

    sput-object v0, LeV;->u:LeV;

    .line 149
    new-instance v0, LeV;

    const-string v1, "_TEST_DOGFOOD"

    const/16 v2, 0x15

    sget-object v3, LdX;->b:LdX;

    invoke-direct {v0, v1, v2, v3}, LeV;-><init>(Ljava/lang/String;ILdX;)V

    sput-object v0, LeV;->v:LeV;

    .line 154
    new-instance v0, LeV;

    const-string v1, "_TEST_RELEASE"

    const/16 v2, 0x16

    sget-object v3, LdX;->a:LdX;

    invoke-direct {v0, v1, v2, v3}, LeV;-><init>(Ljava/lang/String;ILdX;)V

    sput-object v0, LeV;->w:LeV;

    .line 20
    const/16 v0, 0x17

    new-array v0, v0, [LeV;

    sget-object v1, LeV;->a:LeV;

    aput-object v1, v0, v4

    sget-object v1, LeV;->b:LeV;

    aput-object v1, v0, v5

    sget-object v1, LeV;->c:LeV;

    aput-object v1, v0, v6

    sget-object v1, LeV;->d:LeV;

    aput-object v1, v0, v7

    sget-object v1, LeV;->e:LeV;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, LeV;->f:LeV;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, LeV;->g:LeV;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, LeV;->h:LeV;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, LeV;->i:LeV;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, LeV;->j:LeV;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, LeV;->k:LeV;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, LeV;->l:LeV;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, LeV;->m:LeV;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, LeV;->n:LeV;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, LeV;->o:LeV;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, LeV;->p:LeV;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, LeV;->q:LeV;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, LeV;->r:LeV;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, LeV;->s:LeV;

    aput-object v2, v0, v1

    const/16 v1, 0x13

    sget-object v2, LeV;->t:LeV;

    aput-object v2, v0, v1

    const/16 v1, 0x14

    sget-object v2, LeV;->u:LeV;

    aput-object v2, v0, v1

    const/16 v1, 0x15

    sget-object v2, LeV;->v:LeV;

    aput-object v2, v0, v1

    const/16 v1, 0x16

    sget-object v2, LeV;->w:LeV;

    aput-object v2, v0, v1

    sput-object v0, LeV;->a:[LeV;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILdX;)V
    .registers 5
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LdX;",
            ")V"
        }
    .end annotation

    .prologue
    .line 159
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 160
    invoke-static {p3}, LafQ;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LdX;

    iput-object v0, p0, LeV;->a:LdX;

    .line 161
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILdX;LeW;)V
    .registers 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 20
    invoke-direct {p0, p1, p2, p3}, LeV;-><init>(Ljava/lang/String;ILdX;)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)LeV;
    .registers 2
    .parameter

    .prologue
    .line 20
    const-class v0, LeV;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, LeV;

    return-object v0
.end method

.method public static values()[LeV;
    .registers 1

    .prologue
    .line 20
    sget-object v0, LeV;->a:[LeV;

    invoke-virtual {v0}, [LeV;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LeV;

    return-object v0
.end method


# virtual methods
.method protected a(LeZ;)Z
    .registers 3
    .parameter

    .prologue
    .line 168
    const/4 v0, 0x1

    return v0
.end method
