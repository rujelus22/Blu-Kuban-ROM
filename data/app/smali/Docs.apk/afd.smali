.class public final Lafd;
.super LadL;
.source "MimedcontentJson.java"


# instance fields
.field private a:Ljava/lang/String;
    .annotation runtime Laes;
    .end annotation
.end field

.field private b:Ljava/lang/String;
    .annotation runtime Laes;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 33
    invoke-direct {p0}, LadL;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lafd;
    .registers 2
    .parameter

    .prologue
    .line 67
    iput-object p1, p0, Lafd;->a:Ljava/lang/String;

    .line 68
    return-object p0
.end method

.method public b(Ljava/lang/String;)Lafd;
    .registers 2
    .parameter

    .prologue
    .line 84
    iput-object p1, p0, Lafd;->b:Ljava/lang/String;

    .line 85
    return-object p0
.end method

.method public b()Ljava/lang/String;
    .registers 2

    .prologue
    .line 76
    iget-object v0, p0, Lafd;->b:Ljava/lang/String;

    return-object v0
.end method
