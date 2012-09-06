.class final Lcom/dropbox/android/util/aP;
.super Ljava/lang/ThreadLocal;
.source "panda.py"


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/ThreadLocal;-><init>()V

    return-void
.end method


# virtual methods
.method protected final a()[B
    .registers 2

    .prologue
    .line 17
    const/high16 v0, 0x1

    new-array v0, v0, [B

    return-object v0
.end method

.method protected final synthetic initialValue()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 14
    invoke-virtual {p0}, Lcom/dropbox/android/util/aP;->a()[B

    move-result-object v0

    return-object v0
.end method
