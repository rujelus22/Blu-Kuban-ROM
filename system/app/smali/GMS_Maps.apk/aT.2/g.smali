.class final LaT/g;
.super Ljava/lang/ThreadLocal;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/ThreadLocal;-><init>()V

    return-void
.end method


# virtual methods
.method protected initialValue()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 48
    invoke-static {}, LaT/f;->c()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
