.class public abstract Ldc;
.super Ljava/lang/Object;
.source "RequiredSdkVersionProvider.java"

# interfaces
.implements LanD;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "LanD",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final a:LanD;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LanD",
            "<+TT;>;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(ILanD;LanD;Ljava/lang/Class;Ljava/lang/Class;)V
    .registers 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:TT;B:TT;>(I",
            "LanD",
            "<TA;>;",
            "LanD",
            "<TB;>;",
            "Ljava/lang/Class",
            "<TA;>;",
            "Ljava/lang/Class",
            "<TB;>;)V"
        }
    .end annotation

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    invoke-static {p2}, LafQ;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    invoke-static {p3}, LafQ;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, p1, :cond_10

    .line 32
    iput-object p2, p0, Ldc;->a:LanD;

    .line 36
    :goto_f
    return-void

    .line 34
    :cond_10
    iput-object p3, p0, Ldc;->a:LanD;

    goto :goto_f
.end method


# virtual methods
.method public a()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 40
    iget-object v0, p0, Ldc;->a:LanD;

    invoke-interface {v0}, LanD;->a()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
