.class final Lbf/f;
.super Ljava/lang/ThreadLocal;


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/ThreadLocal;-><init>()V

    return-void
.end method


# virtual methods
.method protected initialValue()Ljava/lang/Object;
    .registers 2

    invoke-static {}, Lbf/e;->c()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
