.class final Lcom/google/common/collect/mq;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field a:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 150
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 157
    iget-object v0, p0, Lcom/google/common/collect/mq;->a:Ljava/lang/Object;

    if-ne v0, p1, :cond_8

    .line 158
    iput-object p2, p0, Lcom/google/common/collect/mq;->a:Ljava/lang/Object;

    .line 159
    const/4 v0, 0x1

    .line 161
    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method
