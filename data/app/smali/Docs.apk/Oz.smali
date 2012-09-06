.class public LOz;
.super Ljava/lang/Object;
.source "OnlineSearch.java"

# interfaces
.implements LOE;


# instance fields
.field private final a:LVp;


# direct methods
.method public constructor <init>(LVp;)V
    .registers 2
    .parameter
    .annotation runtime Lanr;
    .end annotation

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, LOz;->a:LVp;

    .line 42
    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/String;Ljava/lang/String;LOj;)LOi;
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 36
    invoke-virtual {p0, p1, p2, p3}, LOz;->a(Ljava/lang/String;Ljava/lang/String;LOj;)LOw;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;LOj;)LOw;
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 46
    iget-object v0, p0, LOz;->a:LVp;

    invoke-interface {v0}, LVp;->a()LTM;

    move-result-object v0

    .line 47
    new-instance v1, LOw;

    invoke-direct {v1, p1, p2, p3, v0}, LOw;-><init>(Ljava/lang/String;Ljava/lang/String;LOj;LTM;)V

    return-object v1
.end method
