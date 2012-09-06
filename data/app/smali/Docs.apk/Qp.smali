.class public LQp;
.super Ljava/lang/Object;
.source "SharingInfoManagerImpl.java"

# interfaces
.implements LQo;


# instance fields
.field a:LOR;
    .annotation runtime Lanr;
    .end annotation
.end field

.field a:LPj;
    .annotation runtime Lanr;
    .end annotation
.end field

.field a:Landroid/content/Context;
    .annotation runtime Lanr;
    .end annotation
.end field

.field private final a:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 356
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, LQp;->a:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a(LQp;)Landroid/os/Handler;
    .registers 2
    .parameter

    .prologue
    .line 27
    iget-object v0, p0, LQp;->a:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)LQm;
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 361
    new-instance v0, LQs;

    invoke-direct {v0, p0, p1, p2, p3}, LQs;-><init>(LQp;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method
