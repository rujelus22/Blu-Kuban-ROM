.class public abstract Lcom/google/android/plus1/a/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected a:Lcom/google/android/plus1/a/b;


# direct methods
.method public constructor <init>(Lcom/google/android/plus1/a/b;)V
    .registers 3
    .parameter

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    const-string v0, "missing client"

    invoke-static {p1, v0}, Lcom/google/common/base/t;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/plus1/a/b;

    iput-object v0, p0, Lcom/google/android/plus1/a/a;->a:Lcom/google/android/plus1/a/b;

    .line 50
    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/plus1/a/b;)V
    .registers 2
    .parameter

    .prologue
    .line 53
    iput-object p1, p0, Lcom/google/android/plus1/a/a;->a:Lcom/google/android/plus1/a/b;

    .line 54
    return-void
.end method
