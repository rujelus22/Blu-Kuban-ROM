.class public Lak/b;
.super Lak/i;
.source "SourceFile"


# static fields
.field public static final a:Lak/b;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 14
    new-instance v0, Lak/b;

    invoke-direct {v0}, Lak/b;-><init>()V

    sput-object v0, Lak/b;->a:Lak/b;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 13
    invoke-direct {p0}, Lak/i;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    .prologue
    .line 33
    const-string v0, "Josh S., Ronghui Z."

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .registers 2

    .prologue
    .line 23
    const/16 v0, 0x64

    invoke-static {v0}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .registers 2

    .prologue
    .line 28
    const/16 v0, 0x63

    invoke-static {v0}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public d()I
    .registers 2

    .prologue
    .line 18
    const/16 v0, 0xf

    return v0
.end method
