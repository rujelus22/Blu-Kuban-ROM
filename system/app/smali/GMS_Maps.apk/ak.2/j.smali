.class public Lak/j;
.super Lak/i;
.source "SourceFile"


# static fields
.field public static final a:Lak/j;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 16
    new-instance v0, Lak/j;

    invoke-direct {v0}, Lak/j;-><init>()V

    sput-object v0, Lak/j;->a:Lak/j;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 14
    invoke-direct {p0}, Lak/i;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    .prologue
    .line 25
    const-string v0, "Andrew M."

    return-object v0
.end method

.method public a(Lcom/google/googlenav/ui/v;)V
    .registers 3
    .parameter

    .prologue
    .line 46
    invoke-super {p0, p1}, Lak/i;->a(Lcom/google/googlenav/ui/v;)V

    .line 47
    const/4 v0, 0x0

    sput-boolean v0, Lcom/google/android/maps/driveabout/vector/cy;->a:Z

    .line 48
    return-void
.end method

.method public a(Lcom/google/googlenav/ui/v;Z)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 40
    invoke-super {p0, p1, p2}, Lak/i;->a(Lcom/google/googlenav/ui/v;Z)V

    .line 41
    const/4 v0, 0x1

    sput-boolean v0, Lcom/google/android/maps/driveabout/vector/cy;->a:Z

    .line 42
    return-void
.end method

.method public b()Ljava/lang/String;
    .registers 2

    .prologue
    .line 30
    const/16 v0, 0x5a9

    invoke-static {v0}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .registers 2

    .prologue
    .line 35
    const/16 v0, 0x5a8

    invoke-static {v0}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public d()I
    .registers 2

    .prologue
    .line 20
    const/16 v0, 0x23

    return v0
.end method
