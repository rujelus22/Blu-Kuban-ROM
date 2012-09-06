.class public Lak/d;
.super Lak/i;
.source "SourceFile"


# static fields
.field public static final a:Lak/d;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 13
    new-instance v0, Lak/d;

    invoke-direct {v0}, Lak/d;-><init>()V

    sput-object v0, Lak/d;->a:Lak/d;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 11
    invoke-direct {p0}, Lak/i;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    .prologue
    .line 32
    const-string v0, "Danny E."

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .registers 2

    .prologue
    .line 22
    const/16 v0, 0x121

    invoke-static {v0}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .registers 2

    .prologue
    .line 27
    const/16 v0, 0x120

    invoke-static {v0}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public d()I
    .registers 2

    .prologue
    .line 17
    const/16 v0, 0x24

    return v0
.end method
