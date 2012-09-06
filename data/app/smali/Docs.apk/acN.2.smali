.class public final LacN;
.super Ljava/lang/Object;
.source "MethodOverride.java"

# interfaces
.implements Ladb;
.implements Ladk;


# instance fields
.field private final a:Ljava/util/EnumSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumSet",
            "<",
            "Ladf;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    const-class v0, Ladf;

    invoke-static {v0}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    iput-object v0, p0, LacN;->a:Ljava/util/EnumSet;

    .line 61
    return-void
.end method

.method private a(Ladh;)Z
    .registers 6
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 88
    invoke-virtual {p1}, Ladh;->a()Ladf;

    move-result-object v2

    .line 89
    sget-object v3, Ladf;->b:Ladf;

    if-eq v2, v3, :cond_17

    sget-object v3, Ladf;->f:Ladf;

    if-eq v2, v3, :cond_17

    iget-object v3, p0, LacN;->a:Ljava/util/EnumSet;

    invoke-virtual {v3, v2}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_17

    .line 98
    :cond_16
    :goto_16
    return v0

    .line 92
    :cond_17
    sget-object v3, LacO;->a:[I

    invoke-virtual {v2}, Ladf;->ordinal()I

    move-result v2

    aget v2, v3, v2

    packed-switch v2, :pswitch_data_3c

    move v0, v1

    .line 98
    goto :goto_16

    .line 94
    :pswitch_24
    invoke-virtual {p1}, Ladh;->a()Lado;

    move-result-object v2

    invoke-virtual {v2}, Lado;->b()Z

    move-result v2

    if-eqz v2, :cond_16

    move v0, v1

    goto :goto_16

    .line 96
    :pswitch_30
    invoke-virtual {p1}, Ladh;->a()Lado;

    move-result-object v2

    invoke-virtual {v2}, Lado;->a()Z

    move-result v2

    if-eqz v2, :cond_16

    move v0, v1

    goto :goto_16

    .line 92
    :pswitch_data_3c
    .packed-switch 0x1
        :pswitch_24
        :pswitch_30
    .end packed-switch
.end method


# virtual methods
.method public a(Ladh;)V
    .registers 2
    .parameter

    .prologue
    .line 74
    invoke-virtual {p1, p0}, Ladh;->a(Ladb;)Ladh;

    .line 75
    return-void
.end method

.method public b(Ladh;)V
    .registers 5
    .parameter

    .prologue
    .line 78
    invoke-direct {p0, p1}, LacN;->a(Ladh;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 79
    invoke-virtual {p1}, Ladh;->a()Ladf;

    move-result-object v0

    .line 80
    sget-object v1, Ladf;->f:Ladf;

    invoke-virtual {p1, v1}, Ladh;->a(Ladf;)Ladh;

    .line 81
    invoke-virtual {p1}, Ladh;->a()Ladc;

    move-result-object v1

    const-string v2, "X-HTTP-Method-Override"

    invoke-virtual {v0}, Ladf;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Ladc;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 83
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ladh;->b(Z)Ladh;

    .line 85
    :cond_20
    return-void
.end method
