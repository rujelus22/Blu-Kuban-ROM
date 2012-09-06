.class final Lcom/twitter/android/provider/an;
.super Ljava/lang/Object;


# static fields
.field public static final a:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "list_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "hash"

    aput-object v2, v0, v1

    sput-object v0, Lcom/twitter/android/provider/an;->a:[Ljava/lang/String;

    return-void
.end method
