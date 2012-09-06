.class public final Lcom/dropbox/android/util/aO;
.super Ljava/lang/Object;
.source "panda.py"


# static fields
.field private static a:Ljava/lang/ThreadLocal;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 14
    new-instance v0, Lcom/dropbox/android/util/aP;

    invoke-direct {v0}, Lcom/dropbox/android/util/aP;-><init>()V

    sput-object v0, Lcom/dropbox/android/util/aO;->a:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public static a()[B
    .registers 1

    .prologue
    .line 24
    sget-object v0, Lcom/dropbox/android/util/aO;->a:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method
