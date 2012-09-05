.class public final Lmo;
.super Lmz;
.source "a"


# static fields
.field public static final c:Lmo;

.field public static final d:Lmo;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 18
    new-instance v0, Lmo;

    invoke-direct {v0}, Lmo;-><init>()V

    sput-object v0, Lmo;->c:Lmo;

    .line 19
    new-instance v0, Lmo;

    invoke-direct {v0}, Lmo;-><init>()V

    sput-object v0, Lmo;->d:Lmo;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 21
    invoke-direct {p0}, Lmz;-><init>()V

    return-void
.end method

.method public static d()Lmo;
    .registers 1

    .prologue
    .line 23
    sget-object v0, Lmo;->c:Lmo;

    return-object v0
.end method

.method public static e()Lmo;
    .registers 1

    .prologue
    .line 24
    sget-object v0, Lmo;->d:Lmo;

    return-object v0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .registers 2

    .prologue
    .line 43
    sget-object v0, Lmo;->c:Lmo;

    if-ne p0, v0, :cond_7

    const-string v0, "true"

    :goto_6
    return-object v0

    :cond_7
    const-string v0, "false"

    goto :goto_6
.end method

.method public final a(Lez;Lhs;)V
    .registers 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lfe;
        }
    .end annotation

    .prologue
    .line 63
    sget-object v0, Lmo;->c:Lmo;

    if-ne p0, v0, :cond_9

    const/4 v0, 0x1

    :goto_5
    invoke-virtual {p1, v0}, Lez;->a(Z)V

    .line 64
    return-void

    .line 63
    :cond_9
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 3
    .parameter

    .prologue
    .line 72
    if-ne p1, p0, :cond_4

    const/4 v0, 0x1

    :goto_3
    return v0

    :cond_4
    const/4 v0, 0x0

    goto :goto_3
.end method
