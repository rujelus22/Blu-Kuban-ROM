.class Lcom/google/googlenav/friend/reporting/q;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lcom/google/googlenav/friend/reporting/p;


# direct methods
.method constructor <init>(Lcom/google/googlenav/friend/reporting/p;)V
    .registers 2
    .parameter

    .prologue
    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 105
    iput-object p1, p0, Lcom/google/googlenav/friend/reporting/q;->a:Lcom/google/googlenav/friend/reporting/p;

    .line 106
    return-void
.end method


# virtual methods
.method public a()Z
    .registers 3

    .prologue
    .line 112
    iget-object v0, p0, Lcom/google/googlenav/friend/reporting/q;->a:Lcom/google/googlenav/friend/reporting/p;

    sget-object v1, Lcom/google/googlenav/friend/reporting/p;->a:Lcom/google/googlenav/friend/reporting/p;

    if-eq v0, v1, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method
