.class public Lcom/coremobility/h/aa;
.super Ljava/lang/Object;


# static fields
.field public static h:[Ljava/lang/String;

.field public static final i:[I


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const/4 v3, 0x0

    const/4 v2, 0x1

    new-array v0, v2, [Ljava/lang/String;

    const-string v1, "T"

    aput-object v1, v0, v3

    sput-object v0, Lcom/coremobility/h/aa;->h:[Ljava/lang/String;

    new-array v0, v2, [I

    aput v2, v0, v3

    sput-object v0, Lcom/coremobility/h/aa;->i:[I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(I)Z
    .registers 2

    if-ltz p0, :cond_6

    if-gtz p0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method
