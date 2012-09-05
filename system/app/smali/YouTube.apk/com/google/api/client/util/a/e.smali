.class final Lcom/google/api/client/util/a/e;
.super Ljava/lang/ThreadLocal;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/ThreadLocal;-><init>()V

    return-void
.end method


# virtual methods
.method protected final bridge synthetic initialValue()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 36
    const/16 v0, 0x400

    new-array v0, v0, [C

    return-object v0
.end method
