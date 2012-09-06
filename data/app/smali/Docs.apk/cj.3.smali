.class Lcj;
.super Ljava/lang/Object;
.source "ContextModule.java"

# interfaces
.implements LanD;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "LanD",
        "<",
        "Landroid/content/Context;",
        ">;"
    }
.end annotation


# instance fields
.field a:Lcl;
    .annotation runtime Lanr;
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Landroid/content/Context;
    .registers 2

    .prologue
    .line 27
    iget-object v0, p0, Lcj;->a:Lcl;

    invoke-virtual {v0}, Lcl;->b()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic a()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 21
    invoke-virtual {p0}, Lcj;->a()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method
