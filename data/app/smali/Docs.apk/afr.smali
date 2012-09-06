.class Lafr;
.super Lafl;
.source "CharMatcher.java"


# instance fields
.field final synthetic a:LafA;

.field final synthetic o:Lafl;


# direct methods
.method constructor <init>(Lafl;LafA;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 675
    iput-object p1, p0, Lafr;->o:Lafl;

    iput-object p2, p0, Lafr;->a:LafA;

    invoke-direct {p0}, Lafl;-><init>()V

    return-void
.end method


# virtual methods
.method public a(C)Z
    .registers 3
    .parameter

    .prologue
    .line 677
    iget-object v0, p0, Lafr;->a:LafA;

    invoke-virtual {v0, p1}, LafA;->a(C)Z

    move-result v0

    return v0
.end method

.method public b()Lafl;
    .registers 1

    .prologue
    .line 683
    return-object p0
.end method
