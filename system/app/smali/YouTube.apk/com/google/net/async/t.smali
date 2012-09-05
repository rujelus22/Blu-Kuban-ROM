.class final Lcom/google/net/async/t;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Lcom/google/net/async/a;

.field public b:Lcom/google/net/async/o;

.field public c:Lcom/google/net/async/af;

.field public d:Lcom/google/net/async/an;


# direct methods
.method synthetic constructor <init>()V
    .registers 2

    .prologue
    .line 1128
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/net/async/t;-><init>(B)V

    return-void
.end method

.method private constructor <init>(B)V
    .registers 3
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 1128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1129
    iput-object v0, p0, Lcom/google/net/async/t;->a:Lcom/google/net/async/a;

    .line 1130
    iput-object v0, p0, Lcom/google/net/async/t;->b:Lcom/google/net/async/o;

    .line 1131
    iput-object v0, p0, Lcom/google/net/async/t;->c:Lcom/google/net/async/af;

    .line 1132
    iput-object v0, p0, Lcom/google/net/async/t;->d:Lcom/google/net/async/an;

    .line 1128
    return-void
.end method
