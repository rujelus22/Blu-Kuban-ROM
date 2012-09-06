.class public final Lnv;
.super Ljava/lang/Object;
.source "EntryViewBinder.java"


# instance fields
.field private final a:Lld;

.field private final a:Lnw;


# direct methods
.method public constructor <init>(Lnw;Lld;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    invoke-static {p1}, LafQ;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnw;

    iput-object v0, p0, Lnv;->a:Lnw;

    .line 102
    invoke-static {p2}, LafQ;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lld;

    iput-object v0, p0, Lnv;->a:Lld;

    .line 103
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 5
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 107
    instance-of v1, p1, Lnv;

    if-nez v1, :cond_6

    .line 111
    :cond_5
    :goto_5
    return v0

    .line 110
    :cond_6
    check-cast p1, Lnv;

    .line 111
    iget-object v1, p0, Lnv;->a:Lnw;

    iget-object v2, p1, Lnv;->a:Lnw;

    invoke-virtual {v1, v2}, Lnw;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lnv;->a:Lld;

    iget-object v2, p1, Lnv;->a:Lld;

    invoke-virtual {v1, v2}, Lld;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/4 v0, 0x1

    goto :goto_5
.end method

.method public hashCode()I
    .registers 3

    .prologue
    .line 116
    .line 117
    iget-object v0, p0, Lnv;->a:Lnw;

    invoke-virtual {v0}, Lnw;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x20f

    .line 118
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lnv;->a:Lld;

    invoke-virtual {v1}, Lld;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 119
    return v0
.end method
