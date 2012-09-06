.class public Lnb;
.super Lcg;
.source "CancelableStateMachineRunner.java"


# instance fields
.field private final a:LnQ;


# direct methods
.method public constructor <init>(LnQ;)V
    .registers 2
    .parameter

    .prologue
    .line 16
    invoke-direct {p0}, Lcg;-><init>()V

    .line 17
    iput-object p1, p0, Lnb;->a:LnQ;

    .line 18
    return-void
.end method


# virtual methods
.method protected c()V
    .registers 3

    .prologue
    .line 24
    iget-object v0, p0, Lnb;->a:LnQ;

    invoke-static {v0}, LafQ;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    const/4 v0, 0x0

    .line 26
    :goto_6
    if-ltz v0, :cond_15

    invoke-virtual {p0}, Lnb;->a()Z

    move-result v1

    if-nez v1, :cond_15

    .line 27
    iget-object v1, p0, Lnb;->a:LnQ;

    invoke-interface {v1, v0}, LnQ;->a(I)I

    move-result v0

    goto :goto_6

    .line 29
    :cond_15
    return-void
.end method
