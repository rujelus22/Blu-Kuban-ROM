.class Lcom/google/googlenav/friend/reporting/j;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Z

.field private b:Lcom/google/googlenav/friend/reporting/i;


# direct methods
.method constructor <init>(ZLcom/google/googlenav/friend/reporting/i;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 142
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 143
    iput-boolean p1, p0, Lcom/google/googlenav/friend/reporting/j;->a:Z

    .line 144
    iput-object p2, p0, Lcom/google/googlenav/friend/reporting/j;->b:Lcom/google/googlenav/friend/reporting/i;

    .line 145
    return-void
.end method


# virtual methods
.method public a()Z
    .registers 2

    .prologue
    .line 151
    iget-boolean v0, p0, Lcom/google/googlenav/friend/reporting/j;->a:Z

    return v0
.end method

.method public b()Z
    .registers 3

    .prologue
    .line 158
    iget-object v0, p0, Lcom/google/googlenav/friend/reporting/j;->b:Lcom/google/googlenav/friend/reporting/i;

    sget-object v1, Lcom/google/googlenav/friend/reporting/i;->a:Lcom/google/googlenav/friend/reporting/i;

    if-eq v0, v1, :cond_e

    iget-object v0, p0, Lcom/google/googlenav/friend/reporting/j;->b:Lcom/google/googlenav/friend/reporting/i;

    sget-object v1, Lcom/google/googlenav/friend/reporting/i;->b:Lcom/google/googlenav/friend/reporting/i;

    if-eq v0, v1, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method
