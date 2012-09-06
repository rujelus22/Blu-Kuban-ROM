.class public Lcom/google/googlenav/friend/history/N;
.super Lcom/google/googlenav/friend/history/K;
.source "SourceFile"


# instance fields
.field private a:I


# direct methods
.method constructor <init>(I)V
    .registers 2
    .parameter

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/google/googlenav/friend/history/K;-><init>()V

    .line 28
    iput p1, p0, Lcom/google/googlenav/friend/history/N;->a:I

    .line 29
    return-void
.end method


# virtual methods
.method a()Ljava/lang/String;
    .registers 5

    .prologue
    const/4 v1, 0x1

    .line 36
    iget v0, p0, Lcom/google/googlenav/friend/history/N;->a:I

    if-ne v0, v1, :cond_c

    .line 38
    const/16 v0, 0x284

    invoke-static {v0}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v0

    .line 40
    :goto_b
    return-object v0

    :cond_c
    const/16 v0, 0x287

    invoke-static {v0}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    iget v3, p0, Lcom/google/googlenav/friend/history/N;->a:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Laa/b;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_b
.end method
