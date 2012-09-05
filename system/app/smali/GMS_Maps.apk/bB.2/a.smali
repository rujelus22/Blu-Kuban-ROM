.class public LbB/a;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lam/e;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lam/e;

    invoke-direct {v0}, Lam/e;-><init>()V

    sput-object v0, LbB/a;->a:Lam/e;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
