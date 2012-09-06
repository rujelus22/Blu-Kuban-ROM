.class public interface abstract Ljcifs/dcerpc/d;
.super Ljava/lang/Object;


# static fields
.field public static final a:[I

.field public static final b:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/16 v1, 0x9

    new-array v0, v1, [I

    fill-array-data v0, :array_3c

    sput-object v0, Ljcifs/dcerpc/d;->a:[I

    new-array v0, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "DCERPC_FAULT_OTHER"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "DCERPC_FAULT_ACCESS_DENIED"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "DCERPC_FAULT_CANT_PERFORM"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "DCERPC_FAULT_NDR"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "DCERPC_FAULT_INVALID_TAG"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "DCERPC_FAULT_CONTEXT_MISMATCH"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "DCERPC_FAULT_OP_RNG_ERROR"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "DCERPC_FAULT_UNK_IF"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "DCERPC_FAULT_PROTO_ERROR"

    aput-object v2, v0, v1

    sput-object v0, Ljcifs/dcerpc/d;->b:[Ljava/lang/String;

    return-void

    :array_3c
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0xd8t 0x6t 0x0t 0x0t
        0xf7t 0x6t 0x0t 0x0t
        0x6t 0x0t 0x0t 0x1ct
        0x1at 0x0t 0x0t 0x1ct
        0x2t 0x0t 0x1t 0x1ct
        0x3t 0x0t 0x1t 0x1ct
        0xbt 0x0t 0x1t 0x1ct
    .end array-data
.end method
