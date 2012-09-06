.class public Lfd;
.super Ljava/lang/Object;
.source "FromActivityProvider.java"

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
.field a:LanD;
    .annotation runtime Lanr;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LanD",
            "<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private final a:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lfd;->a:Ljava/lang/Class;

    .line 31
    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;LanD;)V
    .registers 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<TT;>;",
            "LanD",
            "<",
            "Landroid/content/Context;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lfd;->a:Ljava/lang/Class;

    .line 35
    iput-object p2, p0, Lfd;->a:LanD;

    .line 36
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 40
    iget-object v0, p0, Lfd;->a:LanD;

    invoke-interface {v0}, LanD;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 41
    check-cast v0, LgT;

    .line 42
    iget-object v1, p0, Lfd;->a:Ljava/lang/Class;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, LgT;->a(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
