.class public abstract Lcom/google/googlenav/ui/wizard/eH;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2
    .parameter

    .prologue
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/eH;->a:Ljava/lang/String;

    .line 75
    return-void
.end method


# virtual methods
.method public abstract a()Ljava/util/List;
.end method

.method public final b()Ljava/util/List;
    .registers 4

    .prologue
    .line 78
    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/eH;->a()Ljava/util/List;

    move-result-object v0

    .line 79
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 80
    new-instance v0, Lcom/google/googlenav/ui/view/android/bx;

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/eH;->a:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/google/googlenav/ui/view/android/bx;-><init>(Ljava/lang/CharSequence;)V

    .line 81
    const/4 v1, 0x1

    new-array v1, v1, [Lcom/google/googlenav/ui/view/android/Y;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    invoke-static {v1}, Lcom/google/common/collect/cx;->a([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    .line 83
    :cond_1b
    return-object v0
.end method
