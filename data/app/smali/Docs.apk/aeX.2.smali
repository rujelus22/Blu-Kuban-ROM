.class public final LaeX;
.super LadL;
.source "Discussion.java"


# instance fields
.field private a:LaeY;
    .annotation runtime Laes;
    .end annotation
.end field

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
    .line 532
    invoke-direct {p0}, LadL;-><init>()V

    .line 635
    return-void
.end method


# virtual methods
.method public a()LaeY;
    .registers 2

    .prologue
    .line 586
    iget-object v0, p0, LaeX;->a:LaeY;

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .registers 2

    .prologue
    .line 603
    iget-object v0, p0, LaeX;->a:Ljava/lang/String;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .registers 2

    .prologue
    .line 620
    iget-object v0, p0, LaeX;->b:Ljava/lang/String;

    return-object v0
.end method
