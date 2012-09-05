.class public final Lmv;
.super Lmz;
.source "a"


# static fields
.field public static final c:Lmv;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 17
    new-instance v0, Lmv;

    invoke-direct {v0}, Lmv;-><init>()V

    sput-object v0, Lmv;->c:Lmv;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 19
    invoke-direct {p0}, Lmz;-><init>()V

    return-void
.end method

.method public static d()Lmv;
    .registers 1

    .prologue
    .line 21
    sget-object v0, Lmv;->c:Lmv;

    return-object v0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .registers 2

    .prologue
    .line 30
    const-string v0, "null"

    return-object v0
.end method

.method public final a(Lez;Lhs;)V
    .registers 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lfe;
        }
    .end annotation

    .prologue
    .line 50
    invoke-virtual {p1}, Lez;->f()V

    .line 51
    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 3
    .parameter

    .prologue
    .line 56
    if-ne p1, p0, :cond_4

    const/4 v0, 0x1

    :goto_3
    return v0

    :cond_4
    const/4 v0, 0x0

    goto :goto_3
.end method
