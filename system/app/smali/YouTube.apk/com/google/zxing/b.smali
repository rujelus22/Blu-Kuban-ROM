.class public abstract Lcom/google/zxing/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/google/zxing/e;


# direct methods
.method protected constructor <init>(Lcom/google/zxing/e;)V
    .registers 2
    .parameter

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/google/zxing/b;->a:Lcom/google/zxing/e;

    .line 36
    return-void
.end method


# virtual methods
.method public abstract a(ILcom/google/zxing/common/a;)Lcom/google/zxing/common/a;
.end method

.method public final a()Lcom/google/zxing/e;
    .registers 2

    .prologue
    .line 39
    iget-object v0, p0, Lcom/google/zxing/b;->a:Lcom/google/zxing/e;

    return-object v0
.end method

.method public abstract b()Lcom/google/zxing/common/b;
.end method
