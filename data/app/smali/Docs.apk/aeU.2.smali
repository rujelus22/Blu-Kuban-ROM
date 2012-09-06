.class public final LaeU;
.super LadL;
.source "Author.java"


# instance fields
.field private a:LaeV;
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
    .line 33
    invoke-direct {p0}, LadL;-><init>()V

    .line 184
    return-void
.end method


# virtual methods
.method public a()LaeV;
    .registers 2

    .prologue
    .line 94
    iget-object v0, p0, LaeU;->a:LaeV;

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .registers 2

    .prologue
    .line 111
    iget-object v0, p0, LaeU;->a:Ljava/lang/String;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .registers 2

    .prologue
    .line 128
    iget-object v0, p0, LaeU;->b:Ljava/lang/String;

    return-object v0
.end method
