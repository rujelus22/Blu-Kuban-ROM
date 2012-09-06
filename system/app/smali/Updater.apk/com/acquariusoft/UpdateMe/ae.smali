.class public final Lcom/acquariusoft/UpdateMe/ae;
.super Ljava/lang/Object;


# static fields
.field public static final a:[I

.field public static final b:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x7f010005

    aput v2, v0, v1

    sput-object v0, Lcom/acquariusoft/UpdateMe/ae;->a:[I

    const/4 v0, 0x5

    new-array v0, v0, [I

    fill-array-data v0, :array_14

    sput-object v0, Lcom/acquariusoft/UpdateMe/ae;->b:[I

    return-void

    :array_14
    .array-data 0x4
        0x0t 0x0t 0x1t 0x7ft
        0x1t 0x0t 0x1t 0x7ft
        0x2t 0x0t 0x1t 0x7ft
        0x3t 0x0t 0x1t 0x7ft
        0x4t 0x0t 0x1t 0x7ft
    .end array-data
.end method
