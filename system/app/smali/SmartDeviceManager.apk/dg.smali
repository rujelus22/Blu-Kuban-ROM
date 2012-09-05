.class public final enum Ldg;
.super Ljava/lang/Enum;
.source "a"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Ldg;",
        ">;"
    }
.end annotation


# static fields
.field public static final A:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ldg;",
            "Lan;",
            ">;"
        }
    .end annotation
.end field

.field private static E:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ldg;",
            ">;"
        }
    .end annotation
.end field

.field private static final synthetic F:[Ldg;

.field public static final enum a:Ldg;

.field public static final enum b:Ldg;

.field public static final enum c:Ldg;

.field public static final enum d:Ldg;

.field public static final enum e:Ldg;

.field public static final enum f:Ldg;

.field public static final enum g:Ldg;

.field public static final enum h:Ldg;

.field public static final enum i:Ldg;

.field public static final enum j:Ldg;

.field public static final enum k:Ldg;

.field public static final enum l:Ldg;

.field public static final enum m:Ldg;

.field public static final enum n:Ldg;

.field public static final enum o:Ldg;

.field public static final enum p:Ldg;

.field public static final enum q:Ldg;

.field public static final enum r:Ldg;

.field public static final enum s:Ldg;

.field public static final enum t:Ldg;

.field public static final enum u:Ldg;

.field public static final enum v:Ldg;

.field public static final enum w:Ldg;

.field public static final enum x:Ldg;

.field public static final enum y:Ldg;

.field public static final enum z:Ldg;


# instance fields
.field private B:Ljava/lang/String;

.field private C:Ldg;

.field private D:I


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .prologue
    .line 14
    new-instance v0, Ldg;

    const-string v1, "LOCATION"

    const/4 v2, 0x0

    const-string v3, "location"

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Ldg;-><init>(Ljava/lang/String;ILjava/lang/String;Ldg;I)V

    sput-object v0, Ldg;->a:Ldg;

    .line 15
    new-instance v0, Ldg;

    const-string v1, "LOCATION_ON_DEMAND"

    const/4 v2, 0x1

    const-string v3, "on-demand"

    sget-object v4, Ldg;->a:Ldg;

    const/4 v5, 0x2

    invoke-direct/range {v0 .. v5}, Ldg;-><init>(Ljava/lang/String;ILjava/lang/String;Ldg;I)V

    sput-object v0, Ldg;->b:Ldg;

    .line 16
    new-instance v0, Ldg;

    const-string v1, "LOCATION_STREAMING"

    const/4 v2, 0x2

    const-string v3, "streaming"

    sget-object v4, Ldg;->a:Ldg;

    const/4 v5, 0x2

    invoke-direct/range {v0 .. v5}, Ldg;-><init>(Ljava/lang/String;ILjava/lang/String;Ldg;I)V

    sput-object v0, Ldg;->c:Ldg;

    .line 18
    new-instance v0, Ldg;

    const-string v1, "SMS"

    const/4 v2, 0x3

    const-string v3, "sms"

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Ldg;-><init>(Ljava/lang/String;ILjava/lang/String;Ldg;I)V

    sput-object v0, Ldg;->d:Ldg;

    .line 19
    new-instance v0, Ldg;

    const-string v1, "SMS_OUTGOING"

    const/4 v2, 0x4

    const-string v3, "outgoing"

    sget-object v4, Ldg;->d:Ldg;

    const/4 v5, 0x2

    invoke-direct/range {v0 .. v5}, Ldg;-><init>(Ljava/lang/String;ILjava/lang/String;Ldg;I)V

    sput-object v0, Ldg;->e:Ldg;

    .line 20
    new-instance v0, Ldg;

    const-string v1, "SMS_INCOMING"

    const/4 v2, 0x5

    const-string v3, "incoming"

    sget-object v4, Ldg;->d:Ldg;

    const/4 v5, 0x2

    invoke-direct/range {v0 .. v5}, Ldg;-><init>(Ljava/lang/String;ILjava/lang/String;Ldg;I)V

    sput-object v0, Ldg;->f:Ldg;

    .line 22
    new-instance v0, Ldg;

    const-string v1, "MMS"

    const/4 v2, 0x6

    const-string v3, "mms"

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Ldg;-><init>(Ljava/lang/String;ILjava/lang/String;Ldg;I)V

    sput-object v0, Ldg;->g:Ldg;

    .line 23
    new-instance v0, Ldg;

    const-string v1, "MMS_OUTGOING"

    const/4 v2, 0x7

    const-string v3, "outgoing"

    sget-object v4, Ldg;->g:Ldg;

    const/4 v5, 0x3

    invoke-direct/range {v0 .. v5}, Ldg;-><init>(Ljava/lang/String;ILjava/lang/String;Ldg;I)V

    sput-object v0, Ldg;->h:Ldg;

    .line 24
    new-instance v0, Ldg;

    const-string v1, "MMS_INCOMING"

    const/16 v2, 0x8

    const-string v3, "incoming"

    sget-object v4, Ldg;->g:Ldg;

    const/4 v5, 0x3

    invoke-direct/range {v0 .. v5}, Ldg;-><init>(Ljava/lang/String;ILjava/lang/String;Ldg;I)V

    sput-object v0, Ldg;->i:Ldg;

    .line 26
    new-instance v0, Ldg;

    const-string v1, "LOCKING"

    const/16 v2, 0x9

    const-string v3, "locking"

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Ldg;-><init>(Ljava/lang/String;ILjava/lang/String;Ldg;I)V

    sput-object v0, Ldg;->j:Ldg;

    .line 27
    new-instance v0, Ldg;

    const-string v1, "LOCKING_ON_DEMAND"

    const/16 v2, 0xa

    const-string v3, "on-demand"

    sget-object v4, Ldg;->j:Ldg;

    const/4 v5, 0x3

    invoke-direct/range {v0 .. v5}, Ldg;-><init>(Ljava/lang/String;ILjava/lang/String;Ldg;I)V

    sput-object v0, Ldg;->k:Ldg;

    .line 29
    new-instance v0, Ldg;

    const-string v1, "APPLICATION"

    const/16 v2, 0xb

    const-string v3, "application"

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Ldg;-><init>(Ljava/lang/String;ILjava/lang/String;Ldg;I)V

    sput-object v0, Ldg;->l:Ldg;

    .line 30
    new-instance v0, Ldg;

    const-string v1, "APPLICATION_DISCOVERY"

    const/16 v2, 0xc

    const-string v3, "discovery"

    sget-object v4, Ldg;->l:Ldg;

    const/4 v5, 0x2

    invoke-direct/range {v0 .. v5}, Ldg;-><init>(Ljava/lang/String;ILjava/lang/String;Ldg;I)V

    sput-object v0, Ldg;->m:Ldg;

    .line 32
    new-instance v0, Ldg;

    const-string v1, "CONTACT"

    const/16 v2, 0xd

    const-string v3, "contact"

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Ldg;-><init>(Ljava/lang/String;ILjava/lang/String;Ldg;I)V

    sput-object v0, Ldg;->n:Ldg;

    .line 33
    new-instance v0, Ldg;

    const-string v1, "CONTACT_DISCOVERY"

    const/16 v2, 0xe

    const-string v3, "discovery"

    sget-object v4, Ldg;->n:Ldg;

    const/4 v5, 0x2

    invoke-direct/range {v0 .. v5}, Ldg;-><init>(Ljava/lang/String;ILjava/lang/String;Ldg;I)V

    sput-object v0, Ldg;->o:Ldg;

    .line 35
    new-instance v0, Ldg;

    const-string v1, "DWD"

    const/16 v2, 0xf

    const-string v3, "dwd"

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Ldg;-><init>(Ljava/lang/String;ILjava/lang/String;Ldg;I)V

    sput-object v0, Ldg;->p:Ldg;

    .line 36
    new-instance v0, Ldg;

    const-string v1, "DWD_CONTROL"

    const/16 v2, 0x10

    const-string v3, "control"

    sget-object v4, Ldg;->p:Ldg;

    const/4 v5, 0x3

    invoke-direct/range {v0 .. v5}, Ldg;-><init>(Ljava/lang/String;ILjava/lang/String;Ldg;I)V

    sput-object v0, Ldg;->q:Ldg;

    .line 38
    new-instance v0, Ldg;

    const-string v1, "GPS"

    const/16 v2, 0x11

    const-string v3, "gps"

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Ldg;-><init>(Ljava/lang/String;ILjava/lang/String;Ldg;I)V

    sput-object v0, Ldg;->r:Ldg;

    .line 39
    new-instance v0, Ldg;

    const-string v1, "GPS_DETECTION"

    const/16 v2, 0x12

    const-string v3, "detection"

    sget-object v4, Ldg;->r:Ldg;

    const/4 v5, 0x2

    invoke-direct/range {v0 .. v5}, Ldg;-><init>(Ljava/lang/String;ILjava/lang/String;Ldg;I)V

    sput-object v0, Ldg;->s:Ldg;

    .line 41
    new-instance v0, Ldg;

    const-string v1, "WINDOW_SHADE"

    const/16 v2, 0x13

    const-string v3, "windowShade"

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Ldg;-><init>(Ljava/lang/String;ILjava/lang/String;Ldg;I)V

    sput-object v0, Ldg;->t:Ldg;

    .line 42
    new-instance v0, Ldg;

    const-string v1, "WINDOW_SHADE_MESSAGE"

    const/16 v2, 0x14

    const-string v3, "message"

    sget-object v4, Ldg;->t:Ldg;

    const/4 v5, 0x2

    invoke-direct/range {v0 .. v5}, Ldg;-><init>(Ljava/lang/String;ILjava/lang/String;Ldg;I)V

    sput-object v0, Ldg;->u:Ldg;

    .line 44
    new-instance v0, Ldg;

    const-string v1, "CALL"

    const/16 v2, 0x15

    const-string v3, "call"

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Ldg;-><init>(Ljava/lang/String;ILjava/lang/String;Ldg;I)V

    sput-object v0, Ldg;->v:Ldg;

    .line 45
    new-instance v0, Ldg;

    const-string v1, "CALL_INCOMING"

    const/16 v2, 0x16

    const-string v3, "incoming"

    sget-object v4, Ldg;->v:Ldg;

    const/4 v5, 0x2

    invoke-direct/range {v0 .. v5}, Ldg;-><init>(Ljava/lang/String;ILjava/lang/String;Ldg;I)V

    sput-object v0, Ldg;->w:Ldg;

    .line 46
    new-instance v0, Ldg;

    const-string v1, "CALL_OUTGOING"

    const/16 v2, 0x17

    const-string v3, "outgoing"

    sget-object v4, Ldg;->v:Ldg;

    const/4 v5, 0x2

    invoke-direct/range {v0 .. v5}, Ldg;-><init>(Ljava/lang/String;ILjava/lang/String;Ldg;I)V

    sput-object v0, Ldg;->x:Ldg;

    .line 48
    new-instance v0, Ldg;

    const-string v1, "DRIVING"

    const/16 v2, 0x18

    const-string v3, "driving"

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Ldg;-><init>(Ljava/lang/String;ILjava/lang/String;Ldg;I)V

    sput-object v0, Ldg;->y:Ldg;

    .line 49
    new-instance v0, Ldg;

    const-string v1, "DRIVING_DETECTION"

    const/16 v2, 0x19

    const-string v3, "detection"

    sget-object v4, Ldg;->y:Ldg;

    const/4 v5, 0x3

    invoke-direct/range {v0 .. v5}, Ldg;-><init>(Ljava/lang/String;ILjava/lang/String;Ldg;I)V

    sput-object v0, Ldg;->z:Ldg;

    .line 13
    const/16 v0, 0x1a

    new-array v0, v0, [Ldg;

    const/4 v1, 0x0

    sget-object v2, Ldg;->a:Ldg;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Ldg;->b:Ldg;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Ldg;->c:Ldg;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Ldg;->d:Ldg;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Ldg;->e:Ldg;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Ldg;->f:Ldg;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Ldg;->g:Ldg;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Ldg;->h:Ldg;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Ldg;->i:Ldg;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Ldg;->j:Ldg;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Ldg;->k:Ldg;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Ldg;->l:Ldg;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Ldg;->m:Ldg;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Ldg;->n:Ldg;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Ldg;->o:Ldg;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Ldg;->p:Ldg;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Ldg;->q:Ldg;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Ldg;->r:Ldg;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Ldg;->s:Ldg;

    aput-object v2, v0, v1

    const/16 v1, 0x13

    sget-object v2, Ldg;->t:Ldg;

    aput-object v2, v0, v1

    const/16 v1, 0x14

    sget-object v2, Ldg;->u:Ldg;

    aput-object v2, v0, v1

    const/16 v1, 0x15

    sget-object v2, Ldg;->v:Ldg;

    aput-object v2, v0, v1

    const/16 v1, 0x16

    sget-object v2, Ldg;->w:Ldg;

    aput-object v2, v0, v1

    const/16 v1, 0x17

    sget-object v2, Ldg;->x:Ldg;

    aput-object v2, v0, v1

    const/16 v1, 0x18

    sget-object v2, Ldg;->y:Ldg;

    aput-object v2, v0, v1

    const/16 v1, 0x19

    sget-object v2, Ldg;->z:Ldg;

    aput-object v2, v0, v1

    sput-object v0, Ldg;->F:[Ldg;

    .line 51
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 55
    sput-object v0, Ldg;->A:Ljava/util/HashMap;

    sget-object v1, Ldg;->o:Ldg;

    new-instance v2, Las;

    invoke-direct {v2}, Las;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    sget-object v0, Ldg;->A:Ljava/util/HashMap;

    sget-object v1, Ldg;->w:Ldg;

    new-instance v2, Lao;

    sget-object v3, Ldg;->w:Ldg;

    invoke-direct {v2, v3}, Lao;-><init>(Ldg;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    sget-object v0, Ldg;->A:Ljava/util/HashMap;

    sget-object v1, Ldg;->x:Ldg;

    new-instance v2, Lao;

    sget-object v3, Ldg;->x:Ldg;

    invoke-direct {v2, v3}, Lao;-><init>(Ldg;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    sget-object v0, Ldg;->A:Ljava/util/HashMap;

    sget-object v1, Ldg;->h:Ldg;

    new-instance v2, Laz;

    sget-object v3, Ldg;->h:Ldg;

    invoke-direct {v2, v3}, Laz;-><init>(Ldg;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    sget-object v0, Ldg;->A:Ljava/util/HashMap;

    sget-object v1, Ldg;->i:Ldg;

    new-instance v2, Laz;

    sget-object v3, Ldg;->i:Ldg;

    invoke-direct {v2, v3}, Laz;-><init>(Ldg;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    sget-object v0, Ldg;->A:Ljava/util/HashMap;

    sget-object v1, Ldg;->e:Ldg;

    new-instance v2, Laz;

    sget-object v3, Ldg;->e:Ldg;

    invoke-direct {v2, v3}, Laz;-><init>(Ldg;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    sget-object v0, Ldg;->A:Ljava/util/HashMap;

    sget-object v1, Ldg;->f:Ldg;

    new-instance v2, Laz;

    sget-object v3, Ldg;->f:Ldg;

    invoke-direct {v2, v3}, Laz;-><init>(Ldg;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    sget-object v0, Ldg;->A:Ljava/util/HashMap;

    sget-object v1, Ldg;->k:Ldg;

    new-instance v2, Lax;

    invoke-direct {v2}, Lax;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Ldg;I)V
    .registers 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ldg;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 118
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 119
    iput-object p3, p0, Ldg;->B:Ljava/lang/String;

    .line 120
    iput-object p4, p0, Ldg;->C:Ldg;

    .line 121
    iput p5, p0, Ldg;->D:I

    .line 122
    return-void
.end method

.method public static a(Ljava/lang/String;)Ldg;
    .registers 7
    .parameter

    .prologue
    .line 129
    sget-object v0, Ldg;->E:Ljava/util/HashMap;

    if-nez v0, :cond_21

    .line 130
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Ldg;->E:Ljava/util/HashMap;

    .line 131
    invoke-static {}, Ldg;->values()[Ldg;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_11
    if-ge v2, v1, :cond_21

    aget-object v3, v0, v2

    .line 132
    sget-object v4, Ldg;->E:Ljava/util/HashMap;

    invoke-virtual {v3}, Ldg;->a()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    add-int/lit8 v2, v2, 0x1

    goto :goto_11

    .line 135
    :cond_21
    sget-object v0, Ldg;->E:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ldg;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Ldg;
    .registers 2
    .parameter

    .prologue
    .line 13
    const-class v0, Ldg;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Ldg;

    return-object p0
.end method

.method public static values()[Ldg;
    .registers 1

    .prologue
    .line 13
    sget-object v0, Ldg;->F:[Ldg;

    invoke-virtual {v0}, [Ldg;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ldg;

    return-object v0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .registers 3

    .prologue
    .line 70
    iget-object v0, p0, Ldg;->C:Ldg;

    if-eqz v0, :cond_24

    .line 71
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Ldg;->C:Ldg;

    invoke-virtual {v1}, Ldg;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ldg;->B:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 73
    :goto_23
    return-object v0

    :cond_24
    iget-object v0, p0, Ldg;->B:Ljava/lang/String;

    goto :goto_23
.end method

.method public final b()Ldg;
    .registers 2

    .prologue
    .line 78
    iget-object v0, p0, Ldg;->C:Ldg;

    return-object v0
.end method

.method public final c()Ljava/lang/String;
    .registers 2

    .prologue
    .line 93
    iget-object v0, p0, Ldg;->C:Ldg;

    if-eqz v0, :cond_b

    iget-object v0, p0, Ldg;->C:Ldg;

    :goto_6
    invoke-virtual {v0}, Ldg;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_b
    move-object v0, p0

    goto :goto_6
.end method

.method public final d()I
    .registers 2

    .prologue
    .line 111
    iget v0, p0, Ldg;->D:I

    return v0
.end method

.method public final e()Z
    .registers 2

    .prologue
    .line 115
    iget v0, p0, Ldg;->D:I

    if-lez v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method
