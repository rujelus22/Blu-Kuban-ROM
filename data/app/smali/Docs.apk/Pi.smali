.class public LPi;
.super Ljava/lang/Object;
.source "ContactInfoImpl.java"

# interfaces
.implements LPh;


# instance fields
.field private final a:J

.field private final a:Landroid/net/Uri;

.field private final a:Ljava/lang/String;

.field private final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final b:J


# direct methods
.method public constructor <init>(JLjava/lang/String;Ljava/util/List;Landroid/net/Uri;J)V
    .registers 10
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/net/Uri;",
            "J)V"
        }
    .end annotation

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    if-eqz p4, :cond_b

    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_24

    :cond_b
    const/4 v0, 0x1

    :goto_c
    const-string v1, "Email list should be either null or non-empty."

    invoke-static {v0, v1}, LafQ;->a(ZLjava/lang/Object;)V

    .line 45
    iput-wide p1, p0, LPi;->a:J

    .line 46
    if-eqz p3, :cond_26

    :goto_15
    iput-object p3, p0, LPi;->a:Ljava/lang/String;

    .line 47
    if-eqz p4, :cond_29

    invoke-static {p4}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    :goto_1d
    iput-object v0, p0, LPi;->a:Ljava/util/List;

    .line 48
    iput-object p5, p0, LPi;->a:Landroid/net/Uri;

    .line 49
    iput-wide p6, p0, LPi;->b:J

    .line 50
    return-void

    .line 43
    :cond_24
    const/4 v0, 0x0

    goto :goto_c

    .line 46
    :cond_26
    const-string p3, ""

    goto :goto_15

    .line 47
    :cond_29
    const/4 v0, 0x0

    goto :goto_1d
.end method


# virtual methods
.method public a()J
    .registers 3

    .prologue
    .line 69
    iget-wide v0, p0, LPi;->b:J

    return-wide v0
.end method

.method public a()Ljava/lang/String;
    .registers 3

    .prologue
    .line 79
    iget-object v0, p0, LPi;->a:Ljava/util/List;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return-object v0

    :cond_6
    iget-object v0, p0, LPi;->a:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_5
.end method

.method public a()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 64
    iget-object v0, p0, LPi;->a:Ljava/util/List;

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .registers 2

    .prologue
    .line 59
    iget-object v0, p0, LPi;->a:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .prologue
    .line 84
    const-string v0, "%s[%s, %s]"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-virtual {p0}, LPi;->b()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    invoke-virtual {p0}, LPi;->a()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
